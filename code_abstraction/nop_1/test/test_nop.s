	.section	.text
	.align	32
	#Procedure 0x4014e0
	.globl usage
	.type usage, @function
usage:

	mov	rbp, rbp
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	nop	
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	__fprintf_chk
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401840

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.24
	nop	dword ptr [rax + rax]
.label_10:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.19
	lea	rsi, [rsi]
	call	strcmp
	test	eax, eax
	mov	rsp, rsp
	je	.label_9
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.19
	mov	rsp, rsp
	cmovne	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.33
	mov	ecx, OFFSET FLAT:.str.34
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	mov	rsp, rsp
	mov	edi, 5
	mov	rbp, rbp
	xor	esi, esi
	call	setlocale
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_8
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	test	eax, eax
	je	.label_8
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.36
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14d, OFFSET FLAT:.str.19
	mov	rsp, rsp
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.34
	mov	ecx, OFFSET FLAT:.str.19
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.39
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmove	rcx, rax
	mov	rsp, rsp
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	mov	rbp, rbp
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4019e0

	.globl main
	.type main, @function
main:
	push	r14
	nop	
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, rsi
	nop	
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	mov	rsp, rsp
	call	set_program_name
	lea	rdi, [rdi]
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	nop	
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	mov	rbp, rbp
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + argv]],  r14
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + argc]],  ebx
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  1
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	cmp	ebx, 2
	nop	
	jl	.label_11
	lea	rdi, [rdi]
	dec	ebx
	mov	rbp, rbp
	mov	edi, ebx
	call	posixtest
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	cmp	ecx,  dword ptr [dword ptr [rip + argc]]
	nop	
	jne	.label_12
	lea	rdi, [rdi]
	movzx	eax, al
	xor	eax, 1
.label_11:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_12:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	lea	rdi, [rdi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbx, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	nop	
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x401ae0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401af0

	.globl posixtest
	.type posixtest, @function
posixtest:
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	lea	eax, [rdi - 1]
	lea	rsi, [rsi]
	cmp	eax, 3
	ja	.label_18
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_15]]
.label_479:
	call	one_argument
	jmp	.label_16
.label_480:
	nop	
	call	two_arguments
	jmp	.label_16
.label_481:
	mov	rbp, rbp
	call	three_arguments
	mov	rsp, rsp
	jmp	.label_16
.label_482:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	nop	
	jne	.label_19
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 1], 0
	nop	
	je	.label_20
.label_19:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x28
	jne	.label_14
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 1], 0
	jne	.label_14
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0x18]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x29
	mov	rbp, rbp
	jne	.label_14
	cmp	byte ptr [rax + 1], 0
	nop	
	jne	.label_14
	xor	edi, edi
	call	advance
	call	two_arguments
	mov	bl, al
	nop	
	xor	edi, edi
	call	advance
	mov	rbp, rbp
	jmp	.label_13
.label_18:
	mov	rsp, rsp
	test	edi, edi
	jle	.label_17
.label_14:
	call	expr
.label_16:
	lea	rsi, [rsi]
	mov	bl, al
.label_13:
	mov	al, bl
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	ret	
.label_20:
	mov	rsp, rsp
	mov	edi, 1
	nop	
	call	advance
	call	three_arguments
	mov	rsp, rsp
	mov	bl, al
	lea	rdi, [rdi]
	xor	bl, 1
	lea	rdi, [rdi]
	jmp	.label_13
.label_17:
	mov	rbp, rbp
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401c20

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	sub	rsp, 0xc8
	mov	rbp, rbp
	mov	r10, rdi
	lea	rsi, [rsi]
	test	al, al
	je	.label_21
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_21:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], r9
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rdi, [rdi]
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb0], 8
	mov	rbp, rbp
	lea	rcx, [rsp + 0xb0]
	xor	edi, edi
	xor	esi, esi
	nop	
	mov	rdx, r10
	lea	rdi, [rdi]
	call	verror
	lea	rsi, [rsi]
	mov	edi, 2
	mov	rbp, rbp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl one_argument
	.type one_argument, @function
one_argument:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	ecx, [rax + 1]
	mov	rbp, rbp
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	setne	al
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d40

	.globl two_arguments
	.type two_arguments, @function
two_arguments:
	push	rax
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	nop	
	jne	.label_22
	cmp	byte ptr [rax + 1], 0
	je	.label_23
.label_22:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_24
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_24
	cmp	byte ptr [rax + 2], 0
	nop	
	jne	.label_24
	call	unary_operator
	mov	rsp, rsp
	pop	rcx
	mov	rsp, rsp
	ret	
.label_23:
	lea	rdi, [rdi]
	xor	edi, edi
	call	advance
	call	one_argument
	xor	al, 1
	pop	rcx
	ret	
.label_24:
	mov	rbp, rbp
	call	beyond
	.section	.text
	.align	32
	#Procedure 0x401dc0

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	movsxd	r14,  dword ptr [dword ptr [rip + pos]]
	mov	rbx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rbx + r14*8 + 8]
	lea	rsi, [rsi]
	call	binop
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_31
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	call	binary_operator
	mov	rsp, rsp
	jmp	.label_34
.label_31:
	mov	rax, qword ptr [rbx + r14*8]
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x21
	mov	rbp, rbp
	jne	.label_25
	cmp	byte ptr [rax + 1], 0
	nop	
	je	.label_28
.label_25:
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	lea	rsi, [rsi]
	jne	.label_26
	cmp	byte ptr [rax + 1], 0
	mov	rbp, rbp
	jne	.label_26
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x29
	mov	rbp, rbp
	jne	.label_26
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_33
.label_26:
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	jne	.label_27
	movzx	ecx, byte ptr [rax + 1]
	nop	
	cmp	ecx, 0x61
	jne	.label_27
	nop	
	cmp	byte ptr [rax + 2], 0
	lea	rsi, [rsi]
	je	.label_32
.label_27:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	nop	
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_30
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6f
	jne	.label_30
	nop	
	cmp	byte ptr [rax + 2], 0
	nop	
	jne	.label_30
.label_32:
	call	expr
.label_34:
	mov	bl, al
.label_29:
	mov	al, bl
	nop	
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	ret	
.label_28:
	mov	edi, 1
	call	advance
	call	two_arguments
	lea	rsi, [rsi]
	mov	bl, al
	xor	bl, 1
	nop	
	jmp	.label_29
.label_33:
	xor	edi, edi
	call	advance
	call	one_argument
	nop	
	mov	bl, al
	xor	edi, edi
	lea	rdi, [rdi]
	call	advance
	jmp	.label_29
.label_30:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	mov	rbp, rbp
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f90

	.globl advance
	.type advance, @function
advance:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	nop	
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jl	.label_35
	xor	dil, 1
	je	.label_36
.label_35:
	ret	
.label_36:
	push	rax
	lea	rsi, [rsi]
	call	beyond
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fc0

	.globl expr
	.type expr, @function
expr:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_37
	jmp	or
.label_37:
	nop	
	push	rax
	call	beyond
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401fe0

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x90
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsx	eax, byte ptr [rax + 1]
	mov	rsp, rsp
	add	eax, -0x47
	mov	rbp, rbp
	cmp	eax, 0x33
	ja	.label_56
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_41]]
.label_427:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	nop	
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	__lstat
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_45
	mov	rsp, rsp
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_39
.label_426:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_49
	nop	
	xor	ebx, ebx
	lea	rsi, [rsi]
	jmp	.label_39
.label_428:
	call	unary_advance
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	stat
	test	eax, eax
	je	.label_54
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_39
.label_429:
	mov	rbp, rbp
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_40
	xor	ebx, ebx
	jmp	.label_39
.label_430:
	call	unary_advance
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	call	stat
	test	eax, eax
	je	.label_44
	lea	rdi, [rdi]
	xor	ebx, ebx
	jmp	.label_39
.label_431:
	nop	
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_48
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_39
.label_432:
	mov	rsp, rsp
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_52
	xor	ebx, ebx
	jmp	.label_39
.label_433:
	mov	rbp, rbp
	call	unary_advance
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rbp, rbp
	lea	rsi, [rsp]
	call	stat
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_57
	xor	ebx, ebx
	jmp	.label_39
.label_434:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	mov	rbp, rbp
	test	eax, eax
	jmp	.label_38
.label_435:
	call	unary_advance
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_47
	xor	ebx, ebx
	jmp	.label_39
.label_436:
	nop	
	call	unary_advance
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	stat
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_50
	lea	rsi, [rsi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_39
.label_437:
	call	unary_advance
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_42
	xor	ebx, ebx
	nop	
	jmp	.label_39
.label_438:
	call	unary_advance
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	setne	bl
	jmp	.label_39
.label_439:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_51
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_39
.label_440:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rdi, [rdi]
	mov	esi, 4
	mov	rsp, rsp
	jmp	.label_46
.label_441:
	lea	rsi, [rsi]
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	stat
	test	eax, eax
	lea	rdi, [rdi]
	sete	al
	nop	
	cmp	qword ptr [rsp + 0x30], 0
	lea	rsi, [rsi]
	setg	bl
	lea	rsi, [rsi]
	and	bl, al
	lea	rsi, [rsi]
	jmp	.label_39
.label_442:
	mov	rsp, rsp
	call	unary_advance
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rsp, rsp
	call	find_int
	mov	r15, rax
	lea	rdi, [rdi]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x7fffffff
	ja	.label_39
	lea	rdi, [rdi]
	cmp	dword ptr [r14], 0x22
	nop	
	je	.label_39
	mov	edi, eax
	call	isatty
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	setne	bl
	jmp	.label_39
.label_443:
	mov	rsp, rsp
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_55
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_39
.label_444:
	lea	rsi, [rsi]
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	nop	
	mov	esi, 2
	jmp	.label_46
.label_445:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	rbp, rbp
	mov	esi, 1
.label_46:
	call	euidaccess
	test	eax, eax
	jmp	.label_38
.label_446:
	nop	
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 - 8]
	cmp	byte ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_38
.label_45:
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0x18]
	nop	
	cmp	eax, 0xa000
	lea	rdi, [rdi]
	jmp	.label_38
.label_49:
	call	__errno_location
	mov	rbx, rax
	nop	
	mov	dword ptr [rbx], 0
	nop	
	call	getegid
	mov	rsp, rsp
	cmp	eax, -1
	nop	
	jne	.label_43
	lea	rsi, [rsi]
	cmp	dword ptr [rbx], 0
	je	.label_43
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	jmp	.label_39
.label_54:
	lea	r14, [rsp]
	nop	
	mov	rdi, r14
	call	get_stat_atime
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rdi, r14
	call	get_stat_mtime
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, r15
	mov	rbp, rbp
	call	timespec_cmp
	lea	rsi, [rsi]
	test	eax, eax
	setg	bl
	mov	rsp, rsp
	jmp	.label_39
.label_40:
	call	__errno_location
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	cmp	eax, -1
	jne	.label_53
	mov	rbp, rbp
	cmp	dword ptr [rbx], 0
	mov	rsp, rsp
	je	.label_53
	xor	ebx, ebx
	nop	
	jmp	.label_39
.label_44:
	mov	rsp, rsp
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x18]
	mov	rbp, rbp
	cmp	eax, 0xc000
	mov	rsp, rsp
	jmp	.label_38
.label_48:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x6000
	jmp	.label_38
.label_52:
	mov	rbp, rbp
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x2000
	jmp	.label_38
.label_57:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	jmp	.label_38
.label_47:
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	mov	rbp, rbp
	jmp	.label_38
.label_50:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rsp + 0x19]
	mov	rsp, rsp
	and	bl, 4
	shr	bl, 2
	lea	rsi, [rsi]
	jmp	.label_39
.label_42:
	lea	rdi, [rdi]
	mov	bl, byte ptr [rsp + 0x19]
	mov	rbp, rbp
	and	bl, 2
	nop	
	shr	bl, 1
	jmp	.label_39
.label_51:
	nop	
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	jmp	.label_38
.label_55:
	mov	bl, byte ptr [rsp + 0x19]
	lea	rdi, [rdi]
	and	bl, 8
	mov	rbp, rbp
	shr	bl, 3
	jmp	.label_39
.label_43:
	cmp	eax, dword ptr [rsp + 0x20]
	jmp	.label_38
.label_53:
	mov	rsp, rsp
	cmp	eax, dword ptr [rsp + 0x1c]
.label_38:
	lea	rdi, [rdi]
	sete	bl
.label_39:
	mov	al, bl
	add	rsp, 0x90
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
.label_56:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	nop	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	call	quote
	mov	rbp, rbp
	mov	rcx, rax
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	test_syntax_error
	nop	
	.section	.text
	.align	32
	#Procedure 0x402720

	.globl beyond
	.type beyond, @function
beyond:
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + argc]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl unary_advance
	.type unary_advance, @function
unary_advance:
	lea	rdi, [rdi]
	push	rax
	mov	edi, 1
	call	advance
	lea	rdi, [rdi]
	inc	dword ptr [dword ptr [rip + pos]]
	pop	rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402790

	.globl find_int
	.type find_int, @function
find_int:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, rdi
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	r15, rax
	mov	r13, qword ptr [r15]
	nop	
	lea	r12, [r14 - 1]
	nop	word ptr [rax + rax]
.label_61:
	mov	rsp, rsp
	mov	bl, byte ptr [r12 + 1]
	inc	r12
	mov	rsp, rsp
	movsx	edi, bl
	mov	rsp, rsp
	call	to_uchar
	movzx	eax, al
	mov	rbp, rbp
	test	byte ptr [r13 + rax*2], 1
	jne	.label_61
	movzx	eax, bl
	cmp	eax, 0x2d
	sete	cl
	movzx	ebx, cl
	add	rbx, r12
	mov	rsp, rsp
	lea	rcx, [r12 + 1]
	cmp	eax, 0x2b
	mov	rsp, rsp
	cmove	rbx, rcx
	mov	rsp, rsp
	cmove	r12, rcx
	movsx	eax, byte ptr [rbx]
	mov	rsp, rsp
	add	eax, -0x30
	cmp	eax, 9
	nop	
	ja	.label_59
	nop	
.label_58:
	movsx	eax, byte ptr [rbx + 1]
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	add	eax, -0x30
	lea	rdi, [rdi]
	cmp	eax, 0xa
	jb	.label_58
	mov	r15, qword ptr [r15]
	nop	dword ptr [rax + rax]
.label_60:
	mov	rsp, rsp
	mov	bpl, byte ptr [rbx]
	movsx	edi, bpl
	mov	rbp, rbp
	call	to_uchar
	movzx	eax, al
	inc	rbx
	nop	
	test	byte ptr [r15 + rax*2], 1
	jne	.label_60
	test	bpl, bpl
	lea	rsi, [rsi]
	jne	.label_59
	mov	rax, r12
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_59:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsp, rsp
	mov	rbx, rax
	mov	rdi, r14
	mov	rsp, rsp
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028d0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4028e0

	.globl binop
	.type binop, @function
binop:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x3d
	nop	
	jne	.label_74
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 1], 0
	je	.label_66
.label_74:
	movzx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x21
	jne	.label_65
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x3d
	lea	rsi, [rsi]
	jne	.label_65
	lea	rsi, [rsi]
	mov	al, 1
	mov	rsp, rsp
	cmp	byte ptr [rdi + 2], 0
	je	.label_66
.label_65:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x3d
	mov	rbp, rbp
	jne	.label_69
	movzx	eax, byte ptr [rdi + 1]
	nop	
	cmp	eax, 0x3d
	mov	rsp, rsp
	jne	.label_69
	nop	
	mov	al, 1
	mov	rsp, rsp
	cmp	byte ptr [rdi + 2], 0
	je	.label_66
.label_69:
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_73
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x6e
	jne	.label_73
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	nop	
	jne	.label_73
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_66
.label_73:
	movzx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_63
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 1]
	mov	rbp, rbp
	cmp	eax, 0x6f
	jne	.label_63
	movzx	eax, byte ptr [rdi + 2]
	nop	
	cmp	eax, 0x74
	jne	.label_63
	nop	
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_66
.label_63:
	movzx	eax, byte ptr [rdi]
	mov	rsp, rsp
	cmp	eax, 0x2d
	jne	.label_72
	mov	rsp, rsp
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x65
	jne	.label_72
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x66
	nop	
	jne	.label_72
	mov	rsp, rsp
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 3], 0
	nop	
	je	.label_66
.label_72:
	movzx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_62
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x65
	lea	rsi, [rsi]
	jne	.label_62
	movzx	eax, byte ptr [rdi + 2]
	mov	rbp, rbp
	cmp	eax, 0x71
	nop	
	jne	.label_62
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 3], 0
	nop	
	je	.label_66
.label_62:
	movzx	eax, byte ptr [rdi]
	mov	rbp, rbp
	cmp	eax, 0x2d
	mov	rbp, rbp
	jne	.label_70
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6e
	jne	.label_71
	mov	rbp, rbp
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x65
	jne	.label_71
	mov	rsp, rsp
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_66
.label_71:
	mov	rsp, rsp
	mov	al, byte ptr [rdi]
.label_70:
	mov	rsp, rsp
	movzx	eax, al
	cmp	eax, 0x2d
	jne	.label_68
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x6c
	lea	rdi, [rdi]
	jne	.label_75
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_75
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	byte ptr [rdi + 3], 0
	je	.label_66
.label_75:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_67
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	lea	rsi, [rsi]
	jne	.label_68
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x65
	mov	rbp, rbp
	jne	.label_68
	nop	
	mov	al, 1
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + 3], 0
	nop	
	je	.label_66
.label_68:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_67
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x67
	nop	
	jne	.label_67
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_67
	nop	
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_66
.label_67:
	movzx	ecx, byte ptr [rdi]
	mov	rsp, rsp
	mov	eax, 0x2d
	mov	rbp, rbp
	sub	eax, ecx
	jne	.label_64
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 0x67
	sub	eax, ecx
	jne	.label_64
	mov	rbp, rbp
	movzx	ecx, byte ptr [rdi + 2]
	mov	eax, 0x65
	sub	eax, ecx
	jne	.label_64
	nop	
	movzx	eax, byte ptr [rdi + 3]
	mov	rbp, rbp
	neg	eax
.label_64:
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	sete	al
.label_66:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x160
	mov	ebx, edi
	test	bl, bl
	je	.label_82
	lea	rdi, [rdi]
	xor	edi, edi
	call	advance
.label_82:
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	lea	eax, [rbp + 1]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	add	ecx, -2
	nop	
	cmp	eax, ecx
	mov	rsp, rsp
	jge	.label_103
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	nop	
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x2d
	jne	.label_88
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x6c
	mov	rbp, rbp
	jne	.label_91
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 2], 0
	je	.label_94
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_97
.label_103:
	xor	r14d, r14d
	lea	rdi, [rdi]
	jmp	.label_97
.label_88:
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_97
.label_91:
	xor	r14d, r14d
	jmp	.label_97
.label_94:
	xor	edi, edi
	lea	rdi, [rdi]
	call	advance
	mov	r14b, 1
.label_97:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0x3d
	je	.label_98
	movzx	ecx, cl
	cmp	ecx, 0x2d
	jne	.label_99
	movzx	eax, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	eax, 0x6c
	mov	rbp, rbp
	je	.label_106
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	cmp	eax, 0x67
	jne	.label_109
.label_106:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x65
	je	.label_78
	movzx	eax, al
	cmp	eax, 0x74
	mov	rsp, rsp
	je	.label_78
.label_109:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x65
	jne	.label_81
	movzx	eax, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	eax, 0x71
	lea	rsi, [rsi]
	je	.label_78
.label_81:
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rax, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6e
	lea	rdi, [rdi]
	jne	.label_86
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x65
	jne	.label_86
.label_78:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	cmp	byte ptr [rax + 3], 0
	mov	rbp, rbp
	je	.label_92
.label_86:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x65
	je	.label_96
	mov	rbp, rbp
	cmp	ecx, 0x6f
	lea	rdi, [rdi]
	je	.label_100
	nop	
	cmp	ecx, 0x6e
	lea	rsi, [rsi]
	jne	.label_84
	movzx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x74
	nop	
	jne	.label_84
	cmp	byte ptr [rax + 3], 0
	lea	rdi, [rdi]
	jne	.label_84
	mov	rbp, rbp
	add	dword ptr [dword ptr [rip + pos]],  3
	lea	rsi, [rsi]
	or	r14b, bl
	movzx	eax, r14b
	cmp	eax, 1
	je	.label_108
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0x20]
	mov	rbp, rbp
	call	get_mtime
	mov	bl, al
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rsp]
	lea	rsi, [rsi]
	call	get_mtime
	test	bl, bl
	lea	rdi, [rdi]
	je	.label_80
	nop	
	test	al, al
	je	.label_80
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	timespec_cmp
	test	eax, eax
	setg	bl
	lea	rdi, [rdi]
	jmp	.label_80
.label_98:
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	mov	rsp, rsp
	je	.label_95
	lea	rdi, [rdi]
	movzx	ecx, cl
	cmp	ecx, 0x3d
	mov	rsp, rsp
	jne	.label_99
	mov	rbp, rbp
	cmp	byte ptr [rax + 2], 0
	nop	
	je	.label_95
.label_99:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	jne	.label_101
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x3d
	mov	rsp, rsp
	jne	.label_101
	cmp	byte ptr [rax + 2], 0
	jne	.label_101
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	nop	
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	setne	bl
	mov	rsp, rsp
	jmp	.label_90
.label_95:
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	sete	bl
.label_90:
	mov	rbp, rbp
	lea	eax, [rbp + 3]
	lea	rsi, [rsi]
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_80:
	mov	rbp, rbp
	mov	al, bl
	add	rsp, 0x160
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_92:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	test	bl, bl
	mov	rsp, rsp
	je	.label_89
	nop	
	call	strlen
	nop	
	lea	rsi, [rsp + 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	umaxtostr
	lea	rsi, [rsi]
	jmp	.label_107
.label_96:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	mov	rbp, rbp
	jne	.label_84
	cmp	byte ptr [rax + 3], 0
	nop	
	jne	.label_84
	mov	rbp, rbp
	add	dword ptr [dword ptr [rip + pos]],  3
	mov	rsp, rsp
	or	r14b, bl
	lea	rdi, [rdi]
	movzx	eax, r14b
	cmp	eax, 1
	je	.label_102
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0xd0]
	call	stat
	lea	rdi, [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_77
	mov	rsp, rsp
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_80
.label_100:
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax + 2]
	lea	rdi, [rdi]
	cmp	ecx, 0x74
	jne	.label_84
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 3], 0
	mov	rbp, rbp
	jne	.label_84
	mov	rbp, rbp
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	movzx	eax, r14b
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_85
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbp*8]
	nop	
	lea	rsi, [rsp + 0x20]
	call	get_mtime
	nop	
	mov	r14b, al
	nop	
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp]
	call	get_mtime
	mov	bl, al
	test	r14b, r14b
	je	.label_80
	test	bl, bl
	je	.label_80
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	timespec_cmp
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rbp, rbp
	shr	ebx, 0x1f
	jmp	.label_80
.label_89:
	call	find_int
.label_107:
	mov	rbx, rax
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_104
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x18]
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	mov	rbp, rbp
	jmp	.label_79
.label_104:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rdi, [rdi]
	call	find_int
.label_79:
	mov	rsi, rax
	mov	rdi, rbx
	call	strintcmp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rcx + rbp*8 + 8]
	mov	cl, byte ptr [rcx + 2]
	add	dword ptr [dword ptr [rip + pos]],  3
	nop	
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + rbp*8 + 8]
	movzx	edx, byte ptr [rdx + 1]
	cmp	edx, 0x67
	je	.label_83
	nop	
	movzx	edx, dl
	movzx	ecx, cl
	mov	rbp, rbp
	cmp	edx, 0x6c
	jne	.label_87
	lea	rdi, [rdi]
	cmp	ecx, 0x65
	sete	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	eax, ecx
	setl	bl
	jmp	.label_80
.label_77:
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	nop	
	lea	rsi, [rsp + 0x40]
	mov	rsp, rsp
	call	stat
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_105
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_80
.label_83:
	lea	rsi, [rsi]
	movzx	ecx, cl
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	cmp	ecx, 0x65
	mov	ecx, 0xffffffff
	lea	rsi, [rsi]
	cmovne	ecx, edx
	cmp	eax, ecx
	lea	rdi, [rdi]
	setg	bl
	mov	rsp, rsp
	jmp	.label_80
.label_87:
	nop	
	cmp	ecx, 0x65
	nop	
	sete	cl
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	setne	bl
	xor	bl, cl
	lea	rdi, [rdi]
	xor	bl, 1
	jmp	.label_80
.label_105:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0x40]
	jne	.label_76
	nop	
	mov	rax, qword ptr [rsp + 0xd8]
	nop	
	cmp	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	sete	bl
	mov	rbp, rbp
	jmp	.label_80
.label_76:
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	jmp	.label_80
.label_101:
	mov	rsp, rsp
	call	abort
.label_84:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rdi, qword ptr [rax + rbp*8 + 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	nop	
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	test_syntax_error
.label_108:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.62
	jmp	.label_93
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	jmp	.label_93
.label_85:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.64
.label_93:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rdi, rcx
	mov	rsp, rsp
	call	test_syntax_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4031d0

	.globl get_mtime
	.type get_mtime, @function
get_mtime:
	push	rbp
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	nop	
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	call	stat
	mov	ebp, eax
	test	ebp, ebp
	lea	rsi, [rsi]
	jne	.label_110
	lea	rdi, [rsp + 8]
	nop	
	call	get_stat_mtime
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rdx
.label_110:
	test	ebp, ebp
	sete	al
	add	rsp, 0x98
	pop	rbx
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403220

	.globl or
	.type or, @function
or:
	push	rbx
	lea	rdi, [rdi]
	call	and
	mov	bl, al
	mov	rsp, rsp
	jmp	.label_113
.label_111:
	xor	edi, edi
	lea	rdi, [rdi]
	call	advance
	mov	rsp, rsp
	call	and
	mov	rbp, rbp
	or	bl, al
.label_113:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_112
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	nop	
	jne	.label_112
	nop	
	movzx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x6f
	lea	rsi, [rsi]
	jne	.label_112
	cmp	byte ptr [rax + 2], 0
	je	.label_111
.label_112:
	and	bl, 1
	mov	rbp, rbp
	mov	al, bl
	pop	rbx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4032a0

	.globl and
	.type and, @function
and:
	lea	rsi, [rsi]
	push	rbx
	call	term
	mov	bl, al
	jmp	.label_115
	nop	dword ptr [rax]
.label_116:
	nop	
	xor	edi, edi
	call	advance
	lea	rsi, [rsi]
	call	term
	and	bl, al
.label_115:
	nop	
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	nop	
	jge	.label_114
	mov	rsp, rsp
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_114
	nop	
	movzx	ecx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	ecx, 0x61
	jne	.label_114
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 2], 0
	mov	rbp, rbp
	je	.label_116
.label_114:
	test	bl, bl
	nop	
	setne	al
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403320

	.globl term
	.type term, @function
term:
	push	rbp
	nop	
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	xor	ebp, ebp
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_136:
	mov	edi, 1
	call	advance
	lea	rsi, [rsi]
	xor	bpl, 1
	mov	eax,  dword ptr [dword ptr [rip + pos]]
.label_123:
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_132
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	nop	
	jne	.label_132
	cmp	byte ptr [rax + 1], 0
	je	.label_136
.label_132:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	mov	rbp, rbp
	jge	.label_117
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	mov	rsp, rsp
	jne	.label_120
	cmp	byte ptr [rax + 1], 0
	je	.label_125
.label_120:
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	sub	ecx, eax
	cmp	ecx, 4
	lea	rsi, [rsi]
	jl	.label_121
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_121
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 1]
	mov	rsp, rsp
	cmp	ecx, 0x6c
	jne	.label_121
	cmp	byte ptr [rax + 2], 0
	jne	.label_121
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 0x10]
	call	binop
	test	al, al
	je	.label_121
	nop	
	mov	edi, 1
	jmp	.label_122
.label_121:
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	nop	
	sub	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 3
	mov	rbp, rbp
	jl	.label_124
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	call	binop
	test	al, al
	mov	rbp, rbp
	je	.label_124
	mov	rbp, rbp
	xor	edi, edi
.label_122:
	call	binary_operator
	movzx	ebx, al
	jmp	.label_134
.label_124:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_119
	nop	
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_119
	mov	rbp, rbp
	cmp	byte ptr [rax + 2], 0
	mov	rbp, rbp
	je	.label_129
.label_119:
	lea	rdi, [rdi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	lea	rdi, [rdi]
	setne	al
	mov	rsp, rsp
	jmp	.label_126
.label_125:
	mov	ebx, 1
	mov	edi, 1
	call	advance
	mov	edi,  dword ptr [dword ptr [rip + pos]]
	inc	edi
	lea	rdi, [rdi]
	cmp	edi,  dword ptr [dword ptr [rip + argc]]
	jge	.label_133
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	nop	
	mov	esi, 1
	mov	edx,  dword ptr [dword ptr [rip + argc]]
	nop	dword ptr [rax]
.label_130:
	movsxd	rdi, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + rdi*8]
	movzx	ebx, byte ptr [rdi]
	cmp	ebx, 0x29
	nop	
	jne	.label_135
	mov	rsp, rsp
	cmp	byte ptr [rdi + 1], 0
	nop	
	je	.label_127
.label_135:
	cmp	esi, 4
	lea	rsi, [rsi]
	je	.label_131
	mov	rbp, rbp
	lea	ebx, [rsi + 1]
	mov	rsp, rsp
	lea	edi, [rcx + rsi + 1]
	lea	rsi, [rsi]
	cmp	edi, edx
	lea	rdi, [rdi]
	mov	esi, ebx
	jl	.label_130
	jmp	.label_133
.label_129:
	call	unary_operator
	lea	rsi, [rsi]
	movzx	ebx, al
	mov	rbp, rbp
	jmp	.label_134
.label_131:
	lea	rdi, [rdi]
	mov	ebx,  dword ptr [dword ptr [rip + argc]]
	sub	ebx,  dword ptr [dword ptr [rip + pos]]
	mov	rbp, rbp
	jmp	.label_133
.label_127:
	mov	ebx, esi
.label_133:
	mov	rbp, rbp
	mov	edi, ebx
	nop	
	call	posixtest
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	test	rcx, rcx
	je	.label_118
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx]
	mov	rsp, rsp
	cmp	edx, 0x29
	jne	.label_128
	cmp	byte ptr [rcx + 1], 0
	nop	
	jne	.label_128
.label_126:
	movzx	ebx, al
	xor	edi, edi
	lea	rsi, [rsi]
	call	advance
.label_134:
	lea	rdi, [rdi]
	and	bpl, 1
	lea	rsi, [rsi]
	movzx	eax, bpl
	cmp	eax, ebx
	lea	rsi, [rsi]
	setne	al
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_117:
	call	beyond
.label_128:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	r14, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	call	quote_n
	mov	rbx, rax
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	edi, 1
	call	quote_n
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rdx, rcx
	nop	
	call	test_syntax_error
.label_118:
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.42
	mov	rbp, rbp
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	test_syntax_error
	.section	.text
	.align	32
	#Procedure 0x4036a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4036b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_140
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_137
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_137
.label_140:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_139
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_137:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_138
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_139:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_138:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4037c0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_141:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_141
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403820

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_142
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_144
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_144
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_143
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_143:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_144:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_142:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403910
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403960
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403980
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4039a0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a10
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a30

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_145
	test	rdx, rdx
	nop	
	je	.label_145
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_145:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a70
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b10

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_171:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_265
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_153]]
.label_516:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_517:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_191
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_191
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_226:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_246
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_246:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_226
.label_191:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_239
.label_509:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_239
.label_512:
	mov	rsp, rsp
	mov	al, 1
.label_510:
	mov	r15b, 1
.label_513:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_254
	mov	cl, al
.label_254:
	lea	rdi, [rdi]
	mov	al, cl
.label_511:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_256
	test	r10, r10
	je	.label_263
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_152
.label_256:
	xor	ecx, ecx
	jmp	.label_152
.label_514:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_155
	test	r10, r10
	je	.label_161
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_166
.label_515:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_239
.label_263:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_152:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_239
.label_155:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_166
.label_161:
	mov	rbp, rbp
	mov	eax, 1
.label_166:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_239:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_224
	nop	word ptr [rax + rax]
.label_169:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_224:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_146
	cmp	rsi, rbp
	jne	.label_149
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_146:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_150
.label_149:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_163
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_168
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_168
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_168:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_203
.label_163:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_243:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_209
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_216]]
.label_455:
	test	rsi, rsi
	jne	.label_206
	jmp	.label_225
	nop	word ptr [rax + rax]
.label_203:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_242
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_243
	mov	rsp, rsp
	jmp	.label_158
.label_242:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_243
.label_459:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_200
	test	rsi, rsi
	nop	
	jne	.label_264
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_225
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_162
.label_448:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_186
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_158
	cmp	edi, 2
	nop	
	jne	.label_165
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_167
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_173
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_173:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_184
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_184:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_194
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_194:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_202
.label_449:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_208
.label_450:
	mov	cl, 0x74
	jmp	.label_213
.label_451:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_208
.label_452:
	mov	bl, 0x66
	jmp	.label_208
.label_453:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_213
.label_456:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_220
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_151
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_234
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_234:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_245:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_250:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_257
.label_457:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_248
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_148
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_151
.label_148:
	mov	rdi, r14
	jmp	.label_206
.label_458:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_160
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_151
	mov	rdi, r14
	jmp	.label_172
.label_209:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_175
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_231:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_201
	test	dl, dl
	mov	rsp, rsp
	je	.label_201
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_162
.label_200:
	test	rsi, rsi
	jne	.label_221
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_221
.label_225:
	mov	rbp, rbp
	mov	dl, 1
.label_454:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_158
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_162
.label_186:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_206
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_224
.label_220:
	mov	rdi, r14
.label_257:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_162
.label_160:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_213
.label_172:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_227
.label_213:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_158
.label_208:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_162
	lea	rsi, [rsi]
	jmp	.label_178
.label_175:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_199
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_199:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_236:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_176
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_181
	cmp	rbp, -2
	nop	
	je	.label_197
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_154
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_218:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_187
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_195
.label_187:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_218
.label_154:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_244
	xor	r15d, r15d
.label_244:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_236
	jmp	.label_231
.label_221:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_162
.label_248:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_206
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_206
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_206
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_251
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_179
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_158
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_259
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_259:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_170
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_170:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_252
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_252:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_190
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_190:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_162
.label_206:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_162:
	test	r12b, r12b
	je	.label_189
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_205
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_189:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_207
.label_205:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_215
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_227
	jmp	.label_178
	nop	word ptr cs:[rax + rax]
.label_207:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_178
	jmp	.label_227
.label_215:
	mov	bl, r13b
	mov	rsi, r14
.label_178:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_158
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_211
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_211
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_228:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_247
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_255
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_211:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_266
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_266:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_157
.label_264:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_162
.label_201:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_241
	nop	word ptr cs:[rax + rax]
.label_219:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_241:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_180
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_183
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_192
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_192:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_183
	nop	dword ptr [rax]
.label_180:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_151
	cmp	r14d, 2
	jne	.label_217
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_217
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_223:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_232
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_232:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_240
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_240:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_217:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_235
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_235:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_147
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_147:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_260
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_260:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_183:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_227
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_174
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_156
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_177:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_193
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_193:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_156
	nop	word ptr cs:[rax + rax]
.label_174:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_156:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_219
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_227:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_229
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_229
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_230:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_238
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_238:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
.label_229:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_157:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_169
.label_165:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_202
.label_167:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_202:
	cmp	rcx, r10
	jae	.label_261
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_261:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_267
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_182
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_164
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_258
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_258:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_188
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_188:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_162
.label_267:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_162
.label_182:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_162
.label_164:
	xor	r15d, r15d
	jmp	.label_162
.label_176:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_212
.label_181:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_233
.label_197:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_198
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_237:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_214
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_237
	xor	r15d, r15d
	nop	
	jmp	.label_212
.label_198:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_233:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_212:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_231
.label_214:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_212
.label_251:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_162
.label_179:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_162
	nop	word ptr cs:[rax + rax]
.label_150:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_253
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_151
.label_253:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_159
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_159
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_222
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_159
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_171
.label_159:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_185
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_185
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_185
	inc	rdx
	nop	dword ptr [rax + rax]
.label_204:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_196
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_196:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_204
.label_185:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_210
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_210
.label_158:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_249:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_262:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_210:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_195:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_249
.label_151:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_249
.label_222:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_262
.label_265:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_268
	mov	qword ptr [rax], rbx
.label_268:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_269
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_270:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_270
.label_269:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_273
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_271]], OFFSET FLAT:slot0
.label_273:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_272
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_272:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4054a0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_274
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_279
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_277
.label_279:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_280
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_276
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_276:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_277:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_275
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_278
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_278:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_275:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_274:
	lea	rdi, [rdi]
	call	abort
.label_280:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x405710

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405720
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405760

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057c0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_281
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_281:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405830

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405890
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058b0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058d0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_282]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405970

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405990

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a20

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a30

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_282]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405af0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b30
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b50

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	32
	#Procedure 0x405b70

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_285
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_286
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_285
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_285
.label_286:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_287
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_285
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_285
.label_287:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_285:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_289
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_288
	jmp	.label_290
.label_289:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_290
.label_288:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_290
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_290:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d60

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_293
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_292
	lea	rsi, [rsi]
	jmp	.label_291
.label_293:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_291
.label_292:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_291
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_291:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405e50

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_296
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_295
	jmp	.label_294
.label_296:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_294
.label_295:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_294
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_294:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f20

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_299
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_298
	jmp	.label_297
.label_299:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_297
.label_298:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_297
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq4
.label_297:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405fc0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_302
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_301
	nop	
	jmp	.label_300
.label_302:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_300
.label_301:
	mov	eax, 1
	test	bpl, bpl
	je	.label_300
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_300:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406060

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_305
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_304
	lea	rsi, [rsi]
	jmp	.label_303
.label_305:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_303
.label_304:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_303
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_303:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060f0

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_308
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_307
	jmp	.label_306
.label_308:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_306
.label_307:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_306
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_306:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406160

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_309
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_311
	mov	rbp, rbp
	jmp	.label_310
.label_309:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_310
.label_311:
	xor	eax, eax
.label_310:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061b0
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x50]
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061c0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061d0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x50]
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406210
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406220

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406230
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	mov	rax, -1
	mov	rsp, rsp
	mov	rdx, -1
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	mov	eax, edi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406260

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	jmp	numcompare
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406270

	.globl numcompare
	.type numcompare, @function
numcompare:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_340
	nop	
.label_312:
	movzx	r10d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r10d, 0x30
	je	.label_312
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_317
	nop	dword ptr [rax]
.label_322:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_322
	xor	edx, edx
	movzx	r8d, r10b
	movzx	ecx, al
	cmp	ecx, r8d
	jne	.label_325
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 9
	ja	.label_328
	nop	dword ptr [rax + rax]
.label_335:
	mov	r9b, byte ptr [rdi + rdx + 1]
	movzx	eax, byte ptr [rsi + rdx + 1]
	movzx	r10d, r9b
	inc	rdx
	cmp	eax, r10d
	jne	.label_334
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 0xa
	jb	.label_335
.label_334:
	add	rsi, rdx
	add	rdi, rdx
	jmp	.label_314
.label_340:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_343
	inc	rsi
	nop	dword ptr [rax + rax]
.label_318:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_318
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_321
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_315
	inc	rdi
	nop	word ptr [rax + rax]
.label_327:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_327
.label_315:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_317:
	add	r10d, -0x30
	mov	eax, 0xffffffff
	cmp	r10d, 0xa
	jb	.label_321
	cmp	r8d, 0x30
	jne	.label_339
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_313:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_313
.label_339:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_343:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_319
	nop	
.label_330:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_330
.label_319:
	cmp	r8d, 0x30
	jne	.label_320
	nop	word ptr cs:[rax + rax]
.label_329:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_329
.label_320:
	movzx	r8d, cl
	movzx	eax, dl
	cmp	r8d, eax
	jne	.label_331
	nop	dword ptr [rax + rax]
.label_337:
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jae	.label_331
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	je	.label_337
.label_331:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_344
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_336:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_336
.label_344:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_326
	xor	edx, edx
	nop	dword ptr [rax]
.label_324:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_324
.label_326:
	cmp	rcx, rdx
	jne	.label_332
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_333
.label_332:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_325:
	mov	r9b, r10b
	jmp	.label_314
.label_328:
	mov	r9b, r10b
.label_314:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_341
	xor	edx, edx
	nop	dword ptr [rax]
.label_316:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_316
.label_341:
	lea	ecx, [r8 - 0x30]
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_338
	xor	eax, eax
	nop	dword ptr [rax]
.label_323:
	movzx	ecx, byte ptr [rsi + rax + 1]
	inc	rax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_323
.label_338:
	cmp	rdx, rax
	jne	.label_342
	sub	r8d, r10d
	xor	eax, eax
	test	rdx, rdx
.label_333:
	cmovne	eax, r8d
.label_321:
	ret	
.label_342:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064e0
	.globl fraccompare
	.type fraccompare, @function
fraccompare:

	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	jne	.label_345
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0xff
	je	.label_349
.label_345:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	je	.label_352
	xor	eax, eax
	movzx	ecx, byte ptr [rsi]
	cmp	ecx, 0xff
	jne	.label_353
	inc	rsi
	nop	
.label_350:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_350
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_353
.label_352:
	inc	rdi
	nop	dword ptr [rax + rax]
.label_348:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_348
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_349:
	inc	rdi
	inc	rsi
	nop	dword ptr [rax]
.label_347:
	movzx	r8d, byte ptr [rdi]
	movsx	eax, r8b
	movzx	ecx, byte ptr [rsi]
	lea	edx, [rax - 0x30]
	cmp	r8d, ecx
	jne	.label_346
	inc	rdi
	inc	rsi
	xor	eax, eax
	cmp	edx, 0xa
	jb	.label_347
.label_353:
	ret	
.label_346:
	cmp	edx, 9
	ja	.label_351
	movsx	ecx, cl
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_351
	sub	eax, ecx
	ret	
.label_351:
	movsx	eax, byte ptr [rdi]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_348
	movsx	ecx, byte ptr [rsi]
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_350
	jmp	.label_353
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	mov	rax, rdi
	mov	rdx, rsi
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065c0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_354
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	jg	.label_354
	mov	rbp, rbp
	sub	esi, ecx
	mov	eax, esi
.label_354:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065f0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	rbp, rbp
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406610
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_355]]
	nop	
	addsd	xmm0, xmm1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406630

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8, rax
	jmp	verror_at_line
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406650

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r15d, ecx
	mov	rsp, rsp
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	je	.label_357
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_356
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, r12d
	lea	rsi, [rsi]
	mov	esi, r14d
	mov	rdx, rbp
	mov	rsp, rsp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_358
.label_356:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, r12d
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	error
.label_358:
	mov	rdi, rbx
	nop	
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	free
.label_357:
	nop	
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406730
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_359
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_359:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406770

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_360
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_361
.label_360:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_361:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067a0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_362
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_362:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_363
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_363
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_363:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_364
	test	rax, rax
	nop	
	je	.label_365
.label_364:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_365:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406830

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_366
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_367
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_368
.label_366:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_369
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_369:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_370
.label_368:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_367:
	call	xalloc_die
.label_370:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4068f0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406930
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_371
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_371
	pop	rcx
	ret	
.label_371:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x406960

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069b0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a20

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rax
	mov	rbp, rbp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	rcx, rdi
	xor	edi, edi
	mov	rbp, rbp
	jmp	.label_372
	nop	word ptr cs:[rax + rax]
.label_376:
	inc	rdi
.label_372:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	edx, 0x25
	mov	rbp, rbp
	jne	.label_374
	movzx	edx, byte ptr [rcx + rdi*2 + 1]
	cmp	edx, 0x73
	lea	rdi, [rdi]
	je	.label_376
	lea	rdi, [rdi]
	jmp	.label_373
.label_374:
	test	dl, dl
	jne	.label_373
	mov	rsi, rax
	nop	
	call	xstrcat
	pop	rcx
	ret	
.label_373:
	mov	rbp, rbp
	lea	rdi, [rsp]
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	mov	rsp, rsp
	js	.label_375
	mov	rax, qword ptr [rsp]
	jmp	.label_377
.label_375:
	call	__errno_location
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	dword ptr [rcx], 0xc
	je	.label_378
.label_377:
	pop	rcx
	ret	
.label_378:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	mov	rbp, rbp
	je	.label_379
	xor	ebx, ebx
	mov	rbp, r12
	nop	dword ptr [rax]
.label_385:
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp]
	mov	rsp, rsp
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_383
	mov	rbp, rbp
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], ecx
	mov	rsp, rsp
	jmp	.label_384
	nop	
.label_383:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	lea	rcx, [rax + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rcx
.label_384:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax]
	lea	rsi, [rsi]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_385
	nop	
	test	rbx, -0x80000000
	lea	rsi, [rsi]
	je	.label_387
	mov	rsp, rsp
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	lea	rsi, [rsi]
	xor	r15d, r15d
	lea	rsi, [rsi]
	jmp	.label_381
.label_379:
	lea	rsi, [rsi]
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_380
.label_387:
	nop	
	inc	rbx
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	xmalloc
	mov	r15, rax
	nop	
	mov	rbx, r15
	test	r12, r12
	je	.label_380
	nop	dword ptr [rax + rax]
.label_388:
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [r14]
	lea	rsi, [rsi]
	cmp	rcx, 0x28
	nop	
	ja	.label_382
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	lea	rdi, [rdi]
	jmp	.label_386
	nop	word ptr cs:[rax + rax]
.label_382:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_386:
	mov	r13, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	strlen
	mov	rbp, rbp
	mov	rbp, rax
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	add	rbx, rbp
	dec	r12
	jne	.label_388
.label_380:
	lea	rsi, [rsi]
	mov	byte ptr [rbx], 0
.label_381:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_389
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_390
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_390
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_389:
	mov	ecx, 1
.label_390:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406cf0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_391
	nop	
	cmp	r15, -2
	jb	.label_391
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_391
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_391:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_392
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_392
.label_393:
	ret	
.label_392:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_393
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406db0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_394
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_394:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406dd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406de0
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	cmp	edi, 0x20
	sete	cl
	cmp	edi, 9
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406df0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_395
.label_396:
	ret	
.label_395:
	cmp	edi, 0x7f
	je	.label_396
	xor	eax, eax
	jmp	.label_396
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e10
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e20
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e30
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e50
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_397
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_397
.label_398:
	ret	
.label_397:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_398
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e80
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_399
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_399:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406eb0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_400
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_400:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ed0
	.globl c_tolower
	.type c_tolower, @function
c_tolower:

	lea	ecx, [rdi - 0x41]
	lea	eax, [rdi + 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ee0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	lea	ecx, [rdi - 0x61]
	lea	eax, [rdi - 0x20]
	cmp	ecx, 0x1a
	cmovae	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406ef0

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_402
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_401
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_401
.label_402:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_401
	test	cl, cl
	jne	.label_401
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_401:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406f90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_404
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_403
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_405
.label_403:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_404
.label_405:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_404:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406fe0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_406
	nop	
	mov	rax, rcx
.label_406:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407020

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	lea	rsi, [rsi]
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407040
	.globl xsum3
	.type xsum3, @function
xsum3:

	nop
	push	rbx
	nop	
	mov	rbx, rdx
	mov	rbp, rbp
	call	xsum
	nop	
	mov	rdi, rax
	mov	rsi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xsum
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407060
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r14, rcx
	mov	rsp, rsp
	mov	rbx, rdx
	call	xsum
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, r14
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	
	.section	.text
	.align	32
	#Procedure 0x4070a0
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	cmp	rdi, rsi
	lea	rdi, [rdi]
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_407
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_408
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_407
.label_408:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_407
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_409
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_409:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_407:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407180

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_410
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_410
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_410:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x4071b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_411
	mov	rbp, rbp
	ret	
.label_411:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x4071d0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_414
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_414
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_412
.label_414:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_412:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_413
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_413:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407280

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407350

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
