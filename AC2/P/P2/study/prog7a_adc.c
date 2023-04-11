#include <detpic32.h>

void delat(int ms)
{
    for (; 0 < ms; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

int main(void)
{
    TRISB = TRISB | 0x000F;

    while (1)
    {
        delat(1000);
        printStr("DS=");

        putChar('0' | (PORTB & 0x0008) >> 3);
        putChar('0' | (PORTB & 0x0004) >> 2);
        putChar('0' | (PORTB & 0x0002) >> 1);
        putChar('0' | (PORTB & 0x0001));

        putChar('\r');
    }
}
