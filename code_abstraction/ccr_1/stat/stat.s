	.section	.text
	.align	32
	#Procedure 0x402300

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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_regular
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:fmt_terse_fs
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	#Procedure 0x402560

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402590

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_35
	nop	
.label_34:
	mov	edi, OFFSET FLAT:label_26
	call	strcmp
	test	eax, eax
	je	.label_32
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_34
.label_32:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_26
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_28
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_28
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_26
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_38
	mov	ecx, OFFSET FLAT:label_39
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
	#Procedure 0x4026b0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_39
	call	setlocale
	mov	edi, OFFSET FLAT:label_56
	mov	esi, OFFSET FLAT:label_57
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_56
	call	textdomain
	call	localeconv
	mov	rax, qword ptr [rax]
	cmp	byte ptr [rax], 0
	mov	edi, OFFSET FLAT:label_60
	cmovne	rdi, rax
	mov	qword ptr [word ptr [rip + decimal_point]],  rdi
	call	strlen
	mov	qword ptr [word ptr [rip + decimal_point_len]],  rax
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	eax, eax
	xor	ebp, ebp
	xor	r15d, r15d
.label_1126:
	mov	r13d, eax
	mov	al, bpl
.label_1127:
	mov	bpl, al
	jmp	.label_46
	nop	word ptr cs:[rax + rax]
.label_55:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	byte ptr [byte ptr [rip + interpret_backslash_escapes]],  bl
	mov	qword ptr [word ptr [rip + trailing_delim]],  rdx
	jmp	.label_46
.label_1128:
	mov	bl, 1
	mov	edx, OFFSET FLAT:label_39
	jmp	.label_55
	nop	
.label_46:
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_59
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x4b
	jle	.label_63
	lea	ecx, [rax - 0x63]
	cmp	ecx, 0x1d
	ja	.label_64
	mov	al, 1
	mov	edx, OFFSET FLAT:label_41
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_42]]
.label_64:
	cmp	eax, 0x4c
	jne	.label_49
	mov	byte ptr [byte ptr [rip + follow_links]],  1
	jmp	.label_46
.label_63:
	cmp	eax, -1
	jne	.label_48
	cmp	dword ptr [dword ptr [rip + optind]],  r14d
	je	.label_62
	test	r15, r15
	mov	qword ptr [rsp], r12
	je	.label_51
	mov	esi, OFFSET FLAT:label_47
	mov	rdi, r15
	call	strstr
	test	rax, rax
	je	.label_54
	call	getenv_quoting_style
.label_54:
	mov	r12, r15
	jmp	.label_58
.label_51:
	xor	r12d, r12d
	test	r13b, r13b
	setne	r12b
	xor	ebx, ebx
	test	bpl, bpl
	setne	bl
	xor	edx, edx
	mov	edi, r12d
	mov	esi, ebx
	call	default_format
	mov	r15, rax
	mov	edx, 1
	mov	edi, r12d
	mov	esi, ebx
	call	default_format
	mov	r12, rax
.label_58:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	cmp	eax, r14d
	jge	.label_45
	mov	rcx, qword ptr [rsp]
	lea	rbp, [rcx + rax*8]
	sub	r14d, eax
	mov	bl, 1
.label_44:
	test	r13b, r13b
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	je	.label_50
	call	do_statfs
	jmp	.label_52
	nop	word ptr cs:[rax + rax]
.label_50:
	mov	rdx, r12
	call	do_stat
.label_52:
	and	bl, al
	add	rbp, 8
	dec	r14d
	jne	.label_44
.label_45:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_48:
	cmp	eax, 0xffffff7d
	je	.label_61
	cmp	eax, 0xffffff7e
	jne	.label_49
	xor	edi, edi
	call	usage
.label_61:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_26
	mov	edx, OFFSET FLAT:label_30
	mov	r8d, OFFSET FLAT:label_43
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_49:
	mov	edi, 1
	call	usage
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl getenv_quoting_style
	.type getenv_quoting_style, @function
getenv_quoting_style:
	push	r14
	push	rbx
	push	rax
	mov	edi, OFFSET FLAT:label_65
	call	getenv
	mov	rbx, rax
	test	rbx, rbx
	je	.label_67
	mov	esi, OFFSET FLAT:quoting_style_args
	mov	edx, OFFSET FLAT:quoting_style_vals
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_69
	cdqe	
	mov	esi,  dword ptr [dword ptr [+ (rax * 4) + quoting_style_vals]]
	xor	edi, edi
	jmp	.label_66
.label_67:
	xor	edi, edi
	mov	esi, 4
.label_66:
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	set_quoting_style
.label_69:
	xor	edi, edi
	mov	esi, 4
	call	set_quoting_style
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
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
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029a0

	.globl default_format
	.type default_format, @function
default_format:
	push	r15
	push	r14
	push	rbx
	mov	ebx, edx
	test	dil, dil
	je	.label_75
	test	sil, sil
	je	.label_78
	mov	edi, OFFSET FLAT:fmt_terse_fs
	jmp	.label_79
.label_75:
	test	sil, sil
	je	.label_80
	mov	edi, OFFSET FLAT:fmt_terse_regular
	jmp	.label_79
.label_78:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
.label_79:
	pop	rbx
	pop	r14
	pop	r15
	jmp	xstrdup
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	xstrdup
	mov	r14, rax
	xor	edi, edi
	test	bl, bl
	je	.label_82
	mov	esi, OFFSET FLAT:label_73
	jmp	.label_74
.label_82:
	mov	esi, OFFSET FLAT:label_70
.label_74:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_72
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	xasprintf
	mov	r15, rax
	mov	rdi, r14
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_72
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rcx
	call	xasprintf
	mov	r14, rax
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, OFFSET FLAT:label_72
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
	#Procedure 0x402ab0

	.globl do_statfs
	.type do_statfs, @function
do_statfs:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_87
	cmp	byte ptr [rbx + 1], 0
	je	.label_84
.label_87:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	statfs
	test	eax, eax
	je	.label_88
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	jmp	.label_85
.label_88:
	lea	r8, [rsp]
	mov	esi, 0xffffffff
	mov	ecx, OFFSET FLAT:print_statfs
	mov	rdi, r14
	mov	rdx, rbx
	call	print_it
	mov	r14b, al
	xor	r14b, 1
	jmp	.label_86
.label_84:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
.label_85:
	call	error
.label_86:
	mov	eax, r14d
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402b80

	.globl do_stat
	.type do_stat, @function
do_stat:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_90
	mov	al, byte ptr [rbx + 1]
	mov	ecx, eax
	neg	cl
	sbb	r12d, r12d
	lea	rbp, [rsp]
	test	al, al
	jne	.label_92
	mov	edi, r12d
	mov	rsi, rbp
	call	fstat
	test	eax, eax
	je	.label_93
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_94
.label_90:
	lea	rbp, [rsp]
	mov	r12d, 0xffffffff
.label_92:
	cmp	byte ptr [byte ptr [rip + follow_links]],  1
	jne	.label_98
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	stat
	jmp	.label_96
.label_98:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	lstat
.label_96:
	test	eax, eax
	je	.label_93
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_94
.label_93:
	movzx	eax, word ptr [rsp + 0x18]
	or	eax, 0x4000
	and	eax, 0xf000
	cmp	eax, 0x6000
	jne	.label_95
	mov	r14, r15
.label_95:
	mov	ecx, OFFSET FLAT:print_stat
	mov	rdi, r14
	mov	esi, r12d
	mov	rdx, rbx
	mov	r8, rbp
	call	print_it
	mov	bpl, al
	xor	bpl, 1
.label_94:
	mov	eax, ebp
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402cb0

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
	mov	r14, rdi
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [rsp], rax
	mov	al, byte ptr [r14]
	xor	r12d, r12d
	jmp	.label_118
	nop	
.label_102:
	mov	al, byte ptr [r14 + 1]
	inc	r14
.label_118:
	test	al, al
	je	.label_114
	movsx	edi, al
	cmp	edi, 0x5c
	je	.label_125
	cmp	edi, 0x25
	jne	.label_101
	lea	r15, [r14 + 1]
	mov	esi, OFFSET FLAT:printf_flags
	mov	rdi, r15
	call	strspn
	lea	rbp, [r14 + rax]
	lea	rdi, [r14 + rax + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rax + rbp + 1]
	cmp	byte ptr [rax + rbp + 1], 0x2e
	jne	.label_111
	lea	rdi, [rbx + 1]
	mov	esi, OFFSET FLAT:digits
	call	strspn
	lea	rbx, [rbx + rax + 1]
.label_111:
	mov	rbp, rbx
	sub	rbp, r15
	movsx	r13d, byte ptr [rbx]
	lea	r15, [rbp + 1]
	mov	rdi, qword ptr [rsp]
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	cmp	r13d, 0x25
	mov	r14, rbx
	je	.label_123
	test	r13d, r13d
	jne	.label_124
	lea	r14, [rbx - 1]
.label_123:
	test	rbp, rbp
	jne	.label_100
	mov	edi, 0x25
	call	putchar_unlocked
	jmp	.label_102
	nop	
.label_125:
	mov	al,  byte ptr [byte ptr [rip + interpret_backslash_escapes]]
	test	al, al
	je	.label_106
	movsx	edi, byte ptr [r14 + 1]
	mov	eax, edi
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_109
	add	edi, -0x30
	mov	eax, 2
	nop	word ptr cs:[rax + rax]
.label_117:
	movsx	ecx, byte ptr [r14 + rax]
	mov	edx, ecx
	and	dl, 0xf8
	cmp	dl, 0x30
	jne	.label_116
	lea	edi, [rcx + rdi*8 - 0x30]
	inc	rax
	lea	ecx, [rax - 1]
	cmp	ecx, 3
	jl	.label_117
.label_116:
	add	r14, rax
	call	putchar_unlocked
	dec	r14
	jmp	.label_102
.label_124:
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	mov	edx, r13d
	mov	ecx, dword ptr [rsp + 0xc]
	mov	r8, qword ptr [rsp + 0x10]
	mov	r9, qword ptr [rsp + 0x20]
	call	qword ptr [rsp + 0x18]
	and	r12b, 1
	or	r12b, al
	jmp	.label_104
.label_109:
	cmp	dil, 0x78
	jne	.label_107
	movsx	r15d, byte ptr [r14 + 2]
	mov	edi, r15d
	call	to_uchar
	movzx	ebx, al
	call	__ctype_b_loc
	mov	r13, rax
	mov	rax, qword ptr [r13]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	jne	.label_112
.label_107:
	lea	rbx, [r14 + 1]
	mov	al, byte ptr [rbx]
	test	al, al
	je	.label_115
	movsx	edi, al
	call	print_esc_char
.label_104:
	mov	r14, rbx
	jmp	.label_102
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_106:
	mov	edi, 0x5c
	call	putchar_unlocked
	jmp	.label_102
.label_112:
	mov	eax, r15d
	add	al, 0x9f
	cmp	al, 5
	ja	.label_103
	add	r15d, -0x57
	jmp	.label_110
.label_103:
	mov	eax, r15d
	add	al, 0xbf
	cmp	al, 5
	ja	.label_108
	add	r15d, -0x37
	jmp	.label_110
.label_108:
	add	r15d, -0x30
.label_110:
	movsx	ebx, byte ptr [r14 + 3]
	mov	edi, ebx
	call	to_uchar
	movzx	eax, al
	mov	rcx, qword ptr [r13]
	test	byte ptr [rcx + rax*2 + 1], 0x10
	jne	.label_105
	add	r14, 2
	jmp	.label_99
.label_105:
	shl	r15d, 4
	mov	eax, ebx
	add	al, 0x9f
	cmp	al, 5
	ja	.label_122
	add	ebx, -0x57
	jmp	.label_119
.label_122:
	mov	eax, ebx
	add	al, 0xbf
	cmp	al, 5
	ja	.label_121
	add	ebx, -0x37
	jmp	.label_119
.label_121:
	add	ebx, -0x30
.label_119:
	add	r14, 3
	add	r15d, ebx
.label_99:
	mov	edi, r15d
	nop	word ptr cs:[rax + rax]
.label_101:
	call	putchar_unlocked
	jmp	.label_102
.label_114:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + trailing_delim]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	and	r12b, 1
	mov	eax, r12d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_100:
	mov	al, byte ptr [rbx]
	mov	rbx, qword ptr [rsp]
	mov	byte ptr [rbx + rbp + 1], al
	mov	byte ptr [rbx + rbp + 2], 0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402f90

	.globl print_statfs
	.type print_statfs, @function
print_statfs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	add	edx, -0x53
	cmp	edx, 0x21
	ja	.label_128
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_131]]
.label_1280:
	mov	rdx, qword ptr [r9 + 0x48]
	test	rdx, rdx
	jne	.label_132
.label_1290:
	mov	rdx, qword ptr [r9 + 8]
	jmp	.label_132
.label_1281:
	mov	rdi, r9
	call	human_fstype
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	jmp	.label_129
.label_128:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0x3f
	call	fputc_unlocked
	jmp	.label_129
.label_1282:
	mov	rdx, qword ptr [r9 + 0x20]
	jmp	.label_126
.label_1283:
	mov	rdx, qword ptr [r9 + 0x10]
	jmp	.label_126
.label_1284:
	mov	rdx, qword ptr [r9 + 0x28]
	jmp	.label_132
.label_1285:
	mov	rdx, qword ptr [r9 + 0x30]
	jmp	.label_126
.label_1286:
	mov	rdx, qword ptr [r9 + 0x18]
.label_126:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_int
	jmp	.label_129
.label_1287:
	add	r9, 0x3c
	xor	ecx, ecx
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	eax, dword ptr [r9]
	shl	rax, cl
	or	rdx, rax
	add	r9, -4
	add	rcx, 0x20
	cmp	rcx, 0x40
	jne	.label_130
	jmp	.label_127
.label_1288:
	mov	rdx, qword ptr [r9 + 0x40]
.label_132:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint
	jmp	.label_129
.label_1289:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r8
	call	out_string
	jmp	.label_129
.label_1291:
	mov	rdx, qword ptr [r9]
.label_127:
	mov	rdi, rbx
	mov	rsi, r14
	call	out_uint_x
.label_129:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403090

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4030a0

	.globl print_esc_char
	.type print_esc_char, @function
print_esc_char:
	push	rbx
	mov	ebx, edi
	lea	eax, [rbx - 0x22]
	cmp	eax, 0x54
	ja	.label_133
	jmp	qword ptr [word ptr [+ (rax * 8) + label_136]]
.label_1371:
	mov	bl, 7
	jmp	.label_134
.label_133:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	jmp	.label_134
.label_1372:
	mov	bl, 8
	jmp	.label_134
.label_1373:
	mov	bl, 0x1b
	jmp	.label_134
.label_1374:
	mov	bl, 0xc
	jmp	.label_134
.label_1375:
	mov	bl, 0xa
	jmp	.label_134
.label_1376:
	mov	bl, 0xd
	jmp	.label_134
.label_1377:
	mov	bl, 9
	jmp	.label_134
.label_1378:
	mov	bl, 0xb
.label_134:
	movsx	edi, bl
	pop	rbx
	jmp	putchar_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x403100

	.globl out_string
	.type out_string, @function
out_string:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_137
	mov	ecx, OFFSET FLAT:label_138
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403140

	.globl out_uint_x
	.type out_uint_x, @function
out_uint_x:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_139
	mov	ecx, OFFSET FLAT:label_140
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl out_uint
	.type out_uint, @function
out_uint:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_141
	mov	ecx, OFFSET FLAT:label_142
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031c0

	.globl human_fstype
	.type human_fstype, @function
human_fstype:
	push	rbx
	mov	ebx, OFFSET FLAT:label_209
	mov	r8, qword ptr [rdi]
	cmp	r8, 0x2fc12fc0
	jg	.label_210
	cmp	r8, 0xadfe
	jle	.label_362
	cmp	r8, 0x13111a7
	jg	.label_368
	cmp	r8, 0x1021993
	jg	.label_372
	cmp	r8, 0x11953
	jle	.label_365
	cmp	r8, 0x414a52
	jle	.label_146
	cmp	r8, 0x414a53
	je	.label_150
	cmp	r8, 0xc0ffee
	je	.label_157
	cmp	r8, 0xc36400
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_169
	jmp	.label_145
.label_210:
	cmp	r8, 0x65735542
	jle	.label_177
	mov	eax, 0x858458f5
	cmp	r8, rax
	jle	.label_183
	mov	eax, 0xc97e8167
	cmp	r8, rax
	jg	.label_189
	mov	eax, 0xaad7aae9
	cmp	r8, rax
	jg	.label_195
	mov	eax, 0x958458f5
	cmp	r8, rax
	jg	.label_204
	mov	eax, 0x858458f6
	cmp	r8, rax
	je	.label_213
	mov	eax, 0x9123683e
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_266
	jmp	.label_145
.label_362:
	cmp	r8, 0x482a
	jg	.label_229
	cmp	r8, 0x2467
	jg	.label_238
	cmp	r8, 0x1372
	jle	.label_246
	lea	rax, [r8 - 0x1373]
	cmp	rax, 0x1c
	ja	.label_251
	jmp	qword ptr [word ptr [+ (rax * 8) + label_260]]
.label_1365:
	mov	ebx, OFFSET FLAT:label_264
	jmp	.label_145
.label_177:
	cmp	r8, 0x541900ff
	jg	.label_269
	cmp	r8, 0x47504652
	jle	.label_276
	cmp	r8, 0x5346414e
	jg	.label_283
	cmp	r8, 0x52654972
	jg	.label_237
	cmp	r8, 0x47504653
	je	.label_244
	cmp	r8, 0x50495045
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_292
	jmp	.label_145
.label_183:
	cmp	r8, 0x73636672
	jle	.label_369
	cmp	r8, 0x7461636e
	jg	.label_310
	cmp	r8, 0x73727278
	jg	.label_317
	cmp	r8, 0x73636673
	je	.label_322
	cmp	r8, 0x73717368
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_333
	jmp	.label_145
.label_229:
	cmp	r8, 0x6968
	jle	.label_336
	cmp	r8, 0x9f9f
	jg	.label_342
	cmp	r8, 0x72b5
	jg	.label_172
	cmp	r8, 0x6969
	je	.label_357
	cmp	r8, 0x7275
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_182
	jmp	.label_145
.label_269:
	cmp	r8, 0x6165676b
	jle	.label_314
	cmp	r8, 0x62656571
	jg	.label_376
	cmp	r8, 0x62646575
	jg	.label_143
	cmp	r8, 0x6165676c
	je	.label_148
	cmp	r8, 0x61756673
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_160
	jmp	.label_145
.label_368:
	cmp	r8, 0x15013345
	jg	.label_164
	cmp	r8, 0xbad1de9
	jle	.label_171
	cmp	r8, 0x11307853
	jg	.label_181
	cmp	r8, 0xbad1dea
	je	.label_186
	cmp	r8, 0xbd00bd0
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_228
	jmp	.label_145
.label_372:
	cmp	r8, 0x12fd16c
	jg	.label_205
	cmp	r8, 0x1021994
	je	.label_295
	cmp	r8, 0x1021997
	je	.label_220
	cmp	r8, 0x1161970
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_326
	jmp	.label_145
.label_189:
	mov	eax, 0xf97cff8b
	cmp	r8, rax
	jg	.label_236
	mov	eax, 0xde5e81e3
	cmp	r8, rax
	jg	.label_231
	mov	eax, 0xc97e8168
	cmp	r8, rax
	je	.label_239
	mov	eax, 0xcafe4a11
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_347
	jmp	.label_145
.label_238:
	cmp	r8, 0x3fff
	jle	.label_272
	cmp	r8, 0x4005
	jg	.label_168
	cmp	r8, 0x4000
	je	.label_175
	cmp	r8, 0x4004
	jne	.label_153
.label_175:
	mov	ebx, OFFSET FLAT:label_214
	jmp	.label_145
.label_276:
	cmp	r8, 0x42494e4c
	jle	.label_294
	cmp	r8, 0x453dcd27
	jg	.label_299
	cmp	r8, 0x42494e4d
	je	.label_281
	cmp	r8, 0x43415d53
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_206
	jmp	.label_145
.label_369:
	cmp	r8, 0x68191121
	jle	.label_321
	cmp	r8, 0x6e667363
	jg	.label_324
	cmp	r8, 0x68191122
	je	.label_330
	cmp	r8, 0x6b414653
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_312
	jmp	.label_145
.label_336:
	cmp	r8, 0x4d59
	jle	.label_163
	cmp	r8, 0x564b
	jg	.label_355
	cmp	r8, 0x4d5a
	je	.label_361
	cmp	r8, 0x517b
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_309
	jmp	.label_145
.label_314:
	cmp	r8, 0x58465341
	jle	.label_219
	cmp	r8, 0x5dca2df4
	jg	.label_373
	cmp	r8, 0x58465342
	je	.label_147
	cmp	r8, 0x5a3c69f0
	je	.label_145
	jmp	.label_153
.label_164:
	cmp	r8, 0x1badfacd
	jle	.label_161
	cmp	r8, 0x28cd3d44
	jg	.label_167
	cmp	r8, 0x1badface
	je	.label_176
	cmp	r8, 0x24051905
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_166
	jmp	.label_145
.label_365:
	cmp	r8, 0xef52
	jg	.label_190
	cmp	r8, 0xadff
	je	.label_200
	cmp	r8, 0xef51
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_215
	jmp	.label_145
.label_195:
	mov	eax, 0xbacbacbb
	cmp	r8, rax
	jg	.label_221
	mov	eax, 0xaad7aaea
	cmp	r8, rax
	je	.label_224
	mov	eax, 0xabba1974
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_241
	jmp	.label_145
.label_283:
	cmp	r8, 0x5346544d
	jg	.label_247
	cmp	r8, 0x5346414f
	je	.label_254
	cmp	r8, 0x53464846
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_267
	jmp	.label_145
.label_310:
	cmp	r8, 0x794c762f
	jg	.label_273
	cmp	r8, 0x7461636f
	je	.label_279
	cmp	r8, 0x74726163
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_287
	jmp	.label_145
.label_342:
	cmp	r8, 0x9fa1
	jg	.label_290
	cmp	r8, 0x9fa0
	je	.label_297
	cmp	r8, 0x9fa1
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_306
	jmp	.label_145
.label_376:
	cmp	r8, 0x6462671f
	jg	.label_311
	cmp	r8, 0x62656572
	je	.label_318
	cmp	r8, 0x63677270
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_327
	jmp	.label_145
.label_205:
	lea	rax, [r8 - 0x12ff7b4]
	cmp	rax, 3
	ja	.label_332
	jmp	qword ptr [word ptr [+ (rax * 8) + label_358]]
.label_1207:
	mov	ebx, OFFSET FLAT:label_375
	jmp	.label_145
.label_236:
	mov	eax, 0xfe534d41
	cmp	r8, rax
	jg	.label_350
	mov	eax, 0xf97cff8c
	cmp	r8, rax
	je	.label_356
	mov	eax, 0xf995e849
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_289
	jmp	.label_145
.label_246:
	cmp	r8, 0x2f
	je	.label_235
	cmp	r8, 0x187
	je	.label_339
	cmp	r8, 0x7c0
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_196
	jmp	.label_145
.label_171:
	cmp	r8, 0x13111a8
	je	.label_151
	cmp	r8, 0x7655821
	je	.label_340
	cmp	r8, 0x9041934
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_152
	jmp	.label_145
.label_272:
	cmp	r8, 0x2468
	je	.label_178
	cmp	r8, 0x2478
	je	.label_184
	cmp	r8, 0x3434
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_194
	jmp	.label_145
.label_294:
	cmp	r8, 0x2fc12fc1
	je	.label_202
	cmp	r8, 0x3153464a
	je	.label_211
	cmp	r8, 0x42465331
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_348
	jmp	.label_145
.label_321:
	cmp	r8, 0x65735543
	je	.label_225
	cmp	r8, 0x65735546
	je	.label_233
	cmp	r8, 0x67596969
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_250
	jmp	.label_145
.label_163:
	cmp	r8, 0x482b
	je	.label_253
	cmp	r8, 0x4858
	je	.label_259
	cmp	r8, 0x4d44
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_379
	jmp	.label_145
.label_219:
	cmp	r8, 0x54190100
	je	.label_278
	cmp	r8, 0x565a4653
	je	.label_284
	cmp	r8, 0x58295829
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_291
	jmp	.label_145
.label_161:
	cmp	r8, 0x15013346
	je	.label_296
	cmp	r8, 0x19800202
	je	.label_302
	cmp	r8, 0x19830326
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_179
	jmp	.label_145
.label_146:
	cmp	r8, 0x11954
	je	.label_278
	cmp	r8, 0x27e0eb
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_316
	jmp	.label_145
.label_204:
	mov	eax, 0x958458f6
	cmp	r8, rax
	je	.label_331
	mov	eax, 0xa501fcf5
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_345
	jmp	.label_145
.label_237:
	cmp	r8, 0x52654973
	je	.label_353
	cmp	r8, 0x5346314d
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_255
	jmp	.label_145
.label_317:
	cmp	r8, 0x73727279
	je	.label_366
	cmp	r8, 0x73757245
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_351
	jmp	.label_145
.label_172:
	cmp	r8, 0x72b6
	je	.label_380
	cmp	r8, 0x9660
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_214
	jmp	.label_145
.label_143:
	cmp	r8, 0x62646576
	je	.label_158
	cmp	r8, 0x62656570
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_363
	jmp	.label_145
.label_181:
	cmp	r8, 0x11307854
	je	.label_337
	cmp	r8, 0x13661366
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_270
	jmp	.label_145
.label_231:
	mov	eax, 0xde5e81e4
	cmp	r8, rax
	je	.label_192
	mov	eax, 0xf2f52010
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_320
	jmp	.label_145
.label_168:
	cmp	r8, 0x4006
	je	.label_216
	cmp	r8, 0x4244
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_226
	jmp	.label_145
.label_299:
	cmp	r8, 0x453dcd28
	je	.label_165
	cmp	r8, 0x45584653
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_248
	jmp	.label_145
.label_324:
	cmp	r8, 0x6e667364
	je	.label_252
	cmp	r8, 0x6e736673
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_155
	jmp	.label_145
.label_355:
	cmp	r8, 0x564c
	je	.label_271
	cmp	r8, 0x5df5
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_208
	jmp	.label_145
.label_373:
	cmp	r8, 0x5dca2df5
	je	.label_286
	cmp	r8, 0x61636673
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_307
	jmp	.label_145
.label_167:
	cmp	r8, 0x28cd3d45
	je	.label_334
	cmp	r8, 0x2bad1dea
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_243
	jmp	.label_145
.label_190:
	cmp	r8, 0xef53
	je	.label_315
	cmp	r8, 0xf15f
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_277
	jmp	.label_145
.label_221:
	mov	eax, 0xbacbacbc
	cmp	r8, rax
	je	.label_328
	mov	eax, 0xbeefdead
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_341
	jmp	.label_145
.label_247:
	cmp	r8, 0x5346544e
	je	.label_349
	cmp	r8, 0x534f434b
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_360
	jmp	.label_145
.label_273:
	cmp	r8, 0x794c7630
	je	.label_364
	cmp	r8, 0x7c7c6673
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_371
	jmp	.label_145
.label_290:
	cmp	r8, 0x9fa2
	je	.label_377
	cmp	r8, 0xadf5
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_199
	jmp	.label_145
.label_311:
	cmp	r8, 0x64626720
	je	.label_156
	cmp	r8, 0x64646178
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_303
	jmp	.label_145
.label_350:
	mov	eax, 0xfe534d42
	cmp	r8, rax
	je	.label_174
	mov	eax, 0xff534d42
	cmp	r8, rax
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_265
	jmp	.label_145
.label_278:
	mov	ebx, OFFSET FLAT:label_193
	jmp	.label_145
.label_295:
	mov	ebx, OFFSET FLAT:label_197
	jmp	.label_145
.label_220:
	mov	ebx, OFFSET FLAT:label_258
	jmp	.label_145
.label_251:
	cmp	r8, 0x1cd1
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_218
	jmp	.label_145
.label_1366:
	mov	ebx, OFFSET FLAT:label_343
	jmp	.label_145
.label_1367:
	mov	ebx, OFFSET FLAT:label_370
	jmp	.label_145
.label_1368:
	mov	ebx, OFFSET FLAT:label_230
	jmp	.label_145
.label_150:
	mov	ebx, OFFSET FLAT:label_354
	jmp	.label_145
.label_157:
	mov	ebx, OFFSET FLAT:label_242
	jmp	.label_145
.label_213:
	mov	ebx, OFFSET FLAT:label_249
	jmp	.label_145
.label_244:
	mov	ebx, OFFSET FLAT:label_282
	jmp	.label_145
.label_322:
	mov	ebx, OFFSET FLAT:label_257
	jmp	.label_145
.label_357:
	mov	ebx, OFFSET FLAT:label_262
	jmp	.label_145
.label_148:
	mov	ebx, OFFSET FLAT:label_268
	jmp	.label_145
.label_186:
	mov	ebx, OFFSET FLAT:label_274
	jmp	.label_145
.label_239:
	mov	ebx, OFFSET FLAT:label_170
	jmp	.label_145
.label_281:
	mov	ebx, OFFSET FLAT:label_203
	jmp	.label_145
.label_330:
	mov	ebx, OFFSET FLAT:label_285
	jmp	.label_145
.label_361:
	mov	ebx, OFFSET FLAT:label_288
	jmp	.label_145
.label_147:
	mov	ebx, OFFSET FLAT:label_293
	jmp	.label_145
.label_176:
	mov	ebx, OFFSET FLAT:label_298
	jmp	.label_145
.label_200:
	mov	ebx, OFFSET FLAT:label_301
	jmp	.label_145
.label_224:
	mov	ebx, OFFSET FLAT:label_305
	jmp	.label_145
.label_254:
	mov	ebx, OFFSET FLAT:label_308
	jmp	.label_145
.label_279:
	mov	ebx, OFFSET FLAT:label_313
	jmp	.label_145
.label_297:
	mov	ebx, OFFSET FLAT:label_319
	jmp	.label_145
.label_318:
	mov	ebx, OFFSET FLAT:label_323
	jmp	.label_145
.label_356:
	mov	ebx, OFFSET FLAT:label_325
	jmp	.label_145
.label_235:
	mov	ebx, OFFSET FLAT:label_329
	jmp	.label_145
.label_339:
	mov	ebx, OFFSET FLAT:label_335
	jmp	.label_145
.label_151:
	mov	ebx, OFFSET FLAT:label_338
	jmp	.label_145
.label_340:
	mov	ebx, OFFSET FLAT:label_344
	jmp	.label_145
.label_178:
	mov	ebx, OFFSET FLAT:label_352
	jmp	.label_145
.label_184:
	mov	ebx, OFFSET FLAT:label_201
	jmp	.label_145
.label_202:
	mov	ebx, OFFSET FLAT:label_359
	jmp	.label_145
.label_211:
	mov	ebx, OFFSET FLAT:label_263
	jmp	.label_145
.label_225:
	mov	ebx, OFFSET FLAT:label_367
	jmp	.label_145
.label_233:
	mov	ebx, OFFSET FLAT:label_222
	jmp	.label_145
.label_253:
	mov	ebx, OFFSET FLAT:label_374
	jmp	.label_145
.label_259:
	mov	ebx, OFFSET FLAT:label_378
	jmp	.label_145
.label_284:
	mov	ebx, OFFSET FLAT:label_144
	jmp	.label_145
.label_296:
	mov	ebx, OFFSET FLAT:label_149
	jmp	.label_145
.label_302:
	mov	ebx, OFFSET FLAT:label_154
	jmp	.label_145
.label_331:
	mov	ebx, OFFSET FLAT:label_159
	jmp	.label_145
.label_353:
	mov	ebx, OFFSET FLAT:label_162
	jmp	.label_145
.label_366:
	mov	ebx, OFFSET FLAT:label_300
	jmp	.label_145
.label_380:
	mov	ebx, OFFSET FLAT:label_173
	jmp	.label_145
.label_158:
	mov	ebx, OFFSET FLAT:label_180
	jmp	.label_145
.label_337:
	mov	ebx, OFFSET FLAT:label_185
	jmp	.label_145
.label_192:
	mov	ebx, OFFSET FLAT:label_188
	jmp	.label_145
.label_216:
	mov	ebx, OFFSET FLAT:label_191
	jmp	.label_145
.label_165:
	mov	ebx, OFFSET FLAT:label_198
	jmp	.label_145
.label_252:
	mov	ebx, OFFSET FLAT:label_261
	jmp	.label_145
.label_271:
	mov	ebx, OFFSET FLAT:label_212
	jmp	.label_145
.label_286:
	mov	ebx, OFFSET FLAT:label_217
	jmp	.label_145
.label_334:
	mov	ebx, OFFSET FLAT:label_346
	jmp	.label_145
.label_315:
	mov	ebx, OFFSET FLAT:label_207
	jmp	.label_145
.label_328:
	mov	ebx, OFFSET FLAT:label_223
	jmp	.label_145
.label_349:
	mov	ebx, OFFSET FLAT:label_227
	jmp	.label_145
.label_364:
	mov	ebx, OFFSET FLAT:label_232
	jmp	.label_145
.label_377:
	mov	ebx, OFFSET FLAT:label_187
	jmp	.label_145
.label_156:
	mov	ebx, OFFSET FLAT:label_240
	jmp	.label_145
.label_174:
	mov	ebx, OFFSET FLAT:label_245
	jmp	.label_145
.label_332:
	cmp	r8, 0x12fd16d
	jne	.label_153
	mov	ebx, OFFSET FLAT:label_304
	jmp	.label_145
.label_153:
	mov	ebx, OFFSET FLAT:human_fstype.buf
	mov	edi, OFFSET FLAT:human_fstype.buf
	mov	esi, 1
	mov	edx, 0x1d
	mov	ecx, OFFSET FLAT:label_256
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_145
.label_1208:
	mov	ebx, OFFSET FLAT:label_275
	jmp	.label_145
.label_1209:
	mov	ebx, OFFSET FLAT:label_234
	jmp	.label_145
.label_1210:
	mov	ebx, OFFSET FLAT:label_280
.label_145:
	mov	rax, rbx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f20

	.globl out_int
	.type out_int, @function
out_int:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_381
	mov	ecx, OFFSET FLAT:label_382
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f60

	.globl make_format
	.type make_format, @function
make_format:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	lea	r15, [rdi + 1]
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rdi + rsi]
	cmp	rsi, 2
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, r15
	jl	.label_383
.label_386:
	movzx	r12d, byte ptr [rbx]
	movsx	ebp, r12b
	mov	edi, OFFSET FLAT:printf_flags
	mov	edx, 8
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_383
	mov	rdi, r13
	mov	esi, ebp
	call	strchr
	test	rax, rax
	je	.label_387
	mov	byte ptr [r15], r12b
	inc	r15
.label_387:
	inc	rbx
	cmp	rbx, r14
	jb	.label_386
.label_383:
	cmp	rbx, r14
	jae	.label_385
	mov	rax, qword ptr [rsp + 8]
	sub	rax, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	add	rdx, rax
	mov	rax, r15
	nop	word ptr cs:[rax + rax]
.label_384:
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	mov	byte ptr [rax], cl
	inc	rax
	cmp	r14, rbx
	jne	.label_384
	add	r15, rdx
.label_385:
	mov	rsi, qword ptr [rsp]
	mov	rdi, r15
	call	strcpy
	add	rsp, 0x18
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
	#Procedure 0x404020

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
	mov	r13, r8
	mov	r14, rsi
	mov	r15, rdi
	add	edx, -0x41
	cmp	edx, 0x39
	ja	.label_395
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_398]]
.label_1213:
	mov	rdi, rbx
	call	human_access
	mov	edx, OFFSET FLAT:human_access.modebuf
	jmp	.label_393
.label_1214:
	mov	edx, 0x200
	jmp	.label_396
.label_1215:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	call	out_file_context
	mov	r12b, al
	jmp	.label_392
.label_1216:
	mov	rdx, qword ptr [rbx]
	jmp	.label_402
.label_395:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, 0x3f
	call	fputc_unlocked
	jmp	.label_389
.label_1217:
	mov	rdi, rbx
	call	file_type
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	jmp	.label_394
.label_1218:
	mov	edi, dword ptr [rbx + 0x20]
	call	getgrgid
	jmp	.label_397
.label_1219:
	xor	r12d, r12d
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, r13
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_392
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rdi, r13
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_400
	xor	r12d, r12d
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_388
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	call	get_quoting_style
	mov	edi, eax
	mov	rsi, rbx
	call	quotearg_style
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_string
	mov	rdi, rbx
	call	free
	jmp	.label_392
.label_1220:
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_minor
	jmp	.label_399
.label_1221:
	mov	edi, dword ptr [rbx + 0x1c]
	call	getpwuid
.label_397:
	mov	edx, OFFSET FLAT:label_401
	test	rax, rax
	je	.label_393
	mov	rdx, qword ptr [rax]
	jmp	.label_393
.label_1222:
	mov	rdi, rbx
	call	get_birthtime
	mov	rdi, rax
	mov	rsi, rdx
	call	neg_to_zero
	jmp	.label_390
.label_1223:
	mov	rdi, rbx
	call	get_stat_atime
	jmp	.label_390
.label_1224:
	mov	rdi, rbx
	call	get_stat_mtime
	jmp	.label_390
.label_1225:
	mov	rdi, rbx
	call	get_stat_ctime
.label_390:
	mov	rcx, rdx
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	out_epoch_sec
	jmp	.label_389
.label_1226:
	mov	edx, dword ptr [rbx + 0x18]
	and	edx, 0xfff
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint_o
	jmp	.label_389
.label_1227:
	mov	rdx, qword ptr [rbx + 0x40]
	jmp	.label_396
.label_1228:
	mov	rdx, qword ptr [rbx]
	jmp	.label_396
.label_1229:
	mov	edx, dword ptr [rbx + 0x18]
	jmp	.label_402
.label_1230:
	mov	edx, dword ptr [rbx + 0x20]
	jmp	.label_396
.label_1231:
	mov	rdx, qword ptr [rbx + 0x10]
	jmp	.label_396
.label_1232:
	mov	rdx, qword ptr [rbx + 8]
	jmp	.label_396
.label_1233:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, rbx
	call	out_mount_point
	mov	r12b, al
	jmp	.label_392
.label_1234:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	jmp	.label_394
.label_1235:
	mov	rax, qword ptr [rbx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	jmp	.label_396
.label_1236:
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r15
	mov	rsi, r14
	call	out_int
	jmp	.label_389
.label_1237:
	mov	rdi, qword ptr [rbx + 0x28]
	call	gnu_dev_major
.label_399:
	mov	edx, eax
.label_402:
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint_x
	jmp	.label_389
.label_1238:
	mov	edx, dword ptr [rbx + 0x1c]
.label_396:
	mov	rdi, r15
	mov	rsi, r14
	call	out_uint
	jmp	.label_389
.label_1239:
	mov	rdi, rbx
	call	get_birthtime
	test	rdx, rdx
	jns	.label_391
	mov	edx, OFFSET FLAT:label_137
	jmp	.label_393
.label_1240:
	mov	rdi, rbx
	call	get_stat_atime
	jmp	.label_391
.label_1241:
	mov	rdi, rbx
	call	get_stat_mtime
	jmp	.label_391
.label_1242:
	mov	rdi, rbx
	call	get_stat_ctime
.label_391:
	mov	rdi, rax
	mov	rsi, rdx
	call	human_time
	mov	edx, OFFSET FLAT:human_time.str
.label_393:
	mov	rdi, r15
	mov	rsi, r14
.label_394:
	call	out_string
.label_389:
	xor	r12d, r12d
.label_392:
	mov	eax, r12d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_400:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_392
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl out_uint_o
	.type out_uint_o, @function
out_uint_o:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_139
	mov	ecx, OFFSET FLAT:label_404
	call	make_format
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404370

	.globl human_access
	.type human_access, @function
human_access:
	push	rax
	mov	esi, OFFSET FLAT:human_access.modebuf
	call	filemodestring
	mov	byte ptr [byte ptr [rip + label_405]],  0
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404390

	.globl out_mount_point
	.type out_mount_point, @function
out_mount_point:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	al,  byte ptr [byte ptr [rip + follow_links]]
	test	al, al
	jne	.label_410
	mov	eax, 0xf000
	and	eax, dword ptr [r13 + 0x18]
	cmp	eax, 0xa000
	je	.label_407
.label_410:
	mov	rdi, r12
	call	canonicalize_file_name
	mov	rbp, rax
	test	rbp, rbp
	je	.label_408
	mov	rdi, rbp
	call	find_bind_mount
	mov	rbx, rax
	mov	rdi, rbp
	call	free
	xor	ebp, ebp
	test	rbx, rbx
	je	.label_407
	xor	r12d, r12d
	jmp	.label_409
.label_407:
	mov	rdi, r12
	mov	rsi, r13
	call	find_mount_point
	mov	r13, rax
	mov	r12b, 1
	xor	ebx, ebx
	test	r13, r13
	mov	ebp, 0
	je	.label_409
	mov	rdi, r13
	call	find_bind_mount
	mov	rbx, rax
	xor	r12d, r12d
	mov	rbp, r13
	jmp	.label_409
.label_408:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	r12b, 1
	xor	ebp, ebp
.label_409:
	test	rbp, rbp
	mov	edx, OFFSET FLAT:label_406
	cmovne	rdx, rbp
	test	rbx, rbx
	cmovne	rdx, rbx
	mov	rdi, r15
	mov	rsi, r14
	call	out_string
	mov	rdi, rbp
	call	free
	mov	eax, r12d
	add	rsp, 8
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
	#Procedure 0x4044a0

	.globl get_birthtime
	.type get_birthtime, @function
get_birthtime:
	jmp	get_stat_birthtime
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044b0

	.globl human_time
	.type human_time, @function
human_time:
	push	rbx
	sub	rsp, 0x60
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	cmp	qword ptr [word ptr [rip + human_time.tz]],  0
	jne	.label_412
	mov	edi, OFFSET FLAT:label_413
	call	getenv
	mov	rdi, rax
	call	tzalloc
	mov	qword ptr [word ptr [rip + human_time.tz]],  rax
.label_412:
	mov	ebx, dword ptr [rsp + 8]
	mov	rdi,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x28]
	call	localtime_rz
	test	rax, rax
	je	.label_415
	mov	r8,  qword ptr [word ptr [rip + human_time.tz]]
	lea	rcx, [rsp + 0x28]
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 0x3d
	mov	edx, OFFSET FLAT:label_417
	mov	r9d, ebx
	call	nstrftime
	jmp	.label_416
.label_415:
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 0x10]
	call	timetostr
	mov	r8, rax
	mov	edi, OFFSET FLAT:human_time.str
	mov	esi, 1
	mov	edx, 0x3d
	mov	ecx, OFFSET FLAT:label_414
	xor	eax, eax
	mov	r9d, ebx
	call	__sprintf_chk
.label_416:
	add	rsp, 0x60
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404560

	.globl out_epoch_sec
	.type out_epoch_sec, @function
out_epoch_sec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp], rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	esi, 0x2e
	mov	rdx, r13
	call	memchr
	mov	rbp, rax
	xor	r15d, r15d
	test	rbp, rbp
	mov	qword ptr [rsp + 8], rbx
	je	.label_419
	mov	qword ptr [rsp + 0x10], r14
	mov	r14, rbp
	sub	r14, rbx
	mov	byte ptr [rbx + r13], 0
	movsx	eax, byte ptr [rbp + 1]
	add	eax, -0x30
	mov	r12d, 9
	cmp	eax, 9
	ja	.label_431
	lea	rdi, [rbp + 1]
	xor	r15d, r15d
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	cmp	rax, 0x7fffffff
	mov	r12d, 0x7fffffff
	cmovle	r12d, eax
	test	r12d, r12d
	je	.label_422
.label_431:
	movsx	eax, byte ptr [rbp - 1]
	add	eax, -0x30
	xor	r15d, r15d
	cmp	eax, 9
	ja	.label_423
	mov	byte ptr [rbp], 0
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_421:
	movsx	eax, byte ptr [rbp + rbx - 2]
	add	eax, -0x30
	dec	rbx
	cmp	eax, 0xa
	jb	.label_421
	lea	r13, [rbp + rbx]
	xor	esi, esi
	mov	edx, 0xa
	mov	rdi, r13
	call	strtol
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovle	rcx, rax
	mov	r15d, 0x7fffffff
	cmovle	r15d, eax
	cmp	r15d, 2
	jl	.label_423
	xor	eax, eax
	cmp	byte ptr [rbp + rbx], 0x30
	sete	al
	add	r13, rax
	mov	r14, r13
	sub	r14, qword ptr [rsp + 8]
	mov	rdx,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rcx, ecx
	mov	esi, ecx
	sub	esi, edx
	cmp	rcx, rdx
	mov	r8d, 0
	cmova	r8d, esi
	cmp	r8d, 2
	jl	.label_423
	sub	r8d, r12d
	cmp	r8d, 2
	jl	.label_423
	xor	r14d, r14d
	mov	rcx, qword ptr [rsp + 8]
	cmp	r13, rcx
	mov	rdi, rcx
	jbe	.label_426
	dec	rax
	mov	rsi, qword ptr [rsp + 8]
	sub	rax, rsi
	add	rbp, rax
	lea	rcx, [rbx + rbp + 1]
	xor	eax, eax
	mov	rdx, rsi
	mov	rdi, rsi
	nop	word ptr cs:[rax + rax]
.label_435:
	movzx	ebx, byte ptr [rdx]
	cmp	bl, 0x2d
	jne	.label_428
	mov	al, 1
	jmp	.label_424
	nop	dword ptr [rax]
.label_428:
	mov	byte ptr [rdi], bl
	inc	rdi
.label_424:
	inc	rdx
	dec	rcx
	jne	.label_435
	mov	r14, rdi
	sub	r14, qword ptr [rsp + 8]
	xor	ecx, ecx
	test	al, 1
	jne	.label_420
.label_426:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_439
	xor	eax, eax
	call	__sprintf_chk
	movsxd	rcx, eax
.label_420:
	add	r14, rcx
.label_423:
	mov	rdi, qword ptr [rsp]
	mov	eax, 1
	cmp	r12d, 8
	mov	r13, r14
	mov	r14, qword ptr [rsp + 0x10]
	jle	.label_425
	jmp	.label_434
.label_419:
	xor	r12d, r12d
	jmp	.label_436
.label_422:
	mov	r13, r14
	xor	r12d, r12d
	mov	r14, qword ptr [rsp + 0x10]
.label_436:
	mov	rdi, qword ptr [rsp]
.label_425:
	mov	eax, 1
	mov	ecx, 9
.label_429:
	add	eax, eax
	lea	eax, [rax + rax*4]
	dec	ecx
	cmp	r12d, ecx
	jne	.label_429
.label_434:
	movsxd	rsi, eax
	mov	rax, rdi
	cqo	
	idiv	rsi
	mov	rbp, rax
	test	r14, r14
	jns	.label_427
	test	rdi, rdi
	je	.label_427
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
	add	r14, rdx
	je	.label_438
.label_427:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	mov	rdx, r14
	call	out_int
.label_432:
	test	r12d, r12d
	je	.label_437
	cmp	r12d, 0xa
	mov	ecx, 9
	cmovl	ecx, r12d
	sub	r12d, ecx
	xor	r9d, r9d
	test	eax, eax
	cmovs	eax, r9d
	sub	r15d, eax
	jle	.label_418
	mov	rax,  qword ptr [word ptr [rip + decimal_point_len]]
	movsxd	rdx, r15d
	cmp	rdx, rax
	jbe	.label_418
	sub	r15d, ecx
	sub	r15d, eax
	mov	r9d, r15d
.label_418:
	mov	rdx,  qword ptr [word ptr [rip + decimal_point]]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_433
	mov	eax, 0
	mov	r8d, ebp
	push	0
	push	r12
	call	__printf_chk
	add	rsp, 0x28
	jmp	.label_430
.label_437:
	add	rsp, 0x18
.label_430:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_438:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	out_minus_zero
	jmp	.label_432
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840

	.globl neg_to_zero
	.type neg_to_zero, @function
neg_to_zero:
	xor	edx, edx
	test	rsi, rsi
	cmovs	rdi, rdx
	cmovns	rdx, rsi
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl out_file_context
	.type out_file_context, @function
out_file_context:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	cmp	byte ptr [byte ptr [rip + follow_links]],  1
	jne	.label_440
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	getfilecon
	jmp	.label_442
.label_440:
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	lgetfilecon
.label_442:
	test	eax, eax
	js	.label_444
	xor	ebx, ebx
	jmp	.label_445
.label_444:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbp
	call	error
	mov	qword ptr [rsp + 8], 0
	mov	bl, 1
.label_445:
	mov	word ptr [r15 + r14], 0x73
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	edx, OFFSET FLAT:label_406
	cmovne	rdx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	call	__printf_chk
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_443
	call	freecon
.label_443:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404930

	.globl find_bind_mount
	.type find_bind_mount, @function
find_bind_mount:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r14, rdi
	mov	al,  byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]]
	test	al, al
	jne	.label_451
	xor	edi, edi
	call	read_file_system_list
	mov	qword ptr [word ptr [rip + find_bind_mount.mount_list]],  rax
	test	rax, rax
	jne	.label_447
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_450
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_452
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_447:
	mov	byte ptr [byte ptr [rip + find_bind_mount.tried_mount_list]],  1
.label_451:
	lea	rsi, [rsp + 0x98]
	mov	rdi, r14
	call	stat
	xor	r12d, r12d
	test	eax, eax
	jne	.label_448
	mov	rbx,  qword ptr [word ptr [rip + find_bind_mount.mount_list]]
	xor	r12d, r12d
	test	rbx, rbx
	je	.label_448
	xor	r12d, r12d
	lea	r15, [rsp + 8]
	nop	
.label_449:
	test	byte ptr [rbx + 0x28], 1
	je	.label_446
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax], 0x2f
	jne	.label_446
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	strcmp
	test	eax, eax
	jne	.label_446
	mov	rdi, qword ptr [rbx]
	mov	rsi, r15
	call	stat
	test	eax, eax
	jne	.label_446
	mov	rax, qword ptr [rsp + 0xa0]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_446
	mov	rax, qword ptr [rsp + 0x98]
	cmp	rax, qword ptr [rsp + 8]
	je	.label_453
	nop	dword ptr [rax + rax]
.label_446:
	mov	rbx, qword ptr [rbx + 0x30]
	test	rbx, rbx
	jne	.label_449
.label_448:
	mov	rax, r12
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_453:
	mov	r12, qword ptr [rbx]
	jmp	.label_448
	.section	.text
	.align	32
	#Procedure 0x404a30

	.globl timetostr
	.type timetostr, @function
timetostr:
	jmp	imaxtostr
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl out_minus_zero
	.type out_minus_zero, @function
out_minus_zero:
	push	rbx
	mov	rbx, rdi
	mov	edx, OFFSET FLAT:label_381
	mov	ecx, OFFSET FLAT:label_454
	call	make_format
	movsd	xmm0,  qword ptr [word ptr [rip + label_455]]
	mov	edi, 1
	mov	al, 1
	mov	rsi, rbx
	pop	rbx
	jmp	__printf_chk
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a70

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
	je	.label_459
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_461
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	jmp	.label_464
.label_459:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0x4000
	jne	.label_466
	lea	rdi, [rbp - 0xc0]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
	mov	rdi, r14
	call	chdir
	test	eax, eax
	jns	.label_473
	jmp	.label_457
.label_466:
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
	js	.label_457
	lea	rsi, [rbp - 0xc0]
	mov	edi, OFFSET FLAT:label_60
	call	stat
	test	eax, eax
	js	.label_468
.label_473:
	lea	rsi, [rbp - 0x150]
	mov	edi, OFFSET FLAT:label_463
	call	stat
	test	eax, eax
	js	.label_471
	lea	r14, [rbp - 0xc0]
	lea	rbx, [rbp - 0x150]
	nop	word ptr cs:[rax + rax]
.label_470:
	mov	rax, qword ptr [rbp - 0x150]
	cmp	rax, qword ptr [rbp - 0xc0]
	jne	.label_458
	mov	rax, qword ptr [rbp - 0x148]
	cmp	rax, qword ptr [rbp - 0xb8]
	je	.label_458
	mov	edi, OFFSET FLAT:label_463
	call	chdir
	test	eax, eax
	js	.label_462
	mov	edx, 0x90
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	edi, OFFSET FLAT:label_463
	mov	rsi, rbx
	call	stat
	test	eax, eax
	jns	.label_470
.label_471:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	jmp	.label_472
.label_457:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
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
	jmp	.label_464
.label_458:
	call	xgetcwd
	mov	r15, rax
	jmp	.label_465
.label_468:
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_467
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
	jmp	.label_465
.label_462:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
.label_472:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_463
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_465:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	lea	rdi, [rbp - 0x30]
	call	restore_cwd
	test	eax, eax
	jne	.label_469
	lea	rdi, [rbp - 0x30]
	call	free_cwd
	mov	dword ptr [rbx], r14d
.label_464:
	mov	rax, r15
	lea	rsp, [rbp - 0x20]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_469:
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_460
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

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
	je	.label_477
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_480:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_475
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_478
.label_475:
	cmp	r13, r12
	jb	.label_479
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_481
	add	r12, r12
	jmp	.label_482
	nop	word ptr cs:[rax + rax]
.label_481:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_476
.label_482:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_480
	jmp	.label_477
.label_479:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_477
.label_476:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_474
.label_478:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_474:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_477:
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
	#Procedure 0x404e40

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e50

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
	je	.label_486
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_483:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_484
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_488
	cmp	qword ptr [rsp + 8], -1
	je	.label_489
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_485
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_484
.label_485:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_484
.label_489:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_484:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_483
	jmp	.label_487
.label_486:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_487:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_488:
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
	#Procedure 0x404f50

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
	je	.label_490
	mov	esi, OFFSET FLAT:label_491
	jmp	.label_492
.label_490:
	mov	esi, OFFSET FLAT:label_493
.label_492:
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
	#Procedure 0x404fc0

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_494
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_500
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_496:
	test	rbp, rbp
	je	.label_498
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_495
.label_498:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_501
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_497
	nop	word ptr cs:[rax + rax]
.label_495:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_499
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_497:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_496
.label_500:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050c0
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
	jns	.label_502
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
.label_502:
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
	#Procedure 0x405130
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
	je	.label_503
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_503
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_504
.label_503:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_507
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_505
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_505
.label_507:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_508
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_506
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_452
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_508:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_506:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_509
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_511
	pop	rcx
	ret	
.label_511:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052a0

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
.label_513:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_512
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_513
.label_512:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052e0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_514
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_515
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_515:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_514:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405340

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_516:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_516
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_520
	nop	word ptr cs:[rax + rax]
.label_519:
	inc	rax
	mov	sil, dl
.label_520:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_519
	test	cl, cl
	je	.label_517
	mov	edx, esi
	and	dl, 1
	je	.label_518
	xor	esi, esi
.label_518:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_519
.label_517:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053a0
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_522:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_521
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_522
.label_521:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053d0

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_532
	cmp	ecx, 0x3fff
	jg	.label_528
	cmp	eax, 0x1000
	je	.label_531
	cmp	eax, 0x2000
	jne	.label_523
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_526
	mov	edx, 5
	jmp	dcgettext
.label_532:
	cmp	eax, 0x8000
	je	.label_534
	cmp	eax, 0xa000
	je	.label_538
	cmp	eax, 0xc000
	jne	.label_523
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_530
	mov	edx, 5
	jmp	dcgettext
.label_528:
	cmp	eax, 0x4000
	je	.label_537
	cmp	eax, 0x6000
	jne	.label_523
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_527
	mov	edx, 5
	jmp	dcgettext
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
	mov	edx, 5
	jmp	dcgettext
.label_534:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_529
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_539
	mov	edx, 5
	jmp	dcgettext
.label_538:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_524
	mov	edx, 5
	jmp	dcgettext
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_533
	mov	edx, 5
	jmp	dcgettext
.label_523:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_525
	mov	edx, 5
	jmp	dcgettext
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_545
	mov	cl, 0x2d
.label_545:
	mov	byte ptr [r14 + 1], cl
	mov	ecx, ebx
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_548
	mov	cl, 0x2d
.label_548:
	test	al, 8
	jne	.label_543
	mov	dl, cl
.label_543:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_549
	mov	cl, 0x2d
.label_549:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_547
	mov	cl, 0x2d
.label_547:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_550
	mov	cl, 0x2d
.label_550:
	test	al, 4
	jne	.label_540
	mov	dil, cl
.label_540:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_542
	mov	sil, 0x2d
.label_542:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_546
	mov	dl, 0x2d
.label_546:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_541
	mov	r8b, 0x2d
.label_541:
	test	al, 2
	je	.label_544
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_544:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_551
	cmp	eax, 0x3fff
	jg	.label_555
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_556
	cmp	eax, 0x2000
	jne	.label_552
	mov	al, 0x63
	ret	
.label_551:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_553
	cmp	ecx, 0xa000
	je	.label_557
	cmp	ecx, 0xc000
	jne	.label_552
	mov	al, 0x73
	ret	
.label_555:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_554
	cmp	eax, 0x4000
	jne	.label_552
	mov	al, 0x64
	ret	
.label_556:
	mov	al, 0x70
	ret	
.label_554:
	mov	al, 0x62
	ret	
.label_552:
	mov	al, 0x3f
.label_553:
	ret	
.label_557:
	mov	al, 0x6c
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405610

	.globl filemodestring
	.type filemodestring, @function
filemodestring:
	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405620

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_558
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_559:
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
	ja	.label_559
	jmp	.label_560
.label_558:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_561:
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
	ja	.label_561
	mov	byte ptr [rsi], 0x2d
.label_560:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056e0

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
	#Procedure 0x405710

	.globl __strftime_internal
	.type __strftime_internal, @function
__strftime_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4a8
	mov	dword ptr [rsp + 0x74], r8d
	mov	r13, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	eax, dword ptr [rcx + 8]
	mov	rdx, qword ptr [rcx + 0x30]
	test	rdx, rdx
	mov	esi, OFFSET FLAT:label_39
	cmovne	rsi, rdx
	lea	edx, [rax - 0xc]
	test	eax, eax
	mov	ebp, 0xc
	cmovne	ebp, eax
	cmp	eax, 0xc
	cmovg	ebp, edx
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	cmp	byte ptr [r13], 0
	je	.label_700
	mov	dword ptr [rsp + 0x64], ebp
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	dword ptr [rsp + 0x70], r9d
	mov	r14d, dword ptr [rsp + 0x4e0]
	xor	r8d, r8d
	jmp	.label_650
.label_700:
	xor	r8d, r8d
	jmp	.label_713
.label_728:
	mov	ebx, 3
	jmp	.label_715
	nop	word ptr cs:[rax + rax]
.label_650:
	cmp	byte ptr [r13], 0x25
	jne	.label_718
	xor	eax, eax
	mov	ecx, dword ptr [rsp + 0x74]
	mov	sil, cl
	xor	r15d, r15d
.label_1278:
	mov	r12d, eax
	mov	eax, esi
	jmp	.label_717
	nop	word ptr [rax + rax]
.label_722:
	movsx	r15d, byte ptr [r13]
.label_717:
	inc	r13
	movsx	ecx, byte ptr [r13]
	mov	al, 1
	lea	edx, [rcx - 0x23]
	cmp	edx, 0xd
	ja	.label_720
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_721]]
	nop	
.label_720:
	cmp	ecx, 0x5f
	je	.label_722
	cmp	ecx, 0x5e
	jne	.label_724
	mov	sil, al
	jmp	.label_717
	nop	word ptr cs:[rax + rax]
.label_718:
	test	r14d, r14d
	mov	eax, r14d
	mov	ecx, 0
	cmovs	eax, ecx
	movsxd	rbx, eax
	cmp	ebx, 1
	mov	ecx, 1
	cmovbe	rbx, rcx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	mov	ecx, 1
	cmp	rbx, rdx
	jae	.label_562
	test	rdi, rdi
	mov	edx, 0
	je	.label_574
	cmp	eax, 2
	jb	.label_579
	mov	qword ptr [rsp + 0x28], rbp
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	esi, 0x20
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	lea	rdi, [rdi + rbp - 1]
	mov	rbp, qword ptr [rsp + 0x28]
.label_579:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
	inc	rdi
	mov	rdx, rdi
.label_574:
	add	r8, rbx
	xor	ecx, ecx
	mov	rdi, rdx
.label_562:
	test	ecx, ecx
	mov	eax, 4
	cmove	ecx, eax
.label_577:
	or	ecx, 4
	cmp	ecx, 4
	je	.label_594
	jmp	.label_597
	nop	
.label_724:
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_599
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_610:
	mov	r14d, 0x7fffffff
	cmp	eax, 0xccccccc
	jg	.label_602
	jne	.label_604
	movsx	ecx, byte ptr [r13]
	add	ecx, -0x30
	cmp	ecx, 7
	jg	.label_602
.label_604:
	lea	eax, [rax + rax*4]
	movsx	ecx, byte ptr [r13]
	lea	r14d, [rcx + rax*2 - 0x30]
.label_602:
	movsx	eax, byte ptr [r13 + 1]
	inc	r13
	add	eax, -0x30
	cmp	eax, 0xa
	mov	eax, r14d
	jb	.label_610
.label_599:
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x4f
	mov	qword ptr [rsp + 0x28], rbp
	je	.label_614
	xor	r9d, r9d
	cmp	eax, 0x45
	jne	.label_617
.label_614:
	movsx	r9d, byte ptr [r13]
	inc	r13
.label_617:
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp], rdi
	movsx	edx, byte ptr [r13]
	mov	ebp, OFFSET FLAT:label_661
	xor	ebx, ebx
	cmp	edx, 0x7a
	ja	.label_588
	mov	al, 0x72
	mov	r10d, 0xffffffff
	xor	esi, esi
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_628]]
.label_1170:
	cmp	r9d, 0x45
	je	.label_588
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x28], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	rdx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rdx + 0x14]
	mov	esi, dword ptr [rdx + 0x18]
	mov	ecx, eax
	sar	ecx, 0x1f
	and	ecx, 0x190
	lea	ebp, [rax + rcx - 0x64]
	mov	r12d, dword ptr [rdx + 0x1c]
	mov	edi, r12d
	call	iso_week_days
	mov	ebx, eax
	test	ebx, ebx
	js	.label_640
	mov	eax, 0x16d
	test	bpl, 3
	jne	.label_589
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	eax, 0x16e
	cmove	eax, edx
.label_589:
	sub	r12d, eax
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	mov	edi, r12d
	call	iso_week_days
	mov	ecx, eax
	shr	ecx, 0x1f
	xor	ecx, 1
	test	eax, eax
	cmovns	ebx, eax
	jmp	.label_712
.label_1184:
	test	r12b, r12b
	je	.label_654
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_654:
	xor	esi, esi
	mov	eax, r9d
	cmp	eax, 0x45
	jne	.label_657
	xor	ebx, ebx
	jmp	.label_588
.label_1162:
	dec	r13
	jmp	.label_588
.label_1163:
	test	r9d, r9d
	jne	.label_588
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_563
	cmp	eax, 2
	jb	.label_665
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	je	.label_667
	cmp	r15d, 0x2b
	jne	.label_672
.label_667:
	mov	esi, 0x30
	jmp	.label_676
.label_1164:
	mov	eax, 1
	jmp	.label_677
	nop	
.label_679:
	inc	rax
.label_677:
	movzx	ecx, byte ptr [r13 + rax]
	cmp	cl, 0x3a
	je	.label_679
	cmp	cl, 0x7a
	jne	.label_588
	add	r13, rax
	mov	rbx, rax
.label_1201:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0x20], 0
	js	.label_686
	mov	r10, qword ptr [rsp]
	mov	eax, dword ptr [rax + 0x28]
	mov	sil, 1
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r12d, r9d
	js	.label_691
	test	eax, eax
	je	.label_696
	xor	esi, esi
	jmp	.label_691
.label_1165:
	mov	eax, r9d
	test	eax, eax
	jne	.label_588
	test	r12b, r12b
	je	.label_647
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_647:
	xor	esi, esi
	mov	al, 0x41
	jmp	.label_660
.label_1166:
	mov	eax, r9d
	cmp	eax, 0x45
	je	.label_588
	test	r12b, r12b
	je	.label_701
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_701:
	xor	esi, esi
	mov	al, 0x42
	jmp	.label_660
.label_1167:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_703
	xor	esi, esi
	mov	al, 0x43
	jmp	.label_660
.label_1168:
	mov	ebp, OFFSET FLAT:label_710
	test	r9d, r9d
	jne	.label_588
	mov	r10d, 0xffffffff
	jmp	.label_674
.label_1169:
	test	r9d, r9d
	jne	.label_588
	mov	ebp, OFFSET FLAT:label_673
	test	r15d, r15d
	jne	.label_709
	test	r14d, r14d
	jns	.label_709
	mov	r15d, 0x2b
	mov	r10d, 4
	jmp	.label_674
.label_1171:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 8]
	mov	ecx, 2
	jmp	.label_590
.label_1172:
	mov	ecx, 2
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	eax, dword ptr [rsp + 0x64]
	jmp	.label_719
.label_1173:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 4]
	mov	ecx, 2
	jmp	.label_590
.label_1174:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	ecx, 9
	cmp	r14d, -1
	je	.label_726
	cmp	r14d, 8
	jg	.label_723
	mov	eax, 9
	mov	ecx, dword ptr [rsp + 0x4f0]
	mov	ebp, ecx
	mov	rdi, qword ptr [rsp]
	nop	word ptr [rax + rax]
.label_569:
	movsxd	rcx, ebp
	imul	rbp, rcx, 0x66666667
	mov	rcx, rbp
	shr	rcx, 0x3f
	sar	rbp, 0x22
	add	ebp, ecx
	dec	eax
	cmp	r14d, eax
	jne	.label_569
	mov	ecx, r14d
	jmp	.label_630
.label_1175:
	mov	cl, 1
.label_1193:
	xor	ebx, ebx
	test	r12b, r12b
	je	.label_582
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
.label_582:
	je	.label_586
	mov	cl, 1
.label_586:
	mov	al, 0x70
	mov	sil, cl
	jmp	.label_638
.label_1176:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax]
	mov	ecx, 2
	jmp	.label_590
.label_1177:
	mov	ebp, OFFSET FLAT:label_592
.label_674:
	mov	qword ptr [rsp + 0x10], r8
	xor	r8d, r8d
	mov	rax, qword ptr [rsp + 0x20]
	test	al, al
	setne	r8b
	sub	rsp, 8
	xor	ebx, ebx
	xor	edi, edi
	mov	rsi, -1
	mov	rdx, rbp
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	mov	qword ptr [rsp + 0x58], r10
	push	r10
	mov	dword ptr [rsp + 0x28], r11d
	call	__strftime_internal
	mov	r11d, dword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x30]
	add	rsp, 0x20
	test	r14d, r14d
	cmovns	ebx, r14d
	movsxd	rsi, ebx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	r12, qword ptr [rsp + 0x38]
	sub	r12, r8
	cmp	rbx, r12
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_675
	cmp	rax, rsi
	mov	qword ptr [rsp + 0x30], rax
	jae	.label_625
	movsxd	rcx, r14d
	sub	rcx, rax
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x48], rcx
	je	.label_631
	cmp	r15d, 0x2b
	jne	.label_575
.label_631:
	mov	esi, 0x30
	jmp	.label_634
.label_1178:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x1c]
	add	eax, 7
	sub	eax, dword ptr [rcx + 0x18]
	movsxd	rbp, eax
	jmp	.label_637
.label_1179:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rcx, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rcx + 0x18]
	mov	ecx, dword ptr [rcx + 0x1c]
	mov	rbp, rdx
	lea	edx, [rax + 6]
	movsxd	rdx, edx
	imul	rsi, rdx, -0x6db6db6d
	shr	rsi, 0x20
	lea	eax, [rsi + rax + 6]
	mov	esi, eax
	shr	esi, 0x1f
	sar	eax, 2
	add	eax, esi
	lea	esi, [rax*8]
	sub	esi, eax
	sub	edx, esi
	add	ecx, 7
	sub	ecx, edx
	mov	rdx, rbp
	movsxd	rbp, ecx
.label_637:
	imul	rax, rbp, -0x6db6db6d
	shr	rax, 0x20
	add	ebp, eax
	mov	eax, ebp
	shr	eax, 0x1f
	sar	ebp, 2
	add	ebp, eax
	mov	ecx, 2
	jmp	.label_590
.label_1180:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_588
	mov	al, 0x58
	xor	esi, esi
	jmp	.label_638
.label_1181:
	xor	ebx, ebx
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_656
	cmp	r12d, 0x4f
	je	.label_588
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x14]
	cmp	ebp, 0xfffff894
	setl	sil
	add	ebp, 0x76c
	mov	ebx, 4
	jmp	.label_658
.label_1182:
	mov	rdi, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 8], r11d
	call	strlen
	mov	r11d, dword ptr [rsp + 8]
	mov	rdx, rbp
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	xor	ecx, ecx
	test	r14d, r14d
	cmovns	ecx, r14d
	movsxd	rsi, ecx
	cmp	rax, rsi
	mov	rbx, rax
	cmovb	rbx, rsi
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_675
	cmp	rax, rsi
	jae	.label_681
	movsxd	r14, r14d
	mov	qword ptr [rsp + 0x40], rax
	sub	r14, rax
	cmp	r15d, 0x30
	je	.label_682
	cmp	r15d, 0x2b
	jne	.label_688
.label_682:
	mov	esi, 0x30
	jmp	.label_690
.label_1183:
	mov	eax, r9d
	test	eax, eax
	jne	.label_588
	test	r12b, r12b
	je	.label_695
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
.label_695:
	xor	esi, esi
	mov	al, 0x61
	jmp	.label_660
.label_1185:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_588
	mov	al, 0x63
	xor	esi, esi
	jmp	.label_638
.label_1186:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0xc]
	mov	ecx, 2
	jmp	.label_590
.label_1187:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0xc]
	jmp	.label_702
.label_1188:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x1c]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 3
	jmp	.label_705
.label_1189:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 8]
	jmp	.label_702
.label_1190:
	mov	r12d, r9d
	cmp	r12d, 0x45
	mov	eax, dword ptr [rsp + 0x64]
	je	.label_588
.label_702:
	test	r15d, r15d
	mov	ecx, 0x5f
	cmove	r15d, ecx
	mov	ecx, 2
.label_719:
	mov	ebp, eax
.label_590:
	mov	rdi, qword ptr [rsp]
.label_630:
	mov	esi, ebp
	shr	esi, 0x1f
	xor	r11d, r11d
	xor	r10d, r10d
	mov	ebx, ecx
	jmp	.label_580
.label_1191:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x10]
	cmp	ebp, -1
	setl	sil
	inc	ebp
	mov	ebx, 2
.label_705:
	xor	r11d, r11d
	xor	r10d, r10d
	mov	rdi, qword ptr [rsp]
	jmp	.label_580
.label_1192:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_563
	cmp	eax, 2
	jb	.label_566
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_567
	cmp	r15d, 0x2b
	jne	.label_572
.label_567:
	mov	esi, 0x30
	jmp	.label_576
.label_1194:
	mov	rax, qword ptr [rsp + 0x18]
	imul	ebp, dword ptr [rax + 0x10], 0xb
	sar	ebp, 5
	inc	ebp
	mov	ebx, 1
	xor	r11d, r11d
	xor	r10d, r10d
	xor	esi, esi
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_580
.label_1195:
	mov	dword ptr [rsp + 8], r11d
	mov	rbx, r8
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0xd0], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0xc0], xmm2
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rsi, [rsp + 0xa0]
	mov	rdi, qword ptr [rsp + 0x4e8]
	call	mktime_z
	mov	rcx, rax
	mov	rsi, rcx
	shr	rsi, 0x3f
	lea	r12, [rsp + 0x97]
	nop	dword ptr [rax]
.label_606:
	movabs	rdx, 0x6666666666666667
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ecx
	sub	ebp, edi
	add	rdx, rax
	mov	eax, ebp
	neg	eax
	test	rsi, rsi
	cmove	eax, ebp
	add	eax, 0x30
	mov	byte ptr [r12 - 1], al
	dec	r12
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_606
	xor	r10d, r10d
	mov	r8, rbx
	mov	ebx, 1
	mov	rdi, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_624
.label_1196:
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	mov	rdi, qword ptr [rsp]
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_563
	cmp	eax, 2
	jb	.label_601
	mov	dword ptr [rsp + 8], r11d
	mov	r12, r8
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	je	.label_613
	cmp	r15d, 0x2b
	jne	.label_643
.label_613:
	mov	esi, 0x30
	jmp	.label_697
.label_1197:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x18]
	lea	ecx, [rax + 6]
	movsxd	rbp, ecx
	imul	rcx, rbp, -0x6db6db6d
	shr	rcx, 0x20
	lea	eax, [rcx + rax + 6]
	mov	ecx, eax
	shr	ecx, 0x1f
	sar	eax, 2
	add	eax, ecx
	lea	ecx, [rax*8]
	sub	ecx, eax
	sub	ebp, ecx
	inc	ebp
	mov	ecx, 1
	mov	rdi, qword ptr [rsp]
	mov	r12d, r9d
	jmp	.label_630
.label_1198:
	mov	r12d, r9d
	cmp	r12d, 0x45
	je	.label_588
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rax + 0x18]
	mov	ecx, 1
	jmp	.label_590
.label_1199:
	xor	ebx, ebx
	mov	eax, r9d
	cmp	eax, 0x4f
	je	.label_588
	mov	al, 0x78
	xor	esi, esi
	jmp	.label_638
.label_1200:
	mov	r12d, r9d
	cmp	r12d, 0x45
	jne	.label_659
	xor	esi, esi
	mov	al, 0x79
	jmp	.label_660
.label_657:
	mov	eax, edx
.label_660:
	xor	ebx, ebx
	jmp	.label_638
.label_625:
	mov	rcx, qword ptr [rsp + 0x18]
	jmp	.label_636
.label_640:
	dec	ebp
	mov	edi, 0x16d
	test	bpl, 3
	jne	.label_662
	movsxd	rax, ebp
	imul	rax, rax, 0x51eb851f
	mov	rcx, rax
	sar	rcx, 0x25
	mov	rdx, rax
	shr	rdx, 0x3f
	add	ecx, edx
	imul	ecx, ecx, 0x64
	sar	rax, 0x27
	add	eax, edx
	imul	eax, eax, 0x190
	xor	edx, edx
	cmp	ebp, eax
	sete	dl
	add	edx, 0x16d
	cmp	ebp, ecx
	mov	edi, 0x16e
	cmove	edi, edx
.label_662:
	add	edi, r12d
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x18]
	call	iso_week_days
	mov	ebx, eax
	mov	ecx, 0xffffffff
.label_712:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	r12d, dword ptr [rsp + 0x28]
	movsx	eax, byte ptr [r13]
	cmp	eax, 0x47
	je	.label_684
	cmp	eax, 0x67
	jne	.label_693
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rdx, rax, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	mov	esi, eax
	sub	esi, edx
	add	esi, ecx
	movsxd	rbp, esi
	imul	rdx, rbp, 0x51eb851f
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x25
	add	edx, esi
	imul	edx, edx, 0x64
	sub	ebp, edx
	mov	ebx, 2
	jns	.label_694
	mov	edx, 0xfffff894
	sub	edx, ecx
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, edx
	cmovl	ebp, ecx
.label_694:
	xor	esi, esi
	jmp	.label_685
.label_686:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rsp]
	jmp	.label_594
.label_703:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	cmp	rax, -0x76c
	setl	sil
	setg	cl
	imul	rbp, rax, 0x51eb851f
	mov	rdx, rbp
	shr	rdx, 0x3f
	sar	rbp, 0x25
	add	ebp, edx
	imul	edx, ebp, 0x64
	cmp	eax, edx
	sets	al
	and	al, cl
	movzx	eax, al
	sub	ebp, eax
	add	ebp, 0x13
	mov	ebx, 2
	jmp	.label_658
.label_659:
	mov	qword ptr [rsp + 8], rdx
	mov	rax, qword ptr [rsp + 0x18]
	movsxd	rax, dword ptr [rax + 0x14]
	imul	rcx, rax, 0x51eb851f
	mov	rdx, rcx
	shr	rdx, 0x3f
	sar	rcx, 0x25
	add	ecx, edx
	imul	ecx, ecx, 0x64
	mov	ebp, eax
	sub	ebp, ecx
	mov	ebx, 2
	jns	.label_607
	mov	ecx, ebp
	neg	ecx
	add	ebp, 0x64
	cmp	eax, 0xfffff894
	cmovl	ebp, ecx
.label_607:
	xor	esi, esi
.label_658:
	mov	rdi, qword ptr [rsp]
	jmp	.label_685
.label_684:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 0x14]
	mov	edx, 0xfffff894
	sub	edx, ecx
	cmp	eax, edx
	setl	sil
	lea	ebp, [rcx + rax + 0x76c]
	mov	ebx, 4
.label_685:
	test	r15d, r15d
	cmove	r15d, dword ptr [rsp + 0x70]
	xor	r11d, r11d
	cmp	r15d, 0x2b
	mov	r10d, 0
	jne	.label_727
	cmp	ebx, 2
	mov	eax, 0x63
	mov	ecx, 0x270f
	cmove	ecx, eax
	cmp	ecx, ebp
	setb	cl
	cmp	ebx, r14d
	setl	r10b
	or	r10b, cl
.label_727:
	mov	rdx, qword ptr [rsp + 8]
.label_580:
	cmp	r12d, 0x4f
	jne	.label_571
	test	sil, sil
	jne	.label_571
	mov	r9d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	xor	esi, esi
	mov	eax, edx
.label_638:
	mov	dword ptr [rsp + 0x30], esi
	mov	qword ptr [rsp + 0x40], rbx
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, qword ptr [rsp]
	mov	word ptr [rsp + 0x53], 0x2520
	test	r9d, r9d
	lea	rcx, [rsp + 0x55]
	je	.label_583
	mov	byte ptr [rsp + 0x55], r9b
	lea	rcx, [rsp + 0x56]
.label_583:
	mov	byte ptr [rcx], al
	mov	byte ptr [rcx + 1], 0
	lea	rdi, [rsp + 0xa0]
	lea	rdx, [rsp + 0x53]
	mov	esi, 0x400
	mov	rcx, qword ptr [rsp + 0x18]
	call	strftime
	mov	rbx, rax
	test	rbx, rbx
	je	.label_598
	dec	rbx
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	r12, rbx
	cmovb	r12, rax
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	sub	rcx, r8
	cmp	r12, rcx
	jae	.label_585
	xor	ecx, ecx
	mov	rdi, rbp
	test	rdi, rdi
	mov	r11d, dword ptr [rsp + 8]
	je	.label_608
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_641
	test	al, al
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jne	.label_618
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_621
	cmp	r15d, 0x2b
	jne	.label_623
.label_621:
	mov	esi, 0x30
	jmp	.label_626
.label_571:
	mov	eax, ebp
	neg	eax
	test	sil, sil
	cmove	eax, ebp
	lea	r12, [rsp + 0x97]
.label_635:
	test	r11b, 1
	je	.label_633
	mov	byte ptr [r12 - 1], 0x3a
	dec	r12
.label_633:
	sar	r11d, 1
	mov	edx, eax
	mov	ebp, 0xcccccccd
	imul	rbp, rdx
	shr	rbp, 0x23
	lea	edx, [rbp + rbp]
	lea	edx, [rdx + rdx*4]
	mov	ecx, eax
	sub	ecx, edx
	or	ecx, 0x30
	mov	byte ptr [r12 - 1], cl
	dec	r12
	cmp	eax, 9
	mov	eax, ebp
	ja	.label_635
	test	r11d, r11d
	mov	eax, ebp
	jne	.label_635
.label_624:
	cmp	ebx, r14d
	cmovl	ebx, r14d
	test	r10b, r10b
	je	.label_642
	mov	r10b, 0x2b
.label_642:
	test	sil, sil
	mov	sil, 0x2d
	jne	.label_644
	mov	esi, r10d
.label_644:
	cmp	r15d, 0x2d
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x40], rbx
	jne	.label_646
	test	sil, sil
	je	.label_648
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebx, 1
	cmova	rbx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbx, rcx
	mov	r9, qword ptr [rsp + 0x20]
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_652
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_655
	test	al, al
	jne	.label_655
	movsxd	rbp, r14d
	lea	rdx, [rbp - 1]
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	lea	rdi, [rdi + rbp - 1]
.label_655:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_652:
	add	r8, rbx
	jmp	.label_663
.label_598:
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_594
.label_646:
	movsxd	rax, ebx
	mov	rcx, r12
	lea	rdx, [rsp + 0x97]
	sub	rcx, rdx
	mov	edx, esi
	neg	dl
	sbb	rbx, rbx
	add	rbx, rcx
	add	rbx, rax
	test	ebx, ebx
	jle	.label_668
	cmp	r15d, 0x5f
	mov	r9, qword ptr [rsp + 0x20]
	jne	.label_678
	movsxd	rdx, ebx
	mov	rax, qword ptr [rsp + 0x38]
	sub	rax, r8
	cmp	rdx, rax
	jae	.label_585
	xor	r10d, r10d
	test	rdi, rdi
	mov	eax, 0
	mov	qword ptr [rsp + 0x48], rax
	je	.label_689
	mov	byte ptr [rsp + 0x30], sil
	mov	esi, 0x20
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x78], rdx
	call	memset
	mov	rdx, qword ptr [rsp + 0x78]
	xor	r10d, r10d
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, rdx
	mov	qword ptr [rsp + 0x48], rbp
.label_689:
	add	r8, rdx
	sub	r14d, ebx
	cmovg	r10d, r14d
	test	sil, sil
	je	.label_698
	xor	eax, eax
	test	r10d, r10d
	cmovns	eax, r10d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_585
	xor	edi, edi
	cmp	qword ptr [rsp + 0x48], 0
	je	.label_706
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_708
	test	al, al
	jne	.label_708
	movsxd	rbx, r10d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	mov	qword ptr [rsp], r10
	je	.label_591
	cmp	r15d, 0x2b
	jne	.label_622
.label_591:
	mov	esi, 0x30
	jmp	.label_716
.label_641:
	mov	rax, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x30]
	jmp	.label_618
.label_648:
	mov	r9, qword ptr [rsp + 0x20]
	jmp	.label_629
.label_668:
	test	sil, sil
	mov	r9, qword ptr [rsp + 0x20]
	je	.label_629
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rcx, eax
	cmp	ecx, 1
	mov	ebp, 1
	cmova	rbp, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_725
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_564
	test	al, al
	jne	.label_564
	movsxd	rbx, r14d
	dec	rbx
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_565
	cmp	r15d, 0x2b
	jne	.label_570
.label_565:
	mov	esi, 0x30
	jmp	.label_573
.label_678:
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rax, rcx
	jae	.label_585
	test	sil, sil
	je	.label_581
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	movsxd	rdx, eax
	cmp	edx, 1
	mov	ebp, 1
	cmova	rbp, rdx
	cmp	rbp, rcx
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_593
	cmp	eax, 2
	setb	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_595
	test	al, al
	jne	.label_595
	movsxd	r14, r14d
	dec	r14
	cmp	r15d, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	byte ptr [rsp + 0x30], sil
	je	.label_596
	cmp	r15d, 0x2b
	jne	.label_653
.label_596:
	mov	esi, 0x30
	jmp	.label_584
.label_623:
	mov	esi, 0x20
.label_626:
	mov	rdx, r14
	call	memset
	mov	ecx, dword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdi, rbp
	add	rdi, r14
.label_618:
	lea	rsi, [rsp + 0xa1]
	mov	rdx, rbx
	mov	rbp, rdi
	test	cl, 1
	jne	.label_611
	test	al, 1
	jne	.label_615
	call	memcpy
	jmp	.label_616
.label_611:
	call	memcpy_lowcase
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_619
.label_615:
	call	memcpy_uppcase
.label_616:
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_619:
	add	rcx, rbx
.label_608:
	add	r8, r12
	jmp	.label_651
.label_693:
	movsxd	rax, ebx
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	eax, ecx
	mov	ecx, eax
	sar	ecx, 2
	shr	eax, 0x1f
	lea	ebp, [rcx + rax + 1]
	mov	ecx, 2
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_630
.label_698:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r14d, r10d
	jmp	.label_629
.label_656:
	mov	al, 0x59
	xor	esi, esi
	jmp	.label_638
.label_681:
	mov	rsi, qword ptr [rsp + 0x68]
	jmp	.label_639
.label_575:
	mov	esi, 0x20
.label_634:
	mov	rdx, rcx
	mov	r14, rdi
	call	memset
	mov	rcx, qword ptr [rsp + 0x18]
	add	r14, qword ptr [rsp + 0x48]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x20]
.label_636:
	mov	r10, qword ptr [rsp + 0x40]
	xor	r8d, r8d
	test	dl, dl
	setne	r8b
	sub	rsp, 8
	mov	rsi, r12
	mov	rdx, rbp
	mov	r9d, r15d
	mov	eax, dword ptr [rsp + 0x4f8]
	push	rax
	push	qword ptr [rsp + 0x4f8]
	push	r10
	mov	rbp, rdi
	call	__strftime_internal
	add	rsp, 0x20
	mov	rax, qword ptr [rsp + 0x30]
	add	rax, rbp
	mov	rcx, rax
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
.label_675:
	add	r8, rbx
	jmp	.label_651
.label_696:
	mov	rcx, qword ptr [rsp + 0x68]
	cmp	byte ptr [rcx], 0x2d
	sete	sil
.label_691:
	cmp	rbx, 3
	mov	qword ptr [rsp + 8], rdx
	ja	.label_692
	movsxd	rcx, eax
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, eax
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	rbp, rcx, -0x6e5d4c3b
	shr	rbp, 0x20
	add	ebp, eax
	mov	ecx, ebp
	shr	ecx, 0x1f
	sar	ebp, 0xb
	add	ebp, ecx
	movsxd	rcx, edx
	imul	rdx, rcx, -0x77777777
	shr	rdx, 0x20
	add	edx, ecx
	mov	edi, edx
	shr	edi, 0x1f
	sar	edx, 5
	add	edx, edi
	imul	edx, edx, 0x3c
	imul	edi, ecx, 0x3c
	sub	ecx, edx
	sub	eax, edi
	jmp	qword ptr [word ptr [+ (rbx * 8) + label_578]]
.label_1293:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 5
.label_715:
	xor	r11d, r11d
	jmp	.label_670
.label_709:
	xor	eax, eax
	mov	r10d, r14d
	add	r10d, -6
	cmovs	r10d, eax
	mov	ebp, OFFSET FLAT:label_673
	jmp	.label_674
.label_726:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	r14d, 9
	jmp	.label_590
.label_692:
	xor	ebx, ebx
	mov	ecx, 0xe
	jmp	.label_683
.label_1296:
	test	eax, eax
	je	.label_687
.label_1295:
	imul	ebp, ebp, 0x2710
	imul	ecx, ecx, 0x64
	add	ebp, eax
	add	ebp, ecx
	mov	ebx, 9
	mov	r11d, 0x14
	jmp	.label_670
.label_723:
	mov	eax, dword ptr [rsp + 0x4f0]
	mov	ebp, eax
	mov	ecx, r14d
	jmp	.label_590
.label_688:
	mov	esi, 0x20
.label_690:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdi, r15
	mov	rdx, rbp
	mov	rax, qword ptr [rsp + 0x40]
.label_639:
	test	r12b, r12b
	je	.label_699
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_lowcase
	mov	rax, rbp
	mov	r11d, dword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	rcx, rax
	jmp	.label_675
.label_699:
	test	dl, dl
	je	.label_704
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy_uppcase
	jmp	.label_707
.label_572:
	mov	esi, 0x20
.label_576:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_566:
	mov	byte ptr [rdi], 0xa
	jmp	.label_711
.label_643:
	mov	esi, 0x20
.label_697:
	mov	rdx, r14
	mov	rbx, rdi
	call	memset
	add	rbx, r14
	mov	r8, r12
	mov	rdi, rbx
	mov	r11d, dword ptr [rsp + 8]
.label_601:
	mov	byte ptr [rdi], 9
	jmp	.label_711
.label_570:
	mov	esi, 0x20
.label_573:
	mov	rdx, rbx
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, rbx
.label_564:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_725:
	add	r8, rbp
.label_663:
	mov	rdi, rcx
	jmp	.label_629
.label_704:
	mov	rdx, rax
	mov	r14, rdi
	mov	rbp, rax
	call	memcpy
.label_707:
	mov	rax, rbp
	mov	rcx, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	r11d, dword ptr [rsp + 8]
	add	rcx, rax
	jmp	.label_675
.label_687:
	test	ecx, ecx
	je	.label_728
.label_1294:
	imul	ebp, ebp, 0x64
	add	ebp, ecx
	mov	ebx, 6
	mov	r11d, 4
.label_670:
	mov	ecx, 0x21
.label_683:
	mov	rdi, r10
	mov	edx, ecx
	and	dl, 0x3f
	cmp	dl, 0xe
	je	.label_568
	mov	r10b, 1
	cmp	dl, 0x21
	mov	rdx, qword ptr [rsp + 8]
	je	.label_580
	jmp	.label_577
.label_568:
	mov	qword ptr [rsp + 0x28], rbp
.label_588:
	mov	r9, rbx
	xor	ebp, ebp
	xor	ebx, ebx
	movabs	rax, 0x100000000
	nop	word ptr cs:[rax + rax]
.label_587:
	add	rbx, rax
	cmp	byte ptr [r13 + rbp], 0x25
	lea	rbp, [rbp - 1]
	jne	.label_587
	mov	rax, rbp
	neg	rax
	test	r14d, r14d
	mov	ecx, r14d
	mov	edx, 0
	cmovs	ecx, edx
	cmp	eax, ecx
	mov	edx, ecx
	cmova	edx, eax
	movsxd	r12, edx
	mov	rdx, qword ptr [rsp + 0x38]
	sub	rdx, r8
	cmp	r12, rdx
	mov	rdi, qword ptr [rsp]
	mov	rdx, qword ptr [rsp + 0x20]
	jae	.label_585
	test	rdi, rdi
	mov	esi, 0
	je	.label_600
	sar	rbx, 0x20
	test	r9d, r9d
	jne	.label_603
	cmp	eax, ecx
	jae	.label_603
	mov	dword ptr [rsp + 8], r11d
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_605
	cmp	r15d, 0x2b
	jne	.label_609
.label_605:
	mov	esi, 0x30
	jmp	.label_612
.label_609:
	mov	esi, 0x20
.label_612:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	r11d, dword ptr [rsp + 8]
.label_603:
	mov	r15d, r11d
	mov	r14, r8
	lea	rsi, [r13 + rbp + 1]
	test	dl, 1
	jne	.label_620
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy
	jmp	.label_627
.label_620:
	mov	rdx, rbx
	mov	rbp, rdi
	call	memcpy_uppcase
.label_627:
	add	rbp, rbx
	mov	rsi, rbp
	mov	r8, r14
	mov	r11d, r15d
.label_600:
	add	r8, r12
	mov	rdi, rsi
	jmp	.label_632
.label_622:
	mov	esi, 0x20
.label_716:
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rdx, rbx
	mov	r14, r9
	call	memset
	mov	r10, qword ptr [rsp]
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, r14
	mov	r8, qword ptr [rsp + 0x10]
	add	qword ptr [rsp + 0x48], rbx
.label_708:
	mov	rax, qword ptr [rsp + 0x48]
	mov	byte ptr [rax], sil
	inc	rax
	mov	rdi, rax
.label_706:
	add	r8, rbp
	mov	r14d, r10d
	jmp	.label_629
.label_653:
	mov	esi, 0x20
.label_584:
	mov	rdx, r14
	call	memset
	mov	sil, byte ptr [rsp + 0x30]
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 0x10]
	add	rdi, r14
.label_595:
	mov	byte ptr [rdi], sil
	inc	rdi
	mov	rcx, rdi
.label_593:
	add	r8, rbp
	mov	rdi, rcx
.label_581:
	xor	r14d, r14d
	test	rdi, rdi
	mov	ebp, 0
	je	.label_649
	movsxd	rdx, ebx
	mov	qword ptr [rsp], rdx
	mov	esi, 0x30
	mov	qword ptr [rsp + 0x10], r8
	mov	rbp, rdi
	call	memset
	mov	r11d, dword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	add	rbp, qword ptr [rsp]
.label_649:
	movsxd	rcx, ebx
	add	r8, rcx
	mov	rdi, rbp
.label_629:
	lea	rbx, [rsp + 0x97]
	sub	rbx, r12
	xor	eax, eax
	test	r14d, r14d
	cmovns	eax, r14d
	cdqe	
	cmp	rbx, rax
	mov	rbp, rbx
	cmovb	rbp, rax
	mov	rcx, qword ptr [rsp + 0x38]
	sub	rcx, r8
	cmp	rbp, rcx
	jae	.label_585
	xor	ecx, ecx
	test	rdi, rdi
	je	.label_563
	cmp	rbx, rax
	setae	al
	mov	rcx, qword ptr [rsp + 0x40]
	test	ecx, ecx
	jne	.label_645
	test	al, al
	jne	.label_645
	mov	qword ptr [rsp + 0x10], r8
	movsxd	r14, r14d
	sub	r14, rbx
	cmp	r15d, 0x30
	je	.label_664
	cmp	r15d, 0x2b
	jne	.label_671
.label_664:
	mov	esi, 0x30
	jmp	.label_669
.label_671:
	mov	esi, 0x20
.label_669:
	mov	rdx, r14
	mov	r15, rdi
	call	memset
	add	r15, r14
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdi, r15
	mov	r9, qword ptr [rsp + 0x20]
.label_645:
	mov	r14, r8
	mov	rsi, r12
	mov	rdx, rbx
	mov	r15, rdi
	test	r9b, r9b
	je	.label_680
	call	memcpy_uppcase
	jmp	.label_714
.label_680:
	call	memcpy
.label_714:
	add	r15, rbx
	mov	rcx, r15
	mov	r8, r14
	mov	r11d, dword ptr [rsp + 8]
	jmp	.label_563
.label_672:
	mov	esi, 0x20
.label_676:
	mov	rdx, rbx
	mov	r14, r8
	mov	r15, rdi
	mov	r12d, r11d
	call	memset
	mov	r11d, r12d
	mov	rdi, r15
	mov	r8, r14
	add	rdi, rbx
.label_665:
	mov	al, byte ptr [r13]
	mov	byte ptr [rdi], al
.label_711:
	inc	rdi
	mov	rcx, rdi
.label_563:
	add	r8, rbp
.label_651:
	mov	rdi, rcx
.label_632:
	mov	rbp, qword ptr [rsp + 0x28]
.label_594:
	mov	r14d, 0xffffffff
	cmp	byte ptr [r13 + 1], 0
	lea	r13, [r13 + 1]
	jne	.label_650
.label_713:
	cmp	qword ptr [rsp + 0x38], 0
	je	.label_666
	test	rdi, rdi
	je	.label_666
	mov	byte ptr [rdi], 0
.label_666:
	mov	qword ptr [rsp + 0x58], r8
.label_597:
	mov	rax, qword ptr [rsp + 0x58]
	add	rsp, 0x4a8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_585:
	xor	eax, eax
	mov	qword ptr [rsp + 0x58], rax
	jmp	.label_597
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f50

	.globl memcpy_lowcase
	.type memcpy_lowcase, @function
memcpy_lowcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_729
	call	__ctype_tolower_loc
	nop	dword ptr [rax + rax]
.label_730:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_730
.label_729:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406f90

	.globl memcpy_uppcase
	.type memcpy_uppcase, @function
memcpy_uppcase:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_731
	call	__ctype_toupper_loc
	nop	dword ptr [rax + rax]
.label_732:
	movzx	ecx, byte ptr [r14 + rbx - 1]
	mov	rdx, qword ptr [rax]
	movzx	ecx, byte ptr [rdx + rcx*4]
	mov	byte ptr [r15 + rbx - 1], cl
	dec	rbx
	jne	.label_732
.label_731:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406fd0

	.globl iso_week_days
	.type iso_week_days, @function
iso_week_days:
	lea	eax, [rdi + 0x17e]
	sub	eax, esi
	cdqe	
	imul	rcx, rax, -0x6db6db6d
	shr	rcx, 0x20
	add	ecx, eax
	mov	edx, ecx
	shr	edx, 0x1f
	sar	ecx, 2
	add	ecx, edx
	lea	edx, [rcx*8]
	sub	edx, ecx
	sub	eax, edx
	neg	eax
	lea	eax, [rdi + rax + 3]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407010

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_736
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_738
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_733
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_738
	mov	esi, OFFSET FLAT:label_735
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_734
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_734:
	mov	rbx, r14
.label_738:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_736:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_737
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4070c0
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
	#Procedure 0x407100

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
	#Procedure 0x407110

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
	#Procedure 0x407120

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
	#Procedure 0x407160
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
	#Procedure 0x407180

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_739
	test	rdx, rdx
	je	.label_739
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_739:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071b0
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
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
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
	#Procedure 0x407230

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
	mov	qword ptr [rsp + 0xb0], rax
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
	mov	qword ptr [rsp + 0x60], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 0
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xa0], rcx
.label_792:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_808
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_797]]
.label_1310:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_805
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_810
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1311:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_819
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_819
	xor	r14d, r14d
.label_828:
	cmp	r14, r11
	jae	.label_825
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_825:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_828
.label_819:
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rdi, rbp
	mov	rbx, r11
	call	strlen
	mov	r11, rbx
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r15d
	mov	qword ptr [rsp + 0x40], rbp
	mov	r13b, 1
	mov	sil, r12b
	mov	r8, qword ptr [rsp + 0x30]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r9d, dword ptr [rsp + 0x48]
	jmp	.label_754
.label_1303:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_754
.label_1306:
	mov	al, 1
.label_1304:
	mov	r12b, 1
.label_1307:
	test	r12b, 1
	mov	cl, 1
	je	.label_840
	mov	ecx, eax
.label_840:
	mov	al, cl
.label_1305:
	test	r12b, 1
	jne	.label_843
	test	r11, r11
	je	.label_845
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_845:
	mov	r14d, 1
	jmp	.label_849
.label_843:
	xor	r14d, r14d
.label_849:
	mov	ecx, OFFSET FLAT:label_810
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_754
.label_1308:
	test	r12b, 1
	jne	.label_744
	test	r11, r11
	je	.label_746
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_746:
	mov	r14d, 1
	jmp	.label_750
.label_1309:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_753
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_754
.label_744:
	xor	r14d, r14d
.label_750:
	mov	eax, OFFSET FLAT:label_753
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_754:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	r12b
	cmp	edi, 2
	setne	r15b
	sete	bl
	mov	ecx, r13d
	and	cl, 1
	sete	byte ptr [rsp + 0x2b]
	mov	eax, r15d
	mov	byte ptr [rsp + 0x1e], cl
	and	al, cl
	cmp	qword ptr [rsp + 0x38], 0
	setne	cl
	mov	edx, ecx
	mov	byte ptr [rsp + 0x2e], al
	and	dl, al
	mov	byte ptr [rsp + 0x2f], dl
	mov	eax, esi
	and	al, 1
	sete	dl
	and	bl, al
	mov	byte ptr [rsp + 0x2c], bl
	mov	byte ptr [rsp + 7], al
	and	r12b, al
	mov	byte ptr [rsp + 0x2d], r12b
	or	dl, r15b
	mov	byte ptr [rsp + 0x1f], dl
	mov	byte ptr [rsp + 0x1d], r13b
	mov	qword ptr [rsp + 0xa8], rsi
	and	r13b, sil
	and	r13b, cl
	mov	byte ptr [rsp + 0x2a], r13b
	xor	esi, esi
	mov	qword ptr [rsp + 0x68], rdi
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r12, rdi
	mov	rdi, r8
	jmp	.label_806
	nop	dword ptr [rax]
.label_800:
	inc	rsi
.label_806:
	cmp	rbp, -1
	je	.label_809
	cmp	rsi, rbp
	jne	.label_812
	jmp	.label_814
	nop	word ptr cs:[rax + rax]
.label_809:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_814
.label_812:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_821
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_823
	cmp	rbp, -1
	jne	.label_823
	mov	r15d, r10d
	mov	rbp, r11
	mov	r13d, r9d
	mov	r12, r14
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r14, r12
	mov	r9d, r13d
	mov	r12, qword ptr [rsp + 0x68]
	mov	r10d, r15d
	mov	r11, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_823:
	cmp	rbx, rbp
	jbe	.label_830
.label_821:
	xor	r8d, r8d
.label_780:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_832
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_835]]
.label_1256:
	test	rsi, rsi
	jne	.label_770
	jmp	.label_761
	nop	
.label_830:
	mov	qword ptr [rsp + 0x20], rbp
	mov	ebp, r9d
	mov	r15d, r10d
	mov	rbx, r11
	mov	r12, rsi
	lea	rdi, [rdi + rsi]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcmp
	test	eax, eax
	sete	r8b
	jne	.label_847
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_780
	jmp	.label_745
.label_847:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_780
.label_1260:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_756
	test	rsi, rsi
	jne	.label_758
	cmp	rbp, 1
	je	.label_761
	xor	r13d, r13d
	jmp	.label_747
.label_1249:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_766
	cmp	byte ptr [rsp + 7], 0
	jne	.label_740
	cmp	r12d, 2
	jne	.label_769
	mov	eax, r9d
	and	al, 1
	jne	.label_769
	cmp	r14, r11
	jae	.label_831
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_831:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_776
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_776:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_784
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_784:
	add	r14, 3
	mov	r9b, 1
.label_769:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_791
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_791:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_796
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_796
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_796
	cmp	r14, r11
	jae	.label_742
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_742:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_755
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_755:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_747
.label_1250:
	mov	bl, 0x62
	jmp	.label_817
.label_1251:
	mov	cl, 0x74
	jmp	.label_795
.label_1252:
	mov	bl, 0x76
	jmp	.label_817
.label_1253:
	mov	bl, 0x66
	jmp	.label_817
.label_1254:
	mov	cl, 0x72
	jmp	.label_795
.label_1257:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_824
	cmp	byte ptr [rsp + 7], 0
	jne	.label_740
	test	r11, r11
	sete	al
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r11
	mov	qword ptr [rsp + 0x60], rdx
	mov	eax, 0
	cmove	r11, rax
	cmp	r14, r11
	jae	.label_829
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_829:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_836
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_836:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_837
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_837:
	add	r14, 3
	xor	r9d, r9d
.label_824:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_747
.label_1258:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_818
	cmp	r12d, 2
	jne	.label_770
	cmp	byte ptr [rsp + 7], 0
	je	.label_770
	jmp	.label_740
.label_1259:
	cmp	r12d, 2
	jne	.label_741
	cmp	byte ptr [rsp + 7], 0
	jne	.label_740
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_765
.label_832:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_798
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
.label_751:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_768
	test	r8b, r8b
	je	.label_768
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_747
.label_756:
	test	rsi, rsi
	jne	.label_767
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_767
.label_761:
	mov	dl, 1
.label_1255:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_740
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_747:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_799
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_802
	jmp	.label_807
	nop	word ptr cs:[rax + rax]
.label_799:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_807
.label_802:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_811
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_765
	jmp	.label_788
	nop	dword ptr [rax]
.label_807:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_788
	jmp	.label_765
.label_811:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_788
.label_766:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_800
	xor	r15d, r15d
	jmp	.label_770
.label_741:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_795
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_765
.label_795:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_740
.label_817:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_747
	nop	word ptr cs:[rax + rax]
.label_788:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_740
	cmp	r12d, 2
	jne	.label_841
	mov	eax, r9d
	and	al, 1
	jne	.label_841
	cmp	r14, r11
	jae	.label_844
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_844:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_781
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_781:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_852
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_852:
	add	r14, 3
	mov	r9b, 1
.label_841:
	cmp	r14, r11
	jae	.label_743
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_743:
	inc	r14
	jmp	.label_748
.label_798:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_752
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_752:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_820:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_774
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_779
	cmp	rbp, -2
	je	.label_785
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_789
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_775:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_854
	bt	rsi, rdx
	jb	.label_745
.label_854:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_775
.label_789:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_813
	xor	r13d, r13d
.label_813:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_820
	jmp	.label_751
.label_796:
	xor	r13d, r13d
	jmp	.label_747
.label_767:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_747
.label_818:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_770
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_770
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_770
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_826
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_771
	cmp	byte ptr [rsp + 7], 0
	jne	.label_740
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_838
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_838:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_803
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_803:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_848
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_848:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_851
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_851:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_747
.label_770:
	xor	eax, eax
.label_758:
	xor	r13d, r13d
	jmp	.label_747
.label_768:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_749
	nop	word ptr cs:[rax + rax]
.label_827:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_749:
	test	r8b, r8b
	je	.label_759
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_760
	cmp	r14, r11
	jae	.label_763
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_763:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_760
	nop	dword ptr [rax]
.label_759:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_745
	cmp	r12d, 2
	jne	.label_773
	mov	eax, r9d
	and	al, 1
	jne	.label_773
	cmp	r14, r11
	jae	.label_778
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_778:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_783
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_783:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_790
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_790:
	add	r14, 3
	mov	r9b, 1
.label_773:
	cmp	r14, r11
	jae	.label_772
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_772:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_794
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_794:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_804
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_804:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_760:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_765
	test	r9b, 1
	je	.label_816
	mov	ebx, eax
	and	bl, 1
	jne	.label_816
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_822
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_822:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_786
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_786:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_816:
	cmp	r14, r11
	jae	.label_827
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_827
	nop	word ptr cs:[rax + rax]
.label_765:
	test	r9b, 1
	je	.label_833
	and	al, 1
	jne	.label_833
	cmp	r14, r11
	jae	.label_834
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_834:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_850
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_850:
	add	r14, 2
	xor	r9d, r9d
.label_833:
	mov	ebx, r15d
.label_748:
	cmp	r14, r11
	jae	.label_839
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_839:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_800
.label_779:
	xor	r13d, r13d
.label_774:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_751
.label_785:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_853
	mov	rsi, qword ptr [rsp + 0x50]
.label_782:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_762
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_782
	xor	r13d, r13d
	jmp	.label_751
.label_853:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_751
.label_762:
	xor	r13d, r13d
	jmp	.label_751
.label_826:
	xor	r13d, r13d
	jmp	.label_747
.label_771:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_747
	nop	dword ptr [rax + rax]
.label_814:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_764
	or	dl, al
	je	.label_745
.label_764:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_757
	or	dl, al
	jne	.label_757
	test	r10b, 1
	jne	.label_787
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_757
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_792
.label_757:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_793
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_801
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_801
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_777:
	cmp	r14, r11
	jae	.label_846
	mov	byte ptr [rcx + r14], al
.label_846:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_777
	jmp	.label_801
.label_740:
	mov	qword ptr [rsp + 0x20], rbp
.label_745:
	mov	rdx, rdi
	mov	r9d, dword ptr [rsp + 0x18]
	test	byte ptr [rsp + 0x1d], 1
	mov	r8d, 4
	mov	rax, qword ptr [rsp + 0x68]
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
.label_842:
	mov	r14, rax
.label_815:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_787:
	sub	rsp, 8
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, dword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x78]
	push	qword ptr [rsp + 0x88]
	push	qword ptr [rsp + 0x108]
	call	quotearg_buffer_restyled
	add	rsp, 0x20
	jmp	.label_842
.label_793:
	mov	rcx, qword ptr [rsp + 8]
.label_801:
	cmp	r14, r11
	jae	.label_815
	mov	byte ptr [rcx + r14], 0
	jmp	.label_815
.label_808:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407ff0
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
	#Procedure 0x408000

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
	call	xcharalloc
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
	je	.label_855
	mov	qword ptr [rax], rbx
.label_855:
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
	#Procedure 0x4080f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_856
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_859:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_859
.label_856:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_860
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_857]], OFFSET FLAT:slot0
.label_860:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_858
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_858:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408190

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4081a0

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
	js	.label_861
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_864
	cmp	r12d, 0x7fffffff
	je	.label_866
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
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_862
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_862:
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
	mov	rbx, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 8]
.label_864:
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
	jbe	.label_867
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_863
.label_867:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_865
	mov	rdi, r14
	call	free
.label_865:
	mov	rdi, r15
	call	xcharalloc
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
.label_863:
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
.label_861:
	call	abort
.label_866:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408360

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408370
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
	#Procedure 0x408380
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
	#Procedure 0x408390

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
	#Procedure 0x4083d0

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
	je	.label_868
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
.label_868:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408430

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
	#Procedure 0x408470

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
	#Procedure 0x408490
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
	#Procedure 0x4084b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_869]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_870]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_871]]
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
	#Procedure 0x408520

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
	#Procedure 0x408530

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408540
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408550
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
	#Procedure 0x4085a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4085b0

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
	mov	rax,  qword ptr [word ptr [rip + label_869]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_870]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_871]]
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
	#Procedure 0x408620
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
	#Procedure 0x408640
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
	#Procedure 0x408660

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408670
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
	#Procedure 0x408680

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408690

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
	#Procedure 0x4086a0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_879
	call	locale_charset
	mov	rbp, rax
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	push	0
	push	0
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_876
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_872
	mov	eax, OFFSET FLAT:label_873
	jmp	.label_874
.label_876:
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	push	0x30
	push	0x33
	call	strcaseeq0
	add	rsp, 0x10
	test	eax, eax
	je	.label_875
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_877
	mov	eax, OFFSET FLAT:label_878
	jmp	.label_874
.label_875:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_753
	mov	eax, OFFSET FLAT:label_810
.label_874:
	cmove	rax, rcx
.label_879:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408760

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
	je	.label_880
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_882
	jmp	.label_881
.label_880:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_881
.label_882:
	mov	eax, 1
	test	bpl, bpl
	je	.label_881
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
.label_881:
	add	rsp, 8
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
	#Procedure 0x4087e0

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
	je	.label_885
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_883
	jmp	.label_884
.label_885:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_884
.label_883:
	mov	eax, 1
	test	bpl, bpl
	je	.label_884
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
.label_884:
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
	#Procedure 0x408870

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
	je	.label_886
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_888
	jmp	.label_887
.label_886:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_887
.label_888:
	mov	eax, 1
	test	bpl, bpl
	je	.label_887
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
.label_887:
	add	rsp, 8
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
	#Procedure 0x4088f0

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
	je	.label_891
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_890
	jmp	.label_889
.label_891:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_889
.label_890:
	mov	eax, 1
	test	bpl, bpl
	je	.label_889
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
.label_889:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960

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
	je	.label_894
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_892
	jmp	.label_893
.label_894:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_893
.label_892:
	mov	eax, 1
	test	bpl, bpl
	je	.label_893
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_893:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4089c0

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
	je	.label_895
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_897
	jmp	.label_896
.label_895:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_896
.label_897:
	mov	eax, 1
	test	bpl, bpl
	je	.label_896
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_896:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a10

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
	je	.label_900
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_899
	jmp	.label_898
.label_900:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_898
.label_899:
	mov	eax, 1
	test	bpl, bpl
	je	.label_898
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_898:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_903
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_902
	jmp	.label_901
.label_903:
	mov	eax, 1
	test	cl, cl
	je	.label_901
.label_902:
	xor	eax, eax
.label_901:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a90

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_60
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_904
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_904:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408ae0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_905
	mov	edi, eax
	jmp	fchdir
.label_905:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b00

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_906
	call	close
.label_906:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b20
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b40

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b50
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b70
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b90
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl getfilecon
	.type getfilecon, @function
getfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bd0

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bf0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c10
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c30
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c50
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c70
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c90
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cb0
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cd0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408cf0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	32
	#Procedure 0x408d00
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d20
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d30
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d40
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d50
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d60

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d70

	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:
	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d80

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408d90

	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:
	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408da0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0

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
	je	.label_923
	mov	edx, OFFSET FLAT:label_913
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_920
.label_923:
	mov	edx, OFFSET FLAT:label_921
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_920:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_925
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
	mov	esi, OFFSET FLAT:label_922
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_908
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_909]]
.label_1352:
	add	rsp, 8
	jmp	.label_907
.label_908:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_917
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
	jmp	.label_907
.label_1353:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_918
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
.label_1354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_916
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
.label_1355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_914
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
.label_1356:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_911
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
	jmp	.label_907
.label_1357:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_910
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
	jmp	.label_907
.label_1358:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_912
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
	jmp	.label_907
.label_1359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_915
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
	jmp	.label_907
.label_1361:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_919
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
	jmp	.label_907
.label_1360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_924
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
.label_907:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409110
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_926:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_926
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409140

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_928:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_927
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_929
	nop	dword ptr [rax]
.label_927:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_929:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_930
	inc	r9
	cmp	r9, 0xa
	jb	.label_928
.label_930:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4091a0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_931
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_931:
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
	#Procedure 0x409230
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_932
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_933
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_935
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_934
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_936
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_936:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_937
	test	rax, rax
	je	.label_938
.label_937:
	pop	rbx
	ret	
.label_938:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409300
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_939
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_939:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409330

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_940
	test	rbx, rbx
	jne	.label_940
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_940:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_942
	test	rax, rax
	je	.label_941
.label_942:
	pop	rbx
	ret	
.label_941:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409360

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_943
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_946
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_944
.label_943:
	test	rcx, rcx
	jne	.label_947
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_947:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_945
.label_944:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_946:
	call	xalloc_die
.label_945:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4093e0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093f0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409400
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
	#Procedure 0x409430
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_948
	call	rpl_calloc
	test	rax, rax
	je	.label_948
	pop	rcx
	ret	
.label_948:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409460

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
	#Procedure 0x409490

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
	.section	.text
	.align	32
	#Procedure 0x4094b0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_949
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_452
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4094e0

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_951
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_950
.label_951:
	mov	rax, rbx
	pop	rbx
	ret	
.label_950:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409510

	.globl xasprintf
	.type xasprintf, @function
xasprintf:
	sub	rsp, 0xd8
	test	al, al
	je	.label_952
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_952:
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
	lea	rsi, [rsp]
	call	xvasprintf
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4095b0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_953
	test	rsi, rsi
	mov	ecx, 1
	je	.label_954
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_954
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_953:
	mov	ecx, 1
.label_954:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409600

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rdi
	call	chdir
	mov	ebx, eax
	xor	eax, eax
	test	ebx, ebx
	je	.label_957
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	mov	eax, ebx
	jne	.label_957
	mov	rdi, r13
	call	strlen
	mov	r15, rax
	lea	rdi, [rsp + 8]
	call	cdb_init
	test	r15, r15
	je	.label_966
	cmp	r15, 0xfff
	jbe	.label_968
	add	r15, r13
	mov	esi, 0x2f
	mov	rdi, r13
	call	__strspn_c1
	mov	rbx, rax
	test	rbx, rbx
	je	.label_964
	cmp	rbx, 2
	jne	.label_976
	lea	rdi, [r13 + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_956
	mov	byte ptr [rbx], 0
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_963
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	jmp	.label_964
.label_976:
	lea	rdi, [rsp + 8]
	mov	esi, OFFSET FLAT:label_965
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_963
	add	r13, rbx
.label_964:
	cmp	byte ptr [r13], 0x2f
	je	.label_970
	cmp	r13, r15
	ja	.label_974
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0x1000
	jl	.label_975
	lea	r12, [rsp + 8]
	nop	word ptr [rax + rax]
.label_969:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, r13
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_956
	mov	byte ptr [rbx], 0
	mov	rax, rbx
	sub	rax, r13
	cmp	rax, 0x1000
	jge	.label_977
	mov	rdi, r12
	mov	rsi, r13
	call	cdb_advance_fd
	mov	byte ptr [rbx], 0x2f
	test	eax, eax
	jne	.label_963
	inc	rbx
	mov	rdi, rbx
	call	find_non_slash
	mov	r13, rax
	mov	rax, r15
	sub	rax, r13
	cmp	rax, 0xfff
	jg	.label_969
.label_975:
	cmp	r13, r15
	jae	.label_973
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	call	cdb_advance_fd
	test	eax, eax
	jne	.label_963
.label_973:
	lea	rdi, [rsp + 8]
	call	cdb_fchdir
	test	eax, eax
	je	.label_955
.label_963:
	mov	ebx, dword ptr [r14]
	lea	rdi, [rsp + 8]
	call	cdb_free
	mov	dword ptr [r14], ebx
	jmp	.label_962
.label_956:
	mov	dword ptr [r14], 0x24
.label_962:
	mov	eax, 0xffffffff
.label_957:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_955:
	lea	rdi, [rsp + 8]
	call	cdb_free
	xor	eax, eax
	jmp	.label_957
.label_977:
	mov	edi, OFFSET FLAT:label_967
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_960
	call	__assert_fail
.label_966:
	mov	edi, OFFSET FLAT:label_971
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_960
	call	__assert_fail
.label_968:
	mov	edi, OFFSET FLAT:label_972
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_960
	call	__assert_fail
.label_970:
	mov	edi, OFFSET FLAT:label_958
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_960
	call	__assert_fail
.label_974:
	mov	edi, OFFSET FLAT:label_961
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_960
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409850

	.globl cdb_init
	.type cdb_init, @function
cdb_init:
	mov	dword ptr [rdi], 0xffffff9c
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl cdb_advance_fd
	.type cdb_advance_fd, @function
cdb_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	mov	eax, 0xffffffff
	test	ebp, ebp
	js	.label_978
	mov	rdi, rbx
	call	cdb_free
	mov	dword ptr [rbx], ebp
	xor	eax, eax
.label_978:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098a0

	.globl find_non_slash
	.type find_non_slash, @function
find_non_slash:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x2f
	call	__strspn_c1
	add	rax, rbx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098c0

	.globl cdb_fchdir
	.type cdb_fchdir, @function
cdb_fchdir:
	mov	edi, dword ptr [rdi]
	jmp	fchdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098d0

	.globl cdb_free
	.type cdb_free, @function
cdb_free:
	push	rax
	mov	edi, dword ptr [rdi]
	test	edi, edi
	js	.label_979
	call	close
	test	eax, eax
	jne	.label_982
.label_979:
	pop	rax
	ret	
.label_982:
	mov	edi, OFFSET FLAT:label_980
	mov	esi, OFFSET FLAT:label_959
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_981
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409900

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
	je	.label_983
	cmp	r15, -2
	jb	.label_983
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_983
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_983:
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
	#Procedure 0x409960

	.globl read_file_system_list
	.type read_file_system_list, @function
read_file_system_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	edi, OFFSET FLAT:label_998
	mov	esi, OFFSET FLAT:label_999
	call	fopen
	mov	r14, rax
	test	r14, r14
	je	.label_1006
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp + 0x48], 0
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	lea	r12, [rsp + 0x18]
	cmp	rax, -1
	je	.label_1009
	lea	rbx, [rsp + 7]
	lea	r15, [rsp + 0x2c]
	lea	r13, [rsp + 0x14]
	nop	dword ptr [rax + rax]
.label_1014:
	mov	rdi, qword ptr [rsp + 8]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_1011
	mov	eax, 0
	lea	rdx, [rsp + 0x4c]
	lea	rcx, [rsp + 0x48]
	lea	r8, [rsp + 0x2c]
	lea	r9, [rsp + 0x38]
	push	rbx
	push	r15
	push	r13
	call	sscanf
	add	rsp, 0x20
	or	eax, 4
	cmp	eax, 7
	jne	.label_984
	movsxd	rdi, dword ptr [rsp + 0x2c]
	add	rdi, qword ptr [rsp + 8]
	mov	esi, OFFSET FLAT:label_988
	call	strstr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_984
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_992
	xor	eax, eax
	mov	rdi, rbp
	lea	rdx, [rsp + 0x44]
	lea	rcx, [rsp + 0x40]
	lea	r8, [rsp + 0x30]
	lea	r9, [rsp + 0x3c]
	push	rbx
	call	sscanf
	add	rsp, 0x10
	or	eax, 4
	cmp	eax, 5
	jne	.label_984
	movsxd	rax, dword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x2c]
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0
	movsxd	rax, dword ptr [rsp + 0x38]
	mov	byte ptr [rbp + rax], 0
	movsxd	rax, dword ptr [rsp + 0x34]
	mov	byte ptr [rbp + rax], 0
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	unescape_tab
	mov	edi, 0x38
	call	xmalloc
	mov	r13, rax
	movsxd	rdi, dword ptr [rsp + 0x28]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13], rax
	movsxd	rdi, dword ptr [rsp + 0x14]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 8], rax
	movsxd	rdi, dword ptr [rsp + 0x24]
	add	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	qword ptr [r13 + 0x10], rax
	movsxd	rdi, dword ptr [rsp + 0x3c]
	add	rdi, rbp
	call	xstrdup
	mov	qword ptr [r13 + 0x18], rax
	or	byte ptr [r13 + 0x28], 4
	mov	edi, dword ptr [rsp + 0x44]
	mov	esi, dword ptr [rsp + 0x40]
	call	gnu_dev_makedev
	mov	qword ptr [r13 + 0x20], rax
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_335
	mov	rdi, rbp
	call	strcmp
	mov	bl, 1
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_994
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_240
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_218
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_367
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_154
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_250
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_323
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_264
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_995
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_985
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	al, 1
	je	.label_990
	mov	esi, OFFSET FLAT:label_1008
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	sete	al
	nop	word ptr cs:[rax + rax]
.label_990:
	movzx	ecx, byte ptr [r13 + 0x28]
	and	cl, 0xfe
	or	cl, al
	mov	byte ptr [r13 + 0x28], cl
	mov	rbp, qword ptr [r13]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1003
	cmp	byte ptr [rbp], 0x2f
	jne	.label_993
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_993
	mov	rbp, qword ptr [r13 + 0x18]
	mov	esi, OFFSET FLAT:label_1005
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1003
	mov	esi, OFFSET FLAT:label_265
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1003
.label_993:
	mov	rsi, qword ptr [r13]
	mov	edi, OFFSET FLAT:label_997
	call	strcmp
	test	eax, eax
	sete	bl
.label_1003:
	movzx	eax, byte ptr [r13 + 0x28]
	add	bl, bl
	and	al, 0xfd
	or	al, bl
	mov	byte ptr [r13 + 0x28], al
	mov	qword ptr [r12], r13
	add	r13, 0x30
	mov	r12, r13
	lea	rbx, [rsp + 7]
	lea	r13, [rsp + 0x14]
.label_984:
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp + 0x48]
	mov	rdx, r14
	call	getline
	cmp	rax, -1
	jne	.label_1014
.label_1009:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, r14
	call	ferror_unlocked
	test	eax, eax
	je	.label_986
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, r14
	call	rpl_fclose
	mov	dword ptr [rbp], r15d
.label_987:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	qword ptr [r12], 0
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_991
	nop	dword ptr [rax]
.label_996:
	mov	rbx, qword ptr [rdi + 0x30]
	call	free_mount_entry
	mov	qword ptr [rsp + 0x18], rbx
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_996
.label_991:
	mov	dword ptr [rbp], r14d
	xor	eax, eax
	jmp	.label_1002
.label_1006:
	mov	edi, OFFSET FLAT:label_1004
	mov	esi, OFFSET FLAT:label_999
	call	setmntent
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1002
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1007
	lea	r15, [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1012:
	mov	esi, OFFSET FLAT:label_1010
	mov	rdi, rbp
	call	hasmntopt
	mov	qword ptr [rsp + 0x50], rax
	mov	edi, 0x38
	call	xmalloc
	mov	r12, rax
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	qword ptr [r12], rax
	mov	rdi, qword ptr [rbp + 8]
	call	xstrdup
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	mov	rdi, qword ptr [rbp + 0x10]
	call	xstrdup
	mov	rbp, rax
	mov	qword ptr [r12 + 0x18], rbp
	or	byte ptr [r12 + 0x28], 4
	mov	esi, OFFSET FLAT:label_335
	mov	rdi, rbp
	call	strcmp
	mov	r13b, 1
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_319
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_994
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_240
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_218
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_367
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_154
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_250
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_323
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_264
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_995
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	mov	esi, OFFSET FLAT:label_985
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	mov	r14b, 1
	je	.label_989
	cmp	qword ptr [rsp + 0x50], 0
	sete	r14b
	mov	esi, OFFSET FLAT:label_1008
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_989
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_989:
	movzx	eax, byte ptr [r12 + 0x28]
	and	al, 0xfe
	or	al, r14b
	mov	byte ptr [r12 + 0x28], al
	mov	rbp, qword ptr [r12]
	mov	esi, 0x3a
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	jne	.label_1000
	cmp	byte ptr [rbp], 0x2f
	jne	.label_1001
	cmp	byte ptr [rbp + 1], 0x2f
	jne	.label_1001
	mov	rbp, qword ptr [r12 + 0x18]
	mov	esi, OFFSET FLAT:label_1005
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1000
	mov	esi, OFFSET FLAT:label_265
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	je	.label_1000
	nop	dword ptr [rax]
.label_1001:
	mov	rsi, qword ptr [r12]
	mov	edi, OFFSET FLAT:label_997
	call	strcmp
	test	eax, eax
	sete	r13b
.label_1000:
	movzx	eax, byte ptr [r12 + 0x28]
	add	r13b, r13b
	and	al, 0xfd
	or	al, r13b
	mov	byte ptr [r12 + 0x28], al
	mov	qword ptr [r12 + 0x20], -1
	mov	qword ptr [r15], r12
	add	r12, 0x30
	mov	rdi, rbx
	call	getmntent
	mov	rbp, rax
	test	rbp, rbp
	mov	r15, r12
	jne	.label_1012
	jmp	.label_1013
.label_986:
	mov	rdi, r14
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_1015
	jmp	.label_987
.label_1007:
	lea	r12, [rsp + 0x18]
.label_1013:
	mov	rdi, rbx
	call	endmntent
	test	eax, eax
	je	.label_987
.label_1015:
	mov	qword ptr [r12], 0
	mov	rax, qword ptr [rsp + 0x18]
.label_1002:
	add	rsp, 0x58
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
	#Procedure 0x40a040

	.globl unescape_tab
	.type unescape_tab, @function
unescape_tab:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	strlen
	inc	rax
	je	.label_1019
	xor	ecx, ecx
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_1017:
	lea	rsi, [rcx + 4]
	cmp	rsi, rax
	jae	.label_1016
	cmp	byte ptr [r14 + rcx], 0x5c
	jne	.label_1016
	movzx	esi, byte ptr [r14 + rcx + 1]
	mov	ebx, esi
	and	bl, 0xfc
	cmp	bl, 0x30
	jne	.label_1016
	movzx	edi, byte ptr [r14 + rcx + 2]
	mov	ebx, edi
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1016
	movzx	r8d, byte ptr [r14 + rcx + 3]
	mov	ebx, r8d
	and	bl, 0xf8
	cmp	bl, 0x30
	jne	.label_1016
	add	rcx, 3
	shl	sil, 6
	shl	dil, 3
	add	dil, sil
	add	dil, r8b
	add	dil, 0x50
	mov	byte ptr [rdx], dil
	jmp	.label_1018
	nop	dword ptr [rax]
.label_1016:
	movzx	ebx, byte ptr [r14 + rcx]
	mov	byte ptr [rdx], bl
.label_1018:
	inc	rcx
	inc	rdx
	cmp	rcx, rax
	jb	.label_1017
.label_1019:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a0e0

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
	je	.label_1020
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
.label_1020:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a120

	.globl tzalloc
	.type tzalloc, @function
tzalloc:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1021
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	inc	r15
.label_1021:
	lea	rax, [r15 + 0x11]
	and	rax, 0xfffffffffffffff8
	cmp	r15, 0x77
	mov	edi, 0x80
	cmovae	rdi, rax
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1022
	mov	qword ptr [rbx], 0
	test	r14, r14
	setne	byte ptr [rbx + 8]
	mov	byte ptr [rbx + 9], 0
	je	.label_1022
	mov	rdi, rbx
	add	rdi, 9
	mov	rsi, r14
	mov	rdx, r15
	call	extend_abbrs
.label_1022:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a190

	.globl extend_abbrs
	.type extend_abbrs, @function
extend_abbrs:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	memcpy
	mov	byte ptr [rbx + r14], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a1b0

	.globl tzfree
	.type tzfree, @function
tzfree:
	push	rbx
	cmp	rdi, 2
	jb	.label_1023
	nop	word ptr [rax + rax]
.label_1024:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1024
.label_1023:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1e0

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
	je	.label_1025
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1028
	mov	rdi, rbp
	mov	rsi, r15
	call	localtime_r
	mov	bpl, 1
	test	rax, rax
	je	.label_1026
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	mov	ebp, eax
	xor	bpl, 1
.label_1026:
	mov	rdi, r14
	call	revert_tz
	xor	ecx, ecx
	xor	al, 1
	cmovne	r15, rcx
	test	bpl, bpl
	cmovne	r15, rcx
	mov	rax, r15
	jmp	.label_1027
.label_1025:
	mov	rdi, rbp
	mov	rsi, r15
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	gmtime_r
.label_1028:
	xor	eax, eax
.label_1027:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a270

	.globl set_tz
	.type set_tz, @function
set_tz:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	call	getenv_TZ
	mov	rbx, rax
	test	rbx, rbx
	mov	cl, byte ptr [r14 + 8]
	je	.label_1032
	test	cl, cl
	je	.label_1030
	lea	rdi, [r14 + 9]
	mov	rsi, rbx
	call	strcmp
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	jne	.label_1030
	jmp	.label_1029
.label_1032:
	mov	eax, 1
	test	cl, cl
	je	.label_1029
.label_1030:
	mov	rdi, rbx
	call	tzalloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1029
	mov	rdi, r14
	call	change_env
	test	al, al
	je	.label_1031
	mov	rax, rbx
	jmp	.label_1029
.label_1031:
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	tzfree
	mov	dword ptr [r14], ebp
	xor	eax, eax
.label_1029:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a2f0

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
	mov	al, 1
	test	rbx, rbx
	je	.label_1033
	cmp	r15, rbx
	ja	.label_1036
	lea	rcx, [r15 + 0x38]
	cmp	rbx, rcx
	jb	.label_1033
.label_1036:
	mov	r14d, OFFSET FLAT:label_39
	cmp	byte ptr [rbx], 0
	je	.label_1037
	lea	r14, [r12 + 9]
	jmp	.label_1041
.label_1034:
	mov	rax, qword ptr [r12]
	lea	r14, [rax + 9]
	test	rax, rax
	cmove	r14, rcx
	cmovne	r12, rax
.label_1041:
	lea	r13, [r12 + 9]
.label_1044:
	mov	rdi, r14
	mov	rsi, rbx
	call	strcmp
	test	eax, eax
	je	.label_1038
	cmp	byte ptr [r14], 0
	jne	.label_1043
	mov	rbp, r14
	sub	rbp, r13
	jne	.label_1039
	cmp	byte ptr [r12 + 8], 0
	je	.label_1039
.label_1043:
	mov	rdi, r14
	call	strlen
	lea	rcx, [r14 + rax + 1]
	cmp	byte ptr [r14 + rax + 1], 0
	mov	r14, rcx
	jne	.label_1044
	jmp	.label_1034
.label_1039:
	mov	rdi, rbx
	call	strlen
	inc	rax
	mov	rcx, rbp
	not	rcx
	cmp	rax, rcx
	jbe	.label_1035
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_1033
.label_1035:
	add	rbp, rax
	cmp	rbp, 0x76
	ja	.label_1042
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	call	extend_abbrs
.label_1038:
	mov	al, 1
.label_1037:
	mov	qword ptr [r15 + 0x30], r14
.label_1033:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1042:
	mov	rdi, rbx
	call	tzalloc
	mov	r14, rax
	mov	qword ptr [r12], r14
	test	r14, r14
	mov	al, 1
	je	.label_1040
	mov	byte ptr [r14 + 8], 0
	add	r14, 9
	jmp	.label_1037
.label_1040:
	xor	eax, eax
	jmp	.label_1033
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a410

	.globl revert_tz
	.type revert_tz, @function
revert_tz:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	bl, 1
	cmp	r14, 1
	je	.label_1045
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	mov	rdi, r14
	call	change_env
	mov	ebx, eax
	test	bl, bl
	jne	.label_1046
	mov	ebp, dword ptr [r15]
.label_1046:
	mov	rdi, r14
	call	tzfree
	mov	dword ptr [r15], ebp
.label_1045:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a460

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
	je	.label_1047
	mov	rdi, rbx
	call	set_tz
	mov	r14, rax
	test	r14, r14
	je	.label_1048
	mov	rdi, r15
	call	mktime
	mov	qword ptr [rsp], rax
	cmp	rax, -1
	jne	.label_1051
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	localtime_r
	test	rax, rax
	je	.label_1049
	lea	rsi, [rsp + 8]
	mov	rdi, r15
	call	equal_tm
	test	eax, eax
	je	.label_1049
.label_1051:
	mov	rdi, rbx
	mov	rsi, r15
	call	save_abbr
	test	al, al
	jne	.label_1049
	mov	qword ptr [rsp], -1
.label_1049:
	mov	rdi, r14
	call	revert_tz
	test	al, al
	je	.label_1048
	mov	rax, qword ptr [rsp]
	jmp	.label_1050
.label_1048:
	mov	rax, -1
.label_1050:
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1047:
	mov	rdi, r15
	add	rsp, 0x40
	pop	rbx
	pop	r14
	pop	r15
	jmp	timegm
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a510

	.globl equal_tm
	.type equal_tm, @function
equal_tm:
	push	rbx
	mov	eax, dword ptr [rsi]
	mov	ecx, dword ptr [rsi + 4]
	xor	eax, dword ptr [rdi]
	xor	ecx, dword ptr [rdi + 4]
	or	ecx, eax
	mov	eax, dword ptr [rsi + 8]
	xor	eax, dword ptr [rdi + 8]
	mov	edx, dword ptr [rsi + 0xc]
	xor	edx, dword ptr [rdi + 0xc]
	or	edx, eax
	or	edx, ecx
	mov	eax, dword ptr [rsi + 0x10]
	xor	eax, dword ptr [rdi + 0x10]
	mov	ebx, dword ptr [rsi + 0x14]
	xor	ebx, dword ptr [rdi + 0x14]
	or	ebx, eax
	or	ebx, edx
	mov	edi, dword ptr [rdi + 0x20]
	mov	esi, dword ptr [rsi + 0x20]
	call	isdst_differ
	movzx	ecx, al
	xor	eax, eax
	or	ecx, ebx
	sete	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a560

	.globl getenv_TZ
	.type getenv_TZ, @function
getenv_TZ:
	mov	edi, OFFSET FLAT:label_413
	jmp	getenv
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a570

	.globl change_env
	.type change_env, @function
change_env:
	push	rbx
	xor	ebx, ebx
	cmp	byte ptr [rdi + 8], 0
	lea	rdi, [rdi + 9]
	cmove	rdi, rbx
	call	setenv_TZ
	test	eax, eax
	jne	.label_1052
	call	tzset
	mov	bl, 1
.label_1052:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5a0

	.globl setenv_TZ
	.type setenv_TZ, @function
setenv_TZ:
	mov	rax, rdi
	mov	edi, OFFSET FLAT:label_413
	test	rax, rax
	je	.label_1053
	mov	edx, 1
	mov	rsi, rax
	jmp	setenv
.label_1053:
	jmp	unsetenv
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a5c0

	.globl isdst_differ
	.type isdst_differ, @function
isdst_differ:
	test	edi, edi
	sete	al
	test	esi, esi
	sete	cl
	xor	cl, al
	or	esi, edi
	setns	al
	and	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a5e0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1054
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1054
.label_1055:
	ret	
.label_1054:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1055
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a610
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1056
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1056:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a630
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a640
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
	#Procedure 0x40a650
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1057
.label_1058:
	ret	
.label_1057:
	cmp	edi, 0x7f
	je	.label_1058
	xor	eax, eax
	jmp	.label_1058
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a670
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
	#Procedure 0x40a680
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
	#Procedure 0x40a690
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
	#Procedure 0x40a6a0
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
	#Procedure 0x40a6b0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_1059
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_1060]]
.label_1061:
	ret	
.label_1059:
	xor	eax, eax
	jmp	.label_1061
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1062
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_1062:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6f0

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
	#Procedure 0x40a700
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1063
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1063:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a720
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
	#Procedure 0x40a730
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
	#Procedure 0x40a740

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
	je	.label_1064
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1065
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1065
.label_1064:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1065
	test	cl, cl
	jne	.label_1065
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1065:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7b0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1066
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1066:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_1067
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1069
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1068
.label_1069:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1068:
	mov	edx, dword ptr [rax]
.label_1067:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a880

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1071
	cmp	byte ptr [rax], 0x43
	jne	.label_1073
	cmp	byte ptr [rax + 1], 0
	je	.label_1070
.label_1073:
	mov	esi, OFFSET FLAT:label_1072
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1071
.label_1070:
	xor	ebx, ebx
.label_1071:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_39
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1074
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a8f0

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
	ja	.label_1075
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
	jmp	.label_1076
.label_1075:
	mov	eax, ebx
.label_1076:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a940

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rax
	mov	rax, rsi
	mov	rcx, rdi
	xor	edi, edi
	jmp	.label_1077
	nop	dword ptr [rax + rax]
.label_1083:
	inc	rdi
.label_1077:
	movzx	edx, byte ptr [rcx + rdi*2]
	cmp	dl, 0x25
	jne	.label_1080
	cmp	byte ptr [rcx + rdi*2 + 1], 0x73
	je	.label_1083
	jmp	.label_1078
.label_1080:
	test	dl, dl
	jne	.label_1078
	mov	rsi, rax
	call	xstrcat
	pop	rcx
	ret	
.label_1078:
	lea	rdi, [rsp]
	mov	esi, 1
	mov	rdx, rcx
	mov	rcx, rax
	call	__vasprintf_chk
	test	eax, eax
	js	.label_1079
	mov	rax, qword ptr [rsp]
	jmp	.label_1081
.label_1079:
	call	__errno_location
	mov	rcx, rax
	xor	eax, eax
	cmp	dword ptr [rcx], 0xc
	je	.label_1082
.label_1081:
	pop	rcx
	ret	
.label_1082:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9b0

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
	je	.label_1090
	xor	ebx, ebx
	mov	rbp, r12
	nop	
.label_1087:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1086
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1089
	nop	word ptr [rax + rax]
.label_1086:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1089:
	mov	rdi, qword ptr [rax]
	call	strlen
	mov	rdi, rbx
	mov	rsi, rax
	call	xsum
	mov	rbx, rax
	dec	rbp
	jne	.label_1087
	test	rbx, -0x80000000
	je	.label_1088
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	xor	r15d, r15d
	jmp	.label_1091
.label_1090:
	mov	edi, 1
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	jmp	.label_1085
.label_1088:
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r15, rax
	mov	rbx, r15
	test	r12, r12
	je	.label_1085
	nop	dword ptr [rax]
.label_1092:
	movsxd	rcx, dword ptr [r14]
	cmp	rcx, 0x28
	ja	.label_1084
	mov	rax, rcx
	add	rax, qword ptr [r14 + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [r14], ecx
	jmp	.label_1093
	nop	dword ptr [rax + rax]
.label_1084:
	mov	rax, qword ptr [r14 + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [r14 + 8], rcx
.label_1093:
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
	jne	.label_1092
.label_1085:
	mov	byte ptr [rbx], 0
.label_1091:
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
	.section	.text
	.align	32
	#Procedure 0x40aae0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1094
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1095
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1094
.label_1095:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1094
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1096
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1096:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1094:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1097
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1097
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1097:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1098
	ret	
.label_1098:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40abb0

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
	jne	.label_1099
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1099
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1100
.label_1099:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1100:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1101
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1101:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac20

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
	#Procedure 0x40ac40

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac50

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
	#Procedure 0x40ac70
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
	#Procedure 0x40ac90
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
	#Procedure 0x40acc0
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
	#Procedure 0x40acd0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1111
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1111:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_1112
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1107
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1108
	test	esi, esi
	jne	.label_1112
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1114
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1105
.label_1112:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1104
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1108
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1110
.label_1107:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1108:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1115
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1103
.label_1115:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1103:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1110:
	cmp	eax, 6
	jne	.label_1104
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1113
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1102
.label_1104:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1106
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1109
.label_1114:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1105:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_1113:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1102:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_1106:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1109:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae90

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aea0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1116
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1118
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1118
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1119
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1120
.label_1118:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1120
.label_1116:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1120:
	test	ebx, ebx
	js	.label_1119
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1119
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1117
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1119
.label_1117:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1119:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40b030

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
