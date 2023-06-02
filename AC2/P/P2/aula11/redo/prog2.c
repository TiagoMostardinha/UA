#include <detpic32.h>

typedef struct
{
    char mem[100];
    int nchar;
    int posrd;
} t_buf;

volatile t_buf txbuf;

void putstrInt(char *s)
{
    while (txbuf.nchar > 0)
        ; // Wait while the buffer is not empty
    // Copy all characters of the string "s" to the buffer
    while (*s != '\0')
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
    if (IFS1bits.U2TXIF == 1)
    {
        if (txbuf.nchar > 0)
        { // At least one character to be transmitted
            U2TXREG = txbuf.mem[txbuf.posrd]; // Read 1 character from the buffer andsend it
            txbuf.nchar--;
            txbuf.posrd++;// Update buffer "posrd" and "nchar" variables
        }
        else
        {
            IEC1bits.U2TXIE = 0;// Disable UART2 Tx interrupts
        }
        IFS1bits.U2TXIF = 0;// Clear UART2 Tx interrupt flag
    }
}

int main(void)
{
    U2BRG = 10;
    U2MODEbits.PDSEL = 0b00;
    U2MODEbits.STSEL = 0;
    U2MODEbits.BRGH = 0;

    U2STAbits.UTXEN = 1;
    U2STAbits.URXEN = 1;

    IEC1bits.U2RXIE = 1;
    IEC1bits.U2TXIE = 0;

    IPC8bits.U2IP = 6;
    IFS1bits.U2RXIF = 0;
    U2STAbits.URXISEL = 0;

    U2MODEbits.ON = 1;

    EnableInterrupts();

    while (1)
        putstrInt("Test string which can be as long as you like, up to a maximum of 100 characters\n");
    return 0;
}