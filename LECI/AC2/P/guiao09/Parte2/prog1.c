#include <detpic32.h>

void setPWM(unsigned int dutyCycle);
int main(void)
{
    T3CONbits.TCKPS = 7;
    PR3 = 780;
    TMR3 = 0;
    T3CONbits.TON = 1; 

    OC1CONbits.OCM = 6;             // PWM mode on OCx; fault pin disabled
    OC1CONbits.OCTSEL = 1;           // Use timer T3 as the time base for PWM generation
    OC1RS = 195;                    // Ton constant
    OC1CONbits.ON = 1;              // Enable OC1 module    

    TRISD = TRISD | 0x0001;
    TRISC = TRISC & 0xBFFF;

    while(1) {
        LATC = (LATD & 0xBFFF) | (LATD & 0x0001 << 14 ); // Read the value of port RD0 and write it on port RC14
    } 

    return 0;
}

void setPWM(unsigned int dutyCycle) {
    // duty_cycle must be in the range [0, 100]
    OC1RS = (PR3 * dutyCycle)/100;
} 

