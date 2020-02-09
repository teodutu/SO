/**
 * SO, 2017
 * Lab #2, Operatii I/O simple
 *
 * Task #2, Windows
 *
 * Implementing simple crc method
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>
#include <stdio.h>

#include <utils.h>
#include <crc32.h>

#define BUFSIZE 512
#define CHUNKSIZE 32

static void GenerateCrc(CHAR *sourceFile, CHAR *destFile)
{
    HANDLE hRead, hWrite;
    CHAR buf[BUFSIZE];
    BOOL bRet;
    DWORD bytesRead = 0, bytesWritten = 0;
    int crc = 0;

    /* TODO 1 - Open source file for reading */
    hRead = CreateFile(sourceFile,
            GENERIC_READ,
            0,
            NULL,
            OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL,
            NULL);
    DIE(hRead == INVALID_HANDLE_VALUE, "Failed to open source file");

    /* TODO 1 - Create destination file for writing */
    hWrite = CreateFile(destFile,
            GENERIC_WRITE,
            0,
            NULL,
            CREATE_NEW,
            FILE_ATTRIBUTE_NORMAL,
            NULL);
    DIE(hWrite == INVALID_HANDLE_VALUE, "Failed to open destination file");

    /* read from file  */
    while (1) {
        ZeroMemory(buf, sizeof(buf));

        /* TODO 1 - Read from source file into buf BUFSIZE bytes */
        bRet = ReadFile(hRead,
            buf,
            BUFSIZE,
            &bytesRead,
            NULL);
        DIE(bRet == FALSE, "Failed to read the source file");

        /* TODO 1 - Test for end of file */
        if (bytesRead == 0)
            break;

        /* calculate crc for buf */
        crc = update_crc(crc, (unsigned char *) buf, bytesRead);
    }

    /* TODO 1 - Write crc to destination file */
    bRet = WriteFile(hWrite,
            &crc,
            sizeof(crc),
            &bytesWritten,
            NULL);
    DIE(bRet == FALSE, "Failed to write crc to destination file");

    /* TODO 1 - Close files */
    bRet = CloseHandle(hRead);
    DIE(bRet == FALSE, "Failed to close source file");

    bRet = CloseHandle(hWrite);
    DIE(bRet == FALSE, "Failed to close destination file");
}


static DWORD GetSize(HANDLE file)
{
    DWORD dwSize = 0;

    /* TODO 2 - Calculate and return file size using SetFilePointer */
    dwSize = SetFilePointer(file, 0, NULL, FILE_END);
    DIE(dwSize == INVALID_SET_FILE_POINTER, "Failed to get file size");

    DIE(SetFilePointer(file, 0, NULL, FILE_BEGIN) == INVALID_SET_FILE_POINTER,
        "Failed to reset the file pointer");

    return dwSize;
}

static BOOL CompareFiles(CHAR *file1, CHAR *file2)
{
    DWORD  bytesRead;
    HANDLE hFile1, hFile2;
    CHAR chunk1[CHUNKSIZE], chunk2[CHUNKSIZE];
    BOOL result = FALSE, bRet = FALSE;

    /* TODO 3 - Open file handles */
    hFile1 = CreateFile(file1,
            GENERIC_READ,
            FILE_SHARE_READ,
            NULL,
            OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL,
            NULL);
    DIE(hFile1 == INVALID_HANDLE_VALUE, "Failed to open file 1");

    hFile2 = CreateFile(file2,
            GENERIC_READ,
            FILE_SHARE_READ,
            NULL,
            OPEN_EXISTING,
            FILE_ATTRIBUTE_NORMAL,
            NULL);
    DIE(hFile2 == INVALID_HANDLE_VALUE, "Failed to open file 2");

    /* TODO 3 - Compare file size */
    if (GetSize(hFile1) != GetSize(hFile2))
        goto exit;

    /* TODO 3 - Compare the CRC files, chunk by chunk */
     while (1) {
         bRet = ReadFile(hFile1,
                 chunk1,
                 CHUNKSIZE,
                 &bytesRead,
                 NULL);
         DIE(bRet == FALSE, "Failed to read from file 1");

         if (bytesRead == 0)
             break;

         bRet = ReadFile(hFile2,
             chunk2,
             CHUNKSIZE,
             &bytesRead,
             NULL);
         DIE(bRet == FALSE, "Failed to read from file 2");

         if (memcmp(chunk1, chunk2, bytesRead))
             goto exit;
     }

     result = TRUE;

exit:
    /* TODO 3 - Close files */
    bRet = CloseHandle(hFile1);
    DIE(bRet == FALSE, "Failed to close file 1");

    bRet = CloseHandle(hFile2);
    DIE(bRet == FALSE, "Failed to close file 2");

    return result;
}

int main(int argc, char *argv[])
{
    BOOL equal;

    if (argc != 4) {
        fprintf(stderr, "Usage:\n"
                "\tcrc.exe -g <input_file> <output_file> - generate crc\n"
                "\tcrc.exe -c <file1> <file2>            - compare files\n");
        exit(EXIT_FAILURE);
    }

    if (strcmp(argv[1], "-g") == 0)
        GenerateCrc(argv[2], argv[3]);

    if (strcmp(argv[1], "-c") == 0) {
        equal = CompareFiles(argv[2], argv[3]);

        if (equal)
            printf("Files are equal\n");
        else
            printf("Files differ\n");
    }

    return 0;
}
