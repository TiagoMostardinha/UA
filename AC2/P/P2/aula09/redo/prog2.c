#include <detpic32.h>

void setPWM(unsigned int dutyCycle, unsigned int PRx)
{

    if (dutyCycle > 100 || dutyCycle < 0)
    {
    }
    else
    {
        OC1CONbits.OCM = 6;                    // PWM mode on OCx; fault pin disabled
        OC1CONbits.OCTSEL = 0;                 // Use timer T2 as the time base for PWM generation
        OC1RS = ((PRx + 1) * dutyCycle) / 100; // Ton constant
        OC1CONbits.ON = 1;                     // Enable OC1 module
    }
}

int main(void)
{
    // k = 20MHz /(100 * 65535)

    TRISDbits.TRISD0 = 1;
    TRISCbits.TRISC14 = 0;

    T3CONbits.TCKPS = 2;
    PR3 = 49999;       // Fout = 20MHz / (32 * (62499 + 1)) = 100 Hz
    TMR3 = 0;          // Reset timer T2 count register
    T3CONbits.TON = 1; // Enable timer T2 (must be the last command of the timer configuration sequence)

    setPWM(40, PR3);

    while (1){
        LATCbits.LATC14 = PORTDbits.RD0;
    }
        
    return 0;
}
