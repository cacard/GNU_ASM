#
#	bswap
#	
#	* 字节反序，而非bit
#

.section .data
.section .text
.globl _start
_start:
	nop
	movl $0x12345678,%eax
	bswap %eax		#0x78563412 可见，字节内部未反序
	nop


