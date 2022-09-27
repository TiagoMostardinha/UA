
	###############################33
	# Feito pela Informatica Margarida
	################3
		
				.data
				# typedef struct {
	.eqv	id_number,0	# unsigned int id_number;
	.eqv	first_name,4	# char first_name[18];
	.eqv	last_name,22	# char last_name[15];
	.eqv	grade,40	# float grade;
				# } student;
				
	.eqv	read_int, 5
	.eqv	read_float,6
	.eqv	read_str, 8
	.eqv	print_str, 4
	.eqv	print_intu10, 36
	.eqv	print_char, 11
	.eqv	print_float, 2
	
			
# define e inicializa a estrutura "stg" no segmento de dados
# static student stg = {72343, "Napoleao", "Bonaparte", 5.1};
stg:	.space	44


str1:	.asciiz	"\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "

	.text
	.globl main
	
main:	
	la	$t0,stg			# $t0 = stg

# read
	la	$a0,str1
	li	$v0,print_str		# print_string("\nN. Mec: ");
	syscall
		
	li	$v0,read_int		# read_intu10(stg.id_number);
	syscall
	sw	$v0,id_number($t0)
	
	la	$a0,str2
	li	$v0,print_str		# print_string("\nNome: ");
	syscall
	
	addiu	$a0,$t0,last_name
	li	$a1,15
	li	$v0,read_str		# read_string(stg.last_name);
	syscall
	
	li	$a0,','
	li	$v0,print_char		# print_char(',');
	syscall
	
	addiu	$a0,$t0,first_name
	li	$a1,18
	li	$v0,read_str		# read_string(stg.first_name);
	syscall
	
	la	$a0,str3
	li	$v0,print_str		# print_string("\nNota: ");
	syscall
	
	li	$v0,read_float
	syscall				# read_float
	addiu	$t7,$t0,grade
	s.s	$f0,0($t7)
	
	#addiu	$t1,$t0,grade
	l.s	$f12,grade($t0)
	#l.s	$f12,0($t1)
	li	$v0,print_float		# print_float(stg.grade);
	syscall
	
	
######################	
# print
	la	$a0,str1
	li	$v0,print_str		# print_string("\nN. Mec: ");
	syscall
	
	lw	$a0,id_number($t0)	
	li	$v0,print_intu10	# print_intu10(stg.id_number);
	syscall
	
	la	$a0,str2
	li	$v0,print_str		# print_string("\nNome: ");
	syscall
	
	addiu	$a0,$t0,last_name
	li	$v0,print_str		# print_string(stg.last_name);
	syscall
	
	li	$a0,','
	li	$v0,print_char		# print_char(',');
	syscall
	
	addiu	$a0,$t0,first_name
	li	$v0,print_str		# print_string(stg.first_name);
	syscall
	
	la	$a0,str3
	li	$v0,print_str		# print_string("\nNota: ");
	syscall
	
	#addiu	$t1,$t0,grade
	l.s	$f12,grade($t0)
	#l.s	$f12,0($t1)
	li	$v0,print_float		# print_float(stg.grade);
	syscall
	
	li	$v0,0			# return 0;
	jr $ra				# }
	