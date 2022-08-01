	.text
	.globl max
	
max:	# double max(double *p, unsigned int n) { 
	move	$t0,$a0		# $t0 = *p
	move	$t1,$a1		# $t1 = n
	
	addi	$t1,$t1,-1	# $t1 = n -1
	sll	$t1,$t1,3	# $t1 = (n - 1) * 8
	addu	$t2,$t0,$t1	# double *u = p+n–1; 
 
	l.d	$f0,0($t0)	# 
	addiu 	$t0,$t0,8	# max = *p++; 

for:	bge	$t0,$t1,endf	# for(; p <= u; p++) { 

	l.d	$f2,0($t0)	# $f2 = (double) *p
if:	c.le.d	$f2,$f0		# if(*p > max) 
	bc1t	endif
	
	mov.d	$f0,$f2		# max = *p; 

endif:	addiu	$t0,$t0,8
	j	for
endf:	
	jr	$ra		# } 
# }
