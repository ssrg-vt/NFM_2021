	.section	.text
	.align	32
	#Procedure 0x401780

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
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
	#Procedure 0x4019b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_91
	call	setlocale
	test	rax, rax
	setne	byte ptr [rip + locale_ok]
	mov	edi, OFFSET FLAT:label_115
	mov	esi, OFFSET FLAT:label_116
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_115
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + equal_width],  0
	mov	qword ptr [rip + separator], OFFSET FLAT:label_30
	mov	eax, dword ptr [rip + optind]
	xor	ebx, ebx
	cmp	eax, ebp
	jge	.label_31
	xor	ebx, ebx
.label_66:
	movsxd	rcx, eax
	mov	rcx, qword ptr [r15 + rcx*8]
	cmp	byte ptr [rcx], 0x2d
	jne	.label_40
	movsx	ecx, byte ptr [rcx + 1]
	cmp	ecx, 0x2e
	je	.label_31
	add	ecx, -0x30
	cmp	ecx, 0xa
	jb	.label_31
.label_40:
	mov	edx, OFFSET FLAT:label_49
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_54
	cmp	eax, 0x66
	je	.label_55
	cmp	eax, 0x73
	je	.label_58
	cmp	eax, 0x77
	jne	.label_41
	mov	byte ptr [rip + equal_width],  1
	jmp	.label_43
.label_55:
	mov	rbx, qword ptr [rip + optarg]
	jmp	.label_43
.label_58:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
.label_43:
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jl	.label_66
	jmp	.label_31
.label_54:
	cmp	eax, -1
	jne	.label_69
	mov	eax, dword ptr [rip + optind]
.label_31:
	mov	r13d, ebp
	sub	r13d, eax
	je	.label_45
	cmp	r13d, 4
	jae	.label_74
	xor	r14d, r14d
	test	rbx, rbx
	mov	dword ptr [rsp + 0x14], ebp
	mov	qword ptr [rsp + 0x48], r15
	mov	qword ptr [rsp + 0x58], r13
	je	.label_76
	xor	r14d, r14d
	xor	ebp, ebp
	jmp	.label_80
	nop	dword ptr [rax]
.label_83:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r14
	lea	rbp, [rcx + rbp + 1]
.label_80:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_121
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_83
	jmp	.label_84
.label_121:
	test	al, al
	jne	.label_83
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	jmp	.label_87
.label_84:
	lea	rdi, [rbx + rbp + 1]
	inc	rbp
	mov	esi, OFFSET FLAT:label_88
	call	strspn
	mov	r15, rax
	add	r15, rbp
	lea	rdi, [rbx + r15]
	mov	esi, OFFSET FLAT:label_62
	call	strspn
	mov	r12, rax
	add	r12, r15
	mov	al, byte ptr [rbx + r12]
	cmp	al, 0x2e
	jne	.label_94
	lea	rdi, [rbx + r12 + 1]
	mov	esi, OFFSET FLAT:label_62
	call	strspn
	lea	r12, [rax + r12 + 1]
	mov	al, byte ptr [rbx + r12]
.label_94:
	xor	ecx, ecx
	cmp	al, 0x4c
	sete	cl
	lea	rbp, [rcx + r12]
	movsx	esi, byte ptr [rbx + rbp]
	test	esi, esi
	je	.label_99
	mov	qword ptr [rsp + 0x30], rcx
	mov	edi, OFFSET FLAT:label_103
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_107
	lea	r13, [rbx + r12]
	inc	rbp
	xor	r15d, r15d
	jmp	.label_111
	nop	dword ptr [rax]
.label_72:
	xor	ecx, ecx
	cmp	al, 0x25
	sete	cl
	inc	r15
	lea	rbp, [rcx + rbp + 1]
.label_111:
	movzx	eax, byte ptr [rbx + rbp]
	cmp	al, 0x25
	jne	.label_110
	cmp	byte ptr [rbx + rbp + 1], 0x25
	je	.label_72
	jmp	.label_78
	nop	word ptr cs:[rax + rax]
.label_110:
	test	al, al
	jne	.label_72
	add	rbp, 2
	mov	rdi, rbp
	call	xmalloc
	mov	rbp, rax
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0x4c
	lea	rdi, [rbp + r12 + 1]
	add	r13, qword ptr [rsp + 0x30]
	mov	rsi, r13
	call	strcpy
	xor	ebx, ebx
	test	rbp, rbp
	je	.label_34
	cmp	byte ptr [rip + equal_width],  1
	je	.label_36
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
	mov	rbx, rbp
	jmp	.label_39
.label_76:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	ebx, ebx
	xor	r15d, r15d
	jmp	.label_44
.label_34:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
.label_39:
	mov	ebp, dword ptr [rsp + 0x14]
.label_44:
	mov	r12d, dword ptr [rip + optind]
	movsxd	r13, r12d
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rax + r13*8]
	movsx	eax, byte ptr [rsi]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_51
	mov	qword ptr [rsp + 0x68], rbx
	mov	rdi, rsi
	mov	rbx, rsi
	call	strlen
	mov	rbp, rax
	mov	esi, OFFSET FLAT:label_62
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, rbx
	call	strspn
	cmp	rbp, rax
	jne	.label_65
	mov	rax, qword ptr [rsp + 0x58]
	cmp	eax, 1
	mov	rbx, qword ptr [rsp + 0x68]
	je	.label_68
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + r13*8 + 8]
	movsx	ecx, byte ptr [rbp]
	lea	eax, [rcx - 0x30]
	cmp	eax, 9
	ja	.label_73
	mov	qword ptr [rsp + 0x90], rcx
	mov	rdi, rbp
	call	strlen
	mov	qword ptr [rsp + 0x98], rax
	mov	esi, OFFSET FLAT:label_62
	mov	rdi, rbp
	call	strspn
	cmp	qword ptr [rsp + 0x98], rax
	jne	.label_73
	mov	rax, qword ptr [rsp + 0x58]
	cmp	eax, 3
	jb	.label_68
	mov	rax, qword ptr [rsp + 0x90]
	cmp	al, 0x31
	mov	rsi, qword ptr [rsp + 0x20]
	jne	.label_75
	cmp	byte ptr [rbp + 1], 0
	jne	.label_75
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + r13*8 + 0x10]
	movsx	eax, byte ptr [rbp]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_75
	mov	rdi, rbp
	call	strlen
	mov	r13, rax
	mov	esi, OFFSET FLAT:label_62
	mov	rdi, rbp
	call	strspn
	cmp	r13, rax
	jne	.label_73
.label_68:
	mov	al, byte ptr [rip + equal_width]
	mov	rcx, qword ptr [rsp + 0x30]
	or	al, cl
	test	al, 1
	mov	ebp, dword ptr [rsp + 0x14]
	jne	.label_85
	mov	rdi, qword ptr [rip + separator]
	call	strlen
	cmp	rax, 1
	jne	.label_85
	mov	rcx, qword ptr [rsp + 0x58]
	cmp	ecx, 1
	mov	eax, OFFSET FLAT:label_104
	mov	rdi, qword ptr [rsp + 0x20]
	cmove	rdi, rax
	lea	eax, [rcx + r12 - 1]
	mov	rbp, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rbp + rax*8]
	call	seq_fast
	test	al, al
	jne	.label_42
	movsxd	r12, dword ptr [rip + optind]
	mov	rsi, qword ptr [rbp + r12*8]
.label_75:
	mov	ebp, dword ptr [rsp + 0x14]
	jmp	.label_51
.label_65:
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x68]
	jmp	.label_51
.label_73:
	mov	ebp, dword ptr [rsp + 0x14]
.label_85:
	mov	rsi, qword ptr [rsp + 0x20]
.label_51:
	inc	r12d
	mov	dword ptr [rip + optind],  r12d
	lea	rdi, [rsp + 0xe0]
	call	scan_arg
	fld	xword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	r13d, dword ptr [rsp + 0xf8]
	movsxd	rax, dword ptr [rip + optind]
	fld1	
	xor	r12d, r12d
	mov	edi, 1
	cmp	eax, ebp
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	jge	.label_122
	fstp	st(0)
	fstp	xword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x58], rdx
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xc0]
	call	scan_arg
	fld	xword ptr [rsp + 0xc0]
	mov	esi, dword ptr [rsp + 0xd8]
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, ebp
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	jge	.label_53
	mov	ebp, esi
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_61
	jnp	.label_63
.label_61:
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rsi, qword ptr [r12 + rax*8]
	lea	rdi, [rsp + 0xa0]
	call	scan_arg
	fld	xword ptr [rsp + 0x14]
	fstp	xword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0xb0]
	mov	r12d, ebp
	mov	ecx, dword ptr [rsp + 0xb8]
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x68]
	mov	esi, ecx
	mov	rdx, rax
	jmp	.label_70
.label_122:
	xor	ebp, ebp
	mov	esi, r13d
.label_70:
	fxch	st(1)
	fstp	xword ptr [rsp + 0x14]
	jmp	.label_79
.label_53:
	fstp	st(0)
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rax, qword ptr [rsp + 0xd0]
	mov	ebp, r13d
	fld	xword ptr [rsp + 0x68]
	mov	rdx, rax
	xor	r12d, r12d
.label_79:
	fldz	
	fld	st(1)
	fstp	xword ptr [rsp + 0x58]
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	jne	.label_82
	jp	.label_82
	mov	eax, r12d
	or	eax, ebp
	jne	.label_82
	fld1	
	fld	xword ptr [rsp + 0x20]
	fucomip	st(1)
	fstp	st(0)
	jne	.label_82
	jp	.label_82
	fld	xword ptr [rsp + 0x58]
	fucomip	st(1)
	jb	.label_82
	test	esi, esi
	jne	.label_82
	fld	xword ptr [rsp + 0x14]
	fucomip	st(1)
	jb	.label_82
	mov	rax, qword ptr [rsp + 0x30]
	or	al, byte ptr [rip + equal_width]
	test	al, 1
	jne	.label_82
	fstp	st(0)
	mov	qword ptr [rsp + 0x30], rdi
	mov	rdi, qword ptr [rip + separator]
	mov	r13, rdx
	mov	dword ptr [rsp + 0x48], esi
	call	strlen
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, dword ptr [rsp + 0x48]
	mov	rdx, r13
	fldz	
	cmp	rax, 1
	jne	.label_82
	fstp	st(0)
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x80]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_32
	fld	xword ptr [rsp + 0x14]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_114
	jp	.label_114
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x40]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_81
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	jns	.label_120
	jmp	.label_32
.label_114:
	fstp	st(0)
	mov	edi, OFFSET FLAT:label_29
	call	xstrdup
	mov	qword ptr [rsp + 0x40], rax
.label_120:
	mov	rdi, qword ptr [rsp + 0x80]
	cmp	byte ptr [rdi], 0x2d
	je	.label_33
	mov	rsi, qword ptr [rsp + 0x40]
	cmp	byte ptr [rsi], 0x2d
	je	.label_33
	call	seq_fast
	test	al, al
	jne	.label_42
	mov	rdi, qword ptr [rsp + 0x80]
.label_33:
	call	free
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	fldz	
	mov	rdx, r13
	mov	esi, dword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x30]
.label_82:
	test	rbx, rbx
	fld	xword ptr [rsp + 0x20]
	jne	.label_57
	cmp	ebp, r12d
	cmovge	r12d, ebp
	cmp	r12d, 0x7fffffff
	mov	ebx, OFFSET FLAT:label_56
	je	.label_57
	cmp	esi, 0x7fffffff
	je	.label_57
	cmp	byte ptr [rip + equal_width],  1
	jne	.label_64
	mov	eax, r12d
	sub	eax, ebp
	cdqe	
	add	rax, rdi
	mov	ecx, r12d
	sub	ecx, esi
	movsxd	rcx, ecx
	add	rcx, rdx
	test	r12d, r12d
	sete	r8b
	setne	dil
	test	esi, esi
	setne	dl
	sete	bl
	and	dl, r8b
	movzx	edx, dl
	sub	rcx, rdx
	and	bl, dil
	movzx	edx, bl
	add	rdx, rcx
	test	ebp, ebp
	sete	cl
	and	cl, dil
	movzx	r8d, cl
	add	r8, rax
	cmp	r8, rdx
	cmovbe	r8, rdx
	mov	ebx, OFFSET FLAT:label_56
	cmp	r8, 0x7fffffff
	ja	.label_57
	fstp	st(0)
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_52
	xor	eax, eax
	mov	r9d, r12d
	call	__sprintf_chk
	jmp	.label_89
.label_64:
	fstp	st(0)
	fstp	st(0)
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:label_90
	xor	eax, eax
	mov	r8d, r12d
	call	__sprintf_chk
.label_89:
	fldz	
	fld	xword ptr [rsp + 0x20]
.label_57:
	fld	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x58]
	fxch	st(1)
	fucomi	st(1)
	seta	al
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	cl
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	ja	.label_95
	mov	eax, ecx
.label_95:
	test	al, al
	jne	.label_42
	fld	xword ptr [rsp + 0x58]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_93
	fstp	st(0)
	fld	xword ptr [rsp + 0x20]
	fldz	
	fucomip	st(1)
	fstp	st(0)
	jbe	.label_108
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x58]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_92:
	test	r13b, r13b
	jne	.label_46
	fld	xword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x30]
	fmulp	st(1)
	fld	xword ptr [rsp + 0x58]
	faddp	st(1)
	fld	xword ptr [rsp + 0x14]
	fld	st(1)
	fstp	xword ptr [rsp + 0x48]
	fucomip	st(1)
	fstp	st(0)
	seta	r13b
	jbe	.label_112
	fstp	xword ptr [rsp + 0x68]
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_119
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_117
	call	setlocale
.label_119:
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x40]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_38
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_91
	call	setlocale
.label_38:
	test	ebp, ebp
	js	.label_47
	movsxd	rax, ebp
	sub	rax, r15
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x40]
	add	rdi, r14
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x80]
	call	xstrtold
	fld	xword ptr [rsp + 0x80]
	test	al, al
	je	.label_60
	fld	xword ptr [rsp + 0x14]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_50
	jp	.label_50
	mov	qword ptr [rsp + 0x78], 0
	fld	xword ptr [rsp + 0x68]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x78]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_32
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_50
.label_60:
	fstp	st(0)
.label_50:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	test	r12b, r12b
	fldz	
	je	.label_46
.label_112:
	fstp	st(0)
	mov	rdi, qword ptr [rip + separator]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_71
	fld1	
	fld	xword ptr [rsp + 0x30]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x48]
	jns	.label_92
	jmp	.label_93
.label_108:
	fld1	
	xor	r13d, r13d
	fld	xword ptr [rsp + 0x58]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_77:
	test	r13b, r13b
	jne	.label_46
	fld	xword ptr [rsp + 0x20]
	fld	xword ptr [rsp + 0x30]
	fmulp	st(1)
	fld	xword ptr [rsp + 0x58]
	faddp	st(1)
	fld	xword ptr [rsp + 0x14]
	fld	st(1)
	fstp	xword ptr [rsp + 0x48]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	r13b
	jbe	.label_98
	fstp	xword ptr [rsp + 0x68]
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_106
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_117
	call	setlocale
.label_106:
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x40]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [rip + locale_ok],  0
	je	.label_113
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_91
	call	setlocale
.label_113:
	test	ebp, ebp
	js	.label_47
	movsxd	rax, ebp
	sub	rax, r15
	mov	rcx, qword ptr [rsp + 0x40]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x40]
	add	rdi, r14
	xor	r12d, r12d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x80]
	call	xstrtold
	fld	xword ptr [rsp + 0x80]
	test	al, al
	je	.label_67
	fld	xword ptr [rsp + 0x14]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_37
	jp	.label_37
	mov	qword ptr [rsp + 0x78], 0
	fld	xword ptr [rsp + 0x68]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x78]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_32
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r12b
	mov	rdi, rbp
	call	free
	jmp	.label_37
.label_67:
	fstp	st(0)
.label_37:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	test	r12b, r12b
	fldz	
	je	.label_46
.label_98:
	fstp	st(0)
	mov	rdi, qword ptr [rip + separator]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_71
	fld1	
	fld	xword ptr [rsp + 0x30]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x48]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x48]
	jns	.label_77
.label_93:
	fstp	st(0)
	call	io_error
.label_46:
	fstp	st(0)
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_30
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_71
.label_42:
	xor	eax, eax
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
.label_87:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_71:
	call	io_error
.label_47:
	call	xalloc_die
.label_32:
	call	xalloc_die
.label_69:
	cmp	eax, 0xffffff7d
	je	.label_96
	cmp	eax, 0xffffff7e
	jne	.label_41
	xor	edi, edi
	call	usage
.label_45:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	jmp	.label_101
.label_74:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r15 + rax*8 + 0x18]
	jmp	.label_105
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_109
	jmp	.label_87
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [rbx + rbp]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_96:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_27
	mov	r8d, OFFSET FLAT:label_118
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	mov	edi, 1
	call	usage
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
.label_101:
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
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
.label_105:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbp, rdi
	movzx	eax, byte ptr [r12]
	mov	ebx, 0x69
	sub	ebx, eax
	jne	.label_136
	movzx	ecx, byte ptr [r12 + 1]
	mov	ebx, 0x6e
	sub	ebx, ecx
	jne	.label_136
	movzx	ecx, byte ptr [r12 + 2]
	mov	ebx, 0x66
	sub	ebx, ecx
	jne	.label_136
	movzx	ebx, byte ptr [r12 + 3]
	neg	ebx
.label_136:
	xor	ecx, ecx
	jmp	.label_147
	nop	dword ptr [rax]
.label_149:
	inc	rcx
.label_147:
	movzx	edx, byte ptr [rbp + rcx]
	cmp	dl, 0x30
	je	.label_149
	test	dl, dl
	jne	.label_126
	lea	rdx, [rbp + rcx]
	test	rcx, rcx
	lea	rbp, [rbp + rcx - 1]
	cmove	rbp, rdx
	jmp	.label_133
.label_126:
	add	rbp, rcx
.label_133:
	xor	ecx, ecx
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_127:
	mov	al, byte ptr [r12 + rcx + 1]
	inc	rcx
.label_123:
	cmp	al, 0x30
	je	.label_127
	test	al, al
	jne	.label_130
	lea	rax, [r12 + rcx]
	test	rcx, rcx
	lea	r12, [r12 + rcx - 1]
	cmove	r12, rax
	jmp	.label_131
.label_130:
	add	r12, rcx
.label_131:
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	xor	eax, eax
	mov	dword ptr [rsp + 8], ebx
	test	ebx, ebx
	je	.label_141
	mov	rdi, r12
	call	strlen
.label_141:
	lea	rcx, [r15 + 1]
	mov	qword ptr [rsp], rcx
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x30], rax
	cmova	rax, rcx
	cmp	rax, 0x1f
	mov	r14d, 0x1f
	cmova	r14, rax
	lea	r13, [r14 + 1]
	mov	rdi, r13
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	lea	rbx, [rax + r14]
	sub	rbx, r15
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp]
	call	memcpy
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	dword ptr [rsp + 8], 0
	mov	ebp, 0
	je	.label_129
	mov	qword ptr [rsp], r13
	mov	rdi, r13
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rax
	add	rdi, r14
	mov	rbp, qword ptr [rsp + 0x30]
	sub	rdi, rbp
	lea	rdx, [rbp + 1]
	mov	rax, rdi
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, r12
	call	memcpy
	mov	rax, rbp
	cmp	r15, rax
	jae	.label_143
	mov	r13, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x10]
.label_129:
	mov	qword ptr [rsp + 0x10], rbp
	add	r13, r13
	cmp	r13, 0x2000
	mov	edi, 0x2000
	cmovae	rdi, r13
	mov	r13, rdi
	call	xmalloc
	mov	r12, rax
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rbp, rax
	cmp	dword ptr [rsp + 8], 0
	mov	qword ptr [rsp], r13
	lea	r13, [r12 + r13]
	je	.label_137
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	r15, rax
	jb	.label_134
	cmp	rax, r15
	jb	.label_148
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x20]
	call	strcmp
	test	eax, eax
	jns	.label_148
.label_134:
	mov	rax, qword ptr [rip + separator]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp], al
	inc	rbp
	lea	rax, [rbx + r15 - 1]
	nop	dword ptr [rax]
.label_144:
	movzx	ecx, byte ptr [rax]
	mov	edx, ecx
	inc	dl
	mov	byte ptr [rax], dl
	cmp	cl, 0x39
	jl	.label_135
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_144
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r15
.label_135:
	cmp	r15, r14
	jne	.label_140
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	call	xrealloc
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, rax
	call	memmove
	mov	r15, r14
	lea	r13, [r14 + r14 + 2]
	cmp	qword ptr [rsp], r13
	jae	.label_150
	sub	rbp, r12
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	add	rbp, r12
	lea	rax, [r12 + r13]
	mov	qword ptr [rsp], r13
	mov	r13, rax
	jmp	.label_124
	nop	dword ptr [rax]
.label_150:
	mov	r13, qword ptr [rsp + 0x28]
.label_124:
	mov	r14, r15
	mov	r15, qword ptr [rsp + 8]
.label_140:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rbp, rax
	mov	rax, r15
	not	rax
	add	rax, r13
	cmp	rax, rbp
	jae	.label_138
	sub	rbp, r12
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	mov	rbp, r12
	je	.label_138
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_137:
	mov	rax, qword ptr [rip + separator]
	mov	al, byte ptr [rax]
	mov	byte ptr [rbp], al
	inc	rbp
	lea	rax, [rbx + r15 - 1]
	nop	word ptr cs:[rax + rax]
.label_142:
	movzx	ecx, byte ptr [rax]
	mov	edx, ecx
	inc	dl
	mov	byte ptr [rax], dl
	cmp	cl, 0x39
	jl	.label_139
	mov	byte ptr [rax], 0x30
	dec	rax
	cmp	rax, rbx
	jae	.label_142
	mov	byte ptr [rbx - 1], 0x31
	dec	rbx
	inc	r15
.label_139:
	cmp	r15, r14
	jne	.label_145
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [r14 + r14 + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	call	xrealloc
	lea	rbx, [rax + r14]
	lea	rdx, [r14 + 1]
	lea	r14, [r14 + r14]
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, rax
	call	memmove
	mov	r15, r14
	lea	r13, [r14 + r14 + 2]
	cmp	qword ptr [rsp], r13
	jae	.label_125
	sub	rbp, r12
	mov	rdi, r12
	mov	rsi, r13
	call	xrealloc
	mov	r12, rax
	add	rbp, r12
	lea	rax, [r12 + r13]
	mov	qword ptr [rsp], r13
	mov	r13, rax
	jmp	.label_132
	nop	dword ptr [rax]
.label_125:
	mov	r13, qword ptr [rsp + 0x28]
.label_132:
	mov	r14, r15
	mov	r15, qword ptr [rsp + 8]
.label_145:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r15
	call	__mempcpy_chk
	mov	rbp, rax
	mov	rax, r15
	not	rax
	add	rax, r13
	cmp	rax, rbp
	jae	.label_137
	sub	rbp, r12
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	cmp	rax, 1
	mov	rbp, r12
	je	.label_137
.label_152:
	call	io_error
.label_148:
	mov	byte ptr [rbp], 0xa
	inc	rbp
	sub	rbp, r12
	mov	rcx, qword ptr [rip + stdout]
	mov	edx, 1
	mov	rdi, r12
	mov	rsi, rbp
	call	fwrite_unlocked
	mov	bl, 1
	cmp	rax, 1
	mov	rbp, qword ptr [rsp + 0x10]
	je	.label_128
	call	io_error
.label_143:
	cmp	rax, r15
	jae	.label_146
	xor	ebx, ebx
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_128
.label_146:
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x20]
	call	strcmp
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x10]
	jle	.label_151
	xor	ebx, ebx
.label_128:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	rdi, rbp
	call	free
	mov	eax, ebx
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_151:
	mov	r13, qword ptr [rsp]
	jmp	.label_129
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdx, [rsp + 0x10]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, rbx
	call	xstrtold
	test	al, al
	je	.label_170
	fld	xword ptr [rsp + 0x10]
	fld	st(0)
	fstp	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_166
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	rbx
	nop	dword ptr [rax]
.label_153:
	movzx	edx, byte ptr [rbx + 1]
	inc	rbx
	movzx	ecx, word ptr [rax + rdx*2]
	and	ecx, 0x2000
	cmp	rdx, 0x2b
	je	.label_153
	test	cx, cx
	jne	.label_153
	mov	qword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x28], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, rbx
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_164
	mov	esi, 0x70
	mov	rdi, rbx
	call	strchr
	test	rax, rax
	jne	.label_164
	mov	dword ptr [rsp + 0x28], 0
.label_164:
	mov	rax, rbx
	nop	
.label_173:
	movsx	ecx, byte ptr [rax]
	test	ecx, ecx
	je	.label_171
	inc	rax
	or	ecx, 0x20
	cmp	ecx, 0x78
	jne	.label_173
	jmp	.label_156
.label_171:
	fldz	
	fld	xword ptr [rsp]
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_156
	jp	.label_156
	mov	rdi, rbx
	call	strlen
	mov	qword ptr [rsp + 0x20], rax
	xor	ebp, ebp
	test	r15, r15
	je	.label_158
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rbp, rcx
	movsx	edx, byte ptr [r15 + rbp + 1]
	test	edx, edx
	je	.label_155
	lea	rcx, [rbp + 1]
	or	edx, 0x20
	cmp	edx, 0x65
	jne	.label_165
.label_155:
	cmp	rbp, 0x7fffffff
	ja	.label_168
	mov	dword ptr [rsp + 0x28], ebp
	mov	rcx, -1
	test	rbp, rbp
	je	.label_169
.label_168:
	mov	cl, 1
	cmp	r15, rbx
	je	.label_172
	movsx	ecx, byte ptr [r15 - 1]
	add	ecx, -0x30
	cmp	ecx, 9
	seta	cl
.label_172:
	movzx	ecx, cl
.label_169:
	add	rax, rcx
	mov	qword ptr [rsp + 0x20], rax
.label_158:
	mov	esi, 0x65
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	jne	.label_157
	mov	esi, 0x45
	mov	rdi, rbx
	call	strchr
	mov	r13, rax
	test	r13, r13
	je	.label_156
.label_157:
	mov	qword ptr [rsp], r14
	lea	rdi, [r13 + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r12, rax
	test	r12, r12
	movsxd	r14, dword ptr [rsp + 0x28]
	js	.label_167
	cmp	r14, r12
	mov	rax, r12
	cmovle	rax, r14
.label_167:
	sub	r14d, eax
	mov	dword ptr [rsp + 0x28], r14d
	mov	rdi, rbx
	call	strlen
	mov	rcx, r13
	sub	rcx, rbx
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x20], rcx
	test	r12, r12
	js	.label_174
	test	r15, r15
	je	.label_154
	test	rbp, rbp
	je	.label_154
	test	r14d, r14d
	jne	.label_154
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_154:
	mov	r14, qword ptr [rsp]
	cmp	rbp, r12
	cmovae	rbp, r12
	sub	r12, rbp
	jmp	.label_159
.label_174:
	test	r15, r15
	mov	r14, qword ptr [rsp]
	je	.label_161
	inc	r15
	cmp	r13, r15
	jne	.label_162
.label_161:
	inc	rcx
	mov	qword ptr [rsp + 0x20], rcx
.label_162:
	neg	r12
.label_159:
	add	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
.label_156:
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movaps	xmm1, xmmword ptr [rsp + 0x20]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_170:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_175
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_163
	call	quote_n
	mov	r15, rax
	mov	edi, 1
	mov	rsi, rbx
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402e00

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e40

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
	je	.label_178
	fstp	xword ptr [rsp + 0x14]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 8]
	cmp	r12, rax
	jae	.label_177
	mov	qword ptr [rsp], rax
	mov	r12, rax
	jmp	.label_178
.label_177:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0x14]
.label_178:
	test	r14, r14
	je	.label_179
	mov	qword ptr [r14], r12
.label_179:
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
	#Procedure 0x402ec0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ed0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_185
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_181
	cmp	dword ptr [rbp], 0x20
	jne	.label_181
.label_185:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_183
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_176
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_182
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_180
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_183:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_182:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_184
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
	#Procedure 0x402fa0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_186
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_188
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_190
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_188
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_191
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_191:
	mov	rbx, r14
.label_188:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_186:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_187
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403050
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
	#Procedure 0x403090
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
	#Procedure 0x4030a0
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
	#Procedure 0x4030b0
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
	#Procedure 0x4030f0
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
	#Procedure 0x403110
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_192
	test	rdx, rdx
	je	.label_192
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_192:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140
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
	#Procedure 0x4031c0

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
	jmp	.label_195
	nop	
.label_246:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_226
	or	al, dl
	jne	.label_226
	test	dil, 1
	jne	.label_244
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_226
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_195
	jmp	.label_226
.label_539:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_252
	test	rbp, rbp
	je	.label_209
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_209:
	mov	r14d, 1
	jmp	.label_258
.label_540:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_259
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_202
.label_252:
	xor	r14d, r14d
.label_258:
	mov	eax, OFFSET FLAT:label_259
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_270
	nop	
.label_195:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_279
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_287]
.label_541:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_292
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_224
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_542:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_205
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_205
	xor	r14d, r14d
	nop	
.label_274:
	cmp	r14, rbp
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_310:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_274
.label_205:
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
	jmp	.label_202
.label_534:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_202
.label_537:
	mov	al, 1
.label_535:
	mov	r12b, 1
.label_538:
	test	r12b, 1
	mov	cl, 1
	je	.label_208
	mov	ecx, eax
.label_208:
	mov	al, cl
.label_536:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_212
	test	rbp, rbp
	je	.label_218
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_218:
	mov	r14d, 1
	jmp	.label_221
.label_212:
	xor	r14d, r14d
.label_221:
	mov	ecx, OFFSET FLAT:label_224
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_270:
	mov	sil, r12b
.label_202:
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
	jmp	.label_233
	nop	word ptr cs:[rax + rax]
.label_255:
	inc	r12
.label_233:
	cmp	r11, -1
	je	.label_264
	cmp	r12, r11
	jne	.label_266
	jmp	.label_268
	nop	word ptr cs:[rax + rax]
.label_264:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_273
.label_266:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_280
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_286
	cmp	r11, -1
	jne	.label_286
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_286:
	cmp	rbx, r11
	jbe	.label_296
.label_280:
	xor	esi, esi
.label_193:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_298
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_302]
.label_497:
	test	r12, r12
	jne	.label_257
	jmp	.label_269
	nop	word ptr cs:[rax + rax]
.label_296:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_312
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_193
	jmp	.label_219
.label_312:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_193
.label_501:
	xor	eax, eax
	cmp	r11, -1
	je	.label_200
	test	r12, r12
	jne	.label_207
	cmp	r11, 1
	je	.label_269
	xor	r13d, r13d
	jmp	.label_220
.label_490:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_214
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_219
	cmp	r8d, 2
	jne	.label_196
	mov	eax, r9d
	and	al, 1
	jne	.label_196
	cmp	r14, rbp
	jae	.label_225
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_225:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_227:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_237:
	add	r14, 3
	mov	r9b, 1
.label_196:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_243
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_243:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_245
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_245
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_245
	cmp	r14, rbp
	jae	.label_241
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_241:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_305
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_305:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_220
.label_491:
	mov	bl, 0x62
	jmp	.label_265
.label_492:
	mov	cl, 0x74
	jmp	.label_260
.label_493:
	mov	bl, 0x76
	jmp	.label_265
.label_494:
	mov	bl, 0x66
	jmp	.label_265
.label_495:
	mov	cl, 0x72
	jmp	.label_260
.label_498:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_277
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_232
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
	jae	.label_284
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_300
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_300:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_304
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	add	r14, 3
	xor	r9d, r9d
.label_277:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_220
.label_499:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_307
	cmp	r8d, 2
	jne	.label_257
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_257
	jmp	.label_232
.label_500:
	cmp	r8d, 2
	jne	.label_316
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_232
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_318
.label_298:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_194
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_211
.label_200:
	test	r12, r12
	jne	.label_222
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_222
.label_269:
	mov	dl, 1
.label_496:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_232
	xor	eax, eax
	mov	r13b, dl
.label_220:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_235
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_238
	jmp	.label_240
	nop	word ptr cs:[rax + rax]
.label_235:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_240
.label_238:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_289
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_248
	nop	dword ptr [rax]
.label_240:
	test	sil, sil
.label_248:
	mov	ebx, r15d
	je	.label_250
	jmp	.label_254
.label_289:
	mov	ebx, r15d
	jmp	.label_254
.label_214:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_255
	xor	r15d, r15d
	jmp	.label_257
.label_316:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_260
	xor	eax, eax
	mov	r15b, 0x5c
.label_318:
	xor	r13d, r13d
	jmp	.label_250
.label_260:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_232
.label_265:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_220
	nop	
.label_254:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_219
	cmp	r8d, 2
	jne	.label_278
	mov	eax, r9d
	and	al, 1
	jne	.label_278
	cmp	r14, rbp
	jae	.label_282
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_285:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_291:
	add	r14, 3
	mov	r9b, 1
.label_278:
	cmp	r14, rbp
	jae	.label_297
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_297:
	inc	r14
	jmp	.label_201
.label_194:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_303
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_303:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_306
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_210:
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
	je	.label_198
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_203
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_223
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_216
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_301:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_267
	bt	rsi, rdx
	jb	.label_232
.label_267:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_301
.label_216:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_299
	xor	r13d, r13d
.label_299:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_210
	jmp	.label_206
.label_245:
	xor	r13d, r13d
	jmp	.label_220
.label_222:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_220
.label_307:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_257
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_257
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_257
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_263
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_242
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_262
	cmp	r14, rbp
	jae	.label_275
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_275:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_281
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_281:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_197:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_230
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_230:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_242:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_220
.label_257:
	xor	eax, eax
.label_207:
	xor	r13d, r13d
	jmp	.label_220
.label_306:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_239:
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
	je	.label_313
	cmp	rbp, -1
	je	.label_315
	cmp	rbp, -2
	je	.label_198
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_319
	xor	r13d, r13d
.label_319:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_239
	jmp	.label_206
.label_198:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_215
	lea	rax, [r10 + r12]
.label_229:
	cmp	byte ptr [rax + rsi], 0
	je	.label_215
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_229
.label_215:
	mov	qword ptr [rsp + 0x40], rsi
.label_203:
	xor	r13d, r13d
	jmp	.label_223
.label_315:
	xor	r13d, r13d
.label_313:
	mov	r10, qword ptr [rsp + 0x28]
.label_223:
	mov	r12, qword ptr [rsp + 0x40]
.label_206:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_211:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_231
	test	al, al
	je	.label_231
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_220
.label_231:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_247
	nop	word ptr [rax + rax]
.label_204:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_247:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_253
	test	sil, 1
	je	.label_261
	cmp	r14, rbp
	jae	.label_256
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_256:
	inc	r14
	xor	esi, esi
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_219
	cmp	r8d, 2
	jne	.label_249
	mov	eax, r9d
	and	al, 1
	jne	.label_249
	cmp	r14, rbp
	jae	.label_272
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_276
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_276:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_234
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_234:
	add	r14, 3
	mov	r9b, 1
.label_249:
	cmp	r14, rbp
	jae	.label_290
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_290:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_294
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_288
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_288:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_261:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_250
	test	r9b, 1
	je	.label_308
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_251
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_311
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_311:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_317
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_317:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_308
	nop	word ptr cs:[rax + rax]
.label_251:
	mov	rbx, rcx
.label_308:
	cmp	r14, rbp
	jae	.label_204
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_204
	nop	
.label_250:
	test	r9b, 1
	je	.label_213
	and	al, 1
	jne	.label_213
	cmp	r14, rbp
	jae	.label_217
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	r14, 2
	xor	r9d, r9d
.label_213:
	mov	ebx, r15d
.label_201:
	cmp	r14, rbp
	jae	.label_228
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_228:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_255
.label_263:
	xor	r13d, r13d
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rcx, r12
.label_273:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_246
	or	al, dl
	jne	.label_246
	mov	r11, rcx
	jmp	.label_219
.label_232:
	mov	eax, 2
.label_314:
	mov	qword ptr [rsp + 0x38], rax
.label_219:
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
.label_236:
	mov	r14, rax
.label_309:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_226:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_283
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_271
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_271
	inc	rdx
	nop	dword ptr [rax + rax]
.label_295:
	cmp	r14, rbp
	jae	.label_293
	mov	byte ptr [rcx + r14], al
.label_293:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_295
	jmp	.label_271
.label_244:
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
	jmp	.label_236
.label_283:
	mov	rcx, qword ptr [rsp + 0x10]
.label_271:
	cmp	r14, rbp
	jae	.label_309
	mov	byte ptr [rcx + r14], 0
	jmp	.label_309
.label_262:
	mov	eax, 5
	jmp	.label_314
.label_279:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403ff0
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
	#Procedure 0x4040c0
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
	je	.label_320
	mov	qword ptr [rax], rbx
.label_320:
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
	#Procedure 0x4041b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_321
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_323:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_323
.label_321:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_325
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_324], OFFSET FLAT:slot0
.label_325:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_322
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_322:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404250
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404260

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
	js	.label_326
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_329
	cmp	r12d, 0x7fffffff
	je	.label_331
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
	jne	.label_327
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_327:
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
.label_329:
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
	jbe	.label_332
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_328
.label_332:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_330
	mov	rdi, r14
	call	free
.label_330:
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
.label_328:
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
.label_326:
	call	abort
.label_331:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404420
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404430
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
	#Procedure 0x404450
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
	#Procedure 0x404470
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
	je	.label_333
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
.label_333:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4044e0
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
	je	.label_334
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
.label_334:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404550
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
	je	.label_335
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
.label_335:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0
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
	je	.label_336
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
.label_336:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404630
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
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
	#Procedure 0x4046a0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
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
	#Procedure 0x404710

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
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
	#Procedure 0x404770
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
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
	#Procedure 0x4047d0
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
	je	.label_340
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
.label_340:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_341
	test	rdx, rdx
	je	.label_341
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_341:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4048e0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_342
	test	rdx, rdx
	je	.label_342
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_342:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_343
	test	rsi, rsi
	je	.label_343
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_343:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4049c0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_337]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_338]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_339]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_344
	test	rsi, rsi
	je	.label_344
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
.label_344:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a30
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a40
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
	#Procedure 0x404a60

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

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
	#Procedure 0x404aa0

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
	jne	.label_350
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_346
	cmp	ecx, 0x55
	jne	.label_345
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_345
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_345
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_345
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_345
	cmp	byte ptr [rax + 5], 0
	jne	.label_345
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_352
	mov	eax, OFFSET FLAT:label_353
	jmp	.label_349
.label_346:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_345
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_345
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_345
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_345
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_345
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_345
	cmp	byte ptr [rax + 7], 0
	je	.label_351
.label_345:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_259
	mov	eax, OFFSET FLAT:label_224
.label_349:
	cmove	rax, rcx
.label_350:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_351:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_347
	mov	eax, OFFSET FLAT:label_348
	jmp	.label_349
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b70

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
	je	.label_365
	mov	edx, OFFSET FLAT:label_360
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_367
.label_365:
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_367:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
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
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_355
	jmp	qword ptr [(r12 * 8) + label_357]
.label_480:
	add	rsp, 8
	jmp	.label_354
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
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
	jmp	.label_354
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
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
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
	jmp	.label_354
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
	jmp	.label_354
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
	jmp	.label_354
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
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
	jmp	.label_354
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
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
	jmp	.label_354
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
.label_354:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_373:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_373
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_374
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_376
.label_374:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_376:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_386
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_375
.label_386:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_384
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_385
.label_384:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_385:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_382
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_383
.label_382:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_383:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_380
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_381
.label_380:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_381:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_377
	cmp	r10d, 0x29
	jae	.label_378
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_379
.label_378:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_379:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_377
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_377:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_387
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_387:
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
	#Procedure 0x405180
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_389
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_392
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	je	.label_392
.label_393:
	pop	rbx
	ret	
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405240

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_394
	test	rax, rax
	je	.label_395
.label_394:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_396
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_397
	test	rbx, rbx
	jne	.label_397
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_397:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_398
	test	rax, rax
	je	.label_396
.label_398:
	pop	rbx
	ret	
.label_396:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_399
	test	rbx, rbx
	jne	.label_399
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_399:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_401
	test	rax, rax
	je	.label_400
.label_401:
	pop	rbx
	ret	
.label_400:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4052e0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_402
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_405
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_403
.label_402:
	test	rcx, rcx
	jne	.label_407
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_407:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_404
.label_403:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_406
	test	rbx, rbx
	jne	.label_406
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_406:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_408
	test	rax, rax
	je	.label_405
.label_408:
	pop	rbx
	ret	
.label_405:
	call	xalloc_die
.label_404:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405380
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_409
	test	rax, rax
	je	.label_410
.label_409:
	pop	rbx
	ret	
.label_410:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_411
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_414
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_415
	call	free
	xor	eax, eax
	jmp	.label_412
.label_411:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_413
	mov	qword ptr [rsi], rbx
.label_415:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_412
	test	rax, rax
	je	.label_413
.label_412:
	pop	rbx
	ret	
.label_413:
	call	xalloc_die
.label_414:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410
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
	je	.label_417
	test	r14, r14
	je	.label_416
.label_417:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_416:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405450
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_418
	call	rpl_calloc
	test	rax, rax
	je	.label_418
	pop	rcx
	ret	
.label_418:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405480

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
	je	.label_419
	test	r15, r15
	je	.label_420
.label_419:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_420:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4054c0

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
	je	.label_422
	test	r15, r15
	je	.label_421
.label_422:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_421:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_180
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405540

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rcx, qword ptr [rsp + 8]
	cmp	rcx, rbx
	je	.label_427
	test	r15, r15
	jne	.label_424
	cmp	byte ptr [rcx], 0
	je	.label_424
	xor	eax, eax
	jmp	.label_425
.label_424:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_426
	jnp	.label_428
.label_426:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_428
.label_427:
	xor	eax, eax
.label_428:
	test	r15, r15
	je	.label_425
	mov	qword ptr [r15], rcx
.label_425:
	fstp	xword ptr [r14]
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_429
	test	rsi, rsi
	mov	ecx, 1
	je	.label_430
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_430
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_429:
	mov	ecx, 1
.label_430:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610

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
	je	.label_431
	cmp	r15, -2
	jb	.label_431
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_431
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_431:
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
	#Procedure 0x405670

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
	jne	.label_434
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_117
	xor	edx, edx
	call	newlocale
	mov	qword ptr [rip + c_locale_cache],  rax
.label_434:
	mov	rdi, qword ptr [rip + c_locale_cache]
	test	rdi, rdi
	je	.label_432
	call	uselocale
	mov	rbx, rax
	test	rbx, rbx
	je	.label_432
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
	je	.label_435
	mov	dword ptr [r14], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_433
.label_432:
	fldz	
	test	r15, r15
	je	.label_433
	mov	qword ptr [r15], r14
.label_433:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_435:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405710

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
	jne	.label_437
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_436
	test	cl, cl
	jne	.label_436
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_436
.label_437:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_436
	call	__errno_location
	mov	dword ptr [rax], 0
.label_436:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405770

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_439
	cmp	byte ptr [rax], 0x43
	jne	.label_441
	cmp	byte ptr [rax + 1], 0
	je	.label_438
.label_441:
	mov	esi, OFFSET FLAT:label_440
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_439
.label_438:
	xor	ebx, ebx
.label_439:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057b0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_91
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_442
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057e0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_443
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_444
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_443
.label_444:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_443
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_445
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_445:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_443:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405860

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_446
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_446
	test	byte ptr [rbx + 1], 1
	je	.label_446
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_446:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058a0

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
	jne	.label_447
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_447
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_448
.label_447:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_448:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_449
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_449:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x405910

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
