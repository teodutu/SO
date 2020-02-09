/**
 * SO, 2017
 * Lab #2, Operatii I/O simple
 *
 * Task #4, Windows
 *
 * Troubleshoot
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>
#include <stdio.h>

#include <utils.h>

#define BUFSIZE 32

int main(int argc, char *argv[])
{
    HANDLE hFile;
    CHAR buf[BUFSIZE];
    BOOL bRet;
    DWORD bytesWritten;

    hFile = CreateFile("so_rulz.txt",
            GENERIC_WRITE,
            FILE_SHARE_WRITE,
            NULL,
            CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL,
            NULL);
    DIE(hFile == INVALID_HANDLE_VALUE, "Failed to open file");

    ZeroMemory(buf, BUFSIZE);
    memcpy(buf, "Testing 123", strlen("Testing 123"));

    bRet = WriteFile(hFile,
            buf,
            strlen(buf),
            &bytesWritten,
            NULL);
    DIE(bRet == FALSE, "Failed to write to file");

    bRet = CloseHandle(hFile);
    DIE(bRet == FALSE, "Failed to close file");

    return 0;
}
