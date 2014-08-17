#
#	conditional jump 通常伴随 cmp
#
#	cmp x,y 	y-x(GAS style)
#	jne		jump if not equal

.section .text
.globl _start
_start:
	nop
	movl $1,%eax
	movl $2,%ebx
	cmp %eax,%ebx	#compare
	jne not_equal	#jump to not_equal if not equal
	movl $1,%eax	#exit code
	int $0x80	#call exit
not_equal:
	movl $0,%eax
	int $0x80

#end
