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
    pthread_t t1,t2,t3,t4;              // thread id
    pthread_mutex_init(&mutex,NULL);    // initialize mutex

    
    if(pthread_create(&t1,NULL, &routine, NULL) != 0) return 1;
    if(pthread_create(&t2,NULL, &routine, NULL) != 0) return 2;
    if(pthread_create(&t3,NULL, &routine, NULL) != 0) return 3;
    if(pthread_create(&t4,NULL, &routine, NULL) != 0) return 4;

    if(pthread_join(t1,NULL) != 0) return 'a';
    if(pthread_join(t2,NULL) != 0) return 'b';
    if(pthread_join(t3,NULL) != 0) return 'c';
    if(pthread_join(t4,NULL) != 0) return 'd';


    pthread_mutex_destroy(&mutex);      // destroy mutex
    printf("mails = %d\n",mails);
    return 0;
}

