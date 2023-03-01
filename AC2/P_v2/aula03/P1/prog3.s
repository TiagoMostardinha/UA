# 3.    Repita os exercícios anteriores usando como porto de entrada o porto RD8, que permite ler
#       o estado do pulsador "INT1" da placa DETPIC32 (i.e., RE0 = RD8 e RE0 = RD8\).


    .equ SFR_BASE_HI, 0xBF88        # 16 MSbits of SFR area
    .equ TRISE, 0x6100              # TRISE address is 0xBF886100
    .equ PORTE, 0x6110              # PORTE address is 0xBF886110
    .equ LATE,  0x6120              # LATE address is 0xBF886120
    .equ TRISB, 0x6040
    .equ PORTB, 0x6050
    .equ LATB,  0x6060
    .equ TRISD, 0x60C0
    .equ PORTD, 0x60D0
    .equ LATD,  0x60E0
    .data
    .text
    .globl main

main:
    lui     $t0,SFR_BASE_HI         # the 16 MSB bits are the same to all ports

    lw      $t1,TRISE($t0)          # TRISE0 as an output
    andi    $t1,$t1,0xfffe
    sw      $t1,TRISE($t0)     

    lw      $t1,TRISB($t0)          # TRISB3 configure as an input
    ori     $t1,$t1,0x0001
    sw      $t1,TRISB($t0) 

    lw      $t1,TRISD($t0)          # TRISD8 as an input
    ori     $t1,$t1,0x0100           
    sw      $t1,TRISD($t0)

loop:                               # while(1)
    lw      $t1,PORTD($t0)          #   $t1 = [PORTD]
    andi    $t1,$t1,0x0100          #   $t1 = RD8

    lw      $t2,LATE($t0)           #   $t2 = [LATE]
    andi    $t2,$t2,0xfffe          #   $t2 = RE0

    lw      $t3,PORTB($t0)          #   $t3 = [PORTB]
    andi    $t3,$t3,0x0001          #   $t3 = RB0       -> configure PORTB0 as an input, by forcing the bit 0 being "1"

    srl     $t1,$t1,8

if:
    beq     $t3,0,endif
    xor     $t1,$t1,0x0001

endif:
    or      $t2,$t2,$t1
    sw      $t2,LATE($t0)

    j       loop

end_loop:

    li      $v0,0
    jr      $ra

