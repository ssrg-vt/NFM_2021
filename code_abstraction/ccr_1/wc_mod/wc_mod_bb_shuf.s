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

	.globl errf
	.type errf, @function
errf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_9
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_9:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rdx, [rsp]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	call	error_print
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400950

	.globl report
	.type report, @function
report:
	mov	r8, rsi
	mov	r9, rdi
	mov	edi, OFFSET FLAT:label_11
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, r8
	mov	r8, r9
	jmp	printf
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400970

	.globl perrf
	.type perrf, @function
perrf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_12
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_12:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_13
	call	error_print
	nop	word ptr cs:[rax + rax]
.label_16:
	xor	eax, eax
	mov	rsi, r14
	call	perrf
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x400a1d

	.globl counter
	.type counter, @function
counter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	esi, OFFSET FLAT:label_15
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_16
	mov	qword ptr [word ptr [rip + lcount]],  0
	mov	qword ptr [word ptr [rip + wcount]],  0
	mov	qword ptr [word ptr [rip + ccount]],  0
	nop	
.label_14:
	mov	rdi, rbx
	call	getword
	test	eax, eax
	jne	.label_14
	mov	rdi, rbx
	call	fclose
	mov	rsi,  qword ptr [word ptr [rip + ccount]]
	mov	rdx,  qword ptr [word ptr [rip + wcount]]
	mov	rcx,  qword ptr [word ptr [rip + lcount]]
	mov	rdi, r14
	call	report
	mov	rax,  qword ptr [word ptr [rip + ccount]]
	add	qword ptr [word ptr [rip + total_ccount]],  rax
	mov	rax,  qword ptr [word ptr [rip + wcount]]
	add	qword ptr [word ptr [rip + total_wcount]],  rax
	mov	rax,  qword ptr [word ptr [rip + lcount]]
	add	qword ptr [word ptr [rip + total_lcount]],  rax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x400ac0

	.globl isword
	.type isword, @function
isword:
	push	rbx
	mov	ebx, edi
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbx*2]
	and	eax, 0x400
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400ae0

	.globl getword
	.type getword, @function
getword:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	feof
	xor	ebp, ebp
	test	eax, eax
	jne	.label_20
	mov	rdi, r14
	call	_IO_getc
	mov	ebx, eax
	cmp	ebx, -1
	je	.label_20
	nop	word ptr cs:[rax + rax]
.label_21:
	movzx	edi, bl
	call	isword
	test	eax, eax
	jne	.label_22
	inc	qword ptr [word ptr [rip + ccount]]
	cmp	ebx, 0xa
	jne	.label_23
	inc	qword ptr [word ptr [rip + lcount]]
.label_23:
	mov	rdi, r14
	call	_IO_getc
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_21
	jmp	.label_19
.label_22:
	inc	qword ptr [word ptr [rip + wcount]]
	mov	ebp, 1
	nop	dword ptr [rax]
.label_17:
	inc	qword ptr [word ptr [rip + ccount]]
	cmp	ebx, 0xa
	jne	.label_18
	inc	qword ptr [word ptr [rip + lcount]]
.label_18:
	movzx	edi, bl
	call	isword
	test	eax, eax
	je	.label_19
	mov	rdi, r14
	call	_IO_getc
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_17
.label_20:
	xor	ebp, ebp
.label_19:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x400b90

	.globl main
	.type main, @function
main:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	cmp	edi, 2
	mov	r15d, edi
	jl	.label_24
	mov	ebx, 1
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	rdi, qword ptr [r14 + rbx*8]
	call	counter
	inc	rbx
	cmp	r15d, ebx
	jne	.label_26
	cmp	r15d, 3
	jl	.label_25
	mov	rsi,  qword ptr [word ptr [rip + total_ccount]]
	mov	rdx,  qword ptr [word ptr [rip + total_wcount]]
	mov	rcx,  qword ptr [word ptr [rip + total_lcount]]
	mov	edi, OFFSET FLAT:label_27
	call	report
.label_25:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_24:
	xor	eax, eax
	call	errf
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x400c00

	.globl error_print
	.type error_print, @function
error_print:
	push	rbx
	mov	ebx, edi
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	vfprintf
	test	ebx, ebx
	jne	.label_29
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	call	fputc
	mov	edi, 1
	call	exit
.label_29:
	mov	edi, OFFSET FLAT:label_28
	call	perror
	mov	edi, 1
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
