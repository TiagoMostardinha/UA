        .equ SFR_BASE_HI, 0xBF88        # 16 MSbits of SFR area
        .equ TRISE, 0x6100              # TRISE address is 0xBF886100
        .equ PORTE, 0x6110              # PORTE address is 0xBF886110
        .equ LATE,  0x6120               # LATE address is 0xBF886120
        .equ TRISB, 0x6040
        .equ PORTB, 0x6050
        .equ LATB,  0x6060
        .data
        .text
        .globl main

main:   
        lui      $t0, SFR_BASE_HI       # configure o porto RE0 como saída e o porto RB0 como entrada; 

        lw      $t1,TRISE($t0)          # TRISE0 configured as an output
        andi    $t1,$t1,0xFFFE
        sw      $t1,TRISE($t0)

        lw      $t1,TRISB($t0)          # TRISB0 configures as an input
        ori     $t1,$t1,0x1
        sw      $t1,TRISB($t0)

loop:                                   # while(1) {
        lw      $t1,PORTB($t0)          #   $t1 = [PORTB]
        andi    $t1,$t1,1               #   $t1 = RB0

        xori    $t1,$t1,0x0001          #   $t1 = RB0\
        
        lw      $t2,LATE($t0)           #   $t2 = [LATE]
        andi    $t2,$t2,0xFFFE          #   RE0 = 0

        or      $t2,$t2,$t1             #   RE0 = RB0\
        sw      $t2,LATE($t0)

        j       loop

end_loop:
        li      $v0,0
        jr      $ra
