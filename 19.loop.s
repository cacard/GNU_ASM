#
#	loop
#
#	IA-32: 
#		loop: loop unitl ECX==0
#		loope/loopz
#		loopne/loopnz
#

.section .text
.globl _start
_start:
	nop
	movl $9,%ecx
	movl $0,%ebx
loop_label:		
	nop			#无需对ecx进行--
	loop loop_label
	nop
	movl $0,%eax
	int $0x80

#end
