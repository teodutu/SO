/**
 * SO, 2016
 * Lab #11, Advanced IO Linux
 *
 * Task #2, Linux
 *
 * Epoll usage
 */

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/epoll.h>
#include <wait.h>
#include <string.h>
#include <sys/eventfd.h>

#define CLIENT_COUNT	10

#define MSG_SIZE	32

#define	ANY		-1
#define PIPE_READ	0
#define PIPE_WRITE	1

#define MAGIC_EXIT	(1ULL << 63) /* half of (1<<64) */
#define MAGIC_MASK	0xFF

#include "utils.h"

static int pipes[CLIENT_COUNT][2];
int chld_pid[CLIENT_COUNT];

/* TODO - uncomment this for task 3 */
/* #define USE_EVENTFD */
int event_fd;

static void set_event(int index, uint64_t *event)
{
	*event = MAGIC_EXIT | index;
}

static int get_index(uint64_t event)
{
	return (int)(MAGIC_MASK & event);
}

static int server(void)
{
	/* epoll handle */
	int efd;

	/* epoll event structure */
	struct epoll_event ev;
	struct epoll_event recv_ev[CLIENT_COUNT];

	int i;
	int recv_msgs;
	int recv_count;
	int num_events;
	char msg[MSG_SIZE];
	int status, rc, index;
	uint64_t event;

	printf("server: started\n");

	efd = epoll_create(CLIENT_COUNT);
	DIE(efd < 0, "server: epoll_create failed");

	ev.events = EPOLLIN;

	/* TODO - init epoll and remember to close write pipe heads */
	for (i = 0; i < CLIENT_COUNT; i++) {
		rc = close(pipes[i][PIPE_WRITE]);
		DIE(rc < 0, "server: close pipe failed");

		ev.data.fd = pipes[i][PIPE_READ];

		rc = epoll_ctl(efd, EPOLL_CTL_ADD, pipes[i][PIPE_READ], &ev);
		DIE(rc < 0, "server: epoll_ctl(EPOLL_CTL_ADD) failed");
	}

	/* number of received messages */
	recv_msgs = 0;

	while (recv_msgs < CLIENT_COUNT) {
		/* TODO - use epoll to wait to read from pipes */
		num_events = epoll_wait(efd, recv_ev, CLIENT_COUNT - recv_msgs,
			-1);
		DIE(num_events < 0, "server: epoll_wait failed");

		for (i = 0; i != num_events; ++i) {
			recv_count = read(recv_ev[i].data.fd, msg, MSG_SIZE);
			DIE(recv_count < 0, "server: read failed");

			msg[recv_count] = '\0';
			printf("server received: %s\n", msg);

			rc = epoll_ctl(efd, EPOLL_CTL_DEL, recv_ev[i].data.fd,
				recv_ev + i);
			DIE(rc < 0, "server: epoll_ctl(EPOLL_CTL_DEL) failed");

			rc = close(recv_ev[i].data.fd);
			DIE(rc < 0, "server: close failed");
		}

		recv_msgs += num_events;
	}

	printf("server: going to wait for clients to end\n");

	for (i = 0; i < CLIENT_COUNT; ++i) {
		rc = waitpid(ANY, &status, 0);
		DIE(rc < 0, "waitpid");
	}

	printf("server: exiting\n");
	return 0;
}


static int client(unsigned int index)
{
	char msg[MSG_SIZE];
	int rand_no, rc;
	uint64_t event = 0;

	/* Close read pipe head, wait random time and send a message */
	printf("client %i: started\n", index);

	rc = close(pipes[index][PIPE_READ]);
	DIE(rc < 0, "close failed");

	srandom(index);

	sleep(random()%10);

	printf("client %i: writing message\n", index);

	memset(msg, 0, MSG_SIZE);
	rand_no = (char)(random()%30);
	sprintf(msg, "<%i>:<%c>", getpid(), 'a'+rand_no);
	rc = write(pipes[index][PIPE_WRITE], msg, MSG_SIZE);
	DIE(rc < 0, "write");


#ifdef USE_EVENTFD
	/* TODO 2 - Init event (see set_event()) and use it to signal the
	 * server of our termination
	 */

	printf("client %d sending MAGIC exit = 0x%lx\n", index,
			(unsigned long)event);

#endif

	printf("client %i: exiting\n", index);
	rc = close(pipes[index][PIPE_WRITE]);
	DIE(rc < 0, "close");

	return 0;
}


int main(void)
{
	unsigned int i;
	int rc;
	pid_t pid;


	/* Init pipes */
	for (i = 0 ; i < CLIENT_COUNT; i++) {
		rc = pipe(pipes[i]);
		DIE(rc < 0, "pipe");
	}

#ifdef USE_EVENTFD
	/* TODO 2 - create eventfd  - (task3) */

#endif

	/* Crate clients as child processes */
	for (i = 0; i < CLIENT_COUNT; i++) {
		pid = fork();
		if (pid < 0) {
			perror("fork");
			return EXIT_FAILURE;
		} else if (!pid) {
			client(i);
			return EXIT_SUCCESS;
		}
		chld_pid[i] = pid;
	}

	server();

	return EXIT_SUCCESS;
}
