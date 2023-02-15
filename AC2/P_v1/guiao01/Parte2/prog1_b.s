# int main(void){
# char c;
# do {
#   c = inkey();
#   if( c != 0 ) putChar( c );
#   else         putChar('.');
# } while( c != '\n' );
# return 0;
# } 

        .equ    inkey, 1
        .equ    putChar, 3
        .data
        .text
        .globl  main

main:
do:     li      $v0, inkey      #   c = inkey();
        syscall                 
        move    $t0, $v0        


if:     beq     $v0, 0, else    #   if( c != 0 )

        li      $v0, putChar    #   putChar( c );
        move    $a0, $t0        
        syscall

        j       endif

else:                           #   else   
        li      $v0, putChar    #   putChar( c );  
        move    $a0, '.'        
        syscall   


endif:
while:  bne     $t0, '\n', do

        li      $v0, 0
        jr      $ra
    	


