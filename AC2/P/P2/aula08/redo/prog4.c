#include <detpic32.h>

void _int_(4) isr_T1(void)
{
    putChar('1');
    IFS0bits.T1IF = 0; // Reset timer T2 interrupt flag
}

void _int_(12) isr_T3(void)
{
    putChar('3');
    IFS0bits.T3IF = 0; // Reset timer T2 interrupt flag
}

int main(void)
{
    // k = 20Mhz/(5 * 65535) = 61
    // k = 20Mhz/(25 * 65535) = 12

    T3CONbits.TCKPS = 4; // 1:32 prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 49999;         // Fout = 20MHz / (32 * (x + 1)) = 25 Hz
    TMR3 = 0;            // Clear timer T2 count register
    T3CONbits.TON = 1;   // Enable timer T2 (must be the last command of the
    // timer configuration sequence

    T1CONbits.TCKPS = 2;
    PR1 = 62499; // Fout = 20MHz / (64 * (x + 1)) = 5 Hz
    TMR1 = 0;
    T1CONbits.TON = 1;
    // timer configuration sequence

    IPC3bits.T3IP = 3; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T2 interrupts
    IFS0bits.T3IF = 0; // Reset timer T2 interrupt flag

    IPC1bits.T1IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1; // Enable timer T2 interrupts
    IFS0bits.T1IF = 0; // Reset timer T2 interrupt flag

    EnableInterrupts();

    while (1)
        ;
    return 0;
}
