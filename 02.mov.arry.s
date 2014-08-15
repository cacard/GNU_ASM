#
#	循环一个array，并调用C的printf输出
#
#	连接:ld -dynamic-linker /lib/ld-linux.so.2 -lc -o 02.mov.arry 02.mov.arry.o
#

.section .data
output:
	.asciz "the value is %d\n"
values:
	.int 1,2,3,4,5,6,7,8,9,10	#10个元素
.section .text
.global _start
_start:
	nop				#空指令
	movl $0,%edi			#索引标记为0
loop:
	movl values(,%edi,4),%eax	#数组索引为%edi的值存放到%eax
	pushl %eax
	pushl $output
	call printf
	addl $8,%esp
	inc %edi			#索引++
	cmpl $10,%edi			#索引为11时，结束
	jne loop			#jne:jump not equal
	movl $0,%ebx
	movl $1,%eax
	int $0x80
