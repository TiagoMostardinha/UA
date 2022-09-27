# int main(void) {
#	char c;
#	do {
#		c = getChar();
#		putChar( c );
#	} while( c != '\n' );
#	return 0;
# } 

        .equ	getChar, 2
        .equ	putChar, 3	

        .data
        .text
        .globl  main

main:	
do:     li      $v0, getChar        #		c = getChar();
        syscall
        move    $t0, $v0

        li      $v0, putChar        #		putChar( c );
        syscall

while:  bne     $t0, '\n', do

        li      $v0, 0
        jr      $ra





