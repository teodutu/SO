/**
 * SO, 2017
 * Lab #2, Operatii I/O simple
 *
 * Task #3, Windows
 *
 * Implementing "ls" tool with options
     -a - print attributes of the file
     -r - recursive
 */

/* do not use UNICODE */
#undef _UNICODE
#undef UNICODE

#include <windows.h>
#include <stdio.h>

#include <utils.h>

#define MAXPATH         256

/* enough to fit something like "1-ls.vcproj.CHOOCH.Administrator.user" */
#define MAX_FILE_NAME   48

/* Prints count white spaces */
static void PrintPadding(DWORD count);

/* Prints human readable date and time out of a FILETIME structure */
static void PrintFileTime(FILETIME fTime);

/*
 * List files from directory reprezented by path
 * @path        - path to dir we want to list
 * @bRecursive  - if "ls -r" was issued
 * @bAll        - if "ls -a" was issued
 */
static void ListFiles(TCHAR *path, BOOL bRecursive, BOOL bAll)
{
    WIN32_FIND_DATA ffd;
    HANDLE hFind = INVALID_HANDLE_VALUE;
    BOOL bRet = FALSE;
    TCHAR extendedPath[MAXPATH], newPath[MAXPATH];

    printf("\n=== %s ===\n\n", path);
    /*
     * Prepare path to FindFirst File -we must add "\*"
     * extendedPath = path + "\*"
     */
    sprintf_s(extendedPath, MAXPATH, "%s\\*", path);

    hFind = FindFirstFile(extendedPath, &ffd);
    DIE(hFind == INVALID_HANDLE_VALUE, "Failed to get the first file in the path");

    do {
        if (ffd.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY) {
            printf("%s/\n", ffd.cFileName);

            if (bRecursive && strcmp(ffd.cFileName, ".")
                && strcmp(ffd.cFileName, "..")) {
                sprintf_s(newPath, MAXPATH, "%s\\%s", path, ffd.cFileName);
                ListFiles(newPath, bRecursive, bAll);
                printf("\n=== %s ===\n\n", path);
            }
        } else {
            if (bAll == TRUE) {
                PrintFileTime(ffd.ftLastAccessTime);
                PrintPadding(4);

                printf("%llu ", ((DWORD64)ffd.nFileSizeHigh << 32) + ffd.nFileSizeLow);
            }
             printf("%s\n", ffd.cFileName);
        }
    } while (FindNextFile(hFind, &ffd));
}

int main(int argc, char *argv[])
{
    TCHAR path[MAXPATH];
    BOOL bRecursive = FALSE, bAll = FALSE;
    int i;

    if (argc < 2 || argc > 4) {
        printf("\nUsage: %s <directory name>"
               "\n\t-R -recursive\n\t-a all atributes\n", argv[0]);
        return (-1);
    }

    /* Parse input line */
    for (i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-a") == 0) {
            bAll = TRUE;
            continue;
        }
        if (strcmp(argv[i], "-R") == 0) {
            bRecursive = TRUE;
            continue;
        }

        /* save path */
        strcpy_s(path, MAXPATH, argv[i]);
    }

    ListFiles(path, bRecursive, bAll);

    return 0;
}

static void PrintFileTime(FILETIME fTime)
{
    SYSTEMTIME stUTC, stLocal;
    DWORD dwRet;

    /* Converting the last-write time to local time */
    dwRet = FileTimeToSystemTime(&fTime, &stUTC);
    DIE(dwRet == FALSE, "FileTimeToSystemTime");

    dwRet = SystemTimeToTzSpecificLocalTime(NULL, &stUTC, &stLocal);
    DIE(dwRet == FALSE, "SystemTimeToTzSpecificLocalTime");

    /* Printing the date and time */
    printf("%02d/%02d/%d  %02d:%02d",
            stLocal.wMonth, stLocal.wDay, stLocal.wYear,
            stLocal.wHour, stLocal.wMinute);
}

static void PrintPadding(DWORD count)
{
    DWORD i;

    for (i = 0; i < count; i++)
        printf(" ");
}
