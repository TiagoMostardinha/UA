#include <detpic32.h>

int main(void){
    static const char display7Scodes[] = {
        0x3F, // 0
        0x06, // 1
        0x5B, // 2
        0x4F, // 3
        0x66, // 4
        0x6D, // 5
        0x7D, // 6
        0x07, // 7
        0x7F, // 8
        0x6F, // 9
        0x77, // A
        0x7C, // b
        0x39, // C
        0x5E, // d
        0x79, // E
        0x71  // F
    };
    //static int displayFlag = 0;
    TRISB = TRISB | 0x000F;         // configure RB0 to RB3 as inputs
    TRISB = TRISB & 0x80FF;         // configure RB8 to RB14 and RD5 to RD6 as outputs
    TRISD = TRISD & 0xFF9F;         // Select display low
    LATDbits.LATD5 = 1;             // enable display low (RD5) and disable display high (RD6)

    int index;
    int value;
    while (1)
    {
        index = PORTB & 0x000F;         // read dip-switch
        value = display7Scodes[index];  // convert to 7 segments code
        LATB = (LATB & 0x80FF) | ((unsigned int)(value) << 8);// send to display
    }
    return 0;
}
