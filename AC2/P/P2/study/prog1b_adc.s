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

    lw      $t1,TRISE($t0)
    andi    $t1,$t1,0xFFF0
    sw      $t1,TRISE($t0)

    lw      $t1,TRISB($t0)
    ori     $t1,$t1,0x000f
    sw      $t1,TRISB($t0)



loop:
    lw      $t1,PORTB($t0)
    andi    $t1,$t1,0x000F

    lw      $t2,LATE($t0)
    andi    $t2,$t2,0xFFF0
    
    andi    $t3,$t1,0x000C
    srl     $t3,$t3,2
    or      $t2,$t3,$t2

    andi    $t3,$t1,0x0003
    sll     $t3,$t3,2
    or      $t2,$t3,$t2

    andi    $t3,$t1,0x000A
    srl     $t3,$t3,1
    or      $t2,$t3,$t2

    andi    $t3,$t1,0x0005
    sll     $t3,$t3,1
    or      $t2,$t3,$t2

    sw      $t2,LATE($t0)

    j       loop
end_loop:
    li      $v0,0
    jr      $ra
