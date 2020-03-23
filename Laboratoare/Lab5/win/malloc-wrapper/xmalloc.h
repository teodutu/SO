/**
 * SO, 2016
 * Lab #5, Gestiunea Memoriei
 *
 * Task #1, Windows
 *
 * malloc wrapper
 */

#ifndef XMALLOC_H__
#define XMALLOC_H__ 1

#include <windows.h>
#include <stdlib.h>

void *xmalloc(size_t size);

/* TODO */

#define xfree(ptr)                                              \
	do {                                                    \
		BOOL bRet;                                      \
		HANDLE hProcessHeap = GetProcessHeap();         \
                bRet = HeapFree(hProcessHeap, 0, ptr);          \
                DIE(bRet == FALSE, "HeapFree");                 \
	} while (0)

#endif
