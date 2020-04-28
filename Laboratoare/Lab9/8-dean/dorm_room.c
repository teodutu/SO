/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>
#include <stdio.h>

#include "utils.h"

#define MAX_STUDENTS	15


#define wild_party 7


int students_at_party;
int dean_in_room;

HANDLE stud_mutex;
HANDLE dean_mutex;


void dbg_student(LPSTR message)
{
	fprintf(stderr, "Student %d %s - dir=%d sap=%d\n",
			GetCurrentThreadId(), message,
			dean_in_room, students_at_party);
}

void dbg_dean(LPSTR message)
{
	fprintf(stderr, ">> Dean %s - dir=%d sap=%d\n", message,
			dean_in_room, students_at_party);
}

/*  code executed by student thread whe */
void party(void)
{
	BOOL bRet;
	DWORD dwRet;

	while (1) {
		/* TODO - continue to party while the dean
		 * is _not_ in the room
		 */
		/*
		 * De fiecare data se ia mutexul chestiei care se verifica.
		 * Cand intra decanul, se iese din functie => se parasesete
		 * camera (nu stau eu in regie ca-s din Bucuresti, da' cand
		 * vreun decan a facut chestii de genu' asta?)
		 */
		dwRet = WaitForSingleObject(dean_mutex, INFINITE);
		DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(dean_mutex) failed");

		if (dean_in_room) {
			dbg_student("dean came; leaving...");

			bRet = ReleaseMutex(dean_mutex);
			DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

			return;
		}

		bRet = ReleaseMutex(dean_mutex);
		DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

		Sleep(1);
	}
}


void enter_room(void)
{
	BOOL bRet;
	DWORD dwRet;

	/* TODO - this code is executed by the students at first
	 * 1. if the dean is not in the room -> party (call party()
	 * function :P )
	 * 2. if the dean is in the room, silently run away
	 */
	dwRet = WaitForSingleObject(dean_mutex, INFINITE);
	DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(dean_mutex) failed");

	/*
	 * Studentul intra in camera doar daca nu e deja decanul acolo.
	 * Apoi, se incrementeaza atomic nr de studenti (cu mutexul stud_mutex),
	 * dupa care se da V pe ambii mutecsi.
	 */
	if (!dean_in_room) {
		dwRet = WaitForSingleObject(stud_mutex, INFINITE);
		DIE(dwRet == WAIT_FAILED,
			"WaitForSingleObject(stud_mutex) failed");

		++students_at_party;
		dbg_student("joining party");

		bRet = ReleaseMutex(stud_mutex);
		DIE(!bRet, "ReleaseMutex(stud_mutex) failed");

		bRet = ReleaseMutex(dean_mutex);
		DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

		party();
	} else {
		dbg_student("couldn't join the party");

		bRet = ReleaseMutex(dean_mutex);
		DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

		return;
	}
		
	dwRet = WaitForSingleObject(stud_mutex, INFINITE);
	DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(stud_mutex) failed");

	--students_at_party;
	dbg_student("leaving party");

	bRet = ReleaseMutex(stud_mutex);
	DIE(!bRet, "ReleaseMutex(stud_mutex) failed");
}


void break_party(void)
{
	BOOL bRet;
	DWORD dwRet;

	/* this code is executed by the dean */
	/*
	 * Decanul asteapta pana cand sunt destui studenti in camera (sau cand
	 * nu e nimeni) si intra.
	 */
	while (1) {
		/* TODO - wait for
		 * 1. the party to get wild
		 * or
		 * 2. no students are in the room
		 */
		dwRet = WaitForSingleObject(stud_mutex, INFINITE);
		DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(stud_mutex) failed");

		if (!students_at_party || students_at_party >= wild_party) {
			dwRet = WaitForSingleObject(dean_mutex, INFINITE);
			DIE(dwRet == WAIT_FAILED,
				"WaitForSingleObject(dean_mutex) failed");

			dean_in_room = 1;
			dbg_dean("entering room");

			bRet = ReleaseMutex(dean_mutex);
			DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

			bRet = ReleaseMutex(stud_mutex);
			DIE(!bRet, "ReleaseMutex(stud_mutex) failed");

			break;
		} else
			dbg_dean("not enough students...");

		bRet = ReleaseMutex(stud_mutex);
		DIE(!bRet, "ReleaseMutex(stud_mutex) failed");

		bRet = ReleaseMutex(dean_mutex);
		DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

		Sleep(1);
	}

	/*
	 * Decanul sta in camera pana cand nu mai e nimeni.
	 * Nu schimba dean_in_room ca sa nu mai intre alti studenti.
	 */
	while (1) {
		/* TODO - wait for every one to leave the party */

		dwRet = WaitForSingleObject(stud_mutex, INFINITE);
		DIE(dwRet == WAIT_FAILED, "WaitForSingleObject(stud_mutex) failed");

		if (!students_at_party) {
			dwRet = WaitForSingleObject(dean_mutex, INFINITE);
			DIE(dwRet == WAIT_FAILED,
				"WaitForSingleObject(dean_mutex) failed");

			dbg_dean("leaving room");

			bRet = ReleaseMutex(dean_mutex);
			DIE(!bRet, "ReleaseMutex(dean_mutex) failed");

			bRet = ReleaseMutex(stud_mutex);
			DIE(!bRet, "ReleaseMutex(stud_mutex) failed");

			break;
		}

		bRet = ReleaseMutex(stud_mutex);
		DIE(!bRet, "ReleaseMutex(stud_mutex) failed");

		Sleep(1);
	}
}

DWORD WINAPI StudentThread(LPVOID lpParameter)
{
	enter_room();
	return 0;
}

DWORD WINAPI DeanThread(LPVOID lpParameter)
{
	break_party();

	return 0;
}

HANDLE hStudent[MAX_STUDENTS], hDean;

void start_student(DWORD idx)
{
	DWORD IdThread;

	/* create student threads */
	hStudent[idx] = CreateThread(NULL, /* default security attributes */
			0,                 /* default stack size */
			(LPTHREAD_START_ROUTINE) StudentThread,
			NULL,
			0,                 /* immediately run the thread */
			&IdThread);        /* thread id */
	DIE(hStudent[idx] == NULL, "CreateStudent");
}

void start_dean(void)
{
	DWORD IdThread;

	hDean = CreateThread(NULL,      /* default security attributes */
			0,		/* default stack size */
			(LPTHREAD_START_ROUTINE) DeanThread,
			NULL,           /* no thread parameter */
			0,		/* immediately run the thread */
			&IdThread);     /* thread id */
	DIE(hDean == NULL, "CreateDean");
}

void wait_all(void)
{
	DWORD dwReturn;
	int i;

	/* wait for threads completion */
	for (i = 0; i < MAX_STUDENTS; i++) {
		dwReturn = WaitForSingleObject(hStudent[i], INFINITE);
		DIE(dwReturn == WAIT_FAILED, "WaitForSingleObject");
	}

	WaitForSingleObject(hDean, INFINITE);
	DIE(dwReturn == WAIT_FAILED, "WaitForSingleObject");
}


void test1(void)
{
	int i;

	printf("==  test 1 - room check ==\n");

	start_dean();

	Sleep(1);
	for (i = 0; i < MAX_STUDENTS; i++)
		start_student(i);

	wait_all();

	/* clean all */
	students_at_party = 0;
	dean_in_room = 0;
}

void test2(void)
{
	int i;

	printf("== test2 - party break ==\n");
	
	students_at_party = 0;
	dean_in_room = 0;

	for (i = 0; i < MAX_STUDENTS; i++) {
		start_student(i);

		if ((rand() % (MAX_STUDENTS - i)) < 5) {
			start_dean();
			break;
		}
	}
	for (; i < MAX_STUDENTS; i++)
		start_student(i);

	wait_all();
}

DWORD main(VOID)
{
	/* init */
	stud_mutex = CreateMutex(NULL, FALSE, NULL);
	dean_mutex = CreateMutex(NULL, FALSE, NULL);

	test1();
	test2();

	return 0;
}
