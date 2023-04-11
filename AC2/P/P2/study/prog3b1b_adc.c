#include <detpic32.h>

int main(void)
{
    TRISB = TRISB | 0x000f;
    TRISE = TRISE & 0xffF0;

    while (1)
    {
        PORTB = PORTB & 0x000F;
        LATE = ((PORTB & 0x1) << 7 | (PORTB & 0x2) << 5 | (PORTB & 0x4) << 3 | (PORTB & 0x8) << 1) >> 4 ;
    }

    return 0;
}
