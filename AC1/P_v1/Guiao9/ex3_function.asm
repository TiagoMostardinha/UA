	.data
x0:	.double	0.0
	.text
	.globl	average

average:	# double average(double *array, int n) { 
	la	$t0, x0		# double sum = 0.0; 
	l.d	$f0,0($t0)
	
	move	$t0,$a0		# $t1 = &(array)
	move	$t1,$a1		# $t2 = n
	
for:	ble	$t1,$0,endf	# for(; i > 0; i--) { 

	addi	$t3,$t1,-1	# $t3 = i-1
	sll	$t3,$t3,3	# aux = (i-1)*8  	double => 8 bytes
	addu	$t2, $t0, $t3	# $t2 = &(array[i-1]);
	
	l.d	$f2,0($t3)	# $f2 = (double)array[i-1];
	
	add.d	$f0,$f0,$f2	# sum += array[i-1]; 
	
	addi	$t1,$t1,-1	# i--
	
	j	for
	
endf:	mtc1	$a1,$f4		# } 
	cvt.d.w	$f4,$f4		
	div.d	$f0,$f0,$f4	# $f0 = sum / (double)n; ==  return sum / (double)n; 
	
	jr	$ra		# }
