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
            //delay(100);                     // 1 / 10Hz = 0.1
            //delay(20);                      // 1 / 50Hz = 0.02
            delay(10);                     // 1 / 100Hz = 0.01
            segment = segment << 1;
        }
        LATD = LATD ^ 0x0060;   // toggle display selection
        
    }
    return 0;
}


