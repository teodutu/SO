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
#include <sys/signalfd.h>

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
int sig_fd;

/* Am schimbat get_index astfel incat sa returneaze indexul asociat unui pid */
static int get_index(pid_t pid)
{
	int i;

	for (i = 0; i != CLIENT_COUNT; ++i) {
		if (chld_pid[i] == pid)
			return i;
	}

	DIE(1, "get_index found no child with the given pid");
}

static int server(void)
{
	/* epoll handle */
	int efd;

	/* epoll event structure */
	struct epoll_event ev;
	struct epoll_event evs[CLIENT_COUNT + 1];

	int i;
	int recv_msgs;
	int recv_count;
	int num_events;
	char msg[MSG_SIZE];
	int status, rc, index;
	struct signalfd_siginfo fdsi;

	printf("server: started\n");

	efd = epoll_create(CLIENT_COUNT + 1);
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

	ev.data.fd = sig_fd;

	rc = epoll_ctl(efd, EPOLL_CTL_ADD, sig_fd, &ev);
	DIE(rc < 0, "server: epoll_ctl(sig_fd) failed");

	/* number of received messages */
	recv_msgs = 0;

	while (recv_msgs < CLIENT_COUNT) {
		/* TODO - use epoll to wait to read from pipes */
		num_events = epoll_wait(efd, evs,
			CLIENT_COUNT - recv_msgs + 1, -1);
		DIE(num_events < 0, "server: epoll_wait failed");

		for (i = 0; i != num_events; ++i) {
			/*
			 * Am verificat si sa fie eveniment de EPOLLIN ca daca
			 * o fi vreo eroare sau ceva (EPOLERR de ex), sa n-o iau
			 * in considerare.
			 */
			if (evs[i].data.fd != sig_fd
				&& (evs[i].events & EPOLLIN)) {
				++recv_msgs;

				recv_count = read(evs[i].data.fd, msg,
					MSG_SIZE);
				DIE(recv_count < 0, "server: read failed");

				printf("server received: %s\n", msg);
			} else if (evs[i].events & EPOLLIN) {
				rc = read(sig_fd, &fdsi, sizeof(fdsi));
				DIE(rc < 0, "server: read(fdsi) failed");

				if (SIGCHLD == fdsi.ssi_signo) {
					index = get_index(fdsi.ssi_pid);

					rc = epoll_ctl(efd, EPOLL_CTL_DEL,
						pipes[index][PIPE_READ],
						evs + i);
					DIE(rc < 0,
						"server: epoll_ctl(EPOLL_CTL_DEL) failed");

					rc = close(pipes[index][PIPE_READ]);
					DIE(rc < 0, "server: close failed");
				}
			}
		}
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
	sigset_t mask;

	/* Init pipes */
	for (i = 0 ; i < CLIENT_COUNT; i++) {
		rc = pipe(pipes[i]);
		DIE(rc < 0, "pipe");
	}

	rc = sigemptyset(&mask);
	DIE(rc < 0, "main: sigemptyset");

	rc = sigaddset(&mask, SIGCHLD);
	DIE(rc < 0, "main: sigaddset");
 
	rc = sigprocmask(SIG_BLOCK, &mask, NULL);
	DIE(rc < 0, "main: sigprocmask");

	sig_fd = signalfd(-1, &mask, 0);
	DIE(sig_fd < 0, "main: signalfd");

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
