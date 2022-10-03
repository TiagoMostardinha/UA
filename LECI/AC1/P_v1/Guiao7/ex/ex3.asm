	.data
	
	.eqv	STR_MAX_SIZE,30	# define STR_MAX_SIZE 30 
	.eqv	print_string,4
	.eqv	print_int10,1

str1:	.asciiz "I serodatupmoC ed arutetiuqrA"
str2:	.space	STR_MAX_SIZE
str3:	.asciiz "\nString too long: "
str4:	.asciiz	"\n"
	
	.text
	.globl main

main:		# int main(void) { 
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)	# guarda o valor do $ra
	
	la	$a0,str1
	jal	strlen
	
	#move 	$a0,$v0
	#li	$v0,print_int10
	#syscall
	
	# move	$t9,$v0			# copia o resultado de strlen para $t9
if:	bgt	$v0,STR_MAX_SIZE,else	# if(strlen(str1) <= STR_MAX_SIZE) { 

	la	$a0,str2
	la	$a1,str1
	jal	strcpy			# strcpy(str2, str1); 
	
	la	$a0,str2
	li	$v0,print_string
	syscall				# print_string(str2); 
	
	la	$a0,str4
	li	$v0,print_string
	syscall				# print_string("\n"); 
	
	la	$a0,str2		
	jal	strrev
	
	move	$a0,$v0
	li	$v0,print_string
	syscall				# print_string(strrev(str2)); 
	
	li	$s0,0			# exit_value = 0; 
else:					# } else { 
	la	$a0,str3
	li	$v0,print_string	# print_string("String too long: "); 
	syscall
	
	la	$a0,str1
	jal	strlen
	
	move	$a0,$v0
	li	$v0,print_int10
	syscall				# print_int10(strlen(str1)); 
	
	li	$s0,-1			# exit_value = -1; 
	
endif:
	move	$v0,$s0			# return exit_value; 
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr $ra
# }


##############################

#strcpy:		# char *strcpy(char *dst, char *src)
#	li	$t0,-1		# int i=0; 
#	move	$t2,$a0		# registo "callee-saved"

#do:				# do { 
#	addiu	$t0,$t0,1	# i++
#	addu	$a0,$a0,$t0	# $a0 + i	
#	
#	lb	$t1,0($a1)	# $t1 = src[i]
#	sb	$t1,0($a0)	# dst[i] = src[i]; 
#	
#	bne	$t1,'\0',do	# } while(src[i++] != '\0'); 
#
#endw:
#	move	$v0,$a0		# return dst; 	
#	jr	$ra		# }


strcpy:		# char *strcpy(char *dst, char *src)
	move	$t2,$a0		# registo "callee-saved"

do:				# do { 	
	
	lb	$t1,0($a1)	# $t1 = src[i]
	sb	$t1,0($a0)	# dst[i] = src[i]; 
	
	addiu	$a0,$a0,1	# $a0[i + 1]
	addiu	$a1,$a1,1	# $a1[i + 1]
	
	bne	$t1,'\0',do	# } while(src[i++] != '\0'); 

endw:
	move	$v0,$a0		# return dst; 	
	jr	$ra		# }
	
			

	# O argumento da fun��o � passado em $a0 
	# O resultado � devolvido em $v0 
	# Sub-rotina terminal: n�o devem ser usados registos $sx 
strlen:	li	$t1,0		# len = 0; 
while:	lb	$t0,0($a0) 	# while(*s++ != '\0') 
	addiu	$a0,$a0,1 	# 
	beq 	$t0,'\0',endw3	# { 
	addi	$t1,$t1,1	# len++; 
	j	while		# } 
endw3:	move	$v0,$t1		# return len; 
 	jr 	$ra


exchange:	# void exchange(char *c1, char *c2) {
	lb	$t0,0($a0)	# char aux = *c1; 
	lb	$t1,0($a1)	
	sb	$t1,0($a0)	# *c1 = *c2; 
	sb	$t0,0($a1)	# *c2 = aux; 
	jr	$ra		# } 


strrev:		# char *strrev(char *str) { 
	addiu	$sp,$sp,-16	# reserva espa�o na stack 
	sw	$ra,0($sp)	# guarda endere�o de retorno 
	sw	$s0,4($sp)	# guarda valor dos registos 
	sw	$s1,8($sp)	# $s0, $s1 e $s2 
	sw	$s2,12($sp)	#
	
	
	move	$s0,$a0		# registo "callee-saved"	
	move	$s1,$a0		# char *p1 = str; 
	move	$s2,$a0		# char *p2 = str; 
 
while1:
	lb	$t1,0($s2)	# $t1 = *p2
	beq	$t1,'\0',endw1	# while(*p2 != '\0') 
	
	addiu	$s2,$s2,1	# p2++; 
	
	j while1

endw1:	addiu	$s2,$s2,-1	# p2--; 

while2:	bge	$s1,$s2,endw2	# while( p1 < p2 ) { 

	move	$a0,$s1
	move	$a1,$s2
	jal	exchange	# exchange(p1, p2); 
	
	addiu	$s1,$s1,1	# p1++; 
	addiu	$s2,$s2,-1	# p2--;
	
	j 	while2		# } 
	
endw2:	move	$v0,$s0		# return str; 

	lw	$ra,0($sp)	# rep�e endere�o de retorno 
	lw	$s0,4($sp)	# rep�e o valor dos registos 
	lw	$s1,8($sp)	# $s0, $s1 e $s2 
	lw	$s2,12($sp)	#
	
	addiu	$sp,$sp,16	# liberta espa�o da stack 
	
	jr	$ra		# termina a sub-rotina 
