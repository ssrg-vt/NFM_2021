	.section	.text
	.align	32
	#Procedure 0x401660

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_16
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_16
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_9
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_20:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4018b0

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
	mov	esi, OFFSET FLAT:label_70
	call	setlocale
	mov	edi, OFFSET FLAT:label_74
	mov	esi, OFFSET FLAT:label_75
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_74
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + exit_status],  0
	mov	edi, OFFSET FLAT:label_79
	call	getenv
	test	rax, rax
	setne	byte ptr [rip + posixly_correct]
	cmp	r15d, 2
	jne	.label_85
	mov	rbp, qword ptr [r14 + 8]
	mov	esi, OFFSET FLAT:label_88
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_93
	mov	esi, OFFSET FLAT:label_94
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_97
	lea	rbx, [r14 + 8]
	jmp	.label_98
.label_85:
	jl	.label_86
	lea	rbx, [r14 + 8]
	mov	rbp, qword ptr [r14 + 8]
.label_98:
	cmp	byte ptr [rbp], 0x2d
	jne	.label_105
	cmp	byte ptr [rbp + 1], 0x2d
	jne	.label_105
	cmp	byte ptr [rbp + 2], 0
	je	.label_63
.label_105:
	mov	rbx, r14
.label_87:
	add	r15d, -2
	add	rbx, 0x10
	movabs	r14, 0x410150000001
	mov	qword ptr [rsp + 0x60], rbp
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	qword ptr [rsp + 0x68], rbx
	mov	al, byte ptr [rbp]
	test	al, al
	mov	dword ptr [rsp + 0x48], r15d
	mov	ebx, r15d
	je	.label_115
	mov	dword ptr [rsp + 0x18], 0
	mov	ebx, dword ptr [rsp + 0x48]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r15, qword ptr [rsp + 0x60]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rcx
	jmp	.label_47
.label_121:
	test	ebx, ebx
	jle	.label_31
	mov	rsi, qword ptr [r12]
	mov	edi, 3
	call	quotearg_style
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	add	r12, 8
	dec	ebx
	jmp	.label_31
.label_123:
	test	ebx, ebx
	jle	.label_31
	mov	r15d, ebx
	mov	rbx, qword ptr [r12]
	jmp	.label_32
	nop	dword ptr [rax + rax]
.label_40:
	mov	esi, 1
	mov	rdi, rbx
	call	print_esc
	cdqe	
	add	rax, rbx
	inc	rax
	mov	rbx, rax
.label_32:
	movzx	esi, byte ptr [rbx]
	cmp	esi, 0x5c
	je	.label_40
	test	sil, sil
	je	.label_42
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_45
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
	inc	rbx
	jmp	.label_32
.label_45:
	call	__overflow
	inc	rbx
	jmp	.label_32
.label_124:
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
	xor	eax, eax
	mov	r13d, 1
	jmp	.label_56
	nop	dword ptr [rax + rax]
.label_69:
	inc	r13
	inc	rax
.label_56:
	movsx	ecx, byte ptr [r15 + r13]
	lea	edx, [rcx - 0x20]
	cmp	edx, 0x29
	ja	.label_106
	jmp	qword ptr [(rdx * 8) + label_110]
.label_496:
	mov	byte ptr [rsp + 0xc8], 0
	mov	byte ptr [rsp + 0xe8], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xdf], 0
	mov	byte ptr [rsp + 0xb5], 0
	mov	byte ptr [rsp + 0xd5], 0
	mov	byte ptr [rsp + 0xd3], 0
	mov	byte ptr [rsp + 0xb1], 0
	mov	byte ptr [rsp + 0xd1], 0
	jmp	.label_69
.label_495:
	mov	byte ptr [rsp + 0xe5], 0
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd9], 0
	mov	word ptr [rsp + 0xd3], 0
	jmp	.label_69
.label_497:
	mov	byte ptr [rsp + 0xe3], 0
	mov	byte ptr [rsp + 0xd3], 0
	jmp	.label_69
.label_106:
	cmp	cl, 0x2a
	jne	.label_33
	lea	rbp, [r15 + r13 + 1]
	inc	r13
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	test	ebx, ebx
	jle	.label_34
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	rcx, rax
	mov	qword ptr [rsp + 0x28], rcx
	sub	rax, -0x80000000
	shr	rax, 0x20
	jne	.label_37
	add	r12, 8
	dec	ebx
	jmp	.label_46
.label_42:
	add	r12, 8
	mov	ebx, r15d
	dec	ebx
	jmp	.label_31
.label_33:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_51
	nop	word ptr [rax + rax]
.label_54:
	movsx	ecx, byte ptr [r15 + rax + 2]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_54
	lea	rbp, [r15 + rax + 1]
	inc	rax
	mov	dword ptr [rsp + 0x1c], 0
	mov	r13, rax
	jmp	.label_46
.label_51:
	lea	rbp, [r15 + r13]
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_46
.label_34:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_46:
	cmp	byte ptr [rbp], 0x2e
	jne	.label_66
	mov	byte ptr [rsp + 0xd3], 0
	movsx	eax, byte ptr [rbp + 1]
	cmp	eax, 0x2a
	jne	.label_67
	add	rbp, 2
	add	r13, 2
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
	test	ebx, ebx
	jle	.label_68
	mov	rdi, qword ptr [r12]
	call	vstrtoimax
	mov	dword ptr [rsp + 0x18], 0xffffffff
	test	rax, rax
	js	.label_73
	mov	ecx, 0x80000000
	cmp	rax, rcx
	jge	.label_77
	mov	dword ptr [rsp + 0x18], eax
.label_73:
	add	r12, 8
	mov	qword ptr [rsp + 0x30], r12
	dec	ebx
	jmp	.label_78
.label_66:
	mov	qword ptr [rsp + 0x30], r12
	jmp	.label_81
.label_67:
	inc	r13
	add	eax, -0x30
	cmp	eax, 9
	mov	qword ptr [rsp + 0x30], r12
	ja	.label_83
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_92:
	inc	r13
	movsx	eax, byte ptr [rbp + 1]
	inc	rbp
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_92
	jmp	.label_81
.label_83:
	inc	rbp
.label_81:
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_78
.label_68:
	mov	dword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x30], r12
	jmp	.label_78
.label_107:
	inc	rbp
.label_78:
	movzx	r12d, byte ptr [rbp]
	movzx	eax, r12b
	mov	ecx, r12d
	add	cl, 0xb4
	movzx	ecx, cl
	cmp	cl, 0x2e
	ja	.label_104
	bt	r14, rcx
	jb	.label_107
.label_104:
	cmp	byte ptr [rsp + rax + 0x70], 0
	je	.label_109
	movsx	r14d, r12b
	test	ebx, ebx
	jle	.label_112
	dec	ebx
	mov	dword ptr [rsp + 0x4c], ebx
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rax]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_114
.label_112:
	mov	dword ptr [rsp + 0x4c], ebx
	mov	ecx, OFFSET FLAT:label_70
.label_114:
	mov	qword ptr [rsp + 0x20], rcx
	add	r14d, -0x41
	cmp	r14d, 0x37
	ja	.label_117
	movabs	rax, 0x7100000071
	bt	rax, r14
	jae	.label_118
	mov	ebx, 1
	mov	eax, OFFSET FLAT:label_43
	jmp	.label_44
.label_118:
	movabs	rax, 0x90410800800000
	bt	rax, r14
	mov	ebx, 1
	mov	eax, OFFSET FLAT:label_122
	jae	.label_117
.label_44:
	mov	qword ptr [rsp + 0x38], rax
	lea	rdi, [r13 + rbx + 2]
	call	xmalloc
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, r15
	mov	rdx, r13
	mov	r13, rax
	call	__mempcpy_chk
	mov	rcx, -1
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	mov	byte ptr [rax + 1], 0
	cmp	r14d, 0x37
	mov	r12, qword ptr [rsp + 0x30]
	mov	ebx, dword ptr [rsp + 0x4c]
	ja	.label_36
	jmp	qword ptr [(r14 * 8) + label_49]
.label_502:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	cmp	al, 0x27
	je	.label_57
	cmp	al, 0x22
	jne	.label_53
.label_57:
	mov	al, byte ptr [rcx + 1]
	test	al, al
	je	.label_53
	mov	r14d, ebx
	movzx	eax, al
	mov	dword ptr [rsp + 0x5c], eax
	fild	dword ptr [rsp + 0x5c]
	fstp	xword ptr [rsp + 0x38]
	cmp	byte ptr [rcx + 2], 0
	je	.label_58
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r15d, dword ptr [rsp + 0x14]
	jne	.label_60
	add	rcx, 2
	mov	qword ptr [rsp + 0x20], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	jmp	.label_60
.label_53:
	mov	r14d, ebx
	mov	rbx, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rdi, rbx
	lea	rsi, [rsp + 0x50]
	call	cl_strtold
	fstp	xword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, rbx
	call	verify_numeric
.label_58:
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	r15d, dword ptr [rsp + 0x14]
.label_60:
	test	bl, bl
	je	.label_82
	test	r15b, r15b
	mov	ebx, r14d
	je	.label_52
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_36
.label_82:
	test	r15b, r15b
	mov	ebx, r14d
	je	.label_95
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	call	xprintf
	jmp	.label_36
.label_503:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rcx]
	cmp	al, 0x27
	je	.label_103
	cmp	al, 0x22
	jne	.label_59
.label_103:
	movzx	r15d, byte ptr [rcx + 1]
	test	r15, r15
	je	.label_59
	cmp	byte ptr [rcx + 2], 0
	je	.label_108
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	mov	r14d, dword ptr [rsp + 0x1c]
	jne	.label_80
	add	rcx, 2
	mov	qword ptr [rsp + 0x20], rcx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	jmp	.label_80
.label_59:
	mov	r14, rcx
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	lea	rsi, [rsp + 0x50]
	call	__strtoul_internal
	mov	r15, rax
	mov	rsi, qword ptr [rsp + 0x50]
	mov	rdi, r14
	call	verify_numeric
.label_108:
	mov	r14d, dword ptr [rsp + 0x1c]
.label_80:
	test	r14b, r14b
	je	.label_125
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_126
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	mov	rcx, r15
	jmp	.label_30
.label_505:
	mov	rdi, qword ptr [rsp + 0x20]
	call	vstrtoimax
	mov	rcx, rax
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_35
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_38
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	jmp	.label_30
.label_125:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_48
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_50
.label_52:
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	call	xprintf
	jmp	.label_36
.label_95:
	fld	xword ptr [rsp + 0x38]
	fstp	xword ptr [rsp]
	xor	eax, eax
	mov	rdi, r13
	call	xprintf
	jmp	.label_36
.label_117:
	xor	ebx, ebx
	mov	rax, r15
	jmp	.label_44
.label_504:
	mov	rax, qword ptr [rsp + 0x20]
	movsx	ecx, byte ptr [rax]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_65
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, ecx
	call	xprintf
	jmp	.label_36
.label_506:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	je	.label_71
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_72
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
.label_30:
	call	xprintf
	jmp	.label_36
.label_35:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_91
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_39
.label_126:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_50:
	mov	rdx, r15
	call	xprintf
	jmp	.label_36
.label_48:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, r15
	jmp	.label_90
.label_65:
	xor	eax, eax
	mov	rdi, r13
	mov	esi, ecx
	call	xprintf
	jmp	.label_36
.label_71:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_96
	xor	eax, eax
	mov	rdi, r13
	mov	esi, dword ptr [rsp + 0x18]
	jmp	.label_111
.label_38:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_39:
	mov	rdx, rcx
	call	xprintf
	jmp	.label_36
.label_91:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, rcx
	jmp	.label_90
.label_72:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x28]
.label_111:
	mov	rdx, qword ptr [rsp + 0x20]
	call	xprintf
	jmp	.label_36
.label_96:
	xor	eax, eax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
.label_90:
	call	xprintf
.label_36:
	mov	rdi, r13
	call	free
	movabs	r14, 0x410150000001
	jmp	.label_31
.label_61:
	movzx	esi, al
	call	__overflow
	jmp	.label_41
.label_127:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_31
	nop	dword ptr [rax]
.label_47:
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_119
	cmp	ecx, 0x25
	jne	.label_120
	lea	rbp, [r15 + 1]
	mov	al, byte ptr [r15 + 1]
	cmp	al, 0x71
	je	.label_121
	cmp	al, 0x62
	je	.label_123
	cmp	al, 0x25
	jne	.label_124
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_127
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_31
	nop	dword ptr [rax + rax]
.label_119:
	xor	esi, esi
	mov	rdi, r15
	call	print_esc
	movsxd	rbp, eax
	add	rbp, r15
	jmp	.label_31
	nop	word ptr cs:[rax + rax]
.label_120:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_61
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_41:
	mov	rbp, r15
.label_31:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	test	al, al
	mov	r15, rbp
	jne	.label_47
.label_115:
	mov	ecx, dword ptr [rsp + 0x48]
	sub	ecx, ebx
	movsxd	rax, ecx
	mov	edx, ebx
	mov	rbx, qword ptr [rsp + 0x68]
	lea	rbx, [rbx + rax*8]
	test	edx, edx
	mov	rbp, qword ptr [rsp + 0x60]
	jle	.label_55
	test	ecx, ecx
	mov	r15d, edx
	jg	.label_102
.label_55:
	test	edx, edx
	jle	.label_116
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
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
.label_116:
	movzx	ebx, byte ptr [rip + exit_status]
.label_84:
	mov	eax, ebx
	add	rsp, 0x178
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_97:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	xor	ebx, ebx
	mov	esi, OFFSET FLAT:label_9
	mov	edx, OFFSET FLAT:label_26
	mov	r8d, OFFSET FLAT:label_76
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	jmp	.label_84
.label_63:
	cmp	r15d, 3
	jl	.label_86
	dec	r15d
	mov	rbp, qword ptr [r14 + 0x10]
	jmp	.label_87
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
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
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	jmp	.label_100
.label_77:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
.label_100:
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
.label_86:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
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
.label_93:
	xor	edi, edi
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl vstrtoimax
	.type vstrtoimax, @function
vstrtoimax:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	al, byte ptr [rbx]
	cmp	al, 0x27
	je	.label_130
	cmp	al, 0x22
	jne	.label_128
.label_130:
	movzx	r14d, byte ptr [rbx + 1]
	test	r14, r14
	je	.label_128
	cmp	byte ptr [rbx + 2], 0
	je	.label_129
	mov	al, byte ptr [rip + posixly_correct]
	test	al, al
	jne	.label_129
	add	rbx, 2
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_129
.label_128:
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
.label_129:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402460

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
	jne	.label_140
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	movzx	edx, byte ptr [r14 + 2]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	je	.label_144
	movsx	eax, dl
	mov	ebx, eax
	add	bl, 0x9f
	cmp	bl, 5
	ja	.label_153
	add	eax, -0x57
	jmp	.label_149
.label_140:
	lea	rbx, [r14 + 1]
	mov	eax, r12d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_159
	cmp	r12b, 0x30
	sete	al
	and	al, sil
	movzx	eax, al
	lea	rcx, [rbx + rax]
	movsx	eax, byte ptr [rbx + rax]
	mov	edx, eax
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_162
	add	eax, -0x30
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	ebx, edx
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_131
	lea	eax, [rdx + rax*8 - 0x30]
	movsx	edx, byte ptr [rcx + 1]
	inc	rcx
	mov	ebx, edx
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_131
	lea	eax, [rdx + rax*8 - 0x30]
	inc	rcx
	jmp	.label_131
.label_159:
	test	r12b, r12b
	je	.label_133
	mov	edi, OFFSET FLAT:label_134
	mov	edx, 0xc
	mov	esi, r12d
	call	memchr
	test	rax, rax
	je	.label_138
	lea	rbx, [r14 + 2]
	mov	eax, r12d
	add	eax, -0x61
	cmp	eax, 0x15
	ja	.label_139
	jmp	qword ptr [(rax * 8) + label_156]
.label_563:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_143
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 7
	jmp	.label_132
.label_153:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_148
	add	eax, -0x37
	jmp	.label_149
.label_162:
	xor	eax, eax
.label_131:
	mov	rbx, rcx
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_150
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_132
.label_148:
	add	eax, -0x30
.label_149:
	movzx	edx, byte ptr [r14 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_158
	lea	rbx, [r14 + 3]
	jmp	.label_160
.label_158:
	movsx	ecx, dl
	shl	eax, 4
	mov	ebx, ecx
	add	bl, 0x9f
	cmp	bl, 6
	jae	.label_164
	add	ecx, -0x57
	jmp	.label_166
.label_164:
	add	dl, 0xbf
	cmp	dl, 6
	jae	.label_167
	add	ecx, -0x37
	jmp	.label_166
.label_167:
	add	ecx, -0x30
.label_166:
	add	eax, ecx
	lea	rbx, [r14 + 4]
.label_160:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_169
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
.label_132:
	not	r14d
	add	ebx, r14d
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_138:
	mov	eax, r12d
	or	al, 0x20
	cmp	al, 0x75
	jne	.label_133
	xor	ebp, ebp
	cmp	r12b, 0x75
	setne	bpl
	lea	r15d, [rbp*4 + 4]
	lea	rbx, [r14 + 2]
	call	__ctype_b_loc
	mov	r8, qword ptr [rax]
	lea	ecx, [rbp*4 + 5]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_155:
	movzx	edi, byte ptr [rbx]
	test	byte ptr [r8 + rdi*2 + 1], 0x10
	je	.label_144
	movsx	esi, dil
	mov	edx, ebp
	shl	edx, 4
	mov	eax, esi
	add	al, 0x9f
	cmp	al, 5
	ja	.label_146
	add	esi, -0x57
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_146:
	add	dil, 0xbf
	cmp	dil, 5
	ja	.label_151
	add	esi, -0x37
	jmp	.label_152
	nop	
.label_151:
	add	esi, -0x30
.label_152:
	mov	ebp, esi
	add	ebp, edx
	inc	rbx
	dec	ecx
	cmp	ecx, 1
	jg	.label_155
	cmp	ebp, 0x9f
	ja	.label_165
	lea	eax, [rbp - 0x24]
	cmp	eax, 0x3c
	ja	.label_163
	movabs	rcx, 0x1000000010000001
	bt	rcx, rax
	jae	.label_163
.label_165:
	mov	eax, ebp
	and	eax, 0xfffff800
	cmp	eax, 0xd800
	je	.label_163
	mov	rdi, qword ptr [rip + stdout]
	xor	edx, edx
	mov	esi, ebp
	call	print_unicode_char
	jmp	.label_132
.label_133:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_171
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
.label_154:
	movzx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_132
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_135
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_157:
	lea	rbx, [r14 + 2]
	jmp	.label_132
.label_564:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_141
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 8
	jmp	.label_132
.label_139:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_147
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r12b
	jmp	.label_132
.label_566:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_145
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x1b
	jmp	.label_132
.label_567:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_161
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xc
	jmp	.label_132
.label_568:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_168
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_132
.label_569:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_172
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xd
	jmp	.label_132
.label_570:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_136
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 9
	jmp	.label_132
.label_571:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_142
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xb
	jmp	.label_132
.label_169:
	movzx	esi, al
	call	__overflow
	jmp	.label_132
.label_150:
	movzx	esi, al
	call	__overflow
	jmp	.label_132
.label_171:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_154
.label_135:
	call	__overflow
	jmp	.label_157
.label_143:
	mov	esi, 7
	call	__overflow
	jmp	.label_132
.label_141:
	mov	esi, 8
	call	__overflow
	jmp	.label_132
.label_147:
	movzx	esi, r12b
	call	__overflow
	jmp	.label_132
.label_145:
	mov	esi, 0x1b
	call	__overflow
	jmp	.label_132
.label_161:
	mov	esi, 0xc
	call	__overflow
	jmp	.label_132
.label_168:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_132
.label_172:
	mov	esi, 0xd
	call	__overflow
	jmp	.label_132
.label_136:
	mov	esi, 9
	call	__overflow
	jmp	.label_132
.label_142:
	mov	esi, 0xb
	call	__overflow
	jmp	.label_132
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_137
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_565:
	xor	edi, edi
	call	exit
.label_163:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_170
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x402980

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
	je	.label_178
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_179
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_180
.label_178:
	cmp	byte ptr [rbx], 0
	je	.label_175
	xor	edi, edi
	cmp	r14, rbx
	je	.label_174
	mov	esi, OFFSET FLAT:label_176
	jmp	.label_177
.label_174:
	mov	esi, OFFSET FLAT:label_173
.label_177:
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
.label_180:
	call	error
	mov	byte ptr [rip + exit_status],  1
.label_175:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a00

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
	lea	rsi, [rsp]
	call	strtold
	mov	r12, qword ptr [rsp]
	cmp	byte ptr [r12], 0
	je	.label_182
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_181
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_182
.label_181:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_182:
	test	r14, r14
	je	.label_183
	mov	qword ptr [r14], r12
.label_183:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a80
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_189
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_185
	cmp	dword ptr [rbp], 0x20
	jne	.label_185
.label_189:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_187
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_186
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_179
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_187:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_186:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_188
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b60

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_190
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_192
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_194
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_192
	mov	esi, OFFSET FLAT:label_193
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_195
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_195:
	mov	rbx, r14
.label_192:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_190:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_191
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c10
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
	#Procedure 0x402c50
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
	#Procedure 0x402c60
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
	#Procedure 0x402c70
	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:

	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	eax, ecx
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
	#Procedure 0x402cb0
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
	#Procedure 0x402cd0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_196
	test	rdx, rdx
	je	.label_196
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_196:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d00
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 4], eax
	mov	r8, qword ptr [rbp]
	mov	r9, r8
	shr	r9, 0x20
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, r14
	push	qword ptr [rbp + 0x30]
	push	qword ptr [rbp + 0x28]
	lea	rax, [rbp + 8]
	push	rax
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	ecx, dword ptr [rsp + 4]
	mov	dword ptr [rbx], ecx
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
	#Procedure 0x402d80

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rsp + 0x110]
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x108]
	mov	qword ptr [rsp + 0x80], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xb8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x9c], eax
	mov	dword ptr [rsp + 0x20], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x98], ebx
	mov	dil, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa8], rcx
	jmp	.label_237
	nop	
.label_241:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_214
	or	al, dl
	jne	.label_214
	test	dil, 1
	jne	.label_229
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_214
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_237
	jmp	.label_214
.label_544:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_244
	test	rbp, rbp
	je	.label_247
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_247:
	mov	r14d, 1
	jmp	.label_250
.label_545:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_251
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_252
.label_244:
	xor	r14d, r14d
.label_250:
	mov	eax, OFFSET FLAT:label_251
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_266
	nop	
.label_237:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_274
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_232]
.label_546:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_284
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_210
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_547:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_239
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_239
	xor	r14d, r14d
	nop	
.label_312:
	cmp	r14, rbp
	jae	.label_302
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_302:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_312
.label_239:
	mov	rbx, qword ptr [rsp + 0x78]
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x50], rax
	mov	r8d, r15d
	mov	qword ptr [rsp + 0x58], rbx
	mov	r13b, 1
	mov	sil, r12b
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r9d, dword ptr [rsp + 0x60]
	jmp	.label_252
.label_539:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_252
.label_542:
	mov	al, 1
.label_540:
	mov	r12b, 1
.label_543:
	test	r12b, 1
	mov	cl, 1
	je	.label_322
	mov	ecx, eax
.label_322:
	mov	al, cl
.label_541:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_323
	test	rbp, rbp
	je	.label_201
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_201:
	mov	r14d, 1
	jmp	.label_243
.label_323:
	xor	r14d, r14d
.label_243:
	mov	ecx, OFFSET FLAT:label_210
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_266:
	mov	sil, r12b
.label_252:
	cmp	qword ptr [rsp + 0x100], 0
	setne	r12b
	cmp	r8d, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x33]
	mov	ebx, r15d
	mov	byte ptr [rsp + 0x1f], cl
	and	bl, cl
	cmp	qword ptr [rsp + 0x50], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x36], bl
	and	dl, bl
	mov	byte ptr [rsp + 0x37], dl
	mov	ebx, esi
	and	bl, 1
	sete	dl
	and	al, bl
	mov	byte ptr [rsp + 0x31], al
	mov	byte ptr [rsp + 0xf], bl
	and	r12b, bl
	mov	byte ptr [rsp + 0x35], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x27], dl
	mov	byte ptr [rsp + 0x34], r13b
	mov	qword ptr [rsp + 0xc0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x32], r13b
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x38], r8
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_223:
	inc	r12
.label_220:
	cmp	r11, -1
	je	.label_260
	cmp	r12, r11
	jne	.label_263
	jmp	.label_264
	nop	word ptr cs:[rax + rax]
.label_260:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_269
.label_263:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_275
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_278
	cmp	r11, -1
	jne	.label_278
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_278:
	cmp	rbx, r11
	jbe	.label_289
.label_275:
	xor	esi, esi
.label_314:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_290
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_293]
.label_597:
	test	r12, r12
	jne	.label_249
	jmp	.label_297
	nop	word ptr cs:[rax + rax]
.label_289:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_304
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_314
	jmp	.label_202
.label_304:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_314
.label_601:
	xor	eax, eax
	cmp	r11, -1
	je	.label_282
	test	r12, r12
	jne	.label_320
	cmp	r11, 1
	je	.label_297
	xor	r13d, r13d
	jmp	.label_203
.label_590:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_198
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_202
	cmp	r8d, 2
	jne	.label_206
	mov	eax, r9d
	and	al, 1
	jne	.label_206
	cmp	r14, rbp
	jae	.label_211
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_211:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_215
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_215:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_224
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	add	r14, 3
	mov	r9b, 1
.label_206:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_228
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_228:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_231
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_231
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_231
	cmp	r14, rbp
	jae	.label_236
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_236:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_209
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_209:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_203
.label_591:
	mov	bl, 0x62
	jmp	.label_262
.label_592:
	mov	cl, 0x74
	jmp	.label_253
.label_593:
	mov	bl, 0x76
	jmp	.label_262
.label_594:
	mov	bl, 0x66
	jmp	.label_262
.label_595:
	mov	cl, 0x72
	jmp	.label_253
.label_598:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_272
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_219
	test	rbp, rbp
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, rbp
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	rbp, rax
	cmp	r14, rbp
	jae	.label_279
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_279:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_291:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_295
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	add	r14, 3
	xor	r9d, r9d
.label_272:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_203
.label_599:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_298
	cmp	r8d, 2
	jne	.label_249
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_249
	jmp	.label_219
.label_600:
	cmp	r8d, 2
	jne	.label_308
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_219
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_233
.label_290:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_315
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_318
.label_282:
	test	r12, r12
	jne	.label_207
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_207
.label_297:
	mov	dl, 1
.label_596:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_219
	xor	eax, eax
	mov	r13b, dl
.label_203:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_222
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_225
	jmp	.label_227
	nop	word ptr cs:[rax + rax]
.label_222:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_227
.label_225:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_230
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_238
	nop	dword ptr [rax]
.label_227:
	test	sil, sil
.label_238:
	mov	ebx, r15d
	je	.label_257
	jmp	.label_246
.label_230:
	mov	ebx, r15d
	jmp	.label_246
.label_198:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_223
	xor	r15d, r15d
	jmp	.label_249
.label_308:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_253
	xor	eax, eax
	mov	r15b, 0x5c
.label_233:
	xor	r13d, r13d
	jmp	.label_257
.label_253:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_219
.label_262:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_203
	nop	
.label_246:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_202
	cmp	r8d, 2
	jne	.label_273
	mov	eax, r9d
	and	al, 1
	jne	.label_273
	cmp	r14, rbp
	jae	.label_277
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_277:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_212
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_212:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_271
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	mov	r9b, 1
.label_273:
	cmp	r14, rbp
	jae	.label_300
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_300:
	inc	r14
	jmp	.label_283
.label_315:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_294
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_294:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_259
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_287:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -2
	je	.label_310
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_319
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_208
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_199
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_309:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_296
	bt	rsi, rdx
	jb	.label_219
.label_296:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_309
.label_199:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_321
	xor	r13d, r13d
.label_321:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_287
	jmp	.label_240
.label_231:
	xor	r13d, r13d
	jmp	.label_203
.label_207:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_203
.label_298:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_249
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_249
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_249
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_258
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_280
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_268
	cmp	r14, rbp
	jae	.label_270
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_270:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_221
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_221:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_242
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_242:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_280:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_203
.label_249:
	xor	eax, eax
.label_320:
	xor	r13d, r13d
	jmp	.label_203
.label_259:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_317:
	mov	rax, r12
	mov	qword ptr [rsp + 0x40], rax
	mov	rcx, qword ptr [rsp + 0x88]
	lea	rax, [r12 + rcx]
	mov	r12, rcx
	lea	rsi, [r10 + rax]
	mov	rdx, r11
	sub	rdx, rax
	lea	rdi, [rsp + 0x64]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_305
	cmp	rbp, -1
	je	.label_307
	cmp	rbp, -2
	je	.label_310
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_313
	xor	r13d, r13d
.label_313:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_317
	jmp	.label_240
.label_310:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_204
	lea	rax, [r10 + r12]
.label_261:
	cmp	byte ptr [rax + rsi], 0
	je	.label_204
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_261
.label_204:
	mov	qword ptr [rsp + 0x40], rsi
.label_319:
	xor	r13d, r13d
	jmp	.label_208
.label_307:
	xor	r13d, r13d
.label_305:
	mov	r10, qword ptr [rsp + 0x28]
.label_208:
	mov	r12, qword ptr [rsp + 0x40]
.label_240:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_318:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_218
	test	al, al
	je	.label_218
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_203
.label_218:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_235
	nop	word ptr [rax + rax]
.label_306:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_235:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_245
	test	sil, 1
	je	.label_254
	cmp	r14, rbp
	jae	.label_248
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_248:
	inc	r14
	xor	esi, esi
	jmp	.label_254
	nop	word ptr cs:[rax + rax]
.label_245:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_202
	cmp	r8d, 2
	jne	.label_213
	mov	eax, r9d
	and	al, 1
	jne	.label_213
	cmp	r14, rbp
	jae	.label_267
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_267:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_255
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_255:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_226
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_226:
	add	r14, 3
	mov	r9b, 1
.label_213:
	cmp	r14, rbp
	jae	.label_281
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_281:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_286
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_286:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_292
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_292:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_254:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_257
	test	r9b, 1
	je	.label_299
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_234
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_303
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_303:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_311
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_311:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_299
	nop	word ptr cs:[rax + rax]
.label_234:
	mov	rbx, rcx
.label_299:
	cmp	r14, rbp
	jae	.label_306
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_306
	nop	
.label_257:
	test	r9b, 1
	je	.label_197
	and	al, 1
	jne	.label_197
	cmp	r14, rbp
	jae	.label_200
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_256
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 2
	xor	r9d, r9d
.label_197:
	mov	ebx, r15d
.label_283:
	cmp	r14, rbp
	jae	.label_216
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_216:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_223
.label_258:
	xor	r13d, r13d
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_264:
	mov	rcx, r12
.label_269:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_241
	or	al, dl
	jne	.label_241
	mov	r11, rcx
	jmp	.label_202
.label_219:
	mov	eax, 2
.label_316:
	mov	qword ptr [rsp + 0x38], rax
.label_202:
	mov	r9d, dword ptr [rsp + 0x20]
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	mov	rdx, r10
	mov	rcx, r11
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_265:
	mov	r14, rax
.label_301:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_214:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_217
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_205
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_205
	inc	rdx
	nop	dword ptr [rax + rax]
.label_288:
	cmp	r14, rbp
	jae	.label_285
	mov	byte ptr [rcx + r14], al
.label_285:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_288
	jmp	.label_205
.label_229:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r9d, dword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x80]
	push	qword ptr [rsp + 0x90]
	push	qword ptr [rsp + 0x118]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_265
.label_217:
	mov	rcx, qword ptr [rsp + 0x10]
.label_205:
	cmp	r14, rbp
	jae	.label_301
	mov	byte ptr [rcx + r14], 0
	jmp	.label_301
.label_268:
	mov	eax, 5
	jmp	.label_316
.label_274:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403bb0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rbx
	mov	r12, rdi
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x10], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r12
	mov	rcx, rbx
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, ebp
	push	qword ptr [r14 + 0x30]
	push	qword ptr [r14 + 0x28]
	push	r15
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	eax, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x18
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
	#Procedure 0x403c80
	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x10], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 8], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x20], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 4], ecx
	xor	ebp, ebp
	test	rbx, rbx
	sete	bpl
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	sub	rsp, 8
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r9d, ebp
	push	qword ptr [r12 + 0x30]
	push	qword ptr [r12 + 0x28]
	push	r13
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	test	rax, rax
	mov	ecx, dword ptr [rsp + 4]
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rdx], ecx
	je	.label_324
	mov	qword ptr [rax], rbx
.label_324:
	mov	rax, r14
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
	.align	32
	#Procedure 0x403d70
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_325
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_328:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_328
.label_325:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_329
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_326], OFFSET FLAT:slot0
.label_329:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_327
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_327:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403e20

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rcx
	mov	r15, rdx
	mov	qword ptr [rsp + 0x20], rsi
	mov	r12d, edi
	call	__errno_location
	mov	r13, rax
	test	r12d, r12d
	js	.label_330
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_333
	cmp	r12d, 0x7fffffff
	je	.label_335
	mov	ebx, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, rbx
	cmovne	rdi, rbp
	lea	r15d, [r12 + 1]
	movsxd	rsi, r12d
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, rbx
	mov	qword ptr [rip + slotvec],  r14
	jne	.label_331
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_331:
	movsxd	rax, dword ptr [rip + nslots]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	add	rdi, rax
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [rip + nslots],  ebp
	mov	rbp, r14
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_333:
	movsxd	r13, r12d
	shl	r13, 4
	mov	r12, qword ptr [rbp + r13]
	mov	r14, qword ptr [rbp + r13 + 8]
	mov	r8d, dword ptr [rbx]
	mov	r9d, dword ptr [rbx + 4]
	or	r9d, 1
	lea	rax, [rbx + 8]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, r15
	mov	dword ptr [rsp + 0xc], r9d
	push	qword ptr [rbx + 0x30]
	push	qword ptr [rbx + 0x28]
	mov	rbx, rax
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	r15, rax
	cmp	r12, r15
	jbe	.label_336
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_332
.label_336:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_334
	mov	rdi, r14
	call	free
.label_334:
	mov	rdi, r15
	call	xmalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rax]
	sub	rsp, 8
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rsp + 0xc]
	push	qword ptr [rax + 0x30]
	push	qword ptr [rax + 0x28]
	push	rbx
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x18]
.label_332:
	mov	dword ptr [rax], ebp
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_330:
	call	abort
.label_335:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fe0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0
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
	.align	32
	#Procedure 0x404010
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
	.align	32
	#Procedure 0x404030
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_337
	mov	dword ptr [rsp + 0x40], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_337:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040a0
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_338
	mov	dword ptr [rsp + 0x40], esi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rax, [rsp + 0x40]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_338:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404110

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_339
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_339:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404180
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	edi, 0xa
	je	.label_340
	mov	dword ptr [rsp + 0x40], edi
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x74], eax
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x64], xmm2
	movups	xmmword ptr [rsp + 0x54], xmm1
	movups	xmmword ptr [rsp + 0x44], xmm0
	lea	rcx, [rsp + 0x40]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_340:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4041f0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	eax, ecx
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
	.align	32
	#Procedure 0x404260
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	edx, ecx
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
	.align	32
	#Procedure 0x4042d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x404330
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x404390
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	je	.label_344
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x70], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x34], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x24], xmm2
	movups	xmmword ptr [rsp + 0x14], xmm1
	movups	xmmword ptr [rsp + 4], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_344:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404430
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_345
	test	rdx, rdx
	je	.label_345
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_345:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4044a0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_346
	test	rdx, rdx
	je	.label_346
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_346:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404510
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_347
	test	rsi, rsi
	je	.label_347
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_347:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404580
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_341]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_342]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_343]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_348
	test	rsi, rsi
	je	.label_348
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
.label_348:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404600
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
	.align	32
	#Procedure 0x404620
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404640

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
	.align	32
	#Procedure 0x404660

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
	jne	.label_354
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_350
	cmp	ecx, 0x55
	jne	.label_349
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_349
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_349
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_349
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_349
	cmp	byte ptr [rax + 5], 0
	jne	.label_349
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_356
	mov	eax, OFFSET FLAT:label_357
	jmp	.label_353
.label_350:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_349
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_349
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_349
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_349
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_349
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_349
	cmp	byte ptr [rax + 7], 0
	je	.label_355
.label_349:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_251
	mov	eax, OFFSET FLAT:label_210
.label_353:
	cmove	rax, rcx
.label_354:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_355:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_351
	mov	eax, OFFSET FLAT:label_352
	jmp	.label_353
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404730

	.globl unicode_to_mb
	.type unicode_to_mb, @function
unicode_to_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	ebp, edi
	mov	al, byte ptr [rip + unicode_to_mb.initialized]
	test	al, al
	jne	.label_371
	call	locale_charset
	mov	rbx, rax
	mov	esi, OFFSET FLAT:label_365
	mov	rdi, rbx
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
	mov	dword ptr [rip + unicode_to_mb.is_utf8],  ecx
	je	.label_368
	mov	esi, OFFSET FLAT:label_365
	mov	rdi, rbx
	call	iconv_open
	mov	qword ptr [rip + unicode_to_mb.utf8_to_local],  rax
	cmp	rax, -1
	jne	.label_368
	mov	edi, OFFSET FLAT:label_364
	mov	esi, OFFSET FLAT:label_365
	call	iconv_open
	mov	qword ptr [rip + unicode_to_mb.utf8_to_local],  rax
.label_368:
	mov	byte ptr [rip + unicode_to_mb.initialized],  1
.label_371:
	mov	ecx, dword ptr [rip + unicode_to_mb.is_utf8]
	test	ecx, ecx
	jne	.label_370
	cmp	qword ptr [rip + unicode_to_mb.utf8_to_local],  -1
	jne	.label_370
	mov	esi, OFFSET FLAT:label_358
.label_359:
	mov	edi, ebp
	mov	rdx, r13
	call	r14
	jmp	.label_362
.label_370:
	cmp	ebp, 0x7f
	ja	.label_363
	mov	byte ptr [rsp + 0xa], bpl
	mov	esi, 1
	jmp	.label_367
.label_363:
	lea	rdi, [rsp + 0xa]
	mov	edx, 6
	mov	esi, ebp
	call	u8_uctomb_aux
	test	eax, eax
	js	.label_372
	mov	ecx, dword ptr [rip + unicode_to_mb.is_utf8]
	movsxd	rsi, eax
.label_367:
	test	ecx, ecx
	je	.label_360
	lea	rdi, [rsp + 0xa]
.label_366:
	mov	rdx, r13
	call	r15
.label_362:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_360:
	lea	rax, [rsp + 0xa]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rsi
	lea	r12, [rsp + 0x30]
	mov	qword ptr [rsp + 0x10], r12
	mov	qword ptr [rsp + 0x18], 0x19
	mov	rdi, qword ptr [rip + unicode_to_mb.utf8_to_local]
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x20]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x18]
	call	iconv
	cmp	rax, -1
	je	.label_361
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	jne	.label_361
	mov	rdi, qword ptr [rip + unicode_to_mb.utf8_to_local]
	lea	rcx, [rsp + 0x10]
	lea	r8, [rsp + 0x18]
	xor	esi, esi
	xor	edx, edx
	call	iconv
	cmp	rax, -1
	je	.label_361
	mov	rsi, qword ptr [rsp + 0x10]
	sub	rsi, r12
	mov	rdi, r12
	jmp	.label_366
.label_361:
	xor	esi, esi
	jmp	.label_359
.label_372:
	mov	esi, OFFSET FLAT:label_369
	jmp	.label_359
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048c0

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
	#Procedure 0x4048e0

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
	#Procedure 0x404910

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
	je	.label_373
	mov	esi, OFFSET FLAT:label_374
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
	jmp	.label_375
.label_373:
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r14d
	call	error
.label_375:
	mov	rax, -1
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404990

	.globl fallback_failure_callback
	.type fallback_failure_callback, @function
fallback_failure_callback:
	push	rax
	mov	r8, rdx
	mov	ecx, edi
	mov	esi, 1
	cmp	ecx, 0xffff
	ja	.label_377
	mov	edx, OFFSET FLAT:label_379
	jmp	.label_380
.label_377:
	mov	edx, OFFSET FLAT:label_378
.label_380:
	xor	eax, eax
	mov	rdi, r8
	call	__fprintf_chk
	mov	rax, -1
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0

	.globl u8_uctomb_aux
	.type u8_uctomb_aux, @function
u8_uctomb_aux:
	mov	eax, 0xfffffffe
	cmp	esi, 0x80
	jb	.label_382
	mov	r8d, 2
	cmp	esi, 0x800
	jb	.label_381
	cmp	esi, 0xffff
	ja	.label_383
	mov	ecx, esi
	and	ecx, 0xfffff800
	mov	r8d, 3
	mov	eax, 0xffffffff
	cmp	ecx, 0xd800
	jne	.label_381
	jmp	.label_382
.label_383:
	mov	eax, 0xffffffff
	mov	r8d, 4
	cmp	esi, 0x10ffff
	ja	.label_382
.label_381:
	cmp	r8d, edx
	mov	eax, 0xfffffffe
	jg	.label_382
	mov	eax, r8d
	and	al, 7
	cmp	al, 2
	je	.label_384
	cmp	al, 3
	je	.label_385
	cmp	al, 4
	jne	.label_386
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 3], al
	shr	esi, 6
	or	esi, 0x10000
.label_385:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 2], al
	shr	esi, 6
	or	esi, 0x800
.label_384:
	mov	eax, esi
	and	eax, 0x3f
	or	eax, 0x80
	mov	byte ptr [rdi + 1], al
	shr	esi, 6
	or	esi, 0xc0
	mov	byte ptr [rdi], sil
.label_386:
	mov	eax, r8d
.label_382:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a90

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_396
	mov	edx, OFFSET FLAT:label_402
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_389
.label_396:
	mov	edx, OFFSET FLAT:label_391
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_389:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_395
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
	mov	esi, OFFSET FLAT:label_392
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_397
	jmp	qword ptr [(r12 * 8) + label_398]
.label_514:
	add	rsp, 8
	jmp	.label_390
.label_397:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_390
.label_515:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_516:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_387
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_518:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_390
.label_519:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x18
	jmp	.label_390
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_390
.label_521:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_404
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_390
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_390
.label_522:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	sub	rsp, 8
	mov	esi, 1
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
.label_390:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404df0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_406:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_406
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_417
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_419
.label_417:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_419:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_408
	cmp	r10d, 0x29
	jae	.label_416
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_418
.label_416:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_418:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_408
	cmp	r10d, 0x29
	jae	.label_414
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_415
.label_414:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_415:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_408
	cmp	r10d, 0x29
	jae	.label_412
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_413
.label_412:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_413:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_408
	cmp	r10d, 0x29
	jae	.label_410
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_411
.label_410:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_411:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_408
	cmp	r10d, 0x29
	jae	.label_407
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_409
.label_407:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_409:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_408
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_408
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_408
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_408
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_408:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_420
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_420:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x20
	lea	r8, [rsp]
	call	version_etc_va
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_422
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_424
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405120
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_425
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_426
	test	rax, rax
	je	.label_425
.label_426:
	pop	rbx
	ret	
.label_425:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405160

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_427
	test	rax, rax
	je	.label_428
.label_427:
	pop	rbx
	ret	
.label_428:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_429
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_430
	test	rbx, rbx
	jne	.label_430
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_430:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_431
	test	rax, rax
	je	.label_429
.label_431:
	pop	rbx
	ret	
.label_429:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_432
	test	rbx, rbx
	jne	.label_432
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_432:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_434
	test	rax, rax
	je	.label_433
.label_434:
	pop	rbx
	ret	
.label_433:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x405200
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_435
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_438
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_436
.label_435:
	test	rcx, rcx
	jne	.label_441
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_441:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_437
.label_436:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_440
	test	rbx, rbx
	jne	.label_440
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_440:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_439
	test	rax, rax
	je	.label_438
.label_439:
	pop	rbx
	ret	
.label_438:
	call	xalloc_die
.label_437:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_442
	test	rax, rax
	je	.label_443
.label_442:
	pop	rbx
	ret	
.label_443:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_444
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_447
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_448
	call	free
	xor	eax, eax
	jmp	.label_445
.label_444:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_446
	mov	qword ptr [rsi], rbx
.label_448:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_445
	test	rax, rax
	je	.label_446
.label_445:
	pop	rbx
	ret	
.label_446:
	call	xalloc_die
.label_447:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330
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
	je	.label_450
	test	r14, r14
	je	.label_449
.label_450:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_449:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405370
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_451
	call	rpl_calloc
	test	rax, rax
	je	.label_451
	pop	rcx
	ret	
.label_451:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0

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
	je	.label_452
	test	r15, r15
	je	.label_453
.label_452:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_453:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4053e0
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
	je	.label_455
	test	r15, r15
	je	.label_454
.label_455:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_454:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_179
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405460

	.globl xprintf
	.type xprintf, @function
xprintf:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	rbx, rdi
	test	al, al
	je	.label_457
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_457:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 8
	mov	rdi, qword ptr [rip + stdout]
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdx, rbx
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_458
	mov	rdi, qword ptr [rip + stdout]
	call	ferror
	test	eax, eax
	jne	.label_458
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_458:
	mov	eax, ebx
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405560
	.globl xvprintf
	.type xvprintf, @function
xvprintf:

	push	rbp
	push	r14
	push	rbx
	mov	rax, rsi
	mov	rcx, rdi
	mov	rdi, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_460
	mov	rdi, qword ptr [rip + stdout]
	call	ferror
	test	eax, eax
	jne	.label_460
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_460:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055d0
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
	je	.label_461
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_461:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	lea	rcx, [rsp]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbx
	call	__vfprintf_chk
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_462
	mov	rdi, r14
	call	ferror
	test	eax, eax
	jne	.label_462
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_462:
	mov	eax, ebx
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056c0
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
	jns	.label_463
	mov	rdi, rbx
	call	ferror
	test	eax, eax
	jne	.label_463
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_463:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405730

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_464
	test	rsi, rsi
	mov	ecx, 1
	je	.label_465
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_465
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_464:
	mov	ecx, 1
.label_465:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405780

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
	je	.label_466
	cmp	r15, -2
	jb	.label_466
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_466
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_466:
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
	#Procedure 0x4057e0

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
	cmp	qword ptr [rip + c_locale_cache],  0
	jne	.label_467
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_471
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_467:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_468
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_468
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
	je	.label_470
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_469
.label_468:
	fldz	
	test	r15, r15
	je	.label_469
	mov	qword ptr [r15], r14
.label_469:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_470:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405880

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
	jne	.label_473
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_472
	test	cl, cl
	jne	.label_472
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_472
.label_473:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_472
	call	__errno_location
	mov	dword ptr [rax], 0
.label_472:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058e0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_475
	cmp	byte ptr [rax], 0x43
	jne	.label_477
	cmp	byte ptr [rax + 1], 0
	je	.label_474
.label_477:
	mov	esi, OFFSET FLAT:label_476
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_475
.label_474:
	xor	ebx, ebx
.label_475:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405920

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_70
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_364
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_478
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_480
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_478
.label_480:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_479
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_479:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_478:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_481
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_481
	test	byte ptr [rbx + 1], 1
	je	.label_481
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_481:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a10

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
	jne	.label_482
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_482
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_483
.label_482:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_483:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_484
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_484:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x405a80

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
	nop	word ptr cs:[rax + rax]
