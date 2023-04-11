#include <detpic32.h>

void delay(int ms)
{
    for (; 0 < ms; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

unsigned char toBCD(unsigned char value)
{
    return ((value / 10) << 4) + value % 10;
}

void send2displays(unsigned char value)
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;

    unsigned int dl = value & 0x0f;
    unsigned int dh = value >> 4;

    dl = display7Scodes[dl];
    dh = display7Scodes[dh];

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
    TRISB = TRISB & 0x80ff;
    TRISD = TRISD & 0xff9f;

    int counter = 0, i = 0,freq = 10;

    while (1)
    {
        i = 0;

        char ch = getChar();

        if (++counter == 100)
            counter = 0;

        printf("%d\r", counter);

        if (ch != '\n') freq = 2 * (1 + ch);
        else printf("\n%d\n",freq);

        do
        {
            delay(10);
            send2displays(toBCD(counter));
        } while (++i < 50);
    }
    return 0;
}
