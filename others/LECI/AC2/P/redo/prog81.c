#include <detpic32.h>

int main(void)
{

    // Timer 2 Configuration
    T3CONbits.TCKPS = 5;    // K = 1:32 = 1:2^5 prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 62499;            // Fout = 20MHz / (K * (62499 + 1)) = 2 Hz
    TMR3 = 0;               // Reset timer T3 count register
    T2CONbits.TON = 1;      // Enable timer T3 (must be the last command of the
                            // timer configuration sequence)

    // Interrupt of Timer 2 Configuration
    IPC3bits.T3IP = 2;      // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 0;      // Enable timer T3 interrupts
    IFS0bits.T3IF = 0;      // Reset timer T3 interrupt flag

    // Configure Timer T3 (2 Hz with interrupts disabled)
    while (1) {
        while(IFS0bits.T3IF == 0);  // Wait while T3IF = 0
        IFS0bits.T3IF = 0;          // Reset T3IF
        putChar('.');
    }

    return 0;

}