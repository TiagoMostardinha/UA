# Mapa de registos
# ...
# houve_troca: $t4
# i: $t5
# lista: $t6
# lista + i: $t7
	.data
	.eqv	FALSE,0
	.eqv	TRUE,1
	.eqv	SIZE,4
	.eqv	read_int,5
	.eqv	print_int10,1
lista:	.space	SIZE
	.align 	2
	.text
	.globl	main
main:	 			# código para leitura de valores
	li	$t5,0		# i = 0
	
for1:	bge	$t5,SIZE,endf1	# for(; i < SIZE,i++) {
	
	li	$v0,read_int	# $v0 = read_int()
	syscall
	
	la	$t6,lista	# $t6 = lista
	sll	$t7,$t5,2	# i * 4
	addu	$t7,$t7,$t6	# $t7 = lista + i
	sw	$v0,0($t7)	#    lista[i] = read_int()
	
	addi	$t5,$t5,1	# i++
	j	for1
endf1:				# }

	
do:				# do {
	li	$t4,FALSE	# houve_troca = FALSE;
	li	$t5,0		# i = 0;
	
	li	$t0,SIZE
	addi	$t0,$t0,-1
for2:	bge 	$t5,$t0,endf2	# while(i < SIZE-1){

	la	$t6,lista 	#
	
if: 	sll	$t7,$t5,2 	# $t7 = i * 4
	addu	$t7,$t7,$t6	# $t7 = &lista[i]
	lw	$t8,0($t7)	# $t8 = lista[i]
	lw	$t9,4($t7)	# $t9 = lista[i+1]
	
	ble 	$t8,$t9,endif	# if(lista[i] > lista[i+1]){
	sw	$t8,4($t7) 	# lista[i+1] = $t8
	sw	$t9,0($t7) 	# lista[i] = $t9
	li	$t4,TRUE	#
				# }
endif:	addi	$t5,$t5,1	# i++;
	j	for2		# }
endf2:	beq	$t4,TRUE,do	# } while(houve_troca == TRUE);
	
	 			# codigo de impressao do
				# conteudo do array
				# termina o programa				
				
	li	$t5,0		#i = 0
					
for3:	bge	$t5,SIZE,endf3	# for(; i < SIZE,i++) {
	
	la	$t6,lista	# $t6 = lista
	sll	$t7,$t5,2	# i * 4
	addu	$t7,$t7,$t6	# $t7 = lista + i
	
	lw	$a0,0($t7)	#    lista[i] = print_int10
	li	$v0,print_int10
	syscall
	
	addi	$t5,$t5,1	# i++
	j	for3
endf3:				# }		


	jr	$ra