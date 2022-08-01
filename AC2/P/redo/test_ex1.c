#include <detpic32.h>
void setPWM(unsigned int dutyCycle);


int main(void) {
    T2CONbits.TCKPS = 2;    // 1:32 prescaler (i.e. fout_presc = 625 KHz)
    PR2 = 17856;            // Fout = 20MHz / (4 * (PR2 + 1)) = 280 Hz
    TMR2 = 0;               // Reset timer T2 count register
    T2CONbits.TON = 1;      // Enable timer T2 (must be the last command of the
                            // timer configuration 
    OC2CONbits.OCM = 6;     // PWM mode on OCx; fault pin disabled 
    OC2CONbits.OCTSEL =0;   // Use timer T2 as the time base for PWM generation 
    setPWM(1);              // Ton constant 
    OC2CONbits.ON = 1;      // Enable OC2 module 

    TRISB = TRISB | 0x0009;
    char portVal;

    /*testing
    TRISCbits.TRISC14 = 0;
    LATCbits.LATC14 = 0;
    */

    while (1){
        resetCoreTimer();
        readCoreTimer();
        while(readCoreTimer() < 5);      // 250us

        portVal = PORTB & 0x0009;

        if(portVal == 0x1){
            setPWM(25);
            putChar('1');
        }
        else if(portVal == 0x8){
            setPWM(70);
            putChar('8');
        }

        /* testing
        LATCbits.LATC14 = PORTDbits.RD1;
        */
    }
    return 0;
}

void setPWM(unsigned int dutyCycle){
    if(dutyCycle > 0 && dutyCycle < 100){
        OC2RS = ((PR2+1)*dutyCycle)/100;
    }
}
