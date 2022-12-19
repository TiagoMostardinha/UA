# Mapa de Registos
# $t0: i
# $t1: res
# $t2: mdor
# $t3: mdo

	.data
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	read_int,5
str1:	.asciiz "Introduza dois numeros: "
str2:	.asciiz "Resultado: "
	.text
	.globl main

main:
	li	$t0,0			# i = 0
	li	$t1,0			# res = 0
	
	la	$a0,str1
	li	$v0,print_string	
	syscall				# print_string
	
	li	$v0,read_int
	syscall	
	andi	$t2,$v0,0x0F		# mdor = read_int() & 0x0F
	
	li	$v0,read_int
	syscall	
	andi	$t3,$v0,0x0F		# mdo = read_int() & 0x0F
	
while:	beq	$t2,0,endw
	bge	$t0,4,endw		# while( (mdor != 0) && (i++ < 4) ) {
	
	andi	$t4,$t2,0x00000001	
if:	beq	$t4,0,endif		# if( (mdor & 0x00000001) != 0 ) {
	add	$t1,$t1,$t3		# res = res + mdo
endif:	
	sll	$t3,$t3,1		# mdo = mdo << 1;
	srl	$t2,$t2,1		# mdor = mdor >> 1;
	
	addi	$t0,$t0,1		# i++
	j	while
endw:
	la	$a0,str2
	li	$v0,print_string
	syscall				# print_string
	
	move	$a0,$t1
	li	$v0,print_int10
	syscall				# print_string(res)
	
	jr	$ra
	
	
	
	
	
