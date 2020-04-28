/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>
#include <stdio.h>
#include "utils.h"

#define NO_THREADS	5

typedef struct {
	HANDLE hGuard;	/* mutex to protect internal variable access */
	HANDLE hEvent;	/* auto-resetable event */
	DWORD dwCount;	/* number of threads to have reached the barrier */
	DWORD dwThreshold; /* barrier limit */
} THRESHOLD_BARRIER, *THB_OBJECT;

THB_OBJECT barrier; /* global barrier */

DWORD CreateThresholdBarrier(THB_OBJECT *pthb, DWORD b_value)
{
	THB_OBJECT hthb;

	/* Initialize a barrier object */
	hthb = malloc(sizeof(THRESHOLD_BARRIER));
	*pthb = hthb;
	if (hthb == NULL) 
		return FALSE;

	/* TODO - Create Mutex */
	hthb->hGuard = CreateMutex(NULL, FALSE, NULL);
	DIE(!hthb->hGuard, "CreateMutex() failed");

	/* TODO - Create Event */
	hthb->hEvent = CreateEvent(NULL, TRUE, FALSE, NULL);
	DIE(!hthb->hEvent, "CreateEvent() failed");
	
	/* set maximum number of waithing threads */
	hthb->dwThreshold = b_value;
	
	/* set number of waiting threads to 0 */
	hthb->dwCount = 0;

	return TRUE;
}


DWORD WaitThresholdBarrier(THB_OBJECT thb)
{
	/* TODO - Wait for the specified number of thread to reach */
	/* the barrier, then broadcast the release to all waiting threads */
	BOOL bRet;
	DWORD i;
	DWORD dwRet;

	dwRet = WaitForSingleObject(thb->hGuard, INFINITE);
	DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(hGuard) failed");

	/*
	 * Cresc atomic (cu mutexul de mai sus) nr de threaduri care asteapta.
	 * Cand ajung la limita resetez numarul si incep sa anunt prin event
	 * fiecare thread ca poate sa inceapa sa ruleze iar.
	 * Practic, ultimul thread care a ajuns la bariera le deblocheaza pe
	 * restul.
	 */
	if (++thb->dwCount >= thb->dwThreshold) {
		thb->dwCount = 0;

		fprintf(stderr, "thread %d deblochez\n", GetCurrentThreadId());

		bRet = PulseEvent(thb->hEvent);
		DIE(!bRet, "PulseEvent() failed");

		bRet = ReleaseMutex(thb->hGuard);
		DIE(!bRet, "ReleaseMutex() failed");
	} else {
		dwRet = SignalObjectAndWait(thb->hGuard, thb->hEvent, INFINITE, FALSE);
		DIE(dwRet == WAIT_FAILED, "SignalObjectAndWait() failed");
	}	

	return 0;
}

DWORD CloseThresholdBarrier(THB_OBJECT thb)
{
	CloseHandle(thb->hEvent);
	CloseHandle(thb->hGuard);
	free(thb);

	return 0;
}

DWORD WINAPI ThreadFunc(LPVOID lpParameter)
{
	DWORD work_time = 0;
	DWORD tid = GetCurrentThreadId();

	printf("Thread %d starts working\n", tid);

	/* Do work */
	work_time = tid;
	Sleep(work_time);

	/* Sync with others */
	WaitThresholdBarrier(barrier);

	printf("Thread %d exited the barrier. Start working again\n", tid);

	/* Do some more work */
	work_time = tid;
	Sleep(work_time);

	/* Sync with others */
	WaitThresholdBarrier(barrier);

	printf("Thread %d exited the barrier\n", tid);

	return 0;
}


int main(VOID)
{
	DWORD dwRet, IDThread;
	HANDLE hThread[NO_THREADS];
	int i;

	dwRet = CreateThresholdBarrier(&barrier, NO_THREADS);
	DIE(dwRet == FALSE, "CreateThresholdBarrier failed");

	/* create threads */
	for (i = 0; i < NO_THREADS; i++) {
		hThread[i] = CreateThread(
				NULL,   /* default security attributes */
				0,      /* default stack size */
				(LPTHREAD_START_ROUTINE) ThreadFunc,
				NULL,   /* no thread parameter */
				0,      /* immediately run the thread */
				&IDThread);     /* thread id */
		DIE(hThread[i] == NULL, "CreateThread");
	}

	/* wait for threads completion */
	for (i = 0; i < NO_THREADS; i++) {
		dwRet = WaitForSingleObject(hThread[i], INFINITE);
		DIE(dwRet == WAIT_FAILED, "WaitForSingleObject");
	}

	CloseThresholdBarrier(barrier);

	return 0;
}
