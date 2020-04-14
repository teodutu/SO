/**
 * SO, 2019
 * Lab #8, Thread-uri
 *
 * Useful structures/macros
 */

#ifndef LIN_UTILS_H_
#define LIN_UTILS_H_	1

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/* useful macro for handling error codes */
#define DIE(assertion, call_description)				\
	do {								\
		if (assertion) {					\
			fprintf(stderr, "(%s, %d): ",			\
					__FILE__, __LINE__);		\
			perror(call_description);			\
			exit(EXIT_FAILURE);				\
		}							\
	} while (0)

#define DIE_pthread(assertion, call_description, err)			\
	do {								\
		if (assertion) {					\
			fprintf(stderr, "(%s, %d): %s - "		\
				call_description, __FILE__, __LINE__,	\
				strerror(err));				\
			exit(EXIT_FAILURE);				\
		}							\
	} while (0)

#endif
