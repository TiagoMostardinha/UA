	.data
x0:	.float	0.0
	.text
	.globl var
	
# Mapa de registos
# $t0 - i
# $t1 - &array
# $t2 - i*8
# $t3 - &(array[i])
# $f2 - soma
# $f4 - media
# $f12 - array[i] - media
# $f0 - res

var:		# double var(double *array, int nval) { 
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	la	$t0,x0
	l.d	$f2,0($t0)	# soma = 0.0
	
	li	$t0,0		# i = 0;
	
	jal	average
	mov.d	$f4,$f0		# media = (float)average(array, nval);
	move	$t1,$a1 	# $t1 = nval
	
for:	bge	$t0,$a1,endf	# for(i=0, soma=0.0; i < nval; i++) 
	sll	$t2,$t0,3	# i *8
	addu	$t3,$t1,$t2
	
	l.d	$f12,0($t3)
	sub.d	$f12,$f12,$f4	# array[i] - media
	
	li	$a1,2
	jal	xtoy
	
	add.d	$f2,$f2,$f0	# soma += xtoy((float)array[i] - media, 2); 
	addi	$t0,$t0,1
	j	for
	
endf:	
	l.d	$f6,0($t1)
	mov.d	$f0,$f2
	div.d	$f0,$f0,$f6		# return (double)soma / nval; 
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	jr	$ra			# } 


stdev:		# double stdev(double *array, int nval) { 
	addiu	$sp,$sp,-4
	sw	$ra,0($sp)
	
	jal	var
	
	mov.d	$f12,$f0
	jal	sqrt
	
	lw	$ra,0($sp)
	addiu	$sp,$sp,4
	
	jr	$ra
	# return sqrt( var(array, nval) ); 
# } 