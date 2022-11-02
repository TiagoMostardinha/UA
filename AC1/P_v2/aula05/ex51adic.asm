# Mapa de Registos:
# $t0: i
# $t1: j
# $t2: aux
# $t3: lista
# $t4: &lista[i]
# $t5: &lista[j]
# $t6: *lista[i]
# $t7: *lista[j]
# $t8: SIZE -1

	.data
	.eqv	SIZE,10
	.eqv	read_int,5
	.eqv	print_int10,1
lista:	.space	40
	.align	2
	.text
	.globl	main
	
main:	
	li	$t0,0			# i = 0
	li	$t1,0			# j = 0
	
forr:	bge	$t0,SIZE,endforr
	la	$t3,lista		# $t3 = lista
	sll	$t4,$t0,2		# $t4 = i * 4
	addu	$t4,$t3,$t4		# $t4 = lista + (i * 4)
	
	li	$v0,read_int
	syscall
	sw	$v0,0,($t4)		# lista = read_int
	
	addi	$t0,$t0,1
	j	forr
endforr:
	li	$t0,0			# i = 0
	
	li	$t8,SIZE
	addi	$t8,$t8,-1		# $t7 = SIZE -1
fori:	
	la	$t3,lista		# $t3 = lista
	sll	$t4,$t0,2		# $t4 = i * 4
	addu	$t4,$t3,$t4		# $t4 = lista + (i * 4)
	
	bge	$t0,$t8,endfori		# for(i=0; i < SIZE-1; i++){


	addi	$t1,$t0,1		# j = i + 1
	
forj:	sll	$t5,$t1,2		# $t5 = j * 4
	addu	$t5,$t3,$t5		# $t5 = lista + (j * 4)
	
	bge	$t1,SIZE,endforj

	lw	$t6,0($t4)		# $t6 = *lista[i]
	lw	$t7,0($t5)		# $t7 = *lista[j]
if:	ble	$t6,$t7,endif

	move	$t2,$t6			# aux = *lista[i]
	sw	$t7,0($t4)		# lista[i] = lista[j]
	sw	$t2,0($t5)		# lista[j] = aux
	
endif:
	addi	$t1,$t1,1
	j	forj
endforj:	
	addi	$t0,$t0,1		# i++
	j	fori			# }
endfori:

	li	$t0,0			# i = 0
forw:	bge	$t0,SIZE,endforw
	la	$t3,lista		# $t3 = lista
	sll	$t4,$t0,2		# $t4 = i * 4
	addu	$t4,$t3,$t4		# $t4 = lista + (i * 4)
	
	lw	$a0,0($t4)
	li	$v0,print_int10
	syscall
	
	li	$a0,' '
	li	$v0,11
	syscall
	
	addi	$t0,$t0,1
	j	forw
endforw:
	jr	$ra
