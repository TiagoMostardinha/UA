	.data
	.text
	.globl main
main:	ori	$v0,$0,5	#HElP: 5 - read integer
	syscall
	or	$t0,$0,$v0
	
	ori	$t2,$0,8
	add	$t1,$t0,$t0
	sub	$t1,$t1,$t2
	
	or	$a0,$0,$t1
	ori	$v0,$0,35	#HELP: 1 - print integer , 34 - print integer HEXADECIMAL , 36 - print integer UNSIGNERD , 35 - print integer BINARY
	syscall
	
	jr	$ra
	
