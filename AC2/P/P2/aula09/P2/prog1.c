#include <detpic32.h>

int setPWM(unsigned int dutyCycle, unsigned int PRx)
{
    if (dutyCycle > 100 || dutyCycle < 0)
        return -1;
    return ((PRx + 1) * dutyCycle) / 100;
}

int main(void)
{
    // fout = fPbclk / (K * (PR2 + 1))
    // PR2max = 65535
    // 100Hz = 20MHz / (K *(65535 +1 ))
    // K = 20MHz / (100 * 65536) ≃ 3.05 = 4

    T3CONbits.TCKPS = 2; // 1:4 prescaler (i.e Fout_presc = 625 KHz)
    PR3 = 62499;         // Fout = 20MHz / (4 * (PR3 + 1)) = 100 Hz
    TMR3 = 0;            // Reset timer T3 count register
    T3CONbits.TON = 1;   // Enable timer T3 (must be the last command of the timer configuration sequence)

    // OC1RS = ((PR3 + 1) * duty_cycle) / 100
    // OC1RS = ((62499 + 1) * 25) / 100 = 15625

    OC1CONbits.OCM = 6;    // PWM mode on OCx; fault pin disabled
    OC1CONbits.OCTSEL = 1; // Use timer T3 as the time base for PWM generation
    OC1RS = setPWM(85,PR3);         // Ton constant
    OC1CONbits.ON = 1;     // Enable OC1 module

    if(OC1RS == -1)
        return 1;


    TRISCbits.TRISC14 = 1; // RBx digital output disconnected
    LATCbits.LATC14 = 1;   // RBx set to 1

    while (1){
        LATCbits.LATC14 = PORTDbits.RD0;
    }

    return 0;
}

// aula09 - P2 - ex3:
// 10% -> ton = 1.3ms   | t = 12.5ms
// 60% -> ton = 7.5ms   | t = 12.5ms
// 85% ->ton =  10.6ms  | t = 12.5ms
