# Mapa de registos: 
# str: $a0 -> $s0 (argumento é passado em $a0) 
# p1: $s1 (registo callee-saved) 
# p2: $s2 (registo callee-saved) 
# 
	.data
str:	.asciiz "ITED - orievA ed edadisrevinU"
	.eqv	print_string,4
	.text
	.globl main
main:
	addiu	$sp,$s0,-4	# reservar mem
	sw	$ra,0($sp)	# salvaguardar ra

	la	$a0,str
	jal	strrev
	
	move	$a0,$v0
	li	$v0,print_string
	syscall
	
	li	$v0,0		# return 0; 
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	jr	$ra



exchange:			# void exchange(char *c1, char *c2) {
	lb	$t0,0($a0)	# $t0 = *c1
	lb	$t1,0($a1)	# $t1 = *c2
	sb	$t0,0($a1)
	sb	$t1,0($a0)	# *c1 = *c2
	jr	$ra
	
strrev:				# char *strrev(char *str) {
	addiu	$sp,$sp,-16	# reservar mem
	sw	$ra,0($sp)	# salvaguardar ra,s0,s1,s2
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)

	move	$s0,$a0	
	move	$s1,$a0		#  char *p1 = str
	move	$s2,$a0		#  char *p2 = str;

while1:	lb	$t1,0($s2)	
	beq	$t1,'\0',endw1	#  while(*p2 != '\0')
	addiu	$s2,$s2,1	#   p2++;
	j	while1
endw1:	addiu	$s2,$s2,-1	#  p2--;

while2:	bge	$s1,$s2,endw2	#  while( p1 < p2 ) {
	move	$a0,$s1		#   exchange(p1, p2);
	move	$a1,$s2		#
	
	jal	exchange
	
	addiu	$s1,$s1,1	#   p1++;
	addiu	$s2,$s2,-1	#   p2--;
	j	while2
endw2:				#  }
	move	$v0,$s0		# return str;
	
	lw	$ra,0($sp)	# repor $ra,s0,s1,s2
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	addiu	$sp,$sp,16	# libertar mem
	jr	$ra		# }
			
