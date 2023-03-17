# Mapa de Registos:
# $t0: p
# $t1: *p


	.data
	.eqv	SIZE,20
	.eqv	print_string,4
	.eqv	read_string,8
str1:	.asciiz	"Introduza uma string: "
lista:	.space	20
	.text
	.globl	main
	
main:	
	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string
	
	la	$a0,lista
	li	$a1,SIZE
	addi	$a1,$a1,1		
	li	$v0,read_string
	syscall				# read_string
	
	la	$t0,lista
	
while:	
	lb	$t1,0($t0)
	beq	$t1,'\0',endw
	
if:	blt	$t1,0x61,endif
	bgt	$t1,0x7a,endif		# if(*p > 0x61 || *p < 0x7a ) {
	
	addi	$t1,$t1,-0x20		# *p = *p – 'a' + 'A'; // 'a'=0x61, 'A'=0x41, 'a'-'A'=0x20
	sb	$t1,0($t0)
	
endif:
	addiu	$t0,$t0,1		# p++
	j	while
endw:
	la	$a0,lista
	li	$v0,print_string
	syscall
	
	jr	$ra
