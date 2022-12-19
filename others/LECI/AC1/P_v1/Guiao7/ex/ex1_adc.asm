	.data
	.eqv	print_string,4
	.eqv	print_int10,1
	.eqv	read_int,5
array:	.space	200				# static int array[50]; 
str1:	.asciiz "Size of array : "
str2:	.asciiz "array["
str3:	.asciiz "] = "
str4:	.asciiz "Enter the value to be inserted:  "
str5:	.asciiz "Enter the position: "
str6:	.asciiz "\nOriginal array: "
str7:	.asciiz "\nModified array: "
	.text
	.globl main

# Mapa de Registos
# $t0 - i
# $s1 - array_size
# $s2 - insert_value
# $s3 - insert_pos
# $t4 - &array
# $t5 - &(array[i])
# $t6 - i*4

main:		# int main(void) { 

	addiu	$sp, $sp, -20		# abrir espaco na pilha
	sw	$ra, 0($sp)		# salvar o $ra na pilha
	sw	$s1, 4($sp)			
	sw	$s2, 8($sp)
	sw	$s3, 12($sp)
	sw	$s0, 16($sp)
	
	la	$t4, array		# $t4 = &array
	
	la	$a0,str1
	li	$v0,print_string	# print_string("Size of array : "); 
	syscall
	
	li	$v0,read_int
	syscall
	move	$s1,$v0			# array_size = read_int(); 
	
	li	$t0,0			# i=0
for:	bge	$t0,$s1,endfor		# for(; i < array_size; i++) { 

	la	$a0,str2		
	li	$v0,print_string	# print_string("array["); 
	syscall
	
	move	$a0,$t0
	li	$v0,print_int10		# print_int10(i); 
	syscall
	
	la	$a0,str3		
	li	$v0,print_string	# print_string("] = "); 
	syscall
	
	li	$v0,read_int
	syscall
	
	sll	$t6,$t0,2		# $t6 = i*4
	addu	$t5,$t4,$t6		# &array[i] = array + i *4
	sw	$v0,0($t5)		# array[i] = read_int();
	
	addi	$t0,$t0,1		# i++
	
	j	for 
# } 
endfor:
	la	$a0,str4
	li	$v0,print_string	# print_string("Enter the value to be inserted: "); 
	syscall
	
	li	$v0,read_int
	syscall
	move	$s2,$v0			# insert_value = read_int(); 
	
	la	$a0,str5
	li	$v0,print_string	# print_string("Enter the position: "); 
	syscall
	
	li	$v0,read_int
	syscall
	move	$s3,$v0			# insert_pos = read_int(); 

	la	$a0,str6		# print_string("\nOriginal array: "); 
	li	$v0,print_string	# print_array(array, array_size); 
	syscall
	
	move	$a0,$t4
	move	$a1,$s2
	move	$a2,$s3
	move	$a3,$s1
	jal	insert			# insert(array, insert_value, insert_pos, array_size); 
	
	la	$a0,str7
	li	$v0,print_string	# print_string("\nModified array: "); 
	syscall

	addi	$t7,$s1,1
	move	$a0,$t4
	move	$a1,$t7
	jal	print_array		# print_array(array, array_size + 1); 
	
	li	$v0,0			# return 0; 
	
	
	lw	$ra, 0($sp)		# repor o $ra na pilha
	lw	$s1, 4($sp)			
	lw	$s2, 8($sp)
	lw	$s3, 12($sp)
	lw	$s0, 16($sp)	
	
	addiu	$sp, $sp, -20		# libertar espaco na pilha
	
	jr	$ra			# }



##########################
insert:		# int insert(int *array, int value, int pos, int size) { 
	move	$t0,$a0
	move	$t1, $a1	#	$t1 = value;
	move 	$t2, $a2	#	$t2 = pos;
	move	$t3, $a3	#	$t3 = size;
	
	ble	$t2,$t3,endif	# if(pos > size) 
	
	li	$v0,1		# return 1; 
	j	endif
	
else:				# else { 
	addi	$t4,$t3,-1	# i = size-1
	
for1:	blt	$t4,$t2,endfor1	# for(i = size-1; i >= pos; i--) 	
	
	sll	$t6,$t4,2	# $t6 = i* 4
	addu	$t0,$t0,$t6	# 
	
	lw	$t5,0($t0)	# $t5 = array[i]
	sw	$t5,4($t0)	# array[i+1] = array[i];
	
	addi	$t4,$t4,-1	# i--
	
	j	for1
 
endfor1:	
	sll	$t6,$t4,2
	addu	$t0,$t0,$t6
	sw	$t1,-4($t0)	# array[pos] = value; 
	li	$v0,0		# return 0;
	
endif:	jr	$ra




	.data
	.eqv	print_int10,1
	.eqv	print_string.4
str:	.asciiz	", "

	.text
	.globl print_array

print_array:	# void print_array(int *a, int n) { 
	move	$t0,$a0		 # $t0 = a
	move	$t1,$a1		 # $t1 = n
	sll	$t1,$t1,2	 # $t1 = n*4
	addu	$t2,$t0,$t1	 # p = &(a + n) 

for2:	bge	$t0,$t2,endf	 # for(; a < p; a++) { 

	lw	$a0,0($t0)
	li	$v0,print_int10	 # print_int10( *a ); 
	syscall
	
	la	$a0,str
	li	$v0 ,print_string # print_string(", "); 
	syscall
	
	addiu	$t0,$t0,4	 #a++
	j 	for2
	
endf:	jr	$ra			 # } 
# }
