#include <detpic32.h>

int main(void)
{
    T3CONbits.TCKPS = 6;
    T1CONbits.TCKPS = 7;
    PR1 = 15624;
    PR3 = 12499;
    TMR1 = 0;
    TMR3 = 0;
    T1CONbits.TON = 1;          
    T3CONbits.TON = 1; 
    

    // Reset T1IF and T3IF flags
    IPC3bits.T3IP = 2;              // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1;              // Enable timer T3 interrupts
    IFS0bits.T3IF = 0;              // Reset timer T3 interrupt flag 
    
    IPC1bits.T1IP = 2;              // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1;              // Enable timer T1 interrupts
    IFS0bits.T1IF = 0;              // Reset timer T1 interrupt flag 

    TRISE = TRISE & 0xFFF5;         // RE1 and RE3 as an output

    EnableInterrupts();             // Global Interrupt Enable
    while (1);

    return 0;
}

void _int_(12) isr_T3(void)         // Replace VECTOR by the timer T3
// vector number
{
    putChar('3');
    
    LATE = LATE ^ 0x0008;

    TMR3 = 0;
    IFS0bits.T3IF = 0;              // Reset T3 interrupt flag
}

void _int_(4) isr_T1(void)         // Replace VECTOR by the timer T1
// vector number
{
    putChar('1');

    LATE = LATE ^ 0x0002;

    TMR1 = 0;
    IFS0bits.T1IF = 0;              // Reset T1 interrupt flag
}
