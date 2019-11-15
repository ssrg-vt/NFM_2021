	.section	.text
	.align	32
	#Procedure 0x4014e0
	.globl usage
	.type usage, @function
usage:

	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401770

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.24
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.19
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.19
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.33
	mov	ecx, OFFSET FLAT:.str.34
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.19
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.34
	mov	ecx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.39
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401890

	.globl main
	.type main, @function
main:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.21
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + argv]],  r14
	mov	dword ptr [dword ptr [rip + argc]],  ebx
	mov	dword ptr [dword ptr [rip + pos]],  1
	mov	eax, 1
	cmp	ebx, 2
	jl	.label_12
	dec	ebx
	mov	edi, ebx
	call	posixtest
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	cmp	ecx,  dword ptr [dword ptr [rip + argc]]
	jne	.label_11
	movzx	eax, al
	xor	eax, 1
.label_12:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401960

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401970

	.globl posixtest
	.type posixtest, @function
posixtest:
	push	rbx
	lea	eax, [rdi - 1]
	cmp	eax, 3
	ja	.label_18
	jmp	qword ptr [word ptr [+ (rax * 8) + label_20]]
.label_429:
	call	one_argument
	jmp	.label_14
.label_430:
	call	two_arguments
	jmp	.label_14
.label_431:
	call	three_arguments
	jmp	.label_14
.label_432:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	jne	.label_17
	cmp	byte ptr [rax + 1], 0
	je	.label_19
.label_17:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	jne	.label_13
	cmp	byte ptr [rax + 1], 0
	jne	.label_13
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 0x18]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x29
	jne	.label_13
	cmp	byte ptr [rax + 1], 0
	jne	.label_13
	xor	edi, edi
	call	advance
	call	two_arguments
	mov	bl, al
	xor	edi, edi
	call	advance
	jmp	.label_15
.label_18:
	test	edi, edi
	jle	.label_16
.label_13:
	call	expr
.label_14:
	mov	bl, al
.label_15:
	mov	al, bl
	pop	rbx
	ret	
.label_19:
	mov	edi, 1
	call	advance
	call	three_arguments
	mov	bl, al
	xor	bl, 1
	jmp	.label_15
.label_16:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	sub	rsp, 0xc8
	mov	r10, rdi
	test	al, al
	je	.label_21
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_21:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 8
	lea	rcx, [rsp + 0xb0]
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r10
	call	verror
	mov	edi, 2
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b00

	.globl one_argument
	.type one_argument, @function
one_argument:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + pos]],  ecx
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	setne	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401b30

	.globl two_arguments
	.type two_arguments, @function
two_arguments:
	push	rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	jne	.label_22
	cmp	byte ptr [rax + 1], 0
	je	.label_24
.label_22:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_23
	cmp	byte ptr [rax + 1], 0
	je	.label_23
	cmp	byte ptr [rax + 2], 0
	jne	.label_23
	call	unary_operator
	pop	rcx
	ret	
.label_24:
	xor	edi, edi
	call	advance
	call	one_argument
	xor	al, 1
	pop	rcx
	ret	
.label_23:
	call	beyond
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	r14
	push	rbx
	push	rax
	movsxd	r14,  dword ptr [dword ptr [rip + pos]]
	mov	rbx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rbx + r14*8 + 8]
	call	binop
	test	al, al
	je	.label_32
	xor	edi, edi
	call	binary_operator
	jmp	.label_26
.label_32:
	mov	rax, qword ptr [rbx + r14*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	jne	.label_27
	cmp	byte ptr [rax + 1], 0
	je	.label_30
.label_27:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	jne	.label_25
	cmp	byte ptr [rax + 1], 0
	jne	.label_25
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x29
	jne	.label_25
	cmp	byte ptr [rax + 1], 0
	je	.label_31
.label_25:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_33
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x61
	jne	.label_33
	cmp	byte ptr [rax + 2], 0
	je	.label_34
.label_33:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_28
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6f
	jne	.label_28
	cmp	byte ptr [rax + 2], 0
	jne	.label_28
.label_34:
	call	expr
.label_26:
	mov	bl, al
.label_29:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_30:
	mov	edi, 1
	call	advance
	call	two_arguments
	mov	bl, al
	xor	bl, 1
	jmp	.label_29
.label_31:
	xor	edi, edi
	call	advance
	call	one_argument
	mov	bl, al
	xor	edi, edi
	call	advance
	jmp	.label_29
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d00

	.globl advance
	.type advance, @function
advance:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	inc	eax
	mov	dword ptr [dword ptr [rip + pos]],  eax
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jl	.label_35
	xor	dil, 1
	je	.label_36
.label_35:
	ret	
.label_36:
	push	rax
	call	beyond
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d30

	.globl expr
	.type expr, @function
expr:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_37
	jmp	or
.label_37:
	push	rax
	call	beyond
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d50

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x90
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	eax, byte ptr [rax + 1]
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_46
	jmp	qword ptr [word ptr [+ (rax * 8) + label_56]]
.label_468:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	__lstat
	test	eax, eax
	je	.label_43
	xor	ebx, ebx
	jmp	.label_38
.label_467:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_53
	xor	ebx, ebx
	jmp	.label_38
.label_469:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_41
	xor	ebx, ebx
	jmp	.label_38
.label_470:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_44
	xor	ebx, ebx
	jmp	.label_38
.label_471:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_47
	xor	ebx, ebx
	jmp	.label_38
.label_472:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_50
	xor	ebx, ebx
	jmp	.label_38
.label_473:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_52
	xor	ebx, ebx
	jmp	.label_38
.label_474:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_57
	xor	ebx, ebx
	jmp	.label_38
.label_475:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	jmp	.label_42
.label_476:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_45
	xor	ebx, ebx
	jmp	.label_38
.label_477:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_49
	xor	ebx, ebx
	jmp	.label_38
.label_478:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_48
	xor	ebx, ebx
	jmp	.label_38
.label_479:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	cmp	byte ptr [rax], 0
	setne	bl
	jmp	.label_38
.label_480:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_39
	xor	ebx, ebx
	jmp	.label_38
.label_481:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	esi, 4
	jmp	.label_40
.label_482:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	sete	al
	cmp	qword ptr [rsp + 0x30], 0
	setg	bl
	and	bl, al
	jmp	.label_38
.label_483:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	find_int
	mov	r15, rax
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r15
	call	strtol
	cmp	rax, 0x7fffffff
	ja	.label_38
	cmp	dword ptr [r14], 0x22
	je	.label_38
	mov	edi, eax
	call	isatty
	test	eax, eax
	setne	bl
	jmp	.label_38
.label_484:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_55
	xor	ebx, ebx
	jmp	.label_38
.label_485:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	esi, 2
	jmp	.label_40
.label_486:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	mov	esi, 1
.label_40:
	call	euidaccess
	test	eax, eax
	jmp	.label_42
.label_487:
	call	unary_advance
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8 - 8]
	cmp	byte ptr [rax], 0
	jmp	.label_42
.label_43:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xa000
	jmp	.label_42
.label_53:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	cmp	eax, -1
	jne	.label_51
	cmp	dword ptr [rbx], 0
	je	.label_51
	xor	ebx, ebx
	jmp	.label_38
.label_41:
	lea	r14, [rsp]
	mov	rdi, r14
	call	get_stat_atime
	mov	rbx, rax
	mov	r15, rdx
	mov	rdi, r14
	call	get_stat_mtime
	mov	rdi, rax
	mov	rsi, rdx
	mov	rdx, rbx
	mov	rcx, r15
	call	timespec_cmp
	test	eax, eax
	setg	bl
	jmp	.label_38
.label_44:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	cmp	eax, -1
	jne	.label_54
	cmp	dword ptr [rbx], 0
	je	.label_54
	xor	ebx, ebx
	jmp	.label_38
.label_47:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0xc000
	jmp	.label_42
.label_50:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x6000
	jmp	.label_42
.label_52:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x2000
	jmp	.label_42
.label_57:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	jmp	.label_42
.label_45:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jmp	.label_42
.label_49:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 4
	shr	bl, 2
	jmp	.label_38
.label_48:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 2
	shr	bl, 1
	jmp	.label_38
.label_39:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	jmp	.label_42
.label_55:
	mov	bl, byte ptr [rsp + 0x19]
	and	bl, 8
	shr	bl, 3
	jmp	.label_38
.label_51:
	cmp	eax, dword ptr [rsp + 0x20]
	jmp	.label_42
.label_54:
	cmp	eax, dword ptr [rsp + 0x1c]
.label_42:
	sete	bl
.label_38:
	mov	al, bl
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022f0

	.globl beyond
	.type beyond, @function
beyond:
	push	rbx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + argc]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402330

	.globl unary_advance
	.type unary_advance, @function
unary_advance:
	push	rax
	mov	edi, 1
	call	advance
	inc	dword ptr [dword ptr [rip + pos]]
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402350

	.globl find_int
	.type find_int, @function
find_int:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	call	__ctype_b_loc
	mov	r15, rax
	mov	r13, qword ptr [r15]
	lea	r12, [r14 - 1]
	nop	dword ptr [rax]
.label_58:
	mov	bl, byte ptr [r12 + 1]
	inc	r12
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r13 + rax*2], 1
	jne	.label_58
	movzx	eax, bl
	cmp	eax, 0x2d
	sete	cl
	movzx	ebx, cl
	add	rbx, r12
	lea	rcx, [r12 + 1]
	cmp	eax, 0x2b
	cmove	rbx, rcx
	cmove	r12, rcx
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_61
	nop	word ptr cs:[rax + rax]
.label_59:
	movsx	eax, byte ptr [rbx + 1]
	inc	rbx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_59
	mov	r15, qword ptr [r15]
	nop	word ptr cs:[rax + rax]
.label_60:
	mov	bpl, byte ptr [rbx]
	movsx	edi, bpl
	call	to_uchar
	movzx	eax, al
	inc	rbx
	test	byte ptr [r15 + rax*2], 1
	jne	.label_60
	test	bpl, bpl
	jne	.label_61
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402440

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402450

	.globl binop
	.type binop, @function
binop:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x3d
	jne	.label_69
	mov	al, 1
	cmp	byte ptr [rdi + 1], 0
	je	.label_64
.label_69:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x21
	jne	.label_73
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x3d
	jne	.label_73
	mov	al, 1
	cmp	byte ptr [rdi + 2], 0
	je	.label_64
.label_73:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x3d
	jne	.label_63
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x3d
	jne	.label_63
	mov	al, 1
	cmp	byte ptr [rdi + 2], 0
	je	.label_64
.label_63:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_68
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6e
	jne	.label_68
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_68
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_68:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_72
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6f
	jne	.label_72
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_72
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_72:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_75
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x65
	jne	.label_75
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x66
	jne	.label_75
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_75:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_66
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x65
	jne	.label_66
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x71
	jne	.label_66
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_66:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_70
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6e
	jne	.label_71
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x65
	jne	.label_71
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_71:
	mov	al, byte ptr [rdi]
.label_70:
	movzx	eax, al
	cmp	eax, 0x2d
	jne	.label_65
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	jne	.label_74
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_74
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_74:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_62
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x6c
	jne	.label_65
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x65
	jne	.label_65
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_65:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	jne	.label_62
	movzx	eax, byte ptr [rdi + 1]
	cmp	eax, 0x67
	jne	.label_62
	movzx	eax, byte ptr [rdi + 2]
	cmp	eax, 0x74
	jne	.label_62
	mov	al, 1
	cmp	byte ptr [rdi + 3], 0
	je	.label_64
.label_62:
	movzx	ecx, byte ptr [rdi]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_67
	movzx	ecx, byte ptr [rdi + 1]
	mov	eax, 0x67
	sub	eax, ecx
	jne	.label_67
	movzx	ecx, byte ptr [rdi + 2]
	mov	eax, 0x65
	sub	eax, ecx
	jne	.label_67
	movzx	eax, byte ptr [rdi + 3]
	neg	eax
.label_67:
	test	eax, eax
	sete	al
.label_64:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402600

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x160
	mov	ebx, edi
	test	bl, bl
	je	.label_76
	xor	edi, edi
	call	advance
.label_76:
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	lea	eax, [rbp + 1]
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	add	ecx, -2
	cmp	eax, ecx
	jge	.label_81
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_87
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6c
	jne	.label_90
	cmp	byte ptr [rax + 2], 0
	je	.label_106
	xor	r14d, r14d
	jmp	.label_84
.label_81:
	xor	r14d, r14d
	jmp	.label_84
.label_87:
	xor	r14d, r14d
	jmp	.label_84
.label_90:
	xor	r14d, r14d
	jmp	.label_84
.label_106:
	xor	edi, edi
	call	advance
	mov	r14b, 1
.label_84:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x3d
	je	.label_94
	movzx	ecx, cl
	cmp	ecx, 0x2d
	jne	.label_96
	movzx	eax, byte ptr [rax + 1]
	cmp	eax, 0x6c
	je	.label_99
	movzx	eax, al
	cmp	eax, 0x67
	jne	.label_100
.label_99:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x65
	je	.label_102
	movzx	eax, al
	cmp	eax, 0x74
	je	.label_102
.label_100:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x65
	jne	.label_97
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x71
	je	.label_102
.label_97:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6e
	jne	.label_89
	movzx	eax, byte ptr [rax + 2]
	cmp	eax, 0x65
	jne	.label_89
.label_102:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	cmp	byte ptr [rax + 3], 0
	je	.label_109
.label_89:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x65
	je	.label_80
	cmp	ecx, 0x6f
	je	.label_86
	cmp	ecx, 0x6e
	jne	.label_88
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x74
	jne	.label_88
	cmp	byte ptr [rax + 3], 0
	jne	.label_88
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	movzx	eax, r14b
	cmp	eax, 1
	je	.label_91
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0x20]
	call	get_mtime
	mov	bl, al
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp]
	call	get_mtime
	test	bl, bl
	je	.label_78
	test	al, al
	je	.label_78
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	call	timespec_cmp
	test	eax, eax
	setg	bl
	jmp	.label_78
.label_94:
	mov	cl, byte ptr [rax + 1]
	test	cl, cl
	je	.label_82
	movzx	ecx, cl
	cmp	ecx, 0x3d
	jne	.label_96
	cmp	byte ptr [rax + 2], 0
	je	.label_82
.label_96:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rax + rbp*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	jne	.label_79
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x3d
	jne	.label_79
	cmp	byte ptr [rax + 2], 0
	jne	.label_79
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	test	eax, eax
	setne	bl
	jmp	.label_85
.label_82:
	movsxd	rbp,  dword ptr [dword ptr [rip + pos]]
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	mov	rsi, qword ptr [rax + rbp*8 + 0x10]
	call	strcmp
	test	eax, eax
	sete	bl
.label_85:
	lea	eax, [rbp + 3]
	mov	dword ptr [dword ptr [rip + pos]],  eax
.label_78:
	mov	al, bl
	add	rsp, 0x160
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_109:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	test	bl, bl
	je	.label_93
	call	strlen
	lea	rsi, [rsp + 0x20]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_98
.label_80:
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	jne	.label_88
	cmp	byte ptr [rax + 3], 0
	jne	.label_88
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	movzx	eax, r14b
	cmp	eax, 1
	je	.label_103
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0xd0]
	call	stat
	test	eax, eax
	je	.label_107
	xor	ebx, ebx
	jmp	.label_78
.label_86:
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x74
	jne	.label_88
	cmp	byte ptr [rax + 3], 0
	jne	.label_88
	add	dword ptr [dword ptr [rip + pos]],  3
	or	r14b, bl
	movzx	eax, r14b
	cmp	eax, 1
	je	.label_77
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8]
	lea	rsi, [rsp + 0x20]
	call	get_mtime
	mov	r14b, al
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp]
	call	get_mtime
	mov	bl, al
	test	r14b, r14b
	je	.label_78
	test	bl, bl
	je	.label_78
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	call	timespec_cmp
	mov	ebx, eax
	shr	ebx, 0x1f
	jmp	.label_78
.label_93:
	call	find_int
.label_98:
	mov	rbx, rax
	test	r14b, r14b
	je	.label_95
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x18]
	call	strlen
	lea	rsi, [rsp]
	mov	rdi, rax
	call	umaxtostr
	jmp	.label_101
.label_95:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	call	find_int
.label_101:
	mov	rsi, rax
	mov	rdi, rbx
	call	strintcmp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rcx + rbp*8 + 8]
	mov	cl, byte ptr [rcx + 2]
	add	dword ptr [dword ptr [rip + pos]],  3
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rdx, qword ptr [rdx + rbp*8 + 8]
	movzx	edx, byte ptr [rdx + 1]
	cmp	edx, 0x67
	je	.label_105
	movzx	edx, dl
	movzx	ecx, cl
	cmp	edx, 0x6c
	jne	.label_108
	cmp	ecx, 0x65
	sete	cl
	movzx	ecx, cl
	cmp	eax, ecx
	setl	bl
	jmp	.label_78
.label_107:
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 0x10]
	lea	rsi, [rsp + 0x40]
	call	stat
	test	eax, eax
	je	.label_83
	xor	ebx, ebx
	jmp	.label_78
.label_105:
	movzx	ecx, cl
	xor	edx, edx
	cmp	ecx, 0x65
	mov	ecx, 0xffffffff
	cmovne	ecx, edx
	cmp	eax, ecx
	setg	bl
	jmp	.label_78
.label_108:
	cmp	ecx, 0x65
	sete	cl
	test	eax, eax
	setne	bl
	xor	bl, cl
	xor	bl, 1
	jmp	.label_78
.label_83:
	mov	rax, qword ptr [rsp + 0xd0]
	cmp	rax, qword ptr [rsp + 0x40]
	jne	.label_92
	mov	rax, qword ptr [rsp + 0xd8]
	cmp	rax, qword ptr [rsp + 0x48]
	sete	bl
	jmp	.label_78
.label_92:
	xor	ebx, ebx
	jmp	.label_78
.label_79:
	call	abort
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rax + rbp*8 + 8]
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
.label_91:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	jmp	.label_104
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	jmp	.label_104
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
.label_104:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b00

	.globl get_mtime
	.type get_mtime, @function
get_mtime:
	push	rbp
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rsi
	lea	rsi, [rsp + 8]
	call	stat
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_110
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
.label_110:
	test	ebp, ebp
	sete	al
	add	rsp, 0x98
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402b40

	.globl or
	.type or, @function
or:
	push	rbx
	call	and
	mov	bl, al
	jmp	.label_111
	nop	word ptr [rax + rax]
.label_113:
	xor	edi, edi
	call	advance
	call	and
	or	bl, al
.label_111:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_112
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_112
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6f
	jne	.label_112
	cmp	byte ptr [rax + 2], 0
	je	.label_113
.label_112:
	and	bl, 1
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ba0

	.globl and
	.type and, @function
and:
	push	rbx
	call	term
	mov	bl, al
	jmp	.label_114
	nop	word ptr [rax + rax]
.label_116:
	xor	edi, edi
	call	advance
	call	term
	and	bl, al
.label_114:
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_115
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_115
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x61
	jne	.label_115
	cmp	byte ptr [rax + 2], 0
	je	.label_116
.label_115:
	test	bl, bl
	setne	al
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c00

	.globl term
	.type term, @function
term:
	push	rbp
	push	r14
	push	rbx
	mov	eax,  dword ptr [dword ptr [rip + pos]]
	xor	ebp, ebp
	jmp	.label_117
	nop	
.label_131:
	mov	edi, 1
	call	advance
	xor	bpl, 1
	mov	eax,  dword ptr [dword ptr [rip + pos]]
.label_117:
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_124
	cdqe	
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x21
	jne	.label_124
	cmp	byte ptr [rax + 1], 0
	je	.label_131
.label_124:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	cmp	eax,  dword ptr [dword ptr [rip + argc]]
	jge	.label_132
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x28
	jne	.label_122
	cmp	byte ptr [rax + 1], 0
	je	.label_136
.label_122:
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	sub	ecx, eax
	cmp	ecx, 4
	jl	.label_120
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_120
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x6c
	jne	.label_120
	cmp	byte ptr [rax + 2], 0
	jne	.label_120
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 0x10]
	call	binop
	test	al, al
	je	.label_120
	mov	edi, 1
	jmp	.label_133
.label_120:
	mov	ecx,  dword ptr [dword ptr [rip + argc]]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	sub	ecx, eax
	cmp	ecx, 3
	jl	.label_134
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rdi, qword ptr [rcx + rax*8 + 8]
	call	binop
	test	al, al
	je	.label_134
	xor	edi, edi
.label_133:
	call	binary_operator
	movzx	ebx, al
	jmp	.label_118
.label_134:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_119
	cmp	byte ptr [rax + 1], 0
	je	.label_119
	cmp	byte ptr [rax + 2], 0
	je	.label_126
.label_119:
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax], 0
	setne	al
	jmp	.label_128
.label_136:
	mov	ebx, 1
	mov	edi, 1
	call	advance
	mov	edi,  dword ptr [dword ptr [rip + pos]]
	inc	edi
	cmp	edi,  dword ptr [dword ptr [rip + argc]]
	jge	.label_129
	mov	rax,  qword ptr [word ptr [rip + argv]]
	mov	ecx,  dword ptr [dword ptr [rip + pos]]
	mov	esi, 1
	mov	edx,  dword ptr [dword ptr [rip + argc]]
	nop	word ptr cs:[rax + rax]
.label_127:
	movsxd	rdi, edi
	mov	rdi, qword ptr [rax + rdi*8]
	movzx	ebx, byte ptr [rdi]
	cmp	ebx, 0x29
	jne	.label_121
	cmp	byte ptr [rdi + 1], 0
	je	.label_123
.label_121:
	cmp	esi, 4
	je	.label_125
	lea	ebx, [rsi + 1]
	lea	edi, [rcx + rsi + 1]
	cmp	edi, edx
	mov	esi, ebx
	jl	.label_127
	jmp	.label_129
.label_126:
	call	unary_operator
	movzx	ebx, al
	jmp	.label_118
.label_125:
	mov	ebx,  dword ptr [dword ptr [rip + argc]]
	sub	ebx,  dword ptr [dword ptr [rip + pos]]
	jmp	.label_129
.label_123:
	mov	ebx, esi
.label_129:
	mov	edi, ebx
	call	posixtest
	movsxd	rcx,  dword ptr [dword ptr [rip + pos]]
	mov	rdx,  qword ptr [word ptr [rip + argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	test	rcx, rcx
	je	.label_135
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x29
	jne	.label_130
	cmp	byte ptr [rcx + 1], 0
	jne	.label_130
.label_128:
	movzx	ebx, al
	xor	edi, edi
	call	advance
.label_118:
	and	bpl, 1
	movzx	eax, bpl
	cmp	eax, ebx
	setne	al
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_132:
	call	beyond
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	call	quote_n
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edi, 1
	call	quote_n
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rcx
	call	test_syntax_error
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:.str.42
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	rdi, rbx
	mov	rsi, rcx
	call	test_syntax_error
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402eb0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ed0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_137
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_139
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_139
.label_137:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_138
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_140
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_138:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_140:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_141:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_141
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_142
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_143
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_143
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_144
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_144:
	mov	rbx, r14
.label_143:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_142:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403090
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	cmove	rbx, rax
	mov	esi, 0x38
	mov	rdi, rbx
	call	xmemdup
	mov	dword ptr [r14], ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030d0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	eax, dword ptr [rax]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4030e0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], esi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4030f0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
	shr	al, 5
	movzx	r8d, al
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	edi, r9d
	shr	edi, cl
	mov	eax, edi
	and	eax, 1
	xor	edi, edx
	and	edi, 1
	shl	edi, cl
	xor	edi, r9d
	mov	dword ptr [rsi + r8*4 + 8], edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403130
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	test	rdi, rdi
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403150

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_145
	test	rdx, rdx
	je	.label_145
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_145:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403200

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_191:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_153
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_208]]
.label_461:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_462:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_230
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_230
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_249:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_240:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_249
.label_230:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_158
.label_454:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_158
.label_457:
	mov	al, 1
.label_455:
	mov	r15b, 1
.label_458:
	test	r15b, 1
	mov	cl, 1
	je	.label_152
	mov	cl, al
.label_152:
	mov	al, cl
.label_456:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_155
	test	r10, r10
	je	.label_221
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_163
.label_155:
	xor	ecx, ecx
	jmp	.label_163
.label_459:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_167
	test	r10, r10
	je	.label_173
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_177
.label_460:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_158
.label_221:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_158
.label_167:
	xor	eax, eax
	jmp	.label_177
.label_173:
	mov	eax, 1
.label_177:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_158:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_226
	nop	dword ptr [rax + rax]
.label_186:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_226:
	cmp	rbp, -1
	je	.label_257
	cmp	rsi, rbp
	jne	.label_258
	jmp	.label_260
	nop	dword ptr [rax]
.label_257:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_260
.label_258:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_266
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_150
	cmp	rbp, -1
	jne	.label_150
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_150:
	cmp	rbx, rbp
	jbe	.label_261
.label_266:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_218:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_179
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_183]]
.label_515:
	test	rsi, rsi
	jne	.label_188
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_261:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_213
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_218
	jmp	.label_160
.label_213:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_218
.label_519:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_236
	test	rsi, rsi
	jne	.label_239
	cmp	rbp, 1
	je	.label_190
	xor	r15d, r15d
	jmp	.label_148
.label_508:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_176
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
	cmp	edi, 2
	jne	.label_245
	mov	al, r11b
	and	al, 1
	jne	.label_248
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_251
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_251:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_197
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_197:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_264
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_264:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_195
.label_509:
	mov	bl, 0x62
	jmp	.label_147
.label_510:
	mov	cl, 0x74
	jmp	.label_151
.label_511:
	mov	bl, 0x76
	jmp	.label_147
.label_512:
	mov	bl, 0x66
	jmp	.label_147
.label_513:
	mov	cl, 0x72
	jmp	.label_151
.label_516:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_159
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_157
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_169
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_169:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_192
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_192:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_211
.label_517:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_217
	cmp	r14d, 2
	jne	.label_220
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_157
.label_220:
	mov	rdi, r14
	jmp	.label_188
.label_518:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_225
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_157
	mov	rdi, r14
	jmp	.label_227
.label_179:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_231
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_250:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_242
	test	dl, dl
	je	.label_242
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_148
.label_236:
	test	rsi, rsi
	jne	.label_256
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_256
.label_190:
	mov	dl, 1
.label_514:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_160
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_148
.label_176:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_188
	mov	r14, rdi
	inc	rsi
	jmp	.label_226
.label_159:
	mov	rdi, r14
.label_211:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_148
.label_225:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_151
.label_227:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_199
.label_151:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_160
.label_147:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_148
	jmp	.label_170
.label_231:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_172
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_172:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_215:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_207
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_212
	cmp	rbp, -2
	je	.label_222
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_223
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_237:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_232
	bt	rsi, rdx
	jb	.label_235
.label_232:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_237
.label_223:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_156
	xor	r15d, r15d
.label_156:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_215
	jmp	.label_250
.label_256:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_148
.label_217:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_188
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_188
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_188
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_259
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_263
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_149:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_193
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_193:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_168
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_168:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_184
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_184:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_148
.label_188:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_148:
	test	r12b, r12b
	je	.label_200
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_198
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_200:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_202
.label_198:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_209
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_199
	jmp	.label_170
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_170
	jmp	.label_199
.label_209:
	mov	bl, r13b
	mov	rsi, r14
.label_170:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_234
	mov	al, r11b
	and	al, 1
	jne	.label_234
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_238
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_238:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_178
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_178:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_234:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_253
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_253:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_175
.label_239:
	xor	r15d, r15d
	jmp	.label_148
.label_242:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_216:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_262:
	test	dl, dl
	je	.label_162
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_166
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_204
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_204:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_166
	nop	word ptr [rax + rax]
.label_162:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_157
	cmp	r14d, 2
	jne	.label_185
	mov	al, r11b
	and	al, 1
	jne	.label_185
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_187
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_187:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_194
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_194:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_233:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_185:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_182
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_265
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_265:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_229
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_229:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_166:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_199
	test	r11b, 1
	je	.label_243
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_244
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_247
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_247:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_267
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_267:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_244
	nop	word ptr cs:[rax + rax]
.label_243:
	mov	r14, rdi
.label_244:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_216
.label_199:
	test	r11b, 1
	je	.label_154
	and	al, 1
	jne	.label_154
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_196
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_196:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_164
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_175
	nop	dword ptr [rax + rax]
.label_154:
	mov	bl, r13b
	mov	r14, rdi
.label_175:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_186
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_186
.label_245:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_195
.label_248:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_195:
	cmp	rcx, r10
	jae	.label_201
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_201:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_206
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_214
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_180
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_165
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_165:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_181
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_181:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_148
.label_206:
	xor	r15d, r15d
	jmp	.label_148
.label_214:
	xor	r15d, r15d
	jmp	.label_148
.label_180:
	xor	r15d, r15d
	jmp	.label_148
.label_207:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_174
.label_212:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_241
.label_222:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_246
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_254:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_252
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_254
	xor	r15d, r15d
	jmp	.label_174
.label_246:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_241:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_174:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_250
.label_252:
	xor	r15d, r15d
	jmp	.label_174
.label_259:
	xor	r15d, r15d
	jmp	.label_148
.label_263:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_148
	nop	dword ptr [rax + rax]
.label_260:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_146
	or	dl, al
	je	.label_157
.label_146:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_161
	or	dl, al
	jne	.label_161
	test	r8b, 1
	jne	.label_171
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_161
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_191
.label_161:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_189
	test	cl, cl
	jne	.label_189
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_189
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_210:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_205
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_205:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_210
.label_189:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_219
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_219
.label_160:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_228:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_255:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_219:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_235:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_228
.label_157:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_228
.label_171:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_255
.label_153:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404410
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_268
	mov	qword ptr [rax], rbx
.label_268:
	mov	rax, r14
	add	rsp, 0x48
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
	#Procedure 0x404520
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_269
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_271:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_271
.label_269:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_272
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_273]], OFFSET FLAT:slot0
.label_272:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_270
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_270:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045d0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_274
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_279
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_275
.label_279:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_278
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_277
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_277:
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_275:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_280
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_276
	mov	rdi, rbx
	call	free
.label_276:
	mov	rdi, r14
	call	xcharalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_280:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_274:
	call	abort
.label_278:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4047c0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quotearg_n_mem
	.section	.text
	.align	32
	#Procedure 0x4047d0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	rbx, rdx
	mov	ebp, edi
	lea	r14, [rsp + 8]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_281
	mov	dword ptr [rdi], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	movups	xmmword ptr [rdi + 4], xmm0
	mov	rax, rdi
	add	rsp, 0x38
	ret	
.label_281:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, rcx
	mov	rbx, rdx
	mov	ebp, edi
	lea	r15, [rsp]
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4048b0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	mov	rax, rsi
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	eax, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_282]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	edx, 1
	mov	rdi, r15
	mov	esi, eax
	call	set_char_quoting
	xor	edi, edi
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404970

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404980
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404990
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	call	quoting_options_from_style
	mov	esi, 0x3a
	mov	edx, 1
	mov	rdi, rbx
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, r14
	mov	rcx, rbx
	call	quotearg_n_options
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_282]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_283]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_284]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rax, rdx
	mov	rcx, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	xor	edi, edi
	mov	r8, rax
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404aa0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	mov	rsi, rcx
	mov	rdx, rax
	jmp	quote_n_mem
	.section	.text
	.align	32
	#Procedure 0x404ac0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ae0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_286
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_285
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_286
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_286
.label_285:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_287
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_286
	mov	eax, OFFSET FLAT:.str.18_0
	jmp	.label_286
.label_287:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_286:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	test	al, al
	je	.label_289
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_288
.label_289:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_288
.label_290:
	mov	eax, 1
	test	bpl, bpl
	je	.label_288
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_288:
	add	rsp, 8
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
	#Procedure 0x404c50

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	dword ptr [rsp + 4], r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	test	al, al
	je	.label_293
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_291
	jmp	.label_292
.label_293:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_292
.label_291:
	mov	eax, 1
	test	bpl, bpl
	je	.label_292
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	movsx	r9d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq2
.label_292:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404ce0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	mov	r13d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_295
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_296
	jmp	.label_294
.label_295:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_294
.label_296:
	mov	eax, 1
	test	bpl, bpl
	je	.label_294
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq3
.label_294:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	r12d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 3]
	test	al, al
	je	.label_299
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_298
	jmp	.label_297
.label_299:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_297
.label_298:
	mov	eax, 1
	test	bpl, bpl
	je	.label_297
	movsx	esi, r12b
	movsx	edx, r15b
	movsx	ecx, r14b
	mov	rdi, rbx
	pop	rbx
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
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404dd0

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	r15d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 4]
	test	al, al
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_300
	jmp	.label_301
.label_302:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_301
.label_300:
	mov	eax, 1
	test	bpl, bpl
	je	.label_301
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_301:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e40

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	test	al, al
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_305
	jmp	.label_304
.label_303:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_304
.label_305:
	mov	eax, 1
	test	bpl, bpl
	je	.label_304
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_304:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e90

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	je	.label_308
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_307
	jmp	.label_306
.label_308:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_306
.label_307:
	mov	eax, 1
	test	bpl, bpl
	je	.label_306
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_306:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ee0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_311
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_310
	jmp	.label_309
.label_311:
	mov	eax, 1
	test	cl, cl
	je	.label_309
.label_310:
	xor	eax, eax
.label_309:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f10
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f30
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f40
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f60
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f70

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404f80
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f90
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	jmp	numcompare
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fb0

	.globl numcompare
	.type numcompare, @function
numcompare:
	movzx	ecx, byte ptr [rdi]
	mov	dl, byte ptr [rsi]
	cmp	ecx, 0x2d
	jne	.label_326
	nop	
.label_330:
	movzx	r10d, byte ptr [rdi + 1]
	inc	rdi
	cmp	r10d, 0x30
	je	.label_330
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_333
	nop	dword ptr [rax]
.label_332:
	movzx	eax, byte ptr [rsi + 1]
	inc	rsi
	cmp	eax, 0x30
	je	.label_332
	xor	edx, edx
	movzx	r8d, r10b
	movzx	ecx, al
	cmp	ecx, r8d
	jne	.label_343
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 9
	ja	.label_344
	nop	dword ptr [rax + rax]
.label_323:
	mov	r9b, byte ptr [rdi + rdx + 1]
	movzx	eax, byte ptr [rsi + rdx + 1]
	movzx	r10d, r9b
	inc	rdx
	cmp	eax, r10d
	jne	.label_340
	lea	ecx, [r10 - 0x30]
	cmp	ecx, 0xa
	jb	.label_323
.label_340:
	add	rsi, rdx
	add	rdi, rdx
	jmp	.label_325
.label_326:
	movzx	r8d, dl
	cmp	r8d, 0x2d
	jne	.label_328
	inc	rsi
	nop	dword ptr [rax + rax]
.label_334:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_334
	add	edx, -0x30
	mov	eax, 1
	cmp	edx, 0xa
	jb	.label_321
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_341
	inc	rdi
	nop	word ptr [rax + rax]
.label_312:
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_312
.label_341:
	movzx	eax, cl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_333:
	add	r10d, -0x30
	mov	eax, 0xffffffff
	cmp	r10d, 0xa
	jb	.label_321
	cmp	r8d, 0x30
	jne	.label_317
	inc	rsi
	nop	word ptr cs:[rax + rax]
.label_335:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	edx, 0x30
	je	.label_335
.label_317:
	movzx	eax, dl
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	ret	
.label_328:
	movzx	eax, cl
	cmp	eax, 0x30
	jne	.label_337
	nop	
.label_339:
	movzx	ecx, byte ptr [rdi + 1]
	inc	rdi
	cmp	ecx, 0x30
	je	.label_339
.label_337:
	cmp	r8d, 0x30
	jne	.label_314
	nop	word ptr cs:[rax + rax]
.label_316:
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	cmp	edx, 0x30
	je	.label_316
.label_314:
	movzx	r8d, cl
	movzx	eax, dl
	cmp	r8d, eax
	jne	.label_315
	nop	dword ptr [rax + rax]
.label_324:
	lea	eax, [r8 - 0x30]
	cmp	eax, 0xa
	jae	.label_315
	mov	cl, byte ptr [rdi + 1]
	inc	rdi
	movzx	edx, byte ptr [rsi + 1]
	inc	rsi
	movzx	r8d, cl
	cmp	r8d, edx
	je	.label_324
.label_315:
	movzx	eax, dl
	movzx	edx, cl
	add	edx, -0x30
	xor	ecx, ecx
	cmp	edx, 9
	ja	.label_329
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_331:
	movzx	edx, byte ptr [rdi + rcx + 1]
	inc	rcx
	add	edx, -0x30
	cmp	edx, 0xa
	jb	.label_331
.label_329:
	lea	edi, [rax - 0x30]
	xor	edx, edx
	cmp	edi, 9
	ja	.label_342
	xor	edx, edx
	nop	dword ptr [rax]
.label_313:
	movzx	edi, byte ptr [rsi + rdx + 1]
	inc	rdx
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_313
.label_342:
	cmp	rcx, rdx
	jne	.label_318
	sub	r8d, eax
	xor	eax, eax
	test	rcx, rcx
	jmp	.label_319
.label_318:
	mov	ecx, 0xffffffff
	mov	eax, 1
	cmovb	eax, ecx
	ret	
.label_343:
	mov	r9b, r10b
	jmp	.label_325
.label_344:
	mov	r9b, r10b
.label_325:
	movzx	r8d, al
	movzx	eax, r9b
	add	eax, -0x30
	xor	edx, edx
	cmp	eax, 9
	ja	.label_327
	xor	edx, edx
	nop	dword ptr [rax]
.label_338:
	movzx	eax, byte ptr [rdi + rdx + 1]
	inc	rdx
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_338
.label_327:
	lea	ecx, [r8 - 0x30]
	xor	eax, eax
	cmp	ecx, 9
	ja	.label_336
	xor	eax, eax
	nop	dword ptr [rax]
.label_322:
	movzx	ecx, byte ptr [rsi + rax + 1]
	inc	rax
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_322
.label_336:
	cmp	rdx, rax
	jne	.label_320
	sub	r8d, r10d
	xor	eax, eax
	test	rdx, rdx
.label_319:
	cmovne	eax, r8d
.label_321:
	ret	
.label_320:
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmovb	eax, ecx
	ret	
	.section	.text
	.align	32
	#Procedure 0x405220
	.globl fraccompare
	.type fraccompare, @function
fraccompare:

	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	jne	.label_345
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0xff
	je	.label_350
.label_345:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0xff
	je	.label_353
	xor	eax, eax
	movzx	ecx, byte ptr [rsi]
	cmp	ecx, 0xff
	jne	.label_347
	inc	rsi
	nop	
.label_351:
	movsx	eax, byte ptr [rsi]
	inc	rsi
	cmp	eax, 0x30
	je	.label_351
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	jmp	.label_347
.label_353:
	inc	rdi
	nop	dword ptr [rax + rax]
.label_349:
	movsx	eax, byte ptr [rdi]
	inc	rdi
	cmp	eax, 0x30
	je	.label_349
	add	eax, -0x30
	cmp	eax, 0xa
	sbb	eax, eax
	and	eax, 1
	ret	
.label_350:
	inc	rdi
	inc	rsi
	nop	dword ptr [rax]
.label_348:
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
	jb	.label_348
.label_347:
	ret	
.label_346:
	cmp	edx, 9
	ja	.label_352
	movsx	ecx, cl
	lea	edx, [rcx - 0x30]
	cmp	edx, 9
	ja	.label_352
	sub	eax, ecx
	ret	
.label_352:
	movsx	eax, byte ptr [rdi]
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_349
	movsx	ecx, byte ptr [rsi]
	add	ecx, -0x30
	xor	eax, eax
	cmp	ecx, 0xa
	jb	.label_351
	jmp	.label_347
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4052f0
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	mov	rax, rdi
	mov	rdx, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_354
	mov	eax, 1
	jg	.label_354
	sub	esi, ecx
	mov	eax, esi
.label_354:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405340
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_355]]
	addsd	xmm0, xmm1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405360

	.globl verror
	.type verror, @function
verror:
	mov	r9, rcx
	mov	rax, rdx
	xor	edx, edx
	xor	ecx, ecx
	mov	r8, rax
	jmp	verror_at_line
	nop	
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	rbp, rdx
	mov	r14d, esi
	mov	r12d, edi
	mov	rdi, r8
	mov	rsi, r9
	call	xvasprintf
	mov	rbx, rax
	test	rbx, rbx
	je	.label_358
	test	rbp, rbp
	je	.label_357
	mov	r8d, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rdx, rbp
	mov	ecx, r15d
	mov	r9, rbx
	call	error_at_line
	jmp	.label_356
.label_357:
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, r12d
	mov	esi, r14d
	mov	rcx, rbx
	call	error
.label_356:
	mov	rdi, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
.label_358:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405410
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_359
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_359:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405440

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_361
.label_360:
	pop	rbx
	ret	
.label_361:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405460
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_362
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_362:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_363
	test	rbx, rbx
	jne	.label_363
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_363:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_364
.label_365:
	pop	rbx
	ret	
.label_364:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4054c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_366
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_369
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_367
.label_366:
	test	rcx, rcx
	jne	.label_370
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_370:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_368
.label_367:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_369:
	call	xalloc_die
.label_368:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405550
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405590
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_371
	call	rpl_calloc
	test	rax, rax
	je	.label_371
	pop	rcx
	ret	
.label_371:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055c0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055f0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	mov	rbx, rdi
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	pop	rbx
	jmp	xmemdup
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405610

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_372
	nop	dword ptr [rax + rax]
.label_378:
	inc	rdi
.label_372:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	edx, 0x25
	jne	.label_376
	movzx	edx, byte ptr [rcx + rdi*2 + 1]
	cmp	edx, 0x73
	je	.label_378
	jmp	.label_373
.label_376:
	test	dl, dl
	jne	.label_373
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_373:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_374
	mov	rax, qword ptr [rsp]
	jmp	.label_375
.label_374:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_377
.label_375:
	pop	rcx
	ret	
.label_377:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056b0

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r12, rdi
	mov	rax, qword ptr [r14 + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp], xmm0
	test	r12, r12
	je	.label_384
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_381:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_380
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_383
	nop	word ptr [rax + rax]
.label_380:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_383:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_381
	test	rbx, -0x80000000
	je	.label_382
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_385
.label_384:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_379
.label_382:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_379
	nop	dword ptr [rax]
.label_386:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_388
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_387
	nop	dword ptr [rax + rax]
.label_388:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_387:
	mov	r13, qword ptr [rax]
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	add	rbx, rbp
	dec	r12
	jne	.label_386
.label_379:
	mov	byte ptr [rbx], 0
.label_385:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_389
	test	rsi, rsi
	mov	ecx, 1
	je	.label_390
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_390
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_389:
	mov	ecx, 1
.label_390:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405830

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	je	.label_391
	cmp	r15, -2
	jb	.label_391
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_391
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_391:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405890
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
	#Procedure 0x4058c0
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
	#Procedure 0x4058e0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0
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
	#Procedure 0x405900
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
	#Procedure 0x405920
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
	#Procedure 0x405930
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
	#Procedure 0x405940
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
	#Procedure 0x405950
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
	#Procedure 0x405960
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
	#Procedure 0x405990
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
	#Procedure 0x4059b0

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
	#Procedure 0x4059c0
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
	#Procedure 0x4059e0
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
	#Procedure 0x4059f0
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
	#Procedure 0x405a00

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	rdi, rbx
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	call	rpl_fclose
	test	ebp, ebp
	je	.label_401
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_402
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_402
.label_401:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_402
	test	cl, cl
	jne	.label_402
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_402:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a70

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_404
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_405
	cmp	byte ptr [rax + 1], 0
	je	.label_403
.label_405:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_404
.label_403:
	xor	ebx, ebx
.label_404:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ab0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_406
	mov	rax, rcx
.label_406:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ae0

	.globl xsum
	.type xsum, @function
xsum:
	add	rsi, rdi
	cmp	rsi, rdi
	mov	rax, -1
	cmovae	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	pop	rbx
	jmp	xsum
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b20
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rdx
	call	xsum
	mov	rdi, rax
	mov	rsi, rbx
	call	xsum
	mov	rdi, rax
	mov	rsi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	xsum
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405b50
	.globl xmax
	.type xmax, @function
xmax:

	cmp	rdi, rsi
	cmovae	rsi, rdi
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b60

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_407
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_408
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_407
.label_408:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_407
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_409
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_409:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_407:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405be0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_410
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_410
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_410:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c10

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_411
	ret	
.label_411:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_412
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_412
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_413
.label_412:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_413:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_414
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_414:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ca0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
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
	#Procedure 0x405d70

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
