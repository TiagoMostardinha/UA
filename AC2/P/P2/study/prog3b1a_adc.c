#include <detpic32.h>

int main(void)
{
    TRISB = TRISB | 0x000f;
    TRISE = TRISE & 0xff00;

    while (1)
    {
        LATE = PORTB & 0x000F;
    }

    return 0;
}
