#include <detpic32.h>
#include "../methods/delay.c"
#include "../methods/voltageConversion.c"
#include "../methods/send2displays.c"
#include "../methods/toBCD.c"


volatile int voltage = 0; // Global variable
volatile int voltMin = 0;
volatile int voltMax = 0;
void putc(char byte);
void putstr(char *str);

void configureAll();

int main(void)
{
    configureAll(); // Function to configure all (digital I/O, analog
    // input, A/D module, timers T1 and T3, interrupts)
    IFS1bits.AD1IF = 0;     // Reset AD1IF, T1IF and T3IF flags
    IFS0bits.T1IF = 0;
    IFS0bits.T3IF = 0;


    EnableInterrupts(); // Global Interrupt Enable

    while (1);

    return 0;
}


void _int_(4) isr_T1(void) {
    AD1CON1bits.ASAM = 1;   // Start A/D conversion
    IFS0bits.T1IF = 0;      // Reset T1IF flag
}

void _int_(12) isr_T3(void) {
    send2displays(toBCD(voltage));  // Send "voltage" value to displays (global variable)
    IFS0bits.T3IF = 0;              // Reset T3IF flag
}

void _int_(27) isr_adc(void) {
    int avg = 0,i = 0;                    // Calculate buffer average (8 samples)
    int *p = (int *) (&ADC1BUF0);

    for (; i < 8; i++) {
        avg += p[i*4];
    }
    
    voltage = ((avg/8) * 33 + 511) / 1023;  // Calculate voltage amplitude
    // Convert voltage amplitude to decimal. Copy it to "voltage"
    
    if(voltage < voltMin) voltMin = voltage;    // Update variables "voltMin" and "voltMax" 
    if(voltage > voltMax) voltMax = voltage;

    IFS1bits.AD1IF = 0; // Reset AD1IF flag
}

//------------------------------------------------------------
void configureAll(){

    // Timer 1 Configuration
    T1CONbits.TCKPS = 8; // K = 1:256 = 1:2^8 prescaler (i.e. fout_presc = 625 KHz)
    PR1 = 15624;         // Fout = 20MHz / (K * (PR1 + 1)) = 5 Hz,  PR1 < 65535
    TMR1 = 0;            // Reset timer T1 count register
    T1CONbits.TON = 1;   // Enable timer T1 (must be the last command of the
                         // timer configuration sequence)
    
    // Timer 3 Configuration
    T3CONbits.TCKPS = 2; // K = 1:4 = 1:2^2 prescaler (i.e. fout_presc = 625 KHz)
    PR3 = 49999;         // Fout = 20MHz / (K * (PR3 + 1)) = 100 Hz,  PR3 < 65535
    TMR3 = 0;            // Reset timer T3 count register
    T3CONbits.TON = 1;   // Enable timer T3 (must be the last command of the
                         // timer configuration sequence)


    // Interrupt of Timer 1 Configuration
    IPC1bits.T1IP = 2; // Interrupt priority (must be in range [1..6])
    IEC0bits.T1IE = 1; // Enable timer T1 interrupts
    IFS0bits.T1IF = 0; // Reset timer T1 interrupt flag

    // Interrupt of Timer 3 Configuration
    IPC3bits.T3IP = 3; // Interrupt priority (must be in range [1..6])
    IEC0bits.T3IE = 1; // Enable timer T3 interrupts
    IFS0bits.T3IF = 0; // Reset timer T3 interrupt flag


    // 7 Seg Display Configuration
    TRISB = (TRISB & 0x80FF);
	TRISD = (TRISD & 0xFF9F);


    //ADC Configuration
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
    
    // Interrupt ADC Configuration
    IPC6bits.AD1IP = 2;  // configure priority of A/D interrupts
    IEC1bits.AD1IE = 1;  // enable A/D interrupts

}

void _int_(32) isr_uart2(void) {
    char c = U2RXREG;   // Read character from FIFO
        if (c == 'M')   U2TXREG = putstr(voltMax | (16 | 3 << 16));      // Send "voltMax" to the serial port UART2
        else if (c == 'm') U2TXREG = putstr(voltMin | (16 | 3 << 16));   // Send "voltMin" to the serial port UART2
    IFS1bits.U2RXIF = 0;                        // Clear UART2 rx interrupt flag
}

void putc(char byte){
    while(U2STAbits.UTXBF == 1);
    U2TXREG = byte;
}

void putstr(char *str){
    while(*str != '\0'){
        putc(*str);
        str++;
    }
}
