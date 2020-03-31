/**
 * SO, 2014
 * Lab #6, Memoria virtuala
 *
 * Task #6, Windows
 *
 * Locking memory in order to avoid swaping
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <stdio.h>
#include <assert.h>
#include <limits.h>
#include <windows.h>

#include "utils.h"

#define SIZE	128

static int pageSize = 0x1000;
char msg[] = "Very important real-time data";

/* lock memory interval [addr, addr + size - 1] */
static void lock_memory(char *addr, DWORD size)
{
	BOOL bRet;
	DWORD page_offset = (DWORD) addr % pageSize;

	/* TODO - align addr to page offset and adjust size */
	addr -= page_offset;

	/* TODO - lock memory */
	bRet = VirtualLock(addr, size);
	DIE(bRet == NULL, "VirtualLock");
}

/* unlock memory interval [addr, addr + size - 1] */
static void unlock_memory(char *addr, DWORD size)
{
	BOOL bRet;
	DWORD page_offset = (DWORD) addr % pageSize;

	/* TODO - align addr to page offset and adjust size */
	addr -= page_offset;

	/* TODO - unlock memory */
	bRet = VirtualUnlock(addr, size);
	DIE(bRet == NULL, "VirtualUnlock");
}

int main(void)
{
	char data[SIZE];

	/* TODO - Lock data */
	lock_memory(data, sizeof(data));

	/* TODO - copy msg into data */
	memcpy(data, msg, min(sizeof(data), sizeof(msg)));

	/* printing data to see it's there */
	printf("data=%s\n", data);

	/* TODO - UnLock data */
	unlock_memory(data, sizeof(data));

	return 0;
}
