#include <detpic32.h>
#include "../../methods/delay.c"
#include "../../methods/voltageConversion.c"
#include "../../methods/send2displays.c"
#include "../../methods/toBCD.c"

volatile unsigned char voltage = 0;

int main(void)
{
    TRISB = (TRISB & 0x80F0) | 0x040F;
    TRISD = (TRISD & 0xFF9F);

    unsigned int cnt = 0;

    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              //  mode an internal counter ends sampling and
                              //  starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              //  interrupt is generated. At the same time,
                              //  hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 8 - 1; // Interrupt is generated after XX samples
                              //  (replace XX by the desired number of
                              //  consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              //  analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              //  This must the last command of the A/D
                              //  configuration sequence

    // Interrupts configuration
    IPC6bits.AD1IP = 2;         // configure priority of A/D interrupts
    IFS1bits.AD1IF = 0;         // clear A/D interrupt flag
    IEC1bits.AD1IE = 1;         // enable A/D interrupts

    EnableInterrupts();         // Macro defined in "detpic32.h"

    AD1CON1bits.ASAM = 1;       // Start conversion

    while (1)
    {
        if (cnt == 0){                  // 0, 200 ms, 400 ms, ... (5 samples/second)
            AD1CON1bits.ASAM = 1;       // Start A/D conversion
        }
        send2displays(toBCD(voltage));  // Send "voltage" value to displays
        cnt = (cnt + 1) % 20 ;
        delay(10);                      // Wait 10 ms
    }

    return 0;
}

void _int_(27) isr_adc(void)
{
    LATD = (LATD & 0xF7FF) | 0x0400;

    int *p = (int *)(&ADC1BUF0);
    int j, sum = 0;
    for (j = 0; j < 8; j++) {
        sum += p[j*4];
    }
    int avg = sum / 8;
    voltage = ((avg)*33+511)/1023;

    // LATDBits.LATD11 = 0;
    AD1CON1bits.ASAM = 1;
    
    LATD = (LATD & 0xF7FF) | 0x0C00;
    
    IFS1bits.AD1IF = 0; // reset AD1IF flag
}
