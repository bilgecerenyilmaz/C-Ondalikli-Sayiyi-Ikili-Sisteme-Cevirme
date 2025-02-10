	.file	"MimariOdev.c"
	.text
	.section	.rodata
	.align 8
.LC1:
	.string	"Bir say\304\261 giriniz (maksimum 8 basamaktan olu\305\237mal\304\261): "
	.align 8
.LC2:
	.string	"Hatal\304\261 giri\305\237: En fazla 8 basamaktan olu\305\237abilir."
	.align 8
.LC3:
	.string	"Hatal\304\261 giri\305\237: Ge\303\247ersiz karakter bulundu."
.LC5:
	.string	"\n10-tabanl\304\261 Say\304\261:"
.LC6:
	.string	"Tam k\304\261sm\304\261: %lld\n"
.LC7:
	.string	"Kesir k\304\261sm\304\261: %.8f\n"
	.align 8
.LC8:
	.string	"\nSay\304\261n\304\261n 2-tabanl\304\261ya \303\247evrilmesi i\303\247in Enter tu\305\237una iki kez bas\304\261n..."
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 3, -24
	movq	$0, -24(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
.L15:
	movl	$.LC1, %edi
	movl	$0, %eax
	call	printf
	movq	stdin(%rip), %rdx
	leaq	-96(%rbp), %rax
	movl	$20, %esi
	movq	%rax, %rdi
	call	fgets
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	movq	%rax, -72(%rbp)
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$10, %al
	jne	.L2
	movq	-72(%rbp), %rax
	subq	$1, %rax
	movb	$0, -96(%rbp,%rax)
.L2:
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	jmp	.L3
.L5:
	movl	-40(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$47, %al
	jle	.L4
	movl	-40(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$57, %al
	jg	.L4
	addl	$1, -36(%rbp)
.L4:
	addl	$1, -40(%rbp)
.L3:
	movl	-40(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jb	.L5
	cmpl	$8, -36(%rbp)
	jle	.L6
	movl	$.LC2, %edi
	call	puts
	jmp	.L7
.L6:
	movl	$1, -44(%rbp)
	movl	$0, -48(%rbp)
	jmp	.L8
.L12:
	movl	-48(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$47, %al
	jle	.L9
	movl	-48(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$57, %al
	jle	.L10
.L9:
	movl	-48(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L10
	movl	-48(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$44, %al
	je	.L10
	movl	$.LC3, %edi
	call	puts
	movl	$0, -44(%rbp)
	jmp	.L11
.L10:
	addl	$1, -48(%rbp)
.L8:
	movl	-48(%rbp), %eax
	movslq	%eax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	strlen
	cmpq	%rax, %rbx
	jb	.L12
.L11:
	cmpl	$0, -44(%rbp)
	jne	.L24
	nop
.L7:
	jmp	.L15
.L24:
	nop
	movl	$0, -52(%rbp)
	jmp	.L16
.L18:
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	movq	%rax, %rdx
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	cltq
	addq	%rdx, %rax
	movq	%rax, -24(%rbp)
	addl	$1, -52(%rbp)
.L16:
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L17
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$44, %al
	je	.L17
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L18
.L17:
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$46, %al
	je	.L19
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	cmpb	$44, %al
	jne	.L20
.L19:
	addl	$1, -52(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -64(%rbp)
	jmp	.L21
.L22:
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	movsbl	%al, %eax
	subl	$48, %eax
	pxor	%xmm0, %xmm0
	cvtsi2sdl	%eax, %xmm0
	divsd	-64(%rbp), %xmm0
	movsd	-32(%rbp), %xmm1
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	-64(%rbp), %xmm1
	movsd	.LC4(%rip), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	addl	$1, -52(%rbp)
.L21:
	movl	-52(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	testb	%al, %al
	jne	.L22
.L20:
	movl	$.LC5, %edi
	call	puts
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$.LC6, %edi
	movl	$0, %eax
	call	printf
	movq	-32(%rbp), %rax
	movq	%rax, %xmm0
	movl	$.LC7, %edi
	movl	$1, %eax
	call	printf
	movl	$.LC8, %edi
	call	puts
	call	getchar
	call	getchar
	pxor	%xmm0, %xmm0
	cvtsi2sdq	-24(%rbp), %xmm0
	addsd	-32(%rbp), %xmm0
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	call	binary_donusum
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.section	.rodata
.LC9:
	.string	"\n2-tabanl\304\261 Say\304\261:"
.LC10:
	.string	"Tam k\304\261sm\304\261: "
.LC11:
	.string	"\nKesir k\304\261sm\304\261: 0."
	.text
	.globl	binary_donusum
	.type	binary_donusum, @function
binary_donusum:
.LFB7:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$112, %rsp
	movsd	%xmm0, -104(%rbp)
	movsd	-104(%rbp), %xmm0
	cvttsd2siq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdq	-8(%rbp), %xmm1
	movsd	-104(%rbp), %xmm0
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	movq	$0, -96(%rbp)
	movq	$0, -88(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -64(%rbp)
	movq	$0, -56(%rbp)
	movq	$0, -48(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -20(%rbp)
.L26:
	movq	-8(%rbp), %rdx
	movq	%rdx, %rax
	sarq	$63, %rax
	shrq	$63, %rax
	addq	%rax, %rdx
	andl	$1, %edx
	subq	%rax, %rdx
	movq	%rdx, %rax
	leal	48(%rax), %ecx
	movl	-20(%rbp), %eax
	leal	1(%rax), %edx
	movl	%edx, -20(%rbp)
	movl	%ecx, %edx
	cltq
	movb	%dl, -96(%rbp,%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdx
	shrq	$63, %rdx
	addq	%rdx, %rax
	sarq	%rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	jg	.L26
	movl	$.LC9, %edi
	call	puts
	movl	$.LC10, %edi
	movl	$0, %eax
	call	printf
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	.L27
.L28:
	movl	-24(%rbp), %eax
	cltq
	movzbl	-96(%rbp,%rax), %eax
	movsbl	%al, %eax
	movl	%eax, %edi
	call	putchar
	subl	$1, -24(%rbp)
.L27:
	cmpl	$0, -24(%rbp)
	jns	.L28
	movl	$.LC11, %edi
	movl	$0, %eax
	call	printf
	movl	$0, -28(%rbp)
	jmp	.L29
.L35:
	movsd	-16(%rbp), %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -16(%rbp)
	movsd	-16(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm1
	comisd	%xmm1, %xmm0
	jb	.L38
	movl	$49, %edi
	call	putchar
	movsd	-16(%rbp), %xmm0
	movsd	.LC12(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -16(%rbp)
	jmp	.L32
.L38:
	movl	$48, %edi
	call	putchar
.L32:
	addl	$1, -28(%rbp)
.L29:
	movsd	-16(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	jbe	.L33
	cmpl	$9, -28(%rbp)
	jle	.L35
.L33:
	movl	$10, %edi
	call	putchar
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7:
	.size	binary_donusum, .-binary_donusum
	.section	.rodata
	.align 8
.LC4:
	.long	0
	.long	1076101120
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 14.1.0"
	.section	.note.GNU-stack,"",@progbits
