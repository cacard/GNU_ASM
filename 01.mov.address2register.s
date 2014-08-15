#
#	movx
#		- movl 32bit
#		- movw 16bit
#		- movb 8bit
#

#	memory->register
.section .data
	value:
	.int 1
.section .text
.global _start
	_start:
		nop
		movl value, %ecx
		movl $1, %eax
		movl $0, %ebx
		int $0x80

