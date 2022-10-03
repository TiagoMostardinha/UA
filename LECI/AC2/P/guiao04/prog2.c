#include <detpic32.h>

void delay(int ms);

int main(void) {

    TRISE   = TRISE & 0xFFF0;
    LATE    = LATE & 0xFFF0;

    int count = 0;    

    while (1) {
        LATE = (LATE | count) & count;         // LATE = count

        delay(250);                            // freq = 4Hz
        count++;

        if(count > 15) count = 0;
    }
    return 0;
}

void delay(int ms) {
    for (; ms > 0; ms--)
    {
        resetCoreTimer();
        readCoreTimer();
        while (readCoreTimer() < 20000);
    }
}
