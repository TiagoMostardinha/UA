#include <detpic32.h>
void putc(char byte);
void putstr(char *str);


int main(void) {
    // Configure UART2 (115200, N, 8, 1)
    U2BRG = 10;              // 1 - Configure BaudRate Generator : ( U2BRG = (20Mhz / (16*115200))-1 ~ 10 )
    U2MODEbits.PDSEL = 0b00; // 2 – Configure number of data bits, parity and number of stop bits
    U2MODEbits.STSEL = 0;    // only 1 stop bit
    U2MODEbits.BRGH = 0;     // divide by 16
                             // 3 – Enable the trasmitter and receiver modules (see register U2STA)
    U2STAbits.URXEN = 1;     // Enable Receiver
    U2STAbits.UTXEN = 1;     // Enable Trasnmiter

    TRISDbits.TRISD11 = 0;              // config RD11 as output
    while (1)
    {
        while(U2STAbits.TRMT == 0);     // Wait while TRMT == 0
        LATDbits.LATD11 = 1;            // Set RD11
        putstr("12345");
        LATDbits.LATD11 = 0;            // Reset RD11
    }
    return 0;
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
