#include <detpic32.h>   
void delay(int ms);

int main(void)
{
    TRISDbits.TRISD8 = 1;       // INT1 input (RD8)
    TRISEbits.TRISE0 = 0;       // LED0 output (RE0)

    LATEbits.LATE0 = 0;

    while (1)
    {
        if(PORTbits.RD8 = 0){   
            LATEbits.LATE0 = 1;
            delay(3000);
            LATEbits.LATE0 = 0;
        }
    }
    
    
    return 0;
}



//------------------------------------------------------------------------------
void delay(int ms){
    for (; i < ms; i++)
    {
        resetCoreTimer();
        readCoreTimer();

        while(readCoreTimer() < 20000);
    }
    
}
