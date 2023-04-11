#include <detpic32.h>

void delay(int ms)
{
    for (; 0 < ms; ms--)
    {
        resetCoreTimer();
        while (readCoreTimer() < 20000)
            ;
    }
}

int voltageConversion(int VAL_AD)
{
    return (VAL_AD * 33 + 511) / 1023;
}

int main(void)
{
    // Configure the A/D module and port RB4 as analog input
    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              // mode an internal counter ends sampling and
                              // starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              // interrupt is generated. At the same time,
                              // hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 4 - 1; // Interrupt is generated after N samples
                              // (replace N by the desired number of
                              // consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              // analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              // This must the last command of the A/D
                              // configuration sequence

    while (1)
    {
        AD1CON1bits.ASAM = 1;

        int freq = 10;
        while (IFS1bits.AD1IF == 0)
            ;

        int i = 0, sum_val = 0;
        int *p = (int *)(&ADC1BUF0);
        for (i = 0; i < 4; i++)
        {
            sum_val += p[i * 4];
        }

        printStr("DS=");

        putChar('0' | (PORTB & 0x0008) >> 3);
        putChar('0' | (PORTB & 0x0004) >> 2);
        putChar('0' | (PORTB & 0x0002) >> 1);
        putChar('0' | (PORTB & 0x0001));

       // putChar('\r');

        freq = ((voltageConversion(sum_val / 4) * 4) / 33)+1;

        printf("%d",freq);
        delay((1/freq)*100);

        IFS1bits.AD1IF = 0;
    }
    return 0;
}
