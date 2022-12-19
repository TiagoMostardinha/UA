# Mapa de registos
# aux: $t0
# houve_troca: $t4
# p: $t5
# pUltimo: $t6
	.data
	.eqv	SIZE,10
	.eqv	read_int,5
	.eqv	print_int10,1
	.eqv	TRUE,1
	.eqv	FALSE,0
lista:	.space	40
	.align	2
	.text
	.globl	main
main:	
	la	$t5,lista		# $t5 = &lista[0]
	li	$t6,SIZE		#
	subu	$t6,$t6,1		# $t6 = SIZE – 1
	sll	$t6,$t6,2		# $t6 = (SIZE – 1) * 4
	addu	$t6,$t6,$t5		# $t6 = lista + (SIZE – 1)
	
forr:	bgt	$t5,$t6,endfr

	li	$v0,read_int
	syscall
	sw	$v0,0($t5)
	
	addiu	$t5,$t5,4
	j	forr
endfr:	

do:					# do {
	li	$t4,FALSE		# houveTroca = False
	la	$t5,lista		# $t5 = &lista[0]
	
for:	bge	$t5,$t6,endfor		# for (p = lista; p < pUltimo; p++) {
	lw	$t1,0($t5)		# $t1 = *p
	lw	$t2,4($t5)		# $t2 = *(p+1)
	
if:	ble	$t1,$t2,endif		# if (*p > *(p+1)) {
	move	$t0,$t1			# aux = *p
	
	sw	$t2,0($t5)		# *p = *(p+1)
	sw	$t0,4($t5)		# *(p+1) = aux
	li	$t4,TRUE		# houveTroca = True
endif:					# }
	addiu	$t5,$t5,4		# p++
	j	for
endfor:					# }


while:	beq	$t4,TRUE,do

	la	$t5,lista

forw:	bgt	$t5,$t6,endfw

	lw	$a0,0($t5)
	li	$v0,print_int10
	syscall
	
	li	$a0,' '
	li	$v0,11
	syscall
	
	addiu	$t5,$t5,4
	j	forw
endfw:

	
	jr	$ra
