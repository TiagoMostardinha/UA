char getc(void){
    if(U2STAbits.OERR == 1) U2STAbits.OERR = 0; // If OERR == 1 then reset OERR
    while(U2STAbits.URXDA == 0);                // Wait while URXDA == 0
    return U2RXREG;                             // Return U2RXREG
}
