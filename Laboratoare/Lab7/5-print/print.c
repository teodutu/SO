/**
 * SO, 2017 - Lab #07, Profiling & Debugging
 * Task #5, Linux
 *
 * Printing order
 */

#include <stdio.h>
#include <unistd.h>

int main(void)
{
	setbuf(stdout, NULL);
	fprintf(stdout, "A");

	/*
	 * Stderr nu se buffereaza si se scrie direct. Din moltivul asta, B
	 * apare imediat, iar A apare doar la finalul programului, cand se da
	 * flush.
	 */
	fprintf(stderr, "B");
	sleep(5);

	return 0;
}
