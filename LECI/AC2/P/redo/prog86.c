#include <detpic32.h>   


int main(void)
{
    TRISEbits.TRISE1 = 0;
    TRISEbits.TRISE3 = 0;

    TRISDbits.TRISD0 = 1;
    TRISDbits.TRISD2 = 1;


    // Timer 3 Configuration
    T3CONbits.TCKPS = 6; // K = 1:256 = 1:2^8 prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 12499;         // Fout = 20MHz / (K * (PR3 + 1)) = 2 Hz,  PR3 < 65535
    TMR3 = 0;            // Reset timer T3 count register
    T3CONbits.TON = 1;   // Enable timer T3 (must be the last command of the
                         // timer configuration sequence)

    // Timer 1 Configuration
    T3CONbits.TCKPS = 6; // K = 1:256 = 1:2^8 prescaler (i.e. fout_presc = 625 KHz)
    PR1 = 62499;         // Fout = 20MHz / (K * (PR3 + 1)) = 2 Hz,  PR3 < 65535
    TMR1 = 0;            // Reset timer T1 count register
    T1CONbits.TON = 1;   // Enable timer T1 (must be the last command of the
                         // timer configuration sequence)

    // Interrupt of Timer 3 Configuration
    IPC3bits.T3IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T3 interrupts
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag

    // Interrupt of Timer 1 Configuration
    IPC1bits.T1IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1; // Enable timer T1 interrupts
    IFS0bits.T1IF = 0; // Reset timer T1 interrupt flag

    EnableInterrupts();

    while(1);
    
    return 0;
}

void _int_(4) isr_T1(void){         // Replace VECTOR by the timer T1
// vector number
    LATDbits.LATD0 = !LATDbits.LATD0;   // OC1 test port for wave test;

    LATEbits.LATE1 = !LATEbits.LATE1;   // RE1
    putChar('1');
    IFS0bits.T1IF = 0;                  // Reset T1 interrupt flag
}

void _int_(12) isr_T3(void){        // Replace VECTOR by the timer T3
// vector number
    LATDbits.LATD2 = !LATDbits.LATD2;   // OC3 test port for wave test

    LATEbits.LATE3 = !LATEbits.LATE3;   // RE3
    putChar('3');
    IFS0bits.T3IF = 0;                  // Reset T3 interrupt flag
}
