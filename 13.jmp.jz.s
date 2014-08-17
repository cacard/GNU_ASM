#
#	jz:jump if zero
#
#	可伴随 subl/dec 等
#

.section .data
loop_count:
	.int 10
.section .text
.globl _start
_start:
	nop
	movl loop_cont,%ecx
loop:
	subl $1,%ecx		#ecx-1,or using dec %ecx
	jz loop_end		#jump to loop_end if ZERO
	jmp loop		#jump to loop if !ZERO
loop_end:
	nop

#end
