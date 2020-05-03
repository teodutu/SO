/*
 * SO, 2016 - Lab 10 (Advanced I/O Windows
 * I/O completion ports wrapper functions
 * Task #4 (I/O completion ports)
 */

#include <windows.h>

#include "iocp.h"

/*
 * create I/O completion port
 */

HANDLE iocp_init(void)
{
	/* TODO */
        HANDLE hIOCP = CreateIoCompletionPort(INVALID_HANDLE_VALUE, NULL, NULL,
                0);
        DIE(!hIOCP, "CreateIoCompletionPort");

        return hIOCP;
}

/*
 * add handle to completion port; use handle as key
 */

HANDLE iocp_add(HANDLE iocp, HANDLE hFile)
{
	/* TODO */
        HANDLE hRet = CreateIoCompletionPort(hFile, iocp, (ULONG_PTR)hFile, 0);
        DIE(!hRet, "CreateIoCompletionPort");

        return hRet;
}

/*
 * add handle to completion port; use key as key
 */

HANDLE iocp_add_key(HANDLE iocp, HANDLE hFile, ULONG_PTR key)
{
	/* TODO */
        HANDLE hRet = CreateIoCompletionPort(hFile, iocp, key, 0);
        DIE(!hRet, "CreateIoCompletionPort");

        return hRet;
}

/*
 * wait for event notification on completion port
 */

BOOL iocp_wait(HANDLE iocp, PDWORD bytes, PULONG_PTR key, LPOVERLAPPED *op)
{
	/* TODO */
        return GetQueuedCompletionStatus(iocp, bytes, key, op, INFINITE);
}
