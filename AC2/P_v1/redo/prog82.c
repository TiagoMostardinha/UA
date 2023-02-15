#include <detpic32.h>

int main(void)
{

    // Timer 2 Configuration
    T3CONbits.TCKPS = 8; // K = 1:256 = 1:2^8 prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 39061;         // Fout = 20MHz / (K * (PR3 + 1)) = 2 Hz,  PR3 < 65535
    TMR3 = 0;            // Reset timer T3 count register
    T3CONbits.TON = 1;   // Enable timer T3 (must be the last command of the
                         // timer configuration sequence)

    // Interrupt of Timer 2 Configuration
    IPC3bits.T3IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T3 interrupts
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag

    EnableInterrupts();

    while (1);

    return 0;
}

void _int_(12) isr_T3(void){        // Replace VECTOR by the timer T3
// vector number
    putChar('.');
    IFS0bits.T3IF = 0;              // Reset T3 interrupt flag
}
