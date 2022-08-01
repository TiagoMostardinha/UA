#include <detpic32.h>

volatile int count;

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

int main(void){
    // Configure UART2:
    U2BRG = 129;       // 1 - Configure BaudRate Generator / (20Mhz / (16*230400))-1 ~129
    U2MODEbits.PDSEL = 0b10;
    U2MODEbits.STSEL = 2;
    U2STAbits.UTXEN = 1;    // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U2STAbits.URXEN = 1;

    IEC1bits.U2TXIE = 0;    // enable U2RXIE, disable U2TXIE (register IEC1) 
    IEC1bits.U2RXIE = 1;
    IPC8bits.U2IP = 6;      //set UART2 priority level (register IPC8) 
    IFS1bits.U2RXIF = 0;                        // clear Interrupt Flag bit U2RXIF (register IFS1)
    U2STAbits.URXISEL = 0;                        // define RX interrupt mode (URXISEL bits) 

    U2MODEbits.ON = 1;

    TRISE = TRISE & 0xFFE1;
    count = 15;
    LATE = (LATE | (count << 1)) & (count << 1);

    EnableInterrupts();

    while(1);
    return 0;
}

void _int_(32) isr_uart2(void) {
    if(IFS1bits.U2RXIF == 1){
        char c = U2RXREG;
        if(c == 'U'){
            count++;
            LATE = (LATE | (count << 1)) & (count << 1);
        } else if(c == 'R'){
            count = 0;
            LATE = (LATE | (count << 1)) & (count << 1);
            putstr("RESET\n");
        }

    }
    IFS1bits.U2RXIF = 0;
}

