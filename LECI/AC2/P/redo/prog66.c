#include <detpic32.h>
#include "../methods/delay.c"
#include "../methods/voltageConversion.c"
#include "../methods/send2displays.c"
#include "../methods/toBCD.c"

int main(void)
{
    TRISB = (TRISB & 0x80F0) | 0x000F;
    TRISD = (TRISD & 0xFF9F);

    TRISBbits.TRISB4 = 1;     // RBx digital output disconnected
    AD1PCFGbits.PCFG4 = 0;    // RBx configured as analog input
    AD1CON1bits.SSRC = 7;     // Conversion trigger selection bits: in this
                              //  mode an internal counter ends sampling and
                              //  starts conversion
    AD1CON1bits.CLRASAM = 1;  // Stop conversions when the 1st A/D converter
                              //  interrupt is generated. At the same time,
                              //  hardware clears the ASAM bit
    AD1CON3bits.SAMC = 16;    // Sample time is 16 TAD (TAD = 100 ns)
    AD1CON2bits.SMPI = 4 - 1; // Interrupt is generated after XX samples
                              //  (replace XX by the desired number of
                              //  consecutive samples)
    AD1CHSbits.CH0SA = 4;     // replace x by the desired input
                              //  analog channel (0 to 15)
    AD1CON1bits.ON = 1;       // Enable A/D converter
                              //  This must the last command of the A/D
                              //  configuration sequence
    
    int i = 0,voltage = 0;


    while (1)
    {
        AD1CON1bits.ASAM = 1; // Start conversion

        if (i == 0) // 0, 200ms, 400ms, 600ms, ...
        {
            while(IFS1bits.AD1IF == 0);             // Wait while conversion not done (AD1IF == 0)

            printf("\r");
            
            int *p = (int *)(&ADC1BUF0);            // Convert analog input (4 samples)
            int j;

            for (j = 0; j < 16; j++)
            {
                printf("%4d ", p[j*4]);
            }

                                                    // Read samples and calculate the average
            int VAL_AD = (ADC1BUF0 + ADC1BUF1 + ADC1BUF2 + ADC1BUF3); 

            voltage = voltageConversion(VAL_AD);    // Calculate voltage amplitude
            printf(" V: %2d", voltage);             // Convert voltage amplitude to decimal
            IFS1bits.AD1IF = 0;
        }
        send2displays(toBCD(voltage));             // Send voltage value to displays
        delay(10);                                 // Wait 10 ms (using the core timer)
        i = (i + 1) % 20 ;
    }
    return 0;
}
