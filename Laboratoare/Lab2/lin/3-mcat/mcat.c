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
    int bytes_read, total_bytes, total_read = 0;
    int bytes_written, total_written, bytes_to_write;

    char buffer[BUFSIZE];

    if (argc < 2 || argc > 3) {
        printf("Usage:\n\t%s source_file [destination_file]\n",
            argv[0]);
        return 0;
    }

    fd_src = open(argv[1], O_RDONLY);
    DIE(fd_src < 0, "Failed ro open source file");

    total_bytes = lseek(fd_src, 0 , SEEK_END);
    lseek(fd_src, 0, SEEK_SET);

    if (argc == 3) {
        fd_dst = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0600);
        DIE(fd_dst < 0, "Failed ro open destination file");
    } else
        fd_dst = STDOUT_FILENO;

    while (total_read < total_bytes) {
        memset(buffer, 0, sizeof(buffer));

        bytes_read = read(fd_src, buffer, BUFSIZE);
        DIE(bytes_read < 0, "Failed to read from source file");

        total_read += bytes_read;

        total_written = 0;
        bytes_to_write = bytes_read;

        while (total_written < bytes_read) {
            bytes_written = write(fd_dst, buffer + total_written,
                bytes_to_write);
            DIE(bytes_written < 0, "Failed to write to destination file");

            total_written += bytes_written;
            bytes_to_write -= bytes_written;
        }
        
    }

    rc = close(fd_src);
    DIE(rc < 0, "Failed to close source file");

    if (fd_dst != STDOUT_FILENO) {
        rc = close(fd_dst);
        DIE(rc < 0, "Failed to close destination file");
    }

    return 0;
}
