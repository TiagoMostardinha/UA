#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

#include <sys/stat.h>
#include <sys/types.h>
#include <errno.h>
#include <fcntl.h>
#include <time.h>

int main(int argc, char* argv[]) {
    mkfifo("myfifo1",0777);
    int arr[5];
    srand(time(NULL));
    int i;
    for( i = 0; i < 5; i++){
        arr[i] = rand() % 100;
        scanf("%d", &arr[i]);
        printf("%d", arr[i]);
    }

    int fd = open("myfifo1", O_WRONLY);
    if (fd == -1) {
        return 1;
    }

    for(i = 0; i < 5; i++){
        if (write(fd,&arr[i],sizeof(int))){
            return 2;
        }
        printf("Wrote %d\n",arr[i]);
    }

    close(fd);

    return 0;
}