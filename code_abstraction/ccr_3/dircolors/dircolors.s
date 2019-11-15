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
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15, rdi
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 0x30], 0
	mov	edi, OFFSET FLAT:label_105
	call	getenv
	test	rax, rax
	je	.label_119
	cmp	byte ptr [rax], 0
	jne	.label_135
.label_119:
	mov	eax, OFFSET FLAT:label_121
.label_135:
	mov	qword ptr [rsp + 0x38], rax
	mov	r12d, OFFSET FLAT:G_line
	mov	al, 1
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 3
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	mov	ebp, OFFSET FLAT:label_81
	lea	rbx, [rsp]
	jmp	.label_122
	nop	word ptr [rax + rax]
.label_136:
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	r14, rdx
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	ebp, OFFSET FLAT:label_81
	mov	r8, r13
	call	error
	mov	rdi, r14
	call	free
.label_122:
	test	r15, r15
	je	.label_91
	mov	edx, 0xa
	mov	rdi, rbx
	lea	rsi, [rsp + 0x30]
	mov	rcx, r15
	call	__getdelim
	test	rax, rax
	mov	rbp, qword ptr [rsp]
	jle	.label_116
	call	__ctype_b_loc
	mov	r14, rax
	nop	word ptr cs:[rax + rax]
.label_112:
	inc	r13
	mov	rax, qword ptr [r14]
	lea	rdi, [rbp - 1]
	add	rbp, 3
	nop	
.label_111:
	mov	rcx, rbp
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	lea	rbp, [rcx + 1]
	test	byte ptr [rax + rdx*2 + 1], 0x20
	jne	.label_111
	test	dl, dl
	je	.label_117
	cmp	dl, 0x23
	je	.label_117
	mov	rbp, rdi
	nop	dword ptr [rax]
.label_126:
	mov	rbx, rcx
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
	test	rcx, rcx
	je	.label_86
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	lea	rcx, [rbx + 1]
	test	dx, dx
	je	.label_126
.label_86:
	mov	rsi, rbp
	sub	rsi, rdi
	call	xstrndup
	mov	rdx, rax
	cmp	byte ptr [rbp], 0
	mov	eax, 0
	je	.label_79
	mov	rdi, qword ptr [r14]
	nop	
.label_137:
	mov	rsi, rbx
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
	lea	rbx, [rsi + 1]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_137
	test	cl, cl
	je	.label_76
	cmp	cl, 0x23
	mov	eax, 0
	je	.label_79
	mov	rbx, rdx
	mov	rdx, rbp
	jmp	.label_83
	nop	dword ptr [rax + rax]
.label_90:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	inc	rsi
.label_83:
	cmp	cl, 0x23
	je	.label_87
	test	cl, cl
	jne	.label_90
	nop	word ptr cs:[rax + rax]
.label_87:
	movzx	ecx, byte ptr [rsi - 2]
	dec	rsi
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_87
	sub	rsi, rbp
	mov	rdi, rbp
	call	xstrndup
	mov	rdx, rbx
	jmp	.label_79
.label_76:
	xor	eax, eax
.label_79:
	test	rdx, rdx
	lea	rbx, [rsp]
	jne	.label_101
.label_117:
	mov	edx, 0xa
	mov	rdi, rbx
	lea	rsi, [rsp + 0x30]
	mov	rcx, r15
	call	__getdelim
	test	rax, rax
	mov	rbp, qword ptr [rsp]
	jg	.label_112
	jmp	.label_116
	nop	word ptr cs:[rax + rax]
.label_91:
	cmp	r12, rbp
	je	.label_118
	call	__ctype_b_loc
	mov	r14, rax
	mov	qword ptr [rsp + 0x40], r15
	nop	word ptr cs:[rax + rax]
.label_128:
	inc	r13
	mov	rdi, r12
	call	strlen
	inc	rax
	mov	rcx, qword ptr [r14]
	lea	rdi, [r12 - 1]
	lea	rdx, [r12 + 3]
	nop	dword ptr [rax + rax]
.label_95:
	mov	rbx, rdx
	movzx	esi, byte ptr [rdi + 1]
	inc	rdi
	lea	rdx, [rbx + 1]
	test	byte ptr [rcx + rsi*2 + 1], 0x20
	jne	.label_95
	add	r12, rax
	test	sil, sil
	je	.label_74
	cmp	sil, 0x23
	je	.label_74
	mov	rbp, rdi
	nop	
.label_85:
	mov	r15, rbx
	movzx	eax, byte ptr [rbp + 1]
	inc	rbp
	test	rax, rax
	je	.label_82
	movzx	eax, word ptr [rcx + rax*2]
	and	eax, 0x2000
	lea	rbx, [r15 + 1]
	test	ax, ax
	je	.label_85
.label_82:
	mov	rsi, rbp
	sub	rsi, rdi
	call	xstrndup
	mov	rdx, rax
	cmp	byte ptr [rbp], 0
	mov	eax, 0
	je	.label_94
	mov	rdi, qword ptr [r14]
	nop	dword ptr [rax]
.label_97:
	mov	rsi, r15
	movzx	ecx, byte ptr [rbp + 1]
	inc	rbp
	lea	r15, [rsi + 1]
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_97
	test	cl, cl
	je	.label_103
	cmp	cl, 0x23
	mov	eax, 0
	je	.label_94
	mov	rbx, rdx
	mov	rdx, rbp
	jmp	.label_123
	nop	dword ptr [rax + rax]
.label_115:
	mov	cl, byte ptr [rdx + 1]
	inc	rdx
	inc	rsi
.label_123:
	cmp	cl, 0x23
	je	.label_114
	test	cl, cl
	jne	.label_115
	nop	word ptr cs:[rax + rax]
.label_114:
	movzx	ecx, byte ptr [rsi - 2]
	dec	rsi
	test	byte ptr [rdi + rcx*2 + 1], 0x20
	jne	.label_114
	sub	rsi, rbp
	mov	rdi, rbp
	call	xstrndup
	mov	rdx, rbx
	jmp	.label_94
.label_103:
	xor	eax, eax
.label_94:
	test	rdx, rdx
	mov	r15, qword ptr [rsp + 0x40]
	mov	ebp, OFFSET FLAT:label_81
	jne	.label_127
.label_74:
	cmp	r12, rbp
	jne	.label_128
	jmp	.label_118
.label_101:
	mov	ebp, OFFSET FLAT:label_81
	jmp	.label_131
.label_127:
	lea	rbx, [rsp]
.label_131:
	test	rax, rax
	je	.label_136
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:label_105
	mov	r14, rdx
	mov	rdi, rdx
	call	c_strcasecmp
	test	eax, eax
	je	.label_77
	mov	rax, qword ptr [rsp + 8]
	cmp	eax, 2
	mov	ecx, 1
	cmove	eax, ecx
	mov	qword ptr [rsp + 8], rax
	test	eax, eax
	je	.label_80
	mov	rdi, r14
	mov	al, byte ptr [rdi]
	cmp	al, 0x2a
	je	.label_88
	cmp	al, 0x2e
	jne	.label_92
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_110
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rdi, r14
	mov	rax, qword ptr [rip + label_47]
.label_110:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x2a
.label_88:
	call	append_quoted
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_107
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_107:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	je	.label_124
	jmp	.label_104
.label_77:
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x38]
	call	fnmatch
	test	eax, eax
	je	.label_98
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 8]
	cmp	ecx, 2
	sete	al
	add	eax, eax
	jmp	.label_134
.label_80:
	xor	eax, eax
	jmp	.label_134
.label_98:
	mov	eax, 2
.label_134:
	mov	qword ptr [rsp + 8], rax
	jmp	.label_99
.label_92:
	mov	esi, OFFSET FLAT:label_78
	mov	qword ptr [rsp + 0x18], rdi
	call	c_strcasecmp
	test	eax, eax
	je	.label_109
	mov	esi, OFFSET FLAT:label_125
	mov	rdi, qword ptr [rsp + 0x18]
	call	c_strcasecmp
	test	eax, eax
	je	.label_109
	mov	esi, OFFSET FLAT:label_89
	mov	rdi, qword ptr [rsp + 0x18]
	call	c_strcasecmp
	test	eax, eax
	je	.label_99
	mov	rbx, -0x128
.label_102:
	mov	rsi, qword ptr [rbx + label_133]
	mov	rdi, r14
	call	c_strcasecmp
	test	eax, eax
	je	.label_93
	add	rbx, 8
	jne	.label_102
	mov	rax, qword ptr [rsp + 8]
	lea	eax, [rax - 1]
	cmp	eax, 1
	ja	.label_106
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_96
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x20]
	call	quotearg_n_style_colon
	jmp	.label_75
.label_109:
	mov	rdi, qword ptr [rsp + 0x18]
	jmp	.label_120
.label_93:
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_100
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_100:
	mov	rbx, qword ptr [rbx + label_129]
	mov	cl, byte ptr [rbx]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_47],  rdx
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_130
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_130:
	mov	cl, byte ptr [rbx + 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_47],  rdx
	mov	byte ptr [rax], cl
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_84
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_84:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x3d
	mov	rdi, qword ptr [rsp + 0x10]
	call	append_quoted
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	lea	rbx, [rsp]
	jne	.label_104
.label_124:
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_104:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x3a
.label_99:
	mov	rdi, r14
.label_120:
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	jmp	.label_122
.label_106:
	lea	rbx, [rsp]
	jmp	.label_99
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
.label_75:
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	r8, r13
	mov	rbx, r14
	mov	r9, rbx
	call	error
	mov	rdi, rbx
	mov	ebp, OFFSET FLAT:label_81
	lea	rbx, [rsp]
	jmp	.label_120
.label_116:
	mov	rdi, rbp
	call	free
.label_118:
	mov	rax, qword ptr [rsp + 0x28]
	and	al, 1
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
	#Procedure 0x402420

	.globl append_quoted
	.type append_quoted, @function
append_quoted:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	cl, byte ptr [r14]
	test	cl, cl
	je	.label_146
	inc	r14
	mov	al, 1
	nop	word ptr [rax + rax]
.label_142:
	movsx	ecx, cl
	lea	edx, [rcx - 0x3a]
	cmp	edx, 0x24
	ja	.label_138
	mov	bl, 1
	jmp	qword ptr [(rdx * 8) + label_141]
.label_573:
	test	al, 1
	mov	bl, 1
	je	.label_139
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_145
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_145:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x5c
	jmp	.label_140
	nop	word ptr [rax + rax]
.label_574:
	not	al
	and	al, 1
	mov	ebx, eax
	jmp	.label_139
	nop	dword ptr [rax + rax]
.label_138:
	cmp	ecx, 0x27
	mov	bl, 1
	jne	.label_139
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_148
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_148:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x27
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_147
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_147:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x5c
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_143
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_143:
	lea	rcx, [rax + 1]
	mov	qword ptr [rip + label_47],  rcx
	mov	byte ptr [rax], 0x27
.label_140:
	mov	bl, 1
.label_139:
	mov	rax, qword ptr [rip + label_47]
	cmp	qword ptr [rip + label_58],  rax
	jne	.label_144
	mov	edi, OFFSET FLAT:lsc_obstack
	mov	esi, 1
	call	_obstack_newchunk
	mov	rax, qword ptr [rip + label_47]
.label_144:
	movzx	ecx, byte ptr [r14 - 1]
	lea	rdx, [rax + 1]
	mov	qword ptr [rip + label_47],  rdx
	mov	byte ptr [rax], cl
	movzx	ecx, byte ptr [r14]
	inc	r14
	test	cl, cl
	mov	eax, ebx
	jne	.label_142
.label_146:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	xor	eax, eax
	cmp	rdi, rsi
	je	.label_149
	nop	word ptr [rax + rax]
.label_152:
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
	je	.label_150
	inc	rdi
	inc	rsi
	movzx	ecx, cl
	cmp	eax, ecx
	je	.label_152
	jmp	.label_151
.label_150:
	movzx	ecx, cl
	xor	eax, eax
.label_151:
	sub	eax, ecx
.label_149:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402600
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402610
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402620

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_158
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_154
	cmp	dword ptr [rbp], 0x20
	jne	.label_154
.label_158:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_156
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_155
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_35
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_156:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_155:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_157
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_159:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_159
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_160:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_163:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_160
	test	dl, dl
	je	.label_162
	mov	ecx, esi
	and	cl, 1
	je	.label_161
	xor	esi, esi
.label_161:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_160
.label_162:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402740
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_165:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_164
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_165
.label_164:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402770

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
	je	.label_170
	cmp	eax, 1
	je	.label_173
	cmp	eax, 2
	je	.label_175
	mov	edi, 2
	mov	esi, 2
	call	dup2
	cmp	eax, 2
	setne	r12b
.label_175:
	mov	r15b, r12b
	mov	edi, 1
	mov	esi, 1
	call	dup2
	cmp	eax, 1
	setne	r12b
	jmp	.label_168
.label_170:
	xor	r15d, r15d
	xor	r13d, r13d
	jmp	.label_172
.label_173:
	xor	r15d, r15d
.label_168:
	xor	r13d, r13d
	xor	edi, edi
	xor	esi, esi
	call	dup2
	test	eax, eax
	je	.label_177
	mov	edi, OFFSET FLAT:label_169
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	r13b, 1
	test	eax, eax
	je	.label_177
	mov	r13b, 1
	jmp	.label_179
.label_177:
	test	r12b, r12b
	je	.label_167
	mov	edi, OFFSET FLAT:label_169
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 1
	jne	.label_176
.label_167:
	test	r15b, r15b
	je	.label_172
	mov	edi, OFFSET FLAT:label_169
	xor	esi, esi
	xor	eax, eax
	call	open
	cmp	eax, 2
	jne	.label_179
.label_172:
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	rpl_freopen
	mov	r14, rax
	jmp	.label_166
.label_176:
	mov	r12b, 1
.label_179:
	xor	r14d, r14d
	test	eax, eax
	js	.label_166
	mov	edi, eax
	call	close
	call	__errno_location
	mov	dword ptr [rax], 9
	xor	r14d, r14d
.label_166:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	r15b, r15b
	je	.label_178
	mov	edi, 2
	call	close
.label_178:
	test	r12b, r12b
	je	.label_180
	mov	edi, 1
	call	close
.label_180:
	test	r13b, r13b
	je	.label_171
	xor	edi, edi
	call	close
.label_171:
	test	r14, r14
	jne	.label_174
	mov	dword ptr [rbx], ebp
.label_174:
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
	#Procedure 0x4028c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_181
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_183
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_185
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_183
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_186
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_186:
	mov	rbx, r14
.label_183:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_181:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_182
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402970
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
	#Procedure 0x4029b0
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
	#Procedure 0x4029c0
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
	#Procedure 0x4029d0
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
	#Procedure 0x402a10
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
	#Procedure 0x402a30
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_187
	test	rdx, rdx
	je	.label_187
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_187:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a60
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
	#Procedure 0x402ae0

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
	jmp	.label_269
	nop	
.label_305:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_280
	or	al, dl
	jne	.label_280
	test	dil, 1
	jne	.label_302
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_280
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_269
	jmp	.label_280
.label_587:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_311
	test	rbp, rbp
	je	.label_189
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_189:
	mov	r14d, 1
	jmp	.label_193
.label_588:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_196
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_197
.label_311:
	xor	r14d, r14d
.label_193:
	mov	eax, OFFSET FLAT:label_196
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_272
	nop	
.label_269:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_223
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_228]
.label_589:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_234
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_240
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_590:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_248
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_248
	xor	r14d, r14d
	nop	
.label_310:
	cmp	r14, rbp
	jae	.label_295
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_295:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_310
.label_248:
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
	jmp	.label_197
.label_582:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_197
.label_585:
	mov	al, 1
.label_583:
	mov	r12b, 1
.label_586:
	test	r12b, 1
	mov	cl, 1
	je	.label_276
	mov	ecx, eax
.label_276:
	mov	al, cl
.label_584:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_278
	test	rbp, rbp
	je	.label_283
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_283:
	mov	r14d, 1
	jmp	.label_285
.label_278:
	xor	r14d, r14d
.label_285:
	mov	ecx, OFFSET FLAT:label_240
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_272:
	mov	sil, r12b
.label_197:
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
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
.label_194:
	inc	r12
.label_293:
	cmp	r11, -1
	je	.label_206
	cmp	r12, r11
	jne	.label_208
	jmp	.label_210
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_216
.label_208:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_224
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_230
	cmp	r11, -1
	jne	.label_230
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_230:
	cmp	rbx, r11
	jbe	.label_239
.label_224:
	xor	esi, esi
.label_263:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_241
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_211]
.label_604:
	test	r12, r12
	jne	.label_188
	jmp	.label_256
	nop	word ptr cs:[rax + rax]
.label_239:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_261
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_263
	jmp	.label_260
.label_261:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_263
.label_608:
	xor	eax, eax
	cmp	r11, -1
	je	.label_271
	test	r12, r12
	jne	.label_274
	cmp	r11, 1
	je	.label_256
	xor	r13d, r13d
	jmp	.label_202
.label_597:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_281
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_260
	cmp	r8d, 2
	jne	.label_251
	mov	eax, r9d
	and	al, 1
	jne	.label_251
	cmp	r14, rbp
	jae	.label_287
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_287:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_289
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_289:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_297
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	add	r14, 3
	mov	r9b, 1
.label_251:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_301
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_301:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_308
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_308
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_308
	cmp	r14, rbp
	jae	.label_296
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_296:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_238
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_238:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_202
.label_598:
	mov	bl, 0x62
	jmp	.label_207
.label_599:
	mov	cl, 0x74
	jmp	.label_209
.label_600:
	mov	bl, 0x76
	jmp	.label_207
.label_601:
	mov	bl, 0x66
	jmp	.label_207
.label_602:
	mov	cl, 0x72
	jmp	.label_209
.label_605:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_220
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_198
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
	jae	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_243
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_243:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	add	r14, 3
	xor	r9d, r9d
.label_220:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_202
.label_606:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_255
	cmp	r8d, 2
	jne	.label_188
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_188
	jmp	.label_198
.label_607:
	cmp	r8d, 2
	jne	.label_265
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_198
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_245
.label_241:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_268
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_200
.label_271:
	test	r12, r12
	jne	.label_286
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_286
.label_256:
	mov	dl, 1
.label_603:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_198
	xor	eax, eax
	mov	r13b, dl
.label_202:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_294
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_298
	jmp	.label_299
	nop	word ptr cs:[rax + rax]
.label_294:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_299
.label_298:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_242
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_307
	nop	dword ptr [rax]
.label_299:
	test	sil, sil
.label_307:
	mov	ebx, r15d
	je	.label_203
	jmp	.label_313
.label_242:
	mov	ebx, r15d
	jmp	.label_313
.label_281:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_194
	xor	r15d, r15d
	jmp	.label_188
.label_265:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_209
	xor	eax, eax
	mov	r15b, 0x5c
.label_245:
	xor	r13d, r13d
	jmp	.label_203
.label_209:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_198
.label_207:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_202
	nop	
.label_313:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_260
	cmp	r8d, 2
	jne	.label_222
	mov	eax, r9d
	and	al, 1
	jne	.label_222
	cmp	r14, rbp
	jae	.label_226
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_226:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_250
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	add	r14, 3
	mov	r9b, 1
.label_222:
	cmp	r14, rbp
	jae	.label_303
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_303:
	inc	r14
	jmp	.label_221
.label_268:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_246
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_246:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_253
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_259:
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
	je	.label_214
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_288
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_201
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_309
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_266:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_284
	bt	rsi, rdx
	jb	.label_198
.label_284:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_266
.label_309:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_300
	xor	r13d, r13d
.label_300:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_259
	jmp	.label_249
.label_308:
	xor	r13d, r13d
	jmp	.label_202
.label_286:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_202
.label_255:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_188
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_188
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_188
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_204
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_277
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_215
	cmp	r14, rbp
	jae	.label_218
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_225
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_195
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_195:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_270
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_270:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_277:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_202
.label_188:
	xor	eax, eax
.label_274:
	xor	r13d, r13d
	jmp	.label_202
.label_253:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_275:
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
	je	.label_262
	cmp	rbp, -1
	je	.label_264
	cmp	rbp, -2
	je	.label_214
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_267
	xor	r13d, r13d
.label_267:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_275
	jmp	.label_249
.label_214:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_217
	lea	rax, [r10 + r12]
.label_314:
	cmp	byte ptr [rax + rsi], 0
	je	.label_217
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_314
.label_217:
	mov	qword ptr [rsp + 0x40], rsi
.label_288:
	xor	r13d, r13d
	jmp	.label_201
.label_264:
	xor	r13d, r13d
.label_262:
	mov	r10, qword ptr [rsp + 0x28]
.label_201:
	mov	r12, qword ptr [rsp + 0x40]
.label_249:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_200:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_292
	test	al, al
	je	.label_292
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_202
.label_292:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_306
	nop	word ptr [rax + rax]
.label_199:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_306:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_312
	test	sil, 1
	je	.label_192
	cmp	r14, rbp
	jae	.label_191
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_191:
	inc	r14
	xor	esi, esi
	jmp	.label_192
	nop	word ptr cs:[rax + rax]
.label_312:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_260
	cmp	r8d, 2
	jne	.label_212
	mov	eax, r9d
	and	al, 1
	jne	.label_212
	cmp	r14, rbp
	jae	.label_213
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_213:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_219
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_219:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_205
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_205:
	add	r14, 3
	mov	r9b, 1
.label_212:
	cmp	r14, rbp
	jae	.label_232
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_232:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_236
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_236:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_244
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_244:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_192:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_203
	test	r9b, 1
	je	.label_257
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_291
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_304
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_304:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_273
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_273:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_291:
	mov	rbx, rcx
.label_257:
	cmp	r14, rbp
	jae	.label_199
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_199
	nop	
.label_203:
	test	r9b, 1
	je	.label_279
	and	al, 1
	jne	.label_279
	cmp	r14, rbp
	jae	.label_282
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_282:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	add	r14, 2
	xor	r9d, r9d
.label_279:
	mov	ebx, r15d
.label_221:
	cmp	r14, rbp
	jae	.label_290
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_290:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_194
.label_204:
	xor	r13d, r13d
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_210:
	mov	rcx, r12
.label_216:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_305
	or	al, dl
	jne	.label_305
	mov	r11, rcx
	jmp	.label_260
.label_198:
	mov	eax, 2
.label_190:
	mov	qword ptr [rsp + 0x38], rax
.label_260:
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
.label_254:
	mov	r14, rax
.label_258:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_280:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_227
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_231
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_231
	inc	rdx
	nop	dword ptr [rax + rax]
.label_237:
	cmp	r14, rbp
	jae	.label_235
	mov	byte ptr [rcx + r14], al
.label_235:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_237
	jmp	.label_231
.label_302:
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
	jmp	.label_254
.label_227:
	mov	rcx, qword ptr [rsp + 0x10]
.label_231:
	cmp	r14, rbp
	jae	.label_258
	mov	byte ptr [rcx + r14], 0
	jmp	.label_258
.label_215:
	mov	eax, 5
	jmp	.label_190
.label_223:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x403910
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
	#Procedure 0x4039e0
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
	je	.label_315
	mov	qword ptr [rax], rbx
.label_315:
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
	#Procedure 0x403ad0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_316
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_319:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_319
.label_316:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_320
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_317], OFFSET FLAT:slot0
.label_320:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_318
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_318:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b70
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403b80

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
	js	.label_321
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_324
	cmp	r12d, 0x7fffffff
	je	.label_326
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
	jne	.label_322
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_322:
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
.label_324:
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
	jbe	.label_327
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_323
.label_327:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_325
	mov	rdi, r14
	call	free
.label_325:
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
.label_323:
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
.label_321:
	call	abort
.label_326:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403d40
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d50
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
	#Procedure 0x403d70
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
	#Procedure 0x403d90
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
	je	.label_328
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
.label_328:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e00
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
	je	.label_329
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
.label_329:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e70
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
	je	.label_330
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
.label_330:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ee0
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
	je	.label_331
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
.label_331:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f50
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
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
	#Procedure 0x403fc0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
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
	#Procedure 0x404030

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
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
	#Procedure 0x404090
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
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
	#Procedure 0x4040f0

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
	je	.label_335
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
.label_335:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404190
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_336
	test	rdx, rdx
	je	.label_336
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_336:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x404200
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_337
	test	rdx, rdx
	je	.label_337
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_337:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404270
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_338
	test	rsi, rsi
	je	.label_338
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_338:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4042e0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_332]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_333]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_334]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_339
	test	rsi, rsi
	je	.label_339
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
.label_339:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404350
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404360
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
	#Procedure 0x404380
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0

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
	#Procedure 0x4043c0

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
	jne	.label_341
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_346
	cmp	ecx, 0x55
	jne	.label_340
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_340
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_340
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_340
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_340
	cmp	byte ptr [rax + 5], 0
	jne	.label_340
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_343
	mov	eax, OFFSET FLAT:label_344
	jmp	.label_345
.label_346:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_340
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_340
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_340
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_340
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_340
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_340
	cmp	byte ptr [rax + 7], 0
	je	.label_342
.label_340:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_196
	mov	eax, OFFSET FLAT:label_240
.label_345:
	cmove	rax, rcx
.label_341:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_342:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_347
	mov	eax, OFFSET FLAT:label_348
	jmp	.label_345
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404490

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
	je	.label_355
	mov	edx, OFFSET FLAT:label_364
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_351
.label_355:
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_359
	jmp	qword ptr [(r12 * 8) + label_360]
.label_554:
	add	rsp, 8
	jmp	.label_352
.label_359:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
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
	jmp	.label_352
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
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
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
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
	jmp	.label_352
.label_559:
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
	jmp	.label_352
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
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
	jmp	.label_352
.label_561:
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
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_352
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
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
	jmp	.label_352
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
.label_352:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_368:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_368
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_379
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_381
.label_379:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_381:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_370
	cmp	r10d, 0x29
	jae	.label_378
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_380
.label_378:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_380:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_370
	cmp	r10d, 0x29
	jae	.label_376
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_377
.label_376:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_377:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_370
	cmp	r10d, 0x29
	jae	.label_374
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_375
.label_374:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_370
	cmp	r10d, 0x29
	jae	.label_372
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_373
.label_372:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_373:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_370
	cmp	r10d, 0x29
	jae	.label_369
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_371
.label_369:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_371:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_370
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_370
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_370
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_370
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_370:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_382
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_382:
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
	#Procedure 0x404aa0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_384
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_387
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_388
	test	rax, rax
	je	.label_387
.label_388:
	pop	rbx
	ret	
.label_387:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b60

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_389
	test	rax, rax
	je	.label_390
.label_389:
	pop	rbx
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b80
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_391
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_392
	test	rbx, rbx
	jne	.label_392
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_392:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_393
	test	rax, rax
	je	.label_391
.label_393:
	pop	rbx
	ret	
.label_391:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bd0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_394
	test	rbx, rbx
	jne	.label_394
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_394:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_395
.label_396:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404c00
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_397
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_400
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_398
.label_397:
	test	rcx, rcx
	jne	.label_403
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_403:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_399
.label_398:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_402
	test	rbx, rbx
	jne	.label_402
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_402:
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
.label_399:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_404
	test	rax, rax
	je	.label_405
.label_404:
	pop	rbx
	ret	
.label_405:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_406
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_409
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_410
	call	free
	xor	eax, eax
	jmp	.label_407
.label_406:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_408
	mov	qword ptr [rsi], rbx
.label_410:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	je	.label_408
.label_407:
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
.label_409:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30
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
	je	.label_412
	test	r14, r14
	je	.label_411
.label_412:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d70
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_413
	call	rpl_calloc
	test	rax, rax
	je	.label_413
	pop	rcx
	ret	
.label_413:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0

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
	je	.label_414
	test	r15, r15
	je	.label_415
.label_414:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_415:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404de0
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
	je	.label_417
	test	r15, r15
	je	.label_416
.label_417:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_416:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e30

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
	#Procedure 0x404e60

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_419
	pop	rcx
	ret	
.label_419:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_420
	test	rsi, rsi
	mov	ecx, 1
	je	.label_421
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_421
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_420:
	mov	ecx, 1
.label_421:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_422
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_424
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_422
.label_424:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_422
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_423
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_423:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_422:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_425
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_425
	test	byte ptr [rbx + 1], 1
	je	.label_425
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_425:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f90

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
	je	.label_427
	test	rbx, rbx
	je	.label_427
	mov	rdi, rbx
	call	fileno
	mov	ebp, eax
	mov	edi, ebp
	mov	esi, ebp
	call	dup2
	test	eax, eax
	jns	.label_427
	call	__errno_location
	cmp	dword ptr [rax], 9
	jne	.label_427
	mov	edi, OFFSET FLAT:label_169
	mov	esi, 0x80000
	xor	eax, eax
	call	open
	mov	r12d, eax
	cmp	r12d, ebp
	je	.label_426
	mov	edi, r12d
	mov	esi, ebp
	call	dup2
	mov	ebp, eax
	mov	edi, r12d
	call	close
	test	ebp, ebp
	js	.label_427
.label_426:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	jmp	freopen
.label_427:
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
	#Procedure 0x405030

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
	jne	.label_428
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_428
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_429
.label_428:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_429:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_430
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_430:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050a0

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
	#Procedure 0x405100

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
	je	.label_432
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
.label_432:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190

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
	je	.label_433
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
.label_433:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405220

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
	jb	.label_434
	test	al, al
	jne	.label_434
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_438
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_437
.label_438:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_437:
	mov	r13, rax
	test	r13, r13
	je	.label_434
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
	jne	.label_436
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rbp + rax + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 0x10], rax
	jne	.label_436
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, rax
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_435
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_436
.label_435:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_436:
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
.label_434:
	call	qword ptr [rip + obstack_alloc_failed_handler]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405360

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_439
	nop	word ptr cs:[rax + rax]
.label_442:
	mov	rcx, qword ptr [rcx + 8]
.label_439:
	test	rcx, rcx
	je	.label_440
	cmp	rcx, rsi
	jae	.label_442
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_442
	jmp	.label_441
.label_440:
	xor	eax, eax
.label_441:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405390

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
	je	.label_446
	nop	word ptr cs:[rax + rax]
.label_448:
	cmp	rsi, r14
	jae	.label_443
	cmp	qword ptr [rsi], r14
	jae	.label_447
.label_443:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_449
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_445
	nop	
.label_449:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_445:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_448
.label_446:
	test	r14, r14
	je	.label_444
	call	abort
.label_447:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_444:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405410

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	test	rcx, rcx
	je	.label_450
	xor	eax, eax
	nop	dword ptr [rax]
.label_451:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_451
.label_450:
	ret	
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
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
	#Procedure 0x405470

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
	jne	.label_453
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_452
	test	cl, cl
	jne	.label_452
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_452
.label_453:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_452
	call	__errno_location
	mov	dword ptr [rax], 0
.label_452:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_455
	cmp	byte ptr [rax], 0x43
	jne	.label_457
	cmp	byte ptr [rax + 1], 0
	je	.label_454
.label_457:
	mov	esi, OFFSET FLAT:label_456
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_455
.label_454:
	xor	ebx, ebx
.label_455:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

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
	mov	eax, OFFSET FLAT:label_458
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x405540

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
