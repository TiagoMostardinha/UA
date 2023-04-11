    .data
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
    lui     $t0,SFR_BASE_HI

    lw      $t1,TRISB($t0)
    ori     $t1,$t1,0x000f
    sw      $t1,TRISB($t0)

    lw      $t1,TRISE($t0)
    andi    $t1,$t1,0xFFF0
    sw      $t1,TRISE($t0)

loop:
    lw      $t1,PORTB($t0)
    andi    $t1,$t1,0x000F

    lw      $t2,LATE($t0)
    andi    $t2,$t2,0x000F
    
    li      $t3,0
    sll     $t4,$t1,3
    or      $t3,$t3,$t4
    sll     $t4,$t1,2
    or      $t3,$t3,$t4
    sll     $t4,$t1,1
    or      $t3,$t3,$t4
    srl     $t4,$t1,3
    or      $t3,$t3,$t4
    



    sw      $t2,LATE($t0)

    j       loop
end_loop:
    li      $v0,0
    jr      $ra
