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
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	movl	$0, -36(%rbp)
	movl	$4000000, %edi                  # imm = 0x3D0900
	callq	_Znam@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$4000000, %edx                  # imm = 0x3D0900
	callq	memset@PLT
	movq	%rbx, -24(%rbp)
	movl	$4000, %edi                     # imm = 0xFA0
	callq	_Znam@PLT
	movq	%rax, %rbx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$4000, %edx                     # imm = 0xFA0
	callq	memset@PLT
	movq	%rbx, -32(%rbp)
	movl	$0, -12(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$1000, -12(%rbp)                # imm = 0x3E8
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	$13, %ecx
	cltd
	idivl	%ecx
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$0, -16(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1000, -16(%rbp)                # imm = 0x3E8
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rax
	movslq	-16(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movslq	-12(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-16(%rbp), %rdx
	imull	(%rcx,%rdx,4), %eax
	movq	-24(%rbp), %rcx
	imull	$1000, -12(%rbp), %edx          # imm = 0x3E8
	addl	-16(%rbp), %edx
	movslq	%edx, %rdx
	movl	%eax, (%rcx,%rdx,4)
	movq	-24(%rbp), %rax
	imull	$1000, -12(%rbp), %ecx          # imm = 0x3E8
	addl	-16(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	movabsq	$.L.str, %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	movabsq	$.L.str.1, %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-24(%rbp), %rdi
	cmpq	$0, %rdi
	je	.LBB0_10
# %bb.9:
	callq	_ZdaPv@PLT
.LBB0_10:
	movq	-32(%rbp), %rdi
	cmpq	$0, %rdi
	je	.LBB0_12
# %bb.11:
	callq	_ZdaPv@PLT
.LBB0_12:
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"\n"
	.size	.L.str.1, 2

	.ident	"Ubuntu clang version 14.0.0-1ubuntu1.1"
	.section	".note.GNU-stack","",@progbits
