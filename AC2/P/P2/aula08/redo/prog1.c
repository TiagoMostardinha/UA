#include <detpic32.h>

int main(void)
{
    // Configure Timer T3 (2 Hz with interrupts disabled)

    // K = 20MHz / (2 * 65536) ≃ 152,...

    T3CONbits.TCKPS = 7; 
    PR3 = 39061;         // Fout = 20MHz / (k * (x + 1)) = 2 Hz
    TMR3 = 0;            
    T3CONbits.TON = 1;   // Enable timer T3

    IPC3bits.T3IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T2 interrupts
    IFS0bits.T3IF = 0; // Reset timer T2 interrupt flag

    while (1)
    {
        while( IFS0bits.T3IF == 0); // Wait while T3IF = 0
        IFS0bits.T3IF = 0;          // Reset T3I
        putChar('.');
    }
    return 0;
}
