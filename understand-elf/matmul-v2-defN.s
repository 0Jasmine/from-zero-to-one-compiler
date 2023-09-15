	.arch armv7-a
	.fpu vfpv3-d16
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"matmul-v2.cpp"
	.text
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d \000"
	.text
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
	.fnstart
.LFB0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	movs	r0, #4
	bl	_Znwj(PLT)
	mov	r3, r0
	movw	r2, #10000
	str	r2, [r3]
	str	r3, [r7, #8]
	movs	r0, #4
	bl	_Znwj(PLT)
	mov	r3, r0
	movs	r2, #100
	str	r2, [r3]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7]
	b	.L2
.L5:
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	ldr	r2, [r7]
	movw	r3, #60495
	movt	r3, 20164
	smull	r0, r3, r3, r2
	asrs	r0, r3, #2
	asrs	r3, r2, #31
	subs	r3, r0, r3
	movs	r0, #13
	mul	r3, r0, r3
	subs	r3, r2, r3
	str	r3, [r1]
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L3
.L4:
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r1, r1, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r0, r3, r3, r2
	asrs	r0, r3, #3
	asrs	r3, r2, #31
	subs	r3, r0, r3
	movs	r0, #20
	mul	r3, r0, r3
	subs	r3, r2, r3
	str	r3, [r1]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldr	r1, [r3]
	ldr	r3, [r7]
	movs	r0, #100
	mul	r0, r3, r0
	ldr	r3, [r7, #4]
	add	r3, r3, r0
	lsls	r3, r3, #2
	ldr	r0, [r7, #8]
	add	r3, r3, r0
	mul	r2, r1, r2
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #100
	mul	r2, r3, r2
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, .L9
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	printf(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L3:
	ldr	r3, [r7, #4]
	cmp	r3, #99
	ble	.L4
	movs	r0, #10
	bl	putchar(PLT)
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L2:
	ldr	r3, [r7]
	cmp	r3, #99
	ble	.L5
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L6
	ldr	r0, [r7, #8]
	bl	_ZdaPv(PLT)
.L6:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L7
	ldr	r0, [r7, #12]
	bl	_ZdaPv(PLT)
.L7:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+4)
	.fnend
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",%progbits
