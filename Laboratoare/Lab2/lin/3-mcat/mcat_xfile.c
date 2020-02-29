/**
 * SO, 2017
 * Lab #2, Operatii I/O simple
 *
 * Task #3, Linux
 *
 * cat/cp applications
 */

#include <stdio.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include "utils.h"
#include "xfile.h"

#define BUFSIZE     32

int main(int argc, char **argv)
{
    int fd_src, fd_dst, rc;
    int bytes_read;
    int bytes_written;

    char buffer[BUFSIZE];

    if (argc < 2 || argc > 3) {
        printf("Usage:\n\t%s source_file [destination_file]\n",
            argv[0]);
        return 0;
    }

    fd_src = open(argv[1], O_RDONLY);
    DIE(fd_src < 0, "Failed ro open source file");

    if (argc == 3) {
        fd_dst = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0600);
        DIE(fd_dst < 0, "Failed ro open destination file");
    } else
        fd_dst = STDOUT_FILENO;

    while (1) {
        memset(buffer, 0, sizeof(buffer));

        bytes_read = xread(fd_src, buffer, BUFSIZE);
        DIE(bytes_read < 0, "Failed to read from source file");

        if (bytes_read == 0)
            break;

        bytes_written = xwrite(fd_dst, buffer, bytes_read);
        DIE(bytes_written <= 0, "Failed to write to destination file");        
    }

    rc = close(fd_src);
    DIE(rc < 0, "Failed to close source file");

    if (fd_dst != STDOUT_FILENO) {
        rc = close(fd_dst);
        DIE(rc < 0, "Failed to close destination file");
    }

    return 0;
}
