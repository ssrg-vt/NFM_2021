	.section	.text
	.align	16
	#Procedure 0x4015b0

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
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.10
	mov	ecx, OFFSET FLAT:.str.36
	xor	eax, eax
	call	__printf_chk
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
	.align	16
	#Procedure 0x401800

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x178
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
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
	cmp	r15d, 2
	jne	.label_20
	mov	rbp, qword ptr [r14 + 8]
	mov	esi, OFFSET FLAT:.str.15
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_31
	mov	esi, OFFSET FLAT:.str.16
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_38
	lea	rbx, [r14 + 8]
	jmp	.label_39
.label_20:
	jl	.label_40
	lea	rbx, [r14 + 8]
	mov	rbp, qword ptr [r14 + 8]
.label_39:
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_43
	movzx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2d
	jne	.label_44
	cmp	byte ptr [rbp + 2], 0
	je	.label_35
	mov	rbx, r14
	jmp	.label_47
.label_43:
	mov	rbx, r14
	jmp	.label_47
.label_44:
	mov	rbx, r14
	jmp	.label_47
.label_38:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.18_0
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_59
.label_35:
	cmp	r15d, 3
	jl	.label_40
	dec	r15d
	mov	rbp, qword ptr [r14 + 0x10]
.label_47:
	mov	qword ptr [rsp + 0x10], rbp
	add	r15d, -2
	add	rbx, 0x10
	movabs	r12, 0x410150000001
	nop	
.label_21:
	mov	qword ptr [rsp + 0x18], rbx
	mov	dword ptr [rsp + 0x20], r15d
	mov	al, byte ptr [rbp]
	test	al, al
	mov	r14, rbx
	mov	ebx, r15d
	mov	r15, rbp
	mov	dword ptr [rsp + 0x24], 0
	mov	ecx, 0
	mov	qword ptr [rsp + 0x28], rcx
	je	.label_66
.label_13:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_72
	cmp	ecx, 0x25
	jne	.label_74
	lea	rbp, [r15 + 1]
	movzx	eax, byte ptr [r15 + 1]
	cmp	eax, 0x71
	je	.label_75
	movzx	eax, al
	cmp	eax, 0x62
	je	.label_77
	cmp	eax, 0x25
	jne	.label_79
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_80
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_11
	nop	dword ptr [rax]
.label_72:
	xor	esi, esi
	mov	rdi, r15
	call	print_esc
	movsxd	rbp, eax
	add	rbp, r15
	jmp	.label_11
	nop	word ptr cs:[rax + rax]
.label_74:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_92
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_48:
	mov	rbp, r15
	jmp	.label_11
.label_75:
	test	ebx, ebx
	jle	.label_11
	mov	rsi, qword ptr [r14]
	mov	edi, 3
	call	quotearg_style
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	add	r14, 8
	dec	ebx
	jmp	.label_11
.label_77:
	test	ebx, ebx
	jle	.label_11
	mov	r15d, ebx
	mov	rbx, qword ptr [r14]
	jmp	.label_18
	nop	word ptr cs:[rax + rax]
.label_26:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_18:
	movzx	esi, byte ptr [rbx]
	cmp	esi, 0x5c
	je	.label_26
	test	sil, sil
	je	.label_27
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_60
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	inc	rbx
	jmp	.label_18
.label_60:
	call	__overflow
	inc	rbx
	jmp	.label_18
.label_79:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
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
	mov	byte ptr [rsp + 0xc8], 1
	mov	byte ptr [rsp + 0xe8], 1
	mov	byte ptr [rsp + 0xe5], 1
	mov	byte ptr [rsp + 0xe3], 1
	mov	byte ptr [rsp + 0xdf], 1
	mov	byte ptr [rsp + 0xd9], 1
	mov	byte ptr [rsp + 0xb7], 1
	mov	byte ptr [rsp + 0xb6], 1
	mov	byte ptr [rsp + 0xb5], 1
	mov	byte ptr [rsp + 0xb1], 1
	mov	byte ptr [rsp + 0xd1], 1
	lea	rax, [rsp + 0xd3]
	mov	byte ptr [rax + 4], 1
	mov	dword ptr [rax], 0x1010101
	mov	r13d, 1
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_87:
	inc	r13
.label_10:
	movsx	eax, byte ptr [r15 + r13]
	cmp	eax, 0x26
	jle	.label_82
	lea	ecx, [rax - 0x27]
	cmp	ecx, 9
	ja	.label_83
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_85]]
.label_454:
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd3], 0
	jmp	.label_87
	nop	
.label_82:
	cmp	eax, 0x20
	je	.label_87
	cmp	eax, 0x23
	jne	.label_9
	mov	byte ptr [rsp + 0xe5], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd9], 0
	mov	word ptr [rsp + 0xd3], 0
	inc	r13
	jmp	.label_10
.label_83:
	cmp	eax, 0x49
	jne	.label_9
.label_453:
	mov	byte ptr [rsp + 0xc8], 0
	mov	byte ptr [rsp + 0xe8], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xdf], 0
	mov	byte ptr [rsp + 0xb5], 0
	mov	byte ptr [rsp + 0xd5], 0
	mov	byte ptr [rsp + 0xd3], 0
	mov	byte ptr [rsp + 0xb1], 0
	mov	byte ptr [rsp + 0xd1], 0
	inc	r13
	jmp	.label_10
.label_9:
	lea	rbp, [r15 + r13]
	movzx	ecx, al
	cmp	ecx, 0x2a
	jne	.label_22
	inc	rbp
	inc	r13
	mov	al, 1
	mov	dword ptr [rsp + 0x34], eax
	test	ebx, ebx
	jle	.label_25
	mov	rdi, qword ptr [r14]
	call	vstrtoimax
	mov	qword ptr [rsp + 0x28], rax
	sub	rax, -0x80000000
	shr	rax, 0x20
	jne	.label_28
	add	r14, 8
	dec	ebx
	jmp	.label_36
.label_27:
	add	r14, 8
	mov	ebx, r15d
	dec	ebx
	jmp	.label_11
.label_22:
	add	eax, -0x30
	cmp	eax, 0xa
	jae	.label_41
	nop	dword ptr [rax]
.label_55:
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_55
.label_41:
	mov	dword ptr [rsp + 0x34], 0
	jmp	.label_36
.label_92:
	movzx	esi, al
	call	__overflow
	jmp	.label_48
.label_25:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_36:
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2e
	jne	.label_49
	mov	byte ptr [rsp + 0xd3], 0
	movsx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2a
	jne	.label_51
	add	rbp, 2
	add	r13, 2
	mov	al, 1
	mov	dword ptr [rsp + 0x30], eax
	test	ebx, ebx
	jle	.label_56
	mov	rdi, qword ptr [r14]
	call	vstrtoimax
	mov	dword ptr [rsp + 0x24], 0xffffffff
	test	rax, rax
	js	.label_63
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_46
	mov	dword ptr [rsp + 0x24], eax
.label_63:
	add	r14, 8
	mov	qword ptr [rsp + 0x60], r14
	dec	ebx
	jmp	.label_67
.label_51:
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_70
	inc	rbp
	nop	
.label_71:
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_71
.label_49:
	mov	qword ptr [rsp + 0x60], r14
	mov	dword ptr [rsp + 0x30], 0
	jmp	.label_67
.label_70:
	mov	qword ptr [rsp + 0x60], r14
	inc	rbp
	mov	dword ptr [rsp + 0x30], 0
	jmp	.label_67
.label_56:
	mov	dword ptr [rsp + 0x24], 0
	mov	qword ptr [rsp + 0x60], r14
	jmp	.label_67
	nop	word ptr cs:[rax + rax]
.label_86:
	inc	rbp
.label_67:
	mov	r14b, byte ptr [rbp]
	movzx	eax, r14b
	mov	cl, r14b
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	ecx, 0x2e
	ja	.label_91
	bt	r12, rcx
	jb	.label_86
.label_91:
	cmp	byte ptr [rsp + rax + 0x70], 0
	je	.label_88
	movsx	edx, r14b
	test	ebx, ebx
	jle	.label_89
	dec	ebx
	mov	dword ptr [rsp + 0x4c], ebx
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp + 0x58], rcx
	add	rax, 8
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_90
.label_89:
	mov	dword ptr [rsp + 0x4c], ebx
	mov	eax, OFFSET FLAT:.str_0
	mov	qword ptr [rsp + 0x58], rax
.label_90:
	lea	eax, [rdx - 0x41]
	mov	qword ptr [rsp + 0x38], rdx
	cmp	eax, 0x37
	ja	.label_15
	movabs	rcx, 0x7100000071
	bt	rcx, rax
	jae	.label_24
	mov	ebx, 1
	mov	r12d, OFFSET FLAT:.str.45
	jmp	.label_58
.label_24:
	movabs	rcx, 0x90410800800000
	bt	rcx, rax
	mov	ebx, 1
	mov	r12d, OFFSET FLAT:.str.44
	jae	.label_15
.label_58:
	lea	rdi, [r13 + rbx + 2]
	call	xmalloc
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r13
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r12
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r14b
	mov	byte ptr [rax + 1], 0
	mov	rdx, qword ptr [rsp + 0x38]
	cmp	edx, 0x6e
	jg	.label_32
	lea	eax, [rdx - 0x58]
	cmp	eax, 0x11
	mov	r14, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	ja	.label_37
	mov	ebx, dword ptr [rsp + 0x4c]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_42]]
.label_463:
	mov	rdi, rcx
	call	vstrtoimax
	mov	rcx, rax
	jmp	.label_45
.label_32:
	add	edx, -0x6f
	cmp	edx, 9
	mov	r14, qword ptr [rsp + 0x60]
	mov	ebx, dword ptr [rsp + 0x4c]
	mov	r13, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x58]
	ja	.label_19
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_52]]
.label_456:
	mov	r15d, ebx
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x27
	je	.label_54
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_57
.label_54:
	movzx	r12d, byte ptr [rcx + 1]
	test	r12, r12
	je	.label_57
	cmp	byte ptr [rcx + 2], 0
	je	.label_33
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	mov	ebx, dword ptr [rsp + 0x34]
	jne	.label_30
	add	rcx, 2
	mov	qword ptr [rsp + 0x58], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x58]
	call	error
	jmp	.label_30
.label_37:
	lea	eax, [rdx - 0x45]
	cmp	eax, 3
	mov	ebx, dword ptr [rsp + 0x4c]
	mov	r13, qword ptr [rsp + 0x40]
	jb	.label_73
	cmp	edx, 0x41
	jne	.label_19
.label_73:
	movzx	eax, byte ptr [rcx]
	cmp	eax, 0x27
	je	.label_78
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_69
.label_78:
	mov	al, byte ptr [rcx + 1]
	test	al, al
	je	.label_69
	mov	r15d, ebx
	movzx	eax, al
	mov	dword ptr [rsp + 0x6c], eax
	fild	dword ptr [rsp + 0x6c]
	fstp	xword ptr [rsp + 0x4c]
	cmp	byte ptr [rcx + 2], 0
	je	.label_81
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	mov	ebx, dword ptr [rsp + 0x34]
	jne	.label_84
	add	rcx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	mov	r12, rcx
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r12
	call	error
	jmp	.label_84
.label_69:
	mov	r15d, ebx
	mov	rbx, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x170]
	call	cl_strtold
	fstp	xword ptr [rsp + 0x4c]
	mov	rsi, qword ptr [rsp + 0x170]
	mov	rdi, rbx
	call	verify_numeric
.label_81:
	mov	ebx, dword ptr [rsp + 0x34]
.label_84:
	mov	eax, dword ptr [rsp + 0x30]
	test	bl, bl
	je	.label_14
	test	al, al
	mov	ebx, r15d
	je	.label_16
	fld	xword ptr [rsp + 0x4c]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_19
.label_14:
	test	al, al
	mov	ebx, r15d
	je	.label_12
	fld	xword ptr [rsp + 0x4c]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_19
.label_45:
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	je	.label_29
	mov	eax, dword ptr [rsp + 0x30]
	test	al, al
	je	.label_34
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x24]
	call	xprintf
	jmp	.label_19
.label_57:
	mov	rbx, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbx
	lea	rsi, [rsp + 0x170]
	call	__strtoul_internal
	mov	r12, rax
	mov	rsi, qword ptr [rsp + 0x170]
	mov	rdi, rbx
	call	verify_numeric
.label_33:
	mov	ebx, dword ptr [rsp + 0x34]
.label_30:
	mov	eax, dword ptr [rsp + 0x30]
	test	bl, bl
	je	.label_50
	test	al, al
	je	.label_53
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x24]
	mov	rcx, r12
	call	xprintf
	mov	ebx, r15d
	jmp	.label_19
.label_50:
	test	al, al
	je	.label_62
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_64
.label_29:
	mov	eax, dword ptr [rsp + 0x30]
	test	al, al
	je	.label_65
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x24]
	jmp	.label_68
.label_16:
	fld	xword ptr [rsp + 0x4c]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	call	xprintf
	jmp	.label_19
.label_12:
	fld	xword ptr [rsp + 0x4c]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	call	xprintf
	jmp	.label_19
.label_15:
	xor	ebx, ebx
	mov	r12, r15
	jmp	.label_58
.label_462:
	movsx	ecx, byte ptr [rcx]
	mov	eax, dword ptr [rsp + 0x34]
	test	al, al
	je	.label_76
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, ecx
	call	xprintf
	jmp	.label_19
.label_80:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_11
.label_53:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_64:
	mov	rdx, r12
	call	xprintf
	mov	ebx, r15d
	jmp	.label_19
.label_62:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r12
	call	xprintf
	mov	ebx, r15d
	jmp	.label_19
.label_34:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_68:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_19
.label_65:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rcx
	call	xprintf
	jmp	.label_19
.label_76:
	xor	eax, eax
	mov	rdi, r13
	mov	esi, ecx
	call	xprintf
.label_19:
	mov	rdi, r13
	call	free
	movabs	r12, 0x410150000001
	nop	word ptr cs:[rax + rax]
.label_11:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	test	al, al
	mov	r15, rbp
	jne	.label_13
.label_66:
	mov	ecx, dword ptr [rsp + 0x20]
	sub	ecx, ebx
	movsxd	rax, ecx
	mov	edx, ebx
	mov	rbx, qword ptr [rsp + 0x18]
	lea	rbx, [rbx + rax*8]
	test	edx, edx
	mov	rbp, qword ptr [rsp + 0x10]
	jle	.label_17
	test	ecx, ecx
	mov	r15d, edx
	jg	.label_21
.label_17:
	test	edx, edx
	jle	.label_23
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
.label_23:
	movzx	ebx,  byte ptr [byte ptr [rip + exit_status]]
	and	ebx, 1
.label_59:
	mov	eax, ebx
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	inc	ebp
	sub	ebp, r15d
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebp
	mov	r8, r15
	call	error
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	jmp	.label_61
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
.label_61:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r14]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_40:
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
.label_31:
	xor	edi, edi
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402350

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x27
	je	.label_95
	movzx	eax, al
	cmp	eax, 0x22
	jne	.label_94
.label_95:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_94
	cmp	byte ptr [rbx + 2], 0
	je	.label_93
	mov	al,  byte ptr [byte ptr [rip + posixly_correct]]
	test	al, al
	jne	.label_93
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
	jmp	.label_93
.label_94:
	call	__errno_location
	mov	dword ptr [rax], 0
	lea	rsi, [rsp]
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, rbx
	call	__strtol_internal
	mov	r14, rax
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbx
	call	verify_numeric
.label_93:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023f0

	.globl print_esc
	.type print_esc, @function
print_esc:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	movsx	r12d, byte ptr [r14 + 1]
	cmp	r12d, 0x78
	jne	.label_126
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [r14 + 2]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	je	.label_98
	movsx	eax, dl
	mov	bl, al
	add	bl, 0x9f
	movzx	esi, bl
	cmp	esi, 5
	ja	.label_101
	add	eax, -0x57
	jmp	.label_104
.label_126:
	lea	rbx, [r14 + 1]
	mov	al, r12b
	and	al, 0xf8
	movzx	eax, al
	cmp	eax, 0x30
	jne	.label_107
	movzx	eax, r12b
	cmp	eax, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	lea	rcx, [rbx + rax]
	movsx	edx, byte ptr [rbx + rax]
	xor	eax, eax
	mov	esi, edx
	and	esi, 0xf8
	cmp	esi, 0x30
	jne	.label_111
	add	edx, -0x30
	movsx	eax, byte ptr [rcx + 1]
	inc	rcx
	mov	esi, eax
	and	esi, 0xf8
	cmp	esi, 0x30
	jne	.label_121
	lea	eax, [rax + rdx*8 - 0x30]
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	esi, edx
	and	esi, 0xf8
	cmp	esi, 0x30
	jne	.label_123
	lea	eax, [rdx + rax*8 - 0x30]
	inc	rcx
	mov	rbx, rcx
	jmp	.label_106
.label_107:
	test	r12b, r12b
	je	.label_119
	mov	edi, OFFSET FLAT:.str.47
	mov	edx, 0xc
	mov	esi, r12d
	call	memchr
	test	rax, rax
	je	.label_129
	lea	rbx, [r14 + 2]
	mov	eax, r12d
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_108
	jmp	qword ptr [word ptr [+ (rax * 8) + label_133]]
.label_428:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_134
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 7
	jmp	.label_96
.label_101:
	add	dl, 0xbf
	movzx	edx, dl
	cmp	edx, 5
	ja	.label_102
	add	eax, -0x37
	jmp	.label_104
.label_111:
	mov	rbx, rcx
	jmp	.label_106
.label_102:
	add	eax, -0x30
.label_104:
	movzx	edx, byte ptr [r14 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_115
	lea	rbx, [r14 + 3]
	jmp	.label_110
.label_115:
	movsx	ecx, dl
	shl	eax, 4
	mov	bl, cl
	add	bl, 0x9f
	movzx	esi, bl
	cmp	esi, 6
	jae	.label_112
	add	ecx, -0x57
	jmp	.label_116
.label_112:
	add	dl, 0xbf
	movzx	edx, dl
	cmp	edx, 6
	jae	.label_118
	add	ecx, -0x37
	jmp	.label_116
.label_121:
	mov	rbx, rcx
	mov	eax, edx
	jmp	.label_106
.label_118:
	add	ecx, -0x30
.label_116:
	add	eax, ecx
	lea	rbx, [r14 + 4]
.label_110:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_122
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_96
.label_129:
	mov	al, r12b
	or	al, 0x20
	movzx	eax, al
	cmp	eax, 0x75
	jne	.label_119
	movzx	eax, r12b
	cmp	eax, 0x75
	setne	al
	movzx	ebp, al
	lea	r15d, [rbp*4 + 4]
	lea	rbx, [r14 + 2]
	call	__ctype_b_loc
	mov	r8, qword ptr [rax]
	lea	ecx, [rbp*4 + 5]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_109:
	movzx	edi, byte ptr [rbx]
	test	byte ptr [r8 + rdi*2 + 1], 0x10
	je	.label_98
	movsx	esi, dil
	mov	edx, ebp
	shl	edx, 4
	mov	al, sil
	add	al, 0x9f
	movzx	eax, al
	cmp	eax, 5
	ja	.label_136
	add	esi, -0x57
	jmp	.label_99
	nop	word ptr [rax + rax]
.label_136:
	add	dil, 0xbf
	movzx	eax, dil
	cmp	eax, 5
	ja	.label_103
	add	esi, -0x37
	jmp	.label_99
	nop	word ptr cs:[rax + rax]
.label_103:
	add	esi, -0x30
.label_99:
	mov	ebp, esi
	add	ebp, edx
	inc	rbx
	dec	ecx
	cmp	ecx, 1
	jg	.label_109
	cmp	ebp, 0x9f
	ja	.label_113
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_100
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_100
.label_113:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_100
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_96
.label_119:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_125
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_114:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_96
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_128
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_117:
	lea	rbx, [r14 + 2]
	jmp	.label_96
.label_123:
	mov	rbx, rcx
.label_106:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_132
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_96:
	not	r14d
	add	ebx, r14d
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_122:
	movzx	esi, al
	call	__overflow
	jmp	.label_96
.label_132:
	movzx	esi, al
	call	__overflow
	jmp	.label_96
.label_429:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_105
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 8
	jmp	.label_96
.label_108:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_130
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_96
.label_431:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_120
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x1b
	jmp	.label_96
.label_432:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_124
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_96
.label_433:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_127
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_96
.label_434:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_131
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
	jmp	.label_96
.label_435:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_97
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
	jmp	.label_96
.label_436:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_135
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xb
	jmp	.label_96
.label_125:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_114
.label_128:
	call	__overflow
	jmp	.label_117
.label_134:
	mov	esi, 7
	call	__overflow
	jmp	.label_96
.label_105:
	mov	esi, 8
	call	__overflow
	jmp	.label_96
.label_130:
	movzx	esi, r12b
	call	__overflow
	jmp	.label_96
.label_120:
	mov	esi, 0x1b
	call	__overflow
	jmp	.label_96
.label_124:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_96
.label_127:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_96
.label_131:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_96
.label_97:
	mov	esi, 9
	call	__overflow
	jmp	.label_96
.label_135:
	mov	esi, 0xb
	call	__overflow
	jmp	.label_96
.label_98:
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
.label_430:
	xor	edi, edi
	call	exit
.label_100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r12d
	mov	r8d, r15d
	mov	r9d, ebp
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402950

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
	je	.label_141
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_138
.label_141:
	cmp	byte ptr [rbx], 0
	je	.label_140
	xor	edi, edi
	cmp	r14, rbx
	je	.label_139
	mov	esi, OFFSET FLAT:.str.43
	jmp	.label_137
.label_139:
	mov	esi, OFFSET FLAT:.str.42
.label_137:
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
.label_138:
	call	error
	mov	byte ptr [byte ptr [rip + exit_status]],  1
.label_140:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x18]
	call	strtold
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r12], 0
	je	.label_144
	fstp	xword ptr [rsp + 4]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x10]
	cmp	r12, rax
	jae	.label_143
	mov	qword ptr [rsp + 0x18], rax
	mov	r12, rax
	jmp	.label_144
.label_143:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 4]
.label_144:
	test	r14, r14
	je	.label_142
	mov	qword ptr [r14], r12
.label_142:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_148
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_147
	cmp	dword ptr [rbp], 0x20
	jne	.label_147
.label_148:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_146
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_145
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_146:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_145:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_150
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_149
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_149
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_151
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_151:
	mov	rbx, r14
.label_149:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_150:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be0
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
	.align	16
	#Procedure 0x402c20
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
	.align	16
	#Procedure 0x402c30
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
	.align	16
	#Procedure 0x402c40
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
	.align	16
	#Procedure 0x402c80
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
	.align	16
	#Procedure 0x402ca0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_152
	test	rdx, rdx
	je	.label_152
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_152:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cd0
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402d50

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_225:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_154
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_161]]
.label_444:
	mov	edi, OFFSET FLAT:.str.11
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_445:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_182
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_182
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_206:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_186
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_186:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_206
.label_182:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_223
.label_437:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_223
.label_440:
	mov	al, 1
.label_438:
	mov	r12b, 1
.label_441:
	test	r12b, 1
	mov	cl, 1
	je	.label_237
	mov	cl, al
.label_237:
	mov	al, cl
.label_439:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_240
	test	r10, r10
	je	.label_244
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_230
.label_240:
	xor	ecx, ecx
	jmp	.label_230
.label_442:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_269
	test	r10, r10
	je	.label_257
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_160
.label_443:
	mov	dil, 1
	mov	r9d, 5
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_223
.label_244:
	mov	ecx, 1
.label_230:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_223
.label_269:
	xor	eax, eax
	jmp	.label_160
.label_257:
	mov	eax, 1
.label_160:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_223:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_275
.label_176:
	inc	rdi
.label_275:
	cmp	rbp, -1
	je	.label_214
	cmp	rdi, rbp
	jne	.label_217
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_214:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_224
.label_217:
	test	r12b, r12b
	je	.label_227
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_229
	cmp	rbp, -1
	jne	.label_229
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_229:
	cmp	rbx, rbp
	jbe	.label_249
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_251
	nop	word ptr [rax + rax]
.label_227:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_251
.label_249:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_276
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_251
	jmp	.label_155
.label_276:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_251:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_211
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_175]]
.label_507:
	test	rdi, rdi
	jne	.label_163
	jmp	.label_184
.label_511:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_185
	test	rdi, rdi
	jne	.label_190
	cmp	rbp, 1
	je	.label_184
	xor	r13d, r13d
	jmp	.label_159
.label_500:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_194
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_155
	cmp	r9d, 2
	jne	.label_198
	mov	al, r14b
	and	al, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_205
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_205:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_216:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_180
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_180:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_189
.label_501:
	mov	bl, 0x62
	jmp	.label_235
.label_502:
	mov	cl, 0x74
	jmp	.label_197
.label_503:
	mov	bl, 0x76
	jmp	.label_235
.label_504:
	mov	bl, 0x66
	jmp	.label_235
.label_505:
	mov	cl, 0x72
	jmp	.label_197
.label_508:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_242
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_245
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_252
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_252:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_272
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_272:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_259
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_259:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_242:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_159
.label_509:
	cmp	r9d, 5
	je	.label_204
	cmp	r9d, 2
	jne	.label_163
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_163
	jmp	.label_169
.label_510:
	cmp	r9d, 2
	jne	.label_171
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_172
	jmp	.label_177
.label_211:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_178
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_156:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_195
	test	cl, cl
	je	.label_195
	xor	eax, eax
	jmp	.label_159
.label_185:
	test	rdi, rdi
	jne	.label_209
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_209
.label_184:
	mov	dl, 1
.label_506:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_270
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_159
.label_194:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_176
	jmp	.label_163
.label_171:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_197
.label_172:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_221
.label_197:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_231
.label_235:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_159
	jmp	.label_153
.label_178:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_238
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_238:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_200:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_271
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_274
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_277
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_162
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_170:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_166
	bt	rsi, rdx
	jb	.label_167
.label_166:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_170
.label_162:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_168
	xor	r13d, r13d
.label_168:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_200
	jmp	.label_156
.label_209:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_159
.label_204:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_163
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_163
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_163
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_202
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_207
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_263
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_220
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_220:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_226
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_233
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_233:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_157
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_157:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_159
.label_163:
	xor	eax, eax
	xor	r13d, r13d
.label_159:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_254
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_256
	jmp	.label_260
	nop	word ptr [rax + rax]
.label_254:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_260
.label_256:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_264
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_273
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_273:
	mov	bl, r15b
	je	.label_221
	jmp	.label_153
.label_264:
	mov	bl, r15b
.label_153:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_155
	cmp	r9d, 2
	jne	.label_158
	mov	al, r14b
	and	al, 1
	jne	.label_158
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_267
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_267:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_248
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_248:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_174
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_158:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_187
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_187:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_188
.label_190:
	xor	r13d, r13d
	jmp	.label_159
.label_195:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_196
	nop	word ptr [rax + rax]
.label_191:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_196:
	test	cl, cl
	je	.label_208
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_210
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_215
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_215:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_210
	nop	word ptr [rax + rax]
.label_208:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_155
	cmp	r9d, 2
	jne	.label_234
	mov	al, r14b
	and	al, 1
	jne	.label_234
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_236
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_236:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_183
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_183:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_250
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_250:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_234:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_262
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_262:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_265
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_265:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_192
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_192:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_210:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_221
	test	r14b, 1
	je	.label_218
	mov	bl, al
	and	bl, 1
	jne	.label_218
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_266
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_266:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_181
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_181:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_218:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_191
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_191
	nop	dword ptr [rax]
.label_221:
	test	r14b, 1
	je	.label_203
	and	al, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_203:
	mov	bl, r15b
.label_188:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_228:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_176
.label_198:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_189
.label_201:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_189:
	cmp	rcx, r10
	jae	.label_243
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_243:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_247
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_255
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_258
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_261
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_261:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_268
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_268:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_159
.label_247:
	xor	r13d, r13d
	jmp	.label_159
.label_255:
	xor	r13d, r13d
	jmp	.label_159
.label_258:
	xor	r13d, r13d
	jmp	.label_159
.label_274:
	xor	r13d, r13d
.label_271:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_156
.label_277:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_164
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_165:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_213
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_165
	xor	r13d, r13d
	jmp	.label_156
.label_164:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_156
.label_213:
	xor	r13d, r13d
	jmp	.label_156
.label_202:
	xor	r13d, r13d
	jmp	.label_159
.label_207:
	xor	r13d, r13d
	jmp	.label_159
	nop	dword ptr [rax]
.label_219:
	mov	r13, rdi
.label_224:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_193
	or	al, dl
	je	.label_179
.label_193:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_199
	or	al, dl
	jne	.label_199
	test	r8b, 1
	jne	.label_222
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_199
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_225
.label_199:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_232
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_232
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_232
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_246:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_239:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_246
.label_232:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_253
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_253
.label_270:
	mov	r9d, 2
	jmp	.label_155
.label_167:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_155
.label_179:
	mov	rbp, r13
	jmp	.label_155
.label_231:
	mov	r9d, 2
.label_155:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_173:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_222:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_173
.label_245:
	mov	r9d, 2
	jmp	.label_155
.label_177:
	mov	r9d, 2
	jmp	.label_155
.label_169:
	mov	r9d, 2
	jmp	.label_155
.label_263:
	mov	r9d, 5
	jmp	.label_155
.label_154:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fb0
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
	call	xmalloc
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
	je	.label_278
	mov	qword ptr [rax], rbx
.label_278:
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
	.align	16
	#Procedure 0x4040b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_279
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_282:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_282
.label_279:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_283
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_281]], OFFSET FLAT:slot0
.label_283:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_280
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_280:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404150
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404160

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
	js	.label_284
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_287
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_290
.label_287:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_286
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
	jne	.label_285
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_285:
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
.label_290:
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
	ja	.label_288
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_289
	mov	rdi, rbx
	call	free
.label_289:
	mov	rdi, r14
	call	xmalloc
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
.label_288:
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
.label_284:
	call	abort
.label_286:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404330
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404340
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404360
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_291
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_291:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4043f0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_292
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_292:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404460

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_293
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_293:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044d0
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_294
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_294:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4045b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404620

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046e0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_298
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_298:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404790
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_299
	test	rdx, rdx
	je	.label_299
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_299:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404800
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_300
	test	rdx, rdx
	je	.label_300
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_300:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_301
	test	rsi, rsi
	je	.label_301
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_301:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4048e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_295]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_296]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_297]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_302
	test	rsi, rsi
	je	.label_302
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_302:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_304
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_305
	cmp	ecx, 0x55
	jne	.label_303
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_303
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_303
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_303
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_303
	cmp	byte ptr [rax + 5], 0
	jne	.label_303
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_304
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_304
.label_305:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_303
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_303
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_303
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_303
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_303
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_303
	cmp	byte ptr [rax + 7], 0
	je	.label_306
.label_303:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_304:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_306:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_304
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_304
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

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
	jne	.label_317
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	call	strcmp
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]],  eax
	je	.label_310
	mov	esi, OFFSET FLAT:.str_4
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
	cmp	rax, -1
	jne	.label_310
	mov	edi, OFFSET FLAT:.str.1_2
	mov	esi, OFFSET FLAT:.str_4
	call	iconv_open
	mov	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  rax
.label_310:
	mov	byte ptr [byte ptr [rip + unicode_to_mb.initialized]],  1
.label_317:
	mov	ecx,  dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]]
	test	ecx, ecx
	jne	.label_314
	cmp	qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]],  -1
	jne	.label_314
	mov	esi, OFFSET FLAT:.str.2_1
	jmp	.label_308
.label_314:
	cmp	ebp, 0x7f
	ja	.label_311
	mov	byte ptr [rsp + 0x42], bpl
	mov	esi, 1
	jmp	.label_312
.label_311:
	lea	rdi, [rsp + 0x42]
	mov	edx, 6
	mov	esi, ebp
	call	u8_uctomb_aux
	test	eax, eax
	js	.label_316
	mov	ecx,  dword ptr [dword ptr [rip + unicode_to_mb.is_utf8]]
	movsxd	rsi, eax
.label_312:
	test	ecx, ecx
	je	.label_307
	lea	rdi, [rsp + 0x42]
	jmp	.label_309
.label_307:
	lea	rax, [rsp + 0x42]
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x10], rsi
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
	je	.label_315
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	jne	.label_315
	mov	rdi,  qword ptr [word ptr [rip + unicode_to_mb.utf8_to_local]]
	lea	rcx, [rsp + 8]
	lea	r8, [rsp]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_315
	mov	rsi, qword ptr [rsp + 8]
	sub	rsi, r12
	mov	rdi, r12
.label_309:
	mov	rdx, r13
	call	r15
	jmp	.label_313
.label_315:
	xor	esi, esi
	jmp	.label_308
.label_316:
	mov	esi, OFFSET FLAT:.str.3_0
.label_308:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
.label_313:
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
	.align	16
	#Procedure 0x404c30

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
	.align	16
	#Procedure 0x404c50

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
	.align	16
	#Procedure 0x404c80

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
	je	.label_318
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
	jmp	.label_319
.label_318:
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
.label_319:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404d00

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_320
	mov	edx, OFFSET FLAT:.str.6_0
	jmp	.label_321
.label_320:
	mov	edx, OFFSET FLAT:.str.7_0
.label_321:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d40

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_322
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_324
	cmp	esi, 0xffff
	ja	.label_327
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_324
	jmp	.label_322
.label_327:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_322
.label_324:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_322
	cmp	r8d, 2
	je	.label_323
	cmp	r8d, 3
	je	.label_325
	cmp	r8d, 4
	jne	.label_326
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_325:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_323:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_326:
	mov	eax, r8d
.label_322:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e00

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
	je	.label_328
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_337
.label_328:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_337:
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
	ja	.label_331
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_333]]
.label_466:
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
.label_331:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_330
.label_467:
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
.label_468:
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
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_334
.label_470:
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
	jmp	.label_329
.label_471:
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
	jmp	.label_336
.label_472:
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
.label_336:
	mov	qword ptr [rsp + 0x10], rdi
.label_329:
	mov	qword ptr [rsp + 8], rsi
.label_334:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_332
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_330:
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
	jmp	.label_335
.label_473:
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
.label_335:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_332:
	call	__fprintf_chk
.label_465:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_338:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_338
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_341:
	cmp	r10d, 0x28
	ja	.label_339
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_340
	nop	word ptr cs:[rax + rax]
.label_339:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_340:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_342
	inc	r9
	cmp	r9, 0xa
	jb	.label_341
.label_342:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
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
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_347:
	cmp	r8d, 0x28
	ja	.label_344
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_346
	nop	
.label_344:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_346:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_345
	inc	r9
	cmp	r9, 0xa
	jb	.label_347
.label_345:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405280
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
	.align	16
	#Procedure 0x405300
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_348
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_349
	test	rax, rax
	je	.label_348
.label_349:
	pop	rbx
	ret	
.label_348:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_350
	test	rax, rax
	je	.label_351
.label_350:
	pop	rbx
	ret	
.label_351:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_352
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_353
	test	rbx, rbx
	jne	.label_353
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_353:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_354
	test	rax, rax
	je	.label_352
.label_354:
	pop	rbx
	ret	
.label_352:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_355
	test	rbx, rbx
	jne	.label_355
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_355:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	je	.label_356
.label_357:
	pop	rbx
	ret	
.label_356:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4053e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_358
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_360
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_359
.label_358:
	test	rcx, rcx
	jne	.label_363
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_363:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_361
.label_359:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_362
	test	rbx, rbx
	jne	.label_362
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_362:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_364
	test	rax, rax
	je	.label_360
.label_364:
	pop	rbx
	ret	
.label_360:
	call	xalloc_die
.label_361:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405480
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_366
.label_365:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_367
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_370
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_371
	call	free
	xor	eax, eax
	jmp	.label_368
.label_367:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_369
	mov	qword ptr [rsi], rbx
.label_371:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_368
	test	rax, rax
	je	.label_369
.label_368:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
.label_370:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405510
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_373
	test	r14, r14
	je	.label_372
.label_373:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_372:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405550
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_374
	call	rpl_calloc
	test	rax, rax
	je	.label_374
	pop	rcx
	ret	
.label_374:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405580

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_375
	test	r15, r15
	je	.label_376
.label_375:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_376:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_378
	test	r15, r15
	je	.label_377
.label_378:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_377:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405610

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
	.align	16
	#Procedure 0x405640

	.globl xprintf
	.type xprintf, @function
xprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_379
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_379:
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
	.align	16
	#Procedure 0x4056e0

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
	jns	.label_380
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	ferror
	test	eax, eax
	jne	.label_380
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
.label_380:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405750
	.globl xfprintf
	.type xfprintf, @function
xfprintf:

	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rsi
	mov	r14, rdi
	test	al, al
	je	.label_381
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_381:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	lea	rcx, [rsp + 0xb0]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbx
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_382
	mov	rdi, r14
	call	ferror
	test	eax, eax
	jne	.label_382
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
.label_382:
	mov	eax, ebx
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405850
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
	jns	.label_383
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_383
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
.label_383:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_384
	test	rsi, rsi
	mov	ecx, 1
	je	.label_385
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_385
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_384:
	mov	ecx, 1
.label_385:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405910

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
	je	.label_386
	cmp	r15, -2
	jb	.label_386
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_386
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_386:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_389
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_7
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
.label_389:
	mov	rdi,  qword ptr [word ptr [rip + c_locale_cache]]
	test	rdi, rdi
	je	.label_387
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_390
	mov	rdi, r14
	mov	rsi, r15
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	uselocale
	test	rax, rax
	je	.label_391
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_388
.label_387:
	fldz	
	test	r15, r15
	je	.label_388
	mov	qword ptr [r15], r14
	jmp	.label_388
.label_390:
	fldz	
	test	r15, r15
	je	.label_388
	mov	qword ptr [r15], r14
.label_388:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_391:
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a20

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_393
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_392
	test	cl, cl
	jne	.label_392
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_392
.label_393:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_392
	call	__errno_location
	mov	dword ptr [rax], 0
.label_392:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a80

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_395
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_396
	cmp	byte ptr [rax + 1], 0
	je	.label_394
.label_396:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_395
.label_394:
	xor	ebx, ebx
.label_395:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ac0

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
	je	.label_397
	mov	rax, rcx
.label_397:
	add	rsp, 8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_398
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_400
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_398
.label_400:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_398
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_399
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_399:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_398:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_401
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_401
	test	byte ptr [rbx + 1], 1
	je	.label_401
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_401:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

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
	jne	.label_402
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_402
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_403
.label_402:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_403:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_404
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_404:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405c20

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