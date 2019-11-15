	.section	.text
	.align	32
	#Procedure 0x4017c0

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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_11
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_11:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401980

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
	mov	esi, OFFSET FLAT:label_39
	call	setlocale
	mov	edi, OFFSET FLAT:label_31
	mov	esi, OFFSET FLAT:label_63
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_31
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	ebp, 2
	xor	ecx, ecx
.label_29:
	mov	r15d, ecx
	mov	ebx, ebp
	jmp	.label_26
.label_34:
	mov	ebx, 1
	nop	dword ptr [rax]
.label_26:
	mov	ebp, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_55
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_72
	cmp	eax, 0x62
	je	.label_26
	mov	cl, 1
	cmp	eax, 0x70
	je	.label_29
	cmp	eax, 0x63
	je	.label_34
	jmp	.label_37
.label_72:
	cmp	eax, -1
	jne	.label_30
	movsxd	rax, dword ptr [rip + optind]
	test	r15b, r15b
	je	.label_44
	cmp	ebp, 2
	jne	.label_50
.label_44:
	sub	r14d, eax
	lea	r12, [r12 + rax*8]
	movzx	ebx, r15b
	xor	ebx, 1
	cmp	ebx, r14d
	jl	.label_53
	test	r15b, r15b
	je	.label_64
	mov	ebp, OFFSET FLAT:G_line
	mov	ebx, OFFSET FLAT:G_line
	nop	dword ptr [rax + rax]
.label_45:
	mov	rdi, rbx
	call	puts
	mov	rdi, rbx
	call	strlen
	lea	rbx, [rbx + rax + 1]
	mov	rcx, rbx
	sub	rcx, rbp
	xor	eax, eax
	cmp	rcx, 0x10c4
	jb	.label_45
	jmp	.label_40
.label_64:
	cmp	ebp, 2
	jne	.label_32
	mov	edi, OFFSET FLAT:label_36
	call	getenv
	test	rax, rax
	je	.label_41
	cmp	byte ptr [rax], 0
	je	.label_41
	mov	rdi, rax
	call	last_component
	cmp	byte ptr [rax], 0x63
	jne	.label_43
	cmp	byte ptr [rax + 1], 0x73
	jne	.label_43
	cmp	byte ptr [rax + 2], 0x68
	jne	.label_43
	mov	ebp, 1
	cmp	byte ptr [rax + 3], 0
	je	.label_32
.label_43:
	mov	esi, OFFSET FLAT:label_68
	mov	rdi, rax
	call	strcmp
	xor	ebp, ebp
	test	eax, eax
	sete	bpl
.label_32:
	mov	edi, OFFSET FLAT:lsc_obstack
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	test	r14d, r14d
	je	.label_73
	mov	rbx, qword ptr [r12]
	cmp	byte ptr [rbx], 0x2d
	jne	.label_27
	cmp	byte ptr [rbx + 1], 0
	je	.label_33
.label_27:
	mov	rdx, qword ptr [rip + stdin]
	mov	esi, OFFSET FLAT:label_69
	mov	rdi, rbx
	call	freopen_safer
	test	rax, rax
	je	.label_66
.label_33:
	mov	rdi, qword ptr [rip + stdin]
	mov	rsi, rbx
	call	dc_parse_stream
	mov	r14d, eax
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fclose
	test	eax, eax
	je	.label_51
.label_66:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	eax, 1
	jmp	.label_40
.label_73:
	xor	edi, edi
	xor	esi, esi
	call	dc_parse_stream
	mov	ecx, eax
	mov	eax, 1
	test	cl, cl
	jne	.label_38
	jmp	.label_40
.label_51:
	mov	eax, 1
	test	r14b, r14b
	je	.label_40
.label_38:
	mov	rax, qword ptr [rip + label_47]
	mov	r14, qword ptr [rip + label_48]
	mov	r15, rax
	sub	r15, r14
	jne	.label_49
	or	byte ptr [rip + label_54],  2
.label_49:
	mov	rcx, qword ptr [rip + label_56]
	add	rax, rcx
	not	rcx
	and	rcx, rax
	mov	rax, qword ptr [rip + label_57]
	mov	rdx, rcx
	sub	rdx, rax
	mov	rsi, qword ptr [rip + label_58]
	mov	rdi, rsi
	sub	rdi, rax
	cmp	rdx, rdi
	cmova	rcx, rsi
	mov	qword ptr [rip + label_47],  rcx
	mov	qword ptr [rip + label_48],  rcx
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_59
	mov	edi, OFFSET FLAT:label_60
	cmove	rdi, rax
	mov	eax, OFFSET FLAT:label_61
	mov	ebx, OFFSET FLAT:label_62
	cmove	rbx, rax
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r15
	call	fwrite_unlocked
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
	xor	eax, eax
.label_40:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_30:
	cmp	eax, 0xffffff7d
	je	.label_67
	cmp	eax, 0xffffff7e
	jne	.label_37
	xor	edi, edi
	call	usage
.label_67:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_19
	mov	edx, OFFSET FLAT:label_12
	mov	r8d, OFFSET FLAT:label_71
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_50:
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
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [r12 + rbx*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	test	r15b, r15b
	je	.label_70
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
.label_70:
	mov	edi, 1
	call	usage
.label_37:
	mov	edi, 1
	call	usage
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x401d70

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
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	qword ptr [rsp + 0x30], 0
	mov	edi, OFFSET FLAT:label_96
	call	getenv
	test	rax, rax
	je	.label_103
	cmp	byte ptr [rax], 0
	jne	.label_104
.label_103:
	mov	eax, OFFSET FLAT:label_105
.label_104:
	mov	qword ptr [rsp + 0x28], rax
	mov	r13d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 3
	mov	qword ptr [rsp + 8], rax
	xor	ebx, ebx
	jmp	.label_86
.label_98:
	mov	rdi, r14
	call	free
	nop	dword ptr [rax]
.label_86:
	test	r12, r12
	je	.label_114
	mov	edx, 0xa
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x30]
	mov	rcx, r12
	call	__getdelim
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	jg	.label_120
	jmp	.label_77
	nop	dword ptr [rax + rax]
.label_114:
	mov	eax, OFFSET FLAT:label_80
	cmp	r13, rax
	je	.label_81
	mov	rdi, r13
	call	strlen
	mov	rbp, r13
	lea	r13, [r13 + rax + 1]
.label_120:
	inc	rbx
	call	__ctype_b_loc
	mov	r15, rax
	mov	rax, qword ptr [r15]
	lea	rdi, [rbp - 1]
	add	rbp, 3
	nop	word ptr cs:[rax + rax]
.label_91:
	mov	rcx, rbp
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	lea	rbp, [rcx + 1]
	test	byte ptr [rax + rdx*2 + 1], 0x20
	jne	.label_91
	test	dl, dl
	je	.label_86
	cmp	dl, 0x23
	je	.label_86
	mov	r14, rdi
	nop	dword ptr [rax]
.label_100:
	mov	rbp, rcx
	movzx	ecx, byte ptr [r14 + 1]
	inc	r14
	test	rcx, rcx
	je	.label_97
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rcx, [rbp + 1]
	test	dx, dx
	je	.label_100
.label_97:
	mov	rsi, r14
	sub	rsi, rdi
	call	xstrndup
	mov	rdx, rax
	cmp	byte ptr [r14], 0
	mov	eax, 0
	je	.label_85
	mov	rdi, qword ptr [r15]
	nop	
.label_108:
	mov	rsi, rbp
	movzx	ecx, byte ptr [r14 + 1]
	inc	r14
	lea	rbp, [rsi + 1]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_108
	test	cl, cl
	je	.label_113
	cmp	cl, 0x23
	mov	eax, 0
	je	.label_85
	mov	rbp, rdx
	mov	rdx, r14
	jmp	.label_115
	nop	dword ptr [rax]
.label_119:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	inc	rsi
.label_115:
	cmp	cl, 0x23
	je	.label_94
	test	cl, cl
	jne	.label_119
	nop	word ptr cs:[rax + rax]
.label_94:
	movzx	ecx, byte ptr [rsi - 2]
	dec	rsi
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_94
	sub	rsi, r14
	mov	rdi, r14
	call	xstrndup
	mov	rdx, rbp
	jmp	.label_85
.label_113:
	xor	eax, eax
.label_85:
	test	rdx, rdx
	je	.label_86
	test	rax, rax
	jne	.label_88
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	r14, rdx
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	call	error
	jmp	.label_98
.label_88:
	mov	r14, rax
	mov	esi, OFFSET FLAT:label_96
	mov	r15, rdx
	mov	rdi, rdx
	call	c_strcasecmp
	test	eax, eax
	je	.label_101
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	test	eax, eax
	je	.label_102
	mov	qword ptr [rsp + 8], rax
	mov	rdi, r15
	mov	al, byte ptr [rdi]
	cmp	al, 0x2a
	je	.label_106
	cmp	al, 0x2e
	jne	.label_109
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_111
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rdi, r15
	mov	rax, qword ptr [rip + label_47]
.label_111:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x2a
.label_106:
	call	append_quoted
.label_107:
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_78
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_78:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, r14
	call	append_quoted
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_90
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_90:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x3a
	jmp	.label_83
.label_101:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x28]
	call	fnmatch
	test	eax, eax
	je	.label_99
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	cmp	ecx, 2
	sete	al
	add	eax, eax
	jmp	.label_118
.label_102:
	xor	eax, eax
	jmp	.label_118
.label_99:
	mov	eax, 2
.label_118:
	mov	qword ptr [rsp + 8], rax
.label_83:
	mov	rdi, r15
.label_76:
	call	free
	jmp	.label_98
.label_109:
	mov	esi, OFFSET FLAT:label_95
	mov	rbp, rdi
	call	c_strcasecmp
	test	eax, eax
	je	.label_110
	mov	esi, OFFSET FLAT:label_117
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_110
	mov	esi, OFFSET FLAT:label_116
	mov	rdi, rbp
	call	c_strcasecmp
	test	eax, eax
	je	.label_83
	mov	rbp, -0x128
.label_82:
	mov	rsi, qword ptr [rbp + label_121]
	mov	rdi, r15
	call	c_strcasecmp
	test	eax, eax
	je	.label_79
	add	rbp, 8
	jne	.label_82
	mov	rax, qword ptr [rsp + 8]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_83
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_87
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	jmp	.label_92
.label_79:
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_93
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_93:
	mov	rbp, qword ptr [rbp + label_74]
	mov	cl, byte ptr [rbp]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_47],  rdx
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_75
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_75:
	mov	cl, byte ptr [rbp + 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_47],  rdx
	mov	byte ptr [rax], cl
	jmp	.label_107
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
.label_92:
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, rbx
	mov	rbp, r15
	mov	r9, rbp
	call	error
.label_110:
	mov	rdi, rbp
	jmp	.label_76
.label_77:
	mov	rdi, rbp
	call	free
.label_81:
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402230

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_131
	inc	r14
	mov	al, 1
	nop	word ptr [rax + rax]
.label_124:
	movsx	ecx, cl
	lea	edx, [rcx - 0x3a]
	cmp	edx, 0x24
	ja	.label_125
	mov	bl, 1
	jmp	qword ptr [(rdx * 8) + label_127]
.label_567:
	test	al, 1
	mov	bl, 1
	je	.label_122
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_130
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_130:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_126
	nop	word ptr [rax + rax]
.label_568:
	not	al
	and	al, 1
	mov	ebx, eax
	jmp	.label_122
	nop	dword ptr [rax + rax]
.label_125:
	cmp	ecx, 0x27
	mov	bl, 1
	jne	.label_122
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_123
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_123:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_132
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_132:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_128
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_128:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x27
.label_126:
	mov	bl, 1
.label_122:
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_129
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_129:
	movzx	ecx, byte ptr [r14 - 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_47],  rdx
	mov	byte ptr [rax], cl
	movzx	ecx, byte ptr [r14]
	inc	r14
	test	cl, cl
	mov	eax, ebx
	jne	.label_124
.label_131:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4023c0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_133
	nop	word ptr [rax + rax]
.label_136:
	movzx	ecx, byte ptr [rdi]
	lea	edx, [rcx - 0x41]
	lea	eax, [rcx + 0x20]
	cmp	edx, 0x1a
	cmovae	eax, ecx
	movzx	edx, byte ptr [rsi]
	lea	r8d, [rdx - 0x41]
	lea	ecx, [rdx + 0x20]
	cmp	r8d, 0x1a
	cmovae	ecx, edx
	and	eax, 0xff
	je	.label_134
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_136
	jmp	.label_135
.label_134:
	movzx	ecx, cl
	xor	eax, eax
.label_135:
	sub	eax, ecx
.label_133:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402410
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402420
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402430

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_142
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_139
	cmp	dword ptr [rbp], 0x20
	jne	.label_139
.label_142:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_138
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_139:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_137
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_138:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_137:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_143:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_143
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_147
	nop	word ptr cs:[rax + rax]
.label_146:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_147:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_146
	test	dl, dl
	je	.label_145
	mov	ecx, esi
	and	cl, 1
	je	.label_144
	xor	esi, esi
.label_144:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_146
.label_145:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402550
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_148:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_149
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_148
.label_149:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402580

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
	mov	rbx, rdx
	mov	r14, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	call	fileno
	xor	r12d, r12d
	test	eax, eax
	je	.label_157
	cmp	eax, 1
	je	.label_160
	cmp	eax, 2
	je	.label_162
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_162:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_154
.label_157:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_159
.label_160:
	xor	r15d, r15d
.label_154:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_150
	mov	edi, OFFSET FLAT:label_155
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_150
	mov	r13b, 1
	jmp	.label_156
.label_150:
	test	r12b, r12b
	je	.label_153
	mov	edi, OFFSET FLAT:label_155
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_161
.label_153:
	test	r15b, r15b
	je	.label_159
	mov	edi, OFFSET FLAT:label_155
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_156
.label_159:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_152
.label_161:
	mov	r12b, 1
.label_156:
	xor	r14d, r14d
	test	eax, eax
	js	.label_152
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_152:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_164
	mov	edi, 2
	call	close
.label_164:
	test	r12b, r12b
	je	.label_151
	mov	edi, 1
	call	close
.label_151:
	test	r13b, r13b
	je	.label_158
	xor	edi, edi
	call	close
.label_158:
	test	r14, r14
	jne	.label_163
	mov	dword ptr [rbx], ebp
.label_163:
	mov	rax, r14
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
	#Procedure 0x4026d0

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
	jl	.label_166
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_165
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_166
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_167
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_167:
	mov	rbx, r14
.label_166:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_168:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_169
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402780
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
	#Procedure 0x4027c0
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
	#Procedure 0x4027d0
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
	#Procedure 0x4027e0
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
	#Procedure 0x402820
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
	#Procedure 0x402840
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_171
	test	rdx, rdx
	je	.label_171
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_171:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870
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
	#Procedure 0x4028f0

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
.label_274:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_272
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_276]
.label_529:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_280
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_217
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_530:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_179
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_179
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_189:
	cmp	r14, r11
	jae	.label_187
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_187:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_189
.label_179:
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
	jmp	.label_184
.label_522:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_184
.label_525:
	mov	al, 1
.label_523:
	mov	r12b, 1
.label_526:
	test	r12b, 1
	mov	cl, 1
	je	.label_208
	mov	ecx, eax
.label_208:
	mov	al, cl
.label_524:
	test	r12b, 1
	jne	.label_210
	test	r11, r11
	je	.label_174
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_174:
	mov	r14d, 1
	jmp	.label_213
.label_210:
	xor	r14d, r14d
.label_213:
	mov	ecx, OFFSET FLAT:label_217
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_184
.label_527:
	test	r12b, 1
	jne	.label_225
	test	r11, r11
	je	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_227:
	mov	r14d, 1
	jmp	.label_229
.label_528:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_233
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_184
.label_225:
	xor	r14d, r14d
.label_229:
	mov	eax, OFFSET FLAT:label_233
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_184:
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
	jmp	.label_253
	nop	dword ptr [rax]
.label_191:
	inc	rsi
.label_253:
	cmp	rbp, -1
	je	.label_287
	cmp	rsi, rbp
	jne	.label_288
	jmp	.label_289
	nop	word ptr cs:[rax + rax]
.label_287:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_172
.label_288:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_177
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_181
	cmp	rbp, -1
	jne	.label_181
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
.label_181:
	cmp	rbx, rbp
	jbe	.label_198
.label_177:
	xor	r8d, r8d
.label_231:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_199
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_201]
.label_539:
	test	rsi, rsi
	jne	.label_194
	jmp	.label_207
	nop	word ptr cs:[rax + rax]
.label_198:
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
	jne	.label_218
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_231
	jmp	.label_224
.label_218:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_231
.label_543:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_240
	test	rsi, rsi
	jne	.label_241
	cmp	rbp, 1
	je	.label_207
	xor	r13d, r13d
	jmp	.label_173
.label_532:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_250
	cmp	byte ptr [rsp + 6], 0
	jne	.label_252
	cmp	r12d, 2
	jne	.label_256
	mov	eax, r9d
	and	al, 1
	jne	.label_256
	cmp	r14, r11
	jae	.label_259
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	add	r14, 3
	mov	r9b, 1
.label_256:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_196
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_196:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_278
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_278
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_278
	cmp	r14, r11
	jae	.label_251
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_251:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_263
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_263:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_173
.label_533:
	mov	bl, 0x62
	jmp	.label_183
.label_534:
	mov	cl, 0x74
	jmp	.label_192
.label_535:
	mov	bl, 0x76
	jmp	.label_183
.label_536:
	mov	bl, 0x66
	jmp	.label_183
.label_537:
	mov	cl, 0x72
	jmp	.label_192
.label_540:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_188
	cmp	byte ptr [rsp + 6], 0
	jne	.label_193
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
	jae	.label_197
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_197:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_206
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_206:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_209
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_209:
	add	r14, 3
	xor	r9d, r9d
.label_188:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_173
.label_541:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_215
	cmp	r12d, 2
	jne	.label_194
	cmp	byte ptr [rsp + 6], 0
	je	.label_194
	jmp	.label_193
.label_542:
	cmp	r12d, 2
	jne	.label_226
	cmp	byte ptr [rsp + 6], 0
	jne	.label_193
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_178
.label_199:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_237
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
.label_186:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_255
	test	r8b, r8b
	je	.label_255
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_173
.label_240:
	test	rsi, rsi
	jne	.label_281
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_281
.label_207:
	mov	dl, 1
.label_538:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_193
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_173:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_282
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_283
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_282:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_275
.label_283:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_292
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_178
	jmp	.label_185
	nop	dword ptr [rax]
.label_275:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_185
	jmp	.label_178
.label_292:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_185
.label_250:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_191
	xor	r15d, r15d
	jmp	.label_194
.label_226:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_192
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_178
.label_192:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_193
.label_183:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_173
	nop	word ptr cs:[rax + rax]
.label_185:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_252
	cmp	r12d, 2
	jne	.label_211
	mov	eax, r9d
	and	al, 1
	jne	.label_211
	cmp	r14, r11
	jae	.label_271
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_271:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_219:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_239:
	add	r14, 3
	mov	r9b, 1
.label_211:
	cmp	r14, r11
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_228:
	inc	r14
	jmp	.label_235
.label_237:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_238
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_238:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_234:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_261
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_222
	cmp	rbp, -2
	je	.label_270
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_268
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_258:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_291
	bt	rsi, rdx
	jb	.label_285
.label_291:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_258
.label_268:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_214
	xor	r13d, r13d
.label_214:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_234
	jmp	.label_186
.label_278:
	xor	r13d, r13d
	jmp	.label_173
.label_281:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_173
.label_215:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_194
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_194
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_194
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_200
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_232
	cmp	byte ptr [rsp + 6], 0
	jne	.label_266
	cmp	r14, r11
	jae	.label_203
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_203:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_245
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_216
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_216:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_230
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_230:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_173
.label_194:
	xor	eax, eax
.label_241:
	xor	r13d, r13d
	jmp	.label_173
.label_255:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_236
	nop	word ptr cs:[rax + rax]
.label_195:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_236:
	test	r8b, r8b
	je	.label_242
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_243
	cmp	r14, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_247:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_243
	nop	dword ptr [rax]
.label_242:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_224
	cmp	r12d, 2
	jne	.label_260
	mov	eax, r9d
	and	al, 1
	jne	.label_260
	cmp	r14, r11
	jae	.label_264
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_264:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_267
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_267:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_273:
	add	r14, 3
	mov	r9b, 1
.label_260:
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_205:
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
	jae	.label_284
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_284:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_243:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_178
	test	r9b, 1
	je	.label_180
	mov	ebx, eax
	and	bl, 1
	jne	.label_180
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_182
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_182:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_212
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_212:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_180:
	cmp	r14, r11
	jae	.label_195
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_178:
	test	r9b, 1
	je	.label_202
	and	al, 1
	jne	.label_202
	cmp	r14, r11
	jae	.label_204
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_204:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_246:
	add	r14, 2
	xor	r9d, r9d
.label_202:
	mov	ebx, r15d
.label_235:
	cmp	r14, r11
	jae	.label_286
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_286:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_191
.label_222:
	xor	r13d, r13d
.label_261:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_186
.label_270:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_223
	mov	rsi, qword ptr [rsp + 0x58]
.label_265:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_277
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_265
	xor	r13d, r13d
	jmp	.label_186
.label_223:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_186
.label_277:
	xor	r13d, r13d
	jmp	.label_186
.label_200:
	xor	r13d, r13d
	jmp	.label_173
.label_232:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_173
	nop	dword ptr [rax + rax]
.label_289:
	mov	rcx, rsi
.label_172:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_249
	or	al, dl
	je	.label_254
.label_249:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_257
	or	al, dl
	jne	.label_257
	test	r10b, 1
	jne	.label_269
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_257
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_274
.label_257:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_279
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_175
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_175
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_293:
	cmp	r14, r11
	jae	.label_290
	mov	byte ptr [rcx + r14], al
.label_290:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_293
	jmp	.label_175
.label_252:
	mov	qword ptr [rsp + 0x20], rbp
.label_224:
	mov	rdx, rdi
	jmp	.label_176
.label_193:
	mov	qword ptr [rsp + 0x20], rbp
.label_285:
	mov	rdx, rdi
	mov	eax, 2
.label_248:
	mov	qword ptr [rsp + 0x38], rax
.label_176:
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
.label_220:
	mov	r14, rax
.label_221:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_254:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_176
.label_269:
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
	jmp	.label_220
.label_279:
	mov	rcx, qword ptr [rsp + 8]
.label_175:
	cmp	r14, r11
	jae	.label_221
	mov	byte ptr [rcx + r14], 0
	jmp	.label_221
.label_266:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_248
.label_272:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403700
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
	#Procedure 0x4037d0
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
	je	.label_294
	mov	qword ptr [rax], rbx
.label_294:
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
	#Procedure 0x4038c0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_295
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_298:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_298
.label_295:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_299
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_296], OFFSET FLAT:slot0
.label_299:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_297
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_297:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403960
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403970

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
	js	.label_303
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_306
	cmp	r12d, 0x7fffffff
	je	.label_301
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
	jne	.label_304
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_304:
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
.label_306:
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
	jbe	.label_302
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_305
.label_302:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_300
	mov	rdi, r14
	call	free
.label_300:
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
.label_305:
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
.label_303:
	call	abort
.label_301:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403b30
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b40
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
	#Procedure 0x403b60
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
	#Procedure 0x403b80
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
	je	.label_307
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
.label_307:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403bf0
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
	je	.label_308
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
.label_308:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60
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
	je	.label_309
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
.label_309:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403cd0
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
	je	.label_310
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
.label_310:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d40
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
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
	#Procedure 0x403db0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
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
	#Procedure 0x403e20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
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
	#Procedure 0x403e80
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
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
	#Procedure 0x403ee0

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
	je	.label_314
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
.label_314:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f80
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_315
	test	rdx, rdx
	je	.label_315
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_315:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x403ff0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_316
	test	rdx, rdx
	je	.label_316
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_316:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404060
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_317
	test	rsi, rsi
	je	.label_317
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_317:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4040d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_311]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_313]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_318
	test	rsi, rsi
	je	.label_318
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
.label_318:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404140
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150
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
	#Procedure 0x404170
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404190

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
	#Procedure 0x4041b0

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
	jne	.label_320
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_325
	cmp	ecx, 0x55
	jne	.label_319
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_319
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_319
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_319
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_319
	cmp	byte ptr [rax + 5], 0
	jne	.label_319
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_322
	mov	eax, OFFSET FLAT:label_323
	jmp	.label_324
.label_325:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_319
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_319
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_319
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_319
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_319
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_319
	cmp	byte ptr [rax + 7], 0
	je	.label_321
.label_319:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_233
	mov	eax, OFFSET FLAT:label_217
.label_324:
	cmove	rax, rcx
.label_320:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_321:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_326
	mov	eax, OFFSET FLAT:label_327
	jmp	.label_324
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404280

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
	je	.label_328
	mov	edx, OFFSET FLAT:label_338
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_344
.label_328:
	mov	edx, OFFSET FLAT:label_345
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_344:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	mov	esi, OFFSET FLAT:label_346
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_333
	jmp	qword ptr [(r12 * 8) + label_334]
.label_447:
	add	rsp, 8
	jmp	.label_332
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
	jmp	.label_332
.label_448:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
.label_449:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
	jmp	.label_332
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	jmp	.label_332
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
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
	jmp	.label_332
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
	jmp	.label_332
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	jmp	.label_332
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
.label_332:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045e0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_347:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_347
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404610

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_352
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_355
.label_352:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_355:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_354
	cmp	r10d, 0x29
	jae	.label_351
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_353
.label_351:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_353:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_354
	cmp	r10d, 0x29
	jae	.label_349
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_350
.label_349:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_350:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_354
	cmp	r10d, 0x29
	jae	.label_360
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_348
.label_360:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_348:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_354
	cmp	r10d, 0x29
	jae	.label_358
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_359
.label_358:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_359:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_354
	cmp	r10d, 0x29
	jae	.label_356
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_357
.label_356:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_354
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_354
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_354
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_354
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_354:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404800

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_361
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_361:
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
	#Procedure 0x404890
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_363
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_366
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	je	.label_366
.label_367:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_368
	test	rax, rax
	je	.label_369
.label_368:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404970
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_370
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_371
	test	rbx, rbx
	jne	.label_371
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_371:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	je	.label_370
.label_372:
	pop	rbx
	ret	
.label_370:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_373
	test	rbx, rbx
	jne	.label_373
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_373:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_375
	test	rax, rax
	je	.label_374
.label_375:
	pop	rbx
	ret	
.label_374:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4049f0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_379
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_381
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_376
.label_379:
	test	rcx, rcx
	jne	.label_382
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_382:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_377
.label_376:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_378
	test	rbx, rbx
	jne	.label_378
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_378:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_380
	test	rax, rax
	je	.label_381
.label_380:
	pop	rbx
	ret	
.label_381:
	call	xalloc_die
.label_377:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	je	.label_384
.label_383:
	pop	rbx
	ret	
.label_384:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ab0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_387
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_389
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_386
	call	free
	xor	eax, eax
	jmp	.label_388
.label_387:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_385
	mov	qword ptr [rsi], rbx
.label_386:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	je	.label_385
.label_388:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
.label_389:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20
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
	je	.label_391
	test	r14, r14
	je	.label_390
.label_391:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_392
	call	rpl_calloc
	test	rax, rax
	je	.label_392
	pop	rcx
	ret	
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b90

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
	je	.label_393
	test	r15, r15
	je	.label_394
.label_393:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_394:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0
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
	je	.label_396
	test	r15, r15
	je	.label_395
.label_396:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_395:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x404c50

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_398
	pop	rcx
	ret	
.label_398:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_399
	test	rsi, rsi
	mov	ecx, 1
	je	.label_400
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_400
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_399:
	mov	ecx, 1
.label_400:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_401
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_403
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_401
.label_403:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_401
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_402
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_402:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_401:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_404
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_404
	test	byte ptr [rbx + 1], 1
	je	.label_404
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_404:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d80

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
	call	freopen
	mov	rbx, rax
	test	r15, r15
	je	.label_405
	test	rbx, rbx
	je	.label_405
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_405
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_405
	mov	edi, OFFSET FLAT:label_155
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_406
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_405
.label_406:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_405:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

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
	jne	.label_407
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_407
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_408
.label_407:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_408:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_409
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_409:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404e90

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
	je	.label_410
	cmp	r15, -2
	jb	.label_410
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_410
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_410:
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
	#Procedure 0x404ef0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_411
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
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_411:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f80

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_412
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_412:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405010

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_414
	test	al, al
	jne	.label_414
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_413
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_417
.label_413:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_417:
	mov	r13, rax
	test	r13, r13
	je	.label_414
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [rbp + r13 + 0x10]
	mov	qword ptr [rsp + 8], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_416
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_416
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_415
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_416
.label_415:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_416:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_414:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405150

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_418
	nop	word ptr cs:[rax + rax]
.label_421:
	mov	rcx, qword ptr [rcx + 8]
.label_418:
	test	rcx, rcx
	je	.label_419
	cmp	rcx, rsi
	jae	.label_421
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_421
	jmp	.label_420
.label_419:
	xor	eax, eax
.label_420:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405180

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
	je	.label_422
	nop	word ptr cs:[rax + rax]
.label_425:
	cmp	rsi, r14
	jae	.label_423
	cmp	qword ptr [rsi], r14
	jae	.label_424
.label_423:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_426
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_428
	nop	
.label_426:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_428:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_425
.label_422:
	test	r14, r14
	je	.label_427
	call	abort
.label_424:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_427:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405200

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_429
	xor	eax, eax
	nop	dword ptr [rax]
.label_430:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_430
.label_429:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405220

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_397
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_42
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, dword ptr [rip + exit_failure]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

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
	jne	.label_432
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_431
	test	cl, cl
	jne	.label_431
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_431
.label_432:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_431
	call	__errno_location
	mov	dword ptr [rax], 0
.label_431:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4052c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_434
	cmp	byte ptr [rax], 0x43
	jne	.label_436
	cmp	byte ptr [rax + 1], 0
	je	.label_433
.label_436:
	mov	esi, OFFSET FLAT:label_435
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_434
.label_433:
	xor	ebx, ebx
.label_434:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405300

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
	mov	eax, OFFSET FLAT:label_437
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x405330

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
