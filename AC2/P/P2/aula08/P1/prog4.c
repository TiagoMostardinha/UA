#include <detpic32.h>

int main(void)
{
    T1CONbits.TCKPS = 5; // K = 1:32 prescaler
    PR1 = 62499;         // Fout = 20MHz / (K * (PR3 + 1)) = 5 Hz
    TMR1 = 0;            // Clear timer T3 count register
    T1CONbits.TON = 1;   // Enable timer T3 (must be the last command of the timer configuration sequence)

    IPC1bits.T1IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1;  // Enable timer T2 interrupts
    IFS0bits.T1IF = 0;  // Reset timer T2 interrupt flag

    T3CONbits.TCKPS = 7; // K = 1: prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 39061;         // Fout = 20MHz / (K * (PR3 + 1)) = 25 Hz
    TMR3 = 0;            // Clear timer T3 count register
    T3CONbits.TON = 1;   // Enable timer T3 (must be the last command of the timer configuration sequence)

    IPC3bits.T3IP = 2;  // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1;  // Enable timer T2 interrupts
    IFS0bits.T3IF = 0;  // Reset timer T2 interrupt flag
}