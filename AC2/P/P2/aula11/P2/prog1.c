#include "detpic32.h"

typedef struct
{
    char mem[100]; // Storage area
    int nchar;     // Number of characters to be transmitted
    int posrd;     // Position of the next character to be transmitted
} t_buf;

volatile t_buf txbuf;

void putstrInt(char *s)
{
    while (txbuf.nchar > 0)
        ; // Wait while the buffer is not empty

    while (*s != '\0') // Copy all characters of the string "s" to the buffer
    {
        txbuf.mem[txbuf.nchar] = *s;
        txbuf.nchar++;
        s++;
    }
    txbuf.posrd = 0;     // Initialize "posrd" variable with 0
    IEC1bits.U2TXIE = 1; // Enable UART2 Tx interrupts
}

void _int_(32) isr_uart2(void)
{
    if (IFS1bits.U2TXIF == 1) // if U2TXIF is set
    {
        if (txbuf.nchar > 0) // At least one character to be transmitted
        {
            U2TXREG = txbuf.mem[txbuf.posrd]; // Read 1 character from the buffer and send it

            txbuf.posrd++;          // Update buffer "posrd" and "nchar" variables
            txbuf.nchar--;
        }
        else
        {
            U2STAbits.UTXEN = 0;    // Disable UART2 Tx interrupts
        }
        IFS1bits.U2TXIF = 0;       // Clear UART2 Tx interrupt flag
    }
}

int main(void)
{
    // Configure UART2:
    U2BRG = 10;                 // U2BRG = (PBCLK / (16 * baudrate)) - 1 ≃ 10
    U2MODEbits.PDSEL = 0b00;   // 8-bit data, no parity
    U2MODEbits.STSEL = 0;       // 1 stop bit
    U2MODEbits.BRGH = 0;        // divide by 16, 0 -> 16, 1 -> 4

    U2STAbits.URXEN = 1;        // Enable Receiver
    U2STAbits.UTXEN = 1;        // Enable Transmitter


    // Configure UART2 interrupts, with RX and TX interrupts DISABLED
    IEC1bits.U2RXIE = 0;        // disable U2RXIE, disable U2TXIE (register IEC1)
    IEC1bits.U2TXIE = 0;
            
    IPC8bits.U2IP = 6;          // set UART2 priority level (register IPC8)
    IFS1bits.U2RXIF = 0;        // clear RX interrupt flag (register IFS1)
    U2STAbits.UTXISEL = 0;      // define TX interrupt mode (UTXISEL bits)

    U2MODEbits.ON = 1;          // Enable UART2

    EnableInterrupts();         // Global Interrupt Enable

    txbuf.nchar = 0;            // Initialize variables of the structure txbuf

    while (1)
        putstrInt("Test string which can be as long as you like, up to a maximum of 100 characters\n");

    return 0;
}
