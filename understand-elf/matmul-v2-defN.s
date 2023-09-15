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
	subq	$64, %rsp
	movl	$0, -4(%rbp)
	movl	$40000, %edi                    # imm = 0x9C40
	callq	_Znam@PLT
	movq	%rax, %rdi
	movq	%rdi, -48(%rbp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$40000, %edx                    # imm = 0x9C40
	callq	memset@PLT
	movq	-48(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -16(%rbp)
	movl	$400, %edi                      # imm = 0x190
	callq	_Znam@PLT
	movq	%rax, %rdi
	movq	%rdi, -40(%rbp)                 # 8-byte Spill
	xorl	%esi, %esi
	movl	$400, %edx                      # imm = 0x190
	callq	memset@PLT
	movq	-40(%rbp), %rax                 # 8-byte Reload
	movq	%rax, -24(%rbp)
	movl	$0, -28(%rbp)
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	cmpl	$100, -28(%rbp)
	jge	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	movl	$13, %ecx
	cltd
	idivl	%ecx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$0, -32(%rbp)
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$100, -32(%rbp)
	jge	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	-32(%rbp), %eax
	movl	$20, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	imull	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	imull	$100, -28(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	imull	$100, -28(%rbp), %ecx
	addl	-32(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	.LBB0_3
.LBB0_6:                                #   in Loop: Header=BB0_1 Depth=1
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
# %bb.7:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	.LBB0_1
.LBB0_8:
	movq	-16(%rbp), %rax
	movq	%rax, -56(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_10
# %bb.9:
	movq	-56(%rbp), %rdi                 # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB0_10:
	movq	-24(%rbp), %rax
	movq	%rax, -64(%rbp)                 # 8-byte Spill
	cmpq	$0, %rax
	je	.LBB0_12
# %bb.11:
	movq	-64(%rbp), %rdi                 # 8-byte Reload
	callq	_ZdaPv@PLT
.LBB0_12:
	xorl	%eax, %eax
	addq	$64, %rsp
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
	.addrsig
	.addrsig_sym _Znam
	.addrsig_sym printf
	.addrsig_sym _ZdaPv
