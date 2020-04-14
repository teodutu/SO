/**
 * SO, 2019
 * Lab #8
 *
 * Task #6, lin
 *
 * Implementing single time use init / deinit functions
 */
#include <pthread.h>
#include <unistd.h>
#include "utils.h"

#define ONCE_INITIALIZER { PTHREAD_MUTEX_INITIALIZER, 0 }

#define NUM_THREADS 10
#define NUM_CHARS   1000
#define START_CHAR  '!'
#define PERIOD      500

struct once_struct {            /* Our equivalent of pthread_once_t */
	pthread_mutex_t mutex;
	int refcount;
};

struct once_struct once = ONCE_INITIALIZER;

/**
 * Remaining code is for testing one_time_init()
 * Do NOT edit this function
 */
static void init_func(void)
{
	/*
	 * We should see this message only once, no matter how many
	 * times one_time_init() is called
	 */

	time_t ts = time(NULL);

	printf("Threads execution started at %s", asctime(gmtime(&ts)));
}

static void deinit_func(void)
{

	time_t ts = time(NULL);

	/*
	 * We should see this message only once, no matter how many
	 * times one_time_init() is called
	 */

	printf("\nThreads execution ended at %s", asctime(gmtime(&ts)));
}

static void thread_work(int arg)
{
    for (int i = 0; i < NUM_CHARS; i++) {
	printf("%c", START_CHAR + arg);

	/* What happens if you comment out the fflush ? */
	/*
	 * Bufferul libc-ului este folosit de proces, cu toate threadurile lui,
	 * deci si cu si fara flush outputul cam tot ala e. Difera faptul ca e
	 * mai rapid sa scriem folosind bufferul.
	 */
	fflush(stdout);

	/* What happens if you decrease the PERIOD ? */
	/*
	 * Daca PERIOD scade sau se elimina complet usleepul, caracterele apar
	 * afisate in secvente de caractere identeice pentru ca threadurile nu
	 * mai cedeaza procesurul dupa fiecare printf si scriu totul deodata.
	 */
	usleep(PERIOD);
    }
}

static int one_time_init(struct once_struct *once_control, void (*f)(void))
{
	int rc;

	/* TODO - Each time a thread gets here, increment once_control->refcount.
	 * Call the f() function only if this is the first thread that got here.
	 */
	/*
	 * Ideea e ca doar cand refcount-ul este 0 (primul apel al lui
	 * one_time_init) se apeleaza si functia f.
	 * refcount se incrementeaza si se verifica atomic ca sa nu apara race
	 * conditions si de asta e nevoie de mutex.
	 */
	rc = pthread_mutex_lock(&once_control->mutex);
	DIE_pthread(rc != 0, "pthread_mutex_lock(once_control->mutex)", rc);
	if (!once_control->refcount)
		(*f)();

	++once_control->refcount;
	pthread_mutex_unlock(&once_control->mutex);
	DIE_pthread(rc != 0, "pthread_mutex_unlock(once_control->mutex)", rc);

	return 0;
}

static int one_time_deinit(struct once_struct *once_control, void (*f)(void))
{
	int rc;

	/* TODO - Each time a thread gets here, decrement once_control->refcount.
	 * Call the f() function only if this is the last thread that got here.
	 */
	/*
	 * Tot doar cand refcount este 0 se va apela f, dar acum refcount scade
	 * (tot atomic din aceleas motive ca mai sus), deci ultimul apel al lui
	 * one_time_deinit o sa apeleze si f.
	 */
	rc = pthread_mutex_lock(&once_control->mutex);
	DIE_pthread(rc != 0, "pthread_mutex_lock(once_control->mutex)", rc);
	--once_control->refcount;

	if (!once_control->refcount)
		(*f)();

	pthread_mutex_unlock(&once_control->mutex);
	DIE_pthread(rc != 0, "pthread_mutex_unlock(once_control->mutex)", rc);

	return 0;
}

static void *thread_func(void *arg)
{
	/*
	 * The following allows us to verify that even if a single thread calls
	 * one_time_init() multiple times, init_func() is only called once
	 */

	one_time_init(&once, init_func);

	/*
	 * The following allows us to assign some character printing work to the
	 * threads.
	 */

	thread_work((long) arg);

	/*
	 * The following allows us to verify that even if a single thread calls
	 * one_time_deinit() multiple times, deinit_func() is only called once
	 */

	one_time_deinit(&once, deinit_func);

	return NULL;
}

int main(void)
{
	pthread_t threads[NUM_THREADS];
	long i;
	int rc;

	/* Create NUM_THREADS threads, all will call one_time_init() / one time deinit */

	for (i = 0; i < NUM_THREADS; i++) {
	rc = pthread_create(&threads[i], NULL, thread_func, (void *) i);
	    DIE(rc != 0, "pthread_create");
	}

	for (i = 0; i < NUM_THREADS; i++) {
	    rc = pthread_join(threads[i], NULL);
	    DIE(rc != 0, "pthread_join");
	}

	exit(EXIT_SUCCESS);
}
