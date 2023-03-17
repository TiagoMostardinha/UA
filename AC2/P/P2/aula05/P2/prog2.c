#include <detpic32.h>

void delay(int ms)
{
    for (; ms > 0; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

unsigned char toBCD(unsigned char value){
    return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value)
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0; // static variable: doesn't loose its value between calls to function

    unsigned int dl = value & 0x0F;
    unsigned int dh = value >> 4;

    dl = display7Scodes[dl];
    dh = display7Scodes[dh];

    if (displayFlag == 0)
    { // if "displayFlag" is 0 then send digit_low to display_low
        LATD = (LATD & 0xff9f) | 0x0020;
        LATB = (LATB & 0x80ff) | ((unsigned int)(dl)) << 8;
    }
    else
    { // else send digit_high to didplay_high
        LATD = (LATD & 0xff9f) | 0x0040;
        LATB = (LATB & 0x80ff) | ((unsigned int)(dh)) << 8;
    }
    displayFlag = !displayFlag; // toggle "displayFlag" variable
}

int main(void)
{
    TRISB = (TRISB & 0x80ff) | 0x1; // declare variables
    TRISD = TRISD & 0xff9f;
    TRISE = TRISE & 0xFF00;
    // initialize ports
    unsigned int counter = 0,i=0;
    while (1)
    {
        i = 0;
        do
        {
            send2displays(toBCD(counter));
            delay(10); // wait 10 ms (1/100Hz)
        } while (++i < 50);
        if ((PORTB & 0x0001) == 1){
            counter++; // increment counter (mod 256)
        } else {
            counter--;
        }
        if (counter == 60) counter = 0;
        if (counter == -1) counter = 59;
        LATE = (LATE & 0xFF00) | counter;
    }
    return 0;
}
