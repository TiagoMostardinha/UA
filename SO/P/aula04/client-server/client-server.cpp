#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <pthread.h>
#include <cctype>
#include <string>
#include "thread.h"

#define FIFOSZ  10

typedef struct FIFO
{
    uint32_t ii;   ///< point of insertion
    uint32_t ri;   ///< point of retrieval
    uint32_t cnt;  ///< number of items stored
    uint32_t ids[FIFOSZ];  ///< storage memory
    pthread_cond_t notEmpty = PTHREAD_COND_INITIALIZER;
    pthread_cond_t notFull = PTHREAD_COND_INITIALIZER;
    pthread_mutex_t accessCR = PTHREAD_MUTEX_INITIALIZER;
}FIFO;

typedef struct ServiceRequest
{
    uint32_t clientid;
    char *message;
}ServiceRequest;

typedef struct ServiceResponse
{
    uint32_t len = 0;
    uint32_t alpha = 0;
    uint32_t numbers = 0;
    uint32_t serverid = 0;
}ServiceResponse;

typedef struct SLOT
{
    ServiceRequest req;
    ServiceResponse res;
    bool hasResponse = false;
    pthread_mutex_t accessCR = PTHREAD_MUTEX_INITIALIZER;
    pthread_cond_t available = PTHREAD_COND_INITIALIZER;
}SLOT;

typedef struct ARG
{
    int id;
    int iter;
}ARG;


static SLOT slots[FIFOSZ];
static FIFO frees;
static FIFO pending;

// Initialize the frees FIFO
void freesInit(void) {
    mutex_lock(&frees.accessCR);
    frees.ii = frees.ri = 0;
    frees.cnt = FIFOSZ;

    uint32_t i;

    for (i = 0; i < FIFOSZ; i++) {
        frees.ids[i] = i;
    }

    cond_signal(&frees.notEmpty);
    mutex_unlock(&frees.accessCR);
    
}

// Initialize the pendings FIFO
void pendingInit(void) {
    mutex_lock(&pending.accessCR);
    // The buffer is empty
    pending.cnt = pending.ii = 0;
    cond_signal(&pending.notFull);
    mutex_unlock(&pending.accessCR);

}

// Insert a new value to the FIFO
void insert(FIFO *fifo, uint32_t id) {

}

// Retrieve a value from the FIFO
uint32_t retrive(FIFO *fifo) {

}

// Signal the Response to the client callService
void signalResponseIsAvailable(uint32_t id) {

}

// Wait for a response from the server
void waitForResponse(uint32_t id) {

}

void callService(ServiceRequest &req, ServiceResponse &res) {

}

void processService(uint32_t sid) {

}

// Create a Client Thread
void *client(void *arg) {

}

// Create a Server Thread
void *server(void *arg) {

}

int main(void) {

}