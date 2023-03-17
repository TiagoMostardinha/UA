#include <detpic32.h>

void delay(int ms)
{
    for (; ms > 0; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000);
    }
}

int main(void)
{
    unsigned char segment;
    int i;
    LATD = (LATD & 0xFF9F) | 0x0040 ;             // enable display low (RD5) and disable display high (RD6)

    TRISD = TRISD & 0xFF9F;         // configure RD5-RD6 as outputs
    TRISB = TRISB & 0x80FF;         // configure RB8-RB14 as outputs
    while (1)
    {
        segment = 1;
        for (i = 0; i < 7; i++)
        {
            LATB = (LATB & 0x00FF) | ((unsigned int)(segment) << 8);   // send "segment" value to display
            delay(500);                     // wait 0.5 second
            segment = segment << 1;
        }
        LATD = LATD ^ 0x0060;   // toggle display selection
        
    }
    return 0;
}


