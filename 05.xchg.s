#
#	xchg 交换
#		- register 2 register
#		- register 2 memory
#		- using LOCK
#

.section .data
.section .text
.globl _start
_start:
	nop
	movl $1,%eax
	movl $2,%ebx
	xchg %eax,%ebx
	nop


