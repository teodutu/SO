/**
 * SO, 2017
 * Lab #2, Operatii I/O simple
 *
 * Task #5, Linux
 *
 * Locking a file
 */

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/file.h>   /* flock */
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>  /* errno */

#include "utils.h"

#define LOCK_FILE   "/tmp/my_lock_file"

static int fdlock = -1;
static int del;

static void do_stuff(void)
{
    sleep(10);
}

static void check_lock(void)
{
    fdlock = open(LOCK_FILE, O_EXCL | O_CREAT, 0777);

    if (fdlock < 0) {
        if (errno == EEXIST)
            printf("\nUnable to lock the file\n\n");
        else
            DIE(1, "Failed to open lock file");
    } else {
        printf("\nGot Lock\n\n");
        del = 1;
    }
}

static void clean_up(void)
{
    int rc;

    if (fdlock >= 0) {
        rc = close (fdlock);
        DIE(rc < 0, "Unable to unlock file");
    }

    if (del) {
        rc = unlink(LOCK_FILE);
        DIE(rc < 0, "Unable to delete file");
    }
}


int main(void)
{
    check_lock();

    do_stuff();

    clean_up();

    return 0;
}
