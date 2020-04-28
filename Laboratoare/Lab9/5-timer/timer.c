/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#define _WIN32_WINNT    0x500
#include <windows.h>
#include <stdio.h>

#include "utils.h"

#define PERIOD       1000
#define TIMES        3

HANDLE finished;

VOID CALLBACK TimerFunction(PVOID lpParam, BOOLEAN TimerOrWaitFired)
{
	static int count;
	BOOL bRet;

	printf("'TimerFunction' has been called and count is %d\n", count);

	/* TODO - check if we must increment counter or finish */
	/*
	 * In main() dau P() pe semaforul asta si timerul ruleaza, apeleaza
	 * functia asta si cand a ajuns count la 3 dau V() pe semafor si se
	 * poate termina si mainul.
	 */
	if (++count == TIMES) {
		bRet = ReleaseSemaphore(finished, 1, NULL);
		DIE(!bRet, "ReleaseSemaphore(finished) failed");
	}
}

int main(void)
{
	HANDLE timer_queue;
	HANDLE timer;
	BOOL bRet;
	DWORD dwRet;

	/* create a TimerQueue */
	timer_queue = CreateTimerQueue();
	DIE(!timer_queue, "CreateTimerQueue() failed");

	/* create a semaphore/event */
	finished = CreateSemaphore(NULL, 0, 1, NULL);
	DIE(!finished, "CreateSemaphore() failed");

	/* create a timer and associate it with the timer queue */
	bRet = CreateTimerQueueTimer(&timer, timer_queue, TimerFunction, NULL,
		PERIOD, PERIOD, 0);
	DIE(!bRet, "CreateTimerQueueTimer() failed");

	/* wait for the semaphore/event to be set, so we can free resources */
	/* Aici astept semaforul caruia functia din timer ii da V(). */
	dwRet = WaitForSingleObject(finished, INFINITE);
	DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(finished) failed");

	/*  delete the timer queue and its timers */
	bRet = CloseHandle(finished);
	DIE(!bRet, "CloseHandle(finished) failed");

	bRet = DeleteTimerQueueTimer(timer_queue, timer, finished);
	DIE(!bRet, "DeleteTimerQueueTimer() failed");

	bRet = DeleteTimerQueue(timer_queue);
	DIE(!bRet, "DeleteTimerQueue() failed");

	return 0;
}
