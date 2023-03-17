#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

void fork1() {
    int id = fork();                                // create a child process
    printf("Hello world from: %d\n",id);            // both parent and child will print this
}

void fork2() {
    int id_1 = fork();                              // create a child process
    if (id_1 != 0) {
        int id_2 = fork();                          // create a child process
    }
    
    printf("Hello world from: \n");                 // both parent and child will print this
}

void wait_fork(){
    int id = fork();
    int n;

    if (id == 0){
        n = 1;
    } else {
        n = 6;
    }

    for(int i = n; i < n+5;i++){
        printf("%d",i);
        fflush(stdout);
    }
    printf("\n");
}


int main ( int  argc,  char * argv[]) {
    //fork1();
    //fork2();
    return 0;
}
