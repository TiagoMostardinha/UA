#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
#include <pthread.h>

int mails = 0;
pthread_mutex_t mutex;

void* routine(void*){
    for(int i = 0; i < 100000; i++){
        pthread_mutex_lock(&mutex);     // lock the mutex
        mails++;
        pthread_mutex_unlock(&mutex);   // unlock the mutex
    }
    return NULL;
}


int main(int argc,char* argv[]){
    pthread_t th[4];                    // thread array id
    int i;
    pthread_mutex_init(&mutex,NULL);    // initialize mutex

    for (i = 0; i < 4; i++) {
        if(pthread_create(&th[i],NULL, &routine, NULL) != 0) {
            perror("Failed to create thread");
            return 1;
        }
        printf("Threas %d has started\n",i);
    }

    for ( i = 0; i < 4; i++) {
        if(pthread_join(th[i],NULL) != 0) {
            perror("Failed to join thread");
            return 2;
        }
        printf("Threas %d has finished execution\n",i);
    }

    pthread_mutex_destroy(&mutex);      // destroy mutex
    printf("mails = %d\n",mails);
    return 0;
}