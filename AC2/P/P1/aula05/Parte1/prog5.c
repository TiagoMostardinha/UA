#include <detpic32.h>

void send2displays(unsigned char value);
void delay(int ms);

int main(void) {
    int counter,i;                          // declare variables

    TRISB = TRISB & 0x80FF;                 // initialize ports
    TRISD = TRISD & 0xFF9F;

    counter = 0;

    while (1) {
        i = 0;
        do {
            send2displays(counter);
            delay(400);                     // wait 20 ms
        } while(++i < 100);

        if(counter >= 256) counter = 0;
        
        counter++;                          // increment counter (mod 256)
    }
    return 0;
}


void send2displays(unsigned char value) {
        static const char display7Scodes[] = {
                                        0x3F, //0
                                        0x06, //1
                                        0x5B, //2
                                        0x4F, //3
                                        0x66, //4
                                        0x6D, //5
                                        0x7D, //6
                                        0x07, //7
                                        0x7F, //8
                                        0x6F, //9
                                        0x77, //A
                                        0x7C, //b
                                        0x39, //C
                                        0x5E, //d
                                        0x79, //E
                                        0x71  //F
                                        };
    unsigned char dh = value >> 4;                          // Get the index of the decimal part                                        
    unsigned char dl = value & 0x0F;                        // Get the index of the unitary part

    // Get the correct hex code for the number
    dh = display7Scodes[dh];
    dl = display7Scodes[dl];
    
    LATD = (LATD | 0x0040) & 0xFFDF;                        // Dipslay High active and Display Low OFF
    LATB = (LATB & 0x80FF) | ((unsigned int)(dh)) << 8;     // Clean the display and set the right value
    delay(2);                                               // Debug (see the first display light up slightly)

    LATD = (LATD | 0x0020) & 0xFFBF;                        // Display High OFF and Display High active
    LATB = (LATB & 0x80FF) | ((unsigned int)(dl)) << 8;     // Clean the display and set the right value

}

void delay(int ms) {
    for (; ms > 0; ms--) {
        resetCoreTimer();
        
        readCoreTimer();

        while (readCoreTimer() < 20000);
        ms--;
    }
}
