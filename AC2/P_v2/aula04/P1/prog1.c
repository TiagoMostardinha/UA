#include <detpic32.h>

void delay(int ms) {
    for (; ms > 0; ms--) {
        resetCoreTimer();
        
        readCoreTimer();

        while (readCoreTimer() < 20000);
    }
}

int main(void) {
    TRISCbits.TRISC14 = 0;                  // Configure port RC14 as output
    LATCbits.LATC14 = 0;                    // Reset port RC14

    while(1){
        delay(500);                         // Wait 0.5s
        LATCbits.LATC14 = !LATCbits.LATC14; // Toggle RC14 port value
    }
    return 0;
}