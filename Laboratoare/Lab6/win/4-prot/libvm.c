/**
 * SO, 2014
 * Lab #6, Memoria virtuala
 *
 * Task #4, Windows
 *
 * Changing access right to pages
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

//#define _WIN32_WINNT 0x0500

#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <windows.h>

#include <utils.h>

static LPVOID access_violation_handler;
static int pageSize = 0x1000;
static LPBYTE p;
static int how[3] = { PAGE_NOACCESS, PAGE_READONLY, PAGE_READWRITE };

/*
 * SIGSEGV handler
 */
static LONG CALLBACK access_violation(PEXCEPTION_POINTERS ExceptionInfo)
{
	DWORD old;
	LPBYTE addr;
	INT pageNo;
	DWORD dwNewProt;
	BOOL bRet;

	if (ExceptionInfo->ExceptionRecord->ExceptionCode !=
		EXCEPTION_ACCESS_VIOLATION
		&& ExceptionInfo->ExceptionRecord->ExceptionCode !=
		EXCEPTION_DATATYPE_MISALIGNMENT)
		return EXCEPTION_CONTINUE_SEARCH;

	/* TODO - get the memory location which caused the page fault */
	addr = ExceptionInfo->ExceptionRecord->ExceptionInformation[1];

	/* TODO - get the page number which caused the page fault */
	pageNo = (addr - p) / pageSize;

	/* TODO - test if page is one of our own */
	if (pageNo < 0 || pageNo > 2)
		return EXCEPTION_CONTINUE_SEARCH;

	/* TODO - increase protection for that page */
	if (how[pageNo] == PAGE_NOACCESS) {
		dwNewProt = PAGE_READONLY;
		how[pageNo] = PAGE_READONLY;

		fprintf(stderr, "Page %d now has read-only permissions. \n", pageNo);
	}
	else {
		dwNewProt = PAGE_READWRITE;
		fprintf(stderr, "Page %d now has read-write permissions\n", pageNo);
	}

	bRet = VirtualProtect(p + pageNo * pageSize, pageSize, dwNewProt, &old);
	DIE(bRet == FALSE, "VirtualProtect");

	return EXCEPTION_CONTINUE_EXECUTION;
}

/*
 * sets SIGSEGV handler
 */
static void set_signal(void)
{
	/* TODO add VectoredHandler */
	access_violation_handler = AddVectoredExceptionHandler(
		1,
		access_violation
		);
	DIE(access_violation_handler == NULL, "AddVectoredExceptionHandler");
}

/*
 * restores SIGSEGV handler
 */
static void restore_signal(void)
{
	/* TODO remove VectoredHandler */
	ULONG rc = RemoveVectoredExceptionHandler(access_violation_handler);
	DIE(rc == 0, "RemoveVectoredExceptionHandler");
}

int main(void)
{
	BYTE ch;
	BOOL bRet;
	DWORD old;
	INT i;

	/* TODO 1 - Map 3 pages with the desired memory protection
	 * Use global 'p' variable to keep the address return by VirtualAlloc
	 * Use VirtualProtect to set memory protection based on global 'how'
	 * array; 'how' array keeps protection level for each page
	 */
	p = VirtualAlloc(NULL, 3 * pageSize, MEM_COMMIT, PAGE_NOACCESS);
	DIE(p == NULL, "VirtualAlloc");

	for (i = 0; i != sizeof(how) / sizeof(*how); ++i) {
		bRet = VirtualProtect(p + i * pageSize, pageSize, how[i], &old);
		DIE(bRet == FALSE, "VirtualProtect");
	}

	set_signal();

	for (i = 0; i != sizeof(how) / sizeof(*how); ++i) {
		fprintf(stderr, "Read access %d...\n", i);
		ch = p[i * pageSize];
		fprintf(stderr, "OK: %u\n", ch);

		fprintf(stderr, "Write access %d...\n", i);
		p[i * pageSize] = 0xFF;
		fprintf(stderr, "OK\n");

		fprintf(stderr, "\n");
	}
	restore_signal();

	/* TODO 1 - cleanup */
	bRet = VirtualFree(p, 0, MEM_RELEASE);
	DIE(bRet == FALSE, "VirtualFree");

	return 0;
}
