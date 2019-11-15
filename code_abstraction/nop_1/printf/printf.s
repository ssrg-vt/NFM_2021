	.section	.text
	.align	32
	#Procedure 0x401600

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
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	xor	eax, eax
	mov	rsi, rcx
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401790

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.22
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.10
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
	mov	ebx, OFFSET FLAT:.str.10
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.10
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.36
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
	#Procedure 0x4018b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.12
	mov	esi, OFFSET FLAT:.str.13
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.12
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + exit_status]],  0
	mov	edi, OFFSET FLAT:.str.14
	call	getenv
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	cmp	ebp, 2
	jne	.label_11
	mov	r14, qword ptr [rbx + 8]
	mov	esi, OFFSET FLAT:.str.15
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_15
	mov	esi, OFFSET FLAT:.str.16
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	jne	.label_18
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.18_0
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_16
.label_11:
	jl	.label_13
.label_18:
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_12
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	jne	.label_12
	cmp	byte ptr [rax + 2], 0
	jne	.label_12
	cmp	ebp, 2
	jle	.label_13
	add	rbx, 8
	dec	ebp
.label_12:
	mov	r14, qword ptr [rbx + 8]
	add	ebp, -2
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_17:
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, rbx
	call	print_formatted
	sub	ebp, eax
	cdqe	
	lea	rbx, [rbx + rax*8]
	test	eax, eax
	jle	.label_19
	test	ebp, ebp
	jg	.label_17
.label_19:
	test	ebp, ebp
	jle	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_14:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
	and	ebx, 1
.label_16:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	call	usage
.label_15:
	xor	edi, edi
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401a50

	.globl print_formatted
	.type print_formatted, @function
print_formatted:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r12, rdx
	mov	r15d, esi
	mov	dword ptr [rsp + 0x1c], r15d
	mov	r13, rdi
	mov	al, byte ptr [r13]
	test	al, al
	je	.label_44
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	movabs	r14, 0x410150000001
	mov	r15d, dword ptr [rsp + 0x1c]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	nop	dword ptr [rax + rax]
.label_25:
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_30
	cmp	edi, 0x25
	jne	.label_33
	lea	rbx, [r13 + 1]
	movzx	eax, byte ptr [r13 + 1]
	cmp	eax, 0x71
	je	.label_34
	movzx	eax, al
	cmp	eax, 0x62
	je	.label_37
	cmp	eax, 0x25
	jne	.label_40
	mov	edi, 0x25
	call	putchar_unlocked
	jmp	.label_22
	nop	dword ptr [rax + rax]
.label_30:
	xor	esi, esi
	mov	rdi, r13
	call	print_esc
	movsxd	rbx, eax
	add	rbx, r13
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_33:
	call	putchar_unlocked
	mov	rbx, r13
	jmp	.label_22
.label_34:
	test	r15d, r15d
	jle	.label_22
	mov	rsi, qword ptr [r12]
	mov	edi, 3
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	jmp	.label_46
.label_37:
	test	r15d, r15d
	jle	.label_22
	mov	rdi, qword ptr [r12]
	call	print_esc_string
.label_46:
	add	r12, 8
	dec	r15d
	jmp	.label_22
.label_40:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	byte ptr [rsp + 0x88], 1
	mov	byte ptr [rsp + 0xa8], 1
	mov	byte ptr [rsp + 0xa5], 1
	mov	byte ptr [rsp + 0xa3], 1
	mov	byte ptr [rsp + 0x9f], 1
	mov	byte ptr [rsp + 0x99], 1
	mov	byte ptr [rsp + 0x77], 1
	mov	byte ptr [rsp + 0x76], 1
	mov	byte ptr [rsp + 0x75], 1
	mov	byte ptr [rsp + 0x71], 1
	mov	byte ptr [rsp + 0x91], 1
	lea	rax, [rsp + 0x93]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	xor	edi, edi
	mov	ebp, 1
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
.label_20:
	inc	rbp
	inc	rdi
.label_45:
	mov	cl, byte ptr [r13 + rbp]
	movsx	edx, cl
	cmp	edx, 0x26
	jle	.label_41
	lea	esi, [rdx - 0x27]
	cmp	esi, 9
	ja	.label_50
	jmp	qword ptr [word ptr [+ (rsi * 8) + label_47]]
.label_425:
	mov	byte ptr [rsp + 0xa3], 0
	mov	byte ptr [rsp + 0x93], 0
	jmp	.label_20
	nop	word ptr cs:[rax + rax]
.label_41:
	cmp	edx, 0x20
	je	.label_20
	cmp	edx, 0x23
	jne	.label_29
	mov	byte ptr [rsp + 0xa5], 0
	mov	byte ptr [rsp + 0xa3], 0
	mov	byte ptr [rsp + 0x99], 0
	mov	word ptr [rsp + 0x93], 0
	jmp	.label_20
.label_50:
	cmp	edx, 0x49
	jne	.label_29
.label_424:
	mov	byte ptr [rsp + 0x88], 0
	mov	byte ptr [rsp + 0xa8], 0
	mov	byte ptr [rsp + 0xa3], 0
	mov	byte ptr [rsp + 0x9f], 0
	mov	byte ptr [rsp + 0x75], 0
	mov	byte ptr [rsp + 0x95], 0
	mov	byte ptr [rsp + 0x93], 0
	mov	byte ptr [rsp + 0x71], 0
	mov	byte ptr [rsp + 0x91], 0
	jmp	.label_20
.label_29:
	movzx	ecx, cl
	cmp	ecx, 0x2a
	jne	.label_51
	lea	rbx, [r13 + rbp + 1]
	inc	rbp
	xor	eax, eax
	mov	r8b, 1
	test	r15d, r15d
	jle	.label_21
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	sub	rcx, -0x80000000
	shr	rcx, 0x20
	jne	.label_28
	add	r12, 8
	dec	r15d
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r8b, 1
	jmp	.label_23
.label_51:
	lea	rbx, [r13 + rbp]
	movsx	ecx, byte ptr [rbx]
	add	ecx, -0x30
	cmp	ecx, 0xa
	mov	rdx, qword ptr [rsp + 0x20]
	jae	.label_39
	nop	word ptr [rax + rax]
.label_38:
	movsx	ecx, byte ptr [r13 + rdi + 2]
	add	ecx, -0x30
	inc	rdi
	cmp	ecx, 0xa
	jb	.label_38
	lea	rbx, [r13 + rdi + 1]
	inc	rdi
	xor	r8d, r8d
	mov	rbp, rdi
	jmp	.label_23
.label_39:
	xor	r8d, r8d
	jmp	.label_23
.label_21:
	mov	rdx, qword ptr [rsp + 0x20]
.label_23:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2e
	jne	.label_24
	mov	byte ptr [rsp + 0x93], 0
	movzx	ecx, byte ptr [rbx + 1]
	cmp	ecx, 0x2a
	jne	.label_27
	add	rbx, 2
	add	rbp, 2
	xor	edx, edx
	mov	dil, 1
	test	r15d, r15d
	jle	.label_26
	mov	dword ptr [rsp + 0x20], r8d
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	edx, 0xffffffff
	test	rax, rax
	js	.label_42
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_49
	mov	edx, eax
.label_42:
	add	r12, 8
	dec	r15d
	mov	rax, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rsp + 0x20]
	mov	dil, 1
	jmp	.label_26
	nop	dword ptr [rax]
.label_27:
	inc	rbp
	movsx	ecx, byte ptr [rbx + 1]
	inc	rbx
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_27
.label_24:
	xor	edi, edi
	jmp	.label_26
	nop	word ptr cs:[rax + rax]
.label_35:
	inc	rbx
.label_26:
	movzx	esi, byte ptr [rbx]
	mov	cl, sil
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	ecx, 0x2e
	ja	.label_31
	bt	r14, rcx
	jb	.label_35
.label_31:
	cmp	byte ptr [rsp + rsi + 0x30], 0
	je	.label_36
	test	r15d, r15d
	jle	.label_43
	dec	r15d
	mov	rcx, qword ptr [r12]
	add	r12, 8
	jmp	.label_32
.label_43:
	mov	ecx, OFFSET FLAT:.str_0
.label_32:
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp], edx
	mov	qword ptr [rsp + 0x20], rdx
	movzx	ecx, r8b
	movzx	r9d, dil
	movsx	edx, sil
	mov	rdi, r13
	mov	rsi, rbp
	mov	r8, rax
	mov	qword ptr [rsp + 0x28], r8
	call	print_direc
	nop	word ptr cs:[rax + rax]
.label_22:
	mov	al, byte ptr [rbx + 1]
	inc	rbx
	test	al, al
	mov	r13, rbx
	jne	.label_25
.label_44:
	mov	eax, dword ptr [rsp + 0x1c]
	sub	eax, r15d
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	inc	ebx
	sub	ebx, r13d
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	mov	r8, r13
	call	error
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	jmp	.label_48
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
.label_48:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl print_esc_string
	.type print_esc_string, @function
print_esc_string:
	push	rbx
	mov	rbx, rdi
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_53:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_52:
	movsx	edi, byte ptr [rbx]
	cmp	edi, 0x5c
	je	.label_53
	test	dil, dil
	je	.label_54
	call	putchar_unlocked
	inc	rbx
	jmp	.label_52
.label_54:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f80

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x27
	je	.label_55
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_57
.label_55:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_57
	cmp	byte ptr [rbx + 2], 0
	je	.label_56
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_56
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_56
.label_57:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	strtoimax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_56:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl print_direc
	.type print_direc, @function
print_direc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x18], r9d
	mov	dword ptr [rsp + 0x14], r8d
	mov	dword ptr [rsp + 0x1c], ecx
	mov	r14d, edx
	mov	r15, rsi
	mov	r12, rdi
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x20], rax
	mov	eax, dword ptr [rsp + 0x60]
	mov	dword ptr [rsp + 0x10], eax
	mov	r13d, OFFSET FLAT:.str.44
	mov	ebx, 1
	lea	eax, [r14 - 0x41]
	cmp	eax, 0x37
	ja	.label_74
	movabs	rcx, 0x7100000071
	bt	rcx, rax
	jae	.label_68
	mov	r13d, OFFSET FLAT:.str.45
	mov	ebx, 1
	jmp	.label_60
.label_68:
	movabs	rcx, 0x90410800800000
	bt	rcx, rax
	jae	.label_74
.label_60:
	lea	rdi, [r15 + rbx + 2]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r14b
	mov	byte ptr [rax + 1], 0
	cmp	r14d, 0x6e
	jg	.label_70
	lea	eax, [r14 - 0x58]
	cmp	eax, 0x11
	ja	.label_71
	jmp	qword ptr [word ptr [+ (rax * 8) + label_72]]
.label_383:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtoimax
	jmp	.label_62
.label_70:
	add	r14d, -0x6f
	cmp	r14d, 9
	ja	.label_58
	jmp	qword ptr [word ptr [+ (r14 * 8) + label_79]]
.label_381:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtoumax
.label_62:
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_78
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_64
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, dword ptr [rsp + 0x10]
.label_65:
	call	xprintf
	jmp	.label_58
.label_71:
	lea	eax, [r14 - 0x45]
	cmp	eax, 3
	jb	.label_69
	cmp	r14d, 0x41
	jne	.label_58
.label_69:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtold
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_73
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_77
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, dword ptr [rsp + 0x10]
	call	xprintf
	jmp	.label_58
.label_73:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_59
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x10]
	call	xprintf
	jmp	.label_58
.label_78:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_66
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x10]
	jmp	.label_67
.label_77:
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	call	xprintf
	jmp	.label_58
.label_59:
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, rbp
	call	xprintf
	jmp	.label_58
.label_64:
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
.label_67:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_58
.label_66:
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, rcx
	call	xprintf
	jmp	.label_58
.label_74:
	xor	ebx, ebx
	mov	r13, r12
	jmp	.label_60
.label_413:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_61
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_63
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x20]
	jmp	.label_65
.label_382:
	mov	rax, qword ptr [rsp + 0x20]
	movsx	ecx, byte ptr [rax]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_75
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	edx, ecx
	call	xprintf
	jmp	.label_58
.label_61:
	mov	eax, dword ptr [rsp + 0x18]
	test	al, al
	je	.label_80
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x10]
	jmp	.label_76
.label_75:
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, ecx
	call	xprintf
	jmp	.label_58
.label_63:
	xor	eax, eax
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
.label_76:
	mov	rdx, qword ptr [rsp + 0x20]
	call	xprintf
	jmp	.label_58
.label_80:
	xor	eax, eax
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x20]
	call	xprintf
.label_58:
	mov	rdi, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022c0

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	movsx	ebx, byte ptr [r14 + 1]
	cmp	ebx, 0x78
	jne	.label_91
	call	__ctype_b_loc
	mov	r12, qword ptr [rax]
	xor	r15d, r15d
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_93:
	movsx	ebx, byte ptr [r14 + r15 + 2]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r12 + rax*2 + 1], 0x10
	je	.label_100
	mov	eax, ebp
	shl	eax, 4
	mov	cl, bl
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_83
	add	ebx, -0x57
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	cl, bl
	add	cl, 0xbf
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_89
	add	ebx, -0x37
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_89:
	add	ebx, -0x30
.label_86:
	mov	ebp, ebx
	add	ebp, eax
	inc	r15
	cmp	r15d, 2
	jl	.label_93
	jmp	.label_96
.label_91:
	mov	eax, ebx
	and	eax, 0xf8
	cmp	eax, 0x30
	jne	.label_98
	movzx	eax, bl
	cmp	eax, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	lea	rdx, [rax + r14 + 1]
	xor	ecx, ecx
	xor	edi, edi
	nop	word ptr cs:[rax + rax]
.label_87:
	movsx	esi, byte ptr [rdx + rcx]
	mov	ebp, esi
	and	ebp, 0xf8
	cmp	ebp, 0x30
	jne	.label_97
	lea	edi, [rsi + rdi*8 - 0x30]
	inc	rcx
	cmp	ecx, 3
	jl	.label_87
.label_97:
	add	rax, r14
	lea	r13, [rcx + rax + 1]
	call	putchar_unlocked
	jmp	.label_82
.label_100:
	test	r15d, r15d
	je	.label_88
.label_96:
	lea	r13, [r14 + r15 + 2]
	mov	edi, ebp
	call	putchar_unlocked
	jmp	.label_82
.label_98:
	test	bl, bl
	je	.label_95
	mov	edi, OFFSET FLAT:.str.47
	mov	edx, 0xc
	mov	esi, ebx
	call	memchr
	test	rax, rax
	je	.label_95
	lea	r13, [r14 + 2]
	mov	edi, ebx
	call	print_esc_char
	jmp	.label_82
.label_95:
	lea	r13, [r14 + 1]
	mov	al, byte ptr [r13]
	or	al, 0x20
	movzx	eax, al
	cmp	eax, 0x75
	jne	.label_81
	movsx	eax, byte ptr [r14 + 1]
	mov	dword ptr [rsp + 4], eax
	cmp	eax, 0x75
	setne	al
	movzx	ebx, al
	lea	eax, [rbx*4 + 4]
	mov	dword ptr [rsp], eax
	lea	r13, [r14 + 2]
	call	__ctype_b_loc
	mov	r15, qword ptr [rax]
	lea	r12d, [rbx*4 + 5]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_90:
	movsx	ebx, byte ptr [r13]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	test	byte ptr [r15 + rax*2 + 1], 0x10
	je	.label_88
	mov	eax, ebp
	shl	eax, 4
	mov	cl, bl
	add	cl, 0x9f
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_99
	add	ebx, -0x57
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	cl, bl
	add	cl, 0xbf
	movzx	ecx, cl
	cmp	ecx, 5
	ja	.label_84
	add	ebx, -0x37
	jmp	.label_85
	nop	word ptr cs:[rax + rax]
.label_84:
	add	ebx, -0x30
.label_85:
	mov	ebp, ebx
	add	ebp, eax
	inc	r13
	dec	r12d
	cmp	r12d, 1
	jg	.label_90
	cmp	ebp, 0x9f
	ja	.label_92
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_94
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_94
.label_92:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_94
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_82
.label_81:
	mov	edi, 0x5c
	call	putchar_unlocked
	movsx	edi, byte ptr [r13]
	test	edi, edi
	je	.label_82
	call	putchar_unlocked
	lea	r13, [r14 + 2]
.label_82:
	not	r14d
	add	r13d, r14d
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.46
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_94:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, dword ptr [rsp + 4]
	mov	r8d, dword ptr [rsp]
	mov	r9d, ebp
	call	error
	.section	.text
	.align	32
	#Procedure 0x402590

	.globl verify_numeric
	.type verify_numeric, @function
verify_numeric:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	__errno_location
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	je	.label_105
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_102
.label_105:
	cmp	byte ptr [rbx], 0
	je	.label_104
	xor	edi, edi
	cmp	r14, rbx
	je	.label_103
	mov	esi, OFFSET FLAT:.str.43
	jmp	.label_101
.label_103:
	mov	esi, OFFSET FLAT:.str.42
.label_101:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_102:
	call	error
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_104:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402610

	.globl vstrtoumax
	.type vstrtoumax, @function
vstrtoumax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x27
	je	.label_108
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_106
.label_108:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_106
	cmp	byte ptr [rbx + 2], 0
	je	.label_107
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_107
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_107
.label_106:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	strtoumax
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_107:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl vstrtold
	.type vstrtold, @function
vstrtold:
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x27
	je	.label_109
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_111
.label_109:
	mov	al, byte ptr [rbx + 1]
	test	al, al
	je	.label_111
	movzx	eax, al
	mov	dword ptr [rsp + 0x14], eax
	fild	dword ptr [rsp + 0x14]
	cmp	byte ptr [rbx + 2], 0
	je	.label_112
	fstp	xword ptr [rsp + 8]
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_110
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_110
.label_111:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	cl_strtold
	fstp	xword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	call	verify_numeric
.label_110:
	fld	xword ptr [rsp + 8]
.label_112:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402750

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	lea	eax, [rdi - 0x61]
	cmp	eax, 0x15
	ja	.label_113
	jmp	qword ptr [word ptr [+ (rax * 8) + label_114]]
.label_402:
	mov	edi, 7
	jmp	putchar_unlocked
.label_403:
	mov	edi, 8
	jmp	putchar_unlocked
.label_405:
	mov	edi, 0x1b
	jmp	putchar_unlocked
.label_406:
	mov	edi, 0xc
	jmp	putchar_unlocked
.label_407:
	mov	edi, 0xa
	jmp	putchar_unlocked
.label_408:
	mov	edi, 0xd
	jmp	putchar_unlocked
.label_409:
	mov	edi, 9
	jmp	putchar_unlocked
.label_410:
	mov	edi, 0xb
.label_113:
	jmp	putchar_unlocked
.label_404:
	push	rax
	xor	edi, edi
	call	exit
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4027c0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x20]
	call	strtold
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax], 0
	je	.label_116
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsp + 0x20], rax
	jae	.label_115
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_116
.label_115:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_116:
	test	r14, r14
	je	.label_117
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14], rax
.label_117:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402840
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402850
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402860

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_120
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_118
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_118
.label_120:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_121
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_119
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_121:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_119:
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
	#Procedure 0x402920

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_122
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_123
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_123
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_124
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_124:
	mov	rbx, r14
.label_123:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_122:
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
	#Procedure 0x4029d0
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
	#Procedure 0x402a10
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
	#Procedure 0x402a20
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
	#Procedure 0x402a30

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
	#Procedure 0x402a70
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
	#Procedure 0x402a90

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_125
	test	rdx, rdx
	je	.label_125
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_125:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ac0
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
	#Procedure 0x402b40

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
.label_239:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_230
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_128]]
.label_445:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11
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
.label_446:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_154
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_154
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_183:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_171
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_171:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_183
.label_154:
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
	jmp	.label_195
.label_438:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_195
.label_441:
	mov	al, 1
.label_439:
	mov	r15b, 1
.label_442:
	test	r15b, 1
	mov	cl, 1
	je	.label_184
	mov	cl, al
.label_184:
	mov	al, cl
.label_440:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_138
	test	r10, r10
	je	.label_157
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_221
.label_138:
	xor	ecx, ecx
	jmp	.label_221
.label_443:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_225
	test	r10, r10
	je	.label_223
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_135
.label_444:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_195
.label_157:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_195
.label_225:
	xor	eax, eax
	jmp	.label_135
.label_223:
	mov	eax, 1
.label_135:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_195:
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
	jmp	.label_188
	nop	dword ptr [rax + rax]
.label_236:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_188:
	cmp	rbp, -1
	je	.label_199
	cmp	rsi, rbp
	jne	.label_201
	jmp	.label_203
	nop	dword ptr [rax]
.label_199:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_203
.label_201:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_208
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_209
	cmp	rbp, -1
	jne	.label_209
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
.label_209:
	cmp	rbx, rbp
	jbe	.label_217
.label_208:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_181:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_232
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_235]]
.label_455:
	test	rsi, rsi
	jne	.label_145
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_217:
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
	jne	.label_133
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_181
	jmp	.label_150
.label_133:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_181
.label_459:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_161
	test	rsi, rsi
	jne	.label_166
	cmp	rbp, 1
	je	.label_169
	xor	r15d, r15d
	jmp	.label_163
.label_448:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_168
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_150
	cmp	edi, 2
	jne	.label_177
	mov	al, r11b
	and	al, 1
	jne	.label_182
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_187
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_187:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_234
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_234:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_197
.label_449:
	mov	bl, 0x62
	jmp	.label_211
.label_450:
	mov	cl, 0x74
	jmp	.label_213
.label_451:
	mov	bl, 0x76
	jmp	.label_211
.label_452:
	mov	bl, 0x66
	jmp	.label_211
.label_453:
	mov	cl, 0x72
	jmp	.label_213
.label_456:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_142
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
	jae	.label_227
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_227:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_149
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_149:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_246
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_131
.label_457:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_137
	cmp	r14d, 2
	jne	.label_141
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_142
.label_141:
	mov	rdi, r14
	jmp	.label_145
.label_458:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_148
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_142
	mov	rdi, r14
	jmp	.label_152
.label_232:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_155
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
.label_186:
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
	ja	.label_173
	test	dl, dl
	je	.label_173
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_163
.label_161:
	test	rsi, rsi
	jne	.label_196
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_196
.label_169:
	mov	dl, 1
.label_454:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_150
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_163
.label_168:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_145
	mov	r14, rdi
	inc	rsi
	jmp	.label_188
.label_218:
	mov	rdi, r14
.label_131:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_163
.label_148:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_213
.label_152:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_139
.label_213:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_150
.label_211:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_163
	jmp	.label_146
.label_155:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_229
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_229:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_175:
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
	je	.label_127
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_132
	cmp	rbp, -2
	je	.label_144
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_147
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_164:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_156
	bt	rsi, rdx
	jb	.label_160
.label_156:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_164
.label_147:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_231
	xor	r15d, r15d
.label_231:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_175
	jmp	.label_186
.label_196:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_163
.label_137:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_145
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_145
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_145
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_202
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_206
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_150
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_212
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_212:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_179
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_226
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_190
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_190:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_163
.label_145:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_163:
	test	r12b, r12b
	je	.label_240
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_242
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_240:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_126
.label_242:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_129
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_139
	jmp	.label_146
	nop	word ptr cs:[rax + rax]
.label_126:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_146
	jmp	.label_139
.label_129:
	mov	bl, r13b
	mov	rsi, r14
.label_146:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_150
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_158
	mov	al, r11b
	and	al, 1
	jne	.label_158
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_165
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_165:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_241
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_178
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_178:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_158:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_192
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_192:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_198
.label_166:
	xor	r15d, r15d
	jmp	.label_163
.label_173:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_205
	nop	word ptr cs:[rax + rax]
.label_207:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_205:
	test	dl, dl
	je	.label_233
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_215
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_143
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_143:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_215
	nop	word ptr [rax + rax]
.label_233:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_142
	cmp	r14d, 2
	jne	.label_134
	mov	al, r11b
	and	al, 1
	jne	.label_134
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_237
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_237:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_204
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_204:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_159
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_159:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_134:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_214
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_214:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_220
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_220:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_153
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_153:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_215:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_139
	test	r11b, 1
	je	.label_174
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_176
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_170
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_170:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_222
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_222:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_176
	nop	word ptr cs:[rax + rax]
.label_174:
	mov	r14, rdi
.label_176:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_207
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_207
.label_139:
	test	r11b, 1
	je	.label_216
	and	al, 1
	jne	.label_216
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_136
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_136:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_198
	nop	dword ptr [rax + rax]
.label_216:
	mov	bl, r13b
	mov	r14, rdi
.label_198:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_236
.label_177:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_197
.label_182:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_197:
	cmp	rcx, r10
	jae	.label_244
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_244:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_247
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_162
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_185
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_167
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_167:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_243
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_243:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_163
.label_247:
	xor	r15d, r15d
	jmp	.label_163
.label_162:
	xor	r15d, r15d
	jmp	.label_163
.label_185:
	xor	r15d, r15d
	jmp	.label_163
.label_127:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_151
.label_132:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_172
.label_144:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_180
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_193:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_191
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_193
	xor	r15d, r15d
	jmp	.label_151
.label_180:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_172:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_151:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_186
.label_191:
	xor	r15d, r15d
	jmp	.label_151
.label_202:
	xor	r15d, r15d
	jmp	.label_163
.label_206:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_163
	nop	dword ptr [rax + rax]
.label_203:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_210
	or	dl, al
	je	.label_142
.label_210:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_219
	or	dl, al
	jne	.label_219
	test	r8b, 1
	jne	.label_228
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_219
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_239
.label_219:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_238
	test	cl, cl
	jne	.label_238
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_238
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_130:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_245:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_130
.label_238:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_140
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_140
.label_150:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_189:
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
.label_194:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_140:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_160:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_189
.label_142:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_189
.label_228:
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
	jmp	.label_194
.label_230:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d50
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
	#Procedure 0x403d60

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
	je	.label_248
	mov	qword ptr [rax], rbx
.label_248:
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
	#Procedure 0x403e60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_249
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_251:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_251
.label_249:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_252
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_253]], OFFSET FLAT:slot0
.label_252:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_250
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_250:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f10

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
	js	.label_254
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_259
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_255
.label_259:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_258
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
	jne	.label_257
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_257:
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
.label_255:
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
	ja	.label_260
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_256
	mov	rdi, rbx
	call	free
.label_256:
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
.label_260:
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
.label_254:
	call	abort
.label_258:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040f0
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
	#Procedure 0x404100
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
	#Procedure 0x404110

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
	#Procedure 0x404150

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
	je	.label_261
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
.label_261:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041b0

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
	#Procedure 0x4041f0

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
	#Procedure 0x404210
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
	#Procedure 0x404230

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
	mov	rcx,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x4042a0

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
	#Procedure 0x4042b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042d0
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
	#Procedure 0x404320

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404330

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
	mov	rax,  qword ptr [word ptr [rip + label_262]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_263]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_264]]
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
	#Procedure 0x4043a0
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
	#Procedure 0x4043c0
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
	#Procedure 0x4043e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043f0
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
	#Procedure 0x404400

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404410

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
	#Procedure 0x404420

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
	jne	.label_266
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
	je	.label_265
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_266
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_266
.label_265:
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
	je	.label_267
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_266
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_266
.label_267:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_266:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404500

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_270
	jmp	.label_268
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_268
.label_270:
	mov	eax, 1
	test	bpl, bpl
	je	.label_268
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
.label_268:
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
	#Procedure 0x404590

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
	je	.label_273
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_272
.label_273:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_272
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_272
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
.label_272:
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
	#Procedure 0x404620

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
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_276
	jmp	.label_275
.label_274:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_275
.label_276:
	mov	eax, 1
	test	bpl, bpl
	je	.label_275
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
.label_275:
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
	#Procedure 0x4046a0

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
	je	.label_279
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_277
.label_279:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_277
.label_278:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
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
.label_277:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404710

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
	je	.label_282
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_281
.label_282:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_281
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_281
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_281:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404780

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
	je	.label_283
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_285
	jmp	.label_284
.label_283:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_284
.label_285:
	mov	eax, 1
	test	bpl, bpl
	je	.label_284
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_284:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047d0

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
	je	.label_288
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_288:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_286
.label_287:
	mov	eax, 1
	test	bpl, bpl
	je	.label_286
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_286:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_291
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_290
	jmp	.label_289
.label_291:
	mov	eax, 1
	test	cl, cl
	je	.label_289
.label_290:
	xor	eax, eax
.label_289:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404850

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al,  byte ptr [byte ptr [rip + unicode_to_mb.initialized]]
	and	al, 1
	jne	.label_295
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  eax
	je	.label_293
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	cmp	rax, -1
	jne	.label_293
	mov	edi, OFFSET FLAT:.str.1_2
	mov	esi, OFFSET FLAT:.str_4
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_293:
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_295:
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	jne	.label_294
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	jne	.label_294
	mov	esi, OFFSET FLAT:.str.2_1
	jmp	.label_296
.label_294:
	lea	rbx, [rsp + 0x42]
	mov	rdi, rbx
	mov	esi, ebp
	call	u8_uctomb
	test	eax, eax
	js	.label_298
	cmp	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  0
	je	.label_300
	movsxd	rsi, eax
	lea	rdi, [rsp + 0x42]
	jmp	.label_299
.label_298:
	mov	esi, OFFSET FLAT:.str.3_0
	jmp	.label_296
.label_300:
	mov	qword ptr [rsp + 0x18], rbx
	cdqe	
	mov	qword ptr [rsp + 0x10], rax
	lea	r12, [rsp + 0x20]
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], 0x19
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rsi, [rsp + 0x18]
	lea	rdx, [rsp + 0x10]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp]
	call	iconv
	cmp	rax, -1
	je	.label_292
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_292
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_292
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	mov	rdi, r12
.label_299:
	mov	rdx, r13
	call	r15
	jmp	.label_297
.label_292:
	xor	esi, esi
.label_296:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
.label_297:
	add	rsp, 0x48
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
	#Procedure 0x4049c0

	.globl u8_uctomb
	.type u8_uctomb, @function
u8_uctomb:
	cmp	esi, 0x80
	jae	.label_301
	mov	byte ptr [rdi], sil
	mov	eax, 1
	ret	
.label_301:
	mov	edx, 6
	jmp	u8_uctomb_aux
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049e0

	.globl fwrite_success_callback
	.type fwrite_success_callback, @function
fwrite_success_callback:
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	fwrite
	xor	eax, eax
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a00

	.globl print_unicode_char
	.type print_unicode_char, @function
print_unicode_char:
	mov	eax, esi
	mov	rcx, rdi
	test	edx, edx
	mov	esi, OFFSET FLAT:exit_failure_callback
	mov	edx, OFFSET FLAT:fallback_failure_callback
	cmovne	rdx, rsi
	mov	esi, OFFSET FLAT:fwrite_success_callback
	mov	edi, eax
	jmp	unicode_to_mb
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl exit_failure_callback
	.type exit_failure_callback, @function
exit_failure_callback:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14d, edi
	xor	edi, edi
	test	rbx, rbx
	je	.label_302
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	mov	rbx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, rbx
	call	error
	jmp	.label_303
.label_302:
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_303:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ab0

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_304
	mov	edx, OFFSET FLAT:.str.6_0
	jmp	.label_305
.label_304:
	mov	edx, OFFSET FLAT:.str.7_0
.label_305:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404af0

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_307
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_306
	cmp	esi, 0xffff
	ja	.label_310
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_306
	jmp	.label_307
.label_310:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_307
.label_306:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_307
	cmp	r8d, 2
	je	.label_308
	cmp	r8d, 3
	je	.label_309
	cmp	r8d, 4
	jne	.label_311
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_309:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_308:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_311:
	mov	eax, r8d
.label_307:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bb0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_318
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_317
.label_318:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	xor	eax, eax
	mov	rdi, r14
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_313
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_314]]
.label_415:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_313:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_312
.label_416:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_418:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_319
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_321
.label_420:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_316
.label_421:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_316:
	mov	qword ptr [rsp + 0x10], rdi
.label_321:
	mov	qword ptr [rsp + 8], rsi
.label_319:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_320
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_312:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_315
.label_422:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_0
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_315:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_320:
	call	__fprintf_chk
.label_414:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_322:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_322
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_324:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_323
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_325
	nop	dword ptr [rax]
.label_323:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_325:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_326
	inc	r9
	cmp	r9, 0xa
	jb	.label_324
.label_326:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404f30

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_327
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_327:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fc0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405040
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_328
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_328:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405070

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_329
	test	rax, rax
	je	.label_330
.label_329:
	pop	rbx
	ret	
.label_330:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_331
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_331:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_332
	test	rbx, rbx
	jne	.label_332
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_332:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_334
	test	rax, rax
	je	.label_333
.label_334:
	pop	rbx
	ret	
.label_333:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_335
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_338
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_336
.label_335:
	test	rcx, rcx
	jne	.label_339
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_339:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_337
.label_336:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_338:
	call	xalloc_die
.label_337:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405170

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190
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
	#Procedure 0x4051c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_340
	call	rpl_calloc
	test	rax, rax
	je	.label_340
	pop	rcx
	ret	
.label_340:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051f0

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
	#Procedure 0x405220
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
	#Procedure 0x405240

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl xprintf
	.type xprintf, @function
xprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_341
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_341:
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
	lea	rsi, [rsp + 0xb0]
	call	xvprintf
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405310

	.globl xvprintf
	.type xvprintf, @function
xvprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_342
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	ferror
	test	eax, eax
	jne	.label_342
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_342:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405380
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	sub	rsp, 0xc8
	test	al, al
	je	.label_343
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_343:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rdx, [rsp + 0xb0]
	call	xvfprintf
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405420

	.globl xvfprintf
	.type xvfprintf, @function
xvfprintf:
	push	rbp
	push	r14
	push	rbx
	mov	rax, rdx
	mov	rcx, rsi
	mov	rbx, rdi
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_344
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_344
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_6
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_344:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405490

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_345
	test	rsi, rsi
	mov	ecx, 1
	je	.label_346
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_346
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_345:
	mov	ecx, 1
.label_346:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054e0

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
	je	.label_347
	cmp	r15, -2
	jb	.label_347
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_347
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_347:
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
	#Procedure 0x405540
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_348
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_348
.label_349:
	ret	
.label_348:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_349
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405570
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_350
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_350:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405590
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0
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
	#Procedure 0x4055b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_351
.label_352:
	ret	
.label_351:
	cmp	edi, 0x7f
	je	.label_352
	xor	eax, eax
	jmp	.label_352
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
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
	#Procedure 0x4055e0
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
	#Procedure 0x4055f0
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
	#Procedure 0x405600
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
	#Procedure 0x405610
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_353
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_353
.label_354:
	ret	
.label_353:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_354
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_355
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_355:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405660

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
	#Procedure 0x405670
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_356
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_356:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405690
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
	#Procedure 0x4056a0
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
	#Procedure 0x4056b0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_360
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	je	.label_359
	mov	rdi, r14
	mov	rsi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	uselocale
	test	rax, rax
	je	.label_358
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_357
.label_360:
	fldz	
	test	rbx, rbx
	je	.label_357
	mov	qword ptr [rbx], r14
	jmp	.label_357
.label_359:
	fldz	
	test	rbx, rbx
	je	.label_357
	mov	qword ptr [rbx], r14
.label_357:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_358:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_361
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_7
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_361:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405760

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
	je	.label_362
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_363
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_363
.label_362:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_363
	test	cl, cl
	jne	.label_363
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_363:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_365
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_366
	cmp	byte ptr [rax + 1], 0
	je	.label_364
.label_366:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_365
.label_364:
	xor	ebx, ebx
.label_365:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405810

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_2
	cmp	byte ptr [rcx], 0
	je	.label_367
	mov	rax, rcx
.label_367:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405840

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_368
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_370
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_368
.label_370:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_368
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_369
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_369:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_368:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_371
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_371
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_371:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_372
	ret	
.label_372:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405910

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
	jne	.label_373
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_373
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_374
.label_373:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_374:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_375
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_375:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x405980

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
