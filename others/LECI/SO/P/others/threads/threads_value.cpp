#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <errno.h>
#include <string.h>
#include <time.h>
#include <sys/time.h>
#include <pthread.h>

void* roll_dice(void*){
    int value = (rand() % 6) + 1;
    int* result = (int*)malloc(sizeof(int));
    *result = value;
    printf("Thread result: %p\n",result);
    return (void*) result;
}

int main(int argc, char* argv[]) {
    int* res;
    srand(time(NULL));
    pthread_t th;
    if(pthread_create(&th,NULL,&roll_dice,NULL) != 0) return 1;
    if(pthread_join(th,(void**)&res) != 0) return 2;

    printf("Main res: %n\n",res);
    printf("Result: %n\n",*res);
    return 0;
}