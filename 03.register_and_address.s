#
#	寄存器中存放内存地址，可称为pointer
#
#	lable 取标号的值
#	$lable 取标号的地址
#	(%edi) 取寄存器中内存地址的指向
#	4(%edi) 代表寄存器中的内存地址向后偏移4个字节的位置

.section .data
values:
	.int 1,2,3
x:
	.int 0

.section .text
.globl _start
_start:
	nop			#方便断点 gdb break *_start+1
	movl values,%eax	#values的值放入eax，结果为1
	movl $values,%ebx	#values的内存地址放入ebx
	movl $5,(%ebx)		#通过内存地址修改其指向的值
	int $0x80

