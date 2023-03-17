#include <detpic32.h>

void delay(int ms) {

    for(; ms > 0; ms--)
    {
        resetCoreTimer();
        while(readCoreTimer() < 20000) {}
    }
}

int main(void)
{
    TRISD = TRISD & 0xFF9F; // TRISD 6 & 5
    TRISB = TRISB & 0x00FF; // TRISB 15~8

    LATDbits.LATD5 = 1;
    LATDbits.LATD6 = 0;

    char left = 0x00;
    char right = 0x00;
    char code = 0x00;
	char key;

    while(1)
    {
        LATDbits.LATD5 = !LATDbits.LATD5;
        LATDbits.LATD6 = !LATDbits.LATD6;

        key = inkey();
        //while ((key = inkey())==0);

        if (key == '0') {
            left = 0x3F; // 0
            right = 0x3F; // 0
        } else if (key == '1') {
            left = 0x3F; // 0
            right = 0x06; // 1
        } else if (key == '2') {
            left = 0x3F; // 0
            right = 0x5B; // 2
        } else if (key == '3') {
            left = 0x3F; // 0
            right = 0x4F; // 3
        } else if (key != 0x00) {
            code = 0x71;
			int save5 = LATDbits.LATD5;
			int save6 = LATDbits.LATD6;
			LATDbits.LATD5 = 1;
        	LATDbits.LATD6 = 1;
            LATB = (LATB & 0x00FF) | (code << 8);
			delay(1000);
			LATDbits.LATD5 = save5;
        	LATDbits.LATD6 = save6;
			LATB = (LATB & 0x00FF);
			left = 0x00;
			right = 0x00;
        }

        if (LATDbits.LATD5 == 1) {
            code = right;
        } else {
            code = left;
        }

        // SEND
        LATB = (LATB & 0x00FF) | (code << 8);

        delay(10);
    }
    return 0;
}


