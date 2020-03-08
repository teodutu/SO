/**
 * SO, 2017
 * Lab #3, Procese
 *
 * Task #3, Windows
 *
 * Named Pipes - Server side
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>

#include "utils.h"
#include "common.h"


int main(void)
{
	HANDLE hPipe;
	char buff[BUFSIZE];
	int result = EXIT_SUCCESS;
	BOOL bRet;
	DWORD dwBytesRead, dwTotalBytesRead = 0;

	/* TODO - Create named pipe - assure inbound access */
	hPipe = CreateNamedPipe(
		PIPE_NAME,
		PIPE_ACCESS_INBOUND,
		PIPE_TYPE_BYTE | PIPE_WAIT,
		PIPE_UNLIMITED_INSTANCES,
		BUFSIZE,
		BUFSIZE,
		0,
		NULL);
	DIE(hPipe == INVALID_HANDLE_VALUE, "CreateNamedPipe");

	/* TODO - connect to pipe */
	bRet = ConnectNamedPipe(hPipe, NULL);
	DIE(bRet == FALSE, "ConnectNamedPipe");

	/* TODO - read data from pipe */
	ZeroMemory(buff, sizeof(buff));

	do {
		bRet = ReadFile(
			hPipe,
			buff + dwTotalBytesRead,
			sizeof(buff),
			&dwBytesRead,
			NULL);

		if (bRet == FALSE && GetLastError() == ERROR_BROKEN_PIPE)
			break;

		DIE(bRet == FALSE, "ReadFile failed");

		dwTotalBytesRead += dwBytesRead;
	} while (dwBytesRead > 0);

	printf("Message received: %s\n", buff);

	/* Disconnect and close pipe */
	bRet = DisconnectNamedPipe(hPipe);
	DIE(bRet == FALSE, "DisconnectNamedPipe");

	bRet = CloseHandle(hPipe);
	DIE(bRet == FALSE, "CloseHandle");

	return result;
}
