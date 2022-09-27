#include <detpic32.h>
void setPWM(unsigned int dutyCycle);


int main(void) {
    T2CONbits.TCKPS = 2; // 1:32 prescaler (i.e Fout_presc = 625 KHz)
    PR2 = 33332;         // Fout = 20MHz / (2^n * (PR2 + 1)) = 150 Hz
    TMR2 = 0;            // Reset timer T2 count register
    T2CONbits.TON = 1;   // Enable timer T2 (must be the last command of the
    // timer configuration sequence)
    OC2CONbits.OCM = 6;     // PWM mode on OCx; fault pin disabled
    OC2CONbits.OCTSEL = 0;  // Use timer T2 as the time base for PWM generation
    OC2RS = 8333;           // Ton constant
    OC2CONbits.ON = 1;      // Enable OC2 module

    TRISBbits.TRISB0 = 1;
    TRISBbits.TRISB3 = 1;

    //TRISCbits.TRISC14 = 0;

    while(1){
        resetCoreTimer();
        readCoreTimer();
        while(readCoreTimer() < 5000);

        if((PORTBbits.RB0 == 1 )& (PORTBbits.RB3 == 0)){
            setPWM(25);
        }
        if((PORTBbits.RB0 == 0) & (PORTBbits.RB3 == 1)){
            setPWM(70);
        }

        //LATCbits.LATC14 = PORTDbits.RD1;
    }
    return 0;
}

void setPWM(unsigned int dutyCycle){
    OC2RS = ((PR2 + 1) * dutyCycle) / 100;
}
