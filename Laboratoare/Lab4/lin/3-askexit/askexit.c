/**
  * SO, 2016
  * Lab #4
  *
  * Task #3, lin
  *
  * Signal handling by asking questions
  */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>

#include <signal.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>

#include "utils.h"

#define MY_MAX		32
#define TIMEOUT		1

static void print_next(void)
{
	static int n = 1;

	printf("n = %d\n", n);

	n = (n + 1) % MY_MAX;
}

/* signal handler */
static void ask_handler(int signo)
{
	char buffer[128];

	/*
	 * Pentru ca se folosesc printf() si scanf() (care pun procesul in
	 * waiting) in handlerul de semnale, daca se trimit mai multe semnale
	 * de acelasi fel, se vor trata doar primul primit si al doilea (primit
	 * in timpul handlerului).
	 */
	printf("\nGot %d  - Stop program? [Y/n] ", signo);
	fflush(stdout);
	fgets(buffer, 128, stdin);
	buffer[strlen(buffer)-1] = '\0';

	if (buffer[0] == 'y' || buffer[0] == 'Y')
		exit(EXIT_SUCCESS);
}

/* configure handlers */
static void set_signals(void)
{
	struct sigaction sa;
	int rc;

	memset(&sa, 0, sizeof(sa));

	/* TODO - set handler in struct sigaction sa */
	sa.sa_handler = ask_handler;

	/* TODO - handle SIGINT, SIGQUIT and SIGUSR1 signals */
	rc = sigaction(SIGINT, &sa, NULL);
	DIE(rc < 0, "sigaction(SIGINT) failed");

	rc = sigaction(SIGQUIT, &sa, NULL);
	DIE(rc < 0, "sigaction(SIGQUIT) failed");

	rc = sigaction(SIGUSR1, &sa, NULL);
	DIE(rc < 0, "sigaction(SIGUSR1) failed");
}

int main(void)
{
	set_signals();

	while (1) {
		print_next();
		sleep(TIMEOUT);
	}

	return 0;
}
