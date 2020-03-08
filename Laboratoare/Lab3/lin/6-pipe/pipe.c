/**
  * SO, 2019
  * Lab #3
  *
  * Task #6, lin
  *
  * Anonymous pipe.
  * Parent process reads a string from standard input and sends
  * 	it to the child process through an anonymous pipe.
  * Child process reads data from the anonymous pipe and prints
  * 	it to standard output.
  */

#include <stdbool.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/wait.h>
#include <unistd.h> 

#include "utils.h"

#define BUFSIZE		100
#define EXIT_STR	"exit\n"
#define PIPE_READ	0
#define PIPE_WRITE	1

static bool check_for_exit(const char *input)
{
	if (strcmp(input, EXIT_STR) == 0) {
		return true;
	}

	return false;

}

static void child_loop(int readfd)
{
	char output[BUFSIZE];
	int rc;

	while(1) {
		rc = read(readfd, output, BUFSIZE);
		DIE(rc < 0, "read() failed");

		if (rc == 0) {
			close(readfd);
			break;
		}
		
		printf("[Child received]: %s", output);
		fflush(stdout);
	}

	return;
}

static void parent_loop(int writefd)
{
	char input[BUFSIZE];
	int rc;
	
	while(1) {
		memset(input, 0, BUFSIZE);
		fgets(input, BUFSIZE - 1, stdin);

		if (check_for_exit(input)) {
			/* TODO - Close pipe head used for writing */
			close(writefd);
			break;
		}

		rc = write(writefd, input, BUFSIZE);
		DIE(rc < 0, "write() failed");
	}

	return;
}

int main(void)
{
	pid_t pid;
	int rc;
	int fds[2];

	/* TODO - Create anonymous pipe */
	rc = pipe(fds);
	DIE(rc < 0, "pipe");

	/* Sometimes I wish I could do a fork() in real life. No more
	 * hard choices to think about. Endless possibillites to explore. MH.
	 */
	pid = fork();
	switch (pid) {
	case -1:
		/* Fork failed, cleaning up... */
		/* TODO - Close both heads of the pipe */
		close(fds[0]);
		close(fds[1]);

		DIE(-1, "fork() failed");

		break;
	case 0:
		/* Child process */
		/* TODO - Close unused pipe head by child */
		close(fds[1]);

		/* TODO - Call child loop and pass pipe head used for reading */
		child_loop(fds[0]);

		break;
	default:
		/* Parent process */
		/* TODO - Close unused pipe head by parent */
		close(fds[0]);

		/* TODO - Call parent loop and pass pipe head used for writing */
		parent_loop(fds[1]);

		/* Wait for child process to finish */
		wait(NULL);

		break;
	}

	return 0;
}
