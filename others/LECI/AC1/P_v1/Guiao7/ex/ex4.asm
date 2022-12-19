	.data
str1:	.asciiz	"Arquitetura de "	# static char str1[]="Arquitetura de "; 
str2:	.space	50			# static char str2[50]; 
str3:	.asciiz	"Computadores I"
str4:	.asciiz	"\n"

	.eqv	print_string,4

	.text
	.globl main			
main:		# int main(void) { 

	addiu	$sp,$sp,-4		# reservar espaco para a stack
	sw	$ra,0($sp)		#salvaguardar $ra
	
	la	$a0,str2
	la	$a1,str1
	jal	strcpy			# strcpy(str2, str1); 
	
	la	$a0,str2
	li	$v0,print_string	# print_string(str2); 
	syscall
	
	la	$a0,str4
	li	$v0,print_string	# print_string("\n"); 
	syscall
	
	la	$a0,str2
	la	$a1,str3
	jal	strcat
	
	la	$a0,str2
	li	$v0,print_string	# print_string( strcat(str2, "Computadores I") ); 
	syscall
	
	lw	$ra,0($sp)		# repor o endereco de $ra
	addiu	$sp,$sp,4		# libertar espaco da stack
	
	li	$v0,0			# return 0; 
	
	jr	$ra			# }

#####################

strcat:		# char *strcat(char *dst, char *src) { 
	addiu	$sp,$sp,-8	# reservar espaco na stack
	sw	$ra,0($sp)	# salvaguardar $ra
	sw	$s0,4($sp)	# salvaguardar $s0
	
	move	$s0,$a0
	
while:	lb	$t0,0($a0)	# char *p = dst; 
	beq	$t0,'\0',endw	# while(*p != '\0') 
	addiu	$a0,$a0,1	# p++; 
	j	while
	
endw:
	
	jal	strcpy		# strcpy(&dst[fim], src)	
	move	$v0,$s0	
	
	lw	$ra,0($sp)	# repor $ra na pilha
	lw	$s0,4($sp)	# repor $s0
	addiu	$sp,$sp,8	# libertar espaco da stack
	
	# move	$a0,$v0		# return dst; 
	jr 	$ra		# } 



strcpy:		# char *strcpy(char *dst, char *src)
	move	$t2,$a0		# registo "callee-saved"

do:				# do { 	
	
	lb	$t1,0($a1)	# $t1 = src[i]
	sb	$t1,0($a0)	# dst[i] = src[i]; 
	
	addiu	$a0,$a0,1	# $a0[i + 1]
	addiu	$a1,$a1,1	# $a1[i + 1]
	
	bne	$t1,'\0',do	# } while(src[i++] != '\0'); 

endw1:
	move	$v0,$t2		# return dst; 	
	jr	$ra		# }

