	.section	.text
	.align	16
	#Procedure 0x4018d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_15
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
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
	mov	esi, OFFSET FLAT:label_20
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
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_9
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
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
.label_15:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
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
	.align	16
	#Procedure 0x401b20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	r14, rsi
	mov	r12d, edi
	mov	qword ptr [rsp + 0x28], 0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_76
	call	setlocale
	mov	edi, OFFSET FLAT:label_79
	mov	esi, OFFSET FLAT:label_80
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_79
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [rip + diagnose_surprises],  0
	mov	byte ptr [rip + force_silent],  0
	mov	byte ptr [rip + recurse],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 8], r14
	mov	dword ptr [rsp + 0x10], r12d
	jmp	.label_53
	nop	dword ptr [rax]
.label_41:
	mov	byte ptr [rax + rbp], 0x2c
	mov	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	add	r12, rax
	inc	r14
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	call	memcpy
	mov	byte ptr [rip + diagnose_surprises],  1
	mov	bl, r15b
	mov	rbp, r13
	mov	r14, qword ptr [rsp + 8]
	mov	r12d, dword ptr [rsp + 0x10]
.label_53:
	mov	r15d, ebx
	xor	ebx, ebx
	mov	edx, OFFSET FLAT:label_104
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	add	eax, 0x83
	cmp	eax, 0x105
	ja	.label_30
	jmp	qword ptr [(rax * 8) + label_36]
.label_989:
	movsxd	rax, dword ptr [rip + optind]
	mov	rbx, qword ptr [r14 + rax*8 - 8]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	cmp	rbp, 1
	mov	r12, rbp
	sbb	r12, -1
	lea	r13, [r14 + r12]
	cmp	qword ptr [rsp + 0x28], r13
	jbe	.label_39
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_41
	nop	word ptr cs:[rax + rax]
.label_39:
	lea	rax, [r13 + 1]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x28]
	call	x2realloc
	jmp	.label_41
.label_990:
	mov	byte ptr [rip + recurse],  1
	mov	bl, r15b
	jmp	.label_53
.label_991:
	mov	dword ptr [rip + verbosity],  1
	mov	bl, r15b
	jmp	.label_53
.label_992:
	mov	byte ptr [rip + force_silent],  1
	mov	bl, r15b
	jmp	.label_53
.label_993:
	mov	dword ptr [rip + verbosity],  0
	mov	bl, r15b
	jmp	.label_53
.label_994:
	mov	bl, 1
	jmp	.label_53
.label_995:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	mov	bl, r15b
	jmp	.label_53
.label_988:
	mov	rbx, qword ptr [rsp + 0x20]
	test	rbx, rbx
	je	.label_60
	cmp	qword ptr [rsp + 0x18], 0
	mov	ecx, 0
	je	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
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
.label_60:
	mov	rcx, qword ptr [rsp + 0x18]
	test	rcx, rcx
	jne	.label_62
	movsxd	rax, dword ptr [rip + optind]
	lea	ecx, [rax + 1]
	mov	dword ptr [rip + optind],  ecx
	mov	rcx, qword ptr [r14 + rax*8]
.label_62:
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r12d
	jge	.label_74
	test	rbx, rbx
	je	.label_77
	mov	rdi, rbx
	call	mode_create_from_ref
	mov	qword ptr [rip + change],  rax
	test	rax, rax
	jne	.label_81
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_77:
	mov	rbp, rcx
	mov	rdi, rbp
	call	mode_compile
	mov	qword ptr [rip + change],  rax
	test	rax, rax
	je	.label_99
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + umask_value],  eax
.label_81:
	test	r15b, r15b
	je	.label_101
	mov	al, byte ptr [rip + recurse]
	xor	al, 1
	test	al, 1
	jne	.label_101
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	jne	.label_82
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_31
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_101:
	mov	qword ptr [rip + root_dev_ino],  0
.label_82:
	movsxd	rax, dword ptr [rip + optind]
	lea	rdi, [r14 + rax*8]
	mov	esi, 0x411
	xor	edx, edx
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_40
	mov	r14b, 1
	jmp	.label_47
.label_49:
	mov	qword ptr [r12 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	rpl_fts_set
	mov	bpl, 1
	jmp	.label_37
.label_89:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_58
	nop	dword ptr [rax]
.label_47:
	mov	rbx, qword ptr [r12 + 0x30]
	mov	r13, qword ptr [r12 + 0x38]
	movzx	eax, word ptr [r12 + 0x70]
	add	eax, -2
	movzx	eax, ax
	cmp	eax, 0xb
	ja	.label_34
	mov	bpl, 1
	jmp	qword ptr [(rax * 8) + label_64]
.label_997:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	cycle_warning_required
	test	al, al
	je	.label_34
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_37
	nop	word ptr cs:[rax + rax]
.label_34:
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_83
	mov	rcx, qword ptr [r12 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_83
	mov	rcx, qword ptr [r12 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_83
	cmp	byte ptr [r13], 0x2f
	jne	.label_87
	cmp	byte ptr [r13 + 1], 0
	je	.label_89
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rdx, r13
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_31
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r13
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_58:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edx, 4
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r12
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	jmp	.label_37
.label_83:
	mov	qword ptr [rsp + 0x10], rbx
	mov	byte ptr [rsp + 0x20], r14b
	mov	edi, dword ptr [r12 + 0x90]
	mov	ebx, edi
	and	ebx, 0xf000
	xor	esi, esi
	cmp	ebx, 0x4000
	sete	sil
	mov	edx, dword ptr [rip + umask_value]
	mov	rcx, qword ptr [rip + change]
	xor	r15d, r15d
	xor	r8d, r8d
	mov	r14d, edi
	call	mode_adjust
	mov	ebp, eax
	cmp	ebx, 0xa000
	mov	qword ptr [rsp + 8], r13
	jne	.label_45
	mov	r13b, 1
	mov	ebx, ebp
	jmp	.label_66
.label_998:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_51
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_54
	jmp	.label_55
.label_1001:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_51
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_69
.label_999:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_51
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_69
.label_1000:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_84
	cmp	qword ptr [r12 + 0x20], 0
	je	.label_49
.label_84:
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r13
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	r13d, 0
	jne	.label_51
	mov	ebx, dword ptr [r12 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
.label_55:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_69:
	call	error
	xor	r13d, r13d
	jmp	.label_51
.label_45:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, ebp
	call	fchmodat
	mov	r15b, 1
	test	eax, eax
	mov	ebx, ebp
	je	.label_105
	xor	r15d, r15d
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	mov	ebp, r14d
	jne	.label_106
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x40], rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, qword ptr [rsp + 0x40]
	call	error
.label_106:
	xor	r13d, r13d
	jmp	.label_42
.label_105:
	mov	r13b, 1
.label_66:
	mov	ebp, r14d
.label_42:
	movzx	r14d, byte ptr [rsp + 0x20]
.label_51:
	cmp	dword ptr [rip + verbosity],  2
	je	.label_44
	test	r15b, r15b
	je	.label_46
	test	bh, 0xe
	mov	eax, ebx
	je	.label_48
	mov	rax, qword ptr [rsp + 0x18]
	mov	esi, dword ptr [rax + 0x2c]
	mov	edi, 1
	xor	r8d, r8d
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rcx, [rsp + 0x48]
	call	__fxstatat
	test	eax, eax
	je	.label_97
	movzx	eax, byte ptr [rip + force_silent]
	test	al, al
	jne	.label_46
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x10], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	byte ptr [rsp + 0x20], r14b
	mov	r14d, ebp
	mov	ebp, ebx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, rbx
	mov	ebx, ebp
	mov	ebp, r14d
	movzx	r14d, byte ptr [rsp + 0x20]
	call	error
	nop	word ptr cs:[rax + rax]
.label_46:
	xor	eax, eax
	jmp	.label_71
.label_97:
	mov	eax, dword ptr [rsp + 0x60]
.label_48:
	xor	eax, ebp
	test	ax, 0xfff
	setne	al
.label_71:
	test	al, al
	jne	.label_72
	mov	ecx, dword ptr [rip + verbosity]
	test	ecx, ecx
	jne	.label_44
.label_72:
	mov	dword ptr [rsp + 0x10], ebp
	mov	ebp, ebx
	xor	ecx, ecx
	test	al, al
	sete	cl
	lea	ebx, [rcx + rcx + 1]
	test	r15b, r15b
	mov	eax, 0
	cmove	ebx, eax
	test	r13b, r13b
	mov	eax, 2
	cmove	ebx, eax
	test	ebx, ebx
	je	.label_73
	mov	edi, ebp
	lea	rsi, [rsp + 0x48]
	call	strmode
	mov	byte ptr [rsp + 0x52], 0
	mov	edi, dword ptr [rsp + 0x10]
	lea	rsi, [rsp + 0x34]
	call	strmode
	mov	byte ptr [rsp + 0x3e], 0
	and	bl, 3
	cmp	bl, 3
	je	.label_65
	cmp	bl, 2
	je	.label_90
	cmp	bl, 1
	jne	.label_92
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	jmp	.label_96
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_68
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_107
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, ebp
	mov	ecx, eax
	and	ecx, 0xfff
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x49]
	call	__printf_chk
	jmp	.label_68
.label_90:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
.label_96:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rdx, rax
	mov	eax, dword ptr [rsp + 0x10]
	mov	ecx, eax
	and	ecx, 0xfff
	mov	eax, ebp
	mov	r9d, eax
	and	r9d, 0xfff
	lea	rax, [rsp + 0x49]
	mov	qword ptr [rsp], rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	lea	r8, [rsp + 0x35]
	call	__printf_chk
.label_68:
	mov	ebx, ebp
	mov	ebp, dword ptr [rsp + 0x10]
.label_44:
	test	r15b, r15b
	je	.label_52
	cmp	byte ptr [rip + diagnose_surprises],  1
	jne	.label_52
	mov	eax, ebp
	and	eax, 0xf000
	xor	esi, esi
	cmp	eax, 0x4000
	sete	sil
	mov	rcx, qword ptr [rip + change]
	xor	edx, edx
	xor	r8d, r8d
	mov	edi, ebp
	call	mode_adjust
	mov	ebp, eax
	not	eax
	test	ebx, eax
	je	.label_52
	mov	edi, ebx
	lea	rsi, [rsp + 0x48]
	call	strmode
	mov	edi, ebp
	lea	rsi, [rsp + 0x34]
	call	strmode
	mov	byte ptr [rsp + 0x3e], 0
	mov	byte ptr [rsp + 0x52], 0
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_63
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	lea	r8, [rsp + 0x49]
	lea	r9, [rsp + 0x35]
	call	error
	nop	word ptr cs:[rax + rax]
.label_52:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_75
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	call	rpl_fts_set
.label_75:
	test	r13b, r13b
	setne	bpl
.label_37:
	and	bpl, r14b
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r12, rax
	test	r12, r12
	mov	r14d, ebp
	jne	.label_47
.label_40:
	call	__errno_location
	mov	r14, rax
	mov	ebx, dword ptr [r14]
	test	ebx, ebx
	je	.label_88
	mov	al, byte ptr [rip + force_silent]
	xor	ebp, ebp
	test	al, al
	jne	.label_88
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_88:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_100
	mov	ebx, dword ptr [r14]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_100:
	movzx	eax, bpl
	xor	eax, 1
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_986:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_11
	mov	edx, OFFSET FLAT:label_22
	mov	r8d, OFFSET FLAT:label_32
	mov	r9d, OFFSET FLAT:label_33
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_987:
	xor	edi, edi
	call	usage
.label_30:
	mov	edi, 1
	call	usage
.label_92:
	call	abort
.label_74:
	mov	rdx, rcx
	test	rcx, rcx
	je	.label_43
	cmp	rdx, qword ptr [r14 + rax*8 - 8]
	jne	.label_43
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, r12d
	mov	rdi, qword ptr [r14 + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
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
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402710
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402720
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402730

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_113
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_110
	cmp	dword ptr [rbp], 0x20
	jne	.label_110
.label_113:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_109
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_110:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_108
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_109:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_108:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_112
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027f0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_125
	cmp	ecx, 0x3fff
	jg	.label_116
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_119
	cmp	ecx, 0x2000
	jne	.label_120
	mov	cl, 0x63
	jmp	.label_114
.label_125:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_114
	cmp	edx, 0xa000
	je	.label_126
	cmp	edx, 0xc000
	jne	.label_120
	mov	cl, 0x73
	jmp	.label_114
.label_116:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_121
	cmp	ecx, 0x4000
	jne	.label_120
	mov	cl, 0x64
	jmp	.label_114
.label_119:
	mov	cl, 0x70
	jmp	.label_114
.label_121:
	mov	cl, 0x62
	jmp	.label_114
.label_120:
	mov	cl, 0x3f
	jmp	.label_114
.label_126:
	mov	cl, 0x6c
.label_114:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_123
	mov	cl, 0x2d
.label_123:
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
	jne	.label_129
	mov	cl, 0x2d
.label_129:
	test	bl, 8
	jne	.label_122
	mov	dl, cl
.label_122:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_130
	mov	cl, 0x2d
.label_130:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_128
	mov	cl, 0x2d
.label_128:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_115
	mov	cl, 0x2d
.label_115:
	test	bl, 4
	jne	.label_118
	mov	dil, cl
.label_118:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_124
	mov	r9b, 0x2d
.label_124:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_117
	mov	dl, 0x2d
.label_117:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_127
	mov	r8b, 0x2d
.label_127:
	test	bl, 2
	pop	rbx
	je	.label_131
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_131:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402920
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402930

	.globl mode_compile
	.type mode_compile, @function
mode_compile:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	bl, byte ptr [r14]
	mov	eax, ebx
	and	al, 0xf8
	cmp	al, 0x30
	jne	.label_142
	xor	eax, eax
	xor	r15d, r15d
	mov	rdx, r14
	nop	
.label_151:
	movsx	ecx, bl
	lea	r15d, [rcx + r15*8 - 0x30]
	cmp	r15d, 0xfff
	ja	.label_133
	movzx	ebx, byte ptr [rdx + 1]
	inc	rdx
	mov	ecx, ebx
	and	cl, 0xf8
	cmp	cl, 0x30
	je	.label_151
	xor	eax, eax
	test	bl, bl
	jne	.label_133
	sub	rdx, r14
	mov	eax, r15d
	and	eax, 0xc00
	or	eax, 0x3ff
	cmp	rdx, 5
	mov	ebx, 0xfff
	cmovl	ebx, eax
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], r15d
	mov	dword ptr [rax + 0xc], ebx
	mov	byte ptr [rax + 0x11], 0
	jmp	.label_133
.label_142:
	lea	rax, [r14 + 1]
	mov	edi, 1
	jmp	.label_146
	nop	
.label_153:
	add	rdi, rdx
	movzx	ebx, byte ptr [rax]
	inc	rax
.label_146:
	cmp	bl, 0x2c
	jle	.label_145
	cmp	bl, 0x2d
	je	.label_150
	cmp	bl, 0x3d
	mov	edx, 1
	je	.label_153
	jmp	.label_156
	nop	
.label_145:
	cmp	bl, 0x2b
	mov	edx, 1
	je	.label_153
	test	bl, bl
	je	.label_158
.label_156:
	xor	edx, edx
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	edx, 1
	jmp	.label_153
.label_158:
	mov	rax, rdi
	shr	rax, 0x3b
	jne	.label_138
	shl	rdi, 4
	call	xmalloc
	xor	r9d, r9d
	movabs	r8, 0x2000280000000000
	jmp	.label_141
.label_402a3c:
	inc	r14
	nop	
.label_141:
	xor	esi, esi
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x402a44
	.globl sub_402a44
	.type sub_402a44, @function
.label_402a44:

	nop	word ptr cs:[rax + rax]
.label_983:
	or	esi, 0x207
	inc	r14
.label_132:
	movzx	edx, byte ptr [r14]
	movsx	ecx, dl
	lea	edi, [rcx - 0x61]
	cmp	edi, 0x14
	ja	.label_149
	jmp	qword ptr [(rdi * 8) + label_155]
.label_981:
	or	esi, 0xfff
	inc	r14
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x402a7a
	.globl sub_402a7a
	.type sub_402a7a, @function
.label_402a7a:

	nop	word ptr [rax + rax]
.label_982:
	or	esi, 0x438
	inc	r14
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x402a8b
	.globl sub_402a8b
	.type sub_402a8b, @function
.label_402a8b:

	nop	dword ptr [rax + rax]
.label_984:
	or	esi, 0x9c0
	inc	r14
	jmp	.label_132
	.section	.text
	.align	16
	#Procedure 0x402a9b
	.globl sub_402a9b
	.type sub_402a9b, @function
.label_402a9b:

	nop	dword ptr [rax + rax]
.label_149:
	mov	edi, ecx
	cmp	ecx, 0x3d
	ja	.label_134
	bt	r8, rdi
	jae	.label_134
.label_1049:
	lea	rbx, [r14 + 1]
	movsx	ecx, byte ptr [r14 + 1]
	mov	edi, ecx
	add	edi, -0x30
	cmp	edi, 0x45
	ja	.label_143
	jmp	qword ptr [(rdi * 8) + label_147]
.label_923:
	xor	edi, edi
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_157:
	movsx	ecx, cl
	lea	edi, [rcx + rdi*8 - 0x30]
	cmp	edi, 0xfff
	ja	.label_134
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	ebx, ecx
	and	bl, 0xf8
	cmp	bl, 0x30
	je	.label_157
	test	esi, esi
	jne	.label_134
	mov	r11b, 1
	mov	esi, 0xfff
	test	cl, cl
	je	.label_148
	cmp	cl, 0x2c
	mov	r10d, 0xfff
	je	.label_139
	jmp	.label_134
.label_148:
	mov	r10d, 0xfff
	jmp	.label_139
.label_143:
	mov	r11b, 1
	xor	r10d, r10d
	mov	r14, rbx
	xor	edi, edi
	jmp	.label_144
	.section	.text
	.align	16
	#Procedure 0x402b44
	.globl sub_402b44
	.type sub_402b44, @function
.label_402b44:

	nop	word ptr cs:[rax + rax]
.label_140:
	mov	cl, byte ptr [r14 + 1]
	inc	r14
	mov	r11d, ebx
.label_144:
	movsx	ecx, cl
	add	ecx, -0x58
	cmp	ecx, 0x20
	ja	.label_139
	mov	bl, 2
	jmp	qword ptr [(rcx * 8) + label_154]
.label_931:
	or	edi, 0x124
	jmp	.label_135
.label_932:
	or	edi, 0xc00
	jmp	.label_135
.label_933:
	or	edi, 0x200
	jmp	.label_135
.label_934:
	or	edi, 0x92
	jmp	.label_135
.label_935:
	or	edi, 0x49
	nop	word ptr cs:[rax + rax]
.label_135:
	mov	ebx, r11d
	jmp	.label_140
.label_924:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x38
	jmp	.label_139
.label_925:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 7
	jmp	.label_139
.label_926:
	add	r14, 2
	mov	r11b, 3
	xor	r10d, r10d
	mov	edi, 0x1c0
	nop	word ptr cs:[rax + rax]
.label_139:
	mov	rcx, r9
	shl	rcx, 4
	mov	byte ptr [rax + rcx], dl
	mov	byte ptr [rax + rcx + 1], r11b
	mov	dword ptr [rax + rcx + 4], esi
	mov	dword ptr [rax + rcx + 8], edi
	test	r10d, r10d
	jne	.label_152
	cmp	esi, 1
	sbb	r10d, r10d
	or	r10d, esi
	and	r10d, edi
.label_152:
	inc	r9
	mov	dword ptr [rax + rcx + 0xc], r10d
	mov	dl, byte ptr [r14]
	mov	ecx, edx
	add	cl, 0xd5
	movzx	ecx, cl
	cmp	cl, 0x12
	ja	.label_136
	jmp	qword ptr [(rcx * 8) + label_137]
.label_136:
	test	dl, dl
	jne	.label_134
	shl	r9, 4
	mov	byte ptr [rax + r9 + 1], 0
	jmp	.label_133
.label_134:
	mov	rdi, rax
	call	free
	xor	eax, eax
.label_133:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_138:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x402c4c
	.globl sub_402c4c
	.type sub_402c4c, @function
.label_402c4c:

	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl mode_create_from_ref
	.type mode_create_from_ref, @function
mode_create_from_ref:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__xstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_159
	mov	ebx, dword ptr [rsp + 0x18]
	mov	edi, 0x20
	call	xmalloc
	mov	byte ptr [rax], 0x3d
	mov	byte ptr [rax + 1], 1
	mov	dword ptr [rax + 4], 0xfff
	mov	dword ptr [rax + 8], ebx
	mov	dword ptr [rax + 0xc], 0xfff
	mov	byte ptr [rax + 0x11], 0
.label_159:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl mode_adjust
	.type mode_adjust, @function
mode_adjust:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	qword ptr [rsp - 8], r8
	and	edi, 0xfff
	mov	al, byte ptr [rcx + 1]
	xor	r13d, r13d
	test	al, al
	je	.label_164
	xor	r13d, r13d
	test	sil, sil
	mov	r9d, 0xc00
	cmove	r9d, r13d
	not	edx
	mov	r10d, r9d
	not	r10d
	movzx	r12d, sil
	mov	r14d, 0x92
	mov	r15d, 0x49
	nop	dword ptr [rax + rax]
.label_163:
	movsx	ebp, al
	mov	ebx, dword ptr [rcx + 4]
	mov	esi, dword ptr [rcx + 8]
	mov	r8d, dword ptr [rcx + 0xc]
	cmp	ebp, 2
	je	.label_160
	cmp	ebp, 3
	jne	.label_165
	and	esi, edi
	mov	ebp, esi
	and	ebp, 0x124
	mov	eax, 0x124
	cmovne	ebp, eax
	mov	r11d, esi
	and	r11d, 0x92
	cmovne	r11d, r14d
	or	r11d, esi
	and	esi, 0x49
	cmovne	esi, r15d
	or	esi, ebp
	or	esi, r11d
	jmp	.label_165
	nop	dword ptr [rax + rax]
.label_160:
	mov	ebp, edi
	and	ebp, 0x49
	mov	eax, esi
	or	eax, 0x49
	or	ebp, r12d
	cmovne	esi, eax
.label_165:
	test	ebx, ebx
	mov	eax, edx
	cmovne	eax, ebx
	mov	ebp, r8d
	or	ebp, r10d
	and	ebp, esi
	and	ebp, eax
	movsx	esi, byte ptr [rcx]
	cmp	esi, 0x2b
	je	.label_161
	cmp	esi, 0x2d
	je	.label_167
	cmp	esi, 0x3d
	jne	.label_162
	not	r8d
	and	r8d, r9d
	test	ebx, ebx
	mov	eax, ebx
	not	eax
	cmove	eax, ebx
	or	eax, r8d
	mov	esi, eax
	not	esi
	and	esi, 0xfff
	or	r13d, esi
	and	eax, edi
	or	ebp, eax
	mov	edi, ebp
	jmp	.label_162
	nop	word ptr [rax + rax]
.label_167:
	or	r13d, ebp
	not	ebp
	and	edi, ebp
	jmp	.label_162
	nop	dword ptr [rax]
.label_161:
	or	r13d, ebp
	or	edi, ebp
.label_162:
	movzx	eax, byte ptr [rcx + 0x11]
	add	rcx, 0x10
	test	al, al
	jne	.label_163
.label_164:
	mov	rax, qword ptr [rsp - 8]
	test	rax, rax
	je	.label_166
	mov	dword ptr [rax], r13d
.label_166:
	mov	eax, edi
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
	#Procedure 0x402df0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_171
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_173
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_168
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_173
	mov	esi, OFFSET FLAT:label_170
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_169
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_169:
	mov	rbx, r14
.label_173:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_171:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_172
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ea0
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
	#Procedure 0x402ee0
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
	#Procedure 0x402ef0
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
	#Procedure 0x402f00
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
	#Procedure 0x402f40
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
	#Procedure 0x402f60
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
	#Procedure 0x402f90
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
	#Procedure 0x403010

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
.label_228:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_225
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_227]
.label_961:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_236
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_240
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_962:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_251
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_251
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_267:
	cmp	r14, r11
	jae	.label_265
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_265:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_267
.label_251:
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
	jmp	.label_186
.label_954:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_186
.label_957:
	mov	al, 1
.label_955:
	mov	r12b, 1
.label_958:
	test	r12b, 1
	mov	cl, 1
	je	.label_280
	mov	ecx, eax
.label_280:
	mov	al, cl
.label_956:
	test	r12b, 1
	jne	.label_282
	test	r11, r11
	je	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_231:
	mov	r14d, 1
	jmp	.label_286
.label_282:
	xor	r14d, r14d
.label_286:
	mov	ecx, OFFSET FLAT:label_240
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_186
.label_959:
	test	r12b, 1
	jne	.label_177
	test	r11, r11
	je	.label_181
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_181:
	mov	r14d, 1
	jmp	.label_183
.label_960:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_185
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_186
.label_177:
	xor	r14d, r14d
.label_183:
	mov	eax, OFFSET FLAT:label_185
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_186:
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
	jmp	.label_208
	nop	dword ptr [rax]
.label_268:
	inc	rsi
.label_208:
	cmp	rbp, -1
	je	.label_244
	cmp	rsi, rbp
	jne	.label_245
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_244:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_253
.label_245:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_255
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_258
	cmp	rbp, -1
	jne	.label_258
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
.label_258:
	cmp	rbx, rbp
	jbe	.label_273
.label_255:
	xor	r8d, r8d
.label_224:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_252
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_275]
.label_1016:
	test	rsi, rsi
	jne	.label_269
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_273:
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
	jne	.label_289
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_224
	jmp	.label_182
.label_289:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_224
.label_1020:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_194
	test	rsi, rsi
	jne	.label_196
	cmp	rbp, 1
	je	.label_200
	xor	r13d, r13d
	jmp	.label_179
.label_1009:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_205
	cmp	byte ptr [rsp + 6], 0
	jne	.label_207
	cmp	r12d, 2
	jne	.label_212
	mov	eax, r9d
	and	al, 1
	jne	.label_212
	cmp	r14, r11
	jae	.label_214
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_214:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_217:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_293
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_293:
	add	r14, 3
	mov	r9b, 1
.label_212:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_229:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_233
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_233
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_233
	cmp	r14, r11
	jae	.label_180
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_180:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_195
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_195:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_179
.label_1010:
	mov	bl, 0x62
	jmp	.label_247
.label_1011:
	mov	cl, 0x74
	jmp	.label_264
.label_1012:
	mov	bl, 0x76
	jmp	.label_247
.label_1013:
	mov	bl, 0x66
	jmp	.label_247
.label_1014:
	mov	cl, 0x72
	jmp	.label_264
.label_1017:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_266
	cmp	byte ptr [rsp + 6], 0
	jne	.label_175
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
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_279
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_279:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_281
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_281:
	add	r14, 3
	xor	r9d, r9d
.label_266:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_179
.label_1018:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_287
	cmp	r12d, 2
	jne	.label_269
	cmp	byte ptr [rsp + 6], 0
	je	.label_269
	jmp	.label_175
.label_1019:
	cmp	r12d, 2
	jne	.label_178
	cmp	byte ptr [rsp + 6], 0
	jne	.label_175
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_201
.label_252:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_190
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
.label_191:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_211
	test	r8b, r8b
	je	.label_211
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_179
.label_194:
	test	rsi, rsi
	jne	.label_232
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_232
.label_200:
	mov	dl, 1
.label_1015:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_175
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_179:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_238
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_239
	jmp	.label_243
	nop	word ptr cs:[rax + rax]
.label_238:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_243
.label_239:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_249
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_201
	jmp	.label_263
	nop	dword ptr [rax]
.label_243:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_263
	jmp	.label_201
.label_249:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_263
.label_205:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_268
	xor	r15d, r15d
	jmp	.label_269
.label_178:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_264
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_201
.label_264:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_175
.label_247:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_179
	nop	word ptr cs:[rax + rax]
.label_263:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_207
	cmp	r12d, 2
	jne	.label_283
	mov	eax, r9d
	and	al, 1
	jne	.label_283
	cmp	r14, r11
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_290
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_290:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_285
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	add	r14, 3
	mov	r9b, 1
.label_283:
	cmp	r14, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_206:
	inc	r14
	jmp	.label_187
.label_190:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_192
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_192:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_259:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_215
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_219
	cmp	rbp, -2
	je	.label_223
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_260
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_189:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_277
	bt	rsi, rdx
	jb	.label_242
.label_277:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_189
.label_260:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_199
	xor	r13d, r13d
.label_199:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_259
	jmp	.label_191
.label_233:
	xor	r13d, r13d
	jmp	.label_179
.label_232:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_179
.label_287:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_269
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_269
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_269
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_274
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_209
	cmp	byte ptr [rsp + 6], 0
	jne	.label_284
	cmp	r14, r11
	jae	.label_292
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_292:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_193
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_193:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_288
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_288:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_271
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_271:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_179
.label_269:
	xor	eax, eax
.label_196:
	xor	r13d, r13d
	jmp	.label_179
.label_211:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_188
	nop	word ptr cs:[rax + rax]
.label_270:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_188:
	test	r8b, r8b
	je	.label_197
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_198
	cmp	r14, r11
	jae	.label_202
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_202:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_198
	nop	dword ptr [rax]
.label_197:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_182
	cmp	r12d, 2
	jne	.label_216
	mov	eax, r9d
	and	al, 1
	jne	.label_216
	cmp	r14, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_218:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_221:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_226
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_226:
	add	r14, 3
	mov	r9b, 1
.label_216:
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_237:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_256
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_256:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_241
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_241:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_198:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_201
	test	r9b, 1
	je	.label_257
	mov	ebx, eax
	and	bl, 1
	jne	.label_257
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_261
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_261:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_262
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_262:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_257:
	cmp	r14, r11
	jae	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_201:
	test	r9b, 1
	je	.label_230
	and	al, 1
	jne	.label_230
	cmp	r14, r11
	jae	.label_276
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_276:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_295
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_295:
	add	r14, 2
	xor	r9d, r9d
.label_230:
	mov	ebx, r15d
.label_187:
	cmp	r14, r11
	jae	.label_220
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_220:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_268
.label_219:
	xor	r13d, r13d
.label_215:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_191
.label_223:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_296
	mov	rsi, qword ptr [rsp + 0x58]
.label_184:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_278
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_184
	xor	r13d, r13d
	jmp	.label_191
.label_296:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_191
.label_278:
	xor	r13d, r13d
	jmp	.label_191
.label_274:
	xor	r13d, r13d
	jmp	.label_179
.label_209:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_179
	nop	dword ptr [rax + rax]
.label_246:
	mov	rcx, rsi
.label_253:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_204
	or	al, dl
	je	.label_210
.label_204:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_213
	or	al, dl
	jne	.label_213
	test	r10b, 1
	jne	.label_222
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_213
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_228
.label_213:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_234
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_235
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_235
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_250:
	cmp	r14, r11
	jae	.label_203
	mov	byte ptr [rcx + r14], al
.label_203:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_250
	jmp	.label_235
.label_207:
	mov	qword ptr [rsp + 0x20], rbp
.label_182:
	mov	rdx, rdi
	jmp	.label_254
.label_175:
	mov	qword ptr [rsp + 0x20], rbp
.label_242:
	mov	rdx, rdi
	mov	eax, 2
.label_176:
	mov	qword ptr [rsp + 0x38], rax
.label_254:
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
.label_291:
	mov	r14, rax
.label_294:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_210:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_254
.label_222:
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
	jmp	.label_291
.label_234:
	mov	rcx, qword ptr [rsp + 8]
.label_235:
	cmp	r14, r11
	jae	.label_294
	mov	byte ptr [rcx + r14], 0
	jmp	.label_294
.label_284:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_176
.label_225:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e20
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
	#Procedure 0x403ef0
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
	je	.label_297
	mov	qword ptr [rax], rbx
.label_297:
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
	#Procedure 0x403fe0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_298
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_301:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_301
.label_298:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_302
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_299], OFFSET FLAT:slot0
.label_302:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_300
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_300:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404090

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
	js	.label_306
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_309
	cmp	r12d, 0x7fffffff
	je	.label_304
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
	jne	.label_307
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_307:
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
.label_309:
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
	jbe	.label_305
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_308
.label_305:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_303
	mov	rdi, r14
	call	free
.label_303:
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
.label_308:
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
.label_306:
	call	abort
.label_304:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404250
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260
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
	#Procedure 0x404280
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
	#Procedure 0x4042a0

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
	je	.label_310
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
.label_310:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404310
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
	je	.label_311
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
.label_311:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404380

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
	je	.label_312
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
.label_312:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0
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
	je	.label_313
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
.label_313:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404460
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
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
	#Procedure 0x4044d0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
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
	#Procedure 0x404540

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
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
	#Procedure 0x4045a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
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
	#Procedure 0x404600

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
	je	.label_317
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
.label_317:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046a0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_318
	test	rdx, rdx
	je	.label_318
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_318:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404710
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_319
	test	rdx, rdx
	je	.label_319
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_319:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_320
	test	rsi, rsi
	je	.label_320
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_320:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047f0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_314]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_315]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_316]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_321
	test	rsi, rsi
	je	.label_321
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
.label_321:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404860
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404870
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
	#Procedure 0x404890
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048b0

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
	#Procedure 0x4048d0

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
	jne	.label_326
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_330
	cmp	ecx, 0x55
	jne	.label_322
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_322
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_322
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_322
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_322
	cmp	byte ptr [rax + 5], 0
	jne	.label_322
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_328
	mov	eax, OFFSET FLAT:label_329
	jmp	.label_325
.label_330:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_322
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_322
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_322
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_322
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_322
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_322
	cmp	byte ptr [rax + 7], 0
	je	.label_327
.label_322:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_185
	mov	eax, OFFSET FLAT:label_240
.label_325:
	cmove	rax, rcx
.label_326:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_327:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_323
	mov	eax, OFFSET FLAT:label_324
	jmp	.label_325
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049a0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_31
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_331
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_331:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049f0

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
	je	.label_343
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_345
.label_343:
	mov	edx, OFFSET FLAT:label_346
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_345:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_350
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
	mov	esi, OFFSET FLAT:label_347
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_333
	jmp	qword ptr [(r12 * 8) + label_334]
.label_1056:
	add	rsp, 8
	jmp	.label_338
.label_333:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
	jmp	.label_338
.label_1057:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
.label_1058:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
.label_1059:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
.label_1060:
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
	jmp	.label_338
.label_1061:
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
	jmp	.label_338
.label_1062:
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
	jmp	.label_338
.label_1063:
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
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_338
.label_1065:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_338
.label_1064:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_349
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
.label_338:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_351:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_351
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d80

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
	jmp	.label_354
.label_352:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_354:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_355
	cmp	r10d, 0x29
	jae	.label_364
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_353
.label_364:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_353:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_355
	cmp	r10d, 0x29
	jae	.label_362
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_363
.label_362:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_363:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_355
	cmp	r10d, 0x29
	jae	.label_360
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_361
.label_360:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_361:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_355
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
	je	.label_355
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
	je	.label_355
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_355
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_355
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_355
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_355:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_365
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_365:
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
	#Procedure 0x405000
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_367
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_370
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_371
	test	rax, rax
	je	.label_370
.label_371:
	pop	rbx
	ret	
.label_370:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_372
	test	rax, rax
	je	.label_373
.label_372:
	pop	rbx
	ret	
.label_373:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_374
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_375
	test	rbx, rbx
	jne	.label_375
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_375:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_376
	test	rax, rax
	je	.label_374
.label_376:
	pop	rbx
	ret	
.label_374:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_377
	test	rbx, rbx
	jne	.label_377
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_377:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_379
	test	rax, rax
	je	.label_378
.label_379:
	pop	rbx
	ret	
.label_378:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405160
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_380
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_383
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_381
.label_380:
	test	rcx, rcx
	jne	.label_386
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_386:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_382
.label_381:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_385
	test	rbx, rbx
	jne	.label_385
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_385:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_384
	test	rax, rax
	je	.label_383
.label_384:
	pop	rbx
	ret	
.label_383:
	call	xalloc_die
.label_382:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405200
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_387
	test	rax, rax
	je	.label_388
.label_387:
	pop	rbx
	ret	
.label_388:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_389
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_392
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_393
	call	free
	xor	eax, eax
	jmp	.label_390
.label_389:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_391
	mov	qword ptr [rsi], rbx
.label_393:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_390
	test	rax, rax
	je	.label_391
.label_390:
	pop	rbx
	ret	
.label_391:
	call	xalloc_die
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290
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
	je	.label_395
	test	r14, r14
	je	.label_394
.label_395:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_394:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052d0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_396
	call	rpl_calloc
	test	rax, rax
	je	.label_396
	pop	rcx
	ret	
.label_396:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300

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
	je	.label_397
	test	r15, r15
	je	.label_398
.label_397:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_398:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405340
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
	je	.label_400
	test	r15, r15
	je	.label_399
.label_400:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_399:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_401
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_78
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4053c0

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_403
	pop	rcx
	ret	
.label_403:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_402
	mov	edi, OFFSET FLAT:label_404
	mov	esi, OFFSET FLAT:label_405
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_406
	call	__assert_fail
.label_402:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405400

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_407
	cmp	ecx, 0x11
	jne	.label_408
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_407:
	ret	
.label_408:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405420

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_409
	test	rsi, rsi
	mov	ecx, 1
	je	.label_410
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_410
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_409:
	mov	ecx, 1
.label_410:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405470

	.globl rpl_fts_open
	.type rpl_fts_open, @function
rpl_fts_open:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r13, rdx
	mov	r12d, esi
	mov	r14, rdi
	cmp	r12d, 0x1000
	jae	.label_421
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_421
	test	r12b, 0x12
	je	.label_421
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_427
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x40], r13
	mov	eax, r12d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r12b, 2
	cmove	eax, r12d
	mov	dword ptr [rbx + 0x48], eax
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
	mov	rdi, qword ptr [r14]
	mov	ebp, 1
	test	rdi, rdi
	je	.label_433
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_429:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_429
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_433:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_439
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_441
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_426
	mov	byte ptr [r14 + 0x108], 0
	mov	qword ptr [r14 + 0x60], 0
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x50], rax
	mov	qword ptr [r14 + 0x38], rbp
	mov	dword ptr [r14 + 0x40], 0
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x72], 0
	mov	word ptr [r14 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x20], xmm0
	mov	qword ptr [r14 + 0x58], -1
	mov	qword ptr [r14 + 0x68], -1
.label_441:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_412
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_412:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_423
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_430:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_411
	cmp	rbp, 3
	jb	.label_411
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_411
	nop	word ptr cs:[rax + rax]
.label_415:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_411
	dec	rbp
	cmp	rbp, 1
	ja	.label_415
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_424
	mov	qword ptr [rsp + 0x40], rbx
	mov	r13, r12
	add	r13, 0x108
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	mov	byte ptr [r12 + rbp + 0x108], 0
	mov	qword ptr [r12 + 0x60], rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x50], rdi
	mov	rax, qword ptr [rdi + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	dword ptr [r12 + 0x40], 0
	mov	qword ptr [r12 + 0x18], 0
	mov	word ptr [r12 + 0x72], 0
	mov	word ptr [r12 + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [r12 + 0x20], xmm0
	mov	qword ptr [r12 + 0x58], 0
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x30], r13
	mov	rbx, qword ptr [rsp + 0x30]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_413
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_440
	nop	dword ptr [rax]
.label_413:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_440:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_435
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_414
.label_435:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_414
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_414:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_430
	test	r13, r13
	je	.label_423
	cmp	rbx, 2
	jb	.label_423
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_423:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_416
	mov	byte ptr [rax + 0x108], 0
	mov	qword ptr [rax + 0x60], 0
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x50], rbx
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rax + 0x38], rcx
	mov	dword ptr [rax + 0x40], 0
	mov	qword ptr [rax + 0x18], 0
	mov	word ptr [rax + 0x72], 0
	mov	word ptr [rax + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x20], xmm0
	mov	qword ptr [rbx], rax
	mov	qword ptr [rax + 0x10], rbp
	mov	word ptr [rax + 0x70], 9
	mov	qword ptr [rax + 0x58], 1
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_419
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_420
	jmp	.label_432
.label_421:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_428:
	xor	eax, eax
.label_427:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_439:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_431
.label_424:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_432
.label_426:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_436
.label_416:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_432:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_437
	nop	dword ptr [rax + rax]
.label_417:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_425
	call	closedir
.label_425:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_417
.label_437:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_436:
	mov	rdi, rbp
.label_431:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_428
.label_419:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_432
	mov	rdi, rax
	call	cycle_check_init
.label_420:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_418
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_434
	mov	edi, OFFSET FLAT:label_422
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_438
.label_434:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_422
	xor	eax, eax
	call	openat_safer
.label_438:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_418
	or	byte ptr [rbx + 0x48], 4
.label_418:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_427
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059c0

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
	jne	.label_442
	test	al, 1
	je	.label_442
	mov	dl, 1
.label_442:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_449
	and	eax, 2
	jne	.label_449
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_443
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_447
.label_449:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_443
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_447
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_445
	mov	eax, dword ptr [r14]
.label_447:
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
.label_444:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_443:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_446
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_444
	cmp	ecx, 0x4000
	jne	.label_450
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_448
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_448
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_448:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_444
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_451
	cmp	dl, 0x2e
	jne	.label_444
	test	ecx, 0xff0000
	jne	.label_444
.label_451:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_444
.label_446:
	mov	ax, 8
	jmp	.label_444
.label_450:
	mov	ax, 3
	jmp	.label_444
.label_445:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_444
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b60

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
	jae	.label_456
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_457
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_457
	mov	qword ptr [r13], rdi
	jmp	.label_461
.label_456:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_461:
	test	rbx, rbx
	je	.label_454
	nop	dword ptr [rax]
.label_453:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_453
	mov	rdi, qword ptr [r13]
.label_454:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_462
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_452
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_455
	mov	rdx, rsi
	jmp	.label_459
.label_457:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_463
.label_455:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_458:
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
	jne	.label_458
.label_459:
	test	rcx, rcx
	je	.label_452
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_460:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_460
.label_452:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_462:
	mov	qword ptr [rcx + 0x10], 0
.label_463:
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
	#Procedure 0x405ce0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_478
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_468
	nop	word ptr cs:[rax + rax]
.label_479:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_464
	mov	rbx, qword ptr [rdi + 8]
.label_464:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_479
	jmp	.label_469
.label_468:
	mov	rbx, rdi
.label_469:
	mov	rdi, rbx
	call	free
.label_478:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_472
	nop	word ptr cs:[rax + rax]
.label_476:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_474
	call	closedir
.label_474:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_476
.label_472:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_481
	xor	ebp, ebp
	test	al, 4
	jne	.label_471
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_466
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_466:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_470
	jmp	.label_471
.label_481:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_471
	call	close
.label_470:
	test	eax, eax
	je	.label_471
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_471:
	lea	rbx, [r14 + 0x60]
	jmp	.label_475
	nop	dword ptr [rax + rax]
.label_467:
	mov	edi, eax
	call	close
.label_475:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_477
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_467
	jmp	.label_475
.label_477:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_480
	call	hash_free
.label_480:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_482
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_465
	call	hash_free
	jmp	.label_465
.label_482:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_465:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_473
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_473:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	xor	r15d, r15d
	test	r12, r12
	je	.label_490
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_490
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_518
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_523
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_527
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_533
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_537
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_539
	mov	edi, OFFSET FLAT:label_422
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_483
.label_518:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_490
.label_523:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_495
.label_527:
	lea	r13, [r12 + 0x70]
.label_495:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_497
	cmp	edx, 4
	je	.label_498
	test	al, 0x40
	je	.label_502
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_498
.label_502:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_507
	test	ah, 0x10
	jne	.label_511
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_509
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_522
	nop	word ptr cs:[rax + rax]
.label_497:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_531
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_535
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_497
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_494
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_489
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_489
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_514
	mov	edi, OFFSET FLAT:label_422
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_501
.label_506:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_522:
	test	rax, rax
	jne	.label_506
	jmp	.label_509
.label_498:
	test	ecx, 0x20000
	je	.label_510
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_510:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_528
	nop	dword ptr [rax]
.label_526:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_520
	call	closedir
.label_520:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_526
	mov	qword ptr [r14 + 8], 0
.label_528:
	mov	word ptr [r12 + 0x70], 6
.label_536:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_490
.label_531:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_534
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_540
	mov	rdi, r12
	call	free
	jmp	.label_494
.label_533:
	mov	r15, r12
	jmp	.label_486
.label_535:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_493
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_490
.label_537:
	mov	r15, r12
	jmp	.label_486
.label_493:
	test	ax, 0x102
	je	.label_499
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_508
	call	hash_free
	jmp	.label_508
.label_511:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_521:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_513
	call	closedir
.label_513:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_521
	mov	qword ptr [r14 + 8], 0
.label_507:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_529
.label_509:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_494
.label_529:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_490
	cmp	dword ptr [r12 + 0x40], 0
	je	.label_536
	movzx	eax, word ptr [r13]
	cmp	eax, 4
	je	.label_536
	mov	word ptr [r13], 7
	jmp	.label_536
.label_539:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_422
	xor	eax, eax
	call	openat_safer
.label_483:
	mov	dword ptr [r12 + 0x44], eax
	test	eax, eax
	js	.label_485
	or	byte ptr [r12 + 0x72], 2
	mov	r15, r12
	jmp	.label_486
.label_540:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_490
	mov	r15, qword ptr [r12 + 8]
.label_534:
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_500
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_503
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_505
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_512
	test	al, 1
	jne	.label_516
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_519
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_525
.label_500:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_490
.label_485:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	mov	word ptr [r12 + 0x70], 7
	mov	r15, r12
	jmp	.label_486
.label_499:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_508:
	mov	rdx, qword ptr [r15 + 0x60]
	mov	qword ptr [r15 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r12, [r15 + 0x108]
	inc	rdx
	mov	rsi, r12
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r12
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_488
	cmp	rbx, r12
	jne	.label_515
	cmp	byte ptr [r15 + 0x109], 0
	je	.label_488
.label_515:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r12
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r15 + 0x60], r13
.label_488:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r15 + 0x38], rax
	mov	qword ptr [r15 + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_524
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_486
.label_524:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_486
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_486
.label_505:
	mov	rdi, r14
	call	restore_initial_cwd
.label_525:
	test	eax, eax
	je	.label_516
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_516
.label_512:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbx, [r15 + 0x44]
	test	al, 4
	jne	.label_532
	test	ah, 2
	mov	ebp, dword ptr [r15 + 0x44]
	jne	.label_538
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_532
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_532
.label_514:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_422
	xor	eax, eax
	call	openat_safer
.label_501:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_491
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_489
.label_491:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_489:
	mov	word ptr [r15 + 0x74], 3
.label_494:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_486:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_517
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_484
	cmp	rax, 2
	jne	.label_503
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_492
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_492
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_484
	cmp	rax, 0x58465342
	je	.label_484
.label_492:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_517
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_484
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_484
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_484:
	mov	ax, word ptr [r15 + 0x70]
.label_517:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_490
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_496
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_496:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_490
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_490
.label_538:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, ebp
	jne	.label_487
	cmp	esi, -0x64
	jne	.label_503
.label_487:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_530
	mov	edi, eax
	call	close
.label_530:
	mov	dword ptr [r14 + 0x2c], ebp
.label_532:
	mov	edi, dword ptr [rbx]
	call	close
.label_516:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_504
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_504
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_504:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_490:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_503:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_541
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_543
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_541:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_542
	cmp	qword ptr [rax + 0x58], 0
	js	.label_542
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_543
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_542
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_542
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_542:
	add	rsp, 0x18
	ret	
.label_543:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670

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
	je	.label_561
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_549
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_549
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_549:
	test	eax, eax
	sete	r14b
	jmp	.label_553
.label_561:
	xor	r14d, r14d
.label_553:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_554
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_555
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_555
	and	eax, 0x200
	je	.label_555
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_555
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_555:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_545
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_547
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_552
.label_554:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_546
	and	eax, 0x200
	je	.label_546
	mov	edi, r13d
	call	close
	jmp	.label_546
.label_547:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_552:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_546
.label_545:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_562
	test	rbx, rbx
	je	.label_544
	cmp	byte ptr [rbx], 0x2e
	jne	.label_544
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_544
	cmp	byte ptr [rbx + 2], 0
	jne	.label_544
.label_562:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_550
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_551
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_551
	mov	eax, dword ptr [r15 + 0x48]
.label_544:
	test	ah, 2
	jne	.label_556
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_558
.label_556:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_559
	cmp	esi, -0x64
	jne	.label_557
.label_559:
	test	r14b, r14b
	je	.label_560
	test	al, 4
	jne	.label_548
	test	esi, esi
	js	.label_548
	mov	edi, esi
	jmp	.label_563
.label_551:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_550:
	mov	ebp, 0xffffffff
.label_558:
	test	r13d, r13d
	jns	.label_546
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_546
.label_560:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_548
	mov	edi, eax
.label_563:
	call	close
.label_548:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_546:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406860

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r14d, esi
	mov	r15, rdi
	mov	rbp, qword ptr [r15]
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], r15
	je	.label_586
	mov	rdi, rbx
	call	dirfd
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	js	.label_592
	mov	qword ptr [rsp + 0x68], rbx
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	lea	r12, [r15 + 0x48]
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_596
.label_586:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_628
	mov	edi, dword ptr [r15 + 0x2c]
.label_628:
	mov	rsi, qword ptr [rbp + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_607
	test	al, 1
	je	.label_610
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_607
.label_610:
	mov	edx, 0x20000
.label_607:
	lea	rcx, [rsp + 8]
	call	opendirat
	mov	qword ptr [rbp + 0x18], rax
	test	rax, rax
	je	.label_612
	mov	qword ptr [rsp + 0x68], rbx
	lea	r12, [r15 + 0x48]
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 0xb
	jne	.label_614
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_619
.label_592:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
.label_612:
	xor	ebx, ebx
	cmp	r14d, 3
	jne	.label_587
	mov	word ptr [rbp + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp + 0x40], eax
	jmp	.label_567
.label_614:
	test	byte ptr [r12 + 1], 1
	je	.label_619
	mov	rdi, r15
	mov	rsi, rbp
	call	leave_dir
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rdi, r15
	mov	rsi, rbp
	call	enter_dir
	test	al, al
	je	.label_629
.label_619:
	lea	rax, [r15 + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	cmp	qword ptr [r15 + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x70], rax
	cmp	r14d, 2
	je	.label_566
	mov	eax, dword ptr [r12]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_564
	cmp	qword ptr [rbp + 0x88], 2
	jne	.label_564
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_638
	cmp	rax, 0x9fa0
	je	.label_564
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_564
	cmp	rax, 0x5346414f
	je	.label_564
	jmp	.label_566
.label_629:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_567
.label_638:
	test	rax, rax
	je	.label_564
	cmp	rax, 0x6969
	jne	.label_566
.label_564:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14b, 1
	jmp	.label_571
.label_566:
	mov	rax, rbp
	mov	r13d, r14d
	cmp	r14d, 3
	sete	bpl
	mov	r14d, 0
	jne	.label_576
.label_571:
	mov	r15, rax
	test	byte ptr [r12 + 1], 2
	mov	ebx, dword ptr [rsp + 8]
	je	.label_581
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
.label_581:
	test	ebx, ebx
	js	.label_589
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_593
.label_589:
	and	bpl, r14b
	cmp	bpl, 1
	jne	.label_594
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_594:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	eax, dword ptr [r12]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14d, r13d
	je	.label_599
	mov	edi, dword ptr [rsp + 8]
	test	edi, edi
	js	.label_599
	call	close
.label_599:
	mov	rbp, rbx
	mov	qword ptr [rbp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_596
.label_576:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_609
.label_593:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
.label_609:
	mov	r14d, r13d
	mov	rbp, rax
.label_596:
	mov	dword ptr [rsp + 0x54], r14d
	mov	rax, qword ptr [rbp + 0x38]
	mov	rcx, qword ptr [rbp + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	test	byte ptr [r12], 4
	je	.label_613
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x48], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_613:
	lea	rax, [rdx + 1]
	mov	qword ptr [rsp + 0x58], rax
	mov	rcx, qword ptr [r15 + 0x30]
	sub	rcx, rax
	mov	qword ptr [rsp + 0x88], rcx
	mov	rax, qword ptr [rbp + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x98], rax
	add	rdx, 0x102
	mov	qword ptr [rsp + 0x90], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	dword ptr [rsp + 0x1c], 0
	xor	eax, eax
	xor	ebx, ebx
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x30], r12
.label_572:
	mov	qword ptr [rsp + 0x28], rbx
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	je	.label_631
	mov	qword ptr [rsp + 0xa0], rax
	mov	qword ptr [rsp + 0x20], r14
	nop	dword ptr [rax]
.label_606:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_639
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [r12], 0x20
	jne	.label_565
	cmp	byte ptr [r13], 0x2e
	jne	.label_565
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_582
	test	al, al
	je	.label_568
	jmp	.label_565
	nop	word ptr [rax + rax]
.label_582:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_565
.label_568:
	mov	rbx, qword ptr [rbp + 0x18]
	test	rbx, rbx
	jne	.label_606
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
.label_565:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_584
	mov	rdi, r12
	add	rdi, 0x108
	mov	qword ptr [rsp + 0x80], rdi
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
	cmp	rbx, qword ptr [rsp + 0x88]
	jae	.label_590
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x58]
	jmp	.label_603
	nop	dword ptr [rax]
.label_590:
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_608
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_588
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_615
	mov	rdx, qword ptr [rsp + 0x58]
	add	rax, rdx
	mov	rcx, qword ptr [rsp + 0x30]
	test	byte ptr [rcx], 4
	mov	rcx, qword ptr [rsp + 0x48]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x48], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x78], rax
	mov	rbp, qword ptr [rsp + 0x38]
	jmp	.label_618
.label_615:
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x58]
.label_618:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, rdx
.label_603:
	add	rbx, rax
	jb	.label_623
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [r12 + 0x58], rax
	mov	r15, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbx
	mov	rax, qword ptr [r14]
	mov	qword ptr [r12 + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	test	byte ptr [rax], 4
	jne	.label_604
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_632
	nop	dword ptr [rax]
.label_604:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x80]
	call	memmove
.label_632:
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x30]
	mov	edx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	je	.label_637
	mov	eax, edx
	and	eax, 0x400
	jne	.label_637
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	rsi, qword ptr [rsp + 0x20]
	jmp	.label_624
	nop	
.label_637:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_601
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
	mov	rbx, qword ptr [rsp + 0x28]
.label_601:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	rsi, qword ptr [rsp + 0x20]
	ja	.label_580
	mov	eax, dword ptr [(rcx * 4) + label_570]
.label_580:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_624:
	mov	qword ptr [r12 + 0x10], 0
	test	rsi, rsi
	mov	rax, r12
	je	.label_578
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rsi
.label_578:
	mov	r14, rax
	cmp	rbx, 0x2710
	jne	.label_591
	mov	rax, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax], 0
	jne	.label_591
	mov	esi, dword ptr [rsp + 8]
	mov	rdi, rbp
	call	filesystem_type
	mov	dword ptr [rsp + 0x1c], 0
	cmp	rax, 0x6969
	je	.label_591
	cmp	rax, 0x1021994
	je	.label_591
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_591
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax]
.label_591:
	inc	rbx
	cmp	qword ptr [rsp + 0x70], rbx
	mov	rax, r12
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_572
	jmp	.label_575
.label_639:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_611
	mov	dword ptr [rbp + 0x40], eax
	mov	rax, qword ptr [rsp + 0x68]
	or	rax, rbx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [rbp + 0x70], cx
.label_611:
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
	je	.label_575
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	jmp	.label_575
.label_617:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x20]
.label_631:
	mov	rbx, qword ptr [rsp + 0x28]
.label_575:
	mov	rax, qword ptr [rsp + 0x78]
	test	al, 1
	je	.label_621
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_622
	nop	word ptr [rax + rax]
.label_579:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_622:
	test	rcx, rcx
	je	.label_627
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_579
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_579
.label_627:
	cmp	qword ptr [r14 + 0x58], 0
	js	.label_621
	mov	rcx, r14
	nop	word ptr cs:[rax + rax]
.label_640:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_634
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_634:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_636
	mov	rdx, qword ptr [rcx + 8]
.label_636:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_640
.label_621:
	test	byte ptr [r12], 4
	je	.label_635
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rdx, qword ptr [rsp + 0x58]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	rbx, rbx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_635:
	cmp	qword ptr [rsp + 0x68], 0
	mov	eax, dword ptr [rsp + 0xc]
	jne	.label_569
	test	al, al
	je	.label_569
	cmp	dword ptr [rsp + 0x54], 1
	je	.label_573
	test	rbx, rbx
	jne	.label_569
.label_573:
	cmp	qword ptr [rbp + 0x58], 0
	je	.label_577
	mov	rsi, qword ptr [rbp + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_519
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_583
.label_577:
	mov	rdi, r15
	call	restore_initial_cwd
.label_583:
	test	eax, eax
	je	.label_569
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	xor	ebx, ebx
	test	r14, r14
	je	.label_587
	xor	ebx, ebx
.label_595:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_602
	call	closedir
.label_602:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_595
	jmp	.label_587
.label_569:
	test	rbx, rbx
	je	.label_597
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_598
	cmp	rbx, 2
	jb	.label_600
	mov	rax, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_600
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	jmp	.label_587
.label_597:
	cmp	dword ptr [rsp + 0x54], 3
	jne	.label_605
	movzx	eax, word ptr [rbp + 0x70]
	cmp	eax, 4
	je	.label_605
	movzx	eax, ax
	cmp	eax, 7
	je	.label_605
	mov	word ptr [rbp + 0x70], 6
.label_605:
	xor	ebx, ebx
	test	r14, r14
	je	.label_587
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_620:
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_616
	call	closedir
.label_616:
	mov	rdi, r14
	call	free
	test	rbp, rbp
	mov	r14, rbp
	jne	.label_620
	jmp	.label_587
.label_598:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rbp], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	fts_sort
	mov	rbx, rax
	mov	qword ptr [rbp], 0
	jmp	.label_587
.label_600:
	mov	rbx, r14
	jmp	.label_587
.label_623:
	mov	rdi, r12
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_626
	nop	word ptr cs:[rax + rax]
.label_633:
	mov	rbx, qword ptr [rax + 0x10]
	mov	r12, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_630
	call	closedir
.label_630:
	mov	rdi, r12
	call	free
	test	rbx, rbx
	mov	rax, rbx
	jne	.label_633
.label_626:
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_567
.label_608:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_641
.label_588:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_641:
	mov	qword ptr [rsp + 0x60], r12
	mov	rbp, qword ptr [rsp + 0x38]
.label_584:
	mov	r13, rbp
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x30]
	je	.label_574
.label_585:
	mov	rbp, qword ptr [rax + 0x10]
	mov	rbx, rax
	mov	rdi, qword ptr [rax + 0x18]
	test	rdi, rdi
	je	.label_625
	call	closedir
.label_625:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_585
.label_574:
	mov	rbx, r13
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	or	byte ptr [r12 + 1], 0x20
	mov	dword ptr [r15], r14d
.label_567:
	xor	ebx, ebx
.label_587:
	mov	rax, rbx
	add	rsp, 0xa8
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
	#Procedure 0x4072a0

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_642
	test	ah, 2
	jne	.label_646
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_647
.label_646:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_645
	mov	edi, eax
	call	close
.label_645:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_642:
	xor	eax, eax
.label_647:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_643
	nop	word ptr [rax + rax]
.label_644:
	mov	edi, eax
	call	close
.label_643:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_648
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_644
	jmp	.label_643
.label_648:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407320

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_649
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_650
	movups	xmm0, xmmword ptr [r14 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_651
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_650
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_652
.label_649:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_651
	mov	qword ptr [r14], r14
.label_652:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_651
.label_650:
	xor	ebp, ebp
.label_651:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073c0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_653
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_653:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073f0
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
	jne	.label_656
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_657
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_669
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_657
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_657
.label_656:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_657
.label_669:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_665
	nop	dword ptr [rax]
.label_658:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_663
	call	closedir
.label_663:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_658
.label_665:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_660
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_660:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_667
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_667
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_667
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_659
	mov	edi, OFFSET FLAT:label_422
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_661
.label_667:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_657:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_659:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_422
	xor	eax, eax
	call	openat_safer
.label_661:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_668
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_666
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_670
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_657
.label_668:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_657
.label_666:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_662
	cmp	esi, -0x64
	jne	.label_664
.label_662:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_654
	mov	edi, eax
	call	close
.label_654:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_655
.label_670:
	mov	edi, r15d
	call	close
.label_655:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_657
.label_664:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075a0

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
	#Procedure 0x4075b0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_671
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_671:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075d0

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
	je	.label_674
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_676
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
	je	.label_677
.label_676:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_673
	mov	rax, qword ptr [rax + 8]
	jmp	.label_674
.label_673:
	mov	r12b, 1
	mov	r14, rbp
.label_677:
	xor	eax, eax
	test	r15d, r15d
	js	.label_674
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_674
	test	r12b, r12b
	je	.label_675
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_675
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_672
	cmp	rax, rbp
	je	.label_675
	call	abort
.label_672:
	mov	rdi, rbp
	call	free
.label_675:
	mov	rax, qword ptr [rsp]
.label_674:
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
	#Procedure 0x4076d0

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
	#Procedure 0x4076e0

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
	#Procedure 0x4076f0

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
	#Procedure 0x407720

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
	je	.label_678
	cmp	r15, -2
	jb	.label_678
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_678
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_678:
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
	#Procedure 0x407780

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
	jne	.label_680
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_679
	test	cl, cl
	jne	.label_679
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_679
.label_680:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_679
	call	__errno_location
	mov	dword ptr [rax], 0
.label_679:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077e0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077f0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_681
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_682
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_682
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_683
.label_682:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_684
	mov	al, 1
	test	rdx, rdx
	je	.label_683
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_684:
	xor	eax, eax
.label_683:
	ret	
.label_681:
	push	rax
	mov	edi, OFFSET FLAT:label_685
	mov	esi, OFFSET FLAT:label_686
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_687
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407860

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_688
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_688:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_690
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_691
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_689
.label_691:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_689:
	mov	edx, dword ptr [rax]
.label_690:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407930

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_693
	cmp	byte ptr [rax], 0x43
	jne	.label_695
	cmp	byte ptr [rax + 1], 0
	je	.label_692
.label_695:
	mov	esi, OFFSET FLAT:label_694
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_693
.label_692:
	xor	ebx, ebx
.label_693:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407970
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407980
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407990
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079a0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_696
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_700
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_701:
	cmp	qword ptr [rcx], 0
	je	.label_697
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_699:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_699
	cmp	rdi, rax
	cmova	rax, rdi
.label_697:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_698
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_702:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_702
	cmp	rdi, rax
	cmova	rax, rdi
.label_698:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_701
.label_700:
	test	r8, r8
	je	.label_696
	cmp	qword ptr [rcx], 0
	je	.label_696
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_703:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_703
	cmp	rdx, rax
	cmova	rax, rdx
.label_696:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a60
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_709
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_712
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_713:
	cmp	qword ptr [rax], 0
	je	.label_705
	mov	rdx, rax
	nop	dword ptr [rax]
.label_711:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_711
	inc	r10
.label_705:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_714
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_707:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_707
	inc	r10
.label_714:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_713
	jmp	.label_710
.label_712:
	xor	r10d, r10d
.label_710:
	test	r8, r8
	je	.label_709
	cmp	qword ptr [rax], 0
	je	.label_709
	nop	dword ptr [rax]
.label_704:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_704
	inc	r10
.label_709:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_706
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_708
.label_706:
	xor	eax, eax
.label_708:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b20
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
	jae	.label_715
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_719
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_729:
	cmp	qword ptr [rax], 0
	je	.label_726
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_720:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_720
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_726:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_727
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_718:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_718
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_727:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_729
.label_719:
	test	r8, r8
	je	.label_715
	cmp	qword ptr [rax], 0
	je	.label_715
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_716:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_716
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_715:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_717
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_728
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_722]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_723]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_724]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_725
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_721
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
	#Procedure 0x407c90

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
	jae	.label_733
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_730
	add	rbx, rax
	je	.label_730
	cmp	rsi, r12
	je	.label_732
	xor	r15d, r15d
	nop	
.label_731:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_734
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_730
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_731
.label_732:
	mov	r15, r12
	jmp	.label_730
.label_734:
	mov	r15, qword ptr [rbx]
.label_730:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_733:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d10
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_735
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_738
	nop	word ptr cs:[rax + rax]
.label_737:
	add	rcx, 0x10
.label_738:
	cmp	rcx, rdx
	jae	.label_736
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_737
.label_735:
	ret	
.label_736:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d50
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
	jae	.label_741
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_742:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_739
	test	rdx, rdx
	jne	.label_742
	jmp	.label_740
.label_739:
	test	rdx, rdx
	je	.label_740
	mov	rax, qword ptr [rdx]
	jmp	.label_743
.label_740:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_744:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_743
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_744
.label_743:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_741:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407de0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_745
	xor	eax, eax
.label_747:
	cmp	qword ptr [r9], 0
	je	.label_746
	test	r9, r9
	je	.label_746
	mov	r8, r9
	nop	
.label_748:
	cmp	rax, rdx
	jae	.label_745
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_748
	mov	r8, qword ptr [rdi + 8]
.label_746:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_747
.label_745:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e30
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
	jae	.label_752
	xor	ebx, ebx
.label_751:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_753
	test	r13, r13
	je	.label_753
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_752
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_750:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_749
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_750
	jmp	.label_752
	nop	dword ptr [rax]
.label_749:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_753:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_751
.label_752:
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
	#Procedure 0x407ed0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_754
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_755:
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
	jne	.label_755
.label_754:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f10
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_756]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f30

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
	je	.label_757
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_770
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_760]
	jbe	.label_758
	movss	xmm1, dword ptr [rip + label_764]
	ucomiss	xmm1, xmm0
	jbe	.label_758
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_769]
	jbe	.label_758
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_758
	addss	xmm1, dword ptr [rip + label_760]
	ucomiss	xmm0, xmm1
	jbe	.label_758
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_765]
	ucomiss	xmm2, xmm0
	jb	.label_758
	ucomiss	xmm0, xmm1
	jbe	.label_758
.label_770:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_771
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_759
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_762
.label_759:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_762:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_767]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_768]
	jae	.label_758
.label_771:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_766
	nop	
.label_763:
	add	rbx, 2
.label_766:
	cmp	rbx, -1
	je	.label_758
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_761
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_772:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_761
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_772
.label_761:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_763
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_758
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_758
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_758
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
	jmp	.label_757
.label_758:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_757:
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
	#Procedure 0x408150

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
	#Procedure 0x408160

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408170
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_775
	nop	word ptr cs:[rax + rax]
.label_778:
	add	r14, 0x10
.label_775:
	cmp	r14, rax
	jae	.label_777
	cmp	qword ptr [r14], 0
	je	.label_778
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_779
	nop	word ptr cs:[rax + rax]
.label_774:
	test	cl, 1
	je	.label_773
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_773:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_774
.label_779:
	test	cl, cl
	je	.label_776
	mov	rdi, qword ptr [r14]
	call	rax
.label_776:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_778
.label_777:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408220

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_784
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_784
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_790
	nop	
.label_782:
	add	r15, 0x10
.label_790:
	cmp	r15, rax
	jae	.label_784
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_782
	test	r15, r15
	je	.label_782
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_785
.label_788:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_785:
	test	rbx, rbx
	jne	.label_788
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_782
.label_784:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_781
	nop	
.label_789:
	add	r15, 0x10
.label_781:
	cmp	r15, rax
	jae	.label_780
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_789
	nop	word ptr cs:[rax + rax]
.label_786:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_786
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_789
.label_780:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_783
.label_787:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_787
.label_783:
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
	#Procedure 0x4082f0

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
	jne	.label_809
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_792
	cvtsi2ss	xmm0, rsi
	jmp	.label_797
.label_792:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_797:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_767]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_768]
	jae	.label_791
.label_809:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_801
	nop	dword ptr [rax + rax]
.label_795:
	add	rbx, 2
.label_801:
	cmp	rbx, -1
	je	.label_791
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_794
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_805:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_794
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_805
.label_794:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_795
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_791
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_802
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_791
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
	je	.label_799
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_802
.label_799:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_793
	nop	
.label_803:
	add	r12, 0x10
.label_793:
	cmp	r12, r15
	jae	.label_800
	cmp	qword ptr [r12], 0
	je	.label_803
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_807
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_804:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_798
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_806
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_808
	nop	word ptr [rax + rax]
.label_806:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_808:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_804
.label_807:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_803
.label_800:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_796
	mov	rdi, qword ptr [rsp]
	call	free
.label_791:
	xor	ebp, ebp
.label_802:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_798:
	call	abort
.label_796:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408580

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
	mov	dword ptr [rsp + 4], edx
	mov	r12, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [r12]
	mov	al, 1
	cmp	r14, qword ptr [r12 + 8]
	jae	.label_810
	nop	word ptr cs:[rax + rax]
.label_814:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_820
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_823
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_818:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_815
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_817
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_822
	nop	dword ptr [rax]
.label_817:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_822:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_818
	mov	r13, qword ptr [r14]
.label_823:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_820
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_813
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_816
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_819
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_821
.label_816:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_811
.label_819:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_812
.label_821:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_811:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_820:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_814
	mov	al, 1
.label_810:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_812:
	xor	eax, eax
	jmp	.label_810
.label_815:
	call	abort
.label_813:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086f0

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
	je	.label_825
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_825
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_826
	cmp	rsi, r14
	je	.label_837
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_833
	mov	rax, qword ptr [r12]
.label_836:
	test	rax, rax
	jne	.label_842
	jmp	.label_826
.label_837:
	mov	rax, r14
.label_842:
	xor	ebp, ebp
	test	r15, r15
	je	.label_827
	mov	qword ptr [r15], rax
	jmp	.label_827
.label_833:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_826
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_832:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_824
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_830
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_832
.label_826:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_834
	cvtsi2ss	xmm1, rax
	jmp	.label_839
.label_834:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_839:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_844
	cvtsi2ss	xmm0, rcx
	jmp	.label_850
.label_844:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_850:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_829
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_843
	ucomiss	xmm2, dword ptr [rip + label_760]
	jbe	.label_831
	movss	xmm3, dword ptr [rip + label_764]
	ucomiss	xmm3, xmm2
	jbe	.label_831
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_769]
	jbe	.label_831
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_831
	addss	xmm3, dword ptr [rip + label_760]
	ucomiss	xmm2, xmm3
	jbe	.label_831
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_765]
	ucomiss	xmm5, xmm4
	jb	.label_831
	ucomiss	xmm4, xmm3
	ja	.label_849
.label_831:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_851]
	jmp	.label_849
.label_843:
	mov	eax, OFFSET FLAT:default_tuning
.label_849:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_829
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_854
	mulss	xmm0, xmm2
.label_854:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_768]
	jae	.label_827
	movss	xmm1, dword ptr [rip + label_767]
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
	je	.label_827
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_825
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_829
	cmp	rsi, r14
	mov	rax, r14
	je	.label_828
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_835
	mov	rax, qword ptr [r12]
.label_828:
	test	rax, rax
	jne	.label_838
.label_829:
	cmp	qword ptr [r12], 0
	je	.label_840
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_841
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_845
.label_840:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_847]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_848
.label_841:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_827
.label_845:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_848:
	mov	ebp, 1
.label_827:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_824:
	mov	rax, r14
	jmp	.label_836
.label_830:
	mov	rax, qword ptr [rbp]
	jmp	.label_836
.label_835:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_829
	lea	rbp, [rbx + rbp + 8]
.label_853:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_846
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_852
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_853
	jmp	.label_829
.label_846:
	mov	rax, r14
	jmp	.label_828
.label_852:
	mov	rax, qword ptr [rbp]
	jmp	.label_828
.label_825:
	call	abort
.label_838:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a30

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
	je	.label_855
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_855:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a60

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
	jae	.label_876
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_859
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_864
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_867
	mov	r14, qword ptr [r13]
.label_864:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_872
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_866
.label_867:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_859
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_862:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_856
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_861
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_862
	jmp	.label_859
.label_872:
	mov	qword ptr [r13], 0
	jmp	.label_866
.label_856:
	mov	rcx, rax
	jmp	.label_869
.label_861:
	mov	r14, qword ptr [rcx]
.label_869:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_866:
	xor	r12d, r12d
	test	r14, r14
	je	.label_859
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_865
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_870
	cvtsi2ss	xmm1, rax
	jmp	.label_858
.label_870:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_858:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_863
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_868
.label_863:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_868:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_865
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_873
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_760]
	jbe	.label_857
	movss	xmm4, dword ptr [rip + label_764]
	ucomiss	xmm4, xmm3
	jbe	.label_857
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_857
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_769]
	jbe	.label_857
	movss	xmm4, dword ptr [rip + label_760]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_857
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_765]
	ucomiss	xmm5, xmm3
	jb	.label_857
	ucomiss	xmm3, xmm4
	ja	.label_860
.label_857:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_860
.label_873:
	mov	eax, OFFSET FLAT:default_tuning
.label_860:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_865
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_874
	mulss	xmm0, dword ptr [rax + 8]
.label_874:
	movss	xmm1, dword ptr [rip + label_767]
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
	jne	.label_865
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_875
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_871
.label_875:
	mov	qword ptr [r15 + 0x48], 0
.label_865:
	mov	r12, r14
.label_859:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_876:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d00

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
	#Procedure 0x408d30

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d40

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
	jne	.label_877
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_877:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d80

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_878
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_879
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_879:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_878:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408db0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_76
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_880
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408de0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_881
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_881:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_882
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_884
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_883
.label_884:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_883:
	mov	ecx, dword ptr [rax]
.label_882:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ea0

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
	js	.label_886
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_885
	mov	dword ptr [r14], ebp
	jmp	.label_886
.label_885:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_886:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ef0

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
	ja	.label_887
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
	jmp	.label_888
.label_887:
	mov	eax, ebx
.label_888:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f40

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_889
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_891
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_889
.label_891:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_889
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_890
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_890:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_889:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fc0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_906
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_906:
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
	ja	.label_894
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_901
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_895
	test	esi, esi
	jne	.label_894
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_909
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_910
.label_894:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_892
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_895
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_898
.label_901:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_902
.label_895:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_903
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_904
.label_903:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_904:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_905:
	call	fcntl
.label_902:
	mov	ebp, eax
.label_897:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_898:
	cmp	eax, 6
	jne	.label_892
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_912
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_893
.label_892:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_896
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_900
.label_909:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_910:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_905
.label_912:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_893:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_908
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_911
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_911
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_897
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_899
.label_911:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_897
.label_896:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_900:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_902
.label_908:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_899:
	test	al, al
	je	.label_897
	test	ebp, ebp
	js	.label_897
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_907
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_897
.label_907:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_897
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409260

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_913
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_913
	test	byte ptr [rbx + 1], 1
	je	.label_913
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_913:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092a0

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
	jne	.label_914
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_914
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_915
.label_914:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_915:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_916
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_916:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409310

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
	#Procedure 0x409330

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
