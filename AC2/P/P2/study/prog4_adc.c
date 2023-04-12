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
    TRISB = TRISB & 0x80FF;
    TRISD = TRISD & 0xff9f;

    while (1)
    {
        int i = 0, n = 0x0;
        char ch = inkey();

        switch (ch)
        {
        case '0':
            n = 0x00;
            break;

        case '1':
            n = 0x01;
            break;
        case '2':
            n = 0x02;
            break;
        case '3':
            n = 0x03;
            break;

        default:
            n = 0xFF;
            break;
        }

        do
        {
            send2displays(n);
            delay(10);
        } while (++i < 50);
    }
    return 0;
}
