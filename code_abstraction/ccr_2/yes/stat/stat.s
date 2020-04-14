	.section	.text
	.align	32
	#Procedure 0x402060

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_31
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_24
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
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_32
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_31:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	#Procedure 0x4023a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14, rsi
	mov	r15d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_45
	call	setlocale
	mov	edi, OFFSET FLAT:label_44
	mov	esi, OFFSET FLAT:label_68
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_44
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	mov	edi, OFFSET FLAT:label_78
	cmovne	rdi, rax
	mov	qword ptr [rip + decimal_point],  rdi
	call	strlen
	mov	qword ptr [rip + decimal_point_len],  rax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	xor	ebx, ebx
	xor	r12d, r12d
.label_1441:
	mov	byte ptr [rsp + 3], al
	mov	al, bl
.label_1442:
	mov	bl, al
	jmp	.label_42
	nop	dword ptr [rax]
.label_46:
	mov	r12, qword ptr [rip + optarg]
	mov	byte ptr [rip + interpret_backslash_escapes],  bpl
	mov	qword ptr [rip + trailing_delim],  rdx
	jmp	.label_42
.label_1443:
	mov	bpl, 1
	mov	edx, OFFSET FLAT:label_45
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_42:
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_50
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r15d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_55
	lea	ecx, [rax - 0x63]
	cmp	ecx, 0x1d
	ja	.label_81
	mov	al, 1
	mov	edx, OFFSET FLAT:label_57
	jmp	qword ptr [(rcx * 8) + label_58]
.label_81:
	cmp	eax, 0x4c
	jne	.label_59
	mov	byte ptr [rip + follow_links],  1
	jmp	.label_42
.label_55:
	cmp	eax, -1
	jne	.label_61
	cmp	dword ptr [rip + optind],  r15d
	je	.label_64
	test	r12, r12
	je	.label_65
	mov	esi, OFFSET FLAT:label_66
	mov	rdi, r12
	call	strstr
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r12
	je	.label_52
	mov	edi, OFFSET FLAT:label_73
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_76
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_38
	cdqe	
	mov	esi, dword ptr [(rax * 4) + quoting_style_vals]
	xor	edi, edi
	jmp	.label_39
.label_65:
	mov	r12d, r15d
	xor	r15d, r15d
	cmp	byte ptr [rsp + 3], 0
	setne	r15b
	xor	ebp, ebp
	test	bl, bl
	setne	bpl
	xor	edx, edx
	mov	edi, r15d
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 0x10], rax
	mov	edx, 1
	mov	edi, r15d
	mov	r15d, r12d
	mov	esi, ebp
	call	default_format
	mov	qword ptr [rsp + 8], rax
	jmp	.label_48
.label_76:
	xor	edi, edi
	mov	esi, 4
.label_39:
	call	set_quoting_style
	jmp	.label_52
.label_38:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_52:
	mov	qword ptr [rsp + 8], r12
.label_48:
	movsxd	rax, dword ptr [rip + optind]
	mov	r12b, 1
	cmp	eax, r15d
	jge	.label_60
	lea	r13, [r14 + rax*8]
	sub	r15d, eax
	mov	r12b, 1
	lea	r14, [rsp + 0x18]
	nop	word ptr cs:[rax + rax]
.label_82:
	cmp	byte ptr [rsp + 3], 0
	mov	rbx, qword ptr [r13]
	je	.label_69
	cmp	byte ptr [rbx], 0x2d
	jne	.label_71
	cmp	byte ptr [rbx + 1], 0
	je	.label_75
.label_71:
	mov	rdi, rbx
	mov	rsi, r14
	call	statfs
	test	eax, eax
	je	.label_79
	call	__errno_location
	mov	dword ptr [rsp + 4], r15d
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	r15d, dword ptr [rsp + 4]
	mov	rdx, r14
	jmp	.label_43
	nop	word ptr cs:[rax + rax]
.label_69:
	cmp	byte ptr [rbx], 0x2d
	jne	.label_47
	movzx	eax, byte ptr [rbx + 1]
	mov	ecx, eax
	neg	cl
	sbb	ebp, ebp
	test	al, al
	jne	.label_49
	mov	edi, 1
	mov	esi, ebp
	mov	rdx, r14
	call	__fxstat
	test	eax, eax
	je	.label_54
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_51
.label_79:
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_62
.label_47:
	mov	ebp, 0xffffffff
.label_49:
	cmp	byte ptr [rip + follow_links],  1
	jne	.label_67
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__xstat
	jmp	.label_72
.label_67:
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__lxstat
.label_72:
	test	eax, eax
	je	.label_54
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 4], eax
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	r14d, r15d
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 4]
	jmp	.label_41
.label_54:
	movzx	eax, word ptr [rsp + 0x30]
	or	eax, 0x4000
	and	eax, 0xf000
	cmp	eax, 0x6000
	mov	rdi, qword ptr [rsp + 0x10]
	jne	.label_74
	mov	rdi, qword ptr [rsp + 8]
.label_74:
	mov	ecx, OFFSET FLAT:print_stat
	mov	esi, ebp
.label_62:
	mov	rdx, rbx
	mov	r8, r14
	call	print_it
	mov	bpl, al
	xor	bpl, 1
	jmp	.label_51
.label_75:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	r14d, r15d
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_41:
	mov	rdx, r15
	mov	r15d, r14d
.label_43:
	lea	r14, [rsp + 0x18]
	call	error
.label_51:
	and	r12b, bpl
	add	r13, 8
	dec	r15d
	jne	.label_82
.label_60:
	movzx	eax, r12b
	xor	eax, 1
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_61:
	cmp	eax, 0xffffff7d
	je	.label_70
	cmp	eax, 0xffffff7e
	jne	.label_59
	xor	edi, edi
	call	usage
.label_70:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_15
	mov	edx, OFFSET FLAT:label_17
	mov	r8d, OFFSET FLAT:label_77
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_59:
	mov	edi, 1
	call	usage
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402850

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	push	rbx
	mov	ebx, edx
	test	dil, dil
	je	.label_85
	test	sil, sil
	je	.label_87
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_88
.label_85:
	test	sil, sil
	je	.label_89
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_88
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
.label_88:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	xor	edi, edi
	test	bl, bl
	je	.label_91
	mov	esi, OFFSET FLAT:label_94
	jmp	.label_95
.label_91:
	mov	esi, OFFSET FLAT:label_93
.label_95:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	r15, rax
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	rbx, rax
	mov	rdi, r14
	call	free
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402960

	.globl print_it
	.type print_it, @function
print_it:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	r12, rdi
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	al, byte ptr [r12]
	xor	r13d, r13d
	jmp	.label_119
	nop	
.label_97:
	movzx	eax, byte ptr [r12 + 1]
	inc	r12
.label_119:
	test	al, al
	je	.label_123
	movsx	ecx, al
	cmp	ecx, 0x5c
	je	.label_124
	cmp	ecx, 0x25
	jne	.label_125
	lea	rbx, [r12 + 1]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, rbx
	call	strspn
	lea	rbp, [r12 + rax]
	lea	rdi, [r12 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	r14, [rax + rbp + 1]
	movzx	ecx, byte ptr [rax + rbp + 1]
	cmp	cl, 0x2e
	jne	.label_129
	lea	rdi, [r14 + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	movzx	ecx, byte ptr [r14 + rax + 1]
	lea	r14, [r14 + rax + 1]
.label_129:
	mov	rbp, r14
	sub	rbp, rbx
	movsx	ebx, cl
	lea	r15, [rbp + 1]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	cmp	ebx, 0x25
	mov	r12, r14
	je	.label_101
	test	ebx, ebx
	jne	.label_102
	lea	r12, [r14 - 1]
.label_101:
	test	rbp, rbp
	jne	.label_105
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_106
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x25
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_124:
	movzx	eax, byte ptr [rip + interpret_backslash_escapes]
	test	al, al
	je	.label_114
	movzx	ebx, byte ptr [r12 + 1]
	movsx	r15d, bl
	mov	eax, r15d
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_118
	add	r15d, -0x30
	movsx	eax, byte ptr [r12 + 2]
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	jne	.label_122
	lea	r15d, [rax + r15*8 - 0x30]
	movsx	eax, byte ptr [r12 + 3]
	mov	ecx, eax
	and	cl, 0xf8
	cmp	cl, 0x30
	jne	.label_126
	lea	r15d, [rax + r15*8 - 0x30]
	add	r12, 4
	jmp	.label_113
	nop	word ptr cs:[rax + rax]
.label_125:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_130
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_97
.label_102:
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	edx, ebx
	mov	ecx, dword ptr [rsp + 0xc]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	and	r13b, 1
	or	r13b, al
	mov	r12, r14
	jmp	.label_97
.label_118:
	test	bl, bl
	je	.label_112
	cmp	bl, 0x78
	jne	.label_104
	movzx	ebp, byte ptr [r12 + 2]
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	test	byte ptr [rcx + rbp*2 + 1], 0x10
	jne	.label_107
.label_104:
	lea	eax, [r15 - 0x22]
	cmp	eax, 0x54
	ja	.label_109
	jmp	qword ptr [(rax * 8) + label_111]
.label_1482:
	mov	bl, 7
	jmp	.label_103
.label_122:
	add	r12, 2
	jmp	.label_113
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_114:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_121
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_97
.label_126:
	add	r12, 3
.label_113:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_128
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r15b
	dec	r12
	jmp	.label_97
.label_107:
	movsx	eax, bpl
	mov	edx, eax
	add	dl, 0x9f
	cmp	dl, 5
	ja	.label_131
	add	eax, -0x57
	jmp	.label_96
.label_131:
	add	bpl, 0xbf
	cmp	bpl, 5
	ja	.label_98
	add	eax, -0x37
	jmp	.label_96
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r15d
	call	error
	jmp	.label_103
.label_1483:
	mov	bl, 8
	jmp	.label_103
.label_1484:
	mov	bl, 0x1b
	jmp	.label_103
.label_1485:
	mov	bl, 0xc
	jmp	.label_103
.label_1486:
	mov	bl, 0xa
	jmp	.label_103
.label_1487:
	mov	bl, 0xd
	jmp	.label_103
.label_1488:
	mov	bl, 9
	jmp	.label_103
.label_1489:
	mov	bl, 0xb
.label_103:
	inc	r12
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_108
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], bl
	jmp	.label_97
.label_98:
	add	eax, -0x30
.label_96:
	movzx	edx, byte ptr [r12 + 3]
	test	byte ptr [rcx + rdx*2 + 1], 0x10
	jne	.label_116
	add	r12, 2
	jmp	.label_117
.label_116:
	movsx	ecx, dl
	shl	eax, 4
	mov	ebx, ecx
	add	bl, 0x9f
	cmp	bl, 5
	ja	.label_120
	add	ecx, -0x57
	jmp	.label_100
.label_120:
	add	dl, 0xbf
	cmp	dl, 5
	ja	.label_132
	add	ecx, -0x37
	jmp	.label_100
.label_132:
	add	ecx, -0x30
.label_100:
	add	r12, 3
	add	eax, ecx
.label_117:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rdi + 0x28]
	cmp	rcx, qword ptr [rdi + 0x30]
	jae	.label_127
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x28], rdx
	mov	byte ptr [rcx], al
	jmp	.label_97
.label_130:
	movzx	esi, al
	call	__overflow
	jmp	.label_97
.label_106:
	mov	esi, 0x25
	call	__overflow
	jmp	.label_97
.label_121:
	mov	esi, 0x5c
	call	__overflow
	jmp	.label_97
.label_128:
	movzx	esi, r15b
	call	__overflow
	dec	r12
	jmp	.label_97
.label_108:
	movzx	esi, bl
	call	__overflow
	jmp	.label_97
.label_127:
	movzx	esi, al
	call	__overflow
	jmp	.label_97
.label_123:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rip + trailing_delim]
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	mov	al, byte ptr [r14]
	mov	rbx, qword ptr [rsp]
	mov	byte ptr [rbx + rbp + 1], al
	mov	byte ptr [rbx + rbp + 2], 0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	add	edx, -0x53
	cmp	edx, 0x21
	ja	.label_340
	jmp	qword ptr [(rdx * 8) + label_353]
.label_1265:
	mov	rdx, qword ptr [r9 + 0x48]
	test	rdx, rdx
	jne	.label_217
.label_1275:
	mov	rdx, qword ptr [r9 + 8]
	jmp	.label_217
.label_1266:
	mov	r15d, OFFSET FLAT:label_299
	mov	r8, qword ptr [r9]
	cmp	r8, 0x2fc12fc0
	jg	.label_300
	cmp	r8, 0xadfe
	jle	.label_377
	cmp	r8, 0x13111a7
	jg	.label_135
	cmp	r8, 0x1021993
	jg	.label_143
	cmp	r8, 0x11953
	jle	.label_152
	cmp	r8, 0x414a52
	jle	.label_274
	cmp	r8, 0x414a53
	je	.label_305
	cmp	r8, 0xc0ffee
	je	.label_171
	cmp	r8, 0xc36400
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_186
	jmp	.label_137
.label_340:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_193
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_196
.label_1267:
	mov	rdx, qword ptr [r9 + 0x20]
	jmp	.label_212
.label_1268:
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_212
.label_1269:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_217
.label_1270:
	mov	rdx, qword ptr [r9 + 0x30]
	jmp	.label_212
.label_1271:
	mov	rdx, qword ptr [r9 + 0x18]
.label_212:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_int
	jmp	.label_196
.label_1272:
	mov	edx, dword ptr [r9 + 0x38]
	mov	eax, dword ptr [r9 + 0x3c]
	shl	rdx, 0x20
	or	rdx, rax
	jmp	.label_232
.label_1273:
	mov	rdx, qword ptr [r9 + 0x40]
.label_217:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint
	jmp	.label_196
.label_1274:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r8
	jmp	.label_297
.label_1276:
	mov	rdx, qword ptr [r9]
.label_232:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_196
.label_300:
	cmp	r8, 0x65735542
	jle	.label_263
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_189
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_277
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	jg	.label_281
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_286
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_292
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_266
	jmp	.label_137
.label_377:
	cmp	r8, 0x482a
	jg	.label_309
	cmp	r8, 0x2467
	jg	.label_316
	cmp	r8, 0x1372
	jle	.label_322
	lea	rax, [r8 - 0x1373]
	cmp	rax, 0x1c
	ja	.label_329
	jmp	qword ptr [(rax * 8) + label_337]
.label_1495:
	mov	r15d, OFFSET FLAT:label_339
	jmp	.label_137
.label_263:
	cmp	r8, 0x541900ff
	jg	.label_346
	cmp	r8, 0x47504652
	jle	.label_243
	cmp	r8, 0x5346414e
	jg	.label_359
	cmp	r8, 0x52654972
	jg	.label_367
	cmp	r8, 0x47504653
	je	.label_371
	cmp	r8, 0x50495045
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_136
	jmp	.label_137
.label_189:
	cmp	r8, 0x73636672
	jle	.label_142
	cmp	r8, 0x7461636e
	jg	.label_151
	cmp	r8, 0x73727278
	jg	.label_158
	cmp	r8, 0x73636673
	je	.label_165
	cmp	r8, 0x73717368
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_178
	jmp	.label_137
.label_309:
	cmp	r8, 0x6968
	jle	.label_185
	cmp	r8, 0x9f9f
	jg	.label_192
	cmp	r8, 0x72b5
	jg	.label_200
	cmp	r8, 0x6969
	je	.label_207
	cmp	r8, 0x7275
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_349
	jmp	.label_137
.label_346:
	cmp	r8, 0x6165676b
	jle	.label_223
	cmp	r8, 0x62656571
	jg	.label_227
	cmp	r8, 0x62646575
	jg	.label_235
	cmp	r8, 0x6165676c
	je	.label_240
	cmp	r8, 0x61756673
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_321
	jmp	.label_137
.label_135:
	cmp	r8, 0x15013345
	jg	.label_257
	cmp	r8, 0xbad1de9
	jle	.label_148
	cmp	r8, 0x11307853
	jg	.label_271
	cmp	r8, 0xbad1dea
	je	.label_276
	cmp	r8, 0xbd00bd0
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_285
	jmp	.label_137
.label_143:
	cmp	r8, 0x12fd16c
	jg	.label_290
	cmp	r8, 0x1021994
	je	.label_296
	cmp	r8, 0x1021997
	je	.label_303
	cmp	r8, 0x1161970
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_239
	jmp	.label_137
.label_277:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_319
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_326
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_333
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_184
	jmp	.label_137
.label_316:
	cmp	r8, 0x3fff
	jle	.label_352
	cmp	r8, 0x4005
	jg	.label_357
	cmp	r8, 0x4000
	je	.label_320
	cmp	r8, 0x4004
	jne	.label_145
.label_320:
	mov	r15d, OFFSET FLAT:label_222
	jmp	.label_137
.label_243:
	cmp	r8, 0x42494e4c
	jle	.label_133
	cmp	r8, 0x453dcd27
	jg	.label_140
	cmp	r8, 0x42494e4d
	je	.label_149
	cmp	r8, 0x43415d53
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_161
	jmp	.label_137
.label_142:
	cmp	r8, 0x68191121
	jle	.label_168
	cmp	r8, 0x6e667363
	jg	.label_174
	cmp	r8, 0x68191122
	je	.label_182
	cmp	r8, 0x6b414653
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_197
	jmp	.label_137
.label_185:
	cmp	r8, 0x4d59
	jle	.label_204
	cmp	r8, 0x564b
	jg	.label_368
	cmp	r8, 0x4d5a
	je	.label_215
	cmp	r8, 0x517b
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_225
	jmp	.label_137
.label_223:
	cmp	r8, 0x58465341
	jle	.label_231
	cmp	r8, 0x5dca2df4
	jg	.label_238
	cmp	r8, 0x58465342
	je	.label_244
	cmp	r8, 0x5a3c69f0
	je	.label_137
	jmp	.label_145
.label_257:
	cmp	r8, 0x1badfacd
	jle	.label_256
	cmp	r8, 0x28cd3d44
	jg	.label_262
	cmp	r8, 0x1badface
	je	.label_270
	cmp	r8, 0x24051905
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_179
	jmp	.label_137
.label_152:
	cmp	r8, 0xef52
	jg	.label_284
	cmp	r8, 0xadff
	je	.label_289
	cmp	r8, 0xef51
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_190
	jmp	.label_137
.label_281:
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	jg	.label_307
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_233
	mov	eax, 0xabba1974
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_219
	jmp	.label_137
.label_359:
	cmp	r8, 0x5346544d
	jg	.label_332
	cmp	r8, 0x5346414f
	je	.label_338
	cmp	r8, 0x53464846
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_350
	jmp	.label_137
.label_151:
	cmp	r8, 0x794c762f
	jg	.label_242
	cmp	r8, 0x7461636f
	je	.label_364
	cmp	r8, 0x74726163
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_183
	jmp	.label_137
.label_192:
	cmp	r8, 0x9fa1
	jg	.label_134
	cmp	r8, 0x9fa0
	je	.label_176
	cmp	r8, 0x9fa1
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_181
	jmp	.label_137
.label_227:
	cmp	r8, 0x6462671f
	jg	.label_160
	cmp	r8, 0x62656572
	je	.label_315
	cmp	r8, 0x63677270
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_166
	jmp	.label_137
.label_290:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_188
	jmp	qword ptr [(rax * 8) + label_198]
.label_1422:
	mov	r15d, OFFSET FLAT:label_358
	jmp	.label_137
.label_319:
	mov	eax, 0xfe534d41
	cmp	r8, rax
	jg	.label_208
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_214
	mov	eax, 0xf995e849
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_264
	jmp	.label_137
.label_322:
	cmp	r8, 0x2f
	je	.label_230
	cmp	r8, 0x187
	je	.label_236
	cmp	r8, 0x7c0
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_248
	jmp	.label_137
.label_148:
	cmp	r8, 0x13111a8
	je	.label_251
	cmp	r8, 0x7655821
	je	.label_258
	cmp	r8, 0x9041934
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_261
	jmp	.label_137
.label_352:
	cmp	r8, 0x2468
	je	.label_275
	cmp	r8, 0x2478
	je	.label_259
	cmp	r8, 0x3434
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_291
	jmp	.label_137
.label_133:
	cmp	r8, 0x2fc12fc1
	je	.label_295
	cmp	r8, 0x3153464a
	je	.label_302
	cmp	r8, 0x42465331
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_313
	jmp	.label_137
.label_168:
	cmp	r8, 0x65735543
	je	.label_318
	cmp	r8, 0x65735546
	je	.label_324
	cmp	r8, 0x67596969
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_310
	jmp	.label_137
.label_204:
	cmp	r8, 0x482b
	je	.label_342
	cmp	r8, 0x4858
	je	.label_348
	cmp	r8, 0x4d44
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_363
	jmp	.label_137
.label_231:
	cmp	r8, 0x54190100
	je	.label_172
	cmp	r8, 0x565a4653
	je	.label_373
	cmp	r8, 0x58295829
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_336
	jmp	.label_137
.label_256:
	cmp	r8, 0x15013346
	je	.label_146
	cmp	r8, 0x19800202
	je	.label_155
	cmp	r8, 0x19830326
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_167
	jmp	.label_137
.label_274:
	cmp	r8, 0x11954
	je	.label_172
	cmp	r8, 0x27e0eb
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_187
	jmp	.label_137
.label_286:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_194
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_209
	jmp	.label_137
.label_367:
	cmp	r8, 0x52654973
	je	.label_317
	cmp	r8, 0x5346314d
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_150
	jmp	.label_137
.label_158:
	cmp	r8, 0x73727279
	je	.label_228
	cmp	r8, 0x73757245
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_241
	jmp	.label_137
.label_200:
	cmp	r8, 0x72b6
	je	.label_247
	cmp	r8, 0x9660
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_222
	jmp	.label_137
.label_235:
	cmp	r8, 0x62646576
	je	.label_162
	cmp	r8, 0x62656570
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_226
	jmp	.label_137
.label_271:
	cmp	r8, 0x11307854
	je	.label_279
	cmp	r8, 0x13661366
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_205
	jmp	.label_137
.label_326:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_294
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_253
	jmp	.label_137
.label_357:
	cmp	r8, 0x4006
	je	.label_312
	cmp	r8, 0x4244
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_325
	jmp	.label_137
.label_140:
	cmp	r8, 0x453dcd28
	je	.label_331
	cmp	r8, 0x45584653
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_164
	jmp	.label_137
.label_174:
	cmp	r8, 0x6e667364
	je	.label_347
	cmp	r8, 0x6e736673
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_362
	jmp	.label_137
.label_368:
	cmp	r8, 0x564c
	je	.label_203
	cmp	r8, 0x5df5
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_378
	jmp	.label_137
.label_238:
	cmp	r8, 0x5dca2df5
	je	.label_138
	cmp	r8, 0x61636673
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_154
	jmp	.label_137
.label_262:
	cmp	r8, 0x28cd3d45
	je	.label_159
	cmp	r8, 0x2bad1dea
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_341
	jmp	.label_137
.label_284:
	cmp	r8, 0xef53
	je	.label_177
	cmp	r8, 0xf15f
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_245
	jmp	.label_137
.label_307:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_199
	mov	eax, 0xbeefdead
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_213
	jmp	.label_137
.label_332:
	cmp	r8, 0x5346544e
	je	.label_218
	cmp	r8, 0x534f434b
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_180
	jmp	.label_137
.label_242:
	cmp	r8, 0x794c7630
	je	.label_234
	cmp	r8, 0x7c7c6673
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_356
	jmp	.label_137
.label_134:
	cmp	r8, 0x9fa2
	je	.label_250
	cmp	r8, 0xadf5
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_157
	jmp	.label_137
.label_160:
	cmp	r8, 0x64626720
	je	.label_268
	cmp	r8, 0x64646178
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_278
	jmp	.label_137
.label_208:
	mov	eax, 0xfe534d42
	cmp	r8, rax
	je	.label_283
	mov	eax, 0xff534d42
	cmp	r8, rax
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_272
	jmp	.label_137
.label_172:
	mov	r15d, OFFSET FLAT:label_301
	jmp	.label_137
.label_296:
	mov	r15d, OFFSET FLAT:label_306
	jmp	.label_137
.label_303:
	mov	r15d, OFFSET FLAT:label_220
	jmp	.label_137
.label_329:
	cmp	r8, 0x1cd1
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_282
	jmp	.label_137
.label_305:
	mov	r15d, OFFSET FLAT:label_311
	jmp	.label_137
.label_171:
	mov	r15d, OFFSET FLAT:label_344
	jmp	.label_137
.label_292:
	mov	r15d, OFFSET FLAT:label_334
	jmp	.label_137
.label_1496:
	mov	r15d, OFFSET FLAT:label_343
	jmp	.label_137
.label_1497:
	mov	r15d, OFFSET FLAT:label_202
	jmp	.label_137
.label_1498:
	mov	r15d, OFFSET FLAT:label_354
	jmp	.label_137
.label_371:
	mov	r15d, OFFSET FLAT:label_360
	jmp	.label_137
.label_165:
	mov	r15d, OFFSET FLAT:label_366
	jmp	.label_137
.label_207:
	mov	r15d, OFFSET FLAT:label_370
	jmp	.label_137
.label_240:
	mov	r15d, OFFSET FLAT:label_375
	jmp	.label_137
.label_276:
	mov	r15d, OFFSET FLAT:label_374
	jmp	.label_137
.label_333:
	mov	r15d, OFFSET FLAT:label_139
	jmp	.label_137
.label_149:
	mov	r15d, OFFSET FLAT:label_210
	jmp	.label_137
.label_182:
	mov	r15d, OFFSET FLAT:label_153
	jmp	.label_137
.label_215:
	mov	r15d, OFFSET FLAT:label_269
	jmp	.label_137
.label_244:
	mov	r15d, OFFSET FLAT:label_163
	jmp	.label_137
.label_270:
	mov	r15d, OFFSET FLAT:label_169
	jmp	.label_137
.label_289:
	mov	r15d, OFFSET FLAT:label_175
	jmp	.label_137
.label_233:
	mov	r15d, OFFSET FLAT:label_170
	jmp	.label_137
.label_338:
	mov	r15d, OFFSET FLAT:label_327
	jmp	.label_137
.label_364:
	mov	r15d, OFFSET FLAT:label_195
	jmp	.label_137
.label_176:
	mov	r15d, OFFSET FLAT:label_201
	jmp	.label_137
.label_315:
	mov	r15d, OFFSET FLAT:label_206
	jmp	.label_137
.label_214:
	mov	r15d, OFFSET FLAT:label_211
	jmp	.label_137
.label_230:
	mov	r15d, OFFSET FLAT:label_216
	jmp	.label_137
.label_236:
	mov	r15d, OFFSET FLAT:label_221
	jmp	.label_137
.label_251:
	mov	r15d, OFFSET FLAT:label_224
	jmp	.label_137
.label_258:
	mov	r15d, OFFSET FLAT:label_191
	jmp	.label_137
.label_275:
	mov	r15d, OFFSET FLAT:label_237
	jmp	.label_137
.label_259:
	mov	r15d, OFFSET FLAT:label_252
	jmp	.label_137
.label_295:
	mov	r15d, OFFSET FLAT:label_246
	jmp	.label_137
.label_302:
	mov	r15d, OFFSET FLAT:label_249
	jmp	.label_137
.label_318:
	mov	r15d, OFFSET FLAT:label_255
	jmp	.label_137
.label_324:
	mov	r15d, OFFSET FLAT:label_260
	jmp	.label_137
.label_342:
	mov	r15d, OFFSET FLAT:label_265
	jmp	.label_137
.label_348:
	mov	r15d, OFFSET FLAT:label_273
	jmp	.label_137
.label_373:
	mov	r15d, OFFSET FLAT:label_229
	jmp	.label_137
.label_146:
	mov	r15d, OFFSET FLAT:label_280
	jmp	.label_137
.label_155:
	mov	r15d, OFFSET FLAT:label_287
	jmp	.label_137
.label_194:
	mov	r15d, OFFSET FLAT:label_288
	jmp	.label_137
.label_317:
	mov	r15d, OFFSET FLAT:label_293
	jmp	.label_137
.label_228:
	mov	r15d, OFFSET FLAT:label_298
	jmp	.label_137
.label_247:
	mov	r15d, OFFSET FLAT:label_304
	jmp	.label_137
.label_162:
	mov	r15d, OFFSET FLAT:label_308
	jmp	.label_137
.label_279:
	mov	r15d, OFFSET FLAT:label_314
	jmp	.label_137
.label_294:
	mov	r15d, OFFSET FLAT:label_267
	jmp	.label_137
.label_312:
	mov	r15d, OFFSET FLAT:label_323
	jmp	.label_137
.label_331:
	mov	r15d, OFFSET FLAT:label_330
	jmp	.label_137
.label_347:
	mov	r15d, OFFSET FLAT:label_335
	jmp	.label_137
.label_203:
	mov	r15d, OFFSET FLAT:label_144
	jmp	.label_137
.label_138:
	mov	r15d, OFFSET FLAT:label_345
	jmp	.label_137
.label_159:
	mov	r15d, OFFSET FLAT:label_351
	jmp	.label_137
.label_177:
	mov	r15d, OFFSET FLAT:label_355
	jmp	.label_137
.label_199:
	mov	r15d, OFFSET FLAT:label_361
	jmp	.label_137
.label_218:
	mov	r15d, OFFSET FLAT:label_365
	jmp	.label_137
.label_234:
	mov	r15d, OFFSET FLAT:label_369
	jmp	.label_137
.label_250:
	mov	r15d, OFFSET FLAT:label_372
	jmp	.label_137
.label_268:
	mov	r15d, OFFSET FLAT:label_376
	jmp	.label_137
.label_283:
	mov	r15d, OFFSET FLAT:label_254
	jmp	.label_137
.label_188:
	cmp	r8, 0x12fd16d
	jne	.label_145
	mov	r15d, OFFSET FLAT:label_141
	jmp	.label_137
.label_145:
	mov	r15d, OFFSET FLAT:human_fstype.buf
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:label_147
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_137
.label_1423:
	mov	r15d, OFFSET FLAT:label_156
	jmp	.label_137
.label_1424:
	mov	r15d, OFFSET FLAT:label_328
	jmp	.label_137
.label_1425:
	mov	r15d, OFFSET FLAT:label_173
.label_137:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r15
.label_297:
	call	out_string
.label_196:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_193:
	mov	esi, 0x3f
	call	__overflow
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c80

	.globl out_string
	.type out_string, @function
out_string:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	lea	r14, [rdi + 1]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_379
	movabs	r15, 0x200000000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_390:
	movzx	ebx, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_384
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_386
	and	rax, r15
	je	.label_386
	mov	byte ptr [r14], bl
	inc	r14
.label_386:
	inc	r13
	cmp	r13, rbp
	jb	.label_390
	jmp	.label_384
.label_379:
	mov	r13, r14
.label_384:
	cmp	r13, rbp
	jae	.label_380
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_381
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_381
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_388
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_388
.label_381:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_382:
	movzx	ecx, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_382
.label_385:
	add	r14, rax
	jmp	.label_387
.label_380:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_387:
	mov	word ptr [r14], 0x73
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_388:
	lea	rdi, [r8 - 0x20]
	mov	rdx, rdi
	shr	rdx, 5
	lea	ecx, [rdx + 1]
	and	ecx, 3
	xor	ebx, ebx
	cmp	rdi, 0x60
	jb	.label_383
	lea	rdi, [rcx - 1]
	sub	rdi, rdx
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_389:
	movups	xmm0, xmmword ptr [r13 + rbx]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x10]
	movups	xmmword ptr [r14 + rbx], xmm0
	movups	xmmword ptr [r14 + rbx + 0x10], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x20]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x30]
	movups	xmmword ptr [r14 + rbx + 0x20], xmm0
	movups	xmmword ptr [r14 + rbx + 0x30], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x40]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x50]
	movups	xmmword ptr [r14 + rbx + 0x40], xmm0
	movups	xmmword ptr [r14 + rbx + 0x50], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x60]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x70]
	movups	xmmword ptr [r14 + rbx + 0x60], xmm0
	movups	xmmword ptr [r14 + rbx + 0x70], xmm1
	sub	rbx, -0x80
	add	rdi, 4
	jne	.label_389
.label_383:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_391
	lea	rdi, [r13 + rbx + 0x10]
	lea	rbx, [r14 + rbx + 0x10]
	neg	rcx
.label_392:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rbx - 0x10], xmm0
	movups	xmmword ptr [rbx], xmm1
	add	rdi, 0x20
	add	rbx, 0x20
	inc	rcx
	jne	.label_392
.label_391:
	cmp	rax, r8
	je	.label_385
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_382
	.section	.text
	.align	32
	#Procedure 0x403e70

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	lea	r14, [rdi + 1]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_401
	movabs	r15, 0x1200800000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_403:
	movzx	ebx, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_395
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_398
	and	rax, r15
	je	.label_398
	mov	byte ptr [r14], bl
	inc	r14
.label_398:
	inc	r13
	cmp	r13, rbp
	jb	.label_403
	jmp	.label_395
.label_401:
	mov	r13, r14
.label_395:
	cmp	r13, rbp
	jae	.label_405
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_396
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_396
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_400
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_400
.label_396:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_393:
	movzx	ecx, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_393
.label_397:
	add	r14, rax
	jmp	.label_399
.label_405:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_399:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x786c
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_400:
	lea	rdi, [r8 - 0x20]
	mov	rdx, rdi
	shr	rdx, 5
	lea	ecx, [rdx + 1]
	and	ecx, 3
	xor	ebx, ebx
	cmp	rdi, 0x60
	jb	.label_394
	lea	rdi, [rcx - 1]
	sub	rdi, rdx
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_402:
	movups	xmm0, xmmword ptr [r13 + rbx]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x10]
	movups	xmmword ptr [r14 + rbx], xmm0
	movups	xmmword ptr [r14 + rbx + 0x10], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x20]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x30]
	movups	xmmword ptr [r14 + rbx + 0x20], xmm0
	movups	xmmword ptr [r14 + rbx + 0x30], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x40]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x50]
	movups	xmmword ptr [r14 + rbx + 0x40], xmm0
	movups	xmmword ptr [r14 + rbx + 0x50], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x60]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x70]
	movups	xmmword ptr [r14 + rbx + 0x60], xmm0
	movups	xmmword ptr [r14 + rbx + 0x70], xmm1
	sub	rbx, -0x80
	add	rdi, 4
	jne	.label_402
.label_394:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_406
	lea	rdi, [r13 + rbx + 0x10]
	lea	rbx, [r14 + rbx + 0x10]
	neg	rcx
.label_404:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rbx - 0x10], xmm0
	movups	xmmword ptr [rbx], xmm1
	add	rdi, 0x20
	add	rbx, 0x20
	inc	rcx
	jne	.label_404
.label_406:
	cmp	rax, r8
	je	.label_397
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_393
	.section	.text
	.align	32
	#Procedure 0x404060

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	lea	r14, [rdi + 1]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_415
	movabs	r15, 0x1208000000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_412:
	movzx	ebx, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_414
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_410
	and	rax, r15
	je	.label_410
	mov	byte ptr [r14], bl
	inc	r14
.label_410:
	inc	r13
	cmp	r13, rbp
	jb	.label_412
	jmp	.label_414
.label_415:
	mov	r13, r14
.label_414:
	cmp	r13, rbp
	jae	.label_416
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_418
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_418
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_409
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_409
.label_418:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_408:
	movzx	ecx, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_408
.label_420:
	add	r14, rax
	jmp	.label_407
.label_416:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_407:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x756c
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_409:
	lea	rdi, [r8 - 0x20]
	mov	rdx, rdi
	shr	rdx, 5
	lea	ecx, [rdx + 1]
	and	ecx, 3
	xor	ebx, ebx
	cmp	rdi, 0x60
	jb	.label_419
	lea	rdi, [rcx - 1]
	sub	rdi, rdx
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_411:
	movups	xmm0, xmmword ptr [r13 + rbx]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x10]
	movups	xmmword ptr [r14 + rbx], xmm0
	movups	xmmword ptr [r14 + rbx + 0x10], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x20]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x30]
	movups	xmmword ptr [r14 + rbx + 0x20], xmm0
	movups	xmmword ptr [r14 + rbx + 0x30], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x40]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x50]
	movups	xmmword ptr [r14 + rbx + 0x40], xmm0
	movups	xmmword ptr [r14 + rbx + 0x50], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x60]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x70]
	movups	xmmword ptr [r14 + rbx + 0x60], xmm0
	movups	xmmword ptr [r14 + rbx + 0x70], xmm1
	sub	rbx, -0x80
	add	rdi, 4
	jne	.label_411
.label_419:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_417
	lea	rdi, [r13 + rbx + 0x10]
	lea	rbx, [r14 + rbx + 0x10]
	neg	rcx
.label_413:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rbx - 0x10], xmm0
	movups	xmmword ptr [rbx], xmm1
	add	rdi, 0x20
	add	rbx, 0x20
	inc	rcx
	jne	.label_413
.label_417:
	cmp	rax, r8
	je	.label_420
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_408
	.section	.text
	.align	32
	#Procedure 0x404250

	.globl out_int
	.type out_int, @function
out_int:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	r12, rsi
	lea	r14, [rdi + 1]
	mov	qword ptr [rsp + 0x10], rdi
	lea	rbp, [rdi + r12]
	cmp	r12, 2
	jl	.label_434
	movabs	r15, 0x1288100000001
	mov	r13, r14
	nop	word ptr cs:[rax + rax]
.label_422:
	movzx	ebx, byte ptr [r13]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_424
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_430
	and	rax, r15
	je	.label_430
	mov	byte ptr [r14], bl
	inc	r14
.label_430:
	inc	r13
	cmp	r13, rbp
	jb	.label_422
	jmp	.label_424
.label_434:
	mov	r13, r14
.label_424:
	cmp	r13, rbp
	jae	.label_425
	mov	rax, r12
	sub	rax, r13
	mov	rsi, qword ptr [rsp + 0x10]
	add	rax, rsi
	cmp	rax, 0x1f
	jbe	.label_423
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_423
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_433
	dec	r12
	sub	r12, r13
	add	r12, rsi
	add	r12, r14
	cmp	r13, r12
	ja	.label_433
.label_423:
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax + rax]
.label_427:
	movzx	ecx, byte ptr [r13]
	inc	r13
	mov	byte ptr [rdi], cl
	inc	rdi
	cmp	rbp, r13
	jne	.label_427
.label_429:
	add	r14, rax
	jmp	.label_432
.label_425:
	mov	rdx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
.label_432:
	mov	byte ptr [r14 + 2], 0
	mov	word ptr [r14], 0x646c
	mov	edi, 1
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__printf_chk
.label_433:
	lea	rdi, [r8 - 0x20]
	mov	rdx, rdi
	shr	rdx, 5
	lea	ecx, [rdx + 1]
	and	ecx, 3
	xor	ebx, ebx
	cmp	rdi, 0x60
	jb	.label_428
	lea	rdi, [rcx - 1]
	sub	rdi, rdx
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_421:
	movups	xmm0, xmmword ptr [r13 + rbx]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x10]
	movups	xmmword ptr [r14 + rbx], xmm0
	movups	xmmword ptr [r14 + rbx + 0x10], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x20]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x30]
	movups	xmmword ptr [r14 + rbx + 0x20], xmm0
	movups	xmmword ptr [r14 + rbx + 0x30], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x40]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x50]
	movups	xmmword ptr [r14 + rbx + 0x40], xmm0
	movups	xmmword ptr [r14 + rbx + 0x50], xmm1
	movups	xmm0, xmmword ptr [r13 + rbx + 0x60]
	movups	xmm1, xmmword ptr [r13 + rbx + 0x70]
	movups	xmmword ptr [r14 + rbx + 0x60], xmm0
	movups	xmmword ptr [r14 + rbx + 0x70], xmm1
	sub	rbx, -0x80
	add	rdi, 4
	jne	.label_421
.label_428:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp + 8]
	je	.label_426
	lea	rdi, [r13 + rbx + 0x10]
	lea	rbx, [r14 + rbx + 0x10]
	neg	rcx
.label_431:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rbx - 0x10], xmm0
	movups	xmmword ptr [rbx], xmm1
	add	rdi, 0x20
	add	rbx, 0x20
	inc	rcx
	jne	.label_431
.label_426:
	cmp	rax, r8
	je	.label_429
	lea	rdi, [r14 + r8]
	add	r13, r8
	jmp	.label_427
	.section	.text
	.align	32
	#Procedure 0x404440

	.globl print_stat
	.type print_stat, @function
print_stat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, r9
	mov	r15, r8
	mov	r12, rsi
	mov	r14, rdi
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_464
	jmp	qword ptr [(rdx * 8) + label_454]
.label_1278:
	mov	esi, OFFSET FLAT:human_access.modebuf
	mov	rdi, rbx
	call	filemodestring
	mov	byte ptr [rip + label_458],  0
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_447
.label_1279:
	mov	edx, 0x200
	jmp	.label_443
.label_1280:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_462
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	word ptr [r14 + r12], 0x73
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_457
	xor	eax, eax
	mov	rsi, r14
	call	__printf_chk
	mov	r13b, 1
	jmp	.label_456
.label_1281:
	mov	rdx, qword ptr [rbx]
	jmp	.label_448
.label_464:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_473
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x3f
	jmp	.label_439
.label_1282:
	mov	rdi, rbx
	call	file_type
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	jmp	.label_444
.label_1283:
	mov	edi, dword ptr [rbx + 0x20]
	call	getgrgid
	jmp	.label_450
.label_1284:
	xor	r13d, r13d
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r15
	call	quotearg_style
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	call	out_string
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_456
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rdi, r15
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_471
	xor	r13d, r13d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_452
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, rbx
	call	quotearg_style
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	call	free
	jmp	.label_456
.label_1285:
	mov	rdx, qword ptr [rbx + 0x28]
	movzx	eax, dl
	shr	rdx, 0xc
	and	edx, 0xffffff00
	jmp	.label_469
.label_1286:
	mov	edi, dword ptr [rbx + 0x1c]
	call	getpwuid
.label_450:
	mov	edx, OFFSET FLAT:label_472
	test	rax, rax
	je	.label_447
	mov	rdx, qword ptr [rax]
	jmp	.label_447
.label_1287:
	xor	r13d, r13d
	xor	edx, edx
	xor	ecx, ecx
	mov	rdi, r14
	mov	rsi, r12
	call	out_epoch_sec
	jmp	.label_456
.label_1288:
	mov	rdx, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [rbx + 0x50]
	jmp	.label_441
.label_1289:
	mov	rdx, qword ptr [rbx + 0x58]
	mov	rcx, qword ptr [rbx + 0x60]
	jmp	.label_441
.label_1290:
	mov	rdx, qword ptr [rbx + 0x68]
	mov	rcx, qword ptr [rbx + 0x70]
.label_441:
	mov	rdi, r14
	mov	rsi, r12
	call	out_epoch_sec
	jmp	.label_439
.label_1291:
	mov	eax, dword ptr [rbx + 0x18]
	and	eax, 0xfff
	mov	qword ptr [rsp], rax
	lea	r15, [r14 + 1]
	lea	r13, [r14 + r12]
	mov	rbp, r15
	cmp	r12, 2
	jl	.label_451
	nop	word ptr cs:[rax + rax]
.label_465:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_451
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_461
	movabs	rcx, 0x1200800000001
	and	rax, rcx
	je	.label_461
	mov	byte ptr [r15], bl
	inc	r15
.label_461:
	inc	rbp
	cmp	rbp, r13
	jb	.label_465
.label_451:
	cmp	rbp, r13
	jae	.label_466
	mov	rax, r12
	sub	rax, rbp
	add	rax, r14
	cmp	rax, 0x1f
	jbe	.label_467
	mov	r8, rax
	and	r8, 0xffffffffffffffe0
	je	.label_467
	lea	rdx, [r14 + r12 - 1]
	cmp	r15, rdx
	ja	.label_436
	dec	r12
	sub	r12, rbp
	add	r12, r14
	add	r12, r15
	cmp	rbp, r12
	ja	.label_436
.label_467:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_438:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rsi], cl
	inc	rsi
	cmp	r13, rbp
	jne	.label_438
.label_445:
	add	r15, rax
	jmp	.label_442
.label_1292:
	mov	rdx, qword ptr [rbx + 0x40]
	jmp	.label_443
.label_1293:
	mov	rdx, qword ptr [rbx]
	jmp	.label_443
.label_1294:
	mov	edx, dword ptr [rbx + 0x18]
	jmp	.label_448
.label_1295:
	mov	edx, dword ptr [rbx + 0x20]
	jmp	.label_443
.label_1296:
	mov	rdx, qword ptr [rbx + 0x10]
	jmp	.label_443
.label_1297:
	mov	rdx, qword ptr [rbx + 8]
	jmp	.label_443
.label_1298:
	mov	al, byte ptr [rip + follow_links]
	test	al, al
	jne	.label_453
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_455
.label_453:
	mov	rdi, r15
	call	canonicalize_file_name
	mov	rbp, rax
	test	rbp, rbp
	je	.label_460
	mov	rdi, rbp
	call	find_bind_mount
	mov	r13, rax
	mov	rdi, rbp
	call	free
	mov	rax, r13
	xor	ebp, ebp
	test	rax, rax
	je	.label_455
	xor	r13d, r13d
	jmp	.label_463
.label_1299:
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	jmp	.label_444
.label_1300:
	mov	rax, qword ptr [rbx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	jmp	.label_443
.label_1301:
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	mov	rsi, r12
	call	out_int
	jmp	.label_439
.label_1302:
	mov	rdx, qword ptr [rbx + 0x28]
	mov	eax, edx
	shr	eax, 8
	and	eax, 0xfff
	shr	rdx, 0x20
	and	edx, 0xfffff000
.label_469:
	or	rdx, rax
.label_448:
	mov	rdi, r14
	mov	rsi, r12
	call	out_uint_x
	jmp	.label_439
.label_1303:
	mov	edx, dword ptr [rbx + 0x1c]
.label_443:
	mov	rdi, r14
	mov	rsi, r12
	call	out_uint
	jmp	.label_439
.label_1304:
	mov	edx, OFFSET FLAT:label_446
	jmp	.label_447
.label_1305:
	mov	rdi, qword ptr [rbx + 0x48]
	mov	rsi, qword ptr [rbx + 0x50]
	jmp	.label_449
.label_1306:
	mov	rdi, qword ptr [rbx + 0x58]
	mov	rsi, qword ptr [rbx + 0x60]
	jmp	.label_449
.label_1307:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rsi, qword ptr [rbx + 0x70]
.label_449:
	call	human_time
	mov	edx, OFFSET FLAT:human_time.str
.label_447:
	mov	rdi, r14
	mov	rsi, r12
.label_444:
	call	out_string
.label_439:
	xor	r13d, r13d
.label_456:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_466:
	mov	rdx, qword ptr [rsp]
.label_442:
	mov	byte ptr [r15 + 2], 0
	mov	word ptr [r15], 0x6f6c
	xor	r13d, r13d
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	call	__printf_chk
	jmp	.label_456
.label_455:
	mov	rdi, r15
	mov	rsi, rbx
	call	find_mount_point
	mov	rbx, rax
	mov	r13b, 1
	xor	eax, eax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_463
	mov	rdi, rbx
	call	find_bind_mount
	xor	r13d, r13d
	mov	rbp, rbx
	jmp	.label_463
.label_460:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_470
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	eax, eax
	mov	r13b, 1
	xor	ebp, ebp
.label_463:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:label_457
	cmovne	rdx, rbp
	test	rax, rax
	cmovne	rdx, rax
	mov	rdi, r14
	mov	rsi, r12
	call	out_string
	mov	rdi, rbp
	call	free
	jmp	.label_456
.label_471:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_437
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r13b, 1
	jmp	.label_456
.label_436:
	lea	rdi, [r8 - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	ecx, [rbx + 1]
	and	ecx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_459
	lea	rdi, [rcx - 1]
	sub	rdi, rbx
	xor	esi, esi
.label_468:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r15 + rsi], xmm0
	movups	xmmword ptr [r15 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r15 + rsi + 0x20], xmm0
	movups	xmmword ptr [r15 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r15 + rsi + 0x40], xmm0
	movups	xmmword ptr [r15 + rsi + 0x50], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movups	xmmword ptr [r15 + rsi + 0x60], xmm0
	movups	xmmword ptr [r15 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_468
.label_459:
	test	rcx, rcx
	mov	rdx, qword ptr [rsp]
	je	.label_435
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r15 + rsi + 0x10]
	neg	rcx
.label_440:
	movups	xmm0, xmmword ptr [rdi - 0x10]
	movups	xmm1, xmmword ptr [rdi]
	movups	xmmword ptr [rsi - 0x10], xmm0
	movups	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rcx
	jne	.label_440
.label_435:
	cmp	rax, r8
	je	.label_445
	lea	rsi, [r15 + r8]
	add	rbp, r8
	jmp	.label_438
.label_473:
	mov	esi, 0x3f
	call	__overflow
	jmp	.label_439
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a60

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	sub	rsp, 0x60
	mov	rbx, rsi
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rbx
	mov	rdi, qword ptr [rip + human_time.tz]
	test	rdi, rdi
	jne	.label_474
	mov	edi, OFFSET FLAT:label_478
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	rdi, rax
	mov	qword ptr [rip + human_time.tz],  rdi
.label_474:
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x28]
	call	localtime_rz
	test	rax, rax
	je	.label_475
	mov	r8, qword ptr [rip + human_time.tz]
	lea	rcx, [rsp + 0x28]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:label_477
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_479
.label_475:
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	imaxtostr
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:label_476
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_479:
	add	rsp, 0x60
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b10

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	r14, rdi
	mov	esi, 0x2e
	mov	rdx, rbp
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_516
	mov	r12, rbx
	sub	r12, r14
	mov	byte ptr [r14 + rbp], 0
	movsx	eax, byte ptr [rbx + 1]
	add	eax, -0x30
	mov	r15d, 9
	cmp	eax, 9
	ja	.label_511
	lea	rdi, [rbx + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	test	r15d, r15d
	je	.label_524
.label_511:
	movsx	eax, byte ptr [rbx - 1]
	add	eax, -0x30
	xor	edi, edi
	cmp	eax, 9
	ja	.label_485
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 8], r14
	mov	byte ptr [rbx], 0
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_502:
	movsx	eax, byte ptr [rbx + rbp - 2]
	add	eax, -0x30
	dec	rbp
	cmp	eax, 0xa
	jb	.label_502
	lea	r14, [rbx + rbp]
	xor	r13d, r13d
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r14
	call	strtol
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovle	rcx, rax
	mov	edi, 0x7fffffff
	cmovle	edi, eax
	cmp	edi, 2
	jl	.label_515
	xor	eax, eax
	cmp	byte ptr [rbx + rbp], 0x30
	sete	al
	add	r14, rax
	mov	r12, r14
	sub	r12, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rip + decimal_point_len]
	movsxd	rcx, ecx
	mov	esi, ecx
	sub	esi, edx
	cmp	rcx, rdx
	cmova	r13d, esi
	cmp	r13d, 2
	mov	r8, r13
	jl	.label_515
	sub	r8d, r15d
	cmp	r8d, 2
	mov	r13, qword ptr [rsp + 0x18]
	jl	.label_498
	mov	qword ptr [rsp + 0x10], rdi
	xor	r12d, r12d
	mov	rcx, qword ptr [rsp + 8]
	cmp	r14, rcx
	mov	r14, rcx
	mov	rdi, r14
	jbe	.label_506
	dec	rax
	sub	rax, r14
	add	rbx, rax
	lea	rcx, [rbp + rbx + 1]
	xor	eax, eax
	mov	rdx, r14
	mov	rdi, r14
	nop	dword ptr [rax]
.label_522:
	movzx	ebx, byte ptr [rdx]
	cmp	bl, 0x2d
	jne	.label_507
	mov	al, 1
	jmp	.label_526
	nop	dword ptr [rax]
.label_507:
	mov	byte ptr [rdi], bl
	inc	rdi
.label_526:
	inc	rdx
	dec	rcx
	jne	.label_522
	mov	r12, rdi
	sub	r12, r14
	xor	ecx, ecx
	test	al, 1
	jne	.label_486
.label_506:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_517
	xor	eax, eax
	call	__sprintf_chk
	movsxd	rcx, eax
.label_486:
	add	r12, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jmp	.label_485
.label_516:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_529
.label_515:
	mov	r14, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x18]
.label_485:
	mov	qword ptr [rsp + 0x10], rdi
	cmp	r15d, 8
	jg	.label_513
	mov	rbp, r12
	jmp	.label_519
.label_513:
	mov	edi, 1
	mov	ebx, 9
	jmp	.label_521
.label_524:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, r12
.label_529:
	xor	r15d, r15d
.label_519:
	mov	eax, 9
	mov	ecx, 9
	sub	ecx, r15d
	mov	edi, 1
	cmp	ecx, 7
	ja	.label_528
	mov	edx, r15d
	jmp	.label_488
.label_528:
	mov	r8d, ecx
	and	r8d, 0xfffffff8
	mov	esi, ecx
	and	esi, 0xfffffff8
	mov	edx, r15d
	je	.label_488
	lea	ebx, [rsi - 8]
	mov	edx, ebx
	shr	edx, 3
	lea	edi, [rdx + 1]
	and	edi, 7
	cmp	ebx, 0x38
	jae	.label_503
	movdqa	xmm0, xmmword ptr [rip + label_509]
	movdqa	xmm1, xmm0
	jmp	.label_510
.label_503:
	lea	ebx, [rdi - 1]
	sub	ebx, edx
	movdqa	xmm0, xmmword ptr [rip + label_509]
	movdqa	xmm2, xmmword ptr [rip + label_514]
	movdqa	xmm1, xmm0
	nop	dword ptr [rax + rax]
.label_494:
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	add	ebx, 8
	jne	.label_494
.label_510:
	test	edi, edi
	je	.label_482
	neg	edi
	movdqa	xmm2, xmmword ptr [rip + label_501]
	nop	dword ptr [rax]
.label_480:
	pshufd	xmm3, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm0, xmm3
	pshufd	xmm3, xmm1, 0xf5
	pmuludq	xmm1, xmm2
	pshufd	xmm1, xmm1, 0xe8
	pmuludq	xmm3, xmm2
	pshufd	xmm3, xmm3, 0xe8
	punpckldq	xmm1, xmm3
	inc	edi
	jne	.label_480
.label_482:
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0x4e
	pshufd	xmm2, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	pshufd	xmm0, xmm0, 0xf5
	pmuludq	xmm0, xmm2
	pshufd	xmm0, xmm0, 0xe8
	punpckldq	xmm1, xmm0
	pshufd	xmm0, xmm1, 0xe5
	pmuludq	xmm0, xmm1
	pshufd	xmm0, xmm0, 0xe8
	pshufd	xmm1, xmm1, 0xf5
	pmuludq	xmm1, xmm0
	pshufd	xmm1, xmm1, 0xe8
	punpckldq	xmm0, xmm1
	movd	edi, xmm0
	cmp	ecx, esi
	je	.label_527
	add	r8d, r15d
	mov	edx, r8d
.label_488:
	sub	eax, edx
	nop	
.label_491:
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	dec	eax
	jne	.label_491
.label_527:
	mov	ebx, r15d
	mov	r12, rbp
.label_521:
	movsxd	rsi, edi
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, rdi
	cqo	
	idiv	rsi
	mov	rbp, rax
	test	r13, r13
	jns	.label_490
	test	rdi, rdi
	je	.label_490
	mov	eax, 0x3b9aca00
	xor	edx, edx
	idiv	esi
	mov	ecx, eax
	sub	ecx, ebp
	mov	rax, rdi
	cqo	
	idiv	rsi
	xor	eax, eax
	test	rdx, rdx
	setne	al
	xor	edx, edx
	mov	ebp, ecx
	sub	ebp, eax
	setne	dl
	add	r13, rdx
	je	.label_492
.label_490:
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r13
	call	out_int
	mov	rdx, qword ptr [rsp + 0x10]
.label_497:
	test	r15d, r15d
	je	.label_518
	sub	r15d, ebx
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	sub	edx, eax
	jle	.label_520
	mov	rax, qword ptr [rip + decimal_point_len]
	movsxd	rcx, edx
	cmp	rcx, rax
	jbe	.label_520
	sub	edx, ebx
	sub	edx, eax
	mov	r9d, edx
.label_520:
	mov	rdx, qword ptr [rip + decimal_point]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_493
	mov	eax, 0
	mov	ecx, ebx
	mov	r8d, ebp
	push	0
	push	r15
	call	__printf_chk
	add	rsp, 0x38
	jmp	.label_525
.label_518:
	add	rsp, 0x28
.label_525:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_492:
	mov	qword ptr [rsp + 0x18], rbp
	mov	dword ptr [rsp + 0x20], ebx
	mov	rax, r14
	lea	r14, [rax + 1]
	mov	qword ptr [rsp + 8], rax
	lea	r13, [rax + r12]
	mov	rbp, r14
	cmp	r12, 2
	jl	.label_505
.label_504:
	movzx	ebx, byte ptr [rbp]
	movsx	esi, bl
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	call	memchr
	test	rax, rax
	je	.label_505
	mov	eax, 1
	mov	ecx, ebx
	shl	rax, cl
	cmp	bl, 0x3f
	ja	.label_500
	movabs	rcx, 0x1288100000001
	and	rax, rcx
	je	.label_500
	mov	byte ptr [r14], bl
	inc	r14
.label_500:
	inc	rbp
	cmp	rbp, r13
	jb	.label_504
.label_505:
	cmp	rbp, r13
	jae	.label_496
	mov	rax, r12
	sub	rax, rbp
	add	rax, qword ptr [rsp + 8]
	cmp	rax, 0x1f
	mov	ebx, dword ptr [rsp + 0x20]
	jbe	.label_483
	mov	rcx, rax
	and	rcx, 0xffffffffffffffe0
	je	.label_483
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsi + r12 - 1]
	cmp	r14, rdx
	ja	.label_512
	dec	r12
	sub	r12, rbp
	add	r12, rsi
	add	r12, r14
	cmp	rbp, r12
	ja	.label_512
.label_483:
	mov	rdx, r14
	nop	dword ptr [rax]
.label_489:
	movzx	ecx, byte ptr [rbp]
	inc	rbp
	mov	byte ptr [rdx], cl
	inc	rdx
	cmp	r13, rbp
	jne	.label_489
.label_487:
	add	r14, rax
	jmp	.label_495
.label_496:
	mov	ebx, dword ptr [rsp + 0x20]
.label_495:
	mov	dword ptr [r14], 0x66302e
	movsd	xmm0, qword ptr [rip + label_484]
	mov	edi, 1
	mov	al, 1
	mov	rsi, qword ptr [rsp + 8]
	call	__printf_chk
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_497
.label_498:
	mov	r14, qword ptr [rsp + 8]
	jmp	.label_485
.label_512:
	lea	rdi, [rcx - 0x20]
	mov	rbx, rdi
	shr	rbx, 5
	lea	edx, [rbx + 1]
	and	edx, 3
	xor	esi, esi
	cmp	rdi, 0x60
	jb	.label_508
	lea	rdi, [rdx - 1]
	sub	rdi, rbx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_523:
	movups	xmm0, xmmword ptr [rbp + rsi]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x10]
	movups	xmmword ptr [r14 + rsi], xmm0
	movups	xmmword ptr [r14 + rsi + 0x10], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x20]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x30]
	movups	xmmword ptr [r14 + rsi + 0x20], xmm0
	movups	xmmword ptr [r14 + rsi + 0x30], xmm1
	movups	xmm0, xmmword ptr [rbp + rsi + 0x40]
	movups	xmm1, xmmword ptr [rbp + rsi + 0x50]
	movups	xmmword ptr [r14 + rsi + 0x40], xmm0
	movups	xmmword ptr [r14 + rsi + 0x50], xmm1
	movdqu	xmm0, xmmword ptr [rbp + rsi + 0x60]
	movdqu	xmm1, xmmword ptr [rbp + rsi + 0x70]
	movdqu	xmmword ptr [r14 + rsi + 0x60], xmm0
	movdqu	xmmword ptr [r14 + rsi + 0x70], xmm1
	sub	rsi, -0x80
	add	rdi, 4
	jne	.label_523
.label_508:
	test	rdx, rdx
	je	.label_481
	lea	rdi, [rbp + rsi + 0x10]
	lea	rsi, [r14 + rsi + 0x10]
	neg	rdx
	nop	word ptr [rax + rax]
.label_499:
	movdqu	xmm0, xmmword ptr [rdi - 0x10]
	movdqu	xmm1, xmmword ptr [rdi]
	movdqu	xmmword ptr [rsi - 0x10], xmm0
	movdqu	xmmword ptr [rsi], xmm1
	add	rdi, 0x20
	add	rsi, 0x20
	inc	rdx
	jne	.label_499
.label_481:
	cmp	rax, rcx
	mov	ebx, dword ptr [rsp + 0x20]
	je	.label_487
	lea	rdx, [r14 + rcx]
	add	rbp, rcx
	jmp	.label_489
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405130

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x120
	mov	r14, rdi
	mov	al, byte ptr [rip + find_bind_mount.tried_mount_list]
	test	al, al
	jne	.label_536
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [rip + find_bind_mount.mount_list],  rax
	test	rax, rax
	jne	.label_533
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_537
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_533:
	mov	byte ptr [rip + find_bind_mount.tried_mount_list],  1
.label_536:
	lea	rdx, [rsp + 0x90]
	mov	edi, 1
	mov	rsi, r14
	call	__xstat
	xor	r12d, r12d
	test	eax, eax
	jne	.label_531
	mov	rbx, qword ptr [rip + find_bind_mount.mount_list]
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_531
	xor	r12d, r12d
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_534:
	test	byte ptr [rbx + 0x28], 1
	je	.label_530
	mov	r13, qword ptr [rbx]
	cmp	byte ptr [r13], 0x2f
	jne	.label_530
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	jne	.label_530
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, r15
	call	__xstat
	test	eax, eax
	jne	.label_530
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_530
	mov	rax, qword ptr [rsp + 0x90]
	cmp	rax, qword ptr [rsp]
	je	.label_532
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_534
.label_531:
	mov	rax, r12
	add	rsp, 0x120
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_532:
	mov	r12, qword ptr [rbx]
	jmp	.label_531
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl find_mount_point
	.type find_mount_point, @function
find_mount_point:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x130
	mov	rbx, rsi
	mov	r14, rdi
	lea	rdi, [rbp - 0x30]
	call	save_cwd
	test	eax, eax
	je	.label_539
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_542
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_546
.label_539:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0x4000
	jne	.label_547
	lea	rdi, [rbp - 0xc0]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jns	.label_552
	jmp	.label_545
.label_547:
	mov	rdi, r14
	call	dir_name
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r14, rax
	mov	rsp, r14
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	rdi, r14
	call	chdir
	test	eax, eax
	js	.label_545
	lea	rdx, [rbp - 0xc0]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_78
	call	__xstat
	test	eax, eax
	js	.label_549
.label_552:
	lea	rdx, [rbp - 0x150]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_543
	call	__xstat
	test	eax, eax
	js	.label_553
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	dword ptr [rax + rax]
.label_544:
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_538
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_538
	mov	edi, OFFSET FLAT:label_543
	call	chdir
	test	eax, eax
	js	.label_555
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_543
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	jns	.label_544
.label_553:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	jmp	.label_551
.label_545:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_541
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_546
.label_538:
	call	xgetcwd
	mov	r15, rax
	jmp	.label_540
.label_549:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	jmp	.label_540
.label_555:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_541
.label_551:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_543
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_540:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rbp - 0x30]
	call	restore_cwd
	test	eax, eax
	jne	.label_550
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	dword ptr [rbx], r14d
.label_546:
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_550:
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x405520

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_558
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_560:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_564
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_557
.label_564:
	cmp	r13, r12
	jb	.label_559
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_561
	add	r12, r12
	jmp	.label_562
	nop	word ptr cs:[rax + rax]
.label_561:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_556
.label_562:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_560
	jmp	.label_558
.label_559:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_558
.label_556:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_563
.label_557:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_563:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_558:
	mov	rax, qword ptr [rsp]
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
	#Procedure 0x405630

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405640

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rcx
	mov	r14, rdx
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_571
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_565:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_570
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_567
	cmp	qword ptr [rsp + 8], -1
	je	.label_569
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_568
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_570
.label_568:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_570
.label_569:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_570:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_565
	jmp	.label_566
.label_571:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_566:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_567:
	mov	rax, rbp
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
	#Procedure 0x405740

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_572
	mov	esi, OFFSET FLAT:label_573
	jmp	.label_574
.label_572:
	mov	esi, OFFSET FLAT:label_575
.label_574:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	error
	.section	.text
	.align	32
	#Procedure 0x4057b0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	rbp, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_580
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_577
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_582:
	test	r15, r15
	je	.label_576
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_581
.label_576:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_578
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_584
	nop	word ptr cs:[rax + rax]
.label_581:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_583
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_584:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_582
.label_577:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_579
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_579:
	mov	esi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058e0
	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_585
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_585:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405950
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	test	r13, r13
	je	.label_586
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_587:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_586
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_587
.label_586:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059d0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059e0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_593
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_589
	cmp	dword ptr [rbp], 0x20
	jne	.label_589
.label_593:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_591
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_589:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_588
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_590
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_537
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_591:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_590:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_592
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_594
	pop	rcx
	ret	
.label_594:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ac0
	.globl dir_len
	.type dir_len, @function
dir_len:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	r14d, r14d
	cmp	byte ptr [rbx], 0x2f
	sete	r14b
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_596:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_595
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_596
.label_595:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b00

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	cmp	byte ptr [r14], 0x2f
	sete	r15b
	call	last_component
	inc	rax
	sub	rax, r14
	nop	word ptr cs:[rax + rax]
.label_600:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_597
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_600
.label_597:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_599
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_598
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_598:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_599:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405ba0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_601:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_601
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_605
	nop	word ptr cs:[rax + rax]
.label_604:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_605:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_604
	test	dl, dl
	je	.label_603
	mov	ecx, esi
	and	cl, 1
	je	.label_602
	xor	esi, esi
.label_602:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_604
.label_603:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c00
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_607:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_606
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_607
.label_606:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c30

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_617
	cmp	ecx, 0x3fff
	jg	.label_612
	cmp	eax, 0x1000
	je	.label_616
	cmp	eax, 0x2000
	jne	.label_608
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_615
	mov	edx, 5
	jmp	dcgettext
.label_617:
	cmp	eax, 0x8000
	je	.label_619
	cmp	eax, 0xa000
	je	.label_623
	cmp	eax, 0xc000
	jne	.label_608
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_614
	mov	edx, 5
	jmp	dcgettext
.label_612:
	cmp	eax, 0x4000
	je	.label_622
	cmp	eax, 0x6000
	jne	.label_608
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	mov	edx, 5
	jmp	dcgettext
.label_616:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_621
	mov	edx, 5
	jmp	dcgettext
.label_619:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_613
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_624
	mov	edx, 5
	jmp	dcgettext
.label_623:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_609
	mov	edx, 5
	jmp	dcgettext
.label_622:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_618
	mov	edx, 5
	jmp	dcgettext
.label_608:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	jmp	dcgettext
.label_613:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_620
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d30

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_636
	cmp	ecx, 0x3fff
	jg	.label_633
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_629
	cmp	ecx, 0x2000
	jne	.label_630
	mov	cl, 0x63
	jmp	.label_625
.label_636:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_625
	cmp	edx, 0xa000
	je	.label_637
	cmp	edx, 0xc000
	jne	.label_630
	mov	cl, 0x73
	jmp	.label_625
.label_633:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_627
	cmp	ecx, 0x4000
	jne	.label_630
	mov	cl, 0x64
	jmp	.label_625
.label_629:
	mov	cl, 0x70
	jmp	.label_625
.label_627:
	mov	cl, 0x62
	jmp	.label_625
.label_630:
	mov	cl, 0x3f
	jmp	.label_625
.label_637:
	mov	cl, 0x6c
.label_625:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_635
	mov	cl, 0x2d
.label_635:
	mov	byte ptr [rsi + 1], cl
	mov	ecx, eax
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [rsi + 2], cl
	mov	ecx, eax
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_640
	mov	cl, 0x2d
.label_640:
	test	bl, 8
	jne	.label_634
	mov	dl, cl
.label_634:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_641
	mov	cl, 0x2d
.label_641:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_639
	mov	cl, 0x2d
.label_639:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_626
	mov	cl, 0x2d
.label_626:
	test	bl, 4
	jne	.label_628
	mov	dil, cl
.label_628:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_631
	mov	r9b, 0x2d
.label_631:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_632
	mov	dl, 0x2d
.label_632:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_638
	mov	r8b, 0x2d
.label_638:
	test	bl, 2
	pop	rbx
	je	.label_642
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_642:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e60

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e70

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_643
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_644:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_644
	jmp	.label_645
.label_643:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_646:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_646
	mov	byte ptr [rsi], 0x2d
.label_645:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f30

	.globl nstrftime
	.type nstrftime, @function
nstrftime:
	push	rax
	mov	eax, r9d
	mov	r10, r8
	sub	rsp, 8
	mov	r8d, 0
	mov	r9d, 0
	push	rax
	push	r10
	push	-1
	call	__strftime_internal
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f60

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4b8
	mov	dword ptr [rsp + 0x88], r9d
	mov	dword ptr [rsp + 0x8c], r8d
	mov	r11, rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x48], rsi
	mov	r10, rdi
	mov	eax, dword ptr [r11 + 8]
	mov	rcx, qword ptr [r11 + 0x30]
	test	rcx, rcx
	mov	edx, OFFSET FLAT:label_45
	cmovne	rdx, rcx
	lea	ecx, [rax - 0xc]
	test	eax, eax
	mov	esi, 0xc
	cmovne	esi, eax
	cmp	eax, 0xc
	cmovg	esi, ecx
	mov	dword ptr [rsp + 0x7c], esi
	mov	al, byte ptr [rbp]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
	test	al, al
	je	.label_815
	mov	edi, dword ptr [rsp + 0x4f0]
	mov	qword ptr [rsp + 0x68], rdx
	lea	rcx, [rdx - 1]
	mov	qword ptr [rsp + 0x80], rcx
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x38], r11
	jmp	.label_708
.label_815:
	xor	r8d, r8d
	jmp	.label_834
.label_798:
	mov	rdx, r10
	mov	rsi, qword ptr [rsp + 0x80]
	mov	r9, r15
.label_652:
	movzx	ebx, byte ptr [rsi + rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	ebx, byte ptr [rsi + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	ebx, byte ptr [rsi + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	ebx, byte ptr [rsi + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rbx*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_652
.label_804:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_665
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
.label_670:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_670
.label_665:
	add	r9, r10
	mov	rcx, r9
	jmp	.label_659
.label_651:
	mov	esi, 0x20
.label_654:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	mov	rdi, r12
	mov	r8, qword ptr [rsp + 0x18]
	add	rdi, r14
	mov	cl, byte ptr [rbp]
	mov	r14d, r15d
.label_836:
	mov	byte ptr [rdi], cl
	inc	rdi
	mov	rdx, rdi
.label_833:
	add	r8, rbx
	mov	r10, rdx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_653
.label_675:
	mov	edi, 3
	jmp	.label_687
	nop	
.label_708:
	cmp	al, 0x25
	jne	.label_691
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x8c]
	mov	r12b, cl
	xor	r9d, r9d
.label_1491:
	mov	ebx, eax
	mov	al, r12b
.label_712:
	mov	r12b, al
	inc	rbp
	jmp	.label_700
	nop	word ptr cs:[rax + rax]
.label_710:
	inc	rbp
	mov	r9d, edx
.label_700:
	mov	cl, byte ptr [rbp]
	movsx	edx, cl
	mov	al, 1
	lea	esi, [rdx - 0x23]
	cmp	esi, 0xd
	ja	.label_705
	jmp	qword ptr [(rsi * 8) + label_709]
	nop	dword ptr [rax]
.label_705:
	cmp	edx, 0x5f
	je	.label_710
	cmp	edx, 0x5e
	je	.label_712
.label_1492:
	add	edx, -0x30
	cmp	edx, 9
	ja	.label_713
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_723:
	mov	edi, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_715
	movsx	ecx, cl
	cmp	eax, 0xccccccc
	jne	.label_719
	lea	edx, [rcx - 0x30]
	cmp	edx, 7
	jg	.label_715
.label_719:
	lea	eax, [rax + rax*4]
	lea	edi, [rcx + rax*2 - 0x30]
.label_715:
	movsx	ecx, byte ptr [rbp + 1]
	inc	rbp
	mov	eax, ecx
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, edi
	jb	.label_723
.label_713:
	mov	qword ptr [rsp + 0x18], r8
	movsx	r8d, cl
	cmp	r8d, 0x4f
	je	.label_726
	cmp	r8d, 0x45
	jne	.label_697
.label_726:
	mov	cl, byte ptr [rbp + 1]
	inc	rbp
	jmp	.label_736
	nop	dword ptr [rax]
.label_691:
	test	edi, edi
	mov	ecx, edi
	mov	edx, 0
	cmovs	ecx, edx
	movsxd	rbx, ecx
	cmp	ebx, 1
	mov	edx, 1
	cmovbe	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	sub	rdx, r8
	mov	r15d, 1
	cmp	rbx, rdx
	jae	.label_740
	test	r10, r10
	mov	edx, 0
	je	.label_750
	cmp	ecx, 2
	jb	.label_801
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edi
	lea	rdx, [r14 - 1]
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r12, r10
	call	memset
	mov	r11, qword ptr [rsp + 0x38]
	mov	r10, r12
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	al, byte ptr [rbp]
.label_801:
	mov	byte ptr [r10], al
	inc	r10
	mov	rdx, r10
.label_750:
	add	r8, rbx
	xor	r15d, r15d
	mov	r10, rdx
.label_740:
	test	r15d, r15d
	mov	eax, 4
	cmove	r15d, eax
.label_688:
	or	r15d, 4
	cmp	r15d, 4
	je	.label_653
	jmp	.label_767
.label_697:
	xor	r8d, r8d
.label_736:
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 8], rdi
	movsx	esi, cl
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	esi, 0x7a
	ja	.label_660
	mov	r15d, OFFSET FLAT:label_771
	mov	dl, 0x72
	mov	r10d, 0xffffffff
	xor	eax, eax
	xor	edi, edi
	jmp	qword ptr [(rsi * 8) + label_772]
.label_1323:
	cmp	r8d, 0x45
	je	.label_660
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, dword ptr [r11 + 0x14]
	mov	r9d, dword ptr [r11 + 0x18]
	mov	edx, eax
	sar	edx, 0x1f
	and	edx, 0x190
	lea	r10d, [rax + rdx - 0x64]
	mov	r11d, dword ptr [r11 + 0x1c]
	lea	edx, [r11 + 0x17e]
	sub	edx, r9d
	movsxd	rbx, edx
	imul	rdx, rbx, -0x6db6db6d
	shr	rdx, 0x20
	add	edx, ebx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 2
	add	edx, edi
	lea	edi, [rdx*8]
	sub	edi, edx
	sub	ebx, edi
	lea	r12d, [r11 + 3]
	sub	r12d, ebx
	js	.label_775
	mov	ebx, 0x16d
	test	r10b, 3
	jne	.label_793
	movsxd	rdi, r10d
	imul	rdi, rdi, 0x51eb851f
	mov	rbx, rdi
	sar	rbx, 0x25
	mov	r14, rdi
	shr	r14, 0x3f
	add	ebx, r14d
	imul	r15d, ebx, 0x64
	sar	rdi, 0x27
	add	edi, r14d
	imul	ebx, edi, 0x190
	xor	edi, edi
	cmp	r10d, ebx
	sete	dil
	add	edi, 0x16d
	cmp	r10d, r15d
	mov	ebx, 0x16e
	cmove	ebx, edi
.label_793:
	sub	r11d, ebx
	lea	edi, [r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	add	r11d, 3
	sub	r11d, edi
	cmovns	r12d, r11d
	shr	r11d, 0x1f
	xor	r11d, 1
	jmp	.label_810
.label_1337:
	test	bl, bl
	je	.label_820
	mov	r12b, 1
.label_820:
	cmp	r8d, 0x45
	jne	.label_821
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_660
.label_1315:
	dec	rbp
	jmp	.label_660
.label_1316:
	test	r8d, r8d
	jne	.label_660
	mov	r15d, r14d
	xor	eax, eax
	mov	rsi, qword ptr [rsp + 8]
	test	esi, esi
	cmovns	eax, esi
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebx, 1
	cmova	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rdx, r8
	cmp	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_647
	xor	edx, edx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_833
	cmp	eax, 2
	jb	.label_836
	movsxd	r14, esi
	dec	r14
	cmp	r9d, 0x30
	je	.label_648
	cmp	r9d, 0x2b
	jne	.label_651
.label_648:
	mov	esi, 0x30
	jmp	.label_654
.label_1317:
	mov	edx, 1
	jmp	.label_656
	nop	word ptr [rax + rax]
.label_658:
	inc	rdx
.label_656:
	movzx	ebx, byte ptr [rbp + rdx]
	cmp	bl, 0x3a
	je	.label_658
	cmp	bl, 0x7a
	jne	.label_660
	add	rbp, rdx
	mov	qword ptr [rsp + 0x20], rdx
.label_1354:
	cmp	dword ptr [r11 + 0x20], 0
	js	.label_664
	mov	dword ptr [rsp + 0x30], r9d
	mov	rdx, r11
	mov	r11, qword ptr [rsp + 0x10]
	mov	r9d, dword ptr [rdx + 0x28]
	mov	sil, 1
	test	r9d, r9d
	mov	r10, qword ptr [rsp + 0x20]
	js	.label_668
	test	r9d, r9d
	je	.label_673
	xor	esi, esi
	jmp	.label_668
.label_1318:
	test	r8d, r8d
	jne	.label_660
	test	bl, bl
	je	.label_678
	mov	r12b, 1
.label_678:
	xor	eax, eax
	mov	dl, 0x41
	jmp	.label_676
.label_1319:
	cmp	r8d, 0x45
	je	.label_660
	test	bl, bl
	je	.label_681
	mov	r12b, 1
.label_681:
	xor	eax, eax
	mov	dl, 0x42
	jmp	.label_676
.label_1320:
	cmp	r8d, 0x45
	jne	.label_684
	xor	eax, eax
	mov	dl, 0x43
	jmp	.label_676
.label_1321:
	test	r8d, r8d
	jne	.label_660
	mov	r15d, OFFSET FLAT:label_693
	mov	r10d, 0xffffffff
	jmp	.label_694
.label_1322:
	test	r8d, r8d
	jne	.label_660
	test	r9d, r9d
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_703
	test	ecx, ecx
	jns	.label_703
	mov	r15d, OFFSET FLAT:label_706
	mov	r9d, 0x2b
	mov	r10d, 4
	jmp	.label_694
.label_1324:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11 + 8]
	jmp	.label_721
.label_1325:
	mov	edi, 2
	cmp	r8d, 0x45
	je	.label_660
	mov	edx, dword ptr [rsp + 0x7c]
	mov	r13d, edx
	jmp	.label_682
.label_1326:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11 + 4]
	jmp	.label_721
.label_1327:
	cmp	r8d, 0x45
	je	.label_660
	mov	edi, 9
	mov	r11, qword ptr [rsp + 8]
	cmp	r11d, -1
	je	.label_724
	cmp	r11d, 8
	jg	.label_728
	mov	edx, 9
	sub	edx, r11d
	mov	esi, 8
	sub	esi, r11d
	and	edx, 3
	cmp	esi, 3
	mov	esi, dword ptr [rsp + 0x500]
	mov	r13d, esi
	mov	r10, qword ptr [rsp + 0x10]
	jb	.label_734
	lea	esi, [r11 + rdx - 9]
	mov	edi, dword ptr [rsp + 0x500]
	mov	r13d, edi
.label_745:
	movsxd	rdi, r13d
	imul	r13, rdi, 0x68db8bad
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x2c
	add	r13d, edi
	add	esi, 4
	jne	.label_745
.label_734:
	test	edx, edx
	je	.label_753
	neg	edx
	nop	word ptr cs:[rax + rax]
.label_754:
	movsxd	rsi, r13d
	imul	r13, rsi, 0x66666667
	mov	rsi, r13
	shr	rsi, 0x3f
	sar	r13, 0x22
	add	r13d, esi
	inc	edx
	jne	.label_754
.label_753:
	mov	edi, r11d
	jmp	.label_730
.label_1328:
	mov	dil, 1
.label_1346:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	bl, bl
	je	.label_759
	mov	r12d, 0
.label_759:
	je	.label_762
	mov	dil, 1
.label_762:
	mov	dl, 0x70
	mov	al, dil
	jmp	.label_758
.label_1329:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11]
	jmp	.label_721
.label_1330:
	mov	r15d, OFFSET FLAT:label_769
.label_694:
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x40], r12
	test	r12b, r12b
	setne	r8b
	sub	rsp, 8
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, r15
	mov	rcx, r11
	mov	r13d, r9d
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	mov	qword ptr [rsp + 0x38], r10
	push	r10
	call	__strftime_internal
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x38]
	add	rsp, 0x20
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	r14d, edx
	movsxd	rax, r14d
	cmp	rbx, rax
	mov	r14, rbx
	cmovb	r14, rax
	mov	r12, qword ptr [rsp + 0x48]
	sub	r12, r8
	cmp	r14, r12
	jae	.label_647
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_787
	cmp	rbx, rax
	jae	.label_790
	movsxd	rcx, edx
	mov	qword ptr [rsp + 8], rbx
	sub	rcx, rbx
	mov	eax, r13d
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x30], rcx
	je	.label_727
	cmp	eax, 0x2b
	jne	.label_797
.label_727:
	mov	esi, 0x30
	jmp	.label_799
.label_1331:
	cmp	r8d, 0x45
	je	.label_660
	mov	edx, dword ptr [r11 + 0x1c]
	add	edx, 7
	sub	edx, dword ptr [r11 + 0x18]
	movsxd	r13, edx
	jmp	.label_806
.label_1332:
	cmp	r8d, 0x45
	je	.label_660
	mov	edx, dword ptr [r11 + 0x18]
	mov	esi, dword ptr [r11 + 0x1c]
	lea	edi, [rdx + 6]
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	lea	edx, [rbx + rdx + 6]
	mov	ebx, edx
	shr	ebx, 0x1f
	sar	edx, 2
	add	edx, ebx
	lea	ebx, [rdx*8]
	sub	ebx, edx
	sub	edi, ebx
	add	esi, 7
	sub	esi, edi
	movsxd	r13, esi
.label_806:
	imul	rdx, r13, -0x6db6db6d
	shr	rdx, 0x20
	add	r13d, edx
	mov	edx, r13d
	shr	edx, 0x1f
	sar	r13d, 2
	add	r13d, edx
	jmp	.label_721
.label_1333:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_660
	mov	dl, 0x58
	jmp	.label_679
.label_1334:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x45
	je	.label_823
	cmp	r8d, 0x4f
	je	.label_660
	mov	r13d, dword ptr [r11 + 0x14]
	cmp	r13d, 0xfffff894
	setl	sil
	add	r13d, 0x76c
	mov	r15d, 4
	jmp	.label_757
.label_1335:
	mov	r15d, r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	r12d, r14d
	mov	qword ptr [rsp + 0x58], r13
	mov	rdi, qword ptr [rsp + 0x68]
	call	strlen
	mov	r9, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, rax
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r13, r10
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_647
	xor	ecx, ecx
	test	r9, r9
	mov	r14d, r12d
	je	.label_659
	cmp	r10, rax
	jae	.label_662
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x20], r10
	sub	rax, r10
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_751
	cmp	r15d, 0x2b
	jne	.label_669
.label_751:
	mov	esi, 0x30
	jmp	.label_671
.label_1336:
	test	r8d, r8d
	jne	.label_660
	test	bl, bl
	je	.label_674
	mov	r12b, 1
.label_674:
	xor	eax, eax
	mov	dl, 0x61
	jmp	.label_676
.label_1338:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_660
	mov	dl, 0x63
	jmp	.label_679
.label_1339:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11 + 0xc]
.label_721:
	mov	edi, 2
	jmp	.label_682
.label_1340:
	cmp	r8d, 0x45
	je	.label_660
	mov	edx, dword ptr [r11 + 0xc]
	jmp	.label_689
.label_1341:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11 + 0x1c]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 3
	jmp	.label_695
.label_1342:
	cmp	r8d, 0x45
	je	.label_660
	mov	edx, dword ptr [r11 + 8]
	jmp	.label_689
.label_1343:
	cmp	r8d, 0x45
	mov	edx, dword ptr [rsp + 0x7c]
	je	.label_660
.label_689:
	test	r9d, r9d
	mov	esi, 0x5f
	cmove	r9d, esi
	mov	edi, 2
	mov	r13d, edx
	jmp	.label_682
.label_1344:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11 + 0x10]
	cmp	r13d, -1
	setl	sil
	inc	r13d
	mov	edi, 2
.label_695:
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_717
.label_1345:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_647
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_733
	cmp	eax, 2
	jb	.label_737
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_746
	cmp	r9d, 0x2b
	jne	.label_741
.label_746:
	mov	esi, 0x30
	jmp	.label_742
.label_1347:
	imul	r13d, dword ptr [r11 + 0x10], 0xb
	sar	r13d, 5
	inc	r13d
	mov	edi, 1
	xor	r14d, r14d
	xor	edx, edx
	xor	esi, esi
.label_717:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_685
.label_1348:
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp + 0xe0], rax
	movups	xmm0, xmmword ptr [r11]
	movups	xmm1, xmmword ptr [r11 + 0x10]
	movups	xmm2, xmmword ptr [r11 + 0x20]
	movaps	xmmword ptr [rsp + 0xd0], xmm2
	movaps	xmmword ptr [rsp + 0xc0], xmm1
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	lea	rsi, [rsp + 0xb0]
	mov	rdi, qword ptr [rsp + 0x4f8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0xa7]
	nop	dword ptr [rax]
.label_770:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebx, ecx
	sub	ebx, edi
	add	rdx, rax
	mov	eax, ebx
	neg	eax
	test	rsi, rsi
	cmove	eax, ebx
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_770
	xor	edx, edx
	mov	r8, r14
	mov	r10, r15
	mov	ebx, 1
	mov	eax, dword ptr [rsp + 0x2c]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_782
.label_1349:
	mov	r15d, r14d
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_647
	xor	ecx, ecx
	test	rdi, rdi
	mov	r14d, r15d
	je	.label_733
	cmp	eax, 2
	jb	.label_802
	movsxd	r14, edx
	dec	r14
	cmp	r9d, 0x30
	je	.label_805
	cmp	r9d, 0x2b
	jne	.label_807
.label_805:
	mov	esi, 0x30
	jmp	.label_808
.label_1350:
	mov	edx, dword ptr [r11 + 0x18]
	lea	esi, [rdx + 6]
	movsxd	r13, esi
	imul	rsi, r13, -0x6db6db6d
	shr	rsi, 0x20
	lea	edx, [rsi + rdx + 6]
	mov	esi, edx
	shr	esi, 0x1f
	sar	edx, 2
	add	edx, esi
	lea	esi, [rdx*8]
	sub	esi, edx
	sub	r13d, esi
	inc	r13d
	jmp	.label_811
.label_1351:
	cmp	r8d, 0x45
	je	.label_660
	mov	r13d, dword ptr [r11 + 0x18]
.label_811:
	mov	edi, 1
.label_682:
	mov	r11, qword ptr [rsp + 8]
.label_761:
	mov	r10, qword ptr [rsp + 0x10]
.label_730:
	mov	esi, r13d
	shr	esi, 0x1f
	xor	r14d, r14d
	xor	edx, edx
	jmp	.label_685
.label_1352:
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	cmp	r8d, 0x4f
	je	.label_660
	mov	dl, 0x78
	jmp	.label_679
.label_1353:
	cmp	r8d, 0x45
	jne	.label_826
	xor	eax, eax
	mov	dl, 0x79
	jmp	.label_676
.label_821:
	xor	eax, eax
	mov	edx, ecx
.label_676:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_758
.label_790:
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_829
.label_775:
	dec	r10d
	mov	r14d, 0x16d
	test	r10b, 3
	jne	.label_818
	movsxd	rdx, r10d
	imul	rdx, rdx, 0x51eb851f
	mov	rdi, rdx
	sar	rdi, 0x25
	mov	rbx, rdx
	shr	rbx, 0x3f
	add	edi, ebx
	imul	edi, edi, 0x64
	sar	rdx, 0x27
	add	edx, ebx
	imul	edx, edx, 0x190
	xor	ebx, ebx
	cmp	r10d, edx
	sete	bl
	add	ebx, 0x16d
	cmp	r10d, edi
	mov	r14d, 0x16e
	cmove	r14d, ebx
.label_818:
	lea	edi, [r14 + r11 + 0x17e]
	sub	edi, r9d
	movsxd	rdi, edi
	imul	rbx, rdi, -0x6db6db6d
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 2
	add	ebx, edx
	lea	edx, [rbx*8]
	sub	edx, ebx
	sub	edi, edx
	lea	r12d, [r14 + r11 + 3]
	sub	r12d, edi
	mov	r11d, 0xffffffff
.label_810:
	cmp	esi, 0x47
	je	.label_791
	cmp	esi, 0x67
	jne	.label_803
	movsxd	rdx, eax
	imul	rdx, rdx, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, r11d
	movsxd	r13, esi
	imul	rdx, r13, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	r13d, edx
	mov	r15d, 2
	jns	.label_677
	mov	edx, 0xfffff894
	sub	edx, r11d
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	eax, edx
	cmovl	r13d, esi
.label_677:
	xor	esi, esi
	jmp	.label_699
.label_664:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_653
.label_684:
	movsxd	rdx, dword ptr [r11 + 0x14]
	cmp	rdx, -0x76c
	setl	sil
	setg	bl
	imul	r13, rdx, 0x51eb851f
	mov	rdi, r13
	shr	rdi, 0x3f
	sar	r13, 0x25
	add	r13d, edi
	imul	edi, r13d, 0x64
	cmp	edx, edi
	sets	dl
	and	dl, bl
	movzx	edx, dl
	sub	r13d, edx
	add	r13d, 0x13
	mov	r15d, 2
	jmp	.label_757
.label_826:
	movsxd	rdx, dword ptr [r11 + 0x14]
	imul	rsi, rdx, 0x51eb851f
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x25
	add	esi, edi
	imul	esi, esi, 0x64
	mov	r13d, edx
	sub	r13d, esi
	mov	r15d, 2
	jns	.label_716
	mov	esi, r13d
	neg	esi
	add	r13d, 0x64
	cmp	edx, 0xfffff894
	cmovl	r13d, esi
.label_716:
	xor	esi, esi
.label_757:
	mov	r11, qword ptr [rsp + 8]
	mov	r10, qword ptr [rsp + 0x10]
	jmp	.label_819
.label_791:
	mov	edx, 0xfffff894
	sub	edx, r11d
	cmp	eax, edx
	setl	sil
	lea	r13d, [r11 + rax + 0x76c]
	mov	r15d, 4
.label_699:
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
.label_819:
	test	r9d, r9d
	cmove	r9d, dword ptr [rsp + 0x88]
	xor	r14d, r14d
	cmp	r9d, 0x2b
	mov	edx, 0
	jne	.label_744
	cmp	r15d, 2
	mov	edx, 0x63
	mov	edi, 0x270f
	cmove	edi, edx
	cmp	edi, r13d
	setb	bl
	cmp	r15d, r11d
	setl	dl
	or	dl, bl
.label_744:
	mov	rdi, r15
.label_685:
	cmp	r8d, 0x4f
	jne	.label_756
	test	sil, sil
	jne	.label_756
	mov	qword ptr [rsp + 8], r11
	xor	eax, eax
	mov	edx, ecx
	mov	r11, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x20], rdi
	jmp	.label_758
.label_756:
	mov	qword ptr [rsp + 0x40], r12
	mov	eax, r13d
	neg	eax
	test	sil, sil
	cmove	eax, r13d
	lea	r12, [rsp + 0xa7]
	mov	rbx, rdi
	mov	r8, qword ptr [rsp + 0x18]
	nop	
.label_683:
	test	r14b, 1
	je	.label_729
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_729:
	sar	r14d, 1
	mov	ecx, eax
	mov	r13d, 0xcccccccd
	imul	r13, rcx
	shr	r13, 0x23
	lea	ecx, [r13 + r13]
	lea	ecx, [rcx + rcx*4]
	mov	edi, eax
	sub	edi, ecx
	or	edi, 0x30
	mov	byte ptr [r12 - 1], dil
	dec	r12
	cmp	eax, 9
	mov	eax, r13d
	ja	.label_683
	test	r14d, r14d
	mov	eax, r13d
	jne	.label_683
	xor	eax, eax
.label_782:
	cmp	ebx, r11d
	cmovl	ebx, r11d
	test	dl, dl
	je	.label_776
	mov	dl, 0x2b
.label_776:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_778
	mov	esi, edx
.label_778:
	cmp	r9d, 0x2d
	mov	dword ptr [rsp + 0x2c], eax
	mov	qword ptr [rsp + 0x58], r13
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x20], rbx
	jne	.label_781
	test	sil, sil
	je	.label_667
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_647
	xor	ecx, ecx
	test	r10, r10
	je	.label_795
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_657
	test	al, al
	jne	.label_657
	movsxd	r14, r11d
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	r15, r8
	mov	r13, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	lea	r10, [r10 + r14 - 1]
	jmp	.label_657
.label_781:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0xa7]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	r13, r13
	add	r13, rcx
	add	r13, rax
	test	r13d, r13d
	jle	.label_814
	cmp	r9d, 0x5f
	jne	.label_817
	movsxd	r14, r13d
	mov	rax, qword ptr [rsp + 0x48]
	sub	rax, r8
	cmp	r14, rax
	jae	.label_647
	xor	edx, edx
	test	r10, r10
	mov	r15d, 0
	je	.label_822
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r8
	mov	r15, r10
	mov	qword ptr [rsp + 8], r11
	call	memset
	xor	edx, edx
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r8, rbx
	add	r15, r14
.label_822:
	add	r8, r14
	sub	r11d, r13d
	cmovg	edx, r11d
	test	sil, sil
	je	.label_830
	xor	eax, eax
	test	edx, edx
	cmovns	eax, edx
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_647
	xor	r10d, r10d
	test	r15, r15
	je	.label_672
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_655
	test	al, al
	jne	.label_655
	movsxd	r14, edx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdx, [r14 - 1]
	mov	byte ptr [rsp + 0x50], sil
	mov	esi, 0x20
	mov	rdi, r15
	mov	r13, r8
	call	memset
	mov	rdx, qword ptr [rsp + 0x18]
	mov	sil, byte ptr [rsp + 0x50]
	mov	r8, r13
	lea	r15, [r15 + r14 - 1]
.label_655:
	mov	byte ptr [r15], sil
	inc	r15
	mov	r10, r15
.label_672:
	add	r8, rbx
	mov	r11d, edx
	jmp	.label_667
.label_814:
	test	sil, sil
	je	.label_667
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_647
	xor	ecx, ecx
	test	r10, r10
	je	.label_795
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_657
	test	al, al
	jne	.label_657
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 8], r11
	mov	byte ptr [rsp + 0x50], sil
	je	.label_690
	cmp	eax, 0x2b
	jne	.label_698
.label_690:
	mov	esi, 0x30
	jmp	.label_702
.label_817:
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_647
	test	sil, sil
	je	.label_766
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	r15d, 1
	cmova	r15, rdx
	cmp	r15, rcx
	jae	.label_647
	xor	ecx, ecx
	test	r10, r10
	je	.label_714
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_720
	test	al, al
	jne	.label_720
	movsxd	r14, r11d
	dec	r14
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	byte ptr [rsp + 0x50], sil
	je	.label_722
	cmp	eax, 0x2b
	jne	.label_777
.label_722:
	mov	esi, 0x30
	jmp	.label_768
.label_803:
	movsxd	rdx, r12d
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	add	edx, esi
	mov	esi, edx
	sar	esi, 2
	shr	edx, 0x1f
	lea	r13d, [rsi + rdx + 1]
	mov	edi, 2
	mov	r10, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x40]
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	jmp	.label_730
.label_830:
	mov	r10, r15
	mov	r11d, edx
	jmp	.label_667
.label_823:
	mov	dl, 0x59
.label_679:
	xor	eax, eax
.label_758:
	mov	dword ptr [rsp + 0x40], eax
	mov	dword ptr [rsp + 0x30], r9d
	mov	qword ptr [rsp + 0x58], r13
	mov	r13, qword ptr [rsp + 0x10]
	mov	word ptr [rsp + 0x63], 0x2520
	test	r8d, r8d
	lea	rcx, [rsp + 0x65]
	je	.label_749
	mov	byte ptr [rsp + 0x65], r8b
	lea	rcx, [rsp + 0x66]
.label_749:
	mov	byte ptr [rcx], dl
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xb0]
	lea	rdx, [rsp + 0x63]
	mov	esi, 0x400
	mov	rcx, r11
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_760
	mov	rsi, qword ptr [rsp + 0x20]
	mov	r15, r12
	lea	r10, [rbx - 1]
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	test	edx, edx
	cmovns	eax, edx
	cdqe	
	cmp	r10, rax
	mov	r12, r10
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_647
	xor	ecx, ecx
	mov	rdi, r13
	test	rdi, rdi
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_789
	cmp	r10, rax
	setae	al
	test	esi, esi
	jne	.label_773
	test	al, al
	jne	.label_773
	mov	dword ptr [rsp + 0x2c], r14d
	movsxd	r14, edx
	sub	r14, r10
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	mov	qword ptr [rsp + 0x50], r10
	je	.label_774
	cmp	eax, 0x2b
	jne	.label_779
.label_774:
	mov	esi, 0x30
	jmp	.label_780
.label_760:
	mov	r8, qword ptr [rsp + 0x18]
	mov	r10, r13
	mov	r13, qword ptr [rsp + 0x58]
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_653
.label_773:
	mov	eax, dword ptr [rsp + 0x40]
	jmp	.label_785
.label_779:
	mov	esi, 0x20
.label_780:
	mov	rdx, r14
	call	memset
	mov	r10, qword ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rsp + 0x40]
	add	rdi, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_785:
	test	al, 1
	jne	.label_794
	test	r15b, 1
	jne	.label_796
	lea	rsi, [rsp + 0xb1]
	mov	rdx, r10
	mov	rbx, rdi
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r11, qword ptr [rsp + 0x38]
	mov	rdi, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_650
.label_794:
	test	r10, r10
	je	.label_650
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_tolower_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_812
	lea	r8, [r9 + 1]
	nop	
.label_661:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_661
	dec	rbx
	mov	rsi, rbx
.label_812:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_650
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	word ptr cs:[rax + rax]
.label_748:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_748
	jmp	.label_650
.label_796:
	test	r10, r10
	je	.label_650
	mov	r13d, r14d
	mov	r14, rdi
	mov	r15, r10
	call	__ctype_toupper_loc
	mov	r10, r15
	mov	rdi, r14
	mov	rdx, rbx
	add	rdx, -2
	mov	r9d, r10d
	and	r9d, 3
	cmp	rdx, 3
	mov	rsi, r10
	jb	.label_784
	lea	r8, [r9 + 1]
	nop	word ptr cs:[rax + rax]
.label_666:
	movzx	esi, byte ptr [rsp + rbx + 0xaf]
	mov	rdx, qword ptr [rax]
	movzx	edx, byte ptr [rdx + rsi*4]
	mov	byte ptr [rdi + rbx - 2], dl
	movzx	edx, byte ptr [rsp + rbx + 0xae]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 3], dl
	movzx	edx, byte ptr [rsp + rbx + 0xad]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 4], dl
	movzx	edx, byte ptr [rsp + rbx + 0xac]
	mov	rsi, qword ptr [rax]
	movzx	edx, byte ptr [rsi + rdx*4]
	mov	byte ptr [rdi + rbx - 5], dl
	add	rbx, -4
	cmp	r8, rbx
	jne	.label_666
	dec	rbx
	mov	rsi, rbx
.label_784:
	test	r9, r9
	mov	r8, qword ptr [rsp + 0x18]
	mov	r14d, r13d
	mov	r11, qword ptr [rsp + 0x38]
	je	.label_650
	lea	rdx, [rdi + rsi - 1]
	lea	rsi, [rsp + rsi + 0xb0]
	neg	r9
	nop	dword ptr [rax]
.label_696:
	movzx	ecx, byte ptr [rsi]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rcx*4]
	mov	byte ptr [rdx], bl
	dec	rdx
	dec	rsi
	inc	r9
	jne	.label_696
.label_650:
	add	rdi, r10
	mov	rcx, rdi
.label_789:
	add	r8, r12
	mov	r10, rcx
	jmp	.label_701
.label_662:
	mov	r15, qword ptr [rsp + 0x68]
	mov	rax, qword ptr [rsp + 0x40]
	jmp	.label_704
.label_797:
	mov	esi, 0x20
.label_799:
	mov	rdx, rcx
	mov	rbx, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x38]
	add	rbx, qword ptr [rsp + 0x30]
	mov	rdi, rbx
	mov	r9d, r13d
	mov	rdx, r15
	mov	r10, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 8]
.label_829:
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	eax, dword ptr [rsp + 0x508]
	push	rax
	push	qword ptr [rsp + 0x508]
	push	r10
	mov	r15, rdi
	call	__strftime_internal
	add	rsp, 0x20
	add	rbx, r15
	mov	rcx, rbx
	mov	r8, qword ptr [rsp + 0x18]
.label_787:
	add	r8, r14
	jmp	.label_725
.label_673:
	mov	rdx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rdx], 0x2d
	sete	sil
.label_668:
	cmp	r10, 3
	ja	.label_731
	movsxd	rax, r9d
	imul	rbx, rax, -0x77777777
	shr	rbx, 0x20
	add	ebx, r9d
	mov	edi, ebx
	shr	edi, 0x1f
	sar	ebx, 5
	add	ebx, edi
	imul	r13, rax, -0x6e5d4c3b
	shr	r13, 0x20
	add	r13d, r9d
	mov	edi, r13d
	shr	edi, 0x1f
	sar	r13d, 0xb
	add	r13d, edi
	movsxd	rdi, ebx
	imul	rbx, rdi, -0x77777777
	shr	rbx, 0x20
	add	ebx, edi
	mov	edx, ebx
	shr	edx, 0x1f
	sar	ebx, 5
	add	ebx, edx
	imul	edx, ebx, 0x3c
	imul	ebx, edi, 0x3c
	sub	edi, edx
	sub	r9d, ebx
	jmp	qword ptr [(r10 * 8) + label_735]
.label_1431:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 5
.label_687:
	xor	r14d, r14d
	jmp	.label_743
.label_703:
	xor	eax, eax
	mov	r10d, ecx
	add	r10d, -6
	cmovs	r10d, eax
	mov	r15d, OFFSET FLAT:label_706
	jmp	.label_694
.label_724:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	r11d, 9
	jmp	.label_761
.label_731:
	xor	edi, edi
	mov	r15d, 0xe
	jmp	.label_764
.label_1434:
	test	r9d, r9d
	je	.label_809
.label_1433:
	imul	r13d, r13d, 0x2710
	imul	edx, edi, 0x64
	add	r13d, r9d
	add	r13d, edx
	mov	edi, 9
	mov	r14d, 0x14
	jmp	.label_743
.label_728:
	mov	edx, dword ptr [rsp + 0x500]
	mov	r13d, edx
	mov	edi, r11d
	jmp	.label_761
.label_669:
	mov	esi, 0x20
.label_671:
	mov	rdi, r9
	mov	rdx, rax
	mov	r14, r9
	call	memset
	mov	r15, qword ptr [rsp + 0x68]
	add	r14, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r14
	mov	r14d, r12d
	mov	rax, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x20]
.label_704:
	test	bl, bl
	je	.label_783
	test	r10, r10
	je	.label_665
	mov	r12, r9
	mov	rbx, r10
	call	__ctype_tolower_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_786
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	jmp	.label_788
.label_783:
	test	al, al
	je	.label_792
	test	r10, r10
	je	.label_665
	mov	r15, r9
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rdx, [r10 - 1]
	mov	ecx, r10d
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_798
	mov	rdx, r10
	mov	r9, r15
	jmp	.label_804
.label_786:
	mov	rdx, r10
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, r12
	nop	word ptr cs:[rax + rax]
.label_813:
	movzx	esi, byte ptr [r15 + rdx - 1]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	esi, byte ptr [r15 + rdx - 2]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	esi, byte ptr [r15 + rdx - 3]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	esi, byte ptr [r15 + rdx - 4]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	lea	rdx, [rdx - 4]
	cmp	rcx, rdx
	jne	.label_813
.label_788:
	test	rcx, rcx
	je	.label_665
	lea	rsi, [r9 + rdx - 1]
	add	rdx, qword ptr [rsp + 0x80]
	neg	rcx
	nop	word ptr [rax + rax]
.label_824:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_824
	jmp	.label_665
.label_741:
	mov	esi, 0x20
.label_742:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_737:
	mov	byte ptr [rdi], 0xa
	jmp	.label_832
.label_807:
	mov	esi, 0x20
.label_808:
	mov	rdx, r14
	mov	r12, rdi
	call	memset
	add	r12, r14
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdi, r12
	mov	r14d, r15d
.label_802:
	mov	byte ptr [rdi], 9
.label_832:
	inc	rdi
	mov	rcx, rdi
.label_733:
	add	r8, rbx
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	jmp	.label_653
.label_698:
	mov	esi, 0x20
.label_702:
	mov	rdi, r10
	mov	rdx, r14
	mov	r15, r8
	mov	r13, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r11, qword ptr [rsp + 8]
	mov	r10, r13
	mov	r8, r15
	add	r10, r14
.label_657:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_795:
	add	r8, rbx
	mov	r10, rcx
	jmp	.label_667
.label_792:
	mov	rdi, r9
	mov	rsi, r15
	mov	rdx, r10
	mov	rbx, r9
	mov	r15, r10
	call	memcpy
	mov	r10, r15
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_665
.label_809:
	test	edi, edi
	je	.label_675
.label_1432:
	imul	r13d, r13d, 0x64
	add	r13d, edi
	mov	edi, 6
	mov	r14d, 4
.label_743:
	mov	r15d, 0x21
.label_764:
	mov	r10, r11
	mov	r9d, dword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 8]
	mov	ebx, r15d
	and	bl, 0x3f
	cmp	bl, 0xe
	je	.label_680
	mov	dl, 1
	cmp	bl, 0x21
	je	.label_685
	mov	r11, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_688
.label_680:
	mov	qword ptr [rsp + 0x20], rdi
.label_660:
	mov	r10, qword ptr [rsp + 0x20]
	mov	qword ptr [rsp + 0x40], r12
	mov	dword ptr [rsp + 0x2c], r14d
	mov	qword ptr [rsp + 0x58], r13
	lea	rax, [rbp - 2]
	xor	ecx, ecx
	xor	r15d, r15d
	mov	edx, 1
.label_765:
	mov	r12, rdx
	mov	r14, rax
	mov	r13, rcx
	mov	ebx, 1
	sub	rbx, r12
	lea	rdx, [r12 + 1]
	lea	rax, [r14 - 1]
	inc	r15b
	lea	rcx, [r13 - 1]
	cmp	byte ptr [rbp + rbx], 0x25
	jne	.label_765
	mov	r11, qword ptr [rsp + 8]
	test	r11d, r11d
	mov	eax, r11d
	mov	ecx, 0
	cmovs	eax, ecx
	cmp	r12d, eax
	mov	ecx, eax
	cmova	ecx, r12d
	movsxd	rsi, ecx
	mov	rcx, qword ptr [rsp + 0x48]
	mov	r8, qword ptr [rsp + 0x18]
	sub	rcx, r8
	cmp	rsi, rcx
	mov	rdi, qword ptr [rsp + 0x10]
	jae	.label_647
	test	rdi, rdi
	mov	ecx, 0
	je	.label_663
	movsxd	rdx, r12d
	test	r10d, r10d
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x30], rsi
	jne	.label_707
	cmp	r12d, eax
	jae	.label_707
	movsxd	rax, r11d
	sub	rax, rdx
	cmp	r9d, 0x30
	mov	qword ptr [rsp + 8], rax
	je	.label_732
	cmp	r9d, 0x2b
	jne	.label_738
.label_732:
	mov	esi, 0x30
	jmp	.label_739
.label_738:
	mov	esi, 0x20
.label_739:
	mov	rdx, rax
	call	memset
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, qword ptr [rsp + 8]
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 0x20]
.label_707:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, 1
	jne	.label_747
	add	rbx, rbp
	mov	rsi, rbx
	mov	rbx, rdi
	call	memcpy
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_752
.label_747:
	mov	rbx, rdi
	call	__ctype_toupper_loc
	mov	r10, qword ptr [rsp + 0x20]
	mov	r9, rbx
	movsxd	rcx, r12d
	lea	rdx, [rcx - 1]
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r10
	jb	.label_755
	movsxd	rdx, r12d
	add	r14, rdx
	and	r15b, 3
	movzx	esi, r15b
	mov	rdx, r10
	nop	word ptr cs:[rax + rax]
.label_763:
	movzx	edi, byte ptr [r14 + 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 1], bl
	movzx	edi, byte ptr [r14]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 2], bl
	movzx	edi, byte ptr [r14 - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 3], bl
	movzx	edi, byte ptr [r14 - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [r9 + rdx - 4], bl
	add	rdx, -4
	add	r14, -4
	cmp	rsi, rdx
	jne	.label_763
.label_755:
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_752
	lea	rcx, [r9 + rdx - 1]
	add	rdx, rbp
	lea	rdx, [r13 + rdx - 1]
	and	r12d, 3
	neg	r12
	nop	
.label_828:
	movzx	esi, byte ptr [rdx]
	mov	rdi, qword ptr [rax]
	movzx	ebx, byte ptr [rdi + rsi*4]
	mov	byte ptr [rcx], bl
	dec	rcx
	dec	rdx
	inc	r12
	jne	.label_828
.label_752:
	add	r9, r10
	mov	rcx, r9
	mov	rsi, qword ptr [rsp + 0x30]
.label_663:
	add	r8, rsi
.label_725:
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
	mov	r13, qword ptr [rsp + 0x58]
	mov	r14d, dword ptr [rsp + 0x2c]
	jmp	.label_653
.label_777:
	mov	esi, 0x20
.label_768:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	mov	sil, byte ptr [rsp + 0x50]
	mov	r10, rbx
	mov	r8, qword ptr [rsp + 0x18]
	add	r10, r14
.label_720:
	mov	byte ptr [r10], sil
	inc	r10
	mov	rcx, r10
.label_714:
	add	r8, r15
	mov	r10, rcx
.label_766:
	xor	r11d, r11d
	test	r10, r10
	movsxd	r15, r13d
	mov	eax, 0
	je	.label_800
	mov	esi, 0x30
	mov	rdi, r10
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memset
	xor	r11d, r11d
	mov	r8, r14
	add	rbx, r15
	mov	rax, rbx
.label_800:
	add	r8, r15
	mov	r10, rax
.label_667:
	lea	r15, [rsp + 0xa7]
	sub	r15, r12
	xor	eax, eax
	test	r11d, r11d
	cmovns	eax, r11d
	cdqe	
	cmp	r15, rax
	mov	r13, r15
	cmovb	r13, rax
	mov	rcx, qword ptr [rsp + 0x48]
	sub	rcx, r8
	cmp	r13, rcx
	jae	.label_647
	xor	ecx, ecx
	test	r10, r10
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_659
	cmp	r15, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x20]
	test	ecx, ecx
	jne	.label_816
	test	al, al
	jne	.label_816
	mov	qword ptr [rsp + 0x18], r13
	mov	r13, r8
	movsxd	r14, r11d
	sub	r14, r15
	mov	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x30
	je	.label_835
	cmp	eax, 0x2b
	jne	.label_825
.label_835:
	mov	esi, 0x30
	jmp	.label_827
.label_825:
	mov	esi, 0x20
.label_827:
	mov	rdi, r10
	mov	rdx, r14
	mov	rbx, r10
	call	memset
	add	rbx, r14
	mov	r8, r13
	mov	r10, rbx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	r13, qword ptr [rsp + 0x18]
.label_816:
	mov	rax, qword ptr [rsp + 0x40]
	test	al, al
	je	.label_831
	test	r15, r15
	je	.label_692
	mov	r14, r8
	mov	rbx, r10
	call	__ctype_toupper_loc
	mov	r10, rbx
	lea	rcx, [rsp + 0xa7]
	sub	ecx, r12d
	lea	rdx, [rsp + 0xa6]
	sub	rdx, r12
	and	ecx, 3
	cmp	rdx, 3
	mov	rdx, r15
	jb	.label_649
	mov	r8, r12
	neg	r8
	mov	rdi, r10
	sub	rdi, r12
	dec	rdi
	mov	r9, -1
	sub	r8, rcx
	lea	rdx, [rsp + 0xa7]
	nop	word ptr [rax + rax]
.label_718:
	movzx	esi, byte ptr [r9 + rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx], bl
	movzx	esi, byte ptr [r9 + rdx - 1]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 1], bl
	movzx	esi, byte ptr [r9 + rdx - 2]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 2], bl
	movzx	esi, byte ptr [r9 + rdx - 3]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rsi*4]
	mov	byte ptr [rdi + rdx - 3], bl
	add	rdx, -4
	mov	rsi, r8
	add	rsi, rdx
	jne	.label_718
	sub	rdx, r12
.label_649:
	test	rcx, rcx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
	je	.label_692
	lea	rsi, [r10 + rdx - 1]
	lea	rdx, [r12 + rdx - 1]
	neg	rcx
	nop	dword ptr [rax + rax]
.label_686:
	movzx	edi, byte ptr [rdx]
	mov	rbx, qword ptr [rax]
	movzx	ebx, byte ptr [rbx + rdi*4]
	mov	byte ptr [rsi], bl
	dec	rsi
	dec	rdx
	inc	rcx
	jne	.label_686
	jmp	.label_692
.label_831:
	mov	rdi, r10
	mov	rsi, r12
	mov	rdx, r15
	mov	r14, r8
	mov	rbx, r10
	call	memcpy
	mov	r10, rbx
	mov	r8, r14
	mov	r14d, dword ptr [rsp + 0x2c]
.label_692:
	add	r10, r15
	mov	rcx, r10
.label_659:
	add	r8, r13
	mov	r10, rcx
	mov	r11, qword ptr [rsp + 0x38]
.label_701:
	mov	r13, qword ptr [rsp + 0x58]
	nop	
.label_653:
	mov	al, byte ptr [rbp + 1]
	inc	rbp
	mov	edi, 0xffffffff
	test	al, al
	jne	.label_708
.label_834:
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_711
	test	r10, r10
	je	.label_711
	mov	byte ptr [r10], 0
.label_711:
	mov	qword ptr [rsp + 0x70], r8
.label_767:
	mov	rax, qword ptr [rsp + 0x70]
	add	rsp, 0x4b8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_647:
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	jmp	.label_767
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407d60

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_837
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_839
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_841
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_839
	mov	esi, OFFSET FLAT:label_840
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_842
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_842:
	mov	rbx, r14
.label_839:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_837:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_838
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e10
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
	#Procedure 0x407e50

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
	#Procedure 0x407e60

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
	#Procedure 0x407e70
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
	#Procedure 0x407eb0
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
	#Procedure 0x407ed0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_843
	test	rdx, rdx
	je	.label_843
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_843:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f00
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
	#Procedure 0x407f80

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	ebx, r9d
	mov	r15d, r8d
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rsp + 0x100]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0xf8]
	mov	qword ptr [rsp + 0x78], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0xa8], rax
	mov	r12d, ebx
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x90], eax
	mov	dword ptr [rsp + 0x18], ebx
	and	ebx, 4
	mov	dword ptr [rsp + 0x8c], ebx
	mov	r10b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x68], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_858:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_856
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_860]
.label_1395:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_866
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_873
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1396:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_887
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_887
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_905:
	cmp	r14, r11
	jae	.label_883
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_883:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_905
.label_887:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x48], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 7]
	mov	r9d, dword ptr [rsp + 0x50]
	jmp	.label_915
.label_1388:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_915
.label_1391:
	mov	al, 1
.label_1389:
	mov	r12b, 1
.label_1392:
	test	r12b, 1
	mov	cl, 1
	je	.label_919
	mov	ecx, eax
.label_919:
	mov	al, cl
.label_1390:
	test	r12b, 1
	jne	.label_922
	test	r11, r11
	je	.label_924
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_924:
	mov	r14d, 1
	jmp	.label_927
.label_922:
	xor	r14d, r14d
.label_927:
	mov	ecx, OFFSET FLAT:label_873
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_915
.label_1393:
	test	r12b, 1
	jne	.label_935
	test	r11, r11
	je	.label_937
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_937:
	mov	r14d, 1
	jmp	.label_942
.label_1394:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_945
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_915
.label_935:
	xor	r14d, r14d
.label_942:
	mov	eax, OFFSET FLAT:label_945
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_915:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	al
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2a]
	mov	edx, r15d
	mov	byte ptr [rsp + 0x17], cl
	and	dl, cl
	cmp	qword ptr [rsp + 0x40], 0
	setne	cl
	mov	ebx, ecx
	mov	byte ptr [rsp + 0x2e], dl
	and	bl, dl
	mov	byte ptr [rsp + 0x2f], bl
	mov	edx, esi
	and	dl, 1
	sete	bl
	and	al, dl
	mov	byte ptr [rsp + 0x2b], al
	mov	byte ptr [rsp + 6], dl
	and	r12b, dl
	mov	byte ptr [rsp + 0x2d], r12b
	or	bl, r15b
	mov	byte ptr [rsp + 0x1f], bl
	mov	byte ptr [rsp + 0x2c], r13b
	mov	qword ptr [rsp + 0xb0], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x29], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_960
	nop	dword ptr [rax]
.label_906:
	inc	rsi
.label_960:
	cmp	rbp, -1
	je	.label_877
	cmp	rsi, rbp
	jne	.label_880
	jmp	.label_881
	nop	word ptr cs:[rax + rax]
.label_877:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_889
.label_880:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_893
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_865
	cmp	rbp, -1
	jne	.label_865
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x38]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_865:
	cmp	rbx, rbp
	jbe	.label_910
.label_893:
	xor	r8d, r8d
.label_857:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_954
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_913]
.label_1469:
	test	rsi, rsi
	jne	.label_907
	jmp	.label_917
	nop	word ptr cs:[rax + rax]
.label_910:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x48]
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_930
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_857
	jmp	.label_941
.label_930:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_857
.label_1473:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_950
	test	rsi, rsi
	jne	.label_952
	cmp	rbp, 1
	je	.label_917
	xor	r13d, r13d
	jmp	.label_855
.label_1462:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_958
	cmp	byte ptr [rsp + 6], 0
	jne	.label_938
	cmp	r12d, 2
	jne	.label_962
	mov	eax, r9d
	and	al, 1
	jne	.label_962
	cmp	r14, r11
	jae	.label_963
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_963:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_845
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_845:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_890
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_890:
	add	r14, 3
	mov	r9b, 1
.label_962:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_918
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_918:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_862
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_862
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_862
	cmp	r14, r11
	jae	.label_895
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_895:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_920
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_920:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_855
.label_1463:
	mov	bl, 0x62
	jmp	.label_899
.label_1464:
	mov	cl, 0x74
	jmp	.label_903
.label_1465:
	mov	bl, 0x76
	jmp	.label_899
.label_1466:
	mov	bl, 0x66
	jmp	.label_899
.label_1467:
	mov	cl, 0x72
	jmp	.label_903
.label_1470:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_904
	cmp	byte ptr [rsp + 6], 0
	jne	.label_863
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x68]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x68], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_908
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_908:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_916
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_916:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_921
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_921:
	add	r14, 3
	xor	r9d, r9d
.label_904:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_855
.label_1471:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_928
	cmp	r12d, 2
	jne	.label_907
	cmp	byte ptr [rsp + 6], 0
	je	.label_907
	jmp	.label_863
.label_1472:
	cmp	r12d, 2
	jne	.label_936
	cmp	byte ptr [rsp + 6], 0
	jne	.label_863
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_894
.label_954:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_948
	mov	qword ptr [rsp + 0x20], rbp
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	r12d, 1
.label_896:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_851
	test	r8b, r8b
	je	.label_851
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_855
.label_950:
	test	rsi, rsi
	jne	.label_859
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_859
.label_917:
	mov	dl, 1
.label_1468:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_863
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_855:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_871
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_874
	jmp	.label_876
	nop	word ptr cs:[rax + rax]
.label_871:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_876
.label_874:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_885
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_894
	jmp	.label_901
	nop	dword ptr [rax]
.label_876:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_901
	jmp	.label_894
.label_885:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_901
.label_958:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_906
	xor	r15d, r15d
	jmp	.label_907
.label_936:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_903
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_894
.label_903:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_863
.label_899:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_855
	nop	word ptr cs:[rax + rax]
.label_901:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_938
	cmp	r12d, 2
	jne	.label_926
	mov	eax, r9d
	and	al, 1
	jne	.label_926
	cmp	r14, r11
	jae	.label_951
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_951:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_931
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_931:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_879
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_879:
	add	r14, 3
	mov	r9b, 1
.label_926:
	cmp	r14, r11
	jae	.label_940
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_940:
	inc	r14
	jmp	.label_946
.label_948:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_949
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_949:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_959:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_965
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_848
	cmp	rbp, -2
	je	.label_853
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_872
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_900:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_861
	bt	rsi, rdx
	jb	.label_875
.label_861:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_900
.label_872:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_878
	xor	r13d, r13d
.label_878:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_959
	jmp	.label_896
.label_862:
	xor	r13d, r13d
	jmp	.label_855
.label_859:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_855
.label_928:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_907
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_907
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_907
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_844
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_870
	cmp	byte ptr [rsp + 6], 0
	jne	.label_909
	cmp	r14, r11
	jae	.label_849
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_849:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_939
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_939:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_929
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_929:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_869
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_869:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_855
.label_907:
	xor	eax, eax
.label_952:
	xor	r13d, r13d
	jmp	.label_855
.label_851:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_947
	nop	word ptr cs:[rax + rax]
.label_854:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_947:
	test	r8b, r8b
	je	.label_953
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_955
	cmp	r14, r11
	jae	.label_956
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_956:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_955
	nop	dword ptr [rax]
.label_953:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_941
	cmp	r12d, 2
	jne	.label_846
	mov	eax, r9d
	and	al, 1
	jne	.label_846
	cmp	r14, r11
	jae	.label_847
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_847:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_888
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_888:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_911
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_911:
	add	r14, 3
	mov	r9b, 1
.label_846:
	cmp	r14, r11
	jae	.label_944
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_944:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_867
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_867:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_884
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_884:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_955:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_894
	test	r9b, 1
	je	.label_923
	mov	ebx, eax
	and	bl, 1
	jne	.label_923
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_898
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_898:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_897
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_897:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_923:
	cmp	r14, r11
	jae	.label_854
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_854
	nop	word ptr cs:[rax + rax]
.label_894:
	test	r9b, 1
	je	.label_912
	and	al, 1
	jne	.label_912
	cmp	r14, r11
	jae	.label_914
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_914:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_891
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_891:
	add	r14, 2
	xor	r9d, r9d
.label_912:
	mov	ebx, r15d
.label_946:
	cmp	r14, r11
	jae	.label_925
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_925:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_906
.label_848:
	xor	r13d, r13d
.label_965:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_896
.label_853:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_934
	mov	rsi, qword ptr [rsp + 0x58]
.label_943:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_902
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_943
	xor	r13d, r13d
	jmp	.label_896
.label_934:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_896
.label_902:
	xor	r13d, r13d
	jmp	.label_896
.label_844:
	xor	r13d, r13d
	jmp	.label_855
.label_870:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_855
	nop	dword ptr [rax + rax]
.label_881:
	mov	rcx, rsi
.label_889:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_957
	or	al, dl
	je	.label_961
.label_957:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_850
	or	al, dl
	jne	.label_850
	test	r10b, 1
	jne	.label_852
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_850
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_858
.label_850:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_864
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_868
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_868
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_886:
	cmp	r14, r11
	jae	.label_882
	mov	byte ptr [rcx + r14], al
.label_882:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_886
	jmp	.label_868
.label_938:
	mov	qword ptr [rsp + 0x20], rbp
.label_941:
	mov	rdx, rdi
	jmp	.label_892
.label_863:
	mov	qword ptr [rsp + 0x20], rbp
.label_875:
	mov	rdx, rdi
	mov	eax, 2
.label_964:
	mov	qword ptr [rsp + 0x38], rax
.label_892:
	mov	r9d, dword ptr [rsp + 0x18]
	cmp	byte ptr [rsp + 0x17], 0
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x38]
	cmove	r8d, eax
	cmp	eax, 2
	cmovne	r8d, eax
	and	r9d, 0xfffffffd
	sub	rsp, 8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r11
	mov	rcx, qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	0
	call	quotearg_buffer_restyled
	add	rsp, 0x20
.label_932:
	mov	r14, rax
.label_933:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_961:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_892
.label_852:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_932
.label_864:
	mov	rcx, qword ptr [rsp + 8]
.label_868:
	cmp	r14, r11
	jae	.label_933
	mov	byte ptr [rcx + r14], 0
	jmp	.label_933
.label_909:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_964
.label_856:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d90
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
	#Procedure 0x408e60
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
	je	.label_966
	mov	qword ptr [rax], rbx
.label_966:
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
	#Procedure 0x408f50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_967
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_970:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_970
.label_967:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_971
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_969], OFFSET FLAT:slot0
.label_971:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_968
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_968:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ff0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x409000

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
	js	.label_972
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_975
	cmp	r12d, 0x7fffffff
	je	.label_977
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
	jne	.label_973
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_973:
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
.label_975:
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
	jbe	.label_978
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_974
.label_978:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_976
	mov	rdi, r14
	call	free
.label_976:
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
.label_974:
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
.label_972:
	call	abort
.label_977:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4091c0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4091d0
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
	#Procedure 0x4091f0
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
	#Procedure 0x409210

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
	je	.label_979
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
.label_979:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409280
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
	je	.label_980
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
.label_980:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092f0

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
	je	.label_981
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
.label_981:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409360
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
	je	.label_982
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
.label_982:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093d0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
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
	#Procedure 0x409440
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
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
	#Procedure 0x4094b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
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
	#Procedure 0x409510
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
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
	#Procedure 0x409570
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
	je	.label_986
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
.label_986:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409610
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_987
	test	rdx, rdx
	je	.label_987
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_987:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x409680
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_988
	test	rdx, rdx
	je	.label_988
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_988:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096f0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_989
	test	rsi, rsi
	je	.label_989
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_989:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409760
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_983]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_984]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_985]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_990
	test	rsi, rsi
	je	.label_990
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
.label_990:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097d0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097e0
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
	#Procedure 0x409800

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409820

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
	#Procedure 0x409840

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
	jne	.label_992
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_997
	cmp	ecx, 0x55
	jne	.label_991
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_991
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_991
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_991
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_991
	cmp	byte ptr [rax + 5], 0
	jne	.label_991
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_994
	mov	eax, OFFSET FLAT:label_995
	jmp	.label_996
.label_997:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_991
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_991
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_991
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_991
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_991
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_991
	cmp	byte ptr [rax + 7], 0
	je	.label_993
.label_991:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_945
	mov	eax, OFFSET FLAT:label_873
.label_996:
	cmove	rax, rcx
.label_992:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_993:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_998
	mov	eax, OFFSET FLAT:label_999
	jmp	.label_996
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409910

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_78
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_1000
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_1000:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409960

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_1001
	mov	edi, eax
	jmp	fchdir
.label_1001:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409980

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_1002
	call	close
.label_1002:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4099a0

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
	je	.label_1015
	mov	edx, OFFSET FLAT:label_1006
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1012
.label_1015:
	mov	edx, OFFSET FLAT:label_1013
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1012:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1017
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
	mov	esi, OFFSET FLAT:label_1014
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1018
	jmp	qword ptr [(r12 * 8) + label_1019]
.label_1372:
	add	rsp, 8
	jmp	.label_1005
.label_1018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1009
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
	jmp	.label_1005
.label_1373:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1004
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
.label_1374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1010
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
.label_1375:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1007
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
.label_1376:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1021
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
	jmp	.label_1005
.label_1377:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1020
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
	jmp	.label_1005
.label_1378:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1003
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
	jmp	.label_1005
.label_1379:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1008
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
	jmp	.label_1005
.label_1381:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1011
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
	jmp	.label_1005
.label_1380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1016
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
.label_1005:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1022:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1022
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1033
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1035
.label_1033:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1035:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1023
	cmp	r10d, 0x29
	jae	.label_1032
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1034
.label_1032:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1034:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1023
	cmp	r10d, 0x29
	jae	.label_1030
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1031
.label_1030:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1031:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1023
	cmp	r10d, 0x29
	jae	.label_1028
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1029
.label_1028:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1029:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1023
	cmp	r10d, 0x29
	jae	.label_1026
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1027
.label_1026:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1027:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1023
	cmp	r10d, 0x29
	jae	.label_1024
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1025
.label_1024:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1025:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1023
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1023
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1023
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1023
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1023:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f20

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1036
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1036:
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
	#Procedure 0x409fb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1037
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_1038
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1040
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_17
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1039
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a030
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1041
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1042
	test	rax, rax
	je	.label_1041
.label_1042:
	pop	rbx
	ret	
.label_1041:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a070

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1043
	test	rax, rax
	je	.label_1044
.label_1043:
	pop	rbx
	ret	
.label_1044:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a090
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1045
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1046
	test	rbx, rbx
	jne	.label_1046
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1046:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1047
	test	rax, rax
	je	.label_1045
.label_1047:
	pop	rbx
	ret	
.label_1045:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1048
	test	rbx, rbx
	jne	.label_1048
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1048:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1050
	test	rax, rax
	je	.label_1049
.label_1050:
	pop	rbx
	ret	
.label_1049:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x40a110
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1054
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1056
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1051
.label_1054:
	test	rcx, rcx
	jne	.label_1057
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1057:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1052
.label_1051:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1053
	test	rbx, rbx
	jne	.label_1053
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1053:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1055
	test	rax, rax
	je	.label_1056
.label_1055:
	pop	rbx
	ret	
.label_1056:
	call	xalloc_die
.label_1052:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1058
	test	rax, rax
	je	.label_1059
.label_1058:
	pop	rbx
	ret	
.label_1059:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1062
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1064
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1061
	call	free
	xor	eax, eax
	jmp	.label_1063
.label_1062:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1060
	mov	qword ptr [rsi], rbx
.label_1061:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1063
	test	rax, rax
	je	.label_1060
.label_1063:
	pop	rbx
	ret	
.label_1060:
	call	xalloc_die
.label_1064:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a240
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
	je	.label_1066
	test	r14, r14
	je	.label_1065
.label_1066:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1065:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a280
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1067
	call	rpl_calloc
	test	rax, rax
	je	.label_1067
	pop	rcx
	ret	
.label_1067:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a2b0

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
	je	.label_1068
	test	r15, r15
	je	.label_1069
.label_1068:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1069:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a2f0

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
	je	.label_1071
	test	r15, r15
	je	.label_1070
.label_1071:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1070:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a340

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1072
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_537
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a370

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_1074
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_1073
.label_1074:
	mov	rax, rbx
	pop	rbx
	ret	
.label_1073:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3a0

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1075
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1075:
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
	call	xvasprintf
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a440

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1076
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1077
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1077
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1076:
	mov	ecx, 1
.label_1077:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a490

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_1092
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_1093
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_1102
	cmp	r15, 0x1000
	jb	.label_1104
	add	r15, rbp
	mov	rbx, -1
	nop	word ptr [rax + rax]
.label_1111:
	cmp	byte ptr [rbp + rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_1111
	mov	r12d, 0xffffff9c
	test	rbx, rbx
	je	.label_1113
	cmp	rbx, 2
	jne	.label_1084
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1105
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_1083
	nop	word ptr cs:[rax + rax]
.label_1107:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_1107
	jmp	.label_1108
.label_1092:
	xor	ebx, ebx
	jmp	.label_1093
.label_1084:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:label_1098
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_1083
	add	rbp, rbx
.label_1113:
	mov	rbx, rbp
.label_1108:
	cmp	byte ptr [rbx], 0x2f
	je	.label_1090
	cmp	rbx, r15
	jbe	.label_1109
	mov	edi, OFFSET FLAT:label_1097
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_1080
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
.label_1103:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1105
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_1110
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1089
	test	r12d, r12d
	js	.label_1101
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_1082
.label_1101:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_1100:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_1100
.label_1109:
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_1103
	cmp	rbx, r15
	jae	.label_1106
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1094
	test	r12d, r12d
	js	.label_1081
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_1081
	jmp	.label_1082
.label_1105:
	mov	dword ptr [r14], 0x24
	jmp	.label_1087
.label_1106:
	mov	ebx, r12d
.label_1081:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_1091
	mov	r12d, ebx
	jmp	.label_1094
.label_1083:
	mov	ebx, dword ptr [r14]
	jmp	.label_1096
.label_1091:
	test	ebx, ebx
	js	.label_1088
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_1093
	jmp	.label_1082
.label_1089:
	mov	byte ptr [rbp], 0x2f
.label_1094:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_1096
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_1082
.label_1096:
	mov	dword ptr [r14], ebx
.label_1087:
	mov	ebx, 0xffffffff
.label_1093:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1088:
	xor	ebx, ebx
	jmp	.label_1093
.label_1110:
	mov	edi, OFFSET FLAT:label_1112
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_1080
	call	__assert_fail
.label_1082:
	mov	edi, OFFSET FLAT:label_1085
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_1086
	call	__assert_fail
.label_1102:
	mov	edi, OFFSET FLAT:label_1095
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_1080
	call	__assert_fail
.label_1104:
	mov	edi, OFFSET FLAT:label_1099
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_1080
	call	__assert_fail
.label_1090:
	mov	edi, OFFSET FLAT:label_1078
	mov	esi, OFFSET FLAT:label_1079
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_1080
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a770

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
	je	.label_1114
	cmp	r15, -2
	jb	.label_1114
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1114
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1114:
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
	#Procedure 0x40a7d0

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	edi, OFFSET FLAT:label_1146
	mov	esi, OFFSET FLAT:label_1142
	call	fopen
	mov	r15, rax
	test	r15, r15
	je	.label_1148
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [rsp + 0x60], 0
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x60]
	mov	edx, 0xa
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	je	.label_1122
	lea	rax, [rsp + 0x28]
	mov	qword ptr [rsp + 0x18], rax
	lea	rbx, [rsp + 0xf]
	lea	r14, [rsp + 0x20]
	lea	r12, [rsp + 0x24]
	lea	r13, [rsp + 0x3c]
	mov	qword ptr [rsp + 0x40], r15
	nop	
.label_1139:
	mov	rdi, qword ptr [rsp + 0x10]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1130
	mov	eax, 0
	mov	rdx, r13
	lea	rcx, [rsp + 0x64]
	lea	r8, [rsp + 0x3c]
	lea	r9, [rsp + 0x54]
	push	rbx
	push	r14
	push	r12
	call	sscanf
	add	rsp, 0x20
	or	eax, 4
	cmp	eax, 7
	jne	.label_1132
	movsxd	rdi, dword ptr [rsp + 0x20]
	add	rdi, qword ptr [rsp + 0x10]
	mov	esi, OFFSET FLAT:label_1134
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1132
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1140
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x60]
	lea	rcx, [rsp + 0x5c]
	lea	r8, [rsp + 0x40]
	lea	r9, [rsp + 0x58]
	push	rbx
	call	sscanf
	add	rsp, 0x10
	or	eax, 4
	cmp	eax, 5
	jne	.label_1132
	movsxd	rax, dword ptr [rsp + 0x4c]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x54]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x50]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x38]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 0x10]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, qword ptr [rsp + 0x10]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x38]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 0x10]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x34]
	add	rdi, qword ptr [rsp + 0x10]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x58]
	add	rdi, rbp
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r13 + 0x18], rbp
	movzx	r12d, byte ptr [r13 + 0x28]
	or	r12b, 4
	mov	byte ptr [r13 + 0x28], r12b
	mov	eax, dword ptr [rsp + 0x3c]
	mov	ecx, dword ptr [rsp + 0x5c]
	movzx	edx, cl
	mov	esi, eax
	shl	esi, 8
	and	esi, 0xfff00
	or	esi, edx
	and	ecx, 0xffffff00
	shl	rcx, 0xc
	and	eax, 0xfffff000
	shl	rax, 0x20
	or	rax, rcx
	or	rax, rsi
	mov	qword ptr [r13 + 0x20], rax
	mov	esi, OFFSET FLAT:label_221
	mov	rdi, rbp
	call	strcmp
	mov	r14b, 1
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_201
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_1115
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_376
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_282
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_255
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_287
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_310
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_206
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_339
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_1143
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_1133
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_1116
	mov	esi, OFFSET FLAT:label_1126
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	dword ptr [rax]
.label_1116:
	and	r12b, 0xfe
	or	r12b, al
	mov	byte ptr [r13 + 0x28], r12b
	mov	r15, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, r15
	call	strchr
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_1124
	cmp	byte ptr [r15], 0x2f
	jne	.label_1120
	cmp	byte ptr [r15 + 1], 0x2f
	jne	.label_1120
	mov	esi, OFFSET FLAT:label_1123
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1124
	mov	esi, OFFSET FLAT:label_272
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1124
.label_1120:
	mov	edi, OFFSET FLAT:label_1128
	mov	rsi, r15
	call	strcmp
	test	eax, eax
	sete	r14b
.label_1124:
	add	r14b, r14b
	and	r12b, 0xfd
	or	r12b, r14b
	mov	byte ptr [r13 + 0x28], r12b
	mov	qword ptr [rbx], r13
	add	r13, 0x30
	mov	qword ptr [rsp + 0x18], r13
	mov	r15, qword ptr [rsp + 0x40]
	lea	rbx, [rsp + 0xf]
	lea	r14, [rsp + 0x20]
	lea	r12, [rsp + 0x24]
	lea	r13, [rsp + 0x3c]
.label_1132:
	mov	edx, 0xa
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 0x60]
	mov	rcx, r15
	call	__getdelim
	cmp	rax, -1
	jne	.label_1139
	jmp	.label_1118
.label_1148:
	mov	edi, OFFSET FLAT:label_1141
	mov	esi, OFFSET FLAT:label_1142
	call	setmntent
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_1131
	mov	rdi, r14
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1145
	lea	r13, [rsp + 0x28]
	mov	qword ptr [rsp + 0x18], r14
	nop	dword ptr [rax]
.label_1119:
	mov	esi, OFFSET FLAT:label_1138
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, 0x38
	call	xmalloc
	mov	rbx, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	r12, rax
	mov	qword ptr [rbx + 0x18], r12
	movzx	r14d, byte ptr [rbx + 0x28]
	or	r14b, 4
	mov	byte ptr [rbx + 0x28], r14b
	mov	esi, OFFSET FLAT:label_221
	mov	rdi, r12
	call	strcmp
	mov	r15b, 1
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_201
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_1115
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_376
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_282
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_255
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_287
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_310
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_206
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_339
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_1143
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	mov	esi, OFFSET FLAT:label_1133
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	bpl, 1
	je	.label_1117
	cmp	qword ptr [rsp + 0x40], 0
	sete	bpl
	mov	esi, OFFSET FLAT:label_1126
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1117
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1117:
	and	r14b, 0xfe
	or	r14b, bpl
	mov	byte ptr [rbx + 0x28], r14b
	mov	rbp, qword ptr [rbx]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1136
	cmp	byte ptr [rbp], 0x2f
	jne	.label_1137
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_1137
	mov	esi, OFFSET FLAT:label_1123
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1136
	mov	esi, OFFSET FLAT:label_272
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_1136
	nop	
.label_1137:
	mov	edi, OFFSET FLAT:label_1128
	mov	rsi, rbp
	call	strcmp
	test	eax, eax
	sete	r15b
.label_1136:
	add	r15b, r15b
	and	r14b, 0xfd
	or	r14b, r15b
	mov	byte ptr [rbx + 0x28], r14b
	mov	qword ptr [rbx + 0x20], -1
	mov	qword ptr [r13], rbx
	add	rbx, 0x30
	mov	r14, qword ptr [rsp + 0x18]
	mov	rdi, r14
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r13, rbx
	jne	.label_1119
	jmp	.label_1121
.label_1122:
	lea	rax, [rsp + 0x28]
	mov	qword ptr [rsp + 0x18], rax
.label_1118:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	test	byte ptr [r15], 0x20
	jne	.label_1125
	mov	rdi, r15
	call	rpl_fclose
	cmp	eax, -1
	mov	rbx, qword ptr [rsp + 0x18]
	jne	.label_1127
	jmp	.label_1129
.label_1125:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, r15
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
	mov	rbx, qword ptr [rsp + 0x18]
	jmp	.label_1129
.label_1145:
	lea	rbx, [rsp + 0x28]
.label_1121:
	mov	rdi, r14
	call	endmntent
	test	eax, eax
	je	.label_1129
.label_1127:
	mov	qword ptr [rbx], 0
	mov	rax, qword ptr [rsp + 0x28]
	jmp	.label_1131
.label_1129:
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	mov	qword ptr [rbx], 0
	mov	rbx, qword ptr [rsp + 0x28]
	test	rbx, rbx
	je	.label_1135
	nop	word ptr [rax + rax]
.label_1147:
	mov	rdi, qword ptr [rbx]
	mov	rbp, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1144
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1144:
	mov	rdi, rbx
	call	free
	mov	qword ptr [rsp + 0x28], rbp
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1147
.label_1135:
	mov	dword ptr [r15], r14d
	xor	eax, eax
.label_1131:
	add	rsp, 0x68
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
	#Procedure 0x40af10

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	inc	rax
	je	.label_1152
	xor	ecx, ecx
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1150:
	movzx	r9d, byte ptr [r14 + rcx]
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_1149
	cmp	r9b, 0x5c
	jne	.label_1149
	movzx	esi, byte ptr [r14 + rcx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1149
	movzx	edi, byte ptr [r14 + rcx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1149
	movzx	r8d, byte ptr [r14 + rcx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1149
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1151
.label_1149:
	mov	byte ptr [rdx], r9b
.label_1151:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_1150
.label_1152:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afb0
	.globl free_mount_entry
	.type free_mount_entry, @function
free_mount_entry:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	test	byte ptr [rbx + 0x28], 4
	je	.label_1153
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1153:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aff0

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1154
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1154:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1155
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1155
	mov	r12, rbx
	add	r12, 9
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [r12 + r15], 0
.label_1155:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b070
	.globl tzfree
	.type tzfree, @function
tzfree:

	push	rbx
	cmp	rdi, 2
	jb	.label_1156
	nop	word ptr [rax + rax]
.label_1157:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1157
.label_1156:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b0a0

	.globl localtime_rz
	.type localtime_rz, @function
localtime_rz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1158
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1161
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_1159
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_1159:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_1160
.label_1158:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1161:
	xor	eax, eax
.label_1160:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b130

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, OFFSET FLAT:label_478
	call	getenv
	mov	r15, rax
	test	r15, r15
	mov	bl, byte ptr [r14 + 8]
	je	.label_1164
	test	bl, bl
	je	.label_1166
	lea	rdi, [r14 + 9]
	mov	rsi, r15
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_1163
.label_1166:
	mov	rdi, r15
	call	strlen
	mov	r12, rax
	inc	r12
	mov	bpl, 1
	jmp	.label_1170
.label_1164:
	xor	ebp, ebp
	mov	eax, 1
	test	bl, bl
	mov	r12d, 0
	je	.label_1163
.label_1170:
	lea	rax, [r12 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r12, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1163
	mov	qword ptr [r13], 0
	mov	byte ptr [r13 + 8], bpl
	mov	byte ptr [r13 + 9], 0
	test	bpl, bpl
	je	.label_1162
	lea	rbp, [r13 + 9]
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	memcpy
	mov	byte ptr [rbp + r12], 0
.label_1162:
	test	bl, bl
	je	.label_1169
	add	r14, 9
	mov	edi, OFFSET FLAT:label_478
	mov	edx, 1
	mov	rsi, r14
	call	setenv
	jmp	.label_1165
.label_1169:
	mov	edi, OFFSET FLAT:label_478
	call	unsetenv
.label_1165:
	test	eax, eax
	je	.label_1167
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	cmp	r13, 2
	jb	.label_1168
	nop	dword ptr [rax]
.label_1171:
	mov	rbx, qword ptr [r13]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_1171
.label_1168:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_1163
.label_1167:
	call	tzset
	mov	rax, r13
.label_1163:
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
	#Procedure 0x40b270

	.globl save_abbr
	.type save_abbr, @function
save_abbr:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r15 + 0x30]
	mov	r14b, 1
	test	rbx, rbx
	je	.label_1176
	cmp	r15, rbx
	ja	.label_1173
	lea	rax, [r15 + 0x38]
	cmp	rbx, rax
	jb	.label_1176
.label_1173:
	mov	ebp, OFFSET FLAT:label_45
	cmp	byte ptr [rbx], 0
	je	.label_1178
	lea	rbp, [r12 + 9]
	jmp	.label_1181
.label_1172:
	mov	rax, qword ptr [r12]
	lea	rbp, [rax + 9]
	test	rax, rax
	cmove	rbp, rcx
	cmovne	r12, rax
.label_1181:
	lea	r13, [r12 + 9]
.label_1183:
	mov	rdi, rbp
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1178
	cmp	byte ptr [rbp], 0
	jne	.label_1174
	cmp	rbp, r13
	jne	.label_1179
	cmp	byte ptr [r12 + 8], 0
	je	.label_1180
.label_1174:
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rbp + rax + 1]
	cmp	byte ptr [rbp + rax + 1], 0
	mov	rbp, rcx
	jne	.label_1183
	jmp	.label_1172
.label_1180:
	mov	rbp, r13
.label_1179:
	mov	rdi, rbx
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbp
	sub	rcx, r13
	mov	rsi, rcx
	not	rsi
	cmp	rdx, rsi
	jbe	.label_1177
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_1175:
	xor	r14d, r14d
	jmp	.label_1176
.label_1177:
	add	rcx, rdx
	cmp	rcx, 0x76
	ja	.label_1184
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rbx, rdx
	call	memcpy
	mov	byte ptr [rbp + rbx], 0
	jmp	.label_1178
.label_1184:
	add	rax, 0x12
	and	rax, 0xfffffffffffffff8
	mov	r13, rdx
	cmp	rdx, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	test	rax, rax
	je	.label_1182
	mov	qword ptr [rax], 0
	mov	word ptr [rax + 8], 1
	mov	rbp, rax
	add	rbp, 9
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rax
	call	memcpy
	mov	byte ptr [rbx + r13 + 9], 0
	mov	qword ptr [r12], rbx
	mov	byte ptr [rbx + 8], 0
.label_1178:
	mov	qword ptr [r15 + 0x30], rbp
.label_1176:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1182:
	mov	qword ptr [r12], 0
	jmp	.label_1175
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b3e0

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	mov	r12b, 1
	cmp	rbp, 1
	je	.label_1185
	call	__errno_location
	mov	r14, rax
	mov	r15d, dword ptr [r14]
	cmp	byte ptr [rbp + 8], 0
	je	.label_1191
	lea	rsi, [rbp + 9]
	mov	edi, OFFSET FLAT:label_478
	mov	edx, 1
	call	setenv
	jmp	.label_1189
.label_1191:
	mov	edi, OFFSET FLAT:label_478
	call	unsetenv
.label_1189:
	test	eax, eax
	je	.label_1186
	mov	r15d, dword ptr [r14]
	xor	r12d, r12d
	jmp	.label_1187
.label_1186:
	call	tzset
	mov	r12b, 1
.label_1187:
	cmp	rbp, 2
	jb	.label_1190
	nop	
.label_1188:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1188
.label_1190:
	mov	dword ptr [r14], r15d
.label_1185:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b470

	.globl mktime_z
	.type mktime_z, @function
mktime_z:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r15, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1195
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1192
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1193
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_1194
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	xor	rax, qword ptr [r15]
	xor	rcx, qword ptr [r15 + 8]
	mov	edx, ecx
	or	edx, eax
	shr	rax, 0x20
	or	edx, eax
	shr	rcx, 0x20
	mov	rax, qword ptr [rsp + 0x18]
	xor	rax, qword ptr [r15 + 0x10]
	mov	esi, eax
	or	esi, ecx
	or	esi, edx
	shr	rax, 0x20
	or	eax, esi
	mov	edi, dword ptr [r15 + 0x20]
	mov	edx, dword ptr [rsp + 0x28]
	test	edi, edi
	sete	sil
	test	edx, edx
	sete	cl
	xor	cl, sil
	or	edx, edi
	setns	dl
	and	dl, cl
	movzx	ecx, dl
	or	ecx, eax
	jne	.label_1194
.label_1193:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1194
	mov	qword ptr [rsp], -1
.label_1194:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1192
	mov	rax, qword ptr [rsp]
	jmp	.label_1196
.label_1192:
	mov	rax, -1
.label_1196:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1195:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b570

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
	jne	.label_1198
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1197
	test	cl, cl
	jne	.label_1197
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1197
.label_1198:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1197
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1197:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b5d0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1199
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1199:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_1200
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1202
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1201
.label_1202:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1201:
	mov	edx, dword ptr [rax]
.label_1200:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1204
	cmp	byte ptr [rax], 0x43
	jne	.label_1206
	cmp	byte ptr [rax + 1], 0
	je	.label_1203
.label_1206:
	mov	esi, OFFSET FLAT:label_1205
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1204
.label_1203:
	xor	ebx, ebx
.label_1204:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b6e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_45
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1207
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b710

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_1208
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1209
.label_1208:
	mov	eax, ebx
.label_1209:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b760

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	rax, rdi
	mov	r15, -1
	jmp	.label_1220
	nop	dword ptr [rax]
.label_1215:
	inc	r15
.label_1220:
	movzx	ecx, byte ptr [rax + r15*2 + 2]
	cmp	cl, 0x25
	jne	.label_1211
	cmp	byte ptr [rax + r15*2 + 3], 0x73
	je	.label_1215
	jmp	.label_1212
.label_1211:
	test	cl, cl
	jne	.label_1212
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp], xmm0
	cmp	r15, -1
	je	.label_1221
	mov	r12, rbp
	mov	r14d, dword ptr [rsp]
	xor	ebx, ebx
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1213:
	cmp	r14d, 0x28
	ja	.label_1217
	movsxd	rax, r14d
	add	rax, qword ptr [rsp + 0x10]
	add	r14d, 8
	mov	dword ptr [rsp], r14d
	jmp	.label_1219
	nop	dword ptr [rax + rax]
.label_1217:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1219:
	mov	rdi, qword ptr [rax]
	call	strlen
	add	rax, rbp
	cmp	rax, rbp
	mov	rbp, -1
	cmovae	rbp, rax
	cmp	rbx, r15
	lea	rbx, [rbx + 1]
	jne	.label_1213
	test	rbp, -0x80000000
	je	.label_1210
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	ecx, ecx
	jmp	.label_1218
.label_1212:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rax
	mov	rcx, rbp
	call	__vasprintf_chk
	test	eax, eax
	js	.label_1216
	mov	rcx, qword ptr [rsp]
	jmp	.label_1218
.label_1216:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	jne	.label_1218
	call	xalloc_die
.label_1221:
	mov	edi, 1
	call	xmalloc
	mov	rcx, rax
	mov	rbx, rcx
	jmp	.label_1224
.label_1210:
	inc	rax
	mov	rdi, rax
	call	xmalloc
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, rax
	mov	rbp, r12
	nop	
.label_1222:
	movsxd	rcx, dword ptr [rbp]
	cmp	rcx, 0x28
	ja	.label_1214
	mov	rax, rcx
	add	rax, qword ptr [rbp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rbp], ecx
	jmp	.label_1223
	nop	dword ptr [rax]
.label_1214:
	mov	rax, qword ptr [rbp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbp + 8], rcx
.label_1223:
	mov	r12, qword ptr [rax]
	mov	rdi, r12
	call	strlen
	mov	r13, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	add	rbx, r13
	cmp	r14, r15
	lea	r14, [r14 + 1]
	jne	.label_1222
	mov	rcx, qword ptr [rsp + 0x20]
.label_1224:
	mov	byte ptr [rbx], 0
.label_1218:
	mov	rax, rcx
	add	rsp, 0x28
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
	#Procedure 0x40b910

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1225
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1227
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1225
.label_1227:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1225
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1226
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1226:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1225:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b990

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1228
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1228
	test	byte ptr [rbx + 1], 1
	je	.label_1228
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1228:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b9d0

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
	jne	.label_1229
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1229
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1230
.label_1229:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1230:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1231
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1231:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ba40

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ba60

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section .text
	.align	32
	#Procedure 0x40ba70

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1252
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1252:
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
	cmp	esi, 0xb
	ja	.label_1234
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1245
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1233
	test	esi, esi
	jne	.label_1234
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1235
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1236
.label_1234:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1237
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1233
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1244
.label_1245:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1232
.label_1233:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1248
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1249
.label_1248:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1249:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1251:
	call	fcntl
.label_1232:
	mov	ebp, eax
.label_1238:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1244:
	cmp	eax, 6
	jne	.label_1237
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1240
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1242
.label_1237:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1243
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1247
.label_1235:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1236:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1251
.label_1240:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1242:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1241
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1239
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1239
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1238
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1246
.label_1239:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1238
.label_1243:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1247:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1232
.label_1241:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1246:
	test	al, al
	je	.label_1238
	test	ebp, ebp
	js	.label_1238
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1250
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1238
.label_1250:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1238
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
