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

for:	bge	$t0,$t2,endf	 # for(; a < p; a++) { 

	lw	$a0,0($t0)
	li	$v0,print_int10	 # print_int10( *a ); 
	syscall
	
	la	$a0,str
	li	$v0 ,print_string # print_string(", "); 
	syscall
	
	addu	$t0,$t0,4	 #a++
	j 	for
	
endf:	jr	$ra			 # } 
# }