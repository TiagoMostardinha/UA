#include <detpic32.h>

void delay(int ms);
void send2displays(unsigned char value);

int main(void){
    TRISB = TRISB & 0x00FF;
    TRISDbits.TRISD5 = 0;
    TRISDbits.TRISD6 = 0;
    LATB = LATB & 0x00FF;
    LATDbits.LATD5 = 0;
    LATDbits.LATD6 = 1;
    char c;
    int code = 0x00;
    while(1){
        
        c = inkey();
        if (c == '0'){
            code = 0x00;
        }
        else if (c == '1'){
            code = 0x01;
        }
        else if (c == '2'){
            code = 0x02;
        }
        else if (c == '3'){
            code = 0x03;
        }
        else if (c != 0x00){
            code = 0x71;
        }
        if (code == 0x71){
            LATDbits.LATD5 = 1;
            LATDbits.LATD6 = 1;
            LATB = (LATB & 0x00FF) | (code << 8);
            delay(1000);
            LATB = (LATB & 0x00FF);
            code = 0x00;
        }
        else{
            send2displays(code);
        }
        delay(10);
    }
}

void delay(int ms) {
	for(; ms > 0; ms--) 
	{
		resetCoreTimer();
    		while(readCoreTimer() < 20000);
  	}
}

void send2displays(unsigned char value){
    static const char display7Scodes[] = {0x3F, 0x06, 0x5B, 0X4F, 0x66, 0x6D, 0X7D, 0X07, 
                                          0X7F, 0X6F, 0X77, 0X7C, 0X39, 0X5E, 0X79, 0X71};
    static char displayFlag = 0;
    unsigned char digit_high = value >> 4;
    unsigned char digit_low = value & 0x0F;
    char hexCode;
    if (displayFlag){
        LATDbits.LATD5 = 1;
        LATDbits.LATD6 = 0;
        hexCode = display7Scodes[digit_low];
        LATB = (LATB & 0x00FF) | ((int) hexCode << 8);
    }
    else {
        LATDbits.LATD5 = 0;
        LATDbits.LATD6 = 1;
        hexCode = display7Scodes[digit_high];
        LATB = (LATB & 0x00FF) | ((int) hexCode << 8);
    }
    displayFlag = !displayFlag;
}