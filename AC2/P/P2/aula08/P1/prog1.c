#include <detpic32.h>

int main(void)
{
    // fout = fPbclk / (K * (PR2 + 1))
    // PR2max = 65535
    // 2 = 20MHz / (K *(65535 +1 ))
    // K = 20MHz / (2 * 65536) = 152.59 => 256

    // 1 2 4 8 16 32 64 256

    // Timer 2 Configuration
    T3CONbits.TCKPS = 7;    // K = 1:256 = 1:2^7 prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 39061;            // Fout = 20MHz / (K * (62499 + 1)) = 2 Hz
    TMR3 = 0;               // Reset timer T3 count register
    T3CONbits.TON = 1;      // Enable timer T3 (must be the last command of the
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
