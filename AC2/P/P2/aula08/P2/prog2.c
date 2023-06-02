#include <detpic32.h>

volatile int count = 0;

void _int_(8) isr_T2(void)
{
    if (++count >= 6)
    {

        putChar('1');
        count = 0;
    }
    IFS0bits.T2IF = 0;
}
void _int_(7) isr_INT1(void)
{
}

int main(void)
{
    T2CONbits.TCKPS = 7;
    PR2 = 39061; // Fout = 20MHz / (32 * (x + 1)) = 2 Hz
    TMR2 = 0;
    T2CONbits.TON = 1;

    IPC2bits.T2IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T2IE = 1; // Enable timer T2 interrupts
    IFS0bits.T2IF = 0; // Reset timer T2 interrupt flag

    EnableInterrupts();
    while (1)
        ;
    return 0;
}