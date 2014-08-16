#
#	非条件跳转 call
#	
#	- 用来实现函数
#	- call时传递和返回值均通过stack实现
#	- 函数返回 ret
#
#

.section .text
.globl _start
_start:
	nop
	call myfunction
	nop
myfunction:
	push %ebp		#保存:	保存原有stack的base-pointer
	movl %esp,%ebp		#	base-pointer指向stack-pointer
	nop
	nop			#函数可对stack进行操作
	nop
	movl %ebp,%esp		#恢复:	stack-pointer回退到base-pointer
	popl %ebp		#	pop旧base-pointer的值到ebp
	ret			#函数返回


