#include <detpic32.h>

volatile unsigned char voltage = 0;

void _int_(27) isr_adc(void)
{
    int avg = 0;
    int i, *p = (int *)(&ADC1BUF0); // Read 8 samples (ADC1BUF0, ..., ADC1BUF7) and calculate average
    for (i = 0; i < 8; i++)
    {
        avg += p[i * 4];
    }
    avg = avg /8;

    voltage = (avg * 33 + 511) / 1023; // Convert voltage amplitude to decimal and store the result in the global variable "voltage"
    IFS1bits.AD1IF = 0;
}

unsigned char toBCD(unsigned char value){
    return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value)
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0;

    unsigned int dl = value & 0x0F;
    unsigned int dh = value >> 4;

    dl = display7Scodes[dl];
    dh = display7Scodes[dh];

    if (displayFlag == 0)
    {
        LATD = (LATD & 0xff9f) | 0x0020;
        LATB = (LATB & 0x80ff) | ((unsigned int)dl) << 8;
    }
    else
    {
        LATD = (LATD & 0xff9f) | 0x0040;
        LATB = (LATB & 0x80ff) | ((unsigned int)dh) << 8;
    }
    displayFlag = !displayFlag;
}

void delay(int ms)
{
    for (; ms > 0; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

int main(void)
{
    TRISB = TRISB & 0x80FF; // RB14-RB20 as outputs
    TRISD = TRISD & 0xFF9F; // RD5-RD6 as outputs

    // Configure all (digital I/O, analog input, A/D module)
    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              // mode an internal counter ends sampling and
                              // starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              // interrupt is generated. At the same time,
                              // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 8;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 5 - 1; // Interrupt is generated after N samples
                              // (replace N by the desired number of
                              // consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              // analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              // This must the last command of the A/D
                              // configuration sequence

    // Configure interrupt system
    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;

    EnableInterrupts(); // Global Interrupt Enable

    unsigned int cnt = 0;

    while (1)
    {
        if (cnt == 0)
        {
            AD1CON1bits.ASAM = 1; // Start A/D conversion
        }
        send2displays(toBCD(voltage));
        cnt = (cnt + 1) % 20;
        delay(10);
    }
    return 0;
}
