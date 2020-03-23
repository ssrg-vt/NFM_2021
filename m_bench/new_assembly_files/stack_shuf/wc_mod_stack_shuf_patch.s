	.section	.text
	.align	16
	#Procedure 0x400810

	.globl report
	.type report, @function
report:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	r8, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400880

	.globl getword
	.type getword, @function
getword:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	feof
	cmp	eax, 0
	nop	
	je	.label_15
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_18
.label_15:
	lea	rsi, [rsi]
	jmp	.label_9
.label_9:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	_IO_getc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_13
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	mov	cl, al
	mov	rsp, rsp
	movzx	edi, cl
	lea	rsi, [rsi]
	call	isword
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_11
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [wcount]]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [wcount]],  rax
	nop	
	jmp	.label_13
.label_11:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [ccount]]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [word ptr [ccount]],  rax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_17
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [lcount]]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [word ptr [lcount]],  rax
.label_17:
	lea	rsi, [rsi]
	jmp	.label_9
.label_13:
	mov	rsp, rsp
	jmp	.label_8
.label_8:
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_12
	mov	rax,  qword ptr [word ptr [ccount]]
	add	rax, 1
	nop	
	mov	qword ptr [word ptr [ccount]],  rax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_10
	mov	rax,  qword ptr [word ptr [lcount]]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [lcount]],  rax
.label_10:
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	mov	cl, al
	mov	rsp, rsp
	movzx	edi, cl
	call	isword
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_14
	mov	rsp, rsp
	jmp	.label_12
.label_14:
	lea	rsi, [rsi]
	jmp	.label_16
.label_16:
	mov	rdi, qword ptr [rbp - 0x10]
	call	_IO_getc
	mov	dword ptr [rbp - 0x14], eax
	lea	rdi, [rdi]
	jmp	.label_8
.label_12:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], -1
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_18:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x400a30

	.globl isword
	.type isword, @function
isword:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	movsxd	rcx, edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edi, 0x400
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x400a80

	.globl counter
	.type counter, @function
counter:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	fopen
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_19
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.2
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rbp, rbp
	call	perrf
.label_19:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [lcount]],  0
	mov	qword ptr [word ptr [wcount]],  0
	mov	qword ptr [word ptr [ccount]],  0
.label_21:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	getword
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_20
	mov	rbp, rbp
	jmp	.label_21
.label_20:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	nop	
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi,  qword ptr [word ptr [ccount]]
	nop	
	mov	rdx,  qword ptr [word ptr [wcount]]
	mov	rcx,  qword ptr [word ptr [lcount]]
	mov	dword ptr [rbp - 0x14], eax
	call	report
	mov	rcx,  qword ptr [word ptr [ccount]]
	add	rcx,  qword ptr [word ptr [total_ccount]]
	mov	qword ptr [word ptr [total_ccount]],  rcx
	mov	rcx,  qword ptr [word ptr [wcount]]
	mov	rbp, rbp
	add	rcx,  qword ptr [word ptr [total_wcount]]
	nop	
	mov	qword ptr [word ptr [total_wcount]],  rcx
	mov	rcx,  qword ptr [word ptr [lcount]]
	add	rcx,  qword ptr [word ptr [total_lcount]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [total_lcount]],  rcx
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400bb0

	.globl perrf
	.type perrf, @function
perrf:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x180
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x100], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm4
	movaps	xmmword ptr [rbp - 0x120], xmm3
	movaps	xmmword ptr [rbp - 0x130], xmm2
	movaps	xmmword ptr [rbp - 0x140], xmm1
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	qword ptr [rbp - 0x168], r8
	nop	
	mov	qword ptr [rbp - 0x170], rcx
	nop	
	mov	qword ptr [rbp - 0x178], rdx
	nop	
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_22
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	nop	
	movaps	xmmword ptr [rbp - 0x90], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	mov	rbp, rbp
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x60], xmm4
	lea	rsi, [rsi]
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x50], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	nop	
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_22:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsi, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc0], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x180]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 8], r8
	nop	
	lea	r8, [rbp - 0xd0]
	mov	qword ptr [rbp - 0x10], r8
	mov	rsp, rsp
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], 8
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	edi, 1
	lea	rdx, [rbp - 0x20]
	mov	rsp, rsp
	call	error_print
	add	rsp, 0x180
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x400d60

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 8], 2
	lea	rdi, [rdi]
	jge	.label_23
	movabs	rdi, OFFSET FLAT:.str.3
	mov	al, 0
	call	errf
.label_23:
	mov	dword ptr [rbp - 0x14], 1
.label_25:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	jge	.label_24
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	call	counter
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_25
.label_24:
	cmp	dword ptr [rbp - 8], 2
	mov	rbp, rbp
	jle	.label_26
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [total_ccount]]
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [total_wcount]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [total_lcount]]
	lea	rdi, [rdi]
	call	report
.label_26:
	xor	eax, eax
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400e30

	.globl errf
	.type errf, @function
errf:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x180
	test	al, al
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x100], xmm5
	movaps	xmmword ptr [rbp - 0x110], xmm4
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x120], xmm3
	movaps	xmmword ptr [rbp - 0x130], xmm2
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	qword ptr [rbp - 0x168], r8
	mov	qword ptr [rbp - 0x170], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_27
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	nop	
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	mov	rbp, rbp
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x60], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm5
	mov	rsp, rsp
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_27:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x160]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x170]
	nop	
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdi
	nop	
	mov	r8, qword ptr [rbp - 0x158]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], r8
	nop	
	lea	r8, [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], r8
	nop	
	mov	dword ptr [rbp - 0x1c], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], 8
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	xor	edi, edi
	lea	rdx, [rbp - 0x20]
	lea	rsi, [rsi]
	call	error_print
	add	rsp, 0x180
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x400fd0

	.globl error_print
	.type error_print, @function
error_print:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	cmp	dword ptr [rbp - 4], 0
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	je	.label_28
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	call	perror
	lea	rsi, [rsi]
	jmp	.label_29
.label_28:
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x20], eax
.label_29:
	mov	edi, 1
	lea	rdi, [rdi]
	call	exit
	nop	dword ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]