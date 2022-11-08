#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <pthread.h>

int mails = 0;

void *routine() {
    for(int i = 0; i < 10000; i++) mails++;                           // threads work in parallel so both will print this at the same time
}

int main(int argc, char* argv[]) {
    pthread_t t1,t2;
    if (pthread_create(&t1, NULL, &routine, NULL) != 0) return 1;   // create thread 1
    if (pthread_create(&t2, NULL, &routine, NULL) != 0) return 2;   // create thread 2
    if (pthread_join(t1, NULL) != 0) return 3;                      // wait for thread to finish    
    if (pthread_join(t2, NULL) != 0) return 4;                      // wait for thread to finish

    printf("Number of mails: %d\n",mails);
    return 0;
}