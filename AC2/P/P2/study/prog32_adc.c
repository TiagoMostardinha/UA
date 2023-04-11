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

int main(void)
{
    TRISE = TRISE & 0xFFF0;

    while (1)
    {
        char ch = getChar();
        LATE = LATE & 0xfff0;
        switch (ch)
        {
        case '0':
            LATEbits.LATE0 = 1;
            break;
        case '1':
            LATEbits.LATE1 = 1;
            break;
        case '2':
            LATEbits.LATE2 = 1;
            break;
        case '3':
            LATEbits.LATE3 = 1;
            break;

        default:
            LATE = LATE | 0x000F;
            delay(1000);
            LATE = LATE & 0xfff0;
            break;
        }
    }
    return 0;
}
