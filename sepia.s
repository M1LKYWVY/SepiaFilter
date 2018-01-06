	.file	"sepia.c"
	.text
	.globl	from_bmp
	.type	from_bmp, @function
from_bmp:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$54, %esi
	movq	%rax, %rdi
	call	fread
	movzwl	-64(%rbp), %eax
	cmpw	$19778, %ax
	je	.L2
	movl	$1, %eax
	jmp	.L10
.L2:
	movzwl	-36(%rbp), %eax
	cmpw	$24, %ax
	je	.L4
	movl	$2, %eax
	jmp	.L10
.L4:
	movl	-54(%rbp), %eax
	cmpl	$54, %eax
	je	.L5
	movl	$3, %eax
	jmp	.L10
.L5:
	movl	-46(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, (%rax)
	movl	-42(%rbp), %edx
	movq	-112(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-112(%rbp), %rax
	movl	(%rax), %ecx
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	imull	%ecx, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, %rdx
	movq	-112(%rbp), %rax
	movq	%rdx, 8(%rax)
	movl	-46(%rbp), %eax
	shrl	$2, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-46(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$4, %eax
	movl	%eax, -76(%rbp)
	movq	-112(%rbp), %rax
	movq	8(%rax), %rax
	movq	%rax, -72(%rbp)
	movl	$0, -84(%rbp)
	jmp	.L6
.L9:
	movl	$0, -80(%rbp)
	jmp	.L7
.L8:
	movq	-104(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fread
	addq	$3, -72(%rbp)
	addl	$1, -80(%rbp)
.L7:
	movq	-112(%rbp), %rax
	movl	(%rax), %edx
	movl	-80(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L8
	movl	-76(%rbp), %eax
	movslq	%eax, %rcx
	movq	-104(%rbp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	fseek
	addl	$1, -84(%rbp)
.L6:
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	-84(%rbp), %eax
	jg	.L9
	movl	$0, %eax
.L10:
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L11
	call	__stack_chk_fail
.L11:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	from_bmp, .-from_bmp
	.globl	to_bmp
	.type	to_bmp, @function
to_bmp:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movw	$19778, -64(%rbp)
	movq	-112(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, -46(%rbp)
	movq	-112(%rbp), %rax
	movl	4(%rax), %eax
	movl	%eax, -42(%rbp)
	movl	-46(%rbp), %eax
	shrl	$2, %eax
	sall	$2, %eax
	movl	%eax, %edx
	movl	-46(%rbp), %eax
	subl	%eax, %edx
	movl	%edx, %eax
	addl	$4, %eax
	movl	%eax, -68(%rbp)
	movl	$54, -54(%rbp)
	movw	$24, -36(%rbp)
	movl	-42(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-46(%rbp), %eax
	imull	%eax, %edx
	movl	%edx, %eax
	addl	%eax, %eax
	leal	(%rax,%rdx), %ecx
	movl	-42(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	imull	-68(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, -30(%rbp)
	movl	-54(%rbp), %edx
	movl	-30(%rbp), %eax
	addl	%edx, %eax
	movl	%eax, -62(%rbp)
	movl	$0, -58(%rbp)
	movl	$0, -34(%rbp)
	movl	$40, -50(%rbp)
	movw	$1, -38(%rbp)
	movl	$0, -18(%rbp)
	movl	$0, -14(%rbp)
	movl	$3780, -26(%rbp)
	movl	$3780, -22(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-64(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$54, %esi
	movq	%rax, %rdi
	call	fwrite
	movl	$0, -80(%rbp)
	jmp	.L13
.L18:
	movl	$0, -76(%rbp)
	jmp	.L14
.L15:
	movq	-112(%rbp), %rax
	movq	8(%rax), %rdx
	movl	-46(%rbp), %ecx
	movl	-80(%rbp), %eax
	imull	%eax, %ecx
	movl	-76(%rbp), %eax
	addl	%ecx, %eax
	movl	%eax, %ecx
	movq	%rcx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	addq	%rdx, %rax
	movzwl	(%rax), %edx
	movw	%dx, -96(%rbp)
	movzbl	2(%rax), %eax
	movb	%al, -94(%rbp)
	movq	-104(%rbp), %rdx
	leaq	-96(%rbp), %rax
	movq	%rdx, %rcx
	movl	$1, %edx
	movl	$3, %esi
	movq	%rax, %rdi
	call	fwrite
	addl	$1, -76(%rbp)
.L14:
	movl	-46(%rbp), %edx
	movl	-76(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L15
	movl	$0, -72(%rbp)
	jmp	.L16
.L17:
	movq	-104(%rbp), %rax
	movq	%rax, %rsi
	movl	$0, %edi
	call	fputc
	addl	$1, -72(%rbp)
.L16:
	movl	-72(%rbp), %eax
	cmpl	-68(%rbp), %eax
	jl	.L17
	addl	$1, -80(%rbp)
.L13:
	movl	-42(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	cmpl	-80(%rbp), %eax
	jg	.L18
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L20
	call	__stack_chk_fail
.L20:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	to_bmp, .-to_bmp
	.type	check_pixel, @function
check_pixel:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movsd	%xmm0, -8(%rbp)
	movsd	.LC0(%rip), %xmm0
	ucomisd	-8(%rbp), %xmm0
	jbe	.L26
	cvttsd2si	-8(%rbp), %eax
	jmp	.L24
.L26:
	movl	$-1, %eax
.L24:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	check_pixel, .-check_pixel
	.globl	sepia
	.type	sepia, @function
sepia:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, %rax
	movq	%rsi, %rcx
	movq	%rcx, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movl	$16, %edi
	call	malloc
	movq	%rax, -16(%rbp)
	movl	-64(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	movl	-60(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	%edx, 4(%rax)
	movq	-16(%rbp), %rax
	movl	(%rax), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movq	-16(%rbp), %rax
	movl	4(%rax), %eax
	imull	%edx, %eax
	movl	%eax, %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	call	malloc
	movq	%rax, -8(%rbp)
	movl	$0, -20(%rbp)
	jmp	.L28
.L38:
	movq	-56(%rbp), %rcx
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	addq	%rcx, %rax
	movzwl	(%rax), %edx
	movw	%dx, -32(%rbp)
	movzbl	2(%rax), %eax
	movb	%al, -30(%rbp)
	movzbl	-32(%rbp), %eax
	movb	%al, -35(%rbp)
	movzbl	-31(%rbp), %eax
	movb	%al, -34(%rbp)
	movzbl	-30(%rbp), %eax
	movb	%al, -33(%rbp)
	movzbl	-35(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC1(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movzbl	-34(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC2(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movzbl	-33(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC3(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	.LC4(%rip), %xmm0
	jbe	.L43
	movl	$-1, %eax
	jmp	.L31
.L43:
	movzbl	-35(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC1(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movzbl	-34(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC2(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movzbl	-33(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC3(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
.L31:
	movb	%al, -32(%rbp)
	movzbl	-35(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC5(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movzbl	-34(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC6(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movzbl	-33(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC7(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	.LC4(%rip), %xmm0
	jbe	.L44
	movl	$-1, %eax
	jmp	.L34
.L44:
	movzbl	-35(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC5(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movzbl	-34(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC6(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movzbl	-33(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC7(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
.L34:
	movb	%al, -31(%rbp)
	movzbl	-35(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC8(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movzbl	-34(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC9(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movzbl	-33(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC10(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	ucomiss	.LC4(%rip), %xmm0
	jbe	.L45
	movl	$-1, %eax
	jmp	.L37
.L45:
	movzbl	-35(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC8(%rip), %xmm1
	mulss	%xmm0, %xmm1
	movzbl	-34(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC9(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm0, %xmm1
	movzbl	-33(%rbp), %eax
	pxor	%xmm0, %xmm0
	cvtsi2ss	%eax, %xmm0
	movss	.LC10(%rip), %xmm2
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	cvttss2si	%xmm0, %eax
.L37:
	movb	%al, -30(%rbp)
	movl	-20(%rbp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movzwl	-32(%rbp), %edx
	movw	%dx, (%rax)
	movzbl	-30(%rbp), %edx
	movb	%dl, 2(%rax)
	addl	$1, -20(%rbp)
.L28:
	movl	-60(%rbp), %eax
	cltd
	xorl	%edx, %eax
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-64(%rbp), %eax
	imull	%eax, %edx
	movl	-20(%rbp), %eax
	cmpl	%eax, %edx
	ja	.L38
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	(%rax), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	sepia, .-sepia
	.section	.rodata
	.align 8
.LC0:
	.long	0
	.long	1081081856
	.align 4
.LC1:
	.long	1040590045
	.align 4
.LC2:
	.long	1057535033
	.align 4
.LC3:
	.long	1049314198
	.align 4
.LC4:
	.long	1132396544
	.align 4
.LC5:
	.long	1043073073
	.align 4
.LC6:
	.long	1060085170
	.align 4
.LC7:
	.long	1051897889
	.align 4
.LC8:
	.long	1044482359
	.align 4
.LC9:
	.long	1061477679
	.align 4
.LC10:
	.long	1053374284
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.4) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
