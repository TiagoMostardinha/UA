	.data
				# typedef struct {
	.eqv	id_number,0	# unsigned int id_number;
	.eqv	first_name,4	# char first_name[18];
	.eqv	last_name,22	# char last_name[15];
	.eqv	grade,40	# float grade;
				# } student;
				
	.eqv	print_str,4
	.eqv	print_intu10,36
	.eqv	print_char,11
	.eqv	print_float,2
	
			
# define e inicializa a estrutura "stg" no segmento de dados
# static student stg = {72343, "Napoleao", "Bonaparte", 5.1};
stg:	.word	72343
	.asciiz	"Napoleao"
	.space	9
	.asciiz	"Bonaparte"
	.space	5
	.float	5.1

str1:	.asciiz	"\nN. Mec: "
str2:	.asciiz	"\nNome: "
str3:	.asciiz	"\nNota: "

	.text
	.globl main
	
main:	
	la	$t0,stg			# $t0 = stg
	
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
	
	addiu	$t1,$t0,grade
	l.s	$f12,grade($t0)
	l.s	$f12,0($t1)
	li	$v0,print_float		# print_float(stg.grade);
	syscall
	
	li	$v0,0			# return 0;
	jr $ra				# }
