    .equ SFR_BASE_HI, 0xBF88        # 16 MSbits of SFR area
    .equ TRISE, 0x6100              # TRISE address is 0xBF886100
    .equ PORTE, 0x6110              # PORTE address is 0xBF886110
    .equ LATE,  0x6120              # LATE address is 0xBF886120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .equ LATB,  0x6060
    .data
    .text
    .globl main

main:
    addiu   $sp,$sp,-12
    sw      $ra,0($sp)
    sw      $s0,4($sp)
    sw      $s1,8($sp)

    lui     $t0,SFR_BASE_HI         # the 16 MSB bits are the same to all ports

    lw      $t1,TRISE($t0)          # configure TRISE3-0 as an output
    andi    $t1,$t1,0xfff0
    sw      $t1,TRISE($t0)

    li      $s0,0                   # cnt = 0

loop:                               # while(1)
    lw      $s1,LATE($t0)           # configure LATE3-0
    andi    $s1,$s1,0xfff0

    li      $a0,1                
    jal     delay                   # t = 1s

    addiu   $s0,$s0,1               # cnt++

    or      $s1,$s1,$s0
    sw      $s1,LATE($t0)

    j       loop

end_loop:

    li      $v0,0
    jr      $ra




delay:                              # void delay(unsigned int ms) {
            li      $v0,12  
            syscall                     # resetCoreTimer();
loop_delay:
            li      $v0,11              # readCoreTimer();
            syscall

            mul     $a0,$a0,20000       
            blt     $v0,$a0,loop_delay  # while(readCoreTimer() < 20000 * ms);
end_loop_delay:
            jr      $ra
