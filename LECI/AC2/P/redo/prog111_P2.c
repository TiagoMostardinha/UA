#include <detpic32.h>
void putc(char byte);
void putstrInt(char *s);


typedef struct{
    char mem[100]; // Storage area
    int nchar;     // Number of characters to be transmitted
    int posrd;     // Position of the next character to be transmitted
} t_buf;

volatile t_buf txbuf;

int main(void) {
    // Configure UART2: 115200, N, 8, 1
    U2BRG = 10;              // 1 - Configure BaudRate Generator : ( U2BRG = (20Mhz / (16*115200))-1 ~ 10 )
    U2MODEbits.PDSEL = 0b00; // 2 – Configure number of data bits, parity and number of stop bits
    U2MODEbits.STSEL = 0;    // only 1 stop bit
    U2MODEbits.BRGH = 0;     // divide by 16
                             // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U2STAbits.URXEN = 1;     // Enable Receiver
    U2STAbits.UTXEN = 1;     // Enable Trasnmiter

    // Configure UART2 interrupts, with RX interrupts enabled and TX interrupts disabled : 
    IEC1bits.U2RXIE = 1;    // enable U2RXIE, disable U2TXIE(register IEC1)
    IEC1bits.U2TXIE = 0;

    IPC8bits.U2IP = 6;      // set UART2 priority level(register IPC8)

    IFS1bits.U2RXIF = 0;    // clear Interrupt Flag bit U2RXIF(register IFS1)
    
    U2STAbits.URXISEL = 0;  // define RX interrupt mode(URXISEL bits)

    U2MODEbits.ON = 1;      // Enable UART2

    EnableInterrupts();     // Enable global Interrupts

    txbuf.nchar = 0;

    while (1){
        putstrInt("Test string which can be as long as you like as long as it is no longer than 100 characters\r"); 
    }
    return 0;
}

void putstrInt(char *s){
    while (txbuf.nchar > 0);        // Wait while the buffer is not empty
    // Copy all characters of the string "s" to the buffer
    while (*s != '\0') {
        txbuf.mem[txbuf.nchar] = *s;
        txbuf.nchar++;
        s++;
    }
    txbuf.posrd = 0;            // Initialize "posrd" variable with 0
    IEC1bits.U2TXIE = 1;        // Enable UART2 Tx interrupts
}

void _int_(32) isr_uart2(void) { 
    if (IFS1bits.U2TXIF == 1) {
        if (txbuf.nchar > 0) {                  // At least one character to be transmitted
            U2TXREG = txbuf.mem[txbuf.posrd];   // Read 1 character from the buffer and send it
            txbuf.posrd++;                      // Update buffer "posrd" and "nchar" variables
            txbuf.nchar--;
        }
        else
        {
            U2STAbits.UTXEN = 0;                // Disable UART2 Tx interrupts
        }
        IFS1bits.U2TXIF = 0;                    // Clear UART2 Tx interrupt flag
    }
}
