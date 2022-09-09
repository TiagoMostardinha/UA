# typedef struct { 
# unsigned int id_number; 
# char first_name[18]; 
# char last_name[15]; 
# float grade; 
# } student; 

	.data
	.eqv	id_number,0
	.eqv	first_name,4
	.eqv	last_name,22
	.eqv	grade,40

st1:	.eqv	st1,0
st2:	.eqv	st2,44
st3:	.eqv	st3,88
st4:	.eqv	st4,132

st_array: .space 176	# static student st_array[MAX_STUDENTS];

	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	print_intu,36
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_string,8
	.eqv	read_float,6
	.eqv	MAX_STUDENTS,4
max_grade:.float -20.0
media:	.space	4
sum:	.float 0.0
str:	.asciiz "\nN.mec: "
str1:	.asciiz "\nPrimeiro Nome: "
str5:	.asciiz "\nUltimo Nome: "
str2:	.asciiz "\nNota: "
str3:	.asciiz "\n Insira os dados do aluno: "
str4:	.asciiz "\nMedia: "
str6:	.asciiz "\n"
	
	.text
	.globl main
#define MAX_STUDENTS 4 
# Mapa de Registos
# $s0 - pmax
# $f20 - media


main:		#int main(void) { 
	addiu	$sp,$sp,-16	# Reservar espaco na Stack
	sw	$ra,0($sp)	# Salvaguardar $ra,$sx e $fx
	sw	$s0,4($sp)
	s.s	$f20,8($sp)
	s.s	$f22,12($sp)
 	
 	la	$t0,media
	l.s	$f20,0($t0)	# static float media; 
	
	la	$a0,st_array
	li	$a1,MAX_STUDENTS
	jal	read_data	# read_data( st_array, MAX_STUDENTS );
	
	la	$a0,st_array
	li	$a1,MAX_STUDENTS
	la	$a2,media
	#jal	max
	move	$s0,$v0		# pmax = max( st_array, MAX_STUDENTS, &media ); 
	
	la	$a0,str1
	li	$v0,print_string
	syscall			# print_string("\nMedia: "); 
	
	l.s	$f12,media
	li	$v0,print_float
	syscall			# print_float( media ); 

	move	$a0,$s0
	#jal	print_student	# print_student( pmax ); 
	
	li	$v0,0		# return 0; 
	
	lw	$ra,0($sp)	# Salvaguardar $ra,$sx e $fx
	lw	$s0,4($sp)
	l.s	$f20,8($sp)
	l.s	$f22,12($sp)
	addiu	$sp,$sp,16
	
	jr	$ra		# } 


read_data:	# void read_data(student *st, int ns) { 
	li	$t0,0			# int i = 0; 
	move	$t1,$a0
	mul	$t2,$a1,44		
	
forrd:	bge	$t0,$t2,endforrd	# for(i=0; i < ns; i++) { 
	
	addu	$t3,$t1,$t0
	
	la	$a0,str
	li	$v0,print_string	# print_string("N. Mec: "); 
	syscall
	
	li	$v0,read_int
	syscall
	sw	$v0,id_number($t3)	# st[i].id_number = read_int(); 
	
	la	$a0,str1		
	li	$v0,print_string	# print_string("Primeiro Nome: "); 
	syscall
	
	addiu	$a0,$t3,first_name
	li	$a1,18			# read_string(st[i].first_name, 17); 
	li	$v0,read_string
	syscall
	#sw	$a0,first_name($t3)
	
	la	$a0,str5
	li	$v0,print_string		# print_string("Ultimo Nome: "); 
	syscall
	
	addiu	$a0,$t3,last_name	# read_string(st[i].last_name, 14); 
	li	$a1,15
	li	$v0,read_string
	syscall
	#sw	$a0,last_name($t3)
	
	la	$a0,str2		
	li	$v0,print_string	# print_string("Nota: "); 
	syscall
	
	li	$v0,read_float
	syscall
	s.s	$f0,grade($t3)		# st[i].grade = read_float(); 
	
	addi	$t0,$t0,44
	j	forrd			# }
endforrd:
	jr	$ra
	
max:
	move $t0,$a0
	l.s $f4,max_grade
	l.s $f5,sum
	move $t3,$a1
	mul $t6,$t3,44
	#mov.s $f6,$f
	addu $t2,$t0,$t6
	li $t4,0
	move $t5,$a2
form:
	bge $t0,$t2,endfm
	
	l.s $f6,grade($t0)
	add.s $f5,$f5,$f6
ifm:	
	c.lt.s $f6,$f4
	bc1t endifm
		
	mov.s $f4,$f6
	move $t4,$t0
endifm:
	
	addi $t0,$t0,44
	j form
endfm:

	mtc1 $t3,$f7
	cvt.s.w $f7,$f7
	div.s $f7,$f5,$f7
	s.s $f7,0($t5)
	
	move $v0,$t4
	jr $ra
# }

#### void read_data(student *, int); 
# student *max(student *, int, float *); 
#void print_student(student *); 
