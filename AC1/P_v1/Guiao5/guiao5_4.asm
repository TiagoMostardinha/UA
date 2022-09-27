# Mapa de registos 
# houve_troca:	$t4 
# i: 		$t5 
# lista: 	$t6 
# lista + i: 	$t7 
# *i:		$t3

	.data 
	.eqv	FALSE,0 
	.eqv	TRUE,1 
	.eqv	SIZE,10
	
	# Leitura
str1:	.asciiz	"\nIntroduza um numero: " 
	.align	2
	.eqv	read_int,5
	.eqv	print_string,4
lista:	.space	40
	
	# Print
	.eqv	print_int10,1
str2:	.asciiz	"  "
 	(...) 
	.text 
	.globl main 
	
main:	li	$t5,0
 	la	$t6,lista 		

#######################################

whileR:	bge	$t5,SIZE,do		# while(i < SIZE) { -> pode se criar um branch à parte para ser mais "logico", ex: endwR
				
	la	$a0,str1		# print_string(str1); 
	li	$v0,print_string
	syscall
	
	li	$v0,read_int		# $v0 = read_int();
	syscall
	
	sll	$t7,$t5,2		
	addu	$t7,$t7,$t6		# $t7 = &lista[i]
	sw	$v0,0($t7)		# lista[i] = read_int();
	
	addi	$t5,$t5,1		# i++
	j	whileR			# }			
								
# endwR:	j	do		# desnecessário mas pode se usar

#######################################

	# Bubble Sort
do:					# do { 
	li	$t4,FALSE		# houve_troca = FALSE; 
	li	$t5,0			# i = 0; 
	
for:	
	bge 	$t5,9,endfor		# while(i < SIZE-1){ 
	la	$t6,lista

	sll	$t7,$t5,2		# $t7 = i * 4 
	addu	$t7,$t7,$t6		# $t7 = &lista[i] 
	lw 	$t8,0($t7)		# $t8 = lista[i] 
	lw	$t9,4($t7)		# $t9 = lista[i+1] 
if:	ble	$t8,$t9,endif		# if(lista[i] > lista[i+1]){ 
	sw	$t8,4($t7)		# lista[i+1] = $t8 
	sw	$t9,0($t7)		# lista[i] = $t9 
	li	$t4,TRUE		# 
					# } 
endif:	addi	$t5,$t5,1		# i++; 
	#beq	$t4,TRUE,for		# } while(houve_troca == TRUE);
	j	for			# }

endfor:	beq	$t4,TRUE,do
	li	$t5,0
	j	whileP
	
# codigo de impressao do 
# conteudo do array 
#######################################
	
	# Print
whileP:	bge	$t5,SIZE,endwP		# while(i<SIZE) { 
	la	$t3,lista		# int *p = &(lista[0])
	sll	$t4,$t5,2		# $t3 = i * 4
	addu	$t4,$t3,$t4		# $t4 = &(lista[i])
	
	lw	$a0,0($t4)		# $t4 = *p;
	li	$v0,print_int10
	syscall
	
	la	$a0,str2	# print_string(str2);
	li	$v0,print_string
	syscall
	
	addiu	$t5,$t5,1	# p++
	
	j	whileP		# }
			 
endwP:	jr	$ra		
