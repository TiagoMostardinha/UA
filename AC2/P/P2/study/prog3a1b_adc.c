#include <detpic32.h>

int main(void)
{
    TRISB = TRISB | 0x000f;
    TRISE = TRISE & 0xfff0;

    while (1)
    {
        LATEbits.LATE0 = PORTBbits.RB3;
        LATEbits.LATE1 = PORTBbits.RB2;
        LATEbits.LATE2 = PORTBbits.RB1;
        LATEbits.LATE3 = PORTBbits.RB0;
    }

    return 0;
}