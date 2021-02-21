/**
  * SO, 2016
  * Lab #4
  *
  * Task #6, lin
  *
  * Timers usage
  */
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <assert.h>
#include <time.h>

#include <signal.h>
#include <sys/time.h>

#include "utils.h"

#define TIMEOUT		2


/*
 * SIGALRM handler - called when the timer expires
 */
static void timer_handler(union sigval arg)
{
	time_t curr_time = time(NULL);

	/* TODO - print time */
	/*
	 * Ca sa nu dea warning de unused param.
	 * Totusi de ce e 0xffffffffffffffff?
	 */
	printf("adresa timerului in handler = %d\n", arg.sival_int);

	printf("time: %s\n", ctime(&curr_time));
}

/*
 * set signal handlers
 */
static void set_signals(void)
{
	struct sigaction sa;
	int rc;

	memset(&sa, 0, sizeof(sa));

	/* TODO - set handler for SIGALRM */
	sa.sa_handler = timer_handler;

	rc = sigaction(SIGALRM, &sa, NULL);
	DIE(rc < 0, "sigaction(SIGALRM)");
}

/*
 * configure timer to generate SIGALRM when fired
 * the timer expires at every TIMEOUT seconds
 */
static void set_timer(void)
{
	timer_t timerid;
	struct sigevent sev;
	struct itimerspec its;
	int rc;

	/* TODO - Create the timer */
	sev.sigev_notify = SIGEV_THREAD;
	sev.sigev_value.sival_int = 2;
	sev.sigev_notify_function = timer_handler;
    	sev.sigev_notify_attributes = NULL;

	rc = timer_create(CLOCK_REALTIME, &sev, &timerid);
	DIE(rc < 0, "timer_create");

	printf("adresa timerului creat = %p\n\n", timerid);

	/* TODO - Start the timer */
	its.it_value.tv_sec = TIMEOUT;
	its.it_value.tv_nsec = 0;
	its.it_interval.tv_sec = its.it_value.tv_sec;
	its.it_interval.tv_nsec = its.it_value.tv_nsec;

	rc = timer_settime(timerid, 0, &its, NULL);
	DIE(rc < 0, "timer_settime");
}

/*
 * use sigsuspend for waiting signals
 */
static void wait_for_signal(void)
{
	sigset_t old_mask;
	int rc;

	/* TODO - wait for signal using sigsuspend */
	rc = sigemptyset(&old_mask);
	DIE(rc < 0, "sigfillset");;

	rc = sigaddset(&old_mask, SIGALRM);
	DIE(rc < 0, "sigdelset(SIGALRM)");

	/* Ca sa moara imediat cu ctrl+c */
	rc = sigaddset(&old_mask, SIGINT);
	DIE(rc < 0, "sigdelset(SIGINT)");

	sigsuspend(&old_mask);
}

int main(void)
{
	// set_signals();	/* configure handler for  SIGALRM */
	set_timer();   /* create and start timer */

	while (1);
		// wait_for_signal();

	return 0;
}
