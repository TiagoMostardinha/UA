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

void send2display(unsigned char value)
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    unsigned int dl = value & 0x0f;
    unsigned int dh = value >> 4;

    unsigned int displayFlag = 0;

    dh = display7Scodes[dh];
    dl = display7Scodes[dl];

    if (displayFlag == 0)
    {
        LATD = (LATD & 0xff9f) | 0x0020;
        LATB = (LATB & 0x80ff) | ((unsigned int)dl) << 8;
    }
    else
    {
        LATD = (LATD & 0xff9f) | 0x0040;
        LATB = (LATB & 0x80ff) | ((unsigned int)dh) << 8;
    }

    displayFlag = !displayFlag;
}

int main(void)
{
    TRISB = TRISB & 0x80ff; // declare variables
    TRISD = TRISD & 0xff9f;
    // initialize ports
    int counter = 0,i=0;
    while (1)
    {
        i = 0;
        do
        {
            send2display(counter);
            delay(10); // wait 20 ms (1/50Hz)
        } while (++i < 100);
        counter++; // increment counter (mod 256)
    }
    return 0;
}
