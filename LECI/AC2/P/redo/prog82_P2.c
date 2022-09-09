#include <detpic32.h>

volatile int count = 0;

int main(void)
{
    TRISDbits.TRISD8 = 1;
    TRISEbits.TRISE = 0;

    // Timer 2 Configuration
    T2CONbits.TCKPS = 8;    // K = 1:32 = 1:2^5 prescaler (i.e. fout_presc = 625 KHz)
    PR2 = 39061;            // Fout = 20MHz / (K * (62499 + 1)) = 2 Hz
    TMR2 = 0;               // Reset timer T3 count register
    T2CONbits.TON = 1;      // Enable timer T3 (must be the last command of the
                            // timer configuration sequence)

    // Interrupt of Timer 2 Configuration
    IPC2bits.T2IP = 2;      // Interrupt priority (must be in range [1..6])
    IEC0bits.T2IE = 1;      // Enable timer T2 interrupts
    IFS0bits.T2IF = 0;      // Reset timer T2 interrupt flag

    INTCONbits.INT1EP = 0;

    EnableInterrupts();

    // Configure Timer T2
    while (1);

    return 0;

}

void _int_(8) isr_T2(void){        // Replace VECTOR by the timer T3
// vector number
    LATEbits.LATE0 = 1;
    while(count > 0) count -= 500; // 6 interrupts => 6 int * 1/(2Hz) = 3s
    IFS0bits.T2IF = 0;             // Reset T2 interrupt flag
}

void _int_(7) isr_INT1(void) {
    count = 3000;
}
