void putc(char byte2send){
    while (U2STAbits.UTXBF == 1); // Wait until the Transmister Buffer is Full
    U2TXREG = byte2send;
}
