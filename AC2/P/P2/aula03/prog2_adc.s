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
    addiu   $sp,$sp,-4
    sw      $ra,0($sp)

    lui     $t0,SFR_BASE_HI

    lw      $t1,TRISE($t0)
    andi    $t1,$t1,0xfffe
    sw      $t1,TRISE($t0)

    li      $t2,0

loop:
    lw      $t1,LATE($t0)
    andi    $t1,$t1,0xfffe
    ori     $t1,$t1,$t2
    sw      $t1,LATE($t0)

    li      $a0,500
    jal     delay

    not     $t2,$t2

    j       loop
end_loop:
    li      $v0,0
    lw      $ra,0($sp)
    addiu   $sp,$sp,4
    jr      $ra

delay:
    li      $v0,12      #resetCoreTimer
loop:
    li      $v0,11      #readCoreTimer

    mul     $a0,$a0,20000
while:
    blt     $v0,$a0,loop

    jr      $ra
