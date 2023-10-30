	.att_syntax
	.text
	.p2align	5
	.globl	__aegis128l_decrypt
	.globl	_aegis128l_decrypt
	.globl	__aegis128l_encrypt
	.globl	_aegis128l_encrypt
__aegis128l_decrypt:
_aegis128l_decrypt:
	movq	%rsp, %r11
	leaq	-96(%rsp), %rsp
	andq	$-16, %rsp
	movq	(%rdi), %rax
	movq	8(%rdi), %rcx
	movq	%rcx, 80(%rsp)
	movq	16(%rdi), %rcx
	movb	24(%rdi), %dl
	movq	32(%rdi), %rsi
	movq	48(%rdi), %r8
	movq	56(%rdi), %r9
	movq	%r9, 88(%rsp)
	movq	64(%rdi), %r9
	movq	72(%rdi), %rdi
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%rdi), %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpxor	glob_data + 16(%rip), %xmm0, %xmm7
	vmovdqu	%xmm6, %xmm3
	vmovdqu	glob_data + 0(%rip), %xmm4
	vmovdqu	glob_data + 16(%rip), %xmm2
	vmovdqu	glob_data + 0(%rip), %xmm5
	vmovdqu	%xmm6, %xmm9
	vmovdqu	%xmm7, %xmm10
	vpxor	glob_data + 0(%rip), %xmm0, %xmm8
	vpxor	%xmm1, %xmm3, %xmm6
	vpxor	%xmm0, %xmm9, %xmm11
	vmovdqu	%xmm7, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm5, %xmm10
	vaesenc	%xmm5, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm4, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm12, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm0
	vaesenc	%xmm7, %xmm8, %xmm5
	vaesenc	%xmm8, %xmm9, %xmm6
	vaesenc	%xmm9, %xmm10, %xmm7
	vaesenc	%xmm12, %xmm11, %xmm8
	vaesenc	%xmm11, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm0, %xmm0
	movq	88(%rsp), %rdi
	andq	$-32, %rdi
	xorq	%r9, %r9
	jmp 	L_aegis128l_decrypt$15
L_aegis128l_decrypt$16:
	vmovdqu	(%r8,%r9), %xmm1
	vmovdqu	16(%r8,%r9), %xmm4
	vpxor	%xmm1, %xmm0, %xmm1
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm10, %xmm0
	addq	$32, %r9
L_aegis128l_decrypt$15:
	cmpq	%rdi, %r9
	jb  	L_aegis128l_decrypt$16
	movq	88(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	L_aegis128l_decrypt$12
	addq	%r9, %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%xmm1, 16(%rsp)
	vmovdqu	%xmm1, 32(%rsp)
	xorq	%r9, %r9
	jmp 	L_aegis128l_decrypt$13
L_aegis128l_decrypt$14:
	movb	(%r8,%r9), %r10b
	movb	%r10b, 16(%rsp,%r9)
	incq	%r9
L_aegis128l_decrypt$13:
	cmpq	%rdi, %r9
	jb  	L_aegis128l_decrypt$14
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm4
	vpxor	%xmm1, %xmm0, %xmm1
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm10, %xmm0
L_aegis128l_decrypt$12:
	movq	80(%rsp), %rdi
	andq	$-32, %rdi
	xorq	%r8, %r8
	jmp 	L_aegis128l_decrypt$10
L_aegis128l_decrypt$11:
	vmovdqu	(%rax,%r8), %xmm4
	vmovdqu	16(%rax,%r8), %xmm1
	vpand	%xmm9, %xmm2, %xmm10
	vpand	%xmm5, %xmm6, %xmm11
	vpxor	%xmm3, %xmm6, %xmm12
	vpxor	%xmm7, %xmm2, %xmm13
	vpxor	%xmm10, %xmm12, %xmm10
	vpxor	%xmm11, %xmm13, %xmm11
	vpxor	%xmm10, %xmm4, %xmm4
	vpxor	%xmm11, %xmm1, %xmm1
	vpxor	%xmm4, %xmm0, %xmm10
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm12
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm10, %xmm12, %xmm0
	vmovdqu	%xmm4, (%rsi,%r8)
	vmovdqu	%xmm1, 16(%rsi,%r8)
	addq	$32, %r8
L_aegis128l_decrypt$10:
	cmpq	%rdi, %r8
	jb  	L_aegis128l_decrypt$11
	movq	80(%rsp), %rdi
	subq	%r8, %rdi
	cmpq	$0, %rdi
	jbe 	L_aegis128l_decrypt$3
	addq	%r8, %rsi
	addq	%r8, %rax
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%xmm1, 16(%rsp)
	vmovdqu	%xmm1, 32(%rsp)
	xorq	%r8, %r8
	jmp 	L_aegis128l_decrypt$8
L_aegis128l_decrypt$9:
	movb	(%rax,%r8), %r9b
	movb	%r9b, 16(%rsp,%r8)
	incq	%r8
L_aegis128l_decrypt$8:
	cmpq	%rdi, %r8
	jb  	L_aegis128l_decrypt$9
	vmovdqu	16(%rsp), %xmm4
	vmovdqu	32(%rsp), %xmm1
	vpand	%xmm9, %xmm2, %xmm10
	vpand	%xmm5, %xmm6, %xmm11
	vpxor	%xmm3, %xmm6, %xmm12
	vpxor	%xmm7, %xmm2, %xmm13
	vpxor	%xmm10, %xmm12, %xmm10
	vpxor	%xmm11, %xmm13, %xmm11
	vpxor	%xmm10, %xmm4, %xmm4
	vpxor	%xmm11, %xmm1, %xmm1
	vmovdqu	%xmm4, 48(%rsp)
	vmovdqu	%xmm1, 64(%rsp)
	movq	%rdi, %rax
	jmp 	L_aegis128l_decrypt$6
L_aegis128l_decrypt$7:
	movb	$0, 48(%rsp,%rax)
	incq	%rax
L_aegis128l_decrypt$6:
	cmpq	$32, %rax
	jb  	L_aegis128l_decrypt$7
	vmovdqu	48(%rsp), %xmm10
	vmovdqu	64(%rsp), %xmm11
	vpxor	%xmm10, %xmm0, %xmm10
	vpxor	%xmm11, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm12
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm10, %xmm12, %xmm0
	vmovdqu	%xmm4, 16(%rsp)
	vmovdqu	%xmm1, 32(%rsp)
	xorq	%rax, %rax
	jmp 	L_aegis128l_decrypt$4
L_aegis128l_decrypt$5:
	movb	16(%rsp,%rax), %r8b
	movb	%r8b, (%rsi,%rax)
	incq	%rax
L_aegis128l_decrypt$4:
	cmpq	%rdi, %rax
	jb  	L_aegis128l_decrypt$5
L_aegis128l_decrypt$3:
	movq	88(%rsp), %rax
	movq	80(%rsp), %rsi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm10
	vmovdqu	%xmm5, %xmm1
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm10, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	cmpb	$16, %dl
	je  	L_aegis128l_decrypt$1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm7, %xmm8, %xmm1
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vmovdqu	(%rcx), %xmm2
	vmovdqu	16(%rcx), %xmm3
	vpcmpeqq	%xmm0, %xmm2, %xmm0
	vpcmpeqq	%xmm1, %xmm3, %xmm1
	vpand	%xmm1, %xmm0, %xmm0
	vpmovmskb	%xmm0, %rax
	incq	%rax
	shrq	$16, %rax
	addq	$-1, %rax
	jmp 	L_aegis128l_decrypt$2
L_aegis128l_decrypt$1:
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqu	(%rcx), %xmm1
	vpcmpeqq	%xmm0, %xmm1, %xmm0
	vpmovmskb	%xmm0, %rax
	incq	%rax
	shrq	$16, %rax
	addq	$-1, %rax
L_aegis128l_decrypt$2:
	movq	%r11, %rsp
	ret 
__aegis128l_encrypt:
_aegis128l_encrypt:
	movq	%rsp, %r11
	leaq	-64(%rsp), %rsp
	andq	$-16, %rsp
	movq	(%rdi), %rax
	movq	16(%rdi), %rcx
	movb	24(%rdi), %dl
	movq	32(%rdi), %rsi
	movq	40(%rdi), %r8
	movq	%r8, 48(%rsp)
	movq	48(%rdi), %r8
	movq	56(%rdi), %r9
	movq	%r9, 56(%rsp)
	movq	64(%rdi), %r9
	movq	72(%rdi), %rdi
	vmovdqu	(%r9), %xmm0
	vmovdqu	(%rdi), %xmm1
	vpxor	%xmm1, %xmm0, %xmm6
	vpxor	glob_data + 16(%rip), %xmm0, %xmm7
	vmovdqu	%xmm6, %xmm3
	vmovdqu	glob_data + 0(%rip), %xmm4
	vmovdqu	glob_data + 16(%rip), %xmm2
	vmovdqu	glob_data + 0(%rip), %xmm5
	vmovdqu	%xmm6, %xmm9
	vmovdqu	%xmm7, %xmm10
	vpxor	glob_data + 0(%rip), %xmm0, %xmm8
	vpxor	%xmm1, %xmm3, %xmm6
	vpxor	%xmm0, %xmm9, %xmm11
	vmovdqu	%xmm7, %xmm12
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm10, %xmm8
	vaesenc	%xmm10, %xmm9, %xmm9
	vaesenc	%xmm11, %xmm5, %xmm10
	vaesenc	%xmm5, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm4, %xmm2
	vaesenc	%xmm4, %xmm3, %xmm3
	vaesenc	%xmm6, %xmm12, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm5
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm8, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm10, %xmm9
	vaesenc	%xmm12, %xmm11, %xmm10
	vaesenc	%xmm11, %xmm2, %xmm11
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm5, %xmm6, %xmm4
	vpxor	%xmm1, %xmm4, %xmm1
	vpxor	%xmm0, %xmm10, %xmm12
	vmovdqu	%xmm7, %xmm0
	vaesenc	%xmm7, %xmm8, %xmm5
	vaesenc	%xmm8, %xmm9, %xmm6
	vaesenc	%xmm9, %xmm10, %xmm7
	vaesenc	%xmm12, %xmm11, %xmm8
	vaesenc	%xmm11, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm4, %xmm3
	vaesenc	%xmm1, %xmm0, %xmm0
	movq	56(%rsp), %rdi
	andq	$-32, %rdi
	xorq	%r9, %r9
	jmp 	L_aegis128l_encrypt$13
L_aegis128l_encrypt$14:
	vmovdqu	(%r8,%r9), %xmm1
	vmovdqu	16(%r8,%r9), %xmm4
	vpxor	%xmm1, %xmm0, %xmm1
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm10, %xmm0
	addq	$32, %r9
L_aegis128l_encrypt$13:
	cmpq	%rdi, %r9
	jb  	L_aegis128l_encrypt$14
	movq	56(%rsp), %rdi
	subq	%r9, %rdi
	cmpq	$0, %rdi
	jbe 	L_aegis128l_encrypt$10
	addq	%r9, %r8
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%xmm1, 16(%rsp)
	vmovdqu	%xmm1, 32(%rsp)
	xorq	%r9, %r9
	jmp 	L_aegis128l_encrypt$11
L_aegis128l_encrypt$12:
	movb	(%r8,%r9), %r10b
	movb	%r10b, 16(%rsp,%r9)
	incq	%r9
L_aegis128l_encrypt$11:
	cmpq	%rdi, %r9
	jb  	L_aegis128l_encrypt$12
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm4
	vpxor	%xmm1, %xmm0, %xmm1
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm10, %xmm0
L_aegis128l_encrypt$10:
	movq	48(%rsp), %rdi
	andq	$-32, %rdi
	xorq	%r8, %r8
	jmp 	L_aegis128l_encrypt$8
L_aegis128l_encrypt$9:
	vmovdqu	(%rsi,%r8), %xmm1
	vmovdqu	16(%rsi,%r8), %xmm4
	vpand	%xmm9, %xmm2, %xmm10
	vpand	%xmm5, %xmm6, %xmm11
	vpxor	%xmm3, %xmm6, %xmm12
	vpxor	%xmm7, %xmm2, %xmm13
	vpxor	%xmm10, %xmm12, %xmm10
	vpxor	%xmm11, %xmm13, %xmm11
	vpxor	%xmm10, %xmm1, %xmm10
	vpxor	%xmm11, %xmm4, %xmm11
	vpxor	%xmm1, %xmm0, %xmm1
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	%xmm5, %xmm12
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm0
	vmovdqu	%xmm10, (%rax,%r8)
	vmovdqu	%xmm11, 16(%rax,%r8)
	addq	$32, %r8
L_aegis128l_encrypt$8:
	cmpq	%rdi, %r8
	jb  	L_aegis128l_encrypt$9
	movq	48(%rsp), %rdi
	subq	%r8, %rdi
	cmpq	$0, %rdi
	jbe 	L_aegis128l_encrypt$3
	addq	%r8, %rsi
	addq	%r8, %rax
	vpxor	%xmm1, %xmm1, %xmm1
	vmovdqu	%xmm1, 16(%rsp)
	vmovdqu	%xmm1, 32(%rsp)
	xorq	%r8, %r8
	jmp 	L_aegis128l_encrypt$6
L_aegis128l_encrypt$7:
	movb	(%rsi,%r8), %r9b
	movb	%r9b, 16(%rsp,%r8)
	incq	%r8
L_aegis128l_encrypt$6:
	cmpq	%rdi, %r8
	jb  	L_aegis128l_encrypt$7
	vmovdqu	16(%rsp), %xmm1
	vmovdqu	32(%rsp), %xmm4
	vpand	%xmm9, %xmm2, %xmm10
	vpand	%xmm5, %xmm6, %xmm11
	vpxor	%xmm3, %xmm6, %xmm12
	vpxor	%xmm7, %xmm2, %xmm13
	vpxor	%xmm10, %xmm12, %xmm10
	vpxor	%xmm11, %xmm13, %xmm11
	vpxor	%xmm10, %xmm1, %xmm10
	vpxor	%xmm11, %xmm4, %xmm11
	vpxor	%xmm1, %xmm0, %xmm1
	vpxor	%xmm4, %xmm8, %xmm4
	vmovdqu	%xmm5, %xmm12
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm4, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm3
	vaesenc	%xmm1, %xmm12, %xmm0
	vmovdqu	%xmm10, 16(%rsp)
	vmovdqu	%xmm11, 32(%rsp)
	xorq	%rsi, %rsi
	jmp 	L_aegis128l_encrypt$4
L_aegis128l_encrypt$5:
	movb	16(%rsp,%rsi), %r8b
	movb	%r8b, (%rax,%rsi)
	incq	%rsi
L_aegis128l_encrypt$4:
	cmpq	%rdi, %rsi
	jb  	L_aegis128l_encrypt$5
L_aegis128l_encrypt$3:
	movq	56(%rsp), %rax
	movq	48(%rsp), %rsi
	shlq	$3, %rax
	shlq	$3, %rsi
	movq	%rax, (%rsp)
	movq	%rsi, 8(%rsp)
	vpxor	(%rsp), %xmm2, %xmm1
	vpxor	%xmm1, %xmm0, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm3, %xmm2
	vaesenc	%xmm3, %xmm0, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm11
	vmovdqu	%xmm5, %xmm10
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm11, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm10, %xmm3
	vpxor	%xmm1, %xmm3, %xmm4
	vpxor	%xmm1, %xmm8, %xmm10
	vmovdqu	%xmm5, %xmm1
	vaesenc	%xmm5, %xmm6, %xmm5
	vaesenc	%xmm6, %xmm7, %xmm6
	vaesenc	%xmm7, %xmm8, %xmm7
	vaesenc	%xmm10, %xmm9, %xmm8
	vaesenc	%xmm9, %xmm2, %xmm9
	vaesenc	%xmm2, %xmm0, %xmm2
	vaesenc	%xmm0, %xmm3, %xmm0
	vaesenc	%xmm4, %xmm1, %xmm1
	cmpb	$16, %dl
	je  	L_aegis128l_encrypt$1
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm7, %xmm8, %xmm1
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm6, %xmm1, %xmm1
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm5, %xmm1, %xmm1
	vmovdqu	%xmm0, (%rcx)
	vmovdqu	%xmm1, 16(%rcx)
	jmp 	L_aegis128l_encrypt$2
L_aegis128l_encrypt$1:
	vpxor	%xmm0, %xmm1, %xmm0
	vpxor	%xmm2, %xmm0, %xmm0
	vpxor	%xmm9, %xmm0, %xmm0
	vpxor	%xmm8, %xmm0, %xmm0
	vpxor	%xmm7, %xmm0, %xmm0
	vpxor	%xmm6, %xmm0, %xmm0
	vmovdqu	%xmm0, (%rcx)
L_aegis128l_encrypt$2:
	movq	%r11, %rsp
	ret 
	.data
	.p2align	5
_glob_data:
glob_data:
      .byte -37
      .byte 61
      .byte 24
      .byte 85
      .byte 109
      .byte -62
      .byte 47
      .byte -15
      .byte 32
      .byte 17
      .byte 49
      .byte 66
      .byte 115
      .byte -75
      .byte 40
      .byte -35
      .byte 0
      .byte 1
      .byte 1
      .byte 2
      .byte 3
      .byte 5
      .byte 8
      .byte 13
      .byte 21
      .byte 34
      .byte 55
      .byte 89
      .byte -112
      .byte -23
      .byte 121
      .byte 98
