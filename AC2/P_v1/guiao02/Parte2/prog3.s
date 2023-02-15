        .equ    RESET_CORE_TIMER, 12
        .equ    READ_CORE_TIMER, 11
        .equ    inkey,1
        .equ putChar, 3
        .equ printInt, 6
        .data
        .text
        .globl main


                                # void delay(int ms);
main:                           # int main(void) {

        addiu   $sp, $sp, -20   # salvaguardar $ra e $sx
        sw      $ra, 0($sp)
        sw      $s0, 4($sp)
        sw      $s1, 8($sp)
        sw      $s2, 12($sp)
        sw      $s3, 16($sp)

        li      $s0, 0          #    int cnt10 = 0;
        li      $s1, 0          #    int cnt5 = 0;
        li      $s2, 0          #    int cnt1 = 0;
        li      $s3, 100        #    int t = 100
                                #
while:                          #    while (1)
input:  li      $v0, inkey              # c = inkey()
        syscall                         #
                                        #
if3:    bne     $v0, 'A', endif3        #               if (c == 'A') {
        li      $s3, 50                 #                   t = 50;
endif3:                                 #               }
if4:    bne     $v0, 'N', endif4        #               if (c == 'N') {
                li      $s3, 100                #                   t = 100;
endif4:                                 #               }
        
        li      $a0, 100        #    {
        jal     delay           #        delay(100);
                                #
        li      $a0, '\r'       #        putChar('\r');
        li      $v0,putChar     #
        syscall                 #
                                #
        addi    $s0, $s0, 1     #
        move    $a0,$s0         #
        li      $a1,0x0005000A  #
        li      $v0,printInt    #
        syscall                 #        printInt(++cnt10, 0x0005000A);
                                #
if1:    rem     $t0, $s0, 2     #        if(cnt10 % 2 == 0){
        bne     $t0, 0, endif1  #
        addi    $s1,$s1,1       #            cnt5++;
endif1:                         #        }
                                #
if2:    rem     $t0,$s0,10      #
        bne     $t0, 0, endif2  #        if(cnt10 % 10 == 0)
        addi    $s2,$s2,1       #            cnt1++;
                                #        }
endif2:                         #
        li      $a0, ' '        #
        li      $v0, putChar    #        putChar(' ');
        syscall                 #
                                #
        move    $a0,$s1         # 
        li      $a1,0x0005000A  #
        li      $v0,printInt    #
        syscall                 #        printInt(cnt5, 0x0005000A);
                                #
        li      $a0, ' '        #
        li      $v0, putChar    #        putChar(' ');
        syscall                 #         
                                #
        move    $a0,$s2         # 
        li      $a1,0x0005000A  #
        li      $v0,printInt    #
        syscall                 #        printInt(cnt1, 0x0005000A);                                
                                #
        j       while           #    }
                                #
        lw      $ra,0($sp)      # repor $ra e $sx                            
        lw      $s0,4($sp)      #
        lw      $s1,8($sp)      #
        lw      $s2, 12($sp)    #
        lw      $s3, 16($sp)    #
        addiu   $sp, $sp,20     #

        li      $v0, 0          #    return 0;
        
        jr      $ra             # }

delay:                                  # void delay(int ms) {
        move    $t0, $a0                #       $t0 = ms;
        
for:    ble     $t0, 0, endfor          #       for(; ms > 0; ms--) {
        li      $v0, RESET_CORE_TIMER   #               
        syscall                         #               resetCoreTimer();
read:   li      $v0, READ_CORE_TIMER    #
        syscall                         #               readCoreTimer();
        blt     $v0, 20000, read        #               while(readCoreTimer() < K);
        addi    $t0, $t0, -1            #               ms--;
        j       for                     #       }
endfor:                                 #       
        jr      $ra                     # }
