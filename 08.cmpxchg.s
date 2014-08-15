#
#	cmpxchg 比较并交换
#
#	- CAS
#	- cmpxchg src,dest
#		比较dest的内容是否与EAX相同，true:把src写入dest；false:把dest写入EAX。
#

.section .data
value:
	.int 1

.section .text
.globl _start
_start:
	nop
	movl $1,%eax
	movl $2,%ebx
	cmpxchg %ebx,value
	nop			# value->2


