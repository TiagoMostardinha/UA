#include <detpic32.h>

int main(void)
{
    // Configure UART2: 115200, N, 8, 1
    U2BRG = 10;                 // 1 - Configure BaudRate Generator : ( U2BRG = (20Mhz / (16*115200))-1 ~ 10 )
    U2MODEbits.PDSEL = 0b00;    // 2 – Configure number of data bits, parity and number of stop bits
    U2MODEbits.STSEL = 0;       // only 1 stop bit
    U2MODEbits.BRGH = 0;        // divide by 16
                                // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U2STAbits.URXEN = 1;        // Enable Receiver
    U2STAbits.UTXEN = 1;        // Enable Trasnmiter

    U2MODEbits.ON = 1;          // 4 – Enable UART2 (see register U2MODE)

                                // Configure UART2 interrupts, with RX interrupts enabled and TX interrupts disabled :
    IEC1bits.U2RXIE = 1;        //      enable U2RXIE, disable U2TXIE(register IEC1) 
    IEC1bits.U2TXIE = 0;        //
    
    IPC8bits.U2IP = 6;          //      set UART2 priority level(register IPC8)
    IFS1bits.U2RXIF = 0;        //      clear Interrupt Flag bit U2RXIF(register IFS1)
    U2STAbits.URXISEL = 0;      //      define RX interrupt mode(URXISEL bits)
    
    EnableInterrupts();         // Enable global Interrupts

        while (1);
    return 0;
}
