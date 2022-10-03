void delay(int ms) {
    for (; ms > 0; ms--) {
        resetCoreTimer();
        
        readCoreTimer();

        while (readCoreTimer() < 20000);
    }
}
