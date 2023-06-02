#include <detpic32.h>

volatile unsigned char voltage = 0; // Global variable

void send2displays(unsigned char value);
void delay(int ms);
int voltageConersion(unsigned int val);
unsigned char toBCD(unsigned char value);

int main(void)
{
    TRISB = TRISB & 0x80ff;
    TRISD = TRISD & 0xff9f;

    // Configure all (digital I/O, analog input, A/D module, interrupts)
    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              // mode an internal counter ends sampling and
                              // starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              // interrupt is generated. At the same time,
                              // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 5 - 1; // Interrupt is generated after N samples
                              // (replace N by the desired number of
                              // consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              // analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              // This must the last command of the A/D
                              // configuration sequence

    IPC6bits.AD1IP = 2;
    IFS1bits.AD1IF = 0;
    IEC1bits.AD1IE = 1;

    EnableInterrupts(); // Global Interrupt Enable

    unsigned int cnt = 0;
    while (1)
    {
        if (cnt == 0) // 0, 200 ms, 400 ms, ... (5 samples/second)
        {
            AD1CON1bits.ASAM = 1; // Start A/D conversion
        }
        send2displays(toBCD(voltage)); // Send "voltage" value to display
        cnt = (cnt + 1) % 20;
        delay(10); // Wait 10 ms
    }
    return 0;
}

///////////////////////////////////////////////

void send2displays(unsigned char value)
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};
    static char displayFlag = 0; // static variable: doesn't loose its value between calls to function

    unsigned int dl = value & 0x0f;
    unsigned int dh = value >> 4;

    dl = display7Scodes[dl];
    dh = display7Scodes[dh];

    if (displayFlag == 0)
    {
        LATD = (LATD & 0xff9f) | 0x0020;
        LATB = (LATB & 0x80ff) | ((unsigned int)(dl)) << 8;
    }
    else
    {
        LATD = (LATD & 0xff9f) | 0x0040;
        LATB = (LATB & 0x80ff) | ((unsigned int)(dh)) << 8;
    }

    displayFlag = !displayFlag; // toggle "displayFlag" variable
}

void delay(int ms)
{
    for (; 0 < ms; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

int voltageConersion(unsigned int val)
{
    return (val * 33 + 511) / 1023;
}

unsigned char toBCD(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void _int_(27) isr_adc(void)
{
    int i, sum_val = 0;
    int *p = (int *)(&ADC1BUF0);
    for (i = 0; i < 8; i++) // Read 8 samples (ADC1BUF0, ..., ADC1BUF7)
    {
        sum_val += p[i * 4];
    }
    voltage = voltageConersion(sum_val / 8); // Calculate the average voltage amplitude
    // Convert voltage amplitude to decimal and store the result in the global variable "voltage"

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}
