#include <detpic32.h>

// Interrupt Handler
void _int_(27) isr_adc(void) // Replace VECTOR by the A/D vector
// number - see "PIC32 family data
// sheet" (pages 74-76)
{
    int val = ADC1BUF0; // Read conversion result (ADC1BUF0) and print it
    printf("%4d\n", val);

    AD1CON1bits.ASAM = 1; // Start conversion
    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

int main(void)
{
    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              // mode an internal counter ends sampling and
                              // starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              // interrupt is generated. At the same time,
                              // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 1 - 1; // Interrupt is generated after N samples
                              // (replace N by the desired number of
                              // consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              // analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              // This must the last command of the A/D
                              // configuration sequence

    IPC6bits.AD1IP = 2; // Configure interrupt system
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;
    EnableInterrupts(); // Global Interrupt Enable

    AD1CON1bits.ASAM = 1; // Start A/D conversion
    while (1)
        ; // all activity is done by the ISR
    return 0;
}