	.data
	
	.eqv	SIZE,15
	.eqv	print_int10,1
str:	.asciiz "Invalid argc"
	.text
	
	.globl	func2
# Mapa de Registos:
# f1:	$s2
# k:	$s0
# av:	$s3
# i:	$s1
# res:	$t0
func2:
	addiu	$sp,$sp,-20	# reservar espaço
	sw	$ra,0($sp)	# salvaguar $ra ,$s
	sw	$s0,4($sp)
	sw	$s1,8($sp)
	sw	$s2,12($sp)
	sw	$s3,16($sp)
		
	move	$s0,$a1		# $s0=k
	move	$s2,$a0		# $s2=f1
	move	$s3,$a2		# $s3=av
	
	li	$t0,-1		# res=-1
	
if:	blt	$s0,2,else
	bgt	$s0,SIZE,else
	
	li	$s1,2		# i=2
do:
	sll	$t1,$s1,2	# i*4
	addu	$t1,$t1,$s3	# &av[i]
	lw	$a0,0($t1)	# av[i]
	jal	toi
	
	addi	$s1,$s1,1	# i++
while:	blt	$s1,$s0,do	# while i<k

	move	$a0,$s2
	move	$a1,$s0
	jal	avz
	move	$t0,$v0		# res=avz(f1,k)
	
	move	$a0,$t0
	li	$v0,print_int10
	syscall			# print_int10(res)
	
	j	endif
else:
	la	$a0,str
	li	$v0,print_string
	syscall			# print_string
	
endif:

	lw	$ra,0($sp)	# repor $ra ,$s
	lw	$s0,4($sp)
	lw	$s1,8($sp)
	lw	$s2,12($sp)
	lw	$s3,16($sp)	
	addiu	$sp,$sp,20	# libertar espaço
	
	jr	$ra