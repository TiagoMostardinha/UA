# Nota:
#   -> O clock do DETPIC32-IO é de 20 000 000 Hz
#      , logo 20 000 000 corresponde a 1s
#
# -----------------------------------------------
#
# 2a)    1ms = 0.001s = 1000 Hz
#       K   = 20 000 000 * 0.001 = 20 000
#
# -----------------------------------------------
# 2b)
#
# void delay(unsigned int ms) {
#   resetCoreTimer();
#   while(readCoreTimer() < K * ms);
# } 


        .equ READ_CORE_TIMER, 11
        .equ RESET_CORE_TIMER, 12
        .equ K, 20000
        .equ putChar, 3
        .equ printInt, 6

        .data
        .text
        .globl main

main:   
        addiu   $sp, $sp, -8            #       abrir espaco na pilha
        sw      $ra, 0($sp)             #       guardar o $ra
        sw      $s0, 4($sp)             #       guardar o $s0

        li      $s0, 0                  #       counter = 0;

while:  
        li      $a0,1000
        jal     delay

        addi    $s0, $s0, 1             #       $a0 = ++counter

        move    $a0, $s0                
        li      $a1, 0x0004000A         #       $a1 = 10 | 4 << 16
        li      $v0, printInt           #       printInt($a0, $a1)
        syscall

        li      $a0, '\r'               #       putChar('\r');
        li      $v0, putChar        
        syscall

endw:   j       while

        lw      $ra, 0($sp)             #       repor o $ra
        lw      $s0, 4($sp)             #       repor o $s0
        addiu   $sp, $sp, 8             #       repor espaco da pilha

        li  $v0, 0                      # return 0
        jr  $ra


# -----------------------------------------------


delay:
        li      $v0, RESET_CORE_TIMER   # $v0 = 12
        syscall

loop_delay: 
        li      $v0, READ_CORE_TIMER    # readCoreTimer()
        syscall

        mul     $a0, $a0, K             # K -> final           
        blt     $v0, $t0, loop_delay    # while(readCoreTimer() < K * ms);

end_loop:
        jr  $ra

