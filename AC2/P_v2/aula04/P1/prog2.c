#include <detpic32.h>

void delay(int ms) {
    for (; ms > 0; ms--) {
        resetCoreTimer();
        
        readCoreTimer();

        while (readCoreTimer() < 20000);
    }
}

int main(void) {
    TRISE = TRISE & 0xFF87;         // Configure port RE3-6 as output
    LATE = LATE & 0xFF87;            // Reset port RE3-6

    int cnt = 0;

    while(1){
        delay(250);                 // Wait 0.5s
        if (cnt == 16) cnt = 0;     // Reset counter
        LATE = (LATE & 0xFF87) | (cnt << 3); // Toggle RE3-6 port value
        cnt++;
    }
    return 0;
}
