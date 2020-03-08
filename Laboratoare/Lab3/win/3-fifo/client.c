/**
 * SO, 2017
 * Lab #3, Procese
 *
 * Task #3, Windows
 *
 * Named Pipes - Client side
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>
#include <stdio.h>
#include <string.h>

#include "utils.h"
#include "common.h"


int main(void)
{
	HANDLE hPipe;
	char message[BUFSIZE];
	DWORD dwBytesWritten, dwTotalBytesWritten = 0, dwMsgLen;
	BOOL bRet;

	/* TODO - Open Named Pipe as a regular file */
	hPipe = CreateFile(
		PIPE_NAME,
		GENERIC_WRITE,
		FILE_SHARE_READ,
		NULL,
		OPEN_EXISTING,
		0,
		NULL);
	DIE(hPipe == INVALID_HANDLE_VALUE, "CreateFile");

	/* Read mesage from user */
	printf("Message to send: ");
	ZeroMemory(message, sizeof(message));
	fgets(message, sizeof(message) - 1, stdin);
	dwMsgLen = strlen((const char *)message);

	/* TODO - Send the message */
	do {
		bRet = WriteFile(
			hPipe,
			message + dwTotalBytesWritten,
			dwMsgLen,
			&dwBytesWritten,
			NULL);
		DIE(bRet == FALSE, "WriteFile");

		dwTotalBytesWritten += dwBytesWritten;
	} while (dwTotalBytesWritten < dwMsgLen);

	/* Closing our end of the pipe */
	bRet = FlushFileBuffers(hPipe);
	DIE(bRet == FALSE, "FlushFileBuffers");

	bRet = CloseHandle(hPipe);
	DIE(bRet == FALSE, "CloseHandle");

	return 0;
}
