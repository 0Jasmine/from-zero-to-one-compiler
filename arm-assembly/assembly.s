	.arch armv7-a
	.fpu vfpv3-d16

	.text
	.section	.rodata
	.align	2
_str:
	.ascii	"the left 1 in position %x\n"
	.text
	.align	1

	.global	_GetLeftOne
	.syntax unified
	.thumb
	.type	_GetLeftOne, %function

_GetLeftOne: @ 对应 int GetLeftOne(int n) 函数
	@ 按照 call convention 完成保留寄存器出入栈
	@ 这里用 r7 作为函数内部的 sp
	push	{r7, lr}
	sub	sp, sp, #16 
	add	r7, sp, #0

	str	r0, [r7, #4]
	ldr	r3, [r7, #4]

	rsbs	r3, r3, #0 @ 这里是为了取 -n 的补码， 使用 0-n 完成
	ldr	r2, [r7, #4]	@ r2 = n
	ands	r3, r3, r2  @ r3 = n & (-n)
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	@ 接下来根据最右边 1 的位数进入 while 循环
	b	_cmp @ 判断是否为 0

_inwhile:
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]

_cmp:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	_inwhile
	
_print:
	ldr	r1, [r7, #12]
	ldr	r3, _addr1 @ 获得字符串地址
	mov r4, pc
	add	r0, r4, r3
	bl	printf

_return:
	ldr	r0, [r7, #12] @ 设置返回值
	adds	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.align	2

_addr1:
	.word	_str-(_print+4)

	.section	.rodata
	.align	2

_str1:
	.ascii	"%d\000"

	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.type	main, %function

main:
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0

_prestore: @ 使用 r3 前保存
	str	r3, [r7, #12]
	mov	r3, #0
	ldr	r3, _addr2

_funcpointer: @ 这里获得 _GetLeftOne 的地址并存储
	add	r3, pc
	str	r3, [r7, #8]

	adds	r3, r7, #4
	mov	r1, r3 	@ r1 = &a
	ldr	r3, _addr2+4
_scanf: 
	add	r3, pc
	mov	r0, r3 @ 传入字符串 
	bl	__isoc99_scanf
	ldr	r3, [r7, #8]

_callfunc:	@ 利用函数指针调用函数
	ldr	r0, [r7, #4] 
	blx	r3

_returnzero:
	movs	r0, #0
	ldr	r3, [r7, #-12]
	adds	r7, r7, #16
	mov	sp, r7
	pop	{r7, pc}
	.align	2

_addr2:
	.word	_GetLeftOne-(_funcpointer+4)
	.word	_str1-(_scanf+4)
