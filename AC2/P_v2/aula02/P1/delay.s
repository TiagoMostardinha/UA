# Nota:
#   -> O clock do DETPIC32-IO é de 20 000 000 Hz
#      , logo 20 000 000 corresponde a 1s
#
# -----------------------------------------------
#
#       1ms = 0.001s = 1000 Hz
#       K   = 20 000 000 * 0.001 = 20 000

        .data
        .text
        .globl delay

delay:                              # void delay(unsigned int ms) {
            li      $v0,12  
            syscall                     # resetCoreTimer();
loop_delay:
            li      $v0,11              # readCoreTimer();
            syscall

            mul     $a0,$a0,K       
            blt     $v0,$a0,loop_delay  # while(readCoreTimer() < K * ms);
end_loop:
            jr      $ra