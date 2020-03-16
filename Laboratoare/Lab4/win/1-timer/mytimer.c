/**
 * SO, 2016 - Lab #4, Semnale
 * Task #3, Windows
 *
 * Timers usage.
 */

#define _WIN32_WINNT	0x0500

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

#include <windows.h>

#include "utils.h"

#define _SECOND		10000000LL
#define TIMEOUT		(-2 * _SECOND)


/*
 * rutina APC asociata timer-ului
 */
static VOID CALLBACK TimerAPCProc(LPVOID lpArgToCompletionRoutine,
		DWORD dwTimerLowValue, DWORD dwTimerHighValue)
{
	/* TODO: Use ctime and time to print current time. */
	UNREFERENCED_PARAMETER(lpArgToCompletionRoutine);
	UNREFERENCED_PARAMETER(dwTimerLowValue);
	UNREFERENCED_PARAMETER(dwTimerHighValue);

	time_t crtTime = time(NULL);

	printf("current time: %s\n", ctime(&crtTime));
}

/*
 * initializeaza si configureaza timer
 */
static void InitSetTimer(void)
{
	/* TODO */
	HANDLE hTimer;
	LARGE_INTEGER dueTime;
	BOOL bRet;

	hTimer = CreateWaitableTimer(NULL, FALSE, NULL);
	DIE(hTimer == NULL, "CreateWritableTimer");

	dueTime.QuadPart = TIMEOUT;

	bRet = SetWaitableTimer(hTimer, &dueTime, 2000, TimerAPCProc, NULL, FALSE);
	DIE(bRet == FALSE, "SetWaitableTimer");
}

int main(void)
{
	InitSetTimer();		/* configureaza timer la 2 secunde */

	while (1) {
		/* TODO: Wait for timer (use SleepEx function). */
		SleepEx(INFINITE, TRUE);
	}

	return 0;
}
