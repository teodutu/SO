/**
  * SO, 2016
  * Lab #4
  *
  * Task #5, lin
  *
  * Avoid creating zombies using signals
  */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include <signal.h>
#include <sys/types.h>
#include <unistd.h>

#include "utils.h"

#define TIMEOUT		20


/*
 * configure signal handler
 */
static void set_signals(void)
{
	struct sigaction sa;
	int ret;

	memset(&sa, 0, sizeof(sa));

	/* TODO - ignore SIGCHLD */
	sa.sa_handler = SIG_IGN;

	ret = sigaction(SIGCHLD, &sa, NULL);
	DIE(ret < 0, "sigaction(SIGCHLD)");
}

int main(void)
{
	pid_t pid;

	set_signals();

	/* TODO - create child process without waiting */
	pid = fork();
	DIE(pid < 0, "fork()");

	/* TODO - sleep */
	if (pid == 0)
		exit(EXIT_SUCCESS);

	sleep(TIMEOUT);

	return 0;
}
