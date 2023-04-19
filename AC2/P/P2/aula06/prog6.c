#include <detpic32.h>

int voltageConversion(int VAL_AD)
{
    return (VAL_AD * 33 + 511) / 1023;
}

unsigned char toBCD(unsigned char value)
{
    return ((value / 10) << 4) + (value % 10);
}

void send2displays(unsigned char value)
{
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0x4F, 0x66, 0x6D, 0x7D, 0x07, 0x7F, 0x6F, 0x77, 0x7C, 0x39, 0x5E, 0x79, 0x71};

    static char displayFlag = 0; // static variable: doesn't loose its value between calls to function

    unsigned int dl = value & 0x0F;
    unsigned int dh = value >> 4;

    dl = display7Scodes[dl];
    dh = display7Scodes[dh];

    if (displayFlag == 0)
    { // if "displayFlag" is 0 then send digit_low to display_low
        LATD = (LATD & 0xff9f) | 0x0020;
        LATB = (LATB & 0x80ff) | ((unsigned int)(dl)) << 8;
    }
    else
    { // else send digit_high to didplay_high
        LATD = (LATD & 0xff9f) | 0x0040;
        LATB = (LATB & 0x80ff) | ((unsigned int)(dh)) << 8;
    }
    displayFlag = !displayFlag; // toggle "displayFlag" variable
}

void delay(int ms)
{
    for (; ms > 0; ms--)
    {
        resetCoreTimer();
        readCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
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
    AD1CON2bits.SMPI = 5 - 1; // Interrupt is generated after N samples
                              // (replace N by the desired number of
                              // consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              // analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              // This must the last command of the A/D
                              // configuration sequence

    TRISD = TRISD & 0xFF9F; // configure RD5-RD6 as outputs
    TRISB = TRISB & 0x80FF; // configure RB8-RB14 as outputs

    int i = 0, j = 0, voltage = 0;
    while (1)
    {
        if (i == 0) // 0, 200ms, 400ms, 600ms, ...
        {
            int sum = 0;
            int *p = (int *)(&ADC1BUF0); // Convert analog input (4 samples)
            for (j = 0; j < 4; j++)
            {
                sum += p[j * 4];
            }

            voltage = voltageConversion(sum / 4); // Calculate voltage amplitude
            IFS1bits.AD1IF = 0;                   // Reset AD1IF flag
        }
        send2displays(toBCD(voltage)); // Send voltage value to displays
        delay(10);                     // Wait 10 ms (using the core timer)
        i = (i + 1) % 25;
    }
    return 0;
}