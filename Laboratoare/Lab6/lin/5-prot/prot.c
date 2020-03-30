/**
 * SO, 2017
 * Lab #6
 *
 * Task #5, lin
 *
 * Changing page access protection
 */
#include <signal.h>
#include <stdio.h>
#include <fcntl.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <unistd.h>

#include "utils.h"

static int pageSize;
static struct sigaction old_action;
char *p;
int how[3] = { PROT_NONE, PROT_READ, PROT_WRITE };

static void segv_handler(int signum, siginfo_t *info, void *context)
{
	int pageno;
	int prot;
	int rc;

	/* Calling the old signal handler by default for TODO 1 */
	/* Comment this line when solving TODO 2 */

	/* TODO 2 - check if the signal is SIGSEGV */
	if (info->si_signo != SIGSEGV) {
		old_action.sa_sigaction(signum, info, context);
		return;
	}

	/* TODO 2 - obtain from siginfo_t the memory location
	 * which caused the page fault
	 */

	/* TODO 2 - obtain the page which caused the page fault
	 * Hint: use the address returned by mmap
	 */
	pageno = ((char*)info->si_addr - p) / pageSize;

	/* TODO 2 - increase protection for that page */
	if (how[pageno] == PROT_NONE) {
		prot = PROT_READ;
		how[pageno] = PROT_READ;

		fprintf(stderr, "Page %d now has read permissions. \n", pageno);
	} else {
		prot = PROT_READ | PROT_WRITE;
		fprintf(stderr, "Page %d now has read-write permissions\n", pageno);
	}

	rc = mprotect(p + pageno * pageSize, pageSize, prot);
	DIE(rc < 0, "mprotect");
}

static void set_signal(void)
{
	struct sigaction action;
	int rc;

	action.sa_sigaction = segv_handler;
	sigemptyset(&action.sa_mask);
	sigaddset(&action.sa_mask, SIGSEGV);
	action.sa_flags = SA_SIGINFO;

	rc = sigaction(SIGSEGV, &action, &old_action);
	DIE(rc == -1, "sigaction");
}

static void restore_signal(void)
{
	struct sigaction action;
	int rc;

	action.sa_sigaction = old_action.sa_sigaction;
	sigemptyset(&action.sa_mask);
	sigaddset(&action.sa_mask, SIGSEGV);
	action.sa_flags = SA_SIGINFO;

	rc = sigaction(SIGSEGV, &action, NULL);
	DIE(rc == -1, "sigaction");
}

int main(void)
{
	int rc;
	char ch;
	int i;

	pageSize = getpagesize();

	/* TODO 1 - Map 3 pages with the desired memory protection
	 * Use global 'p' variable to keep the address returned by mmap
	 * Use mprotect to set memory protections based on global 'how' array
	 * 'how' array keeps protection level for each page
	 */
	p = mmap(NULL, 3 * pageSize, PROT_NONE, MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	DIE(p == MAP_FAILED, "mmap(p)");

	for (i = 0; i != sizeof(how) / sizeof(*how); ++i) {
		rc = mprotect(p + i * pageSize, pageSize, how[i]);
		DIE(rc < 0, "mprotect");
	}

	set_signal();

	/* TODO 1 - Access these pages for read and write */
	for (i = 0; i != sizeof(how) / sizeof(*how); ++i) {
		fprintf(stderr, "Read access %d...\n", i);
		ch = p[i * pageSize];
		fprintf(stderr, "OK: %u\n", ch);

		fprintf(stderr, "Write access %d...\n", i);
		p[i * pageSize] = 0xFF;
		fprintf(stderr, "OK\n");

		fprintf(stderr, "\n");
	}

	restore_signal();

	/* TODO 1 - unmap */
	rc = munmap(p, 3 * pageSize);
	DIE(rc < 0, "munmap");

	return 0;
}
