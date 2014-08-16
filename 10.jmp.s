#
#	jmp location
#
#	- unconditional branch
#

.section .data
.section .text
.globl main
main:
	nop
	movl $1,%eax	#linux system call:exit
	jmp jmpto
	movl $10,%ebx	#exit code
	init $0x80	#system call
jmpto:
	movl $20,%ebx	#exit code
	init $0x90	#system call


