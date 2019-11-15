	.section	.text
	.align	16
	#Procedure 0x401b30

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_27
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
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_10
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_31
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_24:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	.align	16
	#Procedure 0x401dc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_75
	call	setlocale
	mov	edi, OFFSET FLAT:label_78
	mov	esi, OFFSET FLAT:label_79
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_78
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0xc], 4
	mov	byte ptr [rsp + 0x10], 0
	mov	byte ptr [rsp + 0x12], 0
	mov	byte ptr [rsp + 0x11], 0
	mov	qword ptr [rsp + 0x18], 0
	mov	byte ptr [rsp + 0x20], 0
	xor	r13d, r13d
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0x21]
	mov	byte ptr [rsp + 0x22], 0
	mov	byte ptr [rsp + 0x23], 0
	mov	bl, 1
	jmp	.label_61
	nop	word ptr [rax + rax]
.label_32:
	mov	dword ptr [rsp + 0xc], 3
	mov	byte ptr [rsp + 8], 0
.label_61:
	xor	r15d, r15d
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_1101:
	mov	dword ptr [rsp + 0xc], 5
	mov	byte ptr [rsp + 8], 1
	mov	r15b, 1
.label_51:
	xor	r14d, r14d
	jmp	.label_38
.label_1099:
	mov	byte ptr [rsp + 0x11], 1
	mov	r13b, 1
	nop	dword ptr [rax]
.label_38:
	mov	edx, OFFSET FLAT:label_62
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x48
	jle	.label_66
	add	eax, -0x49
	cmp	eax, 0x3b
	ja	.label_67
	jmp	qword ptr [(rax * 8) + label_69]
.label_1100:
	mov	byte ptr [rsp + 0x12], 1
	jmp	.label_38
.label_1102:
	mov	byte ptr [rsp + 0x22], 1
	jmp	.label_38
.label_1103:
	mov	rsi, qword ptr [rip + optarg]
	test	rsi, rsi
	je	.label_32
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_80
	mov	edx, OFFSET FLAT:interactive_args
	mov	ecx, OFFSET FLAT:interactive_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + interactive_types]
	cmp	eax, 2
	je	.label_32
	cmp	eax, 1
	je	.label_37
	test	eax, eax
	jne	.label_38
	jmp	.label_40
.label_37:
	mov	dword ptr [rsp + 0xc], 4
	mov	byte ptr [rsp + 8], 0
	mov	r14b, 1
	xor	r15d, r15d
	jmp	.label_38
.label_1104:
	mov	byte ptr [rsp + 0x10], 1
	jmp	.label_38
.label_1105:
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r12 + rax*8 - 8]
	mov	esi, OFFSET FLAT:label_33
	call	strcmp
	xor	ebx, ebx
	test	eax, eax
	je	.label_38
	jmp	.label_52
.label_1106:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	mov	bl, 1
	je	.label_38
	cmp	byte ptr [rax], 0x61
	jne	.label_58
	cmp	byte ptr [rax + 1], 0x6c
	jne	.label_58
	cmp	byte ptr [rax + 2], 0x6c
	jne	.label_58
	cmp	byte ptr [rax + 3], 0
	jne	.label_58
	mov	byte ptr [rsp + 0x20], 1
	mov	bl, 1
	jmp	.label_38
.label_1107:
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_38
.label_40:
	mov	dword ptr [rsp + 0xc], 5
	jmp	.label_51
.label_66:
	cmp	eax, -1
	jne	.label_41
	mov	eax, dword ptr [rip + optind]
	cmp	eax, ebp
	jge	.label_74
	test	bl, bl
	je	.label_76
	test	r13b, r13b
	je	.label_76
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x18], rax
	test	rax, rax
	je	.label_81
	mov	eax, dword ptr [rip + optind]
.label_76:
	test	r14b, r14b
	je	.label_36
	sub	ebp, eax
	cmp	ebp, 3
	ja	.label_34
	test	r13b, r13b
	je	.label_36
.label_34:
	mov	ebx, eax
	movsxd	r15, ebp
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	test	r13b, r13b
	je	.label_39
	mov	esi, OFFSET FLAT:label_42
	mov	edx, OFFSET FLAT:label_43
	jmp	.label_44
.label_41:
	cmp	eax, 0xffffff7d
	je	.label_45
	cmp	eax, 0xffffff7e
	je	.label_49
.label_67:
	cmp	ebp, 2
	jl	.label_50
	movsxd	r15, ebp
	mov	ebx, 1
	lea	r14, [rsp + 0x28]
	nop	dword ptr [rax + rax]
.label_63:
	mov	rbp, qword ptr [r12 + rbx*8]
	cmp	byte ptr [rbp], 0x2d
	jne	.label_56
	cmp	byte ptr [rbp + 1], 0
	je	.label_56
	mov	edi, 1
	mov	rsi, rbp
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	je	.label_68
.label_56:
	inc	rbx
	cmp	rbx, r15
	jl	.label_63
.label_50:
	mov	edi, 1
	call	usage
.label_74:
	xor	ebp, ebp
	test	r15b, r15b
	jne	.label_59
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
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
.label_68:
	mov	r14, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	r12, qword ptr [r12]
	mov	edi, 1
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, rbp
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_39:
	mov	esi, OFFSET FLAT:label_46
	mov	edx, OFFSET FLAT:label_47
.label_44:
	mov	r8d, 5
	mov	rcx, r15
	call	dcngettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	xor	ebp, ebp
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	r8, r15
	call	__fprintf_chk
	call	yesno
	test	al, al
	mov	eax, ebx
	je	.label_59
.label_36:
	cdqe	
	lea	rdi, [r12 + rax*8]
	lea	rsi, [rsp + 8]
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 3
	jae	.label_64
	xor	ebp, ebp
	cmp	eax, 4
	sete	bpl
.label_59:
	mov	eax, ebp
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_49:
	xor	edi, edi
	call	usage
.label_45:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_19
	mov	edx, OFFSET FLAT:label_13
	mov	r8d, OFFSET FLAT:label_70
	mov	r9d, OFFSET FLAT:label_71
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_72
	push	OFFSET FLAT:label_73
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_58:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_64:
	mov	edi, OFFSET FLAT:label_53
	mov	esi, OFFSET FLAT:label_54
	mov	edx, 0x173
	mov	ecx, OFFSET FLAT:label_55
	call	__assert_fail
.label_81:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_65
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	eax, 2
	cmp	qword ptr [rdi], 0
	je	.label_97
	mov	qword ptr [rsp + 0x10], rsi
	cmp	byte ptr [rsi + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r12, rax
	mov	r13d, 2
	jmp	.label_91
	nop	dword ptr [rax + rax]
.label_99:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_91:
	mov	dword ptr [rsp + 8], r13d
.label_113:
	mov	rdi, r12
	call	rpl_fts_read
	mov	r14, rax
	test	r14, r14
	je	.label_102
	movzx	eax, word ptr [r14 + 0x70]
	lea	ecx, [rax - 1]
	movzx	ecx, cx
	cmp	ecx, 0xc
	ja	.label_104
	jmp	qword ptr [(rcx * 8) + label_107]
.label_1125:
	mov	r13, qword ptr [rsp + 0x10]
	cmp	byte ptr [r13 + 9], 0
	jne	.label_109
	mov	ebp, 0x15
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_111
	mov	edi, dword ptr [r12 + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_130
.label_109:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_85
	mov	rbp, qword ptr [r14 + 0x30]
	mov	rdi, rbp
	call	last_component
	cmp	byte ptr [rax], 0x2e
	jne	.label_124
	xor	ecx, ecx
	cmp	byte ptr [rax + 1], 0x2e
	sete	cl
	mov	al, byte ptr [rax + rcx + 1]
	cmp	al, 0x2f
	je	.label_125
	test	al, al
	je	.label_125
.label_124:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_131
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_131
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	je	.label_139
.label_131:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_85
	mov	esi, OFFSET FLAT:label_87
	xor	edx, edx
	mov	rdi, rbp
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_92
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x18]
	call	__lxstat
	test	eax, eax
	jne	.label_82
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r12 + 0x18]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_129
.label_85:
	mov	edi, dword ptr [r12 + 0x2c]
	mov	edx, 1
	mov	r8d, 2
	mov	rsi, r14
	mov	rcx, r13
	lea	r9, [rsp + 0x18]
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_110
	cmp	dword ptr [rsp + 0x18], 4
	jne	.label_110
	mov	ecx, 1
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	call	excise
	mov	r15d, eax
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_110:
	cmp	r15d, 2
	je	.label_88
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_137:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_133
	cmp	qword ptr [rax + 0x20], 0
	je	.label_135
.label_133:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
	jmp	.label_88
.label_1127:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 8], 0
	je	.label_89
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_89
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [r12 + 0x18]
	jne	.label_94
	nop	word ptr cs:[rax + rax]
.label_89:
	or	eax, 2
	movzx	ebx, ax
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	edi, dword ptr [r12 + 0x2c]
	mov	r8d, 3
	xor	r9d, r9d
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_88
	xor	ecx, ecx
	cmp	ebx, 6
	sete	cl
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	excise
	mov	r15d, eax
.label_88:
	lea	eax, [r15 - 2]
	cmp	eax, 2
	jae	.label_112
	cmp	dword ptr [rsp + 8], 2
	jne	.label_113
	mov	r13d, 3
	cmp	r15d, 3
	jne	.label_113
	jmp	.label_91
	nop	word ptr [rax + rax]
.label_112:
	mov	r13d, 4
	cmp	r15d, 4
	je	.label_91
	jmp	.label_128
.label_1126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_138
.label_1128:
	mov	r15d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_138:
	mov	rdx, rbp
	call	error
.label_86:
	mov	r13d, 4
	jmp	.label_99
.label_94:
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_101
	nop	
.label_105:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_101:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_103
	cmp	qword ptr [rax + 0x20], 0
	je	.label_105
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r13d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_91
.label_130:
	cmp	byte ptr [r13 + 0xa], 0
	mov	ebp, 0x15
	mov	eax, 0x27
	cmovne	ebp, eax
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_90:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_134:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_86
	cmp	qword ptr [rax + 0x20], 0
	je	.label_90
	jmp	.label_86
.label_82:
	mov	rbp, rbx
.label_92:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r14 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_86
.label_129:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	jmp	.label_96
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_126
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_87
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, rbp
	call	error
	jmp	.label_99
.label_139:
	mov	rax, qword ptr [r14 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_98
	cmp	byte ptr [rax + 1], 0
	je	.label_93
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_65
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	call	error
.label_136:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
.label_96:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_86
.label_93:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_136
.label_102:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_132
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 8], 4
.label_132:
	mov	rdi, r12
	call	rpl_fts_close
	test	eax, eax
	mov	eax, dword ptr [rsp + 8]
	je	.label_97
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	eax, 4
.label_97:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	movzx	ebp, word ptr [r14 + 0x70]
	mov	rdx, qword ptr [r14 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_115
	xor	eax, eax
	mov	rdx, r15
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
.label_128:
	mov	edi, OFFSET FLAT:label_121
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_123
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_144
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_141
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_145:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_143
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_146
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_145
	test	cl, cl
	je	.label_145
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	jne	.label_140
	jmp	.label_142
.label_141:
	mov	edi, ebp
	call	close
	jmp	.label_140
.label_143:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_142:
	test	r14d, r14d
	sete	bl
	jmp	.label_144
.label_146:
	mov	rdi, rbx
	call	closedir
.label_140:
	xor	ebx, ebx
.label_144:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	rbx, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r14, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	rcx, qword ptr [r15 + 0x30]
	mov	rax, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	rbx, rbx
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x10], rcx
	je	.label_174
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	mov	rsi, rcx
	call	is_empty_dir
	mov	bpl, al
	movzx	eax, bpl
	add	eax, 3
	mov	dword ptr [rbx], eax
	jmp	.label_183
.label_174:
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	ebp, ebp
.label_183:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_164
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 5
	je	.label_150
	mov	rdx, qword ptr [r14]
	mov	rax, rdx
	shr	rax, 0x20
	xor	r15d, r15d
	test	dl, dl
	je	.label_156
	xor	ecx, ecx
	jmp	.label_158
.label_156:
	cmp	ecx, 3
	je	.label_159
	cmp	byte ptr [r14 + 0x19], 0
	mov	ecx, 0
	je	.label_158
.label_159:
	call	can_write_any_file
	test	al, al
	jne	.label_163
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_168
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_173
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_175
.label_173:
	mov	rax, qword ptr [rsp + 0x58]
.label_168:
	test	rax, rax
	js	.label_176
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0xa000
	je	.label_163
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	faccessat
	test	eax, eax
	je	.label_163
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	r15d, 0xffffffff
	cmove	r15d, ecx
	jmp	.label_182
.label_163:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [r14 + 4]
.label_158:
	cmp	eax, 3
	je	.label_148
	jmp	.label_150
.label_176:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_175:
	mov	dword ptr [rax], r15d
	mov	r15d, 0xffffffff
.label_182:
	mov	ecx, dword ptr [rax]
.label_148:
	test	r15d, r15d
	js	.label_154
	xor	r12b, 1
	je	.label_154
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_170
	mov	r12, rcx
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_167
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rcx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_171
.label_167:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, r12
.label_170:
	test	rax, rax
	js	.label_172
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_177
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_154:
	mov	r12d, r13d
.label_177:
	test	r15d, r15d
	js	.label_147
	mov	eax, r12d
	and	al, 0xf
	cmp	al, 4
	je	.label_179
	cmp	al, 0xa
	jne	.label_180
	cmp	dword ptr [r14 + 4], 3
	je	.label_180
	jmp	.label_150
.label_179:
	cmp	byte ptr [r14 + 9], 0
	jne	.label_180
	cmp	byte ptr [r14 + 0xa], 0
	mov	ecx, 0x15
	je	.label_147
	mov	eax, ebp
	xor	al, 1
	jne	.label_147
.label_180:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r14, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	bpl, cl
	je	.label_151
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_155
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_162
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_157
.label_151:
	mov	rbp, qword ptr [rip + stderr]
	xor	edi, edi
	test	r15d, r15d
	je	.label_178
	mov	esi, OFFSET FLAT:label_165
	jmp	.label_166
.label_172:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	rcx, rbx
.label_171:
	mov	dword ptr [rax], ecx
.label_147:
	mov	ebx, 4
	mov	edi, 4
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	jmp	.label_164
.label_178:
	mov	esi, OFFSET FLAT:label_181
.label_166:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__fprintf_chk
	jmp	.label_149
.label_162:
	mov	rax, qword ptr [rsp + 0x58]
.label_155:
	test	rax, rax
	js	.label_152
	mov	rax, qword ptr [rip + stderr]
	test	r15d, r15d
	je	.label_153
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_160
	jmp	.label_161
.label_152:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_157:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	ebx, 4
	jmp	.label_164
.label_153:
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
.label_161:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r14
	call	__fprintf_chk
.label_149:
	call	yesno
	test	al, al
	je	.label_164
.label_150:
	mov	ebx, 2
.label_164:
	mov	eax, ebx
	add	rsp, 0xb8
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
	#Procedure 0x402ee0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, ecx
	mov	r13, rdx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	edx, bpl
	shl	edx, 9
	mov	edi, dword ptr [rbx + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_188
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_190
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_189
	cmp	dword ptr [r12], 2
	je	.label_186
.label_189:
	mov	dword ptr [r12], 0x1e
.label_186:
	mov	ebp, dword ptr [r12]
.label_190:
	cmp	byte ptr [r13], 0
	je	.label_192
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_191
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_187
.label_191:
	cmp	ebp, 0x54
	je	.label_187
.label_192:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_185
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_185
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_185
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_193
	cmp	eax, 1
	jne	.label_185
.label_193:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	r14d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_197
	nop	dword ptr [rax + rax]
.label_184:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_197:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_187
	cmp	qword ptr [rax + 0x20], 0
	je	.label_184
	jmp	.label_187
.label_188:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_187
	xor	edi, edi
	test	bpl, bpl
	je	.label_194
	mov	esi, OFFSET FLAT:label_195
	jmp	.label_196
.label_194:
	mov	esi, OFFSET FLAT:label_198
.label_196:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_187:
	mov	eax, r14d
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

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
	mov	rbx, rsi
	mov	r15, rdi
	call	strlen
	mov	r12, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	rbp, qword ptr [rbx]
	test	rbp, rbp
	je	.label_207
	test	r14, r14
	je	.label_201
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_199
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_203
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_204
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_199
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_199
.label_204:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_199:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_200
	jmp	.label_206
.label_207:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_206
.label_201:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_202:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_205
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_203
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_205
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_205:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_202
.label_206:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_203:
	mov	rax, rbx
	add	rsp, 0x28
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
	#Procedure 0x403220
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
	je	.label_208
	mov	esi, OFFSET FLAT:label_209
	jmp	.label_210
.label_208:
	mov	esi, OFFSET FLAT:label_211
.label_210:
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
	.align	16
	#Procedure 0x403290

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
	mov	esi, OFFSET FLAT:label_216
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_213
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_218:
	test	r15, r15
	je	.label_212
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_217
.label_212:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_214
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_217:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_219
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_220:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_218
.label_213:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_215
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
.label_215:
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
	.align	16
	#Procedure 0x4033c0

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_221
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_222
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	jmp	.label_223
.label_222:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
.label_223:
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 0x10]
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, r14
	mov	r8, rbp
	call	error
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	rbx
	mov	rax, -1
.label_221:
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
	.align	16
	#Procedure 0x403490
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
	je	.label_224
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_225:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_224
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_225
.label_224:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403510

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, qword ptr [rip + stdin]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_227
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_227
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_227:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_226
	test	eax, eax
	jne	.label_226
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_226:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_232
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_231
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_228
.label_232:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_228:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_237
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_234
	cmp	dword ptr [rbp], 0x20
	jne	.label_234
.label_237:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_236
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_234:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_233
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_235
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_231
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_236:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_235:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_230
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4036c0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_238:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_238
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_242
	nop	word ptr cs:[rax + rax]
.label_241:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_242:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_241
	test	dl, dl
	je	.label_240
	mov	ecx, esi
	and	cl, 1
	je	.label_239
	xor	esi, esi
.label_239:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_241
.label_240:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403720

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_243:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_244
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_243
.label_244:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_254
	cmp	ecx, 0x3fff
	jg	.label_249
	cmp	eax, 0x1000
	je	.label_253
	cmp	eax, 0x2000
	jne	.label_245
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_252
	mov	edx, 5
	jmp	dcgettext
.label_254:
	cmp	eax, 0x8000
	je	.label_256
	cmp	eax, 0xa000
	je	.label_260
	cmp	eax, 0xc000
	jne	.label_245
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	jmp	dcgettext
.label_249:
	cmp	eax, 0x4000
	je	.label_259
	cmp	eax, 0x6000
	jne	.label_245
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	jmp	dcgettext
.label_253:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_258
	mov	edx, 5
	jmp	dcgettext
.label_256:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_250
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_261
	mov	edx, 5
	jmp	dcgettext
.label_260:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	jmp	dcgettext
.label_259:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	mov	edx, 5
	jmp	dcgettext
.label_245:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_247
	mov	edx, 5
	jmp	dcgettext
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_257
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403850

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_262
	pop	rcx
	ret	
.label_262:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403870

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_265
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_266
	cmp	byte ptr [r15], 0x2f
	je	.label_266
	mov	r12b, 0x2f
	jmp	.label_263
.label_265:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_263
.label_266:
	xor	r12d, r12d
.label_263:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_267
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_264
	mov	qword ptr [rax], rbp
.label_264:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_267:
	add	rsp, 0x18
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
	#Procedure 0x403950

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_270
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_272
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_268
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_272
	mov	esi, OFFSET FLAT:label_273
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_269
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_269:
	mov	rbx, r14
.label_272:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_270:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_271
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a00
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
	#Procedure 0x403a40
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
	#Procedure 0x403a50
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
	#Procedure 0x403a60
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
	#Procedure 0x403aa0
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
	#Procedure 0x403ac0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_274:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0
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
	.align	16
	#Procedure 0x403b70

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
	jmp	.label_302
	nop	
.label_300:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_282
	or	al, dl
	jne	.label_282
	test	dil, 1
	jne	.label_298
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_282
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_302
	jmp	.label_282
.label_1165:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_312
	test	rbp, rbp
	je	.label_370
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_370:
	mov	r14d, 1
	jmp	.label_317
.label_1166:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_329
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_384
.label_312:
	xor	r14d, r14d
.label_317:
	mov	eax, OFFSET FLAT:label_329
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_330
	nop	
.label_302:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_338
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_345]
.label_1167:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_352
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_280
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1168:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_349
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_349
	xor	r14d, r14d
	nop	
.label_378:
	cmp	r14, rbp
	jae	.label_344
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_344:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_378
.label_349:
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
	jmp	.label_384
.label_1160:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_384
.label_1163:
	mov	al, 1
.label_1161:
	mov	r12b, 1
.label_1164:
	test	r12b, 1
	mov	cl, 1
	je	.label_394
	mov	ecx, eax
.label_394:
	mov	al, cl
.label_1162:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_396
	test	rbp, rbp
	je	.label_401
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_401:
	mov	r14d, 1
	jmp	.label_275
.label_396:
	xor	r14d, r14d
.label_275:
	mov	ecx, OFFSET FLAT:label_280
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_330:
	mov	sil, r12b
.label_384:
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
	jmp	.label_287
	nop	word ptr cs:[rax + rax]
.label_289:
	inc	r12
.label_287:
	cmp	r11, -1
	je	.label_323
	cmp	r12, r11
	jne	.label_326
	jmp	.label_328
	nop	word ptr cs:[rax + rax]
.label_323:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_333
.label_326:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_339
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_342
	cmp	r11, -1
	jne	.label_342
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_342:
	cmp	rbx, r11
	jbe	.label_356
.label_339:
	xor	esi, esi
.label_365:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_357
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_360]
.label_1083:
	test	r12, r12
	jne	.label_279
	jmp	.label_293
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_377
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_365
	jmp	.label_299
.label_377:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_365
.label_1087:
	xor	eax, eax
	cmp	r11, -1
	je	.label_389
	test	r12, r12
	jne	.label_392
	cmp	r11, 1
	je	.label_293
	xor	r13d, r13d
	jmp	.label_295
.label_1076:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_398
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_299
	cmp	r8d, 2
	jne	.label_278
	mov	eax, r9d
	and	al, 1
	jne	.label_278
	cmp	r14, rbp
	jae	.label_310
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_310:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_283
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_283:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_393
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_393:
	add	r14, 3
	mov	r9b, 1
.label_278:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_296
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_296:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_306
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_306
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_306
	cmp	r14, rbp
	jae	.label_367
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_367:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_388
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_388:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_295
.label_1077:
	mov	bl, 0x62
	jmp	.label_324
.label_1078:
	mov	cl, 0x74
	jmp	.label_305
.label_1079:
	mov	bl, 0x76
	jmp	.label_324
.label_1080:
	mov	bl, 0x66
	jmp	.label_324
.label_1081:
	mov	cl, 0x72
	jmp	.label_305
.label_1084:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_336
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_286
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
	jae	.label_347
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_347:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_358
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_358:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_362
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_362:
	add	r14, 3
	xor	r9d, r9d
.label_336:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_295
.label_1085:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_369
	cmp	r8d, 2
	jne	.label_279
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_279
	jmp	.label_286
.label_1086:
	cmp	r8d, 2
	jne	.label_381
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_286
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_281
.label_357:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_386
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_373
.label_389:
	test	r12, r12
	jne	.label_276
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_276
.label_293:
	mov	dl, 1
.label_1082:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_286
	xor	eax, eax
	mov	r13b, dl
.label_295:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_288
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_290
	jmp	.label_291
	nop	word ptr cs:[rax + rax]
.label_288:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_291
.label_290:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_277
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_303
	nop	dword ptr [rax]
.label_291:
	test	sil, sil
.label_303:
	mov	ebx, r15d
	je	.label_311
	jmp	.label_314
.label_277:
	mov	ebx, r15d
	jmp	.label_314
.label_398:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_289
	xor	r15d, r15d
	jmp	.label_279
.label_381:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_305
	xor	eax, eax
	mov	r15b, 0x5c
.label_281:
	xor	r13d, r13d
	jmp	.label_311
.label_305:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_286
.label_324:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_295
	nop	
.label_314:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_299
	cmp	r8d, 2
	jne	.label_337
	mov	eax, r9d
	and	al, 1
	jne	.label_337
	cmp	r14, rbp
	jae	.label_341
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_341:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_294
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_351
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_351:
	add	r14, 3
	mov	r9b, 1
.label_337:
	cmp	r14, rbp
	jae	.label_355
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_355:
	inc	r14
	jmp	.label_387
.label_386:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_361
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_361:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_304
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_297:
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
	je	.label_382
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_390
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_292
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_399
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_309:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_395
	bt	rsi, rdx
	jb	.label_286
.label_395:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_309
.label_399:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_307
	xor	r13d, r13d
.label_307:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_297
	jmp	.label_308
.label_306:
	xor	r13d, r13d
	jmp	.label_295
.label_276:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_295
.label_369:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_279
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_279
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_279
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_322
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_321
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_332
	cmp	r14, rbp
	jae	.label_334
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_334:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_340
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_340:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_343
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_343:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_315
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_315:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_321:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_295
.label_279:
	xor	eax, eax
.label_392:
	xor	r13d, r13d
	jmp	.label_295
.label_304:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_375:
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
	je	.label_364
	cmp	rbp, -1
	je	.label_380
	cmp	rbp, -2
	je	.label_382
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_385
	xor	r13d, r13d
.label_385:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_375
	jmp	.label_308
.label_382:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_348
	lea	rax, [r10 + r12]
.label_366:
	cmp	byte ptr [rax + rsi], 0
	je	.label_348
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_366
.label_348:
	mov	qword ptr [rsp + 0x40], rsi
.label_390:
	xor	r13d, r13d
	jmp	.label_292
.label_380:
	xor	r13d, r13d
.label_364:
	mov	r10, qword ptr [rsp + 0x28]
.label_292:
	mov	r12, qword ptr [rsp + 0x40]
.label_308:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_373:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_285
	test	al, al
	je	.label_285
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_295
.label_285:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_301
	nop	word ptr [rax + rax]
.label_391:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_301:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_313
	test	sil, 1
	je	.label_320
	cmp	r14, rbp
	jae	.label_316
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_316:
	inc	r14
	xor	esi, esi
	jmp	.label_320
	nop	word ptr cs:[rax + rax]
.label_313:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_299
	cmp	r8d, 2
	jne	.label_327
	mov	eax, r9d
	and	al, 1
	jne	.label_327
	cmp	r14, rbp
	jae	.label_331
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_331:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_335
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_335:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_368
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_368:
	add	r14, 3
	mov	r9b, 1
.label_327:
	cmp	r14, rbp
	jae	.label_350
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_350:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_325
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_325:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_359
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_359:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_320:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_311
	test	r9b, 1
	je	.label_371
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_346
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_376
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_376:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_383
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_383:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_371
	nop	word ptr cs:[rax + rax]
.label_346:
	mov	rbx, rcx
.label_371:
	cmp	r14, rbp
	jae	.label_391
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_391
	nop	
.label_311:
	test	r9b, 1
	je	.label_397
	and	al, 1
	jne	.label_397
	cmp	r14, rbp
	jae	.label_400
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_400:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_363
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	add	r14, 2
	xor	r9d, r9d
.label_397:
	mov	ebx, r15d
.label_387:
	cmp	r14, rbp
	jae	.label_284
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_284:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_289
.label_322:
	xor	r13d, r13d
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_328:
	mov	rcx, r12
.label_333:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_300
	or	al, dl
	jne	.label_300
	mov	r11, rcx
	jmp	.label_299
.label_286:
	mov	eax, 2
.label_379:
	mov	qword ptr [rsp + 0x38], rax
.label_299:
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
.label_318:
	mov	r14, rax
.label_374:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_282:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_372
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_319
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_319
	inc	rdx
	nop	dword ptr [rax + rax]
.label_354:
	cmp	r14, rbp
	jae	.label_353
	mov	byte ptr [rcx + r14], al
.label_353:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_354
	jmp	.label_319
.label_298:
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
	jmp	.label_318
.label_372:
	mov	rcx, qword ptr [rsp + 0x10]
.label_319:
	cmp	r14, rbp
	jae	.label_374
	mov	byte ptr [rcx + r14], 0
	jmp	.label_374
.label_332:
	mov	eax, 5
	jmp	.label_379
.label_338:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4049a0
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
	.align	16
	#Procedure 0x404a70
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
	je	.label_402
	mov	qword ptr [rax], rbx
.label_402:
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
	#Procedure 0x404b60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_403
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_406:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_406
.label_403:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_407
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_405], OFFSET FLAT:slot0
.label_407:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_404
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_404:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c00
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c10

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
	js	.label_411
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_414
	cmp	r12d, 0x7fffffff
	je	.label_409
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
	jne	.label_412
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_412:
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
.label_414:
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
	jbe	.label_410
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_413
.label_410:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_408
	mov	rdi, r14
	call	free
.label_408:
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
.label_413:
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
.label_411:
	call	abort
.label_409:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
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
	#Procedure 0x404e00
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
	#Procedure 0x404e20

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
	je	.label_415
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
.label_415:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e90
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
	je	.label_416
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
.label_416:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00

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
	je	.label_417
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
.label_417:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
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
	je	.label_418
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
.label_418:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
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
	.align	16
	#Procedure 0x405050
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
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
	.align	16
	#Procedure 0x4050c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
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
	.align	16
	#Procedure 0x405120
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
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
	.align	16
	#Procedure 0x405180

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
	je	.label_422
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
.label_422:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_423
	test	rdx, rdx
	je	.label_423
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_423:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x405290
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_424
	test	rdx, rdx
	je	.label_424
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_424:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_425
	test	rsi, rsi
	je	.label_425
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_425:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405370
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_419]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_420]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_421]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_426
	test	rsi, rsi
	je	.label_426
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
.label_426:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4053e0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
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
	#Procedure 0x405410

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430

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
	#Procedure 0x405450

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
	jne	.label_431
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_435
	cmp	ecx, 0x55
	jne	.label_427
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_427
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_427
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_427
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_427
	cmp	byte ptr [rax + 5], 0
	jne	.label_427
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_433
	mov	eax, OFFSET FLAT:label_434
	jmp	.label_430
.label_435:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_427
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_427
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_427
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_427
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_427
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_427
	cmp	byte ptr [rax + 7], 0
	je	.label_432
.label_427:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_329
	mov	eax, OFFSET FLAT:label_280
.label_430:
	cmove	rax, rcx
.label_431:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_432:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_428
	mov	eax, OFFSET FLAT:label_429
	jmp	.label_430
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_65
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_436
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_436:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405570

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
	je	.label_453
	mov	edx, OFFSET FLAT:label_442
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_450
.label_453:
	mov	edx, OFFSET FLAT:label_451
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_455
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
	mov	esi, OFFSET FLAT:label_452
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_438
	jmp	qword ptr [(r12 * 8) + label_439]
.label_1176:
	add	rsp, 8
	jmp	.label_437
.label_438:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
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
	jmp	.label_437
.label_1177:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
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
.label_1178:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_445
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
.label_1179:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_444
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
.label_1180:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
	jmp	.label_437
.label_1181:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
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
	jmp	.label_437
.label_1182:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
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
	jmp	.label_437
.label_1183:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
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
	jmp	.label_437
.label_1185:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_449
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
	jmp	.label_437
.label_1184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
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
.label_437:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_456:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_456
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405900

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_457
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_459
.label_457:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_459:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_460
	cmp	r10d, 0x29
	jae	.label_469
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_458
.label_469:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_458:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_460
	cmp	r10d, 0x29
	jae	.label_467
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_468
.label_467:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_468:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_460
	cmp	r10d, 0x29
	jae	.label_465
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_466
.label_465:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_466:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_460
	cmp	r10d, 0x29
	jae	.label_463
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_464
.label_463:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_464:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_460
	cmp	r10d, 0x29
	jae	.label_461
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_462
.label_461:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_462:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_460
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_460
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_460
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_460
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_460:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405af0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_470
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_470:
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
	#Procedure 0x405b80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_471
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_115
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_13
	mov	ecx, OFFSET FLAT:label_14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_472
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_474
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
.label_474:
	push	rax
	call	geteuid
	test	eax, eax
	sete	al
	sete	byte ptr [rip + can_write_any_file.can_write]
	mov	byte ptr [rip + can_write_any_file.initialized],  1
	add	rsp, 8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_475
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_476
	test	rax, rax
	je	.label_475
.label_476:
	pop	rbx
	ret	
.label_475:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_477
	test	rax, rax
	je	.label_478
.label_477:
	pop	rbx
	ret	
.label_478:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_479
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_480
	test	rbx, rbx
	jne	.label_480
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_480:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_481
	test	rax, rax
	je	.label_479
.label_481:
	pop	rbx
	ret	
.label_479:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_482
	test	rbx, rbx
	jne	.label_482
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_482:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_484
	test	rax, rax
	je	.label_483
.label_484:
	pop	rbx
	ret	
.label_483:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405d10
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_488
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_490
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_485
.label_488:
	test	rcx, rcx
	jne	.label_491
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_491:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_486
.label_485:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_487
	test	rbx, rbx
	jne	.label_487
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_487:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_489
	test	rax, rax
	je	.label_490
.label_489:
	pop	rbx
	ret	
.label_490:
	call	xalloc_die
.label_486:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405db0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_492
	test	rax, rax
	je	.label_493
.label_492:
	pop	rbx
	ret	
.label_493:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405dd0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_496
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_498
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_495
	call	free
	xor	eax, eax
	jmp	.label_497
.label_496:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_494
	mov	qword ptr [rsi], rbx
.label_495:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_497
	test	rax, rax
	je	.label_494
.label_497:
	pop	rbx
	ret	
.label_494:
	call	xalloc_die
.label_498:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e40
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
	je	.label_500
	test	r14, r14
	je	.label_499
.label_500:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_499:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e80
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_501
	call	rpl_calloc
	test	rax, rax
	je	.label_501
	pop	rcx
	ret	
.label_501:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405eb0

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
	je	.label_502
	test	r15, r15
	je	.label_503
.label_502:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_503:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405ef0
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
	je	.label_505
	test	r15, r15
	je	.label_504
.label_505:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_504:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f40

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_506
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_231
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405f70

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_508
	pop	rcx
	ret	
.label_508:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_507
	mov	edi, OFFSET FLAT:label_509
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_511
	call	__assert_fail
.label_507:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_512
	cmp	ecx, 0x11
	jne	.label_513
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_512:
	ret	
.label_513:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405fd0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rcx, qword ptr [rip + stdin]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	mov	edx, 0xa
	call	__getdelim
	test	rax, rax
	jle	.label_514
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_516
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_516:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_515
.label_514:
	xor	ebx, ebx
.label_515:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406040

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_517
	test	rsi, rsi
	mov	ecx, 1
	je	.label_518
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_518
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_517:
	mov	ecx, 1
.label_518:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406090

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_519
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_519
	test	byte ptr [rbx + 1], 1
	je	.label_519
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_519:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_520
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_521
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_521:
	add	rax, rcx
.label_520:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

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
	jne	.label_522
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_522
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_523
.label_522:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_523:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_524
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_524:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406170

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rdx
	mov	ebx, esi
	mov	r12, rdi
	cmp	ebx, 0x1000
	jae	.label_544
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_544
	test	bl, 0x12
	je	.label_544
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_550
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x40], r14
	mov	eax, ebx
	and	eax, 0xfffffdfb
	or	eax, 4
	test	bl, 2
	cmove	eax, ebx
	mov	dword ptr [r15 + 0x48], eax
	mov	dword ptr [r15 + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r12]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_557
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_535:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_535
	inc	rbp
	mov	ebx, r13d
.label_557:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_536
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_546
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_549
	mov	byte ptr [r12 + 0x108], 0
	mov	qword ptr [r12 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rax
	mov	qword ptr [r12 + 0x38], rbp
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_546:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_527
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_527:
	xor	r14d, r14d
	test	r13, r13
	je	.label_532
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_539
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_538:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_537
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_537
	nop	dword ptr [rax]
.label_545:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_537
	dec	rbx
	cmp	rbx, 1
	ja	.label_545
	nop	word ptr cs:[rax + rax]
.label_537:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_551
	mov	rbp, r15
	add	rbp, 0x108
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r15 + rbx + 0x108], 0
	mov	qword ptr [r15 + 0x60], rbx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r15 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	dword ptr [r15 + 0x40], 0
	mov	qword ptr [r15 + 0x18], 0
	mov	word ptr [r15 + 0x72], 0
	mov	word ptr [r15 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	mov	qword ptr [r15 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [r15 + 0x30], rbp
	mov	rbx, r14
	test	rbx, rbx
	setne	al
	test	byte ptr [rsp + 0xf], al
	je	.label_558
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_534
.label_558:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_534:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_541
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_543
.label_541:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_543
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_543:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_538
	jmp	.label_526
.label_544:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_542:
	xor	eax, eax
.label_550:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_536:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_559
.label_539:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_561:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_525
	mov	r14, rbx
	add	r14, 0x108
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [rbx + rbp + 0x108], 0
	mov	qword ptr [rbx + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	qword ptr [rbx + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x30], r14
	test	r15, r15
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_560
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_548
.label_560:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_548:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_552
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_556
.label_552:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_556
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_556:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_561
.label_526:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_562
	cmp	r12, 2
	jb	.label_562
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_562:
	mov	r12, qword ptr [rsp + 0x18]
.label_532:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_530
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], r15
	mov	rcx, qword ptr [r15 + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [r15], rax
	mov	qword ptr [rax + 0x10], r14
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_533
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_553
	jmp	.label_554
.label_549:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_555
.label_530:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_554
.label_533:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_554
	mov	rdi, rax
	call	cycle_check_init
.label_553:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_547
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_563
	mov	edi, OFFSET FLAT:label_126
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_528
.label_525:
	mov	r14, r15
.label_551:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_554:
	test	r14, r14
	je	.label_531
	nop	dword ptr [rax]
.label_540:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_529
	call	closedir
.label_529:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_540
.label_531:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_555:
	mov	rdi, rbp
.label_559:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_542
.label_563:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_126
	xor	eax, eax
	call	openat_safer
.label_528:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_547
	or	byte ptr [r15 + 0x48], 4
.label_547:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_550
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067b0

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	mov	eax, dword ptr [r14 + 0x48]
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_566
	test	al, 1
	je	.label_566
	mov	dl, 1
.label_566:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_568
	and	eax, 2
	jne	.label_568
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_569
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_564
.label_568:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_569
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_564
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_572
	mov	eax, dword ptr [r14]
.label_564:
	mov	dword ptr [r15 + 0x40], eax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	ax, 0xa
.label_567:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_569:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_573
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_567
	cmp	ecx, 0x4000
	jne	.label_570
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_565
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_565
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_565:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_567
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_571
	cmp	dl, 0x2e
	jne	.label_567
	test	ecx, 0xff0000
	jne	.label_567
.label_571:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_567
.label_573:
	mov	ax, 8
	jmp	.label_567
.label_570:
	mov	ax, 3
	jmp	.label_567
.label_572:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_567
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	mov	r15, qword ptr [r12 + 0x40]
	cmp	qword ptr [r12 + 0x38], r14
	jae	.label_577
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_578
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_578
	mov	qword ptr [r13], rdi
	jmp	.label_581
.label_577:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_581:
	test	rbx, rbx
	je	.label_585
	nop	dword ptr [rax]
.label_574:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_574
	mov	rdi, qword ptr [r13]
.label_585:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_582
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_575
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_576
	mov	rdx, rsi
	jmp	.label_580
.label_578:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_583
.label_576:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_584:
	mov	rdx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	rdx, qword ptr [rsi + 0x18]
	mov	qword ptr [rax + 0x10], rdx
	lea	rdx, [rsi + 0x20]
	mov	rax, qword ptr [rsi + 0x18]
	mov	rsi, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x10], rsi
	add	rdi, 4
	mov	rsi, rdx
	jne	.label_584
.label_580:
	test	rcx, rcx
	je	.label_575
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_579:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_579
.label_575:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_582:
	mov	qword ptr [rcx + 0x10], 0
.label_583:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406ad0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_598
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_599
	nop	word ptr cs:[rax + rax]
.label_586:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_603
	mov	rbx, qword ptr [rdi + 8]
.label_603:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_586
	jmp	.label_588
.label_599:
	mov	rbx, rdi
.label_588:
	mov	rdi, rbx
	call	free
.label_598:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_591
	nop	word ptr cs:[rax + rax]
.label_596:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_593
	call	closedir
.label_593:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_596
.label_591:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_601
	xor	ebp, ebp
	test	al, 4
	jne	.label_590
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_604
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_604:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_589
	jmp	.label_590
.label_601:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_590
	call	close
.label_589:
	test	eax, eax
	je	.label_590
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_590:
	lea	rbx, [r14 + 0x60]
	jmp	.label_595
	nop	dword ptr [rax + rax]
.label_594:
	mov	edi, eax
	call	close
.label_595:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_597
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_594
	jmp	.label_595
.label_597:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_600
	call	hash_free
.label_600:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_602
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_587
	call	hash_free
	jmp	.label_587
.label_602:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_587:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_592
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_592:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c40

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	xor	ebx, ebx
	test	r15, r15
	je	.label_615
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_615
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_621
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_622
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_642
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_624
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_624
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_627
	mov	edi, OFFSET FLAT:label_126
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_625
.label_621:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_615
.label_622:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_637
.label_642:
	lea	r12, [r15 + 0x70]
.label_637:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_640
	cmp	edx, 4
	je	.label_641
	test	al, 0x40
	je	.label_644
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_641
.label_644:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_646
	test	ah, 0x10
	jne	.label_649
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_611
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_652
	nop	word ptr cs:[rax + rax]
.label_640:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_656
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_660
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_640
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_632
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_664
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_664
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_665
	mov	edi, OFFSET FLAT:label_126
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_608
.label_610:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_652:
	test	rax, rax
	jne	.label_610
	jmp	.label_611
.label_641:
	test	ecx, 0x20000
	je	.label_613
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_613:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_617
	nop	word ptr cs:[rax + rax]
.label_623:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_620
	call	closedir
.label_620:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_623
	mov	qword ptr [r14 + 8], 0
.label_617:
	mov	word ptr [r15 + 0x70], 6
.label_659:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_615
.label_656:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_626
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_629
	mov	rdi, r15
	call	free
	jmp	.label_632
.label_660:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_634
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_615
.label_634:
	test	ax, 0x102
	je	.label_638
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_639
	call	hash_free
	jmp	.label_639
.label_649:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_651:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_648
	call	closedir
.label_648:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_651
	mov	qword ptr [r14 + 8], 0
.label_646:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_653
.label_611:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_632
.label_653:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_615
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_659
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_659
	mov	word ptr [r12], 7
	jmp	.label_659
.label_627:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_126
	xor	eax, eax
	call	openat_safer
.label_625:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_663
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_624
.label_629:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_615
	mov	rbx, qword ptr [r15 + 8]
.label_626:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_605
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_606
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_607
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_609
	test	al, 1
	jne	.label_614
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_87
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_618
.label_605:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_615
.label_663:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_624
.label_638:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_639:
	mov	rdx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [rbx + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_628
	cmp	rbp, r15
	jne	.label_630
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_628
.label_630:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_628:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_635
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_645
.label_635:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_645
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_645
.label_607:
	mov	rdi, r14
	call	restore_initial_cwd
.label_618:
	test	eax, eax
	je	.label_614
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_614
.label_609:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_655
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_658
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_655
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_655
.label_665:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_126
	xor	eax, eax
	call	openat_safer
.label_608:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_633
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_664
.label_633:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_664:
	mov	word ptr [rbx + 0x74], 3
.label_632:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [rbx + 0x108]
	mov	rdx, qword ptr [rbx + 0x60]
	inc	rdx
	call	memmove
.label_645:
	mov	r15, rbx
.label_624:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_612
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_616
	cmp	rax, 2
	jne	.label_606
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_619
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_619
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_616
	cmp	rax, 0x58465342
	je	.label_616
.label_619:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_612
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_616
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_616
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_616:
	mov	ax, word ptr [r15 + 0x70]
.label_612:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_631
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_650
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_650:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_662
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_636
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_643
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_636
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_647
.label_631:
	mov	rbx, r15
	jmp	.label_615
.label_662:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_643
	mov	qword ptr [r15], r15
.label_647:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_615
.label_643:
	mov	rbx, r15
	jmp	.label_615
.label_636:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_615
.label_658:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_654
	cmp	esi, -0x64
	jne	.label_606
.label_654:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_657
	mov	edi, eax
	call	close
.label_657:
	mov	dword ptr [r14 + 0x2c], r15d
.label_655:
	mov	edi, dword ptr [rbp]
	call	close
.label_614:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_661
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_661
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_661:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_615:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_606:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407400

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_666
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_667
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_666:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_668
	cmp	qword ptr [rax + 0x58], 0
	js	.label_668
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_667
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_668
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_668
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_668:
	add	rsp, 0x18
	ret	
.label_667:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407490

	.globl fts_safe_changedir
	.type fts_safe_changedir, @function
fts_safe_changedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	r13d, edx
	mov	r12, rsi
	mov	r15, rdi
	test	rbx, rbx
	je	.label_674
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_670
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_670
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_670:
	test	eax, eax
	sete	r14b
	jmp	.label_684
.label_674:
	xor	r14d, r14d
.label_684:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_685
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_672
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_672
	and	eax, 0x200
	je	.label_672
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_672
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_672:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_680
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_681
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_683
.label_685:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_669
	and	eax, 0x200
	je	.label_669
	mov	edi, r13d
	call	close
	jmp	.label_669
.label_681:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_683:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_669
.label_680:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_676
	test	rbx, rbx
	je	.label_679
	cmp	byte ptr [rbx], 0x2e
	jne	.label_679
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_679
	cmp	byte ptr [rbx + 2], 0
	jne	.label_679
.label_676:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_678
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_682
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_682
	mov	eax, dword ptr [r15 + 0x48]
.label_679:
	test	ah, 2
	jne	.label_686
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_687
.label_686:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_688
	cmp	esi, -0x64
	jne	.label_675
.label_688:
	test	r14b, r14b
	je	.label_671
	test	al, 4
	jne	.label_673
	test	esi, esi
	js	.label_673
	mov	edi, esi
	jmp	.label_677
.label_682:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_678:
	mov	ebp, 0xffffffff
.label_687:
	test	r13d, r13d
	jns	.label_669
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_669
.label_671:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_673
	mov	edi, eax
.label_677:
	call	close
.label_673:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_669:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_675:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, esi
	mov	r15, rdi
	mov	r13, qword ptr [r15]
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x70], rdi
	je	.label_710
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_719
	mov	dword ptr [rsp], ebx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	lea	rbp, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_764
.label_710:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_728
	mov	edi, dword ptr [r15 + 0x2c]
.label_728:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_733
	test	al, 1
	je	.label_735
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_733
.label_735:
	mov	edx, 0x20000
.label_733:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_743
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_746
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_689
.label_719:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_743:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_715
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_702
.label_746:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_689
	mov	rdi, r15
	mov	rbp, rbx
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	movzx	eax, word ptr [r15 + 0x48]
	test	ax, 0x102
	je	.label_760
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_691
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_689
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_691
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_689
.label_760:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_689
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_689:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	cmp	dword ptr [rsp], 2
	mov	r13, rbx
	mov	rbp, r12
	je	.label_698
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_708
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_708
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_713
	cmp	rax, 0x9fa0
	je	.label_708
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_708
	cmp	rax, 0x5346414f
	je	.label_708
	jmp	.label_698
.label_691:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_702
.label_713:
	test	rax, rax
	je	.label_708
	cmp	rax, 0x6969
	jne	.label_698
.label_708:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_723
.label_698:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_748
.label_723:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_729
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_729:
	test	ebp, ebp
	js	.label_737
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_750
.label_737:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_745
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_745:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_751
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_751
	call	close
.label_751:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_748:
	mov	dword ptr [rsp + 0xc], 0
.label_764:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_756
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_756:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x38], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x78], rcx
	mov	rax, qword ptr [r13 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x88], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x80], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	mov	dword ptr [rsp + 8], 0
	xor	eax, eax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	qword ptr [rsp + 0x28], rbp
	mov	qword ptr [rsp + 0x30], r13
.label_744:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_695
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_714:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_701
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_704
	cmp	byte ptr [r13], 0x2e
	jne	.label_704
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_709
	test	al, al
	je	.label_734
	jmp	.label_704
	nop	dword ptr [rax]
.label_709:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_704
.label_734:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_714
	jmp	.label_717
	nop	dword ptr [rax + rax]
.label_704:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_725
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x68], rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	byte ptr [r12 + rbx + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rbp
	mov	r13, qword ptr [rbp + 0x20]
	mov	qword ptr [r12 + 0x38], r13
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rbx, rax
	jae	.label_730
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_749
	nop	dword ptr [rax + rax]
.label_730:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_752
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_754
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_755
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_757
.label_755:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_757:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_749:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_761
	mov	qword ptr [rsp + 0x78], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbp], 4
	jne	.label_763
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_692
	nop	
.label_763:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_692:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_697
	mov	eax, edx
	and	eax, 0x400
	jne	.label_697
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_706
	nop	dword ptr [rax + rax]
.label_697:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_766
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_766:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_716
	mov	eax, dword ptr [(rcx * 4) + label_753]
.label_716:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_706:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_736
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_736:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_732
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_732
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_740
	cmp	rax, 0x1021994
	je	.label_740
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_732
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_732
.label_740:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_732:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_744
	jmp	.label_695
.label_701:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_726
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_726:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_695
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_695
.label_717:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_695:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_693
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_762
	nop	word ptr cs:[rax + rax]
.label_690:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_762:
	test	rcx, rcx
	je	.label_765
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_690
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_690
.label_765:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_693
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_703:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_696
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_696:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_700
	mov	rdx, qword ptr [rcx + 8]
.label_700:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_703
.label_693:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_705
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_705:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_712
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_712
	cmp	dword ptr [rsp], 1
	je	.label_718
	test	r14, r14
	jne	.label_712
.label_718:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_720
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_87
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_724
.label_720:
	mov	rdi, r15
	call	restore_initial_cwd
.label_724:
	mov	rcx, rbp
	test	eax, eax
	je	.label_712
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_715
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_738:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_731
	call	closedir
.label_731:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_738
	jmp	.label_715
.label_712:
	test	r14, r14
	je	.label_741
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_742
	cmp	r14, 2
	jb	.label_747
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_747
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_715
.label_741:
	cmp	dword ptr [rsp], 3
	jne	.label_707
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_707
	movzx	eax, ax
	cmp	eax, 7
	je	.label_707
	mov	word ptr [r13 + 0x70], 6
.label_707:
	xor	r14d, r14d
	test	r12, r12
	je	.label_715
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_759:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_758
	call	closedir
.label_758:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_759
	jmp	.label_715
.label_742:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_715
.label_747:
	mov	r14, r12
	jmp	.label_715
.label_750:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_764
.label_761:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_694
	nop	word ptr [rax + rax]
.label_699:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_739
	call	closedir
.label_739:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_699
.label_694:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_702
.label_752:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_711
.label_754:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_711:
	mov	qword ptr [rsp + 0x48], r12
.label_725:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_721
	nop	word ptr cs:[rax + rax]
.label_727:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_722
	call	closedir
.label_722:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_727
.label_721:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_702:
	xor	r14d, r14d
.label_715:
	mov	rax, r14
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408130

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_770
	test	ah, 2
	jne	.label_772
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_768
.label_772:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_773
	mov	edi, eax
	call	close
.label_773:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_770:
	xor	eax, eax
.label_768:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_771
	nop	word ptr [rax + rax]
.label_767:
	mov	edi, eax
	call	close
.label_771:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_769
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_767
	jmp	.label_771
.label_769:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081b0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_774
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_774:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081e0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, esi
	mov	r13, rdi
	mov	eax, r12d
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_785
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_777
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_782
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_777
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_777
.label_785:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_777
.label_782:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_780
	nop	dword ptr [rax]
.label_791:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_783
	call	closedir
.label_783:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_791
.label_780:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_775
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_775:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_784
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_784
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_784
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_790
	mov	edi, OFFSET FLAT:label_126
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_789
.label_784:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_777:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_790:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_126
	xor	eax, eax
	call	openat_safer
.label_789:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_778
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_781
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_787
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_777
.label_778:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_777
.label_781:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_788
	cmp	esi, -0x64
	jne	.label_779
.label_788:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_786
	mov	edi, eax
	call	close
.label_786:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_776
.label_787:
	mov	edi, r15d
	call	close
.label_776:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_777
.label_779:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408390

	.globl AD_hash
	.type AD_hash, @function
AD_hash:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_792
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_792:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083c0

	.globl filesystem_type
	.type filesystem_type, @function
filesystem_type:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	r15d, esi
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x50]
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 2
	je	.label_793
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_795
	xor	r12d, r12d
	mov	edi, 0xd
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_type_hash
	mov	ecx, OFFSET FLAT:dev_type_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbp, rax
	mov	qword ptr [rbx + 0x50], rbp
	test	rbp, rbp
	mov	r14d, 0
	je	.label_796
.label_795:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_798
	mov	rax, qword ptr [rax + 8]
	jmp	.label_793
.label_798:
	mov	r12b, 1
	mov	r14, rbp
.label_796:
	xor	eax, eax
	test	r15d, r15d
	js	.label_793
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_793
	test	r12b, r12b
	je	.label_794
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_794
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_797
	cmp	rax, rbp
	je	.label_794
	call	abort
.label_797:
	mov	rdi, rbp
	call	free
.label_794:
	mov	rax, qword ptr [rsp]
.label_793:
	add	rsp, 0x78
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
	#Procedure 0x4084c0

	.globl dev_type_hash
	.type dev_type_hash, @function
dev_type_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4084d0

	.globl dev_type_compare
	.type dev_type_compare, @function
dev_type_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084e0

	.globl fts_compare_ino
	.type fts_compare_ino, @function
fts_compare_ino:
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rsi]
	mov	rcx, qword ptr [rcx + 0x80]
	cmp	rcx, rax
	sbb	edx, edx
	and	edx, 1
	cmp	rax, rcx
	mov	eax, 0xffffffff
	cmovae	eax, edx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408510

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
	je	.label_799
	cmp	r15, -2
	jb	.label_799
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_799
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_799:
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
	#Procedure 0x408570

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
	jne	.label_801
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_800
	test	cl, cl
	jne	.label_800
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_800
.label_801:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_800
	call	__errno_location
	mov	dword ptr [rax], 0
.label_800:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085d0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085e0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_802
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_803
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_803
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_804
.label_803:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_805
	mov	al, 1
	test	rdx, rdx
	je	.label_804
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_805:
	xor	eax, eax
.label_804:
	ret	
.label_802:
	push	rax
	mov	edi, OFFSET FLAT:label_806
	mov	esi, OFFSET FLAT:label_807
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_808
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408650

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_809
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_809:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_810
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_812
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_811
.label_812:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_811:
	mov	edx, dword ptr [rax]
.label_810:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408720

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_814
	cmp	byte ptr [rax], 0x43
	jne	.label_816
	cmp	byte ptr [rax + 1], 0
	je	.label_813
.label_816:
	mov	esi, OFFSET FLAT:label_815
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_814
.label_813:
	xor	ebx, ebx
.label_814:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408760
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408770
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408780
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408790
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_822
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_818
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_823:
	cmp	qword ptr [rcx], 0
	je	.label_819
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_817:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_817
	cmp	rdi, rax
	cmova	rax, rdi
.label_819:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_824
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_820:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_820
	cmp	rdi, rax
	cmova	rax, rdi
.label_824:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_823
.label_818:
	test	r8, r8
	je	.label_822
	cmp	qword ptr [rcx], 0
	je	.label_822
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_821:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_821
	cmp	rdx, rax
	cmova	rax, rdx
.label_822:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408850
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_830
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_832
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_827:
	cmp	qword ptr [rax], 0
	je	.label_828
	mov	rdx, rax
	nop	dword ptr [rax]
.label_831:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_831
	inc	r10
.label_828:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_833
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_825:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_825
	inc	r10
.label_833:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_827
	jmp	.label_829
.label_832:
	xor	r10d, r10d
.label_829:
	test	r8, r8
	je	.label_830
	cmp	qword ptr [rax], 0
	je	.label_830
	nop	dword ptr [rax]
.label_834:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_834
	inc	r10
.label_830:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_835
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_826
.label_835:
	xor	eax, eax
.label_826:
	ret	
	.section	.text
	.align	16
	#Procedure 0x408910
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rcx, qword ptr [rdi + 0x20]
	mov	r12, qword ptr [rdi + 0x10]
	mov	r14, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	ebx, ebx
	cmp	rax, rdi
	jae	.label_841
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_844
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_839:
	cmp	qword ptr [rax], 0
	je	.label_836
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_845:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_845
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_836:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_838
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_843:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_843
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_838:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_839
.label_844:
	test	r8, r8
	je	.label_841
	cmp	qword ptr [rax], 0
	je	.label_841
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_837:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_837
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_841:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_842
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_840
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_847]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_848]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_849]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_850
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_846
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x408a80

	.globl hash_lookup
	.type hash_lookup, @function
hash_lookup:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_855
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_852
	add	rbx, rax
	je	.label_852
	cmp	rsi, r12
	je	.label_854
	xor	r15d, r15d
	nop	
.label_853:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_851
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_852
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_853
.label_854:
	mov	r15, r12
	jmp	.label_852
.label_851:
	mov	r15, qword ptr [rbx]
.label_852:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_855:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b00
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_856
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_859
	nop	word ptr cs:[rax + rax]
.label_858:
	add	rcx, 0x10
.label_859:
	cmp	rcx, rdx
	jae	.label_857
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_858
.label_856:
	ret	
.label_857:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b40
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	cmp	rax, qword ptr [r14 + 0x10]
	jae	.label_863
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_864:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_862
	test	rdx, rdx
	jne	.label_864
	jmp	.label_860
.label_862:
	test	rdx, rdx
	je	.label_860
	mov	rax, qword ptr [rdx]
	jmp	.label_861
.label_860:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_865:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_861
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_865
.label_861:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_863:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bd0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_866
	xor	eax, eax
.label_868:
	cmp	qword ptr [r9], 0
	je	.label_867
	test	r9, r9
	je	.label_867
	mov	r8, r9
	nop	
.label_869:
	cmp	rax, rdx
	jae	.label_866
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_869
	mov	r8, qword ptr [rdi + 8]
.label_867:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_868
.label_866:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c20
	.globl hash_do_for_each
	.type hash_do_for_each, @function
hash_do_for_each:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12]
	mov	rax, qword ptr [r12 + 8]
	xor	ebx, ebx
	cmp	r13, rax
	jae	.label_870
	xor	ebx, ebx
.label_874:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_872
	test	r13, r13
	je	.label_872
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_870
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_873
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_871
	jmp	.label_870
	nop	dword ptr [rax]
.label_873:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_872:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_874
.label_870:
	mov	rax, rbx
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
	#Procedure 0x408cc0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_875
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_876:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	movzx	eax, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_876
.label_875:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d00
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_877]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20

	.globl hash_initialize
	.type hash_initialize, @function
hash_initialize:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	rbx, rsi
	mov	r12, rdi
	test	rdx, rdx
	mov	r13d, OFFSET FLAT:raw_hasher
	cmovne	r13, rdx
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:raw_comparator
	cmovne	rbp, rcx
	mov	edi, 0x50
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_883
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_889
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_892]
	jbe	.label_881
	movss	xmm1, dword ptr [rip + label_880]
	ucomiss	xmm1, xmm0
	jbe	.label_881
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_887]
	jbe	.label_881
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_881
	addss	xmm1, dword ptr [rip + label_892]
	ucomiss	xmm0, xmm1
	jbe	.label_881
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_882]
	ucomiss	xmm2, xmm0
	jb	.label_881
	ucomiss	xmm0, xmm1
	jbe	.label_881
.label_889:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_884
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_891
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_878
.label_891:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_878:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_885]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_886]
	jae	.label_881
.label_884:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_888
	nop	
.label_893:
	add	rbx, 2
.label_888:
	cmp	rbx, -1
	je	.label_881
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_879
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_890:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_879
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_890
.label_879:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_893
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_881
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_881
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_881
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [r15 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], rbp
	mov	qword ptr [r15 + 0x40], r14
	mov	qword ptr [r15 + 0x48], 0
	mov	rax, r15
	jmp	.label_883
.label_881:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_883:
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
	#Procedure 0x408f40

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	rol	rdi, 0x3d
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	rax, rdx
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f50

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f60
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_894
	nop	word ptr cs:[rax + rax]
.label_897:
	add	r14, 0x10
.label_894:
	cmp	r14, rax
	jae	.label_896
	cmp	qword ptr [r14], 0
	je	.label_897
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_898
	nop	word ptr cs:[rax + rax]
.label_900:
	test	cl, 1
	je	.label_899
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_899:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_900
.label_898:
	test	cl, cl
	je	.label_895
	mov	rdi, qword ptr [r14]
	call	rax
.label_895:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_897
.label_896:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409010

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_901
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_901
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_907
	nop	
.label_902:
	add	r15, 0x10
.label_907:
	cmp	r15, rax
	jae	.label_901
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_902
	test	r15, r15
	je	.label_902
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_903
.label_905:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_903:
	test	rbx, rbx
	jne	.label_905
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_902
.label_901:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_906
	nop	
.label_909:
	add	r15, 0x10
.label_906:
	cmp	r15, rax
	jae	.label_910
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_909
	nop	word ptr cs:[rax + rax]
.label_904:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_904
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_909
.label_910:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_908
.label_911:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_911
.label_908:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090e0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x50
	mov	r14, rdi
	mov	rax, qword ptr [r14 + 0x28]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_922
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_928
	cvtsi2ss	xmm0, rsi
	jmp	.label_914
.label_928:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_914:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_885]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_886]
	jae	.label_916
.label_922:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_919
	nop	dword ptr [rax + rax]
.label_930:
	add	rbx, 2
.label_919:
	cmp	rbx, -1
	je	.label_916
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_912
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_926:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_912
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_926
.label_912:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_930
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_916
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_920
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_916
	mov	qword ptr [rsp + 0x10], rbx
	shl	rbx, 4
	add	rax, rbx
	mov	qword ptr [rsp + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x28]
	movups	xmmword ptr [rsp + 0x28], xmm0
	movups	xmm0, xmmword ptr [r14 + 0x38]
	movups	xmmword ptr [rsp + 0x38], xmm0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, r14
	call	transfer_entries
	test	al, al
	je	.label_917
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_920
.label_917:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_929
	nop	
.label_921:
	add	r12, 0x10
.label_929:
	cmp	r12, r15
	jae	.label_918
	cmp	qword ptr [r12], 0
	je	.label_921
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_923
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_927:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_915
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_925
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_924
	nop	word ptr [rax + rax]
.label_925:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_924:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_927
.label_923:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_921
.label_918:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_913
	mov	rdi, qword ptr [rsp]
	call	free
.label_916:
	xor	ebp, ebp
.label_920:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_915:
	call	abort
.label_913:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409370

	.globl transfer_entries
	.type transfer_entries, @function
transfer_entries:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	mov	r13, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	cmp	r13, rax
	jae	.label_943
	test	dl, dl
	je	.label_938
	nop	dword ptr [rax]
.label_948:
	cmp	qword ptr [r13], 0
	je	.label_942
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_947
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_941:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_935
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_939
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_951
	nop	word ptr [rax + rax]
.label_939:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_951:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_941
	mov	rax, qword ptr [r15 + 8]
.label_947:
	mov	qword ptr [r13 + 8], 0
.label_942:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_948
	jmp	.label_943
	nop	word ptr cs:[rax + rax]
.label_938:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_937
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_940
	nop	word ptr [rax + rax]
.label_944:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_935
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_934
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_933
	nop	word ptr [rax + rax]
.label_934:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_933:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_944
	mov	r12, qword ptr [r13]
.label_940:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_946
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_949
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_932
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_936
	nop	dword ptr [rax + rax]
.label_949:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_931
.label_932:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_950
.label_936:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_931:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_937:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_938
.label_943:
	mov	al, 1
.label_945:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_950:
	xor	eax, eax
	jmp	.label_945
.label_935:
	call	abort
.label_946:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409590

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r14, rsi
	mov	r13, rdi
	test	r14, r14
	je	.label_961
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_961
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_959
	cmp	rsi, r14
	je	.label_974
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_977
	mov	rax, qword ptr [r12]
.label_973:
	test	rax, rax
	jne	.label_979
	jmp	.label_959
.label_974:
	mov	rax, r14
.label_979:
	xor	ebp, ebp
	test	r15, r15
	je	.label_954
	mov	qword ptr [r15], rax
	jmp	.label_954
.label_977:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_959
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_969:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_963
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_967
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_969
.label_959:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_971
	cvtsi2ss	xmm1, rax
	jmp	.label_976
.label_971:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_976:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_981
	cvtsi2ss	xmm0, rcx
	jmp	.label_956
.label_981:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_956:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_958
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_965
	ucomiss	xmm2, dword ptr [rip + label_892]
	jbe	.label_970
	movss	xmm3, dword ptr [rip + label_880]
	ucomiss	xmm3, xmm2
	jbe	.label_970
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_887]
	jbe	.label_970
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_970
	addss	xmm3, dword ptr [rip + label_892]
	ucomiss	xmm2, xmm3
	jbe	.label_970
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_882]
	ucomiss	xmm5, xmm4
	jb	.label_970
	ucomiss	xmm4, xmm3
	ja	.label_955
.label_970:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_957]
	jmp	.label_955
.label_965:
	mov	eax, OFFSET FLAT:default_tuning
.label_955:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_958
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_966
	mulss	xmm0, xmm2
.label_966:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_886]
	jae	.label_954
	movss	xmm1, dword ptr [rip + label_885]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r13
	call	hash_rehash
	test	al, al
	je	.label_954
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_961
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_958
	cmp	rsi, r14
	mov	rax, r14
	je	.label_964
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_972
	mov	rax, qword ptr [r12]
.label_964:
	test	rax, rax
	jne	.label_975
.label_958:
	cmp	qword ptr [r12], 0
	je	.label_968
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_978
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_982
.label_968:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_952]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_953
.label_978:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_954
.label_982:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_953:
	mov	ebp, 1
.label_954:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_963:
	mov	rax, r14
	jmp	.label_973
.label_967:
	mov	rax, qword ptr [rbp]
	jmp	.label_973
.label_972:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_958
	lea	rbp, [rbx + rbp + 8]
.label_962:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_980
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_960
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_962
	jmp	.label_958
.label_980:
	mov	rax, r14
	jmp	.label_964
.label_960:
	mov	rax, qword ptr [rbp]
	jmp	.label_964
.label_961:
	call	abort
.label_975:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0

	.globl hash_insert
	.type hash_insert, @function
hash_insert:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	lea	rdx, [rsp + 8]
	call	hash_insert_if_absent
	mov	ecx, eax
	xor	eax, eax
	cmp	ecx, -1
	je	.label_983
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_983:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409900

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rdi, r14
	call	qword ptr [r15 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r15 + 0x10]
	jae	.label_989
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_984
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_996
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_999
	mov	r14, qword ptr [r13]
.label_996:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1002
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_998
.label_999:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_984
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_994:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_990
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_993
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_994
	jmp	.label_984
.label_1002:
	mov	qword ptr [r13], 0
	jmp	.label_998
.label_990:
	mov	rcx, rax
	jmp	.label_1001
.label_993:
	mov	r14, qword ptr [rcx]
.label_1001:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_998:
	xor	r12d, r12d
	test	r14, r14
	je	.label_984
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_986
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_988
	cvtsi2ss	xmm1, rax
	jmp	.label_991
.label_988:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_991:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_995
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_1000
.label_995:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1000:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_986
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1004
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_892]
	jbe	.label_987
	movss	xmm4, dword ptr [rip + label_880]
	ucomiss	xmm4, xmm3
	jbe	.label_987
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_987
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_887]
	jbe	.label_987
	movss	xmm4, dword ptr [rip + label_892]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_987
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_882]
	ucomiss	xmm5, xmm3
	jb	.label_987
	ucomiss	xmm3, xmm4
	ja	.label_997
.label_987:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_997
.label_1004:
	mov	eax, OFFSET FLAT:default_tuning
.label_997:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_986
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_985
	mulss	xmm0, dword ptr [rax + 8]
.label_985:
	movss	xmm1, dword ptr [rip + label_885]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	mov	rdi, r15
	call	hash_rehash
	test	al, al
	jne	.label_986
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_992
	nop	word ptr cs:[rax + rax]
.label_1003:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1003
.label_992:
	mov	qword ptr [r15 + 0x48], 0
.label_986:
	mov	r12, r14
.label_984:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_989:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ba0

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	dword ptr [rdi + 0x14], 0
	mov	dword ptr [rdi + 0x18], 0
	movd	xmm0, esi
	pshufd	xmm0, xmm0, 0
	movdqu	xmmword ptr [rdi], xmm0
	mov	dword ptr [rdi + 0x10], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bd0

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409be0

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	movzx	ecx, byte ptr [rdi + 0x1c]
	xor	ecx, 1
	add	ecx, dword ptr [rdi + 0x14]
	mov	edx, ecx
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	cmp	edx, dword ptr [rdi + 0x18]
	jne	.label_1005
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1005:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c20

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_1006
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_1007
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_1007:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_1006:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x409c50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_75
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1008
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c80

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1009
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1009:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1010
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1011
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1012
.label_1011:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1012:
	mov	ecx, dword ptr [rax]
.label_1010:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d40

	.globl opendirat
	.type opendirat, @function
opendirat:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rcx
	or	edx, 0x90900
	xor	ebx, ebx
	xor	eax, eax
	call	openat_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1014
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1013
	mov	dword ptr [r14], ebp
	jmp	.label_1014
.label_1013:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1014:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d90

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
	ja	.label_1015
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
	jmp	.label_1016
.label_1015:
	mov	eax, ebx
.label_1016:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409de0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1017
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1019
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1017
.label_1019:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1017
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1018
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1018:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1017:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e60

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1037
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1037:
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
	ja	.label_1026
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1038
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1027
	test	esi, esi
	jne	.label_1026
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1040
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1020
.label_1026:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1021
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1027
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1029
.label_1038:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1033
.label_1027:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1034
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1035
.label_1034:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1035:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1036:
	call	fcntl
.label_1033:
	mov	ebp, eax
.label_1022:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1029:
	cmp	eax, 6
	jne	.label_1021
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1024
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1032
.label_1021:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1028
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1031
.label_1040:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1020:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1036
.label_1024:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1032:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1039
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1023
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1023
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1022
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1030
.label_1023:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1022
.label_1028:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1031:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1033
.label_1039:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1030:
	test	al, al
	je	.label_1022
	test	ebp, ebp
	js	.label_1022
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1025
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1022
.label_1025:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1022
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a100

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x40a120

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
