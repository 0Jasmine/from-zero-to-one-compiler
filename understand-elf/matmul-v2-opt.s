	.text
	.file	"matmul-v2.cpp"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%r13
	.cfi_def_cfa_offset 40
	pushq	%r12
	.cfi_def_cfa_offset 48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	pushq	%rax
	.cfi_def_cfa_offset 64
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movl	$3435973837, %r14d              # imm = 0xCCCCCCCD
	leaq	.L.str(%rip), %r12
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_2 Depth 2
	movzbl	%r15b, %eax
	imull	$79, %eax, %eax
	shrl	$10, %eax
	leal	(%rax,%rax,2), %ecx
	leal	(%rax,%rcx,4), %eax
	movl	%r15d, %ecx
	subb	%al, %cl
	movzbl	%cl, %r13d
	movl	$100, %ebx
	movl	%r15d, %ebp
	.p2align	4, 0x90
.LBB0_2:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	%ebp, %eax
	imulq	%r14, %rax
	shrq	$36, %rax
	shll	$2, %eax
	leal	(%rax,%rax,4), %eax
	movl	%ebp, %esi
	subl	%eax, %esi
	imull	%r13d, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	addl	$1, %ebp
	addl	$-1, %ebx
	jne	.LBB0_2
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	movl	$10, %edi
	callq	putchar@PLT
	addq	$1, %r15
	cmpq	$100, %r15
	jne	.LBB0_1
# %bb.4:
	xorl	%eax, %eax
	addq	$8, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%r12
	.cfi_def_cfa_offset 40
	popq	%r13
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%d "
	.size	.L.str, 4

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
	.addrsig
