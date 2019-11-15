	.section	.text
	.align	16
	#Procedure 0x401810

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_11:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	.align	16
	#Procedure 0x401910

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_24
	nop	
.label_23:
	mov	edi, OFFSET FLAT:label_16
	call	strcmp
	test	eax, eax
	je	.label_21
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_23
.label_21:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_16
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_17
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_16
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_20
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
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
	.align	16
	#Procedure 0x401a30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_29
	call	setlocale
	mov	edi, OFFSET FLAT:label_61
	mov	esi, OFFSET FLAT:label_62
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_61
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebx, 2
	xor	ecx, ecx
.label_52:
	mov	r15d, ecx
	mov	ebp, ebx
	jmp	.label_30
.label_55:
	mov	ebp, 1
	nop	dword ptr [rax]
.label_30:
	mov	ebx, ebp
	xor	ebp, ebp
	mov	edx, OFFSET FLAT:label_44
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_41
	cmp	eax, 0x62
	je	.label_30
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_52
	cmp	eax, 0x63
	je	.label_55
	jmp	.label_58
.label_41:
	cmp	eax, -1
	jne	.label_51
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r15b, r15b
	je	.label_60
	cmp	ebx, 2
	jne	.label_63
.label_60:
	sub	r14d, eax
	lea	r12, [r12 + rax*8]
	movzx	ebp, r15b
	xor	ebp, 1
	cmp	ebp, r14d
	jl	.label_64
	test	r15b, r15b
	je	.label_42
	mov	ebp, OFFSET FLAT:G_line
	mov	ebx, OFFSET FLAT:G_line
	nop	dword ptr [rax + rax]
.label_49:
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
	mov	rcx, rbx
	sub	rcx, rbp
	xor	eax, eax
	cmp	rcx, 0x10c4
	jb	.label_49
	jmp	.label_31
.label_42:
	cmp	ebx, 2
	jne	.label_54
	call	guess_shell_syntax
	mov	ebx, eax
	cmp	ebx, 2
	je	.label_48
.label_54:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	test	r14d, r14d
	je	.label_65
	mov	rdi, qword ptr [r12]
	call	dc_parse_file
	jmp	.label_67
.label_65:
	xor	edi, edi
	xor	esi, esi
	call	dc_parse_stream
.label_67:
	mov	ecx, eax
	mov	eax, 1
	test	cl, cl
	je	.label_31
	mov	rbp,  qword ptr [word ptr [rip + label_33]]
	mov	r14,  qword ptr [word ptr [rip + label_36]]
	sub	rbp, r14
	jne	.label_45
	or	byte ptr [byte ptr [rip + label_50]],  2
.label_45:
	mov	rax,  qword ptr [word ptr [rip + label_32]]
	mov	rcx,  qword ptr [word ptr [rip + label_33]]
	add	rcx, rax
	not	rax
	and	rax, rcx
	mov	rcx,  qword ptr [word ptr [rip + label_34]]
	mov	rdx, rax
	sub	rdx, rcx
	mov	rsi,  qword ptr [word ptr [rip + label_35]]
	mov	rdi, rsi
	sub	rdi, rcx
	cmp	rdx, rdi
	cmova	rax, rsi
	mov	qword ptr [word ptr [rip + label_33]],  rax
	mov	qword ptr [word ptr [rip + label_36]],  rax
	test	ebx, ebx
	mov	eax, OFFSET FLAT:label_37
	mov	edi, OFFSET FLAT:label_38
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:label_39
	mov	ebx, OFFSET FLAT:label_40
	cmove	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rbp
	call	fwrite_unlocked
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
.label_31:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_51:
	cmp	eax, 0xffffff7d
	je	.label_59
	cmp	eax, 0xffffff7e
	jne	.label_58
	xor	edi, edi
	call	usage
.label_59:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_19
	mov	r8d, OFFSET FLAT:label_56
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_46
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
.label_64:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + rbp*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	test	r15b, r15b
	je	.label_47
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_47:
	mov	edi, 1
	call	usage
.label_58:
	mov	edi, 1
	call	usage
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl guess_shell_syntax
	.type guess_shell_syntax, @function
guess_shell_syntax:
	push	rax
	mov	edi, OFFSET FLAT:label_68
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_69
	cmp	byte ptr [rax], 0
	je	.label_69
	mov	rdi, rax
	call	last_component
	cmp	byte ptr [rax], 0x63
	jne	.label_70
	cmp	byte ptr [rax + 1], 0x73
	jne	.label_70
	cmp	byte ptr [rax + 2], 0x68
	jne	.label_70
	mov	ecx, 1
	cmp	byte ptr [rax + 3], 0
	je	.label_69
.label_70:
	mov	esi, OFFSET FLAT:label_71
	mov	rdi, rax
	call	strcmp
	xor	ecx, ecx
	test	eax, eax
	sete	cl
.label_69:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0

	.globl dc_parse_stream
	.type dc_parse_stream, @function
dc_parse_stream:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x30], 0
	mov	edi, OFFSET FLAT:label_84
	call	getenv
	test	rax, rax
	je	.label_105
	cmp	byte ptr [rax], 0
	jne	.label_91
.label_105:
	mov	eax, OFFSET FLAT:label_108
.label_91:
	mov	qword ptr [rsp + 0x28], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 3
	mov	qword ptr [rsp], rax
	xor	r15d, r15d
	jmp	.label_77
	nop	
.label_80:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_77:
	test	r12, r12
	je	.label_89
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x30]
	mov	rdx, r12
	call	getline
	mov	rdi, qword ptr [rsp + 0x20]
	test	rax, rax
	jg	.label_93
	jmp	.label_96
	nop	word ptr [rax + rax]
.label_89:
	mov	eax, OFFSET FLAT:label_98
	cmp	r13, rax
	je	.label_99
	mov	rdi, r13
	call	strlen
	mov	rdi, r13
	lea	r13, [r13 + rax + 1]
.label_93:
	inc	r15
	lea	rsi, [rsp + 8]
	lea	rdx, [rsp + 0x10]
	call	parse_line
	mov	r14, qword ptr [rsp + 8]
	test	r14, r14
	je	.label_77
	mov	rbp, qword ptr [rsp + 0x10]
	test	rbp, rbp
	je	.label_81
	mov	esi, OFFSET FLAT:label_84
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_88
	mov	rax, qword ptr [rsp]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	mov	qword ptr [rsp], rax
	test	eax, eax
	je	.label_90
	mov	al, byte ptr [r14]
	cmp	al, 0x2a
	je	.label_97
	cmp	al, 0x2e
	jne	.label_100
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_102
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_102:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x2a
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_75
	nop	dword ptr [rax]
.label_81:
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r15
	call	error
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_77
.label_88:
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	call	fnmatch
	test	eax, eax
	je	.label_76
	xor	eax, eax
	mov	rcx, qword ptr [rsp]
	cmp	ecx, 2
	sete	al
	add	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_80
.label_90:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_80
.label_76:
	mov	eax, 2
	mov	qword ptr [rsp], rax
	jmp	.label_80
.label_97:
	mov	rdi, r14
.label_75:
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_86
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_86:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	je	.label_73
	jmp	.label_72
.label_100:
	mov	esi, OFFSET FLAT:label_82
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_80
	mov	esi, OFFSET FLAT:label_87
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_80
	mov	esi, OFFSET FLAT:label_92
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_80
	mov	r14, rbx
	mov	rbx, -0x128
	mov	rbp, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_79:
	mov	rsi,  qword ptr [word ptr [rbx + label_83]]
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_95
	add	rbx, 8
	jne	.label_79
	mov	rax, qword ptr [rsp]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_74
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rbx, r14
	test	rbx, rbx
	je	.label_107
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	jmp	.label_109
.label_95:
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_94
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_94:
	mov	rax,  qword ptr [word ptr [rbx + label_103]]
	mov	al, byte ptr [rax]
	mov	rcx,  qword ptr [word ptr [rip + label_33]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_104
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_104:
	mov	rax,  qword ptr [word ptr [rbx + label_103]]
	mov	al, byte ptr [rax + 1]
	mov	rcx,  qword ptr [word ptr [rip + label_33]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rdx
	mov	byte ptr [rcx], al
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_106
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_106:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	mov	rbx, r14
	jne	.label_72
.label_73:
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_72:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x3a
	jmp	.label_80
.label_74:
	mov	rbx, r14
	jmp	.label_80
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
.label_109:
	mov	rcx, rax
	mov	r9, qword ptr [rsp + 8]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r15
	call	error
	jmp	.label_80
.label_96:
	call	free
.label_99:
	mov	rax, qword ptr [rsp + 0x18]
	and	al, 1
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
	#Procedure 0x402220

	.globl dc_parse_file
	.type dc_parse_file, @function
dc_parse_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_110
	cmp	byte ptr [rbx + 1], 0
	je	.label_114
.label_110:
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	mov	esi, OFFSET FLAT:label_111
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_112
.label_114:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	bpl, al
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	test	eax, eax
	je	.label_113
.label_112:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_113:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0

	.globl parse_line
	.type parse_line, @function
parse_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	qword ptr [r12], 0
	mov	qword ptr [r14], 0
	call	__ctype_b_loc
	mov	qword ptr [rsp], rax
	mov	rbp, qword ptr [rax]
	dec	r15
	nop	word ptr cs:[rax + rax]
.label_116:
	movzx	ebx, byte ptr [r15 + 1]
	inc	r15
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_116
	test	bl, bl
	je	.label_118
	cmp	bl, 0x23
	je	.label_118
	mov	rbx, r14
	mov	rax, qword ptr [rsp]
	mov	r14, qword ptr [rax]
	mov	r13, r15
	nop	dword ptr [rax + rax]
.label_117:
	movsx	ebp, byte ptr [r13]
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	inc	r13
	test	ebp, ebp
	je	.label_122
	movzx	eax, word ptr [r14 + rax*2]
	and	eax, 0x2000
	test	ax, ax
	je	.label_117
.label_122:
	lea	rsi, [r13 - 1]
	sub	rsi, r15
	mov	rdi, r15
	call	xstrndup
	mov	qword ptr [r12], rax
	cmp	byte ptr [r13 - 1], 0
	mov	r14, rbx
	je	.label_118
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	dword ptr [rax]
.label_119:
	movzx	ebx, byte ptr [r13]
	movsx	edi, bl
	call	to_uchar
	movzx	eax, al
	inc	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_119
	test	bl, bl
	je	.label_118
	cmp	bl, 0x23
	je	.label_118
	lea	rbx, [r13 - 1]
	jmp	.label_121
	nop	dword ptr [rax]
.label_124:
	inc	r13
.label_121:
	movzx	eax, byte ptr [r13 - 1]
	cmp	al, 0x23
	je	.label_123
	test	al, al
	jne	.label_124
.label_123:
	mov	rax, qword ptr [rsp]
	mov	rbp, qword ptr [rax]
	nop	word ptr [rax + rax]
.label_120:
	movsx	edi, byte ptr [r13 - 2]
	call	to_uchar
	movzx	eax, al
	dec	r13
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_120
	sub	r13, rbx
	mov	rdi, rbx
	mov	rsi, r13
	call	xstrndup
	mov	qword ptr [r14], rax
.label_118:
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
	.align	16
	#Procedure 0x402410

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	cl, byte ptr [rbx]
	test	cl, cl
	je	.label_127
	inc	rbx
	mov	al, 1
	nop	word ptr cs:[rax + rax]
.label_130:
	movsx	ecx, cl
	lea	edx, [rcx - 0x3a]
	cmp	edx, 0x24
	ja	.label_133
	mov	bpl, 1
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_134]]
.label_435:
	test	al, 1
	mov	bpl, 1
	je	.label_125
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_129
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_129:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_132
	nop	dword ptr [rax]
.label_436:
	not	al
	and	al, 1
	mov	ebp, eax
	jmp	.label_125
	nop	dword ptr [rax + rax]
.label_133:
	cmp	ecx, 0x27
	mov	bpl, 1
	jne	.label_125
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_131
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_131:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_126
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_126:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_135
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_135:
	mov	rax,  qword ptr [word ptr [rip + label_33]]
	lea	rcx, [rax + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rcx
	mov	byte ptr [rax], 0x27
.label_132:
	mov	bpl, 1
.label_125:
	mov	rax,  qword ptr [word ptr [rip + label_35]]
	cmp	rax,  qword ptr [word ptr [rip + label_33]]
	jne	.label_128
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
.label_128:
	movzx	eax, byte ptr [rbx - 1]
	mov	rcx,  qword ptr [word ptr [rip + label_33]]
	lea	rdx, [rcx + 1]
	mov	qword ptr [word ptr [rip + label_33]],  rdx
	mov	byte ptr [rcx], al
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	test	cl, cl
	mov	eax, ebp
	jne	.label_130
.label_127:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025a0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	xor	ebp, ebp
	cmp	rbx, r14
	je	.label_136
	nop	word ptr cs:[rax + rax]
.label_138:
	movzx	edi, byte ptr [rbx]
	call	c_tolower
	mov	ebp, eax
	movzx	edi, byte ptr [r14]
	call	c_tolower
	and	ebp, 0xff
	je	.label_137
	inc	rbx
	inc	r14
	movzx	ecx, al
	cmp	ebp, ecx
	je	.label_138
.label_137:
	movzx	eax, al
	sub	ebp, eax
.label_136:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402620
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_139
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_141
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_141
.label_139:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_140
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_142
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_140:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_142:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_144
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026f0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_145:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_145
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_148
	nop	word ptr cs:[rax + rax]
.label_147:
	inc	rax
	mov	sil, dl
.label_148:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_147
	test	cl, cl
	je	.label_149
	mov	edx, esi
	and	dl, 1
	je	.label_146
	xor	esi, esi
.label_146:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_147
.label_149:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_150:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_151
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_150
.label_151:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

	.globl freopen_safer
	.type freopen_safer, @function
freopen_safer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, r12
	call	fileno
	xor	r14d, r14d
	test	eax, eax
	mov	qword ptr [rsp], rbp
	je	.label_161
	cmp	eax, 1
	je	.label_162
	cmp	eax, 2
	je	.label_163
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r14b
.label_163:
	mov	bpl, r14b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r14b
	jmp	.label_159
.label_161:
	xor	ebp, ebp
	xor	r15d, r15d
	jmp	.label_155
.label_162:
	xor	ebp, ebp
.label_159:
	xor	r15d, r15d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_164
	xor	r13d, r13d
	xor	edi, edi
	call	protect_fd
	mov	r15b, 1
	test	al, al
	je	.label_153
.label_164:
	test	r14b, r14b
	je	.label_154
	mov	edi, 1
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_160
.label_154:
	test	bpl, bpl
	je	.label_155
	mov	edi, 2
	call	protect_fd
	xor	r13d, r13d
	test	al, al
	je	.label_153
.label_155:
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r12
	call	rpl_freopen
	mov	r13, rax
	jmp	.label_153
.label_160:
	mov	r14b, 1
.label_153:
	call	__errno_location
	mov	rbx, rax
	mov	r12d, dword ptr [rbx]
	test	bpl, bpl
	je	.label_157
	mov	edi, 2
	call	close
.label_157:
	test	r14b, r14b
	je	.label_158
	mov	edi, 1
	call	close
.label_158:
	test	r15b, r15b
	je	.label_156
	xor	edi, edi
	call	close
.label_156:
	test	r13, r13
	jne	.label_152
	mov	dword ptr [rbx], r12d
.label_152:
	mov	rax, r13
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
	.align	16
	#Procedure 0x4028a0

	.globl protect_fd
	.type protect_fd, @function
protect_fd:
	push	rbx
	mov	ebx, edi
	mov	edi, OFFSET FLAT:label_165
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ecx, eax
	mov	al, 1
	cmp	ecx, ebx
	je	.label_166
	test	ecx, ecx
	js	.label_167
	mov	edi, ecx
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
.label_167:
	xor	eax, eax
.label_166:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_168
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_170
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_172
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_170
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_173
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_173:
	mov	rbx, r14
.label_170:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_168:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_169
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990
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
	#Procedure 0x4029d0
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
	#Procedure 0x4029e0
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
	#Procedure 0x4029f0

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
	.align	16
	#Procedure 0x402a30
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
	#Procedure 0x402a50

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_174
	test	rdx, rdx
	je	.label_174
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_174:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a80
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
	.align	16
	#Procedure 0x402b00

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
.label_271:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_273
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_276]]
.label_531:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_232
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_224
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_532:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_179
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_179
	xor	r14d, r14d
.label_196:
	cmp	r14, r11
	jae	.label_192
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_192:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_196
.label_179:
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
	jmp	.label_203
.label_524:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_203
.label_527:
	mov	al, 1
.label_525:
	mov	r12b, 1
.label_528:
	test	r12b, 1
	mov	cl, 1
	je	.label_214
	mov	ecx, eax
.label_214:
	mov	al, cl
.label_526:
	test	r12b, 1
	jne	.label_217
	test	r11, r11
	je	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_219:
	mov	r14d, 1
	jmp	.label_223
.label_217:
	xor	r14d, r14d
.label_223:
	mov	ecx, OFFSET FLAT:label_224
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_203
.label_529:
	test	r12b, 1
	jne	.label_234
	test	r11, r11
	je	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_230:
	mov	r14d, 1
	jmp	.label_240
.label_530:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_243
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_203
.label_234:
	xor	r14d, r14d
.label_240:
	mov	eax, OFFSET FLAT:label_243
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_203:
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
	jmp	.label_285
	nop	dword ptr [rax]
.label_279:
	inc	rsi
.label_285:
	cmp	rbp, -1
	je	.label_286
	cmp	rsi, rbp
	jne	.label_262
	jmp	.label_175
	nop	word ptr cs:[rax + rax]
.label_286:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_175
.label_262:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_182
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_185
	cmp	rbp, -1
	jne	.label_185
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
.label_185:
	cmp	rbx, rbp
	jbe	.label_202
.label_182:
	xor	r8d, r8d
.label_206:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_204
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_208]]
.label_542:
	test	rsi, rsi
	jne	.label_199
	jmp	.label_210
	nop	
.label_202:
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
	jne	.label_221
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_206
	jmp	.label_235
.label_221:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_206
.label_546:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_246
	test	rsi, rsi
	jne	.label_247
	cmp	rbp, 1
	je	.label_210
	xor	r13d, r13d
	jmp	.label_191
.label_535:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_252
	cmp	byte ptr [rsp + 7], 0
	jne	.label_193
	cmp	r12d, 2
	jne	.label_231
	mov	eax, r9d
	and	al, 1
	jne	.label_231
	cmp	r14, r11
	jae	.label_183
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_183:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_258
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_258:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_263
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_263:
	add	r14, 3
	mov	r9b, 1
.label_231:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_270
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_270:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_272
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_272
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_272
	cmp	r14, r11
	jae	.label_280
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_280:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_242
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_242:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_191
.label_536:
	mov	bl, 0x62
	jmp	.label_176
.label_537:
	mov	cl, 0x74
	jmp	.label_181
.label_538:
	mov	bl, 0x76
	jmp	.label_176
.label_539:
	mov	bl, 0x66
	jmp	.label_176
.label_540:
	mov	cl, 0x72
	jmp	.label_181
.label_543:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_189
	cmp	byte ptr [rsp + 7], 0
	jne	.label_193
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
	jae	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_211
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	add	r14, 3
	xor	r9d, r9d
.label_189:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_191
.label_544:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_220
	cmp	r12d, 2
	jne	.label_199
	cmp	byte ptr [rsp + 7], 0
	je	.label_199
	jmp	.label_193
.label_545:
	cmp	r12d, 2
	jne	.label_228
	cmp	byte ptr [rsp + 7], 0
	jne	.label_193
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_178
.label_204:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_278
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
.label_188:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_264
	test	r8b, r8b
	je	.label_264
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_191
.label_246:
	test	rsi, rsi
	jne	.label_259
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_259
.label_210:
	mov	dl, 1
.label_541:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_193
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_191:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_277
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_236
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
.label_277:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_281
.label_236:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_287
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_178
	jmp	.label_187
	nop	dword ptr [rax]
.label_281:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_187
	jmp	.label_178
.label_287:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_187
.label_252:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_279
	xor	r15d, r15d
	jmp	.label_199
.label_228:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_181
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_178
.label_181:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_193
.label_176:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_191
	nop	word ptr cs:[rax + rax]
.label_187:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_193
	cmp	r12d, 2
	jne	.label_215
	mov	eax, r9d
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_255
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_255:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_226
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_226:
	add	r14, 3
	mov	r9b, 1
.label_215:
	cmp	r14, r11
	jae	.label_233
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_233:
	inc	r14
	jmp	.label_238
.label_278:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_241
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_241:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_186:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_256
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_261
	cmp	rbp, -2
	je	.label_265
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_268
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_245:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_200
	bt	rsi, rdx
	jb	.label_235
.label_200:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_245
.label_268:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_289
	xor	r13d, r13d
.label_289:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_186
	jmp	.label_188
.label_272:
	xor	r13d, r13d
	jmp	.label_191
.label_259:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_191
.label_220:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_199
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_199
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_199
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_197
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_257
	cmp	byte ptr [rsp + 7], 0
	jne	.label_193
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_212
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_212:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_282
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_282:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_222
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_222:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_225
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_225:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_191
.label_199:
	xor	eax, eax
.label_247:
	xor	r13d, r13d
	jmp	.label_191
.label_264:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_194:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_239:
	test	r8b, r8b
	je	.label_248
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_249
	cmp	r14, r11
	jae	.label_250
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_250:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_249
	nop	dword ptr [rax]
.label_248:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_235
	cmp	r12d, 2
	jne	.label_201
	mov	eax, r9d
	and	al, 1
	jne	.label_201
	cmp	r14, r11
	jae	.label_260
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_260:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_195
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_195:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_269
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_269:
	add	r14, 3
	mov	r9b, 1
.label_201:
	cmp	r14, r11
	jae	.label_283
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_283:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_190
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_190:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_266
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_266:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_249:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_178
	test	r9b, 1
	je	.label_180
	mov	ebx, eax
	and	bl, 1
	jne	.label_180
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_184
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_184:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_244:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_180:
	cmp	r14, r11
	jae	.label_194
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_194
	nop	word ptr cs:[rax + rax]
.label_178:
	test	r9b, 1
	je	.label_205
	and	al, 1
	jne	.label_205
	cmp	r14, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_229
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_229:
	add	r14, 2
	xor	r9d, r9d
.label_205:
	mov	ebx, r15d
.label_238:
	cmp	r14, r11
	jae	.label_213
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_213:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_279
.label_261:
	xor	r13d, r13d
.label_256:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_188
.label_265:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_227
	mov	rsi, qword ptr [rsp + 0x50]
.label_254:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_253
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_254
	xor	r13d, r13d
	jmp	.label_188
.label_227:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_188
.label_253:
	xor	r13d, r13d
	jmp	.label_188
.label_197:
	xor	r13d, r13d
	jmp	.label_191
.label_257:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_191
	nop	dword ptr [rax + rax]
.label_175:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_251
	or	dl, al
	je	.label_235
.label_251:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_237
	or	dl, al
	jne	.label_237
	test	r10b, 1
	jne	.label_267
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_237
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_271
.label_237:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_274
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_275
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_275
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_288:
	cmp	r14, r11
	jae	.label_284
	mov	byte ptr [rcx + r14], al
.label_284:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_288
	jmp	.label_275
.label_193:
	mov	qword ptr [rsp + 0x20], rbp
.label_235:
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
.label_216:
	mov	r14, rax
.label_177:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_267:
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
	jmp	.label_216
.label_274:
	mov	rcx, qword ptr [rsp + 8]
.label_275:
	cmp	r14, r11
	jae	.label_177
	mov	byte ptr [rcx + r14], 0
	jmp	.label_177
.label_273:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4038c0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4038d0

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
	je	.label_290
	mov	qword ptr [rax], rbx
.label_290:
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
	.align	16
	#Procedure 0x4039c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_291
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_293:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_293
.label_291:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_295
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_294]], OFFSET FLAT:slot0
.label_295:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_292
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_292:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a60

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a70

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
	js	.label_299
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_302
	cmp	r12d, 0x7fffffff
	je	.label_297
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
	jne	.label_300
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_300:
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
.label_302:
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
	jbe	.label_298
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_301
.label_298:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_296
	mov	rdi, r14
	call	free
.label_296:
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
.label_301:
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
.label_299:
	call	abort
.label_297:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c30

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c40
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c50
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
	.align	16
	#Procedure 0x403c60

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
	.align	16
	#Procedure 0x403ca0

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
	je	.label_303
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
.label_303:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d00

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
	.align	16
	#Procedure 0x403d40
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
	.align	16
	#Procedure 0x403d60
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
	.align	16
	#Procedure 0x403d80

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
	mov	rcx,  qword ptr [word ptr [rip + label_304]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_305]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_306]]
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
	.align	16
	#Procedure 0x403df0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e20

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
	.align	16
	#Procedure 0x403e70

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e80

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
	mov	rax,  qword ptr [word ptr [rip + label_304]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_305]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_306]]
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
	.align	16
	#Procedure 0x403ef0
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
	.align	16
	#Procedure 0x403f10
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
	.align	16
	#Procedure 0x403f30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f40
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
	.align	16
	#Procedure 0x403f50

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

	.globl quote
	.type quote, @function
quote:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f70

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
	jne	.label_311
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
	je	.label_307
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_312
	mov	eax, OFFSET FLAT:label_313
	jmp	.label_310
.label_307:
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
	je	.label_314
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_308
	mov	eax, OFFSET FLAT:label_309
	jmp	.label_310
.label_314:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_243
	mov	eax, OFFSET FLAT:label_224
.label_310:
	cmove	rax, rcx
.label_311:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030

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
	je	.label_316
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_317
	jmp	.label_315
.label_316:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_315
.label_317:
	mov	eax, 1
	test	bpl, bpl
	je	.label_315
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
.label_315:
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
	.align	16
	#Procedure 0x4040b0

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
	je	.label_320
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_318
	jmp	.label_319
.label_320:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_319
.label_318:
	mov	eax, 1
	test	bpl, bpl
	je	.label_319
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
.label_319:
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
	.align	16
	#Procedure 0x404140

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
	je	.label_321
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_322
.label_321:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_322
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_322
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
.label_322:
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
	.align	16
	#Procedure 0x4041c0

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
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_325
	jmp	.label_324
.label_326:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_324
.label_325:
	mov	eax, 1
	test	bpl, bpl
	je	.label_324
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
.label_324:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404230

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
	je	.label_329
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_327
	jmp	.label_328
.label_329:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_328
.label_327:
	mov	eax, 1
	test	bpl, bpl
	je	.label_328
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_328:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404290

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
	je	.label_330
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_332
	jmp	.label_331
.label_330:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_331
.label_332:
	mov	eax, 1
	test	bpl, bpl
	je	.label_331
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_331:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042e0

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
	je	.label_335
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_334
	jmp	.label_333
.label_335:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_333
.label_334:
	mov	eax, 1
	test	bpl, bpl
	je	.label_333
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_333:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404330

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_338
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_337
	jmp	.label_336
.label_338:
	mov	eax, 1
	test	cl, cl
	je	.label_336
.label_337:
	xor	eax, eax
.label_336:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404360

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
	je	.label_351
	mov	edx, OFFSET FLAT:label_342
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_348
.label_351:
	mov	edx, OFFSET FLAT:label_349
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_348:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
	mov	esi, OFFSET FLAT:label_350
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_354
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_355]]
.label_479:
	add	rsp, 8
	jmp	.label_341
.label_354:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_345
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
	jmp	.label_341
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_346
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
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	jmp	.label_341
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
	jmp	.label_341
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
	jmp	.label_341
.label_486:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
	jmp	.label_341
.label_488:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
	jmp	.label_341
.label_487:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
.label_341:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046c0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_358:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_358
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_360:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_359
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_361
	nop	dword ptr [rax]
.label_359:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_361:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_362
	inc	r9
	cmp	r9, 0xa
	jb	.label_360
.label_362:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404750

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_363
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_363:
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
	.align	16
	#Procedure 0x4047e0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_365
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404860
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_368
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_368:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_369
	test	rax, rax
	je	.label_370
.label_369:
	pop	rbx
	ret	
.label_370:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_371
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_371:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_372
	test	rbx, rbx
	jne	.label_372
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_372:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_374
	test	rax, rax
	je	.label_373
.label_374:
	pop	rbx
	ret	
.label_373:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_375
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_378
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_376
.label_375:
	test	rcx, rcx
	jne	.label_379
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_379:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_377
.label_376:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_378:
	call	xalloc_die
.label_377:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404990

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049b0
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
	.align	16
	#Procedure 0x4049e0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_380
	call	rpl_calloc
	test	rax, rax
	je	.label_380
	pop	rcx
	ret	
.label_380:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a10

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
	.align	16
	#Procedure 0x404a40
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
	.align	16
	#Procedure 0x404a60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404a90

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_382
	pop	rcx
	ret	
.label_382:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ab0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_383
	test	rsi, rsi
	mov	ecx, 1
	je	.label_384
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_384
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_383:
	mov	ecx, 1
.label_384:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_385
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_386
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_385
.label_386:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_385
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_387
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_387:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_385:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_388
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_388
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_388:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_389
	ret	
.label_389:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

	.globl rpl_freopen
	.type rpl_freopen, @function
rpl_freopen:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	orig_freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_391
	test	rbx, rbx
	je	.label_391
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_391
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_391
	mov	edi, OFFSET FLAT:label_165
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_390
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_391
.label_390:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	orig_freopen
.label_391:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70

	.globl orig_freopen
	.type orig_freopen, @function
orig_freopen:
	jmp	freopen
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80

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
	jne	.label_392
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_392
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_393
.label_392:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_393:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_394
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_394:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404cf0

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
	je	.label_395
	cmp	r15, -2
	jb	.label_395
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_395
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_395:
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
	#Procedure 0x404d50

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d70

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	mov	rsi, rax
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_396
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_396:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404df0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_397
	test	al, al
	jne	.label_397
	mov	r15, qword ptr [r13 + 8]
	mov	rdi, r13
	mov	rsi, rbx
	call	call_chunkfun
	mov	r12, rax
	test	r12, r12
	je	.label_397
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	add	rbx, r12
	mov	qword ptr [r13 + 0x20], rbx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rax, [rbx + r12 + 0x10]
	not	rbx
	and	rbx, rax
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	jne	.label_398
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rax + r15 + 0x10]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_398
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	call	call_freefun
.label_398:
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_397:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_399
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x38]
.label_399:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f20

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_400
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_400:
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f40

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_401
	nop	word ptr cs:[rax + rax]
.label_404:
	mov	rcx, qword ptr [rcx + 8]
.label_401:
	test	rcx, rcx
	je	.label_402
	cmp	rcx, rsi
	jae	.label_404
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_404
	jmp	.label_403
.label_402:
	xor	eax, eax
.label_403:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404f70

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_405
	nop	word ptr cs:[rax + rax]
.label_409:
	cmp	rsi, r14
	jae	.label_406
	cmp	qword ptr [rsi], r14
	jae	.label_408
.label_406:
	mov	rbx, qword ptr [rsi + 8]
	mov	rdi, r15
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_409
.label_405:
	test	r14, r14
	je	.label_407
	call	abort
.label_408:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_407:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_410
	xor	eax, eax
	nop	dword ptr [rax]
.label_411:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_411
.label_410:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405000

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_43
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_412
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_412
.label_413:
	ret	
.label_412:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_413
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_414
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_414:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
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
	.align	16
	#Procedure 0x4050b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_415
.label_416:
	ret	
.label_415:
	cmp	edi, 0x7f
	je	.label_416
	xor	eax, eax
	jmp	.label_416
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405100
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405110
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_417
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_418]]
.label_419:
	ret	
.label_417:
	xor	eax, eax
	jmp	.label_419
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_420
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_420:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405160
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_421
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_421:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405180

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
	.align	16
	#Procedure 0x405190
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
	.align	16
	#Procedure 0x4051a0

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
	je	.label_422
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_423
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_423
.label_422:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_423
	test	cl, cl
	jne	.label_423
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_423:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_425
	cmp	byte ptr [rax], 0x43
	jne	.label_427
	cmp	byte ptr [rax + 1], 0
	je	.label_424
.label_427:
	mov	esi, OFFSET FLAT:label_426
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_425
.label_424:
	xor	ebx, ebx
.label_425:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405250

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_29
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_428
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x405280

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
