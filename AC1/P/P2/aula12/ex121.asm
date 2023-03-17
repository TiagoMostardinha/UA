	.data
			# typedef struct {
	.eqv	id_number,0	# unsigned int id_number;
	.eqv	first_name,4	# char first_name[18];
	.eqv	last_name,22	# char last_name[15];
	.eqv	float_grade,40	# float grade;
			# } student;	44
			
	.eqv	MAX_STUDENTS,4	# define MAX_STUDENTS 4
	
st1:	.eqv	st1,0
st2:	.eqv	st2,44
st3:	.eqv	st3,88
st4:	.eqv	st4,132

st_array:.space	176	# static student st_array[MAX_STUDENTS];


str:	.asciiz "\nN.mec: "
str1:	.asciiz "\nPrimeiro Nome: "
str5:	.asciiz "\nUltimo Nome: "
str2:	.asciiz "\nNota: "
str3:	.asciiz "\n Insira os dados do aluno: "
str4:	.asciiz "\nMedia: "
str6:	.asciiz "\n"

	.eqv	print_string,4
	.eqv	print_char,11
	.eqv	print_intu,36
	.eqv	print_float,2
	.eqv	read_int,5
	.eqv	read_string,8
	.eqv	read_float,6

media:	.space	4
max_grade:.float	-20.0

	.text
# read_data ##############################################################
# Mapa de Registos
# $t0:	i
read_data:	# void read_data(student *st, int ns) {
	li	$t0,0			# int i;
	
rd_for:	bge	$t0,$a1,end_frd		# for(i=0; i < ns; i++) {
	
	mul	$t3,$t0,44		# i * 44
	addu	$t3,$t3,$a0		# st + i * 44
	
	la	$a0,str
	li	$v0,print_string
	syscall				# print_string("N. Mec: ");
	
	li	$v0,read_int
	syscall
	sw	$v0,id_number($t3)	# st[i].id_number = read_int();
	
	la	$a0,str1
	li	$v0,print_string
	syscall				# print_string("Primeiro Nome: ");
	
	addiu	$a0,$t3,first_name
	li	$a1,17
	li	$v0,read_string
	syscall				# read_string(st[i].first_name, 17);
	
	la	$a0,str2	
	li	$v0,print_string
	syscall				# print_string("Ultimo Nome: ");
	
	addiu	$a0,$t3,last_name	
	li	$a1,14
	li	$v0,read_string
	syscall				# read_string(st[i].last_name, 14);
	
	la	$a0,str3		
	li	$v0,print_string
	syscall				# print_string("Nota: ");
	
	li	$v0,read_float
	syscall
	s.s	$f0,float_grade($t3)		# st[i].grade = read_float();
			
	addiu	$t0,$t0,1
	j	rd_for			# }
end_frd:
	jr	$ra		# }
			

# max ########################################################################			
# Mapa de Registos
# $f2:	max_grade
# $f4:	sum
# $t0:	p
# $t1:	st + ns
max:		# student *max(student *st, int ns, float *media)
	l.s	$f2,max_grade	# $f2 = -20.0
	mtc1	$0,$f4		# $f4 = 0.0
	la	$t0,st_array	# $t0 = p = st
	
	mul	$t1,$a1,44
	addu	$t1,$t0,$a1
	
m_for:	
	bge	$t0,$t1,m_endf	# for(p = st; p < (st + ns); p++) {
sum += p->grade;
if(p->grade > max_grade)
{
max_grade = p->grade;
pmax = p;
}
}
*media = sum / (float)ns;
return pmax;
	
	

			# void print_student(student *);
			
	.globl main	# int main(void) {
	
# Mapa de Registos
# $s0 - pmax
main:	
	addiu	$sp,$sp,-8	# reservar espaço na stack
	sw	$ra,0($sp)	# salvaguardar	$ra,$s0,$f20,$f22
	sw	$s0,4($sp)
			
	la	$a0,st_array	
	li	$a1,MAX_STUDENTS
	jal	read_data	# read_data( st_array, MAX_STUDENTS );
	
	la	$a0,st_array
	li	$a1,MAX_STUDENTS
	la	$a2,media
	jal	max
	move	$s0,$v0		# pmax = max( st_array, MAX_STUDENTS, &media );

	la	$a0,str4	
	li	$v0,print_string# print_string("\nMedia: ");
	syscall
	
	la	$t0,media	# print_float( media );
	l.s	$f12,0($t0)
	li	$v0,print_float
	syscall
	
	move	$a0,$s0
	jal	print_student	#print_student( pmax );
	
	li	$v0,0		#return 0;
	
	lw	$ra,0($sp)
	lw	$s0,4($sp)
	addiu	$sp,$sp,8
	
	jr	$ra		#}
