/**
  * SO, 2016
  * Lab #4
  *
  * Task #2, lin
  *
  * Catching signals
  */
#include <stdio.h>
#include <string.h>
#include <signal.h>
#include <unistd.h>

#include "utils.h"

int normal_count;
int real_count;
int done;

static void sig_handler(int signum)
{
	switch (signum) {
	case SIGINT:
		usleep(100000);
		normal_count++;
		break;

	case 34:
		usleep(100000);
		real_count++;
		break;

	case SIGQUIT:
		done = 1;
		break;
	}
}

int main(void)
{
	struct sigaction signals;
	sigset_t mask;
	int rc;

	sigfillset(&mask);

	memset(&signals, 0, sizeof(struct sigaction));
	signals.sa_mask = mask;

	signals.sa_handler = sig_handler;
	rc = sigaction(SIGINT, &signals, NULL);
	DIE(rc == -1, "sigaction");

	rc = sigaction(SIGQUIT, &signals, NULL);
	DIE(rc == -1, "sigaction");

	rc = sigaction(SIGRTMIN, &signals, NULL);
	DIE(rc == -1, "sigaction");

	while (!done)
		sleep(1);

	/*
	 * In alea 0.1 sec cat procesul face sleep dupa ce primste un SIGINT,
	 * vin mai multe semnale de la send_normal.sh, dar SO il retine doar
	 * pe primul dintre ele.
	 * Daca se scoate usleep()-ul din cazul in care se primeste SIGINT,
	 * numarul de semnale normale va fi (mai aproape de) 100, intrucat codul
	 * din handler (compilat) se executa mai repede decat cel din script
	 * (interpretat).
	 */
	printf("Got %d normal signals\n", normal_count);

	/*
	 * SO retine o coada cu toate semnalele real-time venite si le trimite
	 * pe toate cand procesul le poate primi.
	 */
	printf("Got %d real-time signals\n", real_count);

	return 0;
}
