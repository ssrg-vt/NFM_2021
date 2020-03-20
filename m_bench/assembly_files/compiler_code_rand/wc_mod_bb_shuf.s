	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4008b0

	.globl perrf
	.type perrf, @function
perrf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	test	al, al
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	movaps	xmmword ptr [rbp - 0x100], xmm5
	movaps	xmmword ptr [rbp - 0x110], xmm4
	movaps	xmmword ptr [rbp - 0x120], xmm3
	movaps	xmmword ptr [rbp - 0x130], xmm2
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	qword ptr [rbp - 0x168], r8
	mov	qword ptr [rbp - 0x170], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_9
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_9:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xd0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, 1
	lea	rdx, [rbp - 0x20]
	call	error_print
	add	rsp, 0x180
	pop	rbp
	ret	
.label_13:
	movabs	rsi, OFFSET FLAT:label_10
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x20], eax
.label_11:
	mov	edi, 1
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x400a37

	.globl error_print
	.type error_print, @function
error_print:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vfprintf
	cmp	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_13
	movabs	rdi, OFFSET FLAT:label_12
	call	perror
	jmp	.label_11
.label_16:
	cmp	dword ptr [rbp - 8], 2
	jle	.label_14
	movabs	rdi, OFFSET FLAT:label_17
	mov	rsi,  qword ptr [word ptr [total_ccount]]
	mov	rdx,  qword ptr [word ptr [total_wcount]]
	mov	rcx,  qword ptr [word ptr [total_lcount]]
	call	report
.label_14:
	xor	eax, eax
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x400abd

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	dword ptr [rbp - 8], 2
	jge	.label_18
	movabs	rdi, OFFSET FLAT:label_19
	mov	al, 0
	call	errf
.label_18:
	mov	dword ptr [rbp - 0x14], 1
.label_15:
	mov	eax, dword ptr [rbp - 0x14]
	cmp	eax, dword ptr [rbp - 8]
	jge	.label_16
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	counter
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_15
	.section	.text
	.align	16
	#Procedure 0x400b20

	.globl counter
	.type counter, @function
counter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rsi, OFFSET FLAT:label_20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	fopen
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_24
	movabs	rdi, OFFSET FLAT:label_23
	mov	rsi, qword ptr [rbp - 8]
	mov	al, 0
	call	perrf
.label_24:
	mov	qword ptr [word ptr [lcount]],  0
	mov	qword ptr [word ptr [wcount]],  0
	mov	qword ptr [word ptr [ccount]],  0
.label_22:
	mov	rdi, qword ptr [rbp - 0x10]
	call	getword
	cmp	eax, 0
	je	.label_21
	jmp	.label_22
.label_21:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi,  qword ptr [word ptr [ccount]]
	mov	rdx,  qword ptr [word ptr [wcount]]
	mov	rcx,  qword ptr [word ptr [lcount]]
	mov	dword ptr [rbp - 0x14], eax
	call	report
	mov	rcx,  qword ptr [word ptr [ccount]]
	add	rcx,  qword ptr [word ptr [total_ccount]]
	mov	qword ptr [word ptr [total_ccount]],  rcx
	mov	rcx,  qword ptr [word ptr [wcount]]
	add	rcx,  qword ptr [word ptr [total_wcount]]
	mov	qword ptr [word ptr [total_wcount]],  rcx
	mov	rcx,  qword ptr [word ptr [lcount]]
	add	rcx,  qword ptr [word ptr [total_lcount]]
	mov	qword ptr [word ptr [total_lcount]],  rcx
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x400c20

	.globl errf
	.type errf, @function
errf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	test	al, al
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	movaps	xmmword ptr [rbp - 0x100], xmm5
	movaps	xmmword ptr [rbp - 0x110], xmm4
	movaps	xmmword ptr [rbp - 0x120], xmm3
	movaps	xmmword ptr [rbp - 0x130], xmm2
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	qword ptr [rbp - 0x168], r8
	mov	qword ptr [rbp - 0x170], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_25
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_25:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	mov	qword ptr [rbp - 8], r8
	lea	r8, [rbp - 0xd0]
	mov	qword ptr [rbp - 0x10], r8
	lea	r8, [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], r8
	mov	dword ptr [rbp - 0x1c], 0x30
	mov	dword ptr [rbp - 0x20], 8
	mov	rsi, qword ptr [rbp - 8]
	xor	edi, edi
	lea	rdx, [rbp - 0x20]
	call	error_print
	add	rsp, 0x180
	pop	rbp
	ret	
	nop	dword ptr [rax]
.label_35:
	jmp	.label_26
.label_26:
	mov	rdi, qword ptr [rbp - 0x10]
	call	_IO_getc
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_29
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movzx	edi, cl
	call	isword
	cmp	eax, 0
	je	.label_33
	mov	rax,  qword ptr [word ptr [wcount]]
	add	rax, 1
	mov	qword ptr [word ptr [wcount]],  rax
	jmp	.label_29
	.section	.text
	.align	16
	#Procedure 0x400dc9

	.globl getword
	.type getword, @function
getword:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	feof
	cmp	eax, 0
	je	.label_35
	mov	dword ptr [rbp - 4], 0
	jmp	.label_36
.label_30:
	cmp	dword ptr [rbp - 0x14], -1
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_36:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
.label_29:
	jmp	.label_27
.label_27:
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_30
	mov	rax,  qword ptr [word ptr [ccount]]
	add	rax, 1
	mov	qword ptr [word ptr [ccount]],  rax
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_32
	mov	rax,  qword ptr [word ptr [lcount]]
	add	rax, 1
	mov	qword ptr [word ptr [lcount]],  rax
.label_32:
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movzx	edi, cl
	call	isword
	cmp	eax, 0
	jne	.label_31
	jmp	.label_30
.label_31:
	jmp	.label_34
.label_34:
	mov	rdi, qword ptr [rbp - 0x10]
	call	_IO_getc
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_27
.label_33:
	mov	rax,  qword ptr [word ptr [ccount]]
	add	rax, 1
	mov	qword ptr [word ptr [ccount]],  rax
	cmp	dword ptr [rbp - 0x14], 0xa
	jne	.label_28
	mov	rax,  qword ptr [word ptr [lcount]]
	add	rax, 1
	mov	qword ptr [word ptr [lcount]],  rax
.label_28:
	jmp	.label_26
	.section	.text
	.align	16
	#Procedure 0x400ec0

	.globl report
	.type report, @function
report:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_37
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x24], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x400f10

	.globl isword
	.type isword, @function
isword:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x10], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 0x400
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
