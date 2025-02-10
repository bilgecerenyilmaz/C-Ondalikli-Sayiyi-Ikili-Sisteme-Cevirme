	.file	"MimariOdev.c"
	.text
	.section	.rodata
	.align 4
.LC1:
	.string	"Bir say\304\261 giriniz (maksimum 8 basamaktan olu\305\237mal\304\261): "
	.align 4
.LC2:
	.string	"Hatal\304\261 giri\305\237: En fazla 8 basamaktan olu\305\237abilir."
	.align 4
.LC3:
	.string	"Hatal\304\261 giri\305\237: Ge\303\247ersiz karakter bulundu."
.LC5:
	.string	"\n10-tabanl\304\261 Say\304\261:"
.LC6:
	.string	"Tam k\304\261sm\304\261: %lld\n"
.LC7:
	.string	"Kesir k\304\261sm\304\261: %.8f\n"
	.align 4
.LC8:
	.string	"\nSay\304\261n\304\261n 2-tabanl\304\261ya \303\247evrilmesi i\303\247in Enter tu\305\237una iki kez bas\304\261n..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	leal	4(%esp), %ecx
	.cfi_def_cfa 1, 0
	andl	$-16, %esp
	pushl	-4(%ecx)
	pushl	%ebp
	movl	%esp, %ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	pushl	%ebx
	pushl	%ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	subl	$96, %esp
	movl	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	fldz
	fstpl	-24(%ebp)
.L15:
	subl	$12, %esp
	pushl	$.LC1
	call	printf
	addl	$16, %esp
	movl	stdin, %eax
	subl	$4, %esp
	pushl	%eax
	pushl	$20
	leal	-80(%ebp), %eax
	pushl	%eax
	call	fgets
	addl	$16, %esp
	subl	$12, %esp
	leal	-80(%ebp), %eax
	pushl	%eax
	call	strlen
	addl	$16, %esp
	movl	%eax, -60(%ebp)
	movl	-60(%ebp), %eax
	subl	$1, %eax
	movzbl	-80(%ebp,%eax), %eax
	cmpb	$10, %al
	jne	.L2
	movl	-60(%ebp), %eax
	subl	$1, %eax
	movb	$0, -80(%ebp,%eax)
.L2:
	movl	$0, -28(%ebp)
	movl	$0, -32(%ebp)
	jmp	.L3
.L5:
	leal	-80(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jle	.L4
	leal	-80(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	jg	.L4
	addl	$1, -28(%ebp)
.L4:
	addl	$1, -32(%ebp)
.L3:
	subl	$12, %esp
	leal	-80(%ebp), %eax
	pushl	%eax
	call	strlen
	addl	$16, %esp
	movl	-32(%ebp), %edx
	cmpl	%eax, %edx
	jb	.L5
	cmpl	$8, -28(%ebp)
	jle	.L6
	subl	$12, %esp
	pushl	$.LC2
	call	puts
	addl	$16, %esp
	jmp	.L7
.L6:
	movl	$1, -36(%ebp)
	movl	$0, -40(%ebp)
	jmp	.L8
.L12:
	leal	-80(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$47, %al
	jle	.L9
	leal	-80(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$57, %al
	jle	.L10
.L9:
	leal	-80(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L10
	leal	-80(%ebp), %edx
	movl	-40(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	je	.L10
	subl	$12, %esp
	pushl	$.LC3
	call	puts
	addl	$16, %esp
	movl	$0, -36(%ebp)
	jmp	.L11
.L10:
	addl	$1, -40(%ebp)
.L8:
	subl	$12, %esp
	leal	-80(%ebp), %eax
	pushl	%eax
	call	strlen
	addl	$16, %esp
	movl	-40(%ebp), %edx
	cmpl	%eax, %edx
	jb	.L12
.L11:
	cmpl	$0, -36(%ebp)
	jne	.L24
	nop
.L7:
	jmp	.L15
.L24:
	nop
	movl	$0, -44(%ebp)
	jmp	.L16
.L18:
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	shldl	$2, %eax, %edx
	sall	$2, %eax
	addl	%ecx, %eax
	adcl	%ebx, %edx
	addl	%eax, %eax
	adcl	%edx, %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltd
	addl	%ecx, %eax
	adcl	%ebx, %edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	addl	$1, -44(%ebp)
.L16:
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L17
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	je	.L17
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L18
.L17:
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$46, %al
	je	.L19
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$44, %al
	jne	.L20
.L19:
	addl	$1, -44(%ebp)
	fldl	.LC4
	fstpl	-56(%ebp)
	jmp	.L21
.L22:
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	movl	%eax, -92(%ebp)
	fildl	-92(%ebp)
	fdivl	-56(%ebp)
	fldl	-24(%ebp)
	faddp	%st, %st(1)
	fstpl	-24(%ebp)
	fldl	-56(%ebp)
	fldl	.LC4
	fmulp	%st, %st(1)
	fstpl	-56(%ebp)
	addl	$1, -44(%ebp)
.L21:
	leal	-80(%ebp), %edx
	movl	-44(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	.L22
.L20:
	subl	$12, %esp
	pushl	$.LC5
	call	puts
	addl	$16, %esp
	subl	$4, %esp
	pushl	-12(%ebp)
	pushl	-16(%ebp)
	pushl	$.LC6
	call	printf
	addl	$16, %esp
	subl	$4, %esp
	pushl	-20(%ebp)
	pushl	-24(%ebp)
	pushl	$.LC7
	call	printf
	addl	$16, %esp
	subl	$12, %esp
	pushl	$.LC8
	call	puts
	addl	$16, %esp
	call	getchar
	call	getchar
	fildq	-16(%ebp)
	faddl	-24(%ebp)
	subl	$8, %esp
	leal	-8(%esp), %esp
	fstpl	(%esp)
	call	binary_donusum
	addl	$16, %esp
	movl	$0, %eax
	leal	-8(%ebp), %esp
	popl	%ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	popl	%ebx
	.cfi_restore 3
	popl	%ebp
	.cfi_restore 5
	leal	-4(%ecx), %esp
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC11:
	.string	"\n2-tabanl\304\261 Say\304\261:"
.LC12:
	.string	"Tam k\304\261sm\304\261: "
.LC13:
	.string	"\nKesir k\304\261sm\304\261: 0."
	.text
	.globl	binary_donusum
	.type	binary_donusum, @function
binary_donusum:
.LFB7:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$116, %esp
	.cfi_offset 3, -12
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%eax, -112(%ebp)
	movl	%edx, -108(%ebp)
	fldl	-112(%ebp)
	fnstcw	-114(%ebp)
	movzwl	-114(%ebp), %eax
	orb	$12, %ah
	movw	%ax, -116(%ebp)
	fldcw	-116(%ebp)
	fistpq	-16(%ebp)
	fldcw	-114(%ebp)
	fildq	-16(%ebp)
	fldl	-112(%ebp)
	fsubp	%st, %st(1)
	fstpl	-24(%ebp)
	movdqa	.LC10, %xmm0
	movups	%xmm0, -100(%ebp)
	movdqa	.LC10, %xmm0
	movups	%xmm0, -84(%ebp)
	movdqa	.LC10, %xmm0
	movups	%xmm0, -68(%ebp)
	movdqa	.LC10, %xmm0
	movups	%xmm0, -52(%ebp)
	movl	$0, -28(%ebp)
.L26:
	movl	-16(%ebp), %ecx
	movl	-12(%ebp), %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	movl	%edx, %edx
	sarl	$31, %edx
	movl	%edx, %eax
	xorl	%eax, %ecx
	xorl	%edx, %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	andl	$1, %ecx
	movl	$0, %ebx
	xorl	%eax, %ecx
	xorl	%edx, %ebx
	subl	%eax, %ecx
	sbbl	%edx, %ebx
	movl	%ecx, %eax
	movl	%ebx, %edx
	leal	48(%eax), %ecx
	movl	-28(%ebp), %eax
	leal	1(%eax), %edx
	movl	%edx, -28(%ebp)
	movl	%ecx, %edx
	movb	%dl, -100(%ebp,%eax)
	movl	-16(%ebp), %eax
	movl	-12(%ebp), %edx
	movl	%eax, %ecx
	movl	%edx, %ebx
	movl	%ebx, %ecx
	xorl	%ebx, %ebx
	shrl	$31, %ecx
	addl	%ecx, %eax
	adcl	%ebx, %edx
	shrdl	$1, %edx, %eax
	sarl	%edx
	movl	%eax, -16(%ebp)
	movl	%edx, -12(%ebp)
	movl	$0, %edx
	movl	$0, %eax
	cmpl	-16(%ebp), %edx
	sbbl	-12(%ebp), %eax
	jl	.L26
	subl	$12, %esp
	pushl	$.LC11
	call	puts
	addl	$16, %esp
	subl	$12, %esp
	pushl	$.LC12
	call	printf
	addl	$16, %esp
	movl	-28(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -32(%ebp)
	jmp	.L27
.L28:
	leal	-100(%ebp), %edx
	movl	-32(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$12, %esp
	pushl	%eax
	call	putchar
	addl	$16, %esp
	subl	$1, -32(%ebp)
.L27:
	cmpl	$0, -32(%ebp)
	jns	.L28
	subl	$12, %esp
	pushl	$.LC13
	call	printf
	addl	$16, %esp
	movl	$0, -36(%ebp)
	jmp	.L29
.L35:
	fldl	-24(%ebp)
	fadd	%st(0), %st
	fstpl	-24(%ebp)
	fld1
	fldl	-24(%ebp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jb	.L38
	subl	$12, %esp
	pushl	$49
	call	putchar
	addl	$16, %esp
	fldl	-24(%ebp)
	fld1
	fsubrp	%st, %st(1)
	fstpl	-24(%ebp)
	jmp	.L32
.L38:
	subl	$12, %esp
	pushl	$48
	call	putchar
	addl	$16, %esp
.L32:
	addl	$1, -36(%ebp)
.L29:
	fldz
	fldl	-24(%ebp)
	fcomip	%st(1), %st
	fstp	%st(0)
	jbe	.L33
	cmpl	$9, -36(%ebp)
	jle	.L35
.L33:
	subl	$12, %esp
	pushl	$10
	call	putchar
	addl	$16, %esp
	nop
	movl	-4(%ebp), %ebx
	leave
	.cfi_restore 5
	.cfi_restore 3
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE7:
	.size	binary_donusum, .-binary_donusum
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.align 16
.LC10:
	.long	0
	.long	0
	.long	0
	.long	0
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
