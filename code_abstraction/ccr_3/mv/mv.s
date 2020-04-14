	.section	.text
	.align	16
	#Procedure 0x402890

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_12
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
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
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_15
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
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_23
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_23
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_23:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_12:
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
	.align	16
	#Procedure 0x402b00

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r12, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_40
	call	setlocale
	mov	edi, OFFSET FLAT:label_46
	mov	esi, OFFSET FLAT:label_47
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_46
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 8]
	call	cp_options_default
	mov	byte ptr [rsp + 0x1c], 0
	mov	dword ptr [rsp + 0x40], 1
	mov	dword ptr [rsp + 0xc], 2
	mov	byte ptr [rsp + 0x1d], 0
	mov	byte ptr [rsp + 0x1e], 0
	mov	byte ptr [rsp + 0x1f], 0
	mov	dword ptr [rsp + 0x10], 4
	mov	byte ptr [rsp + 0x20], 1
	mov	byte ptr [rsp + 0x21], 0
	mov	byte ptr [rsp + 0x24], 0
	mov	byte ptr [rsp + 0x25], 1
	mov	byte ptr [rsp + 0x2a], 1
	mov	byte ptr [rsp + 0x26], 1
	mov	byte ptr [rsp + 0x27], 1
	mov	byte ptr [rsp + 0x28], 0
	mov	byte ptr [rsp + 0x2d], 0
	mov	byte ptr [rsp + 0x29], 0
	mov	byte ptr [rsp + 0x31], 0
	mov	byte ptr [rsp + 0x2b], 1
	mov	byte ptr [rsp + 0x2c], 0
	mov	byte ptr [rsp + 0x2e], 0
	mov	byte ptr [rsp + 0x2f], 1
	mov	byte ptr [rsp + 0x30], 0
	mov	byte ptr [rsp + 0x32], 1
	mov	dword ptr [rsp + 0x14], 2
	mov	byte ptr [rsp + 0x34], 0
	mov	byte ptr [rsp + 0x33], 0
	mov	dword ptr [rsp + 0x18], 0
	xor	ebx, ebx
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rsp + 0x37]
	mov	byte ptr [rsp + 0x38], 0
	mov	byte ptr [rsp + 0x35], 0
	mov	byte ptr [rsp + 0x36], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x48], xmm0
	xor	r13d, r13d
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	ecx, ecx
	jmp	.label_31
.label_58:
	mov	cl, r14b
.label_31:
	mov	r14d, ecx
	mov	edx, OFFSET FLAT:label_48
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0x52
	jle	.label_68
	add	eax, -0x53
	cmp	eax, 0x2d
	ja	.label_53
	mov	cl, 1
	jmp	qword ptr [(rax * 8) + label_56]
.label_1952:
	mov	bl, 1
	mov	r13, qword ptr [rip + optarg]
	jmp	.label_58
.label_1953:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	cmovne	r15, rax
	mov	bl, 1
	mov	cl, r14b
	jmp	.label_31
.label_1954:
	mov	dword ptr [rsp + 0x10], 1
	mov	cl, r14b
	jmp	.label_31
.label_1955:
	mov	dword ptr [rsp + 0x10], 3
	mov	cl, r14b
	jmp	.label_31
.label_1956:
	mov	dword ptr [rsp + 0x10], 2
	mov	cl, r14b
	jmp	.label_31
.label_1957:
	cmp	qword ptr [rsp], 0
	jne	.label_67
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 1
	lea	rdx, [rsp + 0x58]
	call	__xstat
	test	eax, eax
	jne	.label_76
	mov	eax, dword ptr [rsp + 0x70]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x4000
	jne	.label_34
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp], rax
	mov	cl, r14b
	jmp	.label_31
.label_1958:
	mov	byte ptr [rsp + 0x35], 1
	mov	cl, r14b
	jmp	.label_31
.label_1959:
	mov	byte ptr [rsp + 0x36], 1
	mov	cl, r14b
	jmp	.label_31
.label_1960:
	mov	byte ptr [rip + remove_trailing_slashes],  1
	mov	cl, r14b
	jmp	.label_31
.label_68:
	cmp	eax, -1
	jne	.label_45
	movsxd	rax, dword ptr [rip + optind]
	movsxd	rbp, ebp
	sub	rbp, rax
	lea	r12, [r12 + rax*8]
	xor	eax, eax
	cmp	qword ptr [rsp], 0
	sete	al
	cmp	ebp, eax
	jle	.label_49
	test	r14b, r14b
	je	.label_54
	cmp	qword ptr [rsp], 0
	jne	.label_39
	xor	eax, eax
	mov	qword ptr [rsp], rax
	cmp	ebp, 3
	jl	.label_51
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_54:
	cmp	qword ptr [rsp], 0
	jne	.label_51
	cmp	ebp, 1
	jle	.label_69
	cmp	ebp, 2
	jne	.label_66
	mov	rsi, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_78
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_78:
	mov	dword ptr [rsp + 0x3c], ecx
	jmp	.label_84
.label_66:
	mov	ecx, dword ptr [rsp + 0x3c]
.label_84:
	test	ecx, ecx
	je	.label_32
	mov	r14, r13
	mov	r13, qword ptr [r12 + rbp*8 - 8]
	lea	rdx, [rsp + 0x58]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	je	.label_44
	call	__errno_location
	mov	eax, dword ptr [rax]
	test	eax, eax
	je	.label_44
	cmp	eax, 2
	jne	.label_37
	mov	r13, r14
	jmp	.label_32
.label_44:
	mov	eax, dword ptr [rsp + 0x70]
	and	eax, 0xf000
	cmp	eax, 0x4000
	mov	r13, r14
	jne	.label_32
	mov	dword ptr [rsp + 0x3c], 0xffffffff
	mov	rax, qword ptr [r12 + rbp*8 - 8]
	mov	qword ptr [rsp], rax
	dec	rbp
	jmp	.label_51
.label_32:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	cmp	ebp, 3
	jge	.label_57
.label_51:
	mov	eax, dword ptr [rsp + 0x10]
	cmp	eax, 2
	jne	.label_59
	mov	byte ptr [rsp + 0x35], 0
	test	bl, bl
	je	.label_59
	cmp	eax, 2
	je	.label_43
.label_59:
	xor	eax, eax
	test	bl, bl
	je	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r15
	call	xget_version
.label_63:
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	set_simple_backup_suffix
	call	hash_init
	cmp	qword ptr [rsp], 0
	je	.label_70
	cmp	ebp, 2
	jl	.label_75
	lea	rdi, [rsp + 8]
	call	dest_info_init
	jmp	.label_52
.label_70:
	mov	byte ptr [rsp + 0x39], 1
	mov	rbx, qword ptr [r12]
	mov	rbp, qword ptr [r12 + 8]
	cmp	byte ptr [rip + remove_trailing_slashes],  1
	jne	.label_77
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_77:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	mov	rsi, rbp
	call	do_move
	mov	r15d, eax
	jmp	.label_33
.label_75:
	mov	r15b, 1
	cmp	ebp, 1
	jne	.label_33
.label_52:
	mov	r13d, ebp
	mov	r15b, 1
	lea	r14, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_62:
	cmp	r13, 1
	sete	byte ptr [rsp + 0x39]
	mov	rbp, qword ptr [r12]
	cmp	byte ptr [rip + remove_trailing_slashes],  1
	jne	.label_41
	mov	rdi, rbp
	call	strip_trailing_slashes
.label_41:
	mov	rdi, rbp
	call	last_component
	xor	edx, edx
	mov	rdi, qword ptr [rsp]
	mov	rsi, rax
	call	file_name_concat
	mov	rbx, rax
	mov	rdi, rbx
	call	strip_trailing_slashes
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r14
	call	do_move
	mov	ebp, eax
	mov	rdi, rbx
	call	free
	and	r15b, bpl
	add	r12, 8
	dec	r13
	test	r13d, r13d
	jne	.label_62
.label_33:
	not	r15b
	and	r15b, 1
	movzx	eax, r15b
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_45:
	cmp	eax, 0xffffff7d
	je	.label_80
	cmp	eax, 0xffffff7e
	jne	.label_53
	xor	edi, edi
	call	usage
.label_80:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_26
	mov	edx, OFFSET FLAT:label_18
	mov	r8d, OFFSET FLAT:label_72
	mov	r9d, OFFSET FLAT:label_73
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_74
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_53:
	mov	edi, 1
	call	usage
.label_67:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	jmp	.label_36
.label_76:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_34:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + optarg]
.label_50:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_49:
	xor	edi, edi
	test	ebp, ebp
	jg	.label_64
	mov	esi, OFFSET FLAT:label_65
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
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
.label_36:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
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
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_69:
	mov	edi, OFFSET FLAT:label_81
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 0x1c9
	mov	ecx, OFFSET FLAT:label_83
	call	__assert_fail
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rsi, qword ptr [r12 + rax*8 - 8]
	jmp	.label_50
.label_37:
	xor	edi, edi
	mov	ebx, eax
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031d0

	.globl do_move
	.type do_move, @function
do_move:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r14, rdi
	lea	r8, [rsp + 0xf]
	lea	r9, [rsp + 0xe]
	xor	edx, edx
	mov	rcx, r15
	call	copy
	mov	bl, al
	test	bl, bl
	je	.label_90
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_92
	test	r14, r14
	je	.label_90
	mov	al, byte ptr [rsp + 0xe]
	test	al, al
	jne	.label_90
	mov	byte ptr [rsp + 0x10], 0
	mov	byte ptr [rsp + 0x1a], 1
	mov	byte ptr [rsp + 0x19], 1
	mov	byte ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0x14], 5
	mov	word ptr [rsp + 0x29], 0
	mov	byte ptr [rsp + 0x2b], 1
	mov	edi, OFFSET FLAT:rm_option_init.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rsp + 0x20], rax
	test	rax, rax
	je	.label_89
	mov	byte ptr [rsp + 0x28], 0
	mov	al, byte ptr [r15 + 0x2e]
	mov	byte ptr [rsp + 0x2a], al
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x38], 0
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jb	.label_90
	cmp	eax, 4
	jne	.label_86
.label_92:
	xor	ebx, ebx
.label_90:
	mov	eax, ebx
	add	rsp, 0x48
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_89:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_85
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_86:
	mov	edi, OFFSET FLAT:label_87
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 0xef
	mov	ecx, OFFSET FLAT:label_88
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x4032f0

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
	je	.label_115
	mov	qword ptr [rsp + 0x10], rsi
	cmp	byte ptr [rsi + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r12, rax
	mov	r13d, 2
	jmp	.label_109
	nop	dword ptr [rax + rax]
.label_118:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_109:
	mov	dword ptr [rsp + 8], r13d
.label_133:
	mov	rdi, r12
	call	rpl_fts_read
	mov	r14, rax
	test	r14, r14
	je	.label_123
	movzx	eax, word ptr [r14 + 0x70]
	lea	ecx, [rax - 1]
	movzx	ecx, cx
	cmp	ecx, 0xc
	ja	.label_125
	jmp	qword ptr [(rcx * 8) + label_127]
.label_1944:
	mov	r13, qword ptr [rsp + 0x10]
	cmp	byte ptr [r13 + 9], 0
	jne	.label_129
	mov	ebp, 0x15
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_131
	mov	edi, dword ptr [r12 + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_135
.label_129:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_102
	mov	rbp, qword ptr [r14 + 0x30]
	mov	rdi, rbp
	call	last_component
	cmp	byte ptr [rax], 0x2e
	jne	.label_144
	xor	ecx, ecx
	cmp	byte ptr [rax + 1], 0x2e
	sete	cl
	mov	al, byte ptr [rax + rcx + 1]
	cmp	al, 0x2f
	je	.label_145
	test	al, al
	je	.label_145
.label_144:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_93
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_93
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	je	.label_116
.label_93:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_102
	mov	esi, OFFSET FLAT:label_104
	xor	edx, edx
	mov	rdi, rbp
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_110
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x18]
	call	__lxstat
	test	eax, eax
	jne	.label_148
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r12 + 0x18]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_122
.label_102:
	mov	edi, dword ptr [r12 + 0x2c]
	mov	edx, 1
	mov	r8d, 2
	mov	rsi, r14
	mov	rcx, r13
	lea	r9, [rsp + 0x18]
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_130
	cmp	dword ptr [rsp + 0x18], 4
	jne	.label_130
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
.label_130:
	cmp	r15d, 2
	je	.label_105
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_94:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_106:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_149
	cmp	qword ptr [rax + 0x20], 0
	je	.label_94
.label_149:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
	jmp	.label_105
.label_1946:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 8], 0
	je	.label_107
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_107
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [r12 + 0x18]
	jne	.label_112
	nop	word ptr cs:[rax + rax]
.label_107:
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
	jne	.label_105
	xor	ecx, ecx
	cmp	ebx, 6
	sete	cl
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	excise
	mov	r15d, eax
.label_105:
	lea	eax, [r15 - 2]
	cmp	eax, 2
	jae	.label_132
	cmp	dword ptr [rsp + 8], 2
	jne	.label_133
	mov	r13d, 3
	cmp	r15d, 3
	jne	.label_133
	jmp	.label_109
	nop	word ptr [rax + rax]
.label_132:
	mov	r13d, 4
	cmp	r15d, 4
	je	.label_109
	jmp	.label_114
.label_1945:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
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
	jmp	.label_96
.label_1947:
	mov	r15d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
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
.label_96:
	mov	rdx, rbp
	call	error
.label_103:
	mov	r13d, 4
	jmp	.label_118
.label_112:
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_121
	nop	
.label_134:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_121:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_124
	cmp	qword ptr [rax + 0x20], 0
	je	.label_134
.label_124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
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
	jmp	.label_109
.label_135:
	cmp	byte ptr [r13 + 0xa], 0
	mov	ebp, 0x15
	mov	eax, 0x27
	cmovne	ebp, eax
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	jmp	.label_150
	nop	word ptr cs:[rax + rax]
.label_108:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_150:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_103
	cmp	qword ptr [rax + 0x20], 0
	je	.label_108
	jmp	.label_103
.label_148:
	mov	rbp, rbx
.label_110:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
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
	jmp	.label_103
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_126
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
	mov	esi, OFFSET FLAT:label_136
	jmp	.label_137
.label_145:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_146
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_104
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
	jmp	.label_118
.label_116:
	mov	rax, qword ptr [r14 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_117
	cmp	byte ptr [rax + 1], 0
	je	.label_120
.label_117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_101
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
	mov	edx, OFFSET FLAT:label_85
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	call	error
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
.label_137:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_103
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
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
	jmp	.label_95
.label_123:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_97
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 8], 4
.label_97:
	mov	rdi, r12
	call	rpl_fts_close
	test	eax, eax
	mov	eax, dword ptr [rsp + 8]
	je	.label_115
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	eax, 4
.label_115:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
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
	mov	r9d, OFFSET FLAT:label_111
	xor	eax, eax
	mov	rdx, r15
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
.label_114:
	mov	edi, OFFSET FLAT:label_141
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_143
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

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
	js	.label_151
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_155
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_152:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_157
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_153
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_152
	test	cl, cl
	je	.label_152
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	jne	.label_154
	jmp	.label_156
.label_155:
	mov	edi, ebp
	call	close
	jmp	.label_154
.label_157:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_156:
	test	r14d, r14d
	sete	bl
	jmp	.label_151
.label_153:
	mov	rdi, rbx
	call	closedir
.label_154:
	xor	ebx, ebx
.label_151:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ab0

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
	je	.label_188
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
	jmp	.label_160
.label_188:
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	ebp, ebp
.label_160:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_166
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 5
	je	.label_164
	mov	rdx, qword ptr [r14]
	mov	rax, rdx
	shr	rax, 0x20
	xor	r15d, r15d
	test	dl, dl
	je	.label_172
	xor	ecx, ecx
	jmp	.label_175
.label_172:
	cmp	ecx, 3
	je	.label_176
	cmp	byte ptr [r14 + 0x19], 0
	mov	ecx, 0
	je	.label_175
.label_176:
	call	can_write_any_file
	test	al, al
	jne	.label_179
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_181
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_187
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_189
.label_187:
	mov	rax, qword ptr [rsp + 0x58]
.label_181:
	test	rax, rax
	js	.label_190
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0xa000
	je	.label_179
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	faccessat
	test	eax, eax
	je	.label_179
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	r15d, 0xffffffff
	cmove	r15d, ecx
	jmp	.label_159
.label_179:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [r14 + 4]
.label_175:
	cmp	eax, 3
	je	.label_161
	jmp	.label_164
.label_190:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_189:
	mov	dword ptr [rax], r15d
	mov	r15d, 0xffffffff
.label_159:
	mov	ecx, dword ptr [rax]
.label_161:
	test	r15d, r15d
	js	.label_173
	xor	r12b, 1
	je	.label_173
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_174
	mov	r12, rcx
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_180
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rcx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_178
.label_180:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, r12
.label_174:
	test	rax, rax
	js	.label_193
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_186
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_173:
	mov	r12d, r13d
.label_186:
	test	r15d, r15d
	js	.label_158
	mov	eax, r12d
	and	al, 0xf
	cmp	al, 4
	je	.label_191
	cmp	al, 0xa
	jne	.label_192
	cmp	dword ptr [r14 + 4], 3
	je	.label_192
	jmp	.label_164
.label_191:
	cmp	byte ptr [r14 + 9], 0
	jne	.label_192
	cmp	byte ptr [r14 + 0xa], 0
	mov	ecx, 0x15
	je	.label_158
	mov	eax, ebp
	xor	al, 1
	jne	.label_158
.label_192:
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
	je	.label_165
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_171
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_177
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_162
.label_165:
	mov	rbp, qword ptr [rip + stderr]
	xor	edi, edi
	test	r15d, r15d
	je	.label_183
	mov	esi, OFFSET FLAT:label_184
	jmp	.label_185
.label_193:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	rcx, rbx
.label_178:
	mov	dword ptr [rax], ecx
.label_158:
	mov	ebx, 4
	mov	edi, 4
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	jmp	.label_166
.label_183:
	mov	esi, OFFSET FLAT:label_194
.label_185:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__fprintf_chk
	jmp	.label_163
.label_177:
	mov	rax, qword ptr [rsp + 0x58]
.label_171:
	test	rax, rax
	js	.label_167
	mov	rax, qword ptr [rip + stderr]
	test	r15d, r15d
	je	.label_168
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_169
	jmp	.label_170
.label_167:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_162:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
	jmp	.label_166
.label_168:
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_182
.label_170:
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
.label_163:
	call	yesno
	test	al, al
	je	.label_166
.label_164:
	mov	ebx, 2
.label_166:
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
	#Procedure 0x403ef0

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
	je	.label_209
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_206
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_200
	cmp	dword ptr [r12], 2
	je	.label_202
.label_200:
	mov	dword ptr [r12], 0x1e
.label_202:
	mov	ebp, dword ptr [r12]
.label_206:
	cmp	byte ptr [r13], 0
	je	.label_205
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_207
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_199
.label_207:
	cmp	ebp, 0x54
	je	.label_199
.label_205:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_203
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_203
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_203
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_208
	cmp	eax, 1
	jne	.label_203
.label_208:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_203:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
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
.label_204:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_197:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_199
	cmp	qword ptr [rax + 0x20], 0
	je	.label_204
	jmp	.label_199
.label_209:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_199
	xor	edi, edi
	test	bpl, bpl
	je	.label_201
	mov	esi, OFFSET FLAT:label_195
	jmp	.label_196
.label_201:
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
.label_199:
	mov	eax, r14d
	add	rsp, 0x98
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
	#Procedure 0x4040a0

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	r15
	push	r14
	push	rbx
	mov	rbx, r8
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_210
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_213
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_214
.label_213:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r15
	call	error
	cmp	byte ptr [rbx + 0x26], 0
	sete	bl
	jmp	.label_212
.label_210:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_212
	xor	cl, 1
	jne	.label_212
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	jmp	.label_212
.label_214:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	bl, 1
.label_212:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404140
	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_215
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_218
.label_215:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_216
.label_218:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_216:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041e0
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404210

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [rip + top_level_src_name],  rdi
	mov	qword ptr [rip + top_level_dst_name],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404260

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x3a8
	mov	r14, r9
	mov	qword ptr [rbp - 0x80], r8
	mov	qword ptr [rbp - 0xb8], rcx
	mov	ecx, edx
	mov	r12, rsi
	mov	rbx, rdi
	mov	r13, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 0
	mov	r15d, dword ptr [r14 + 0x34]
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_354
	test	r15d, r15d
	jns	.label_252
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, rbx
	mov	rcx, r12
	call	renameatu
	xor	r15d, r15d
	test	eax, eax
	je	.label_252
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_252:
	test	r15d, r15d
	sete	cl
	test	r13, r13
	je	.label_354
	mov	byte ptr [r13], cl
.label_354:
	mov	qword ptr [rbp - 0x48], rbx
	mov	qword ptr [rbp - 0x30], r12
	test	r15d, r15d
	je	.label_380
	cmp	r15d, 0x11
	jne	.label_383
	cmp	dword ptr [r14 + 8], 2
	jne	.label_383
	jmp	.label_384
.label_380:
	cmp	byte ptr [r14 + 0x31], 0
	jne	.label_384
.label_383:
	mov	r13, rcx
	test	r15d, r15d
	mov	rbx, qword ptr [rbp - 0x48]
	cmove	rbx, qword ptr [rbp - 0x30]
	cmp	dword ptr [r14 + 4], 2
	jne	.label_387
	lea	rdx, [rbp - 0x188]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	jmp	.label_397
.label_387:
	lea	rdx, [rbp - 0x188]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
.label_397:
	test	eax, eax
	je	.label_399
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
.label_369:
	call	error
.label_228:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_399:
	mov	r12d, dword ptr [rbp - 0x170]
	mov	eax, r12d
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_410
	cmp	byte ptr [r14 + 0x2a], 0
	mov	rcx, r13
	jne	.label_384
	cmp	byte ptr [r14 + 0x19], 0
	je	.label_417
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_543
	jmp	.label_544
.label_410:
	mov	rcx, r13
.label_384:
	mov	bl, byte ptr [rbp + 0x10]
	test	bl, bl
	je	.label_423
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_423
	mov	eax, r12d
	and	eax, 0xf000
	mov	r13, rcx
	cmp	eax, 0x4000
	je	.label_426
	cmp	dword ptr [r14], 0
	jne	.label_426
	lea	rdx, [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x48]
	call	seen_file
	test	al, al
	je	.label_437
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r14b, 1
	jmp	.label_228
.label_437:
	mov	rdi, qword ptr [r14 + 0x48]
.label_426:
	lea	rdx, [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x48]
	call	record_file
	mov	rcx, r13
.label_423:
	mov	eax, dword ptr [r14 + 4]
	mov	dl, 1
	cmp	eax, 4
	je	.label_449
	cmp	eax, 3
	sete	dl
	and	dl, bl
.label_449:
	mov	byte ptr [rbp - 0x98], dl
	xor	r13d, r13d
	xor	ebx, ebx
	test	cl, cl
	mov	dword ptr [rbp - 0x3c], r12d
	jne	.label_453
	cmp	r15d, 0x11
	jne	.label_460
	cmp	dword ptr [r14 + 8], 2
	jne	.label_460
	xor	ebx, ebx
	jmp	.label_462
.label_460:
	mov	eax, r12d
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_464
	mov	bl, 1
	cmp	byte ptr [r14 + 0x14], 0
	je	.label_445
	cmp	eax, 0xa000
	je	.label_445
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_445
.label_464:
	mov	bl, 1
	cmp	byte ptr [r14 + 0x18], 0
	jne	.label_445
	cmp	byte ptr [r14 + 0x2c], 0
	jne	.label_445
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_445
	cmp	dword ptr [r14], 0
	jne	.label_445
	cmp	byte ptr [r14 + 0x15], 0
	setne	bl
.label_445:
	movzx	r8d, bl
	shl	r8d, 8
	lea	rcx, [rbp - 0x2b0]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, qword ptr [rbp - 0x30]
	call	__fxstatat
	test	eax, eax
	je	.label_462
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	cl, 1
	cmp	ebx, 2
	je	.label_479
	cmp	ebx, 0x28
	jne	.label_482
	cmp	byte ptr [r14 + 0x16], 0
	je	.label_482
	xor	ecx, ecx
.label_479:
	xor	ebx, ebx
	cmp	r15d, 0x11
	mov	r13d, 0
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_453
	jmp	.label_488
.label_462:
	xor	ecx, ecx
.label_488:
	mov	qword ptr [rbp - 0x50], rcx
	cmp	dword ptr [r14 + 8], 2
	mov	qword ptr [rbp - 0x78], rbx
	jne	.label_489
	xor	r15d, r15d
	jmp	.label_251
.label_489:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x2a8]
	jne	.label_496
	mov	r13, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x2b0]
	mov	r12, qword ptr [rbp - 0x30]
	jne	.label_499
	mov	r15b, 1
	mov	rbx, r14
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_220
	jmp	.label_507
.label_482:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
.label_526:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	jmp	.label_369
.label_496:
	mov	r13, qword ptr [rbp - 0x48]
	mov	rbx, r14
	xor	r15d, r15d
	mov	r12, qword ptr [rbp - 0x30]
	jmp	.label_507
.label_499:
	mov	rbx, r14
	xor	r15d, r15d
.label_507:
	cmp	dword ptr [rbx + 4], 2
	jne	.label_519
	mov	eax, dword ptr [rbp - 0x170]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	rsi, [rbp - 0x188]
	lea	r14, [rbp - 0x2b0]
	cmp	ecx, 0xa000
	jne	.label_392
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x298]
	cmp	ecx, 0xa000
	jne	.label_392
	mov	rdi, r13
	mov	rsi, r12
	call	same_name
	test	al, al
	jne	.label_246
	mov	r14, rbx
	cmp	dword ptr [r14], 0
	jne	.label_271
	test	r15b, r15b
	je	.label_593
	cmp	byte ptr [r14 + 0x18], 0
	mov	r15b, 1
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_246
	jmp	.label_251
.label_519:
	test	r15b, r15b
	je	.label_271
	lea	r14, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, r12
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	jne	.label_271
	lea	r15, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, r13
	mov	rdx, r15
	call	__lxstat
	test	eax, eax
	jne	.label_271
	mov	rcx, r15
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x218]
	jne	.label_545
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x220]
	sete	r15b
	jmp	.label_547
.label_417:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_549
.label_544:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	r14d, r14d
.label_559:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_552
.label_545:
	xor	r15d, r15d
.label_547:
	mov	rsi, rcx
	mov	eax, dword ptr [rbp - 0x3b8]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_392
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x208]
	cmp	ecx, 0xa000
	jne	.label_392
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_271
.label_392:
	mov	rdx, rbx
	mov	rcx, qword ptr [rdx]
	test	ecx, ecx
	je	.label_566
	mov	rbx, rdx
	test	r15b, r15b
	je	.label_436
	mov	rdi, r13
	mov	rsi, r12
	call	same_name
	test	al, al
	mov	r14, rbx
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_246
	xor	r15d, r15d
	jmp	.label_251
.label_566:
	mov	rbx, rdx
	cmp	byte ptr [rdx + 0x18], 0
	jne	.label_579
	cmp	byte ptr [rbx + 0x15], 0
	je	.label_491
.label_579:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x18]
	cmp	ecx, 0xa000
	je	.label_271
	test	r15b, r15b
	je	.label_491
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_491
	mov	r15, rsi
	mov	rdi, r13
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_586
	mov	rsi, r15
	mov	eax, dword ptr [rsi + 0x18]
.label_491:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_588
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	je	.label_588
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [r14 + 8]
	jne	.label_271
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [r14]
	jne	.label_271
	mov	r15b, 1
	cmp	byte ptr [rbx + 0x17], 0
	jne	.label_220
.label_588:
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_224
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x170]
	cmp	eax, 0xa000
	jne	.label_224
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_224
	mov	rdi, r13
	mov	r15, rsi
	call	canonicalize_file_name
	mov	rsi, r15
	mov	r15, rax
	test	r15, r15
	je	.label_224
	mov	rdi, r15
	mov	rsi, r12
	call	same_name
	mov	r14d, eax
	mov	rdi, r15
	call	free
	test	r14b, r14b
	mov	r14, rbx
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_246
	xor	r15d, r15d
	jmp	.label_251
.label_436:
	and	eax, 0xf000
	xor	r15d, r15d
	cmp	eax, 0xa000
	jne	.label_220
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_220
	mov	al, byte ptr [rbx + 0x18]
	test	al, al
	jne	.label_220
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_246
	jmp	.label_271
.label_224:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_273
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	je	.label_271
.label_273:
	cmp	dword ptr [rbx + 4], 2
	jne	.label_246
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_375
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, r13
	call	__xstat
	test	eax, eax
	jne	.label_271
	jmp	.label_289
.label_593:
	xor	r15d, r15d
	jmp	.label_555
.label_586:
	mov	r14, rbx
	cmp	byte ptr [r14 + 0x18], 0
	mov	r12d, dword ptr [rbp - 0x3c]
	jne	.label_246
	xor	r15d, r15d
	jmp	.label_251
.label_375:
	lea	rdi, [rbp - 0x3d0]
	mov	edx, 0x90
	call	memcpy
.label_289:
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_306
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, r12
	call	__xstat
	test	eax, eax
	jne	.label_271
	jmp	.label_318
.label_306:
	lea	rdi, [rbp - 0x220]
	mov	edx, 0x90
	mov	rsi, r14
	call	memcpy
.label_318:
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x218]
	jne	.label_271
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x220]
	jne	.label_271
	cmp	byte ptr [rbx + 0x17], 0
	je	.label_246
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	setne	r15b
	jmp	.label_220
.label_271:
	xor	r15d, r15d
.label_220:
	mov	r14, rbx
.label_555:
	mov	r12d, dword ptr [rbp - 0x3c]
.label_251:
	mov	ebx, r12d
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	mov	r12, qword ptr [rbp - 0x30]
	mov	r13, qword ptr [rbp + 0x28]
	je	.label_334
	mov	al, byte ptr [r14 + 0x2d]
	test	al, al
	je	.label_334
	cmp	byte ptr [r14 + 0x1f], 0
	je	.label_340
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_342
	mov	rax, qword ptr [rbp - 0x2b0]
	cmp	rax, qword ptr [rbp - 0x188]
	sete	al
	jmp	.label_344
.label_340:
	xor	eax, eax
	jmp	.label_346
.label_342:
	xor	eax, eax
.label_344:
	xor	al, 1
.label_346:
	movzx	ecx, al
	lea	rsi, [rbp - 0x2b0]
	lea	rdx, [rbp - 0x188]
	mov	rdi, r12
	call	utimecmp
	test	eax, eax
	js	.label_334
	mov	qword ptr [rbp - 0x38], r14
	test	r13, r13
	je	.label_525
	mov	byte ptr [r13], 1
.label_525:
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdi, r12
	call	remember_copied
	mov	rsi, rax
	mov	r14b, 1
	test	rsi, rsi
	je	.label_228
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x98]
	mov	edx, 1
	mov	rdi, rsi
	mov	rbx, rsi
	mov	rsi, r12
	call	create_hard_link
	mov	rdx, rbx
	xor	r13d, r13d
	test	al, al
	jne	.label_228
	jmp	.label_260
.label_334:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_373
	mov	r13, r14
	mov	eax, dword ptr [r14 + 8]
	cmp	eax, 2
	je	.label_376
	cmp	eax, 3
	je	.label_284
	cmp	eax, 4
	jne	.label_305
	cmp	byte ptr [r13 + 0x2f], 0
	je	.label_305
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0xa000
	je	.label_305
	call	can_write_any_file
	test	al, al
	jne	.label_305
	mov	esi, 2
	mov	rdi, r12
	call	euidaccess
	test	eax, eax
	je	.label_305
.label_284:
	lea	rdx, [rbp - 0x2b0]
	mov	rdi, r13
	mov	rsi, r12
	call	overwrite_ok
	test	al, al
	jne	.label_305
.label_376:
	mov	r14b, 1
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_228
	mov	byte ptr [rax], 1
	jmp	.label_228
.label_373:
	mov	r13, r14
	cmp	ebx, 0x4000
	je	.label_305
	mov	eax, dword ptr [r13 + 8]
	mov	r14b, 1
	cmp	eax, 2
	je	.label_228
	cmp	eax, 3
	jne	.label_305
	lea	rdx, [rbp - 0x2b0]
	mov	rdi, r13
	mov	rsi, r12
	call	overwrite_ok
	test	r15b, r15b
	jne	.label_228
	test	al, al
	jne	.label_407
	jmp	.label_228
.label_305:
	mov	r14b, 1
	test	r15b, r15b
	jne	.label_228
.label_407:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	mov	r14, r13
	mov	r13, qword ptr [rbp - 0x48]
	mov	r12, qword ptr [rbp - 0x30]
	je	.label_413
	cmp	ebx, 0x4000
	jne	.label_418
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_366
	cmp	dword ptr [r14], 0
	je	.label_366
.label_418:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_413
	cmp	dword ptr [r14], 3
	je	.label_413
	mov	rdi, qword ptr [r14 + 0x40]
	lea	rdx, [rbp - 0x2b0]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_413
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_431
	jmp	.label_432
.label_413:
	cmp	ebx, 0x4000
	je	.label_253
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	jne	.label_253
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_292
	cmp	dword ptr [r14], 0
	je	.label_292
.label_253:
	mov	bl, byte ptr [r14 + 0x18]
	test	bl, bl
	je	.label_443
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x170]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_443
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	je	.label_443
	cmp	dword ptr [r14], 0
	je	.label_358
.label_443:
	mov	r13, r14
	mov	r14, qword ptr [r14]
	test	r14d, r14d
	je	.label_458
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	r15, rax
	cmp	byte ptr [r15], 0x2e
	jne	.label_456
	xor	eax, eax
	cmp	byte ptr [r15 + 1], 0x2e
	sete	al
	mov	al, byte ptr [r15 + rax + 1]
	test	al, al
	je	.label_458
	cmp	al, 0x2f
	je	.label_458
.label_456:
	test	bl, bl
	jne	.label_463
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	jne	.label_463
.label_458:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	mov	r15d, 0x11
	cmp	eax, 0x4000
	jne	.label_467
	mov	r14, r13
	mov	r12d, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x50]
	xor	r13d, r13d
	jmp	.label_264
.label_246:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_473
	jmp	.label_474
.label_463:
	cmp	r14d, 3
	je	.label_329
	mov	rdi, r15
	call	strlen
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, r12
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	mov	qword ptr [rbp - 0x68], rdi
	call	strlen
	mov	qword ptr [rbp - 0x60], rax
	lea	rax, [rax + r14]
	cmp	qword ptr [rbp - 0x50], rax
	jne	.label_329
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_329
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x68]
	call	strcmp
	test	eax, eax
	jne	.label_329
	mov	rdi, r12
	call	strlen
	mov	r14, rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rax + r14 + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rcx, -1
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r14
	call	__mempcpy_chk
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdi, rax
	call	strcpy
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	mov	r14d, eax
	mov	rdi, rbx
	call	free
	test	r14d, r14d
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x218]
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x220]
	jne	.label_329
	mov	rbx, r12
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_520
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_522
	jmp	.label_523
.label_329:
	mov	r14, r13
	mov	edx, dword ptr [r14]
	mov	edi, 0xffffff9c
	mov	rsi, r12
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_527
	mov	rdi, rbx
	call	strlen
	mov	r13, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	r13, rax
	mov	rsp, r13
	mov	rdi, r13
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	r15d, 0x11
	jmp	.label_534
.label_467:
	test	bl, bl
	mov	rcx, qword ptr [rbp - 0x50]
	jne	.label_538
	cmp	byte ptr [r13 + 0x15], 0
	jne	.label_536
	cmp	byte ptr [r13 + 0x22], 0
	je	.label_537
	cmp	qword ptr [rbp - 0x2a0], 1
	ja	.label_536
.label_537:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_538
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x170]
	cmp	eax, 0x8000
	jne	.label_536
.label_538:
	mov	r14, r13
.label_578:
	mov	r12d, dword ptr [rbp - 0x3c]
	xor	r13d, r13d
	jmp	.label_264
.label_366:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_548
.label_432:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r13
	jmp	.label_420
.label_292:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_559
.label_527:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	cmp	ebx, 2
	jne	.label_564
	mov	r15d, 0x11
	jmp	.label_534
.label_536:
	mov	rdi, r12
	call	unlink
	test	eax, eax
	je	.label_571
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 2
	jne	.label_574
.label_571:
	mov	cl, 1
	mov	r14, r13
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_578
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_534:
	mov	cl, 1
	mov	r12d, dword ptr [rbp - 0x3c]
.label_264:
	mov	rbx, qword ptr [rbp - 0x78]
.label_453:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_587
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_587
	cmp	byte ptr [r14 + 0x18], 0
	jne	.label_587
	cmp	dword ptr [r14], 0
	jne	.label_587
	test	bl, bl
	jne	.label_581
	lea	rbx, [rbp - 0x220]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	r12, rcx
	call	__lxstat
	mov	rcx, r12
	test	eax, eax
	jne	.label_223
	jmp	.label_225
.label_581:
	lea	rbx, [rbp - 0x2b0]
.label_225:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_223
	mov	rdi, qword ptr [r14 + 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	rbx, rcx
	call	seen_file
	mov	rcx, rbx
	test	al, al
	je	.label_223
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_237
.label_474:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
.label_420:
	call	quotearg_n_style
.label_590:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_228
.label_223:
	mov	r12d, dword ptr [rbp - 0x3c]
.label_587:
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_261
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	je	.label_261
	mov	al, byte ptr [r14 + 0x18]
	test	al, al
	jne	.label_261
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r13
	mov	rbx, rcx
	call	emit_verbose
	mov	rcx, rbx
.label_261:
	xor	esi, esi
	test	r15d, r15d
	je	.label_304
	mov	ebx, dword ptr [rbp - 0x3c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_274
	mov	al, byte ptr [r14 + 0x2a]
	test	al, al
	je	.label_274
	mov	r12, r13
	mov	r13, rcx
	mov	rax, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rbp - 0x180]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_282
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rax
.label_320:
	call	remember_copied
	jmp	.label_290
.label_274:
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_293
	cmp	qword ptr [rbp - 0x178], 1
	jne	.label_293
	mov	r12, r13
	mov	r13, rcx
	mov	rsi, qword ptr [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x180]
	jmp	.label_297
.label_293:
	xor	esi, esi
	cmp	byte ptr [r14 + 0x22], 0
	je	.label_304
	xor	esi, esi
	cmp	byte ptr [r14 + 0x17], 0
	jne	.label_304
	cmp	qword ptr [rbp - 0x178], 1
	ja	.label_310
	mov	edx, dword ptr [r14 + 4]
	cmp	edx, 3
	sete	al
	xor	esi, esi
	cmp	edx, 4
	je	.label_310
	and	al, byte ptr [rbp + 0x10]
	je	.label_304
.label_310:
	mov	r12, r13
	mov	r13, rcx
	mov	rdx, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x30]
	jmp	.label_320
.label_282:
	mov	rdi, rcx
	mov	rsi, rax
.label_297:
	call	src_to_dest_lookup
.label_290:
	xor	esi, esi
	test	rax, rax
	mov	rcx, r13
	mov	r13, r12
	je	.label_304
	cmp	ebx, 0x4000
	jne	.label_331
	mov	rbx, rcx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	r12, rax
	call	same_name
	test	al, al
	je	.label_335
	mov	qword ptr [rbp - 0x38], r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rip + top_level_src_name]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [rip + top_level_dst_name]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	rdx, r12
	jmp	.label_260
.label_331:
	mov	qword ptr [rbp - 0x38], r14
	movzx	ecx, byte ptr [r14 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x98]
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbx, rax
	call	create_hard_link
	mov	r14b, 1
	test	al, al
	mov	rdx, rbx
	jne	.label_228
	jmp	.label_260
.label_335:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], r12
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_368
	mov	r15, r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [rip + top_level_src_name]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r14b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_228
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_228
	mov	byte ptr [rcx], 1
	jmp	.label_228
.label_368:
	mov	ecx, dword ptr [r14 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_388
	and	al, byte ptr [rbp + 0x10]
	mov	rcx, rbx
	jne	.label_390
	mov	qword ptr [rbp - 0x38], r14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rbx, qword ptr [rbp - 0x50]
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	error
	mov	rdx, rbx
	jmp	.label_260
.label_388:
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rcx, rbx
	jmp	.label_304
.label_390:
	mov	rsi, qword ptr [rbp - 0x50]
.label_304:
	cmp	byte ptr [r14 + 0x18], 0
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_406
	cmp	r15d, 0x11
	jne	.label_411
	mov	r12, r13
	mov	r13, rsi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	rename
	test	eax, eax
	je	.label_415
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rsi, r13
	mov	r13, r12
	mov	edi, dword ptr [rbp - 0x3c]
.label_411:
	cmp	r15d, 0x16
	je	.label_419
	cmp	r15d, 0x12
	je	.label_422
	mov	r12, r13
	test	r15d, r15d
	jne	.label_424
.label_415:
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_427
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_428
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r12
	call	emit_verbose
.label_427:
	cmp	byte ptr [r14 + 0x21], 0
	mov	r15b, byte ptr [rbp + 0x10]
	mov	r12, qword ptr [rbp + 0x28]
	je	.label_440
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_298
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_444
.label_298:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r13
	call	error
	jmp	.label_440
.label_419:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_459
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx, qword ptr [rip + top_level_src_name]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx, qword ptr [rip + top_level_dst_name]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r14b, 1
	jmp	.label_228
.label_422:
	mov	r12, rbx
	mov	qword ptr [rbp - 0x78], rsi
	mov	ebx, edi
	and	ebx, 0xf000
	mov	rdi, r12
	cmp	ebx, 0x4000
	jne	.label_476
	call	rmdir
	jmp	.label_477
.label_424:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_478
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rdx, rbx
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	jmp	.label_490
.label_476:
	call	unlink
.label_477:
	test	eax, eax
	je	.label_498
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_500
.label_498:
	cmp	ebx, 0x4000
	mov	cl, 1
	je	.label_501
	mov	al, byte ptr [r14 + 0x2e]
	test	al, al
	mov	edi, dword ptr [rbp - 0x3c]
	mov	rbx, r12
	je	.label_503
	mov	r15d, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_508
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	mov	rdx, r13
	call	emit_verbose
	mov	edi, r15d
	mov	cl, 1
	jmp	.label_503
.label_500:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_518
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rdx, r12
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	mov	rcx, r12
.label_490:
	call	error
	mov	rsi, qword ptr [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x180]
	call	forget_created
	jmp	.label_228
.label_444:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_440:
	mov	rax, r14
	test	r12, r12
	je	.label_531
	mov	byte ptr [r12], 1
.label_531:
	mov	r14b, 1
	test	r15b, r15b
	je	.label_228
	cmp	byte ptr [rax + 0x31], 0
	jne	.label_228
	mov	rdi, qword ptr [rax + 0x40]
	lea	rdx, [rbp - 0x188]
	mov	rsi, rbx
	call	record_file
	jmp	.label_228
.label_501:
	mov	edi, dword ptr [rbp - 0x3c]
.label_503:
	mov	rsi, qword ptr [rbp - 0x78]
.label_406:
	mov	qword ptr [rbp - 0x68], r13
	cmp	byte ptr [r14 + 0x2b], 0
	mov	ebx, edi
	je	.label_539
	mov	ebx, dword ptr [r14 + 0x10]
.label_539:
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15d, 0x3f
	cmp	byte ptr [r14 + 0x1d], 0
	mov	r13b, byte ptr [rbp - 0x98]
	jne	.label_541
	mov	eax, edi
	and	eax, 0xf000
	xor	edx, edx
	cmp	eax, 0x4000
	mov	r15d, 0x12
	cmovne	r15d, edx
.label_541:
	mov	r12d, edi
	mov	qword ptr [rbp - 0x50], rcx
	movzx	ecx, cl
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0x60], ecx
	mov	r8, r14
	call	set_process_security_ctx
	test	al, al
	je	.label_550
	mov	dword ptr [rbp - 0x90], ebx
	mov	r9d, r15d
	and	r9d, ebx
	mov	ecx, r12d
	mov	r15d, ecx
	and	r15d, 0xf000
	cmp	r15d, 0x4000
	mov	qword ptr [rbp - 0x38], r14
	mov	dword ptr [rbp - 0x84], r15d
	jne	.label_551
	mov	rax, qword ptr [rbp - 0x188]
	mov	rcx, qword ptr [rbp - 0x180]
	mov	rdi, qword ptr [rbp - 0x80]
	test	rdi, rdi
	mov	r8, qword ptr [rbp - 0x50]
	mov	r13, qword ptr [rbp - 0x30]
	je	.label_557
	mov	rdx, rdi
.label_572:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_567
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_568
.label_567:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_572
.label_557:
	mov	rdx, rsp
	lea	rsi, [rdx - 0x20]
	mov	qword ptr [rbp - 0x98], rsi
	mov	rsp, rsi
	mov	qword ptr [rdx - 0x20], rdi
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	r8b, r8b
	jne	.label_277
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0x4000
	jne	.label_277
	cmp	byte ptr [r14 + 0x21], 0
	jne	.label_582
	cmp	byte ptr [r14 + 0x25], 0
	je	.label_583
.label_582:
	cmp	byte ptr [r14 + 0x23], 0
	je	.label_584
	cmp	byte ptr [r14 + 0x26], 0
	je	.label_585
.label_584:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r14 + 0x26], 0
	mov	esi, 0
	mov	rdx, qword ptr [rbp - 0x78]
	jne	.label_240
	jmp	.label_226
.label_550:
	xor	r14d, r14d
	jmp	.label_228
.label_551:
	cmp	byte ptr [r14 + 0x2c], 0
	je	.label_230
	mov	r12d, r9d
	mov	rbx, qword ptr [rbp - 0x48]
	cmp	byte ptr [rbx], 0x2f
	je	.label_232
	mov	rdi, qword ptr [rbp - 0x30]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_239
	cmp	byte ptr [rbx + 1], 0
	je	.label_247
.label_239:
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_146
	call	__xstat
	test	eax, eax
	jne	.label_247
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_254
.label_247:
	mov	rdi, rbx
	call	free
.label_504:
	mov	rbx, qword ptr [rbp - 0x48]
.label_232:
	movzx	ecx, byte ptr [r14 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, rbx
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdx, r15
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_266
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	jmp	.label_281
.label_277:
	mov	eax, dword ptr [rbp - 0x90]
	and	eax, 0xfff
	mov	esi, r9d
	not	esi
	and	esi, eax
	mov	rdi, r13
	mov	ebx, r9d
	call	mkdir
	test	eax, eax
	je	.label_291
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	jmp	.label_295
.label_230:
	cmp	byte ptr [r14 + 0x17], 0
	mov	r12, qword ptr [rbp - 0x30]
	je	.label_299
	mov	r12d, r9d
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	cmp	byte ptr [r14 + 0x16], 0
	mov	al, 1
	jne	.label_405
	cmp	dword ptr [r14 + 8], 3
	sete	al
.label_405:
	movzx	r8d, r13b
	shl	r8d, 0xa
	sub	rsp, 8
	movzx	r9d, al
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r14, qword ptr [rbp - 0x48]
	mov	rsi, r14
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rcx, rbx
	push	-1
	call	force_linkat
	add	rsp, 0x10
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_323
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r12
.label_281:
	mov	rcx, r15
	call	error
	jmp	.label_338
.label_291:
	lea	rdx, [rbp - 0x2b0]
	mov	edi, 1
	mov	rsi, r13
	call	__lxstat
	test	eax, eax
	je	.label_343
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
.label_295:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_256:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_348
.label_266:
	mov	dword ptr [rbp - 0x58], r12d
.label_234:
	mov	sil, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_352
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
.label_561:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_227:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_348:
	mov	rdx, rbx
.label_492:
	call	error
.label_338:
	mov	rdx, qword ptr [rbp - 0x78]
.label_240:
	mov	r13, qword ptr [rbp - 0x68]
.label_260:
	mov	rbx, qword ptr [rbp - 0x38]
	cmp	byte ptr [rbx + 0x25], 0
	jne	.label_222
	test	rdx, rdx
	mov	r12, qword ptr [rbp - 0x30]
	jne	.label_371
	mov	rsi, qword ptr [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x180]
	call	forget_created
.label_371:
	test	r13, r13
	je	.label_379
	mov	rdi, r13
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_381
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
.label_301:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_552:
	mov	rdx, rbx
	jmp	.label_369
.label_379:
	xor	r14d, r14d
	jmp	.label_228
.label_381:
	cmp	byte ptr [rbx + 0x2e], 0
	je	.label_395
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r13
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r15
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_228
.label_395:
	xor	r14d, r14d
	jmp	.label_228
.label_299:
	cmp	r15d, 0x8000
	je	.label_408
	cmp	r15d, 0xa000
	je	.label_502
	mov	al, byte ptr [r14 + 0x14]
	test	al, al
	je	.label_502
.label_408:
	mov	r12d, r9d
	mov	eax, dword ptr [rbp - 0x170]
	mov	dword ptr [rbp - 0xb8], eax
	mov	r13b, byte ptr [r14 + 0x23]
	xor	esi, esi
	cmp	dword ptr [r14 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	call	open_safer
	test	eax, eax
	js	.label_562
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	dword ptr [rbp - 0x80], eax
	mov	esi, eax
	call	__fxstat
	test	eax, eax
	je	.label_429
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
.label_517:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_441
.label_343:
	mov	r12d, dword ptr [rbp - 0x298]
	mov	eax, r12d
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_446
	xor	r15d, r15d
	mov	esi, ebx
	jmp	.label_447
.label_323:
	mov	dword ptr [rbp - 0x58], r12d
	xor	esi, esi
	xor	r14d, r14d
.label_352:
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
.label_592:
	mov	dword ptr [rbp - 0x54], eax
.label_378:
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbx, qword ptr [rbp - 0x68]
	mov	r15d, dword ptr [rbp - 0x84]
	jmp	.label_451
.label_446:
	mov	esi, r12d
	or	esi, 0x1c0
	mov	rdi, r13
	call	chmod
	mov	r15b, 1
	test	eax, eax
	mov	esi, ebx
	je	.label_447
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	jmp	.label_295
.label_447:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_466
	mov	rdx, qword ptr [rbp - 0x2b0]
	mov	rsi, qword ptr [rbp - 0x2a8]
	mov	rdi, r13
	call	remember_copied
	mov	esi, ebx
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_466:
	cmp	byte ptr [r14 + 0x2e], 0
	je	.label_226
	mov	r13d, r12d
	cmp	byte ptr [r14 + 0x18], 0
	je	.label_472
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_516
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r12
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_484
.label_562:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_485
.label_577:
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
	jmp	.label_492
.label_254:
	mov	rax, qword ptr [rbp - 0x218]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_497
	mov	r14, qword ptr [rbp - 0x220]
	mov	r15, qword ptr [rbp - 0x3d0]
	mov	rdi, rbx
	call	free
	cmp	r14, r15
	mov	r14, qword ptr [rbp - 0x38]
	je	.label_504
	jmp	.label_509
.label_502:
	movsx	eax, r15w
	cmp	eax, 0xfff
	jle	.label_510
	movzx	eax, r15w
	cmp	eax, 0x6000
	je	.label_513
	cmp	eax, 0x2000
	je	.label_513
	cmp	eax, 0x1000
	jne	.label_302
	mov	eax, ecx
	mov	r14, r12
	mov	ebx, r9d
	not	ebx
	and	ebx, eax
	mov	qword ptr [rbp - 0x220], 0
	lea	rcx, [rbp - 0x220]
	xor	edi, edi
	mov	rsi, r14
	mov	edx, ebx
	mov	r12d, r9d
	call	__xmknod
	mov	cl, 1
	mov	qword ptr [rbp - 0x80], rcx
	test	eax, eax
	mov	rdi, r14
	mov	dword ptr [rbp - 0x58], r12d
	je	.label_524
	and	ebx, 0xffffefff
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_528
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_529
	jmp	.label_530
.label_585:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_583:
	xor	r15d, r15d
	xor	esi, esi
	jmp	.label_226
.label_564:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_532
	jmp	.label_533
.label_358:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_412
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rdx, r12
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	jmp	.label_590
.label_429:
	mov	rax, qword ptr [rbp - 0x180]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_542
	mov	rax, qword ptr [rbp - 0x188]
	cmp	rax, qword ptr [rbp - 0x3d0]
	jne	.label_542
	and	dword ptr [rbp - 0x90], 0x1ff
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	mov	edx, eax
	mov	ecx, r12d
	jne	.label_374
	mov	dword ptr [rbp - 0x58], r12d
	mov	r12, qword ptr [rbp - 0x38]
	cmp	byte ptr [r12 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	call	open_safer
	mov	ebx, eax
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_553
	test	ebx, ebx
	jns	.label_556
	jmp	.label_339
.label_542:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_558
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_441:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_362:
	mov	edi, dword ptr [rbp - 0x80]
	call	close
	test	eax, eax
	jns	.label_575
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	r13, rbx
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	mov	rbx, r13
	call	error
.label_575:
	mov	rdi, rbx
	call	free
	test	r15b, r15b
	je	.label_338
	mov	dword ptr [rbp - 0x58], r12d
	xor	esi, esi
	mov	r14b, 1
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	r15d, dword ptr [rbp - 0x84]
.label_262:
	mov	rbx, qword ptr [rbp - 0x68]
	jmp	.label_451
.label_497:
	mov	rdi, rbx
	call	free
.label_509:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_219
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	jmp	.label_227
.label_510:
	movzx	eax, r15w
	cmp	eax, 0xa000
	je	.label_229
	cmp	eax, 0xc000
	jne	.label_302
.label_513:
	mov	edx, r9d
	not	edx
	and	edx, ecx
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0x220], rax
	lea	rcx, [rbp - 0x220]
	xor	edi, edi
	mov	rsi, r12
	mov	ebx, r9d
	call	__xmknod
	test	eax, eax
	je	.label_245
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_248
	mov	edx, 5
	call	dcgettext
	mov	rsi, r12
	mov	rbx, rax
	mov	edi, 4
	jmp	.label_256
.label_472:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_267
	xor	eax, eax
	mov	rdx, r12
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_480
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_484:
	mov	r12d, r13d
	mov	esi, ebx
.label_226:
	mov	qword ptr [rbp - 0x90], r15
	mov	rcx, qword ptr [rbp - 0xb8]
	test	rcx, rcx
	mov	dword ptr [rbp - 0x58], esi
	mov	dword ptr [rbp - 0x54], r12d
	je	.label_280
	mov	al, byte ptr [r14 + 0x1c]
	test	al, al
	je	.label_280
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_288
.label_280:
	movups	xmm0, xmmword ptr [r14 + 0x40]
	movaps	xmmword ptr [rbp - 0x1e0], xmm0
	movups	xmm0, xmmword ptr [r14]
	movups	xmm1, xmmword ptr [r14 + 0x10]
	movups	xmm2, xmmword ptr [r14 + 0x20]
	movups	xmm3, xmmword ptr [r14 + 0x30]
	movaps	xmmword ptr [rbp - 0x1f0], xmm3
	movaps	xmmword ptr [rbp - 0x200], xmm2
	movaps	xmmword ptr [rbp - 0x210], xmm1
	movaps	xmmword ptr [rbp - 0x220], xmm0
	mov	esi, 2
	mov	r13, qword ptr [rbp - 0x48]
	mov	rdi, r13
	call	savedir
	test	rax, rax
	je	.label_314
	cmp	dword ptr [r14 + 4], 3
	jne	.label_317
	mov	dword ptr [rbp - 0x21c], 2
.label_317:
	cmp	byte ptr [rax], 0
	mov	qword ptr [rbp - 0xa8], rax
	mov	r15b, 1
	je	.label_319
	xor	r14d, r14d
	mov	r12, rax
	mov	rbx, qword ptr [rbp - 0x30]
	mov	r13, qword ptr [rbp - 0x48]
.label_361:
	mov	byte ptr [rbp - 0x80], r15b
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, r12
	call	file_name_concat
	mov	r15, rax
	mov	qword ptr [rbp - 0xb8], r15
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	file_name_concat
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x18]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rbp - 0x340], al
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, dword ptr [rbp - 0x60]
	lea	rcx, [rbp - 0x188]
	mov	r8, qword ptr [rbp - 0x98]
	lea	r9, [rbp - 0x220]
	push	0
	lea	rax, [rbp - 0x3d0]
	push	rax
	lea	rax, [rbp - 0x340]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r15d, eax
	and	r15b, byte ptr [rbp - 0x80]
	movzx	r13d, byte ptr [rbp - 0x3d0]
	mov	rax, qword ptr [rbp + 0x20]
	or	byte ptr [rax], r13b
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rbp - 0xb8]
	call	free
	test	r13b, r13b
	jne	.label_350
	and	r14b, 1
	or	r14b, byte ptr [rbp - 0x340]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [r12 + rax + 1], 0
	lea	r12, [r12 + rax + 1]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	r13, qword ptr [rbp - 0x48]
	jne	.label_361
	jmp	.label_350
.label_314:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x80], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_377
.label_288:
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	xor	esi, esi
	xor	r14d, r14d
	jmp	.label_378
.label_319:
	xor	r14d, r14d
.label_350:
	mov	rdi, qword ptr [rbp - 0xa8]
	call	free
	and	r14b, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], r14b
	test	r15b, r15b
	setne	al
	mov	qword ptr [rbp - 0x80], rax
.label_377:
	mov	rbx, qword ptr [rbp - 0x68]
	mov	r15d, dword ptr [rbp - 0x84]
	xor	esi, esi
	xor	r14d, r14d
	mov	rcx, qword ptr [rbp - 0x50]
.label_451:
	test	cl, cl
	jne	.label_389
	cmp	r15d, 0x4000
	je	.label_389
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x14]
	test	al, al
	jne	.label_389
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x21], 0
	jne	.label_398
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x25], 0
	je	.label_389
.label_398:
	mov	dword ptr [rbp - 0xb8], esi
	mov	qword ptr [rbp - 0x50], rcx
	mov	r12, qword ptr [rbp - 0x38]
	cmp	byte ptr [r12 + 0x23], 0
	je	.label_401
	cmp	byte ptr [r12 + 0x26], 0
	je	.label_404
.label_401:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	r15, rbx
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r13
	mov	r13, r15
	mov	r15d, dword ptr [rbp - 0x84]
	call	error
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	byte ptr [r12 + 0x26], 0
	mov	rcx, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0xb8]
	jne	.label_260
	jmp	.label_389
.label_404:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	rcx, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rbp - 0xb8]
.label_389:
	cmp	byte ptr [rbp + 0x10], 0
	mov	r13, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x30]
	je	.label_433
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_433
	mov	dword ptr [rbp - 0xb8], r14d
	mov	r14, r13
	mov	r13d, esi
	mov	rbx, rcx
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	r12, r10
	mov	rsi, r10
	call	__lxstat
	test	eax, eax
	jne	.label_442
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 0x40]
	lea	rdx, [rbp - 0x220]
	mov	rsi, r12
	call	record_file
.label_442:
	mov	rcx, rbx
	mov	esi, r13d
	mov	r13, r14
	mov	r14d, dword ptr [rbp - 0xb8]
	mov	r10, r12
.label_433:
	cmp	r15d, 0x4000
	je	.label_448
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x17]
	test	al, al
	jne	.label_308
.label_448:
	test	r14b, r14b
	jne	.label_308
	mov	rbx, qword ptr [rbp - 0x38]
	cmp	byte ptr [rbx + 0x1f], 0
	je	.label_455
	mov	qword ptr [rbp - 0x50], rcx
	movups	xmm0, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x220], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x210], xmm0
	mov	r15d, esi
	test	sil, sil
	je	.label_403
	lea	rsi, [rbp - 0x220]
	mov	r14, r10
	mov	rdi, r10
	call	lutimens
	test	eax, eax
	je	.label_470
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_471
	jmp	.label_470
.label_403:
	lea	rsi, [rbp - 0x220]
	mov	r14, r10
	mov	rdi, r10
	call	utimens
	test	eax, eax
	je	.label_470
	call	__errno_location
.label_471:
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	r12, r13
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r13
	mov	r13, r12
	mov	r14, qword ptr [rbp - 0x30]
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_470
	xor	r14d, r14d
	jmp	.label_228
.label_470:
	mov	rcx, qword ptr [rbp - 0x50]
	mov	esi, r15d
	mov	r10, r14
.label_455:
	test	sil, sil
	jne	.label_308
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_221
	test	cl, cl
	jne	.label_493
	mov	eax, dword ptr [rbp - 0x16c]
	cmp	eax, dword ptr [rbp - 0x294]
	jne	.label_493
	mov	eax, dword ptr [rbp - 0x168]
	cmp	eax, dword ptr [rbp - 0x290]
	je	.label_221
.label_493:
	xor	r8d, r8d
	mov	r14, rcx
	test	cl, cl
	setne	r8b
	mov	r9d, dword ptr [rbp - 0x298]
	lea	rcx, [rbp - 0x188]
	mov	edx, 0xffffffff
	mov	rdi, rbx
	mov	r15, r10
	mov	rsi, r10
	call	set_owner
	cmp	eax, -1
	je	.label_511
	test	eax, eax
	jne	.label_512
	and	dword ptr [rbp - 0x3c], 0xfffff1ff
.label_512:
	mov	rcx, r14
	mov	r10, r15
.label_221:
	cmp	byte ptr [rbx + 0x1e], 0
	jne	.label_514
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_243
.label_514:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r13
	mov	rdx, r10
	mov	r8d, dword ptr [rbp - 0x3c]
	call	copy_acl
	test	eax, eax
	je	.label_308
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_308
	xor	r14d, r14d
	jmp	.label_228
.label_574:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
.label_533:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
	jmp	.label_526
.label_511:
	xor	r14d, r14d
	jmp	.label_228
.label_245:
	mov	dword ptr [rbp - 0x58], ebx
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
.label_524:
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbx, qword ptr [rbp - 0x68]
	xor	esi, esi
	jmp	.label_451
.label_229:
	mov	r12d, r9d
	mov	rsi, qword ptr [rbp - 0x158]
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_535
	mov	dword ptr [rbp - 0x58], r12d
	movzx	ecx, byte ptr [r14 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x30]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_540
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	jne	.label_311
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x2d]
	test	al, al
	je	.label_311
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x298]
	cmp	eax, 0xa000
	jne	.label_311
	mov	rbx, qword ptr [rbp - 0x280]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_311
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_311
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r13d, eax
	mov	rdi, rbx
	call	free
	test	r13d, r13d
	je	.label_540
.label_311:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_554
.label_530:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_256
.label_302:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_560
	jmp	.label_561
.label_243:
	cmp	byte ptr [rbx + 0x2b], 0
	je	.label_565
	mov	edx, dword ptr [rbx + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, r10
	call	set_acl
	test	eax, eax
	je	.label_308
	xor	r14d, r14d
	jmp	.label_228
.label_535:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
	jmp	.label_577
.label_565:
	mov	r13, r10
	mov	r14, rcx
	test	cl, cl
	je	.label_505
	mov	al, byte ptr [rbx + 0x20]
	test	al, al
	je	.label_505
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_580
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_580:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r13
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_308
	xor	r14d, r14d
	jmp	.label_228
.label_540:
	mov	r14, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x25], 0
	jne	.label_222
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_234
	mov	esi, dword ptr [rbp - 0x16c]
	mov	edx, dword ptr [rbp - 0x168]
	mov	rdi, r14
	call	lchown
	test	eax, eax
	je	.label_234
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_235
	cmp	ebx, 1
	jne	.label_241
.label_235:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1a], 0
	je	.label_234
.label_241:
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x24], 0
	je	.label_257
	mov	r13, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x78]
	jmp	.label_260
.label_528:
	xor	esi, esi
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x50]
	jmp	.label_262
.label_505:
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_268
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_270
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_270:
	not	eax
	and	dword ptr [rbp - 0x58], eax
	mov	rax, qword ptr [rbp - 0x90]
	test	al, al
	jne	.label_278
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_278
	test	r14b, r14b
	je	.label_300
	lea	rdx, [rbp - 0x2b0]
	mov	edi, 1
	mov	rsi, r13
	call	__lxstat
	test	eax, eax
	je	.label_300
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
	jmp	.label_301
.label_553:
	test	ebx, ebx
	js	.label_307
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x25]
	test	al, al
	je	.label_307
.label_556:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x23], 0
	je	.label_313
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x26], 0
	je	.label_316
.label_313:
	mov	dword ptr [r15], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x26], 0
	je	.label_307
	xor	r15d, r15d
	jmp	.label_333
.label_268:
	mov	dword ptr [rbp - 0x58], 0
	jmp	.label_278
.label_316:
	mov	dword ptr [r15], 0x5f
.label_307:
	test	ebx, ebx
	js	.label_339
	mov	dword ptr [rbp - 0x54], 0
	xor	ecx, ecx
	jmp	.label_341
.label_339:
	xor	ecx, ecx
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x16], 0
	mov	dword ptr [rbp - 0x54], 0
	je	.label_341
	mov	rdi, qword ptr [rbp - 0x30]
	call	unlink
	test	eax, eax
	je	.label_347
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_138
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	xor	r15d, r15d
.label_326:
	xor	ebx, ebx
	mov	r12d, dword ptr [rbp - 0x58]
	jmp	.label_362
.label_347:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_363
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rcx
	call	__printf_chk
.label_363:
	mov	dl, 1
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x21], 0
	mov	eax, dword ptr [rbp - 0x58]
	mov	ecx, eax
	mov	r12d, eax
	je	.label_374
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	call	set_process_security_ctx
	mov	dl, 1
	xor	r15d, r15d
	test	al, al
	mov	ecx, r12d
	mov	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	ebx, 0
	je	.label_362
	jmp	.label_374
.label_300:
	mov	eax, dword ptr [rbp - 0x298]
	mov	dword ptr [rbp - 0x54], eax
	not	eax
	test	dword ptr [rbp - 0x58], eax
	je	.label_278
	mov	al, 1
	mov	qword ptr [rbp - 0x90], rax
.label_278:
	mov	rax, qword ptr [rbp - 0x90]
	test	al, 1
	mov	rbx, r13
	je	.label_308
	mov	esi, dword ptr [rbp - 0x54]
	or	esi, dword ptr [rbp - 0x58]
	mov	rdi, rbx
	call	chmod
	test	eax, eax
	je	.label_308
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r13
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_228
.label_308:
	mov	rax, qword ptr [rbp - 0x80]
	test	al, al
	setne	r14b
	jmp	.label_228
.label_520:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_414
.label_523:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_420
.label_257:
	mov	sil, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_592
.label_480:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_484
.label_222:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_374:
	mov	byte ptr [rbp - 0x98], dl
	mov	dword ptr [rbp - 0x58], r12d
	mov	dword ptr [rbp - 0x54], ecx
	mov	r15d, ecx
	not	r15d
	and	r15d, dword ptr [rbp - 0x90]
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	r12d, eax
	call	__errno_location
	mov	qword ptr [rbp - 0x50], rax
	mov	r14d, dword ptr [rax]
	mov	ebx, r12d
	test	r12d, r12d
	jns	.label_450
	cmp	r14d, 0x11
	jne	.label_450
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_454
	lea	rdx, [rbp - 0x340]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_450
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	jne	.label_450
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_469
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x50]
	mov	r14d, dword ptr [rax]
.label_450:
	cmp	r14d, 0x15
	jne	.label_454
	test	ebx, ebx
	jns	.label_454
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_454
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	strlen
	xor	r14d, r14d
	cmp	byte ptr [r15 + rax - 1], 0x2f
	setne	r14b
	or	r14d, 0x14
.label_454:
	mov	al, byte ptr [rbp - 0x98]
	mov	cl, al
.label_341:
	test	ebx, ebx
	js	.label_483
	mov	qword ptr [rbp - 0x50], rcx
	lea	rdx, [rbp - 0x220]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	je	.label_328
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_333
.label_483:
	mov	qword ptr [rbp - 0x50], rcx
	test	cl, cl
	mov	r12d, dword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x54]
	jne	.label_506
	cmp	r14d, 2
	jne	.label_506
	mov	dl, 1
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_374
.label_506:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_515
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_517
.label_328:
	mov	dword ptr [rbp - 0x60], ebx
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	test	r13b, r13b
	je	.label_272
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_521
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x60]
	mov	edx, dword ptr [rbp - 0x80]
	call	ioctl
	test	eax, eax
	je	.label_272
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_521
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_495
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbx
	call	error
	xor	eax, eax
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_250
.label_521:
	call	getpagesize
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x1e8]
	movabs	r12, 0x2000000000000001
	cmp	rax, r12
	mov	ecx, 0x200
	mov	r13d, 0x200
	cmovb	r13, rax
	test	rax, rax
	cmovle	r13, rcx
	cmp	rax, r12
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 0xf0], r13
	cmovae	r13, rcx
	test	rax, rax
	cmovle	r13, rcx
	cmp	rax, 0x20000
	cmovl	r13, rcx
	mov	qword ptr [rbp - 0xc0], r13
	xor	r13d, r13d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rbp - 0x80]
	call	fdadvise
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0x3b8]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_357
	mov	rcx, qword ptr [rbp - 0x3a0]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	rdx, qword ptr [rbp - 0x390]
	setg	r13b
.label_357:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0x208]
	cmp	eax, 0x8000
	jne	.label_439
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0xc4], ecx
	je	.label_570
	and	al, r13b
	jne	.label_570
.label_439:
	mov	rax, qword ptr [rbp - 0x398]
	cmp	rax, r12
	mov	ecx, 0x200
	mov	edi, 0x200
	cmovb	rdi, rax
	test	rax, rax
	cmovle	rdi, rcx
	cmp	rax, r12
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	cmp	rax, 0x20000
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0xc0]
	mov	rdx, rbx
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_591
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	rdx, qword ptr [rbp - 0xc0]
	cmp	rax, rdx
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	mov	qword ptr [rbp - 0xc0], rdx
.label_591:
	mov	rsi, qword ptr [rbp - 0xc0]
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	lea	rax, [rsi - 1]
	cmp	rax, rbx
	cmovae	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rsi
	mov	dword ptr [rbp - 0xc4], 0
.label_570:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rax + r15]
	call	xmalloc
	mov	rcx, rax
	mov	qword ptr [rbp - 0x98], rcx
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r15
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe8], rcx
	test	r13b, r13b
	je	.label_236
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	qword ptr [rbp - 0xa8], rax
	mov	eax, dword ptr [rbp - 0xc4]
	test	al, al
	je	.label_372
	mov	rax, qword ptr [rbp - 0x38]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_255
.label_372:
	mov	dword ptr [rbp - 0xac], 1
.label_255:
	lea	rsi, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x80]
	call	extent_scan_init
	xor	eax, eax
	mov	qword ptr [rbp - 0xd0], rax
	cmp	dword ptr [rbp - 0xac], 3
	mov	eax, 0
	cmove	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf8], rax
	mov	al, 1
	mov	dword ptr [rbp - 0x9c], eax
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_263
.label_391:
	cmp	qword ptr [rbp - 0x328], 0
	je	.label_276
	cmp	dword ptr [rbp - 0xac], 1
	jne	.label_279
	xor	eax, eax
	mov	qword ptr [rbp - 0xe0], rax
.label_486:
	mov	rax, qword ptr [rbp - 0x318]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rcx, [rcx + rcx*2]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	r12, rdx
	mov	r13, rax
	lea	rax, [rax + rdx]
	cmp	rax, qword ptr [rbp - 0xa8]
	jle	.label_286
	mov	rax, r12
	mov	r13, qword ptr [rbp - 0xa8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r12, rax
	sub	r13, rax
.label_286:
	mov	r15, r12
	sub	r15, r14
	sub	r15, qword ptr [rbp - 0xd0]
	mov	r14d, dword ptr [rbp - 0x60]
	je	.label_321
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x80]
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_312
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_315
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_315
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_315:
	mov	r14d, dword ptr [rbp - 0x60]
.label_589:
	test	r15, r15
	je	.label_321
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	cmp	rbx, r15
	cmovae	rbx, r15
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, r14d
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r15, rcx
	cmp	rax, rbx
	je	.label_589
	jmp	.label_345
.label_321:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rbp - 0x80]
	mov	esi, r14d
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0xf8]
	lea	rax, [rbp - 0x69]
	push	rax
	lea	rax, [rbp - 0xd8]
	push	rax
	push	r13
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_351
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rbx, [rax + r12]
	mov	cl, byte ptr [rbp - 0x69]
	mov	dword ptr [rbp - 0x9c], ecx
	cmp	rbx, qword ptr [rbp - 0xa8]
	je	.label_356
	mov	rcx, qword ptr [rbp - 0xe0]
	mov	rdx, rcx
	inc	edx
	mov	edx, edx
	mov	rcx, rdx
	mov	qword ptr [rbp - 0xe0], rcx
	cmp	rdx, qword ptr [rbp - 0x328]
	mov	r14, r12
	mov	rcx, r13
	mov	qword ptr [rbp - 0xd0], rcx
	jb	.label_486
	test	rax, rax
	jne	.label_337
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_337
.label_276:
	mov	r12, r14
	mov	r13, qword ptr [rbp - 0xd0]
.label_337:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	cmp	byte ptr [rbp - 0x31f], 0
	mov	qword ptr [rbp - 0xd0], r13
	mov	r14, r12
	je	.label_263
	jmp	.label_421
.label_279:
	mov	r15d, 1
	xor	ecx, ecx
.label_563:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rcx, [rcx + rcx*2]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	r12, rdx
	mov	r13, rax
	lea	rax, [rax + rdx]
	cmp	rax, qword ptr [rbp - 0xa8]
	jle	.label_365
	mov	rax, r12
	mov	r13, qword ptr [rbp - 0xa8]
	cmp	rax, r13
	cmovg	rax, r13
	mov	r12, rax
	sub	r13, rax
.label_365:
	mov	rbx, r12
	sub	rbx, r14
	sub	rbx, qword ptr [rbp - 0xd0]
	je	.label_402
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x80]
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_312
	xor	edx, edx
	cmp	dword ptr [rbp - 0xac], 3
	sete	dl
	mov	edi, dword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, rbx
	call	create_hole
	mov	cl, 1
	mov	dword ptr [rbp - 0x9c], ecx
	test	al, al
	jne	.label_409
	jmp	.label_351
.label_402:
	mov	dword ptr [rbp - 0x9c], 0
.label_409:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	r8, qword ptr [rbp - 0xf8]
	lea	rax, [rbp - 0x69]
	push	rax
	lea	rax, [rbp - 0xd8]
	push	rax
	push	r13
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_351
	mov	rdx, qword ptr [rbp - 0xd8]
	lea	rbx, [rdx + r12]
	movzx	eax, byte ptr [rbp - 0x69]
	cmp	rbx, qword ptr [rbp - 0xa8]
	je	.label_430
	mov	ecx, r15d
	inc	r15d
	cmp	rcx, qword ptr [rbp - 0x328]
	mov	r14, r12
	mov	rsi, r13
	mov	qword ptr [rbp - 0xd0], rsi
	jb	.label_563
	test	rdx, rdx
	je	.label_337
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_337
.label_430:
	test	rdx, rdx
	je	.label_360
	mov	dword ptr [rbp - 0x9c], eax
.label_360:
	mov	byte ptr [rbp - 0x31f], 1
	mov	rbx, qword ptr [rbp - 0xa8]
	jmp	.label_337
.label_356:
	test	rax, rax
	jne	.label_360
	mov	dword ptr [rbp - 0x9c], 0
	jmp	.label_360
.label_263:
	lea	rdi, [rbp - 0x340]
	call	extent_scan_read
	test	al, al
	jne	.label_391
	cmp	byte ptr [rbp - 0x31f], 0
	je	.label_457
.label_421:
	mov	r15, qword ptr [rbp - 0xa8]
	sub	r15, rbx
	jg	.label_461
	mov	eax, dword ptr [rbp - 0x9c]
	and	al, 1
	je	.label_416
.label_461:
	cmp	dword ptr [rbp - 0xac], 1
	jne	.label_465
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_468
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_468
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_468:
	mov	r12d, 0x400
.label_324:
	test	r15, r15
	je	.label_416
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	r14d, 0x20000
	cmovne	r14, r12
	cmp	r14, r15
	cmovae	r14, r15
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rdx, r14
	call	full_write
	cmp	rax, r14
	mov	ecx, 0
	cmove	rcx, r14
	sub	r15, rcx
	cmp	rax, r14
	je	.label_324
	jmp	.label_481
.label_345:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_494
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	jmp	.label_231
.label_469:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	al, byte ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_326
.label_312:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_231:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_351:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	xor	r15d, r15d
	jmp	.label_250
.label_457:
	cmp	byte ptr [rbp - 0x320], 0
	je	.label_487
.label_236:
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0xc4]
	test	al, al
	cmovne	r8, qword ptr [rbp - 0xf0]
	xor	r9d, r9d
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rax, [rbp - 0xd8]
	lea	rbx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xc0]
	push	rax
	push	rbx
	push	-1
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_233
	cmp	byte ptr [rbp - 0xd8], 0
	je	.label_272
	mov	rsi, qword ptr [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x60]
	call	ftruncate
	test	eax, eax
	jns	.label_272
	jmp	.label_481
.label_465:
	mov	edi, dword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0xa8]
	call	ftruncate
	test	eax, eax
	je	.label_416
.label_481:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
.label_332:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_259:
	call	error
	jmp	.label_233
.label_416:
	cmp	dword ptr [rbp - 0xac], 3
	jne	.label_272
	sub	qword ptr [rbp - 0xa8], rbx
	jle	.label_272
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x60]
	mov	rdx, rbx
	mov	rcx, qword ptr [rbp - 0xa8]
	call	fallocate
	test	eax, eax
	jns	.label_272
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_272
	cmp	ebx, 0x5f
	jne	.label_569
.label_272:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_573
	movups	xmm0, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x340], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x330], xmm0
	lea	rdx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fdutimens
	test	eax, eax
	je	.label_573
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_475
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_233
.label_573:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_394
	mov	eax, dword ptr [rbp - 0x16c]
	cmp	eax, dword ptr [rbp - 0x204]
	jne	.label_594
	mov	eax, dword ptr [rbp - 0x168]
	cmp	eax, dword ptr [rbp - 0x200]
	je	.label_394
.label_594:
	xor	r8d, r8d
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	setne	r8b
	mov	r9d, dword ptr [rbp - 0x208]
	lea	rcx, [rbp - 0x188]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x60]
	call	set_owner
	cmp	eax, -1
	je	.label_233
	test	eax, eax
	jne	.label_394
	and	dword ptr [rbp - 0xb8], 0xfffff1ff
.label_394:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_238
	cmp	byte ptr [rbp - 0x208], 0
	js	.label_238
	call	geteuid
	test	eax, eax
	je	.label_238
	cmp	dword ptr [rbp - 0x60], 0
	js	.label_244
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x60]
	call	fchmod
	jmp	.label_249
.label_233:
	xor	r15d, r15d
	jmp	.label_250
.label_244:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_249:
	test	eax, eax
	jne	.label_238
	mov	esi, dword ptr [rbp - 0x54]
	not	esi
	and	esi, dword ptr [rbp - 0x90]
	cmp	dword ptr [rbp - 0x60], 0
	js	.label_258
	mov	edi, dword ptr [rbp - 0x60]
	call	fchmod
	jmp	.label_238
.label_258:
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_238:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_265
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_386
.label_265:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x60]
	mov	r8d, dword ptr [rbp - 0xb8]
	call	copy_acl
	mov	r15b, 1
	test	eax, eax
	jne	.label_275
	jmp	.label_250
.label_386:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_287
	mov	rax, qword ptr [rbp - 0x38]
	mov	edx, dword ptr [rax + 0x10]
	jmp	.label_283
.label_287:
	mov	rax, qword ptr [rbp - 0x50]
	test	al, al
	je	.label_285
	mov	rax, qword ptr [rbp - 0x38]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_285
	mov	edx, dword ptr [rip + cached_umask.mask]
	cmp	edx, -1
	jne	.label_546
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	edx, dword ptr [rip + cached_umask.mask]
.label_546:
	not	edx
	and	edx, 0x1b6
.label_283:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	ebx, dword ptr [rbp - 0x60]
	mov	esi, ebx
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_333
.label_285:
	mov	r15b, 1
	cmp	dword ptr [rbp - 0x54], 0
	je	.label_250
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_309
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_309:
	not	eax
	test	dword ptr [rbp - 0x54], eax
	je	.label_250
	cmp	dword ptr [rbp - 0x60], 0
	js	.label_322
	mov	edi, dword ptr [rbp - 0x60]
	mov	esi, dword ptr [rbp - 0x90]
	call	fchmod
	jmp	.label_452
.label_487:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	jmp	.label_332
.label_322:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x90]
	call	chmod
.label_452:
	test	eax, eax
	je	.label_250
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_275:
	mov	rax, qword ptr [rbp - 0x38]
	mov	r15b, byte ptr [rax + 0x24]
	xor	r15b, 1
.label_250:
	mov	ebx, dword ptr [rbp - 0x60]
.label_333:
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	r12d, dword ptr [rbp - 0x58]
	jns	.label_349
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_349:
	mov	rbx, qword ptr [rbp - 0x98]
	jmp	.label_362
.label_569:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	jmp	.label_259
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b20
	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:

	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_596
	cmp	eax, 1
	jne	.label_597
.label_596:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_595
.label_597:
	xor	eax, eax
.label_595:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b50
	.globl cached_umask
	.type cached_umask, @function
cached_umask:

	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_598
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
	add	rsp, 8
.label_598:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b80

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_600
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_599
.label_600:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_599
	xor	r12b, 1
	jne	.label_599
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_599:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c70

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	rbx, rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_608
	call	can_write_any_file
	test	al, al
	jne	.label_608
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_608
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15, qword ptr [rip + stderr]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_605
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_605
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_603
.label_605:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_607
.label_602:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	r8, rax
	mov	r9d, dword ptr [rbx + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0x15]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	call	__fprintf_chk
	jmp	.label_606
.label_608:
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_604
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	r13, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	__fprintf_chk
.label_606:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_603:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_601
	jmp	.label_602
	nop	
	.section	.text
	.align	16
	#Procedure 0x407db0

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_267
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_610
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_611
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_610:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_609
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_609:
	mov	esi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e70

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13d, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_618
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_616
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_620
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_618
.label_620:
	test	al, al
	setne	dl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_616
	test	dl, dl
	jne	.label_616
	lea	rcx, [r15 + 0x10]
	jmp	.label_614
.label_616:
	add	rcx, 0x18
.label_614:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, r9d
	test	cx, 0xfff
	je	.label_618
	and	r9d, eax
	and	r9d, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	mov	edx, r9d
	call	qset_acl
	test	eax, eax
	je	.label_618
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_615
	cmp	ebx, 1
	jne	.label_627
.label_615:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_619
.label_627:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_623
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_619:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_625
.label_618:
	cmp	r13d, -1
	je	.label_621
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_625
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_613
	cmp	ebx, 1
	jne	.label_617
.label_613:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_622
.label_621:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_625
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_612
	cmp	ebx, 1
	jne	.label_617
.label_612:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_622:
	mov	dword ptr [rbp], ebx
.label_617:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_624
	cmp	ebx, 1
	jne	.label_628
.label_624:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_626
.label_628:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_242
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_625
.label_626:
	xor	eax, eax
.label_625:
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
	#Procedure 0x408050

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0xc], r9d
	mov	r15, rdx
	mov	dword ptr [rsp + 4], esi
	mov	r12d, edi
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r8, r8
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], r8
	cmovne	rax, r8
	mov	qword ptr [rsp + 0x38], rax
	xor	r8d, r8d
	test	rsi, rsi
	mov	r14d, 0
	je	.label_633
	cmp	rsi, rcx
	mov	rbx, rcx
	cmovb	rbx, rsi
	xor	r14d, r14d
	xor	r8d, r8d
	mov	qword ptr [rsp + 0x30], rcx
.label_650:
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp + 0x20], rsi
	nop	word ptr cs:[rax + rax]
.label_646:
	mov	edi, r12d
	mov	rsi, r15
	mov	rdx, rbx
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_635
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	je	.label_646
	jmp	.label_630
	nop	word ptr [rax + rax]
.label_635:
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_633
	sub	qword ptr [rsp + 0x20], r13
	mov	rax, qword ptr [rsp + 0x98]
	add	qword ptr [rax], r13
	mov	ebx, r14d
	and	bl, 1
	mov	r9, r15
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x18], r15
	mov	dword ptr [rsp + 8], r12d
	nop	word ptr cs:[rax + rax]
.label_645:
	mov	r10d, ebx
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_631
	test	r12, r12
	je	.label_631
	not	rbp
	mov	rax, r13
	not	rax
	cmp	rbp, rax
	cmova	rax, rbp
	mov	rdx, -2
	sub	rdx, rax
	mov	rsi, rdi
	nop	word ptr [rax + rax]
.label_638:
	cmp	byte ptr [rsi], 0
	jne	.label_649
	mov	r14b, 1
	test	rdx, rdx
	je	.label_631
	inc	rsi
	mov	eax, edx
	dec	rdx
	test	al, 0xf
	jne	.label_638
	inc	rdx
	mov	rbp, rdi
	mov	r14, r8
	mov	rbx, r9
	mov	r15d, r10d
	call	memcmp
	mov	r10d, r15d
	mov	r9, rbx
	mov	rdi, rbp
	mov	r8, r14
	test	eax, eax
	sete	r14b
	jmp	.label_631
.label_649:
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_631:
	mov	ebx, r14d
	and	bl, 1
	sete	al
	cmp	bl, r10b
	setne	sil
	test	r8, r8
	setne	cl
	cmp	r13, r12
	sete	dl
	and	dl, al
	test	r12, r12
	sete	r15b
	or	r15b, dl
	and	cl, sil
	jne	.label_632
	test	r15b, r15b
	jne	.label_632
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	r8, rax
	ja	.label_634
	add	r8, r12
	mov	rbp, r12
	jmp	.label_640
	nop	word ptr cs:[rax + rax]
.label_632:
	test	cl, 1
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	add	r8, rbp
	test	r10b, r10b
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 3], cl
	je	.label_629
	mov	eax, dword ptr [rsp + 0xc]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, r8
	call	create_hole
	test	al, al
	jne	.label_652
	jmp	.label_641
.label_629:
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r9
	mov	rdx, r8
	mov	qword ptr [rsp + 0x10], r8
	call	full_write
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_636
.label_652:
	test	r15b, r15b
	je	.label_639
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 3], 1
	mov	eax, 0
	cmove	r12, rax
	mov	r8, r12
	jmp	.label_648
	nop	word ptr cs:[rax + rax]
.label_639:
	mov	r8, r12
	mov	rbp, r12
.label_648:
	mov	rdi, qword ptr [rsp + 0x28]
	mov	r9, rdi
.label_640:
	mov	r15, qword ptr [rsp + 0x18]
	mov	r12d, dword ptr [rsp + 8]
	add	rdi, rbp
	sub	r13, rbp
	jne	.label_645
	mov	rax, qword ptr [rsp + 0xa0]
	mov	byte ptr [rax], bl
	mov	rcx, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rsi, rcx
	mov	rbx, rcx
	cmovb	rbx, rsi
	test	rsi, rsi
	jne	.label_650
.label_633:
	test	r14b, 1
	je	.label_637
	mov	eax, dword ptr [rsp + 0xc]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, r8
	call	create_hole
	test	al, al
	je	.label_641
.label_637:
	mov	r14b, 1
	jmp	.label_642
.label_630:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_647
.label_641:
	xor	r14d, r14d
	jmp	.label_642
.label_634:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_653
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_647:
	mov	rdx, rbx
.label_651:
	call	error
.label_642:
	mov	eax, r14d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_636:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_644
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x88]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_651
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408410

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebx, edi
	mov	edx, 1
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	js	.label_654
	mov	r15b, 1
	test	r12b, r12b
	je	.label_655
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_655
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_655
	cmp	ebp, 0x5f
	je	.label_655
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_367
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	jmp	.label_656
.label_654:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_656:
	call	error
.label_655:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084f0

	.globl forget_created
	.type forget_created, @function
forget_created:
	push	rbx
	sub	rsp, 0x20
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, qword ptr [rip + src_to_dest]
	lea	rsi, [rsp + 8]
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_657
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_657:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408540

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408560

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rip + src_to_dest]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_658
	mov	rax, qword ptr [rcx + 0x10]
.label_658:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x408590

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi, qword ptr [rip + src_to_dest]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_659
	xor	eax, eax
	cmp	r14, rbx
	je	.label_660
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_660:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_659:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408610

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [rip + src_to_dest],  rax
	test	rax, rax
	je	.label_661
	pop	rax
	ret	
.label_661:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408640

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408650

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_662
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_662:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408670
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi, qword ptr [rip + src_to_dest]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408680

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086b0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 8]
	mov	r12, qword ptr [r14 + 0x28]
	movabs	r13, 0x7fffffffffffffff
	xor	r15d, r15d
.label_685:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	qword ptr [rsp + 8], rbx
	mov	eax, dword ptr [r14 + 0x10]
	mov	dword ptr [rsp + 0x18], eax
	mov	dword ptr [rsp + 0x20], 0x48
	not	rbx
	mov	qword ptr [rsp + 0x10], rbx
	mov	edi, dword ptr [r14]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_674
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_678
	mov	rax, qword ptr [r14 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_677
	add	rax, rcx
	mov	qword ptr [r14 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	jae	.label_665
	mov	rdi, qword ptr [r14 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r14 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_683
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_667:
	mov	ecx, edx
	imul	rbx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rbx + 0x28]
	mov	rsi, qword ptr [rsp + rbx + 0x38]
	mov	rcx, r13
	sub	rcx, rsi
	cmp	rdi, rcx
	ja	.label_669
	test	r15d, r15d
	je	.label_682
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	mov	ecx, r9d
	and	ecx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12]
	add	rbp, r10
	cmp	dword ptr [r12 + 0x10], ecx
	jne	.label_676
	cmp	rbp, rdi
	jne	.label_676
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_668
	nop	word ptr cs:[rax + rax]
.label_682:
	mov	rbp, qword ptr [r14 + 8]
	cmp	rbp, rdi
	ja	.label_680
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	jmp	.label_663
.label_676:
	cmp	rbp, rdi
	jbe	.label_663
.label_680:
	mov	rcx, rbp
	sub	rcx, rdi
	sub	rsi, rcx
	ja	.label_675
	lea	rcx, [rsp + rbx + 0x28]
	mov	qword ptr [rcx], rbp
	mov	qword ptr [rcx + 0x10], rsi
	dec	edx
	jmp	.label_668
	nop	word ptr cs:[rax + rax]
.label_663:
	mov	ecx, r15d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r15d
.label_668:
	inc	edx
	cmp	edx, r8d
	jb	.label_667
.label_683:
	test	byte ptr [r12 + 0x10], 1
	je	.label_670
	mov	byte ptr [r14 + 0x21], 1
.label_670:
	mov	cl, byte ptr [r14 + 0x21]
	cmp	r15d, 0x49
	jb	.label_679
	test	cl, cl
	jne	.label_681
	dec	r15d
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r14 + 0x18], r15
	jmp	.label_684
	nop	word ptr cs:[rax + rax]
.label_679:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
	test	cl, cl
	jne	.label_686
.label_684:
	mov	rbx, qword ptr [r12 + 8]
	add	rbx, qword ptr [r12]
	mov	qword ptr [r14 + 8], rbx
	mov	al, 1
	cmp	r15d, 0x48
	jb	.label_685
	jmp	.label_666
.label_675:
	cmp	qword ptr [r14 + 8], 0
	je	.label_664
	xor	eax, eax
	jmp	.label_666
.label_674:
	cmp	qword ptr [r14 + 8], 0
	je	.label_664
	xor	eax, eax
	jmp	.label_666
.label_664:
	mov	byte ptr [r14 + 0x20], 1
	xor	eax, eax
	jmp	.label_666
.label_678:
	mov	byte ptr [r14 + 0x21], 1
	cmp	qword ptr [r14 + 8], 0
	setne	al
	jmp	.label_666
.label_681:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
.label_686:
	mov	al, 1
.label_666:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_669:
	mov	edi, OFFSET FLAT:label_687
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_673
	call	__assert_fail
.label_677:
	mov	edi, OFFSET FLAT:label_671
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_673
	call	__assert_fail
.label_665:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408940

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebp, r9d
	mov	r15d, r8d
	mov	r12, rcx
	mov	ebx, edx
	mov	r13d, edi
	mov	r14d, dword ptr [rsp + 0x160]
	test	r14d, r14d
	mov	qword ptr [rsp], rsi
	jns	.label_688
	mov	edi, r13d
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_689
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_688:
	cmp	r14d, 0x11
	jne	.label_689
	xor	bpl, 1
	jne	.label_689
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_693
	lea	r15, [rsp + 0x20]
	jmp	.label_690
.label_693:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_691
.label_690:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_691
	mov	dword ptr [rsp + 8], r13d
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x18], ebx
	mov	dword ptr [rsp + 0x1c], r14d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, r15
	call	try_tempname_len
	test	eax, eax
	je	.label_694
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_695
.label_691:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_689
.label_694:
	mov	edi, ebx
	mov	rsi, r15
	mov	ebp, ebx
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_692
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_692:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	call	unlinkat
.label_695:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_689
	mov	rdi, r15
	call	free
.label_689:
	mov	eax, r14d
	add	rsp, 0x128
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
	#Procedure 0x408ab0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	r8, rdx
	shr	r8, 0x20
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	
	.section	.text
	.align	16
	#Procedure 0x408ad0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r14d, esi
	mov	r15, rdi
	test	ebp, ebp
	jns	.label_699
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_696
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_699:
	cmp	ebp, 0x11
	jne	.label_696
	xor	bl, 1
	jne	.label_696
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_701
	lea	r12, [rsp + 0x10]
	jmp	.label_702
.label_701:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_698
.label_702:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_698
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_700
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_697
.label_698:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_696
.label_700:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_697
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_697:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_696
	mov	rdi, r12
	call	free
.label_696:
	mov	eax, ebp
	add	rsp, 0x118
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
	#Procedure 0x408c10

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c30

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_703
	cmp	ebp, -2
	jne	.label_704
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_705
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_706
.label_703:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_706:
	call	error
.label_704:
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
	#Procedure 0x408cc0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_707
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_425
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_707:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20

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
	je	.label_710
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_712:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_716
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_709
.label_716:
	cmp	r13, r12
	jb	.label_711
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_713
	add	r12, r12
	jmp	.label_714
	nop	word ptr cs:[rax + rax]
.label_713:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_708
.label_714:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_712
	jmp	.label_710
.label_711:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_710
.label_708:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_715
.label_709:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_715:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_710:
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
	.align	16
	#Procedure 0x408e30

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_717
	mov	edi, OFFSET FLAT:label_720
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_718
	test	rbx, rbx
	je	.label_719
.label_717:
	mov	eax, OFFSET FLAT:label_718
	cmp	byte ptr [rbx], 0
	je	.label_719
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_718
	cmove	rax, rbx
.label_719:
	mov	qword ptr [rip + simple_backup_suffix],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e80

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	dword ptr [rsp + 0x44], ecx
	mov	r12d, edx
	mov	r15, rsi
	mov	dword ptr [rsp + 0x40], edi
	mov	rdi, r15
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	mov	rdi, rax
	call	strlen
	mov	rbp, rax
	mov	rax, rbx
	mov	qword ptr [rsp + 0x28], rax
	add	rbp, rbx
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	test	rdi, rdi
	jne	.label_744
	mov	edi, OFFSET FLAT:label_720
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_718
	test	rbx, rbx
	je	.label_723
	mov	edi, OFFSET FLAT:label_718
	cmp	byte ptr [rbx], 0
	je	.label_723
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:label_718
	cmove	rdi, rbx
.label_723:
	mov	qword ptr [rip + simple_backup_suffix],  rdi
.label_744:
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x58], rax
	cmovae	rcx, rax
	lea	rdi, [rbp + rcx + 1]
	mov	qword ptr [rsp + 0x68], rdi
	call	malloc
	xor	r13d, r13d
	test	rax, rax
	je	.label_726
	lea	rcx, [rbp + 1]
	mov	qword ptr [rsp + 0x70], rcx
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	rcx, rbp
	mov	qword ptr [rsp + 0x18], rcx
	lea	rcx, [rbp + 4]
	mov	qword ptr [rsp + 0x60], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp], rcx
	mov	r13, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	mov	qword ptr [rsp + 0x10], r15
	nop	word ptr cs:[rax + rax]
.label_751:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcpy
	cmp	r12d, 1
	jne	.label_737
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
.label_737:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	mov	dword ptr [rsp + 8], r12d
	je	.label_749
	call	rewinddir
	mov	rdi, qword ptr [rsp]
	jmp	.label_752
.label_749:
	movzx	ebp, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x40]
	mov	rsi, r13
	lea	rcx, [rsp + 0xc]
	call	opendirat
	mov	rdi, rax
	test	rdi, rdi
	je	.label_725
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
.label_752:
	mov	rax, rdi
	mov	qword ptr [rsp], rax
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_730
	mov	r14, r13
	mov	rax, qword ptr [rsp + 0x20]
	lea	r13, [rax + 4]
	lea	r12, [rax + 2]
	mov	eax, 2
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [rsp + 0x50], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x30], rax
	nop	word ptr cs:[rax + rax]
.label_724:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_739
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_739
	mov	rsi, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rbx + rsi + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_739
	lea	rcx, [rbx + rsi + 0x13]
	cmp	al, 0x39
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_746
	lea	rcx, [rbx + rsi + 0x17]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_736:
	cmp	al, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	edx, eax
	add	edx, -0x30
	inc	rbp
	cmp	edx, 0xa
	jb	.label_736
	inc	rbp
	jmp	.label_738
.label_746:
	mov	ebp, 1
.label_738:
	cmp	al, 0x7e
	jne	.label_727
	lea	rbx, [rbx + rsi + 0x15]
	cmp	byte ptr [rbx + rbp + 1], 0
	jne	.label_727
	cmp	qword ptr [rsp + 0x30], rbp
	jb	.label_732
	jne	.label_727
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jg	.label_727
.label_732:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x30], rcx
	lea	r15, [rax + rcx]
	cmp	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], rdx
	jae	.label_734
	mov	rax, r15
	shr	rax, 0x3e
	sete	cl
	shl	r15, cl
	mov	rdi, r14
	mov	rsi, r15
	call	realloc
	mov	rdx, qword ptr [rsp + 0x38]
	test	rax, rax
	mov	qword ptr [rsp + 0x50], r15
	jne	.label_741
	jmp	.label_728
.label_734:
	mov	rax, r14
.label_741:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rax + rcx]
	mov	byte ptr [rax + rcx], 0x2e
	lea	r15, [rsi + rdx]
	mov	r14, rax
	mov	word ptr [rax + rcx + 1], 0x307e
	lea	rdi, [rdx + rsi + 2]
	lea	rdx, [rbp + 2]
	mov	rsi, rbx
	call	memcpy
	lea	rax, [rbp + r15 + 1]
	mov	cl, byte ptr [rbp + r15 + 1]
	jmp	.label_750
.label_748:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_750:
	cmp	cl, 0x39
	je	.label_748
	inc	cl
	mov	byte ptr [rax], cl
.label_727:
	mov	r15, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_739:
	mov	rdi, qword ptr [rsp]
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_724
	mov	r13, r14
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x38]
	jmp	.label_729
.label_725:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
	xor	eax, eax
.label_729:
	cmp	ecx, 1
	mov	qword ptr [rsp], rax
	je	.label_731
	cmp	ecx, 2
	je	.label_730
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_733
	jmp	.label_728
	nop	dword ptr [rax + rax]
.label_730:
	cmp	dword ptr [rsp + 8], 2
	jne	.label_731
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
.label_731:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_745
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_722
	test	r12d, r12d
	js	.label_747
	call	__errno_location
	mov	r14, r13
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	esi, 3
	mov	edi, r12d
	call	fpathconf
	cmp	dword ptr [r13], 1
	mov	r13, r14
	sbb	rax, 0
	jmp	.label_753
.label_745:
	mov	eax, 0xff
	jmp	.label_722
.label_747:
	movzx	r15d, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	mov	esi, 3
	mov	rdi, r13
	call	pathconf
	cmp	dword ptr [r12], 1
	sbb	rax, 0
	mov	word ptr [rbx], r15w
	mov	r15, qword ptr [rsp + 0x10]
.label_753:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	rax, rdx
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_722:
	cmp	rax, rbp
	jae	.label_735
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rcx, [r13 + rcx]
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_733
.label_735:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_733:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	r12d, dword ptr [rsp + 8]
	mov	r13, r14
	je	.label_740
	mov	edx, dword ptr [rsp + 0xc]
	test	edx, edx
	jns	.label_743
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_743:
	xor	r8d, r8d
	cmp	r12d, 1
	setne	r8b
	mov	rax, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, r15
	call	renameatu
	test	eax, eax
	je	.label_740
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_751
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_721
	call	closedir
.label_721:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_742
.label_740:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_726
	call	closedir
	jmp	.label_726
.label_728:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_742:
	xor	r13d, r13d
.label_726:
	mov	rax, r13
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
	#Procedure 0x409460

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409470
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_754
	pop	rcx
	ret	
.label_754:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409490
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_755
	cmp	byte ptr [rsi], 0
	je	.label_755
	push	rax
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + backup_types]
	add	rsp, 8
.label_755:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094d0

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_756
	cmp	byte ptr [rsi], 0
	je	.label_756
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_759
.label_756:
	mov	edi, OFFSET FLAT:label_757
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_758
	cmp	byte ptr [rax], 0
	je	.label_758
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_760
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_759:
	call	__xargmatch_internal
	mov	ecx, dword ptr [(rax * 4) + backup_types]
.label_758:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409540

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_761
	test	rsi, rsi
	je	.label_763
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_762:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_762
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_763
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_764
	jmp	.label_763
.label_761:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_763:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_764:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095b0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095c0

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
	je	.label_766
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_766
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_766:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_768
	test	eax, eax
	jne	.label_768
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_768:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_770
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_769
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_705
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_767
.label_769:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_765
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_767:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409690
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096b0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_775
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_773
	cmp	dword ptr [rbp], 0x20
	jne	.label_773
.label_775:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_772
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_773:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_774
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_771
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_705
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_772:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_771:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_765
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409770

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_776
	pop	rcx
	ret	
.label_776:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409790
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
.label_778:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_777
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_778
.label_777:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097d0

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
.label_782:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_779
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_782
.label_779:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_781
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_780
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_780:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_781:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409870

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_783:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_783
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_787
	nop	word ptr cs:[rax + rax]
.label_786:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_787:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_786
	test	dl, dl
	je	.label_785
	mov	ecx, esi
	and	cl, 1
	je	.label_784
	xor	esi, esi
.label_784:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_786
.label_785:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_789:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_788
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_789
.label_788:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409900

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_790
	mov	rbx, rax
.label_790:
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	al, cl
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409930

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409940
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_791
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_791:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409960

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_792
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_792:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_793
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_795
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_794
.label_795:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_794:
	mov	edx, dword ptr [rax]
.label_793:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a30

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_796
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_797
	cmp	rax, rbx
	je	.label_796
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_796:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_797:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ab0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_798
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_798:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409af0

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_807
	cmp	ecx, 0x3fff
	jg	.label_803
	cmp	eax, 0x1000
	je	.label_806
	cmp	eax, 0x2000
	jne	.label_799
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_815
	mov	edx, 5
	jmp	dcgettext
.label_807:
	cmp	eax, 0x8000
	je	.label_809
	cmp	eax, 0xa000
	je	.label_813
	cmp	eax, 0xc000
	jne	.label_799
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_805
	mov	edx, 5
	jmp	dcgettext
.label_803:
	cmp	eax, 0x4000
	je	.label_812
	cmp	eax, 0x6000
	jne	.label_799
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_802
	mov	edx, 5
	jmp	dcgettext
.label_806:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_811
	mov	edx, 5
	jmp	dcgettext
.label_809:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_804
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_814
	mov	edx, 5
	jmp	dcgettext
.label_813:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_800
	mov	edx, 5
	jmp	dcgettext
.label_812:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_808
	mov	edx, 5
	jmp	dcgettext
.label_799:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_801
	mov	edx, 5
	jmp	dcgettext
.label_804:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_810
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_827
	cmp	ecx, 0x3fff
	jg	.label_818
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_820
	cmp	ecx, 0x2000
	jne	.label_822
	mov	cl, 0x63
	jmp	.label_816
.label_827:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_816
	cmp	edx, 0xa000
	je	.label_828
	cmp	edx, 0xc000
	jne	.label_822
	mov	cl, 0x73
	jmp	.label_816
.label_818:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_823
	cmp	ecx, 0x4000
	jne	.label_822
	mov	cl, 0x64
	jmp	.label_816
.label_820:
	mov	cl, 0x70
	jmp	.label_816
.label_823:
	mov	cl, 0x62
	jmp	.label_816
.label_822:
	mov	cl, 0x3f
	jmp	.label_816
.label_828:
	mov	cl, 0x6c
.label_816:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_826
	mov	cl, 0x2d
.label_826:
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
	jne	.label_831
	mov	cl, 0x2d
.label_831:
	test	bl, 8
	jne	.label_824
	mov	dl, cl
.label_824:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_832
	mov	cl, 0x2d
.label_832:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_830
	mov	cl, 0x2d
.label_830:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_817
	mov	cl, 0x2d
.label_817:
	test	bl, 4
	jne	.label_819
	mov	dil, cl
.label_819:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_821
	mov	r9b, 0x2d
.label_821:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_825
	mov	dl, 0x2d
.label_825:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_829
	mov	r8b, 0x2d
.label_829:
	test	bl, 2
	pop	rbx
	je	.label_833
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_833:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d20
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d30

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_834
	pop	rcx
	ret	
.label_834:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d50

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
	je	.label_839
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_838
	cmp	byte ptr [r15], 0x2f
	je	.label_838
	mov	r12b, 0x2f
	jmp	.label_835
.label_839:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_835
.label_838:
	xor	r12d, r12d
.label_835:
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
	je	.label_837
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_836
	mov	qword ptr [rax], rbp
.label_836:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_837:
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
	#Procedure 0x409e30

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_840
	nop	word ptr [rax + rax]
.label_842:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_840
	test	rax, rax
	je	.label_841
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_842
	jmp	.label_840
.label_841:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_840:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409e90
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ea0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409eb0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ec0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_843
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_847
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_848:
	cmp	qword ptr [rcx], 0
	je	.label_849
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_846:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_846
	cmp	rdi, rax
	cmova	rax, rdi
.label_849:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_845
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_850:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_850
	cmp	rdi, rax
	cmova	rax, rdi
.label_845:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_848
.label_847:
	test	r8, r8
	je	.label_843
	cmp	qword ptr [rcx], 0
	je	.label_843
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_844:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_844
	cmp	rdx, rax
	cmova	rax, rdx
.label_843:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f80
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_851
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_855
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_861:
	cmp	qword ptr [rax], 0
	je	.label_852
	mov	rdx, rax
	nop	dword ptr [rax]
.label_854:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_854
	inc	r10
.label_852:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_856
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_859:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_859
	inc	r10
.label_856:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_861
	jmp	.label_853
.label_855:
	xor	r10d, r10d
.label_853:
	test	r8, r8
	je	.label_851
	cmp	qword ptr [rax], 0
	je	.label_851
	nop	dword ptr [rax]
.label_857:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_857
	inc	r10
.label_851:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_858
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_860
.label_858:
	xor	eax, eax
.label_860:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40a040
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
	jae	.label_862
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_867
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_866:
	cmp	qword ptr [rax], 0
	je	.label_874
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_868:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_868
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_874:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_875
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_865:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_865
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_875:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_866
.label_867:
	test	r8, r8
	je	.label_862
	cmp	qword ptr [rax], 0
	je	.label_862
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_863:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_863
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_862:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_864
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_876
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_870]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_871]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_872]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_873
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_869
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
	#Procedure 0x40a1b0

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
	jae	.label_880
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_877
	add	rbx, rax
	je	.label_877
	cmp	rsi, r12
	je	.label_879
	xor	r15d, r15d
	nop	
.label_878:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_881
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_877
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_878
.label_879:
	mov	r15, r12
	jmp	.label_877
.label_881:
	mov	r15, qword ptr [rbx]
.label_877:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_880:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a230
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_882
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_885
	nop	word ptr cs:[rax + rax]
.label_884:
	add	rcx, 0x10
.label_885:
	cmp	rcx, rdx
	jae	.label_883
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_884
.label_882:
	ret	
.label_883:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a270
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
	jae	.label_888
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_889:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_886
	test	rdx, rdx
	jne	.label_889
	jmp	.label_887
.label_886:
	test	rdx, rdx
	je	.label_887
	mov	rax, qword ptr [rdx]
	jmp	.label_890
.label_887:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_891:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_890
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_891
.label_890:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_888:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a300
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_892
	xor	eax, eax
.label_895:
	cmp	qword ptr [r9], 0
	je	.label_893
	test	r9, r9
	je	.label_893
	mov	r8, r9
	nop	
.label_894:
	cmp	rax, rdx
	jae	.label_892
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_894
	mov	r8, qword ptr [rdi + 8]
.label_893:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_895
.label_892:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a350
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
	jae	.label_899
	xor	ebx, ebx
.label_898:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_900
	test	r13, r13
	je	.label_900
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_899
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_897:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_896
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_897
	jmp	.label_899
	nop	dword ptr [rax]
.label_896:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_900:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_898
.label_899:
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
	#Procedure 0x40a3f0
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_901
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_902:
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
	jne	.label_902
.label_901:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a430
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_903]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a450

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
	je	.label_906
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_911
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_916]
	jbe	.label_905
	movss	xmm1, dword ptr [rip + label_919]
	ucomiss	xmm1, xmm0
	jbe	.label_905
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_910]
	jbe	.label_905
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_905
	addss	xmm1, dword ptr [rip + label_916]
	ucomiss	xmm0, xmm1
	jbe	.label_905
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_904]
	ucomiss	xmm2, xmm0
	jb	.label_905
	ucomiss	xmm0, xmm1
	jbe	.label_905
.label_911:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_918
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_915
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_917
.label_915:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_917:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_908]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_909]
	jae	.label_905
.label_918:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_907
	nop	
.label_912:
	add	rbx, 2
.label_907:
	cmp	rbx, -1
	je	.label_905
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_914
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_913:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_914
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_913
.label_914:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_912
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_905
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_905
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_905
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
	jmp	.label_906
.label_905:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_906:
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
	#Procedure 0x40a670

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
	#Procedure 0x40a680

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a690
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_922
	nop	word ptr cs:[rax + rax]
.label_925:
	add	r14, 0x10
.label_922:
	cmp	r14, rax
	jae	.label_924
	cmp	qword ptr [r14], 0
	je	.label_925
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_926
	nop	word ptr cs:[rax + rax]
.label_921:
	test	cl, 1
	je	.label_920
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_920:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_921
.label_926:
	test	cl, cl
	je	.label_923
	mov	rdi, qword ptr [r14]
	call	rax
.label_923:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_925
.label_924:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a740

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_927
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_927
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_934
	nop	
.label_931:
	add	r15, 0x10
.label_934:
	cmp	r15, rax
	jae	.label_927
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_931
	test	r15, r15
	je	.label_931
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_937
.label_930:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_937:
	test	rbx, rbx
	jne	.label_930
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_931
.label_927:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_928
	nop	
.label_932:
	add	r15, 0x10
.label_928:
	cmp	r15, rax
	jae	.label_936
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_932
	nop	word ptr cs:[rax + rax]
.label_929:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_929
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_932
.label_936:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_935
.label_933:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_933
.label_935:
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
	#Procedure 0x40a810

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
	jne	.label_947
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_948
	cvtsi2ss	xmm0, rsi
	jmp	.label_953
.label_948:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_953:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_908]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_909]
	jae	.label_940
.label_947:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_939
	nop	dword ptr [rax + rax]
.label_950:
	add	rbx, 2
.label_939:
	cmp	rbx, -1
	je	.label_940
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_944
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_952:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_944
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_952
.label_944:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_950
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_940
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_941
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_940
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
	je	.label_956
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_941
.label_956:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_949
	nop	
.label_942:
	add	r12, 0x10
.label_949:
	cmp	r12, r15
	jae	.label_938
	cmp	qword ptr [r12], 0
	je	.label_942
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_945
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_943:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_955
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_951
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_946
	nop	word ptr [rax + rax]
.label_951:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_946:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_943
.label_945:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_942
.label_938:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_954
	mov	rdi, qword ptr [rsp]
	call	free
.label_940:
	xor	ebp, ebp
.label_941:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_955:
	call	abort
.label_954:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aaa0

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
	jae	.label_967
	test	dl, dl
	je	.label_958
	nop	dword ptr [rax]
.label_969:
	cmp	qword ptr [r13], 0
	je	.label_963
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_966
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_964:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_974
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_961
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_973
	nop	word ptr [rax + rax]
.label_961:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_973:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_964
	mov	rax, qword ptr [r15 + 8]
.label_966:
	mov	qword ptr [r13 + 8], 0
.label_963:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_969
	jmp	.label_967
	nop	word ptr cs:[rax + rax]
.label_958:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_957
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_962
	nop	word ptr [rax + rax]
.label_960:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_974
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_976
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_972
	nop	word ptr [rax + rax]
.label_976:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_972:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_960
	mov	r12, qword ptr [r13]
.label_962:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_965
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_970
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_975
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_977
	nop	dword ptr [rax + rax]
.label_970:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_968
.label_975:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_971
.label_977:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_968:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_957:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_958
.label_967:
	mov	al, 1
.label_959:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_971:
	xor	eax, eax
	jmp	.label_959
.label_974:
	call	abort
.label_965:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40acc0

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
	je	.label_1001
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1001
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_990
	cmp	rsi, r14
	je	.label_981
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_979
	mov	rax, qword ptr [r12]
.label_980:
	test	rax, rax
	jne	.label_989
	jmp	.label_990
.label_981:
	mov	rax, r14
.label_989:
	xor	ebp, ebp
	test	r15, r15
	je	.label_993
	mov	qword ptr [r15], rax
	jmp	.label_993
.label_979:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_990
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_1007:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1004
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1005
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1007
.label_990:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_1008
	cvtsi2ss	xmm1, rax
	jmp	.label_984
.label_1008:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_984:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_991
	cvtsi2ss	xmm0, rcx
	jmp	.label_998
.label_991:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_998:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1000
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_994
	ucomiss	xmm2, dword ptr [rip + label_916]
	jbe	.label_987
	movss	xmm3, dword ptr [rip + label_919]
	ucomiss	xmm3, xmm2
	jbe	.label_987
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_910]
	jbe	.label_987
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_987
	addss	xmm3, dword ptr [rip + label_916]
	ucomiss	xmm2, xmm3
	jbe	.label_987
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_904]
	ucomiss	xmm5, xmm4
	jb	.label_987
	ucomiss	xmm4, xmm3
	ja	.label_997
.label_987:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_999]
	jmp	.label_997
.label_994:
	mov	eax, OFFSET FLAT:default_tuning
.label_997:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_1000
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_982
	mulss	xmm0, xmm2
.label_982:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_909]
	jae	.label_993
	movss	xmm1, dword ptr [rip + label_908]
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
	je	.label_993
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_1001
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_1000
	cmp	rsi, r14
	mov	rax, r14
	je	.label_985
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_978
	mov	rax, qword ptr [r12]
.label_985:
	test	rax, rax
	jne	.label_983
.label_1000:
	cmp	qword ptr [r12], 0
	je	.label_986
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_988
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_992
.label_986:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_995]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_996
.label_988:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_993
.label_992:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_996:
	mov	ebp, 1
.label_993:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1004:
	mov	rax, r14
	jmp	.label_980
.label_1005:
	mov	rax, qword ptr [rbp]
	jmp	.label_980
.label_978:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_1000
	lea	rbp, [rbx + rbp + 8]
.label_1002:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1003
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_1006
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_1002
	jmp	.label_1000
.label_1003:
	mov	rax, r14
	jmp	.label_985
.label_1006:
	mov	rax, qword ptr [rbp]
	jmp	.label_985
.label_1001:
	call	abort
.label_983:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b000

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
	je	.label_1009
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_1009:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b030

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
	jae	.label_1024
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1019
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1030
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_1010
	mov	r14, qword ptr [r13]
.label_1030:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1013
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_1016
.label_1010:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1019
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1028:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1025
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_1027
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_1028
	jmp	.label_1019
.label_1013:
	mov	qword ptr [r13], 0
	jmp	.label_1016
.label_1025:
	mov	rcx, rax
	jmp	.label_1012
.label_1027:
	mov	r14, qword ptr [rcx]
.label_1012:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_1016:
	xor	r12d, r12d
	test	r14, r14
	je	.label_1019
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_1018
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1014
	cvtsi2ss	xmm1, rax
	jmp	.label_1026
.label_1014:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1026:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1029
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_1011
.label_1029:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1011:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1018
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1020
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_916]
	jbe	.label_1022
	movss	xmm4, dword ptr [rip + label_919]
	ucomiss	xmm4, xmm3
	jbe	.label_1022
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1022
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_910]
	jbe	.label_1022
	movss	xmm4, dword ptr [rip + label_916]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_1022
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_904]
	ucomiss	xmm5, xmm3
	jb	.label_1022
	ucomiss	xmm3, xmm4
	ja	.label_1015
.label_1022:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_1015
.label_1020:
	mov	eax, OFFSET FLAT:default_tuning
.label_1015:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1018
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1021
	mulss	xmm0, dword ptr [rax + 8]
.label_1021:
	movss	xmm1, dword ptr [rip + label_908]
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
	jne	.label_1018
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1023
	nop	word ptr cs:[rax + rax]
.label_1017:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_1017
.label_1023:
	mov	qword ptr [r15 + 0x48], 0
.label_1018:
	mov	r12, r14
.label_1019:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1024:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2d0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b300

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40b310

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1031
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1032
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_1031:
	xor	eax, eax
	ret	
.label_1032:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b340
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1033
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1034
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_1033:
	xor	eax, eax
	ret	
.label_1034:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b370

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b390

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
	js	.label_1036
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1035
	mov	dword ptr [r14], ebp
	jmp	.label_1036
.label_1035:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1036:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b3e0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1037
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1039
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1041
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1039
	mov	esi, OFFSET FLAT:label_1040
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1042
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1042:
	mov	rbx, r14
.label_1039:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1037:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1038
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b490

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_1043
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_1043:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b4e0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b510
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
	#Procedure 0x40b550
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
	#Procedure 0x40b560
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
	#Procedure 0x40b570
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
	#Procedure 0x40b5b0
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
	#Procedure 0x40b5d0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1044
	test	rdx, rdx
	je	.label_1044
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1044:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b600
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
	#Procedure 0x40b680

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
	jmp	.label_1099
	nop	
.label_1064:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_1126
	or	al, dl
	jne	.label_1126
	test	dil, 1
	jne	.label_1141
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1126
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_1099
	jmp	.label_1126
.label_1915:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_1147
	test	rbp, rbp
	je	.label_1151
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_1151:
	mov	r14d, 1
	jmp	.label_1153
.label_1916:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1157
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_1058
.label_1147:
	xor	r14d, r14d
.label_1153:
	mov	eax, OFFSET FLAT:label_1157
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_1164
	nop	
.label_1099:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1045
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_1081]
.label_1917:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_1059
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_1067
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1918:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_1077
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1077
	xor	r14d, r14d
	nop	
.label_1155:
	cmp	r14, rbp
	jae	.label_1139
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_1139:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1155
.label_1077:
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
	jmp	.label_1058
.label_1910:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1058
.label_1913:
	mov	al, 1
.label_1911:
	mov	r12b, 1
.label_1914:
	test	r12b, 1
	mov	cl, 1
	je	.label_1154
	mov	ecx, eax
.label_1154:
	mov	al, cl
.label_1912:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_1109
	test	rbp, rbp
	je	.label_1116
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_1116:
	mov	r14d, 1
	jmp	.label_1119
.label_1109:
	xor	r14d, r14d
.label_1119:
	mov	ecx, OFFSET FLAT:label_1067
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_1164:
	mov	sil, r12b
.label_1058:
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
	jmp	.label_1129
	nop	word ptr cs:[rax + rax]
.label_1131:
	inc	r12
.label_1129:
	cmp	r11, -1
	je	.label_1107
	cmp	r12, r11
	jne	.label_1160
	jmp	.label_1163
	nop	word ptr cs:[rax + rax]
.label_1107:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_1168
.label_1160:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_1047
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_1050
	cmp	r11, -1
	jne	.label_1050
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1050:
	cmp	rbx, r11
	jbe	.label_1066
.label_1047:
	xor	esi, esi
.label_1092:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_1068
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1073]
.label_1892:
	test	r12, r12
	jne	.label_1078
	jmp	.label_1080
	nop	word ptr cs:[rax + rax]
.label_1066:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_1090
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_1092
	jmp	.label_1082
.label_1090:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_1092
.label_1896:
	xor	eax, eax
	cmp	r11, -1
	je	.label_1102
	test	r12, r12
	jne	.label_1106
	cmp	r11, 1
	je	.label_1080
	xor	r13d, r13d
	jmp	.label_1072
.label_1885:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1112
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1082
	cmp	r8d, 2
	jne	.label_1088
	mov	eax, r9d
	and	al, 1
	jne	.label_1088
	cmp	r14, rbp
	jae	.label_1124
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1124:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1127
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1127:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1132
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1132:
	add	r14, 3
	mov	r9b, 1
.label_1088:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_1138
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_1138:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_1143
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_1143
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1143
	cmp	r14, rbp
	jae	.label_1140
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_1140:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_1055
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_1055:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1072
.label_1886:
	mov	bl, 0x62
	jmp	.label_1135
.label_1887:
	mov	cl, 0x74
	jmp	.label_1125
.label_1888:
	mov	bl, 0x76
	jmp	.label_1135
.label_1889:
	mov	bl, 0x66
	jmp	.label_1135
.label_1890:
	mov	cl, 0x72
	jmp	.label_1125
.label_1893:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_1171
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1051
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
	jae	.label_1053
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1053:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1069
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_1069:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1076
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1076:
	add	r14, 3
	xor	r9d, r9d
.label_1171:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1072
.label_1894:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_1085
	cmp	r8d, 2
	jne	.label_1078
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1078
	jmp	.label_1051
.label_1895:
	cmp	r8d, 2
	jne	.label_1094
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1051
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_1083
.label_1068:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_1098
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_1162
.label_1102:
	test	r12, r12
	jne	.label_1120
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_1120
.label_1080:
	mov	dl, 1
.label_1891:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_1051
	xor	eax, eax
	mov	r13b, dl
.label_1072:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_1130
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_1133
	jmp	.label_1134
	nop	word ptr cs:[rax + rax]
.label_1130:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_1134
.label_1133:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1079
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_1145
	nop	dword ptr [rax]
.label_1134:
	test	sil, sil
.label_1145:
	mov	ebx, r15d
	je	.label_1084
	jmp	.label_1149
.label_1079:
	mov	ebx, r15d
	jmp	.label_1149
.label_1112:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_1131
	xor	r15d, r15d
	jmp	.label_1078
.label_1094:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_1125
	xor	eax, eax
	mov	r15b, 0x5c
.label_1083:
	xor	r13d, r13d
	jmp	.label_1084
.label_1125:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_1051
.label_1135:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_1072
	nop	
.label_1149:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1082
	cmp	r8d, 2
	jne	.label_1046
	mov	eax, r9d
	and	al, 1
	jne	.label_1046
	cmp	r14, rbp
	jae	.label_1049
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1049:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1054
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_1054:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1108
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1108:
	add	r14, 3
	mov	r9b, 1
.label_1046:
	cmp	r14, rbp
	jae	.label_1146
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1146:
	inc	r14
	jmp	.label_1165
.label_1098:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_1074
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_1074:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_1100
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_1070:
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
	je	.label_1095
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_1103
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1121
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_1142
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_1062:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1150
	bt	rsi, rdx
	jb	.label_1051
.label_1150:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_1062
.label_1142:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_1137
	xor	r13d, r13d
.label_1137:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1070
	jmp	.label_1105
.label_1143:
	xor	r13d, r13d
	jmp	.label_1072
.label_1120:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_1072
.label_1085:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_1078
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_1078
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_1078
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1159
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1118
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1167
	cmp	r14, rbp
	jae	.label_1169
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_1169:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1048
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1048:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1156
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_1156:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_1075
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_1075:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_1118:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_1072
.label_1078:
	xor	eax, eax
.label_1106:
	xor	r13d, r13d
	jmp	.label_1072
.label_1100:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_1101:
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
	je	.label_1091
	cmp	rbp, -1
	je	.label_1093
	cmp	rbp, -2
	je	.label_1095
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_1097
	xor	r13d, r13d
.label_1097:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_1101
	jmp	.label_1105
.label_1095:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_1113
	lea	rax, [r10 + r12]
.label_1122:
	cmp	byte ptr [rax + rsi], 0
	je	.label_1113
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_1122
.label_1113:
	mov	qword ptr [rsp + 0x40], rsi
.label_1103:
	xor	r13d, r13d
	jmp	.label_1121
.label_1093:
	xor	r13d, r13d
.label_1091:
	mov	r10, qword ptr [rsp + 0x28]
.label_1121:
	mov	r12, qword ptr [rsp + 0x40]
.label_1105:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_1162:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_1057
	test	al, al
	je	.label_1057
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1072
.label_1057:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_1144
	nop	word ptr [rax + rax]
.label_1104:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_1144:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_1148
	test	sil, 1
	je	.label_1158
	cmp	r14, rbp
	jae	.label_1152
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_1152:
	inc	r14
	xor	esi, esi
	jmp	.label_1158
	nop	word ptr cs:[rax + rax]
.label_1148:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_1082
	cmp	r8d, 2
	jne	.label_1161
	mov	eax, r9d
	and	al, 1
	jne	.label_1161
	cmp	r14, rbp
	jae	.label_1166
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1166:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1170
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_1170:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1123
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_1123:
	add	r14, 3
	mov	r9b, 1
.label_1161:
	cmp	r14, rbp
	jae	.label_1056
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_1056:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1061
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1061:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_1071
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_1071:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1158:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_1084
	test	r9b, 1
	je	.label_1086
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_1136
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_1089
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_1089:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_1096
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_1096:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_1086
	nop	word ptr cs:[rax + rax]
.label_1136:
	mov	rbx, rcx
.label_1086:
	cmp	r14, rbp
	jae	.label_1104
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_1104
	nop	
.label_1084:
	test	r9b, 1
	je	.label_1110
	and	al, 1
	jne	.label_1110
	cmp	r14, rbp
	jae	.label_1115
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_1115:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_1117
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_1117:
	add	r14, 2
	xor	r9d, r9d
.label_1110:
	mov	ebx, r15d
.label_1165:
	cmp	r14, rbp
	jae	.label_1128
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_1128:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_1131
.label_1159:
	xor	r13d, r13d
	jmp	.label_1072
	nop	word ptr cs:[rax + rax]
.label_1163:
	mov	rcx, r12
.label_1168:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1064
	or	al, dl
	jne	.label_1064
	mov	r11, rcx
	jmp	.label_1082
.label_1051:
	mov	eax, 2
.label_1114:
	mov	qword ptr [rsp + 0x38], rax
.label_1082:
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
.label_1111:
	mov	r14, rax
.label_1087:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1126:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_1063
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_1052
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1052
	inc	rdx
	nop	dword ptr [rax + rax]
.label_1065:
	cmp	r14, rbp
	jae	.label_1060
	mov	byte ptr [rcx + r14], al
.label_1060:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1065
	jmp	.label_1052
.label_1141:
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
	jmp	.label_1111
.label_1063:
	mov	rcx, qword ptr [rsp + 0x10]
.label_1052:
	cmp	r14, rbp
	jae	.label_1087
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1087
.label_1167:
	mov	eax, 5
	jmp	.label_1114
.label_1045:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40c4b0
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
	#Procedure 0x40c580
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
	je	.label_1172
	mov	qword ptr [rax], rbx
.label_1172:
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
	#Procedure 0x40c670
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1173
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1175:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1175
.label_1173:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1176
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1177], OFFSET FLAT:slot0
.label_1176:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1174
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1174:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c710
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c720

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
	js	.label_1178
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1181
	cmp	r12d, 0x7fffffff
	je	.label_1183
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
	jne	.label_1179
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1179:
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
.label_1181:
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
	jbe	.label_1184
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1180
.label_1184:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1182
	mov	rdi, r14
	call	free
.label_1182:
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
.label_1180:
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
.label_1178:
	call	abort
.label_1183:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c8e0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c8f0
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
	#Procedure 0x40c910
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
	#Procedure 0x40c930

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
	je	.label_1185
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
.label_1185:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c9a0
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
	je	.label_1186
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
.label_1186:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca10

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
	je	.label_1187
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
.label_1187:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ca80
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
	je	.label_1188
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
.label_1188:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40caf0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
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
	#Procedure 0x40cb60
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
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
	#Procedure 0x40cbd0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
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
	#Procedure 0x40cc30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
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
	#Procedure 0x40cc90

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
	je	.label_1192
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
.label_1192:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd30
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1193
	test	rdx, rdx
	je	.label_1193
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1193:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cda0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1194
	test	rdx, rdx
	je	.label_1194
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1194:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce10
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1195
	test	rsi, rsi
	je	.label_1195
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1195:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40ce80
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1189]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1190]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1191]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1196
	test	rsi, rsi
	je	.label_1196
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
.label_1196:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cef0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf00
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
	#Procedure 0x40cf20

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf40

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
	#Procedure 0x40cf60

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
	jne	.label_1202
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1198
	cmp	ecx, 0x55
	jne	.label_1197
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1197
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1197
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1197
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1197
	cmp	byte ptr [rax + 5], 0
	jne	.label_1197
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1204
	mov	eax, OFFSET FLAT:label_1205
	jmp	.label_1201
.label_1198:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1197
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1197
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1197
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1197
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1197
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1197
	cmp	byte ptr [rax + 7], 0
	je	.label_1203
.label_1197:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1157
	mov	eax, OFFSET FLAT:label_1067
.label_1201:
	cmove	rax, rcx
.label_1202:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1203:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1199
	mov	eax, OFFSET FLAT:label_1200
	jmp	.label_1201
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d030

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r12d, r8d
	mov	r13, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r13
	mov	r9d, r12d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	mov	rcx, rax
	test	ebx, ebx
	jns	.label_1210
	mov	eax, dword ptr [rcx]
	cmp	eax, 0x16
	je	.label_1208
	cmp	eax, 0x5f
	je	.label_1208
	cmp	eax, 0x26
	jne	.label_1210
.label_1208:
	test	r12d, r12d
	je	.label_1211
	cmp	r12d, 1
	jne	.label_1212
	mov	rbx, rcx
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	mov	rcx, rbx
	test	eax, eax
	je	.label_1207
	mov	eax, dword ptr [rcx]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1217
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1210
.label_1207:
	mov	dword ptr [rcx], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1210
.label_1211:
	xor	r12d, r12d
.label_1217:
	mov	qword ptr [rsp], rcx
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1206
	test	rax, rax
	je	.label_1206
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_1215
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1206
.label_1215:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1210
	test	r12b, r12b
	je	.label_1213
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	je	.label_1206
	mov	dword ptr [rax], 2
	jmp	.label_1210
.label_1212:
	mov	dword ptr [rcx], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1210
.label_1213:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1216
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1210
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1206
	jmp	.label_1210
.label_1216:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1209
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	jne	.label_1214
.label_1206:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1210:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1209:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1210
.label_1214:
	mov	dword ptr [rax], 0x15
	jmp	.label_1210
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d230

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_85
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1218
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_1218:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d280

	.globl safe_write
	.type safe_write, @function
safe_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_1220:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1219
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1220
	cmp	rbx, 0x7ff00001
	jb	.label_1219
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1220
.label_1219:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d2e0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d300

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_1222
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1225
.label_1222:
	xor	ebp, ebp
.label_1221:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1225:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rcx, [rsp + 0xa8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 8]
	mov	rdx, rbp
	call	__fxstatat
	test	eax, eax
	je	.label_1223
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_705
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1223:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rcx, [rsp + 0x18]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1227
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_705
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1227:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1224
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1226
.label_1224:
	xor	ebp, ebp
.label_1226:
	mov	rdi, rbx
	call	free
	jmp	.label_1221
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d450

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rdi
	mov	eax, esi
	xor	r15d, r15d
	test	r12, r12
	je	.label_1243
	mov	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	dec	rax
	mov	qword ptr [rsp + 0x20], rax
	cmp	rax, 2
	jae	.label_1254
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	ebx, ebx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	xor	r14d, r14d
	jmp	.label_1229
.label_1254:
	xor	r14d, r14d
	xor	ebx, ebx
	xor	eax, eax
	jmp	.label_1235
.label_1231:
	inc	rcx
	mov	rdi, r15
	mov	r15, rcx
	call	xstrdup
	mov	rcx, r13
	shl	rcx, 4
	mov	qword ptr [rbx + rcx], rax
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rbx + rcx + 8], rax
	inc	r13
	add	r14, r15
	jmp	.label_1229
	nop	word ptr cs:[rax + rax]
.label_1232:
	movzx	eax, byte ptr [rbp + 0x13]
	cmp	al, 0x2e
	jne	.label_1250
	xor	eax, eax
	cmp	byte ptr [rbp + 0x14], 0x2e
	sete	al
	movzx	eax, byte ptr [rbp + rax + 0x14]
.label_1250:
	test	al, al
	jne	.label_1256
.label_1229:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1232
	jmp	.label_1233
.label_1256:
	mov	r15, rbp
	add	r15, 0x13
	mov	rdi, r15
	call	strlen
	mov	rcx, rax
	cmp	qword ptr [rsp + 8], r13
	jne	.label_1231
	test	rbx, rbx
	mov	qword ptr [rsp + 0x10], rcx
	je	.label_1242
	movabs	rax, 0x555555555555554
	cmp	r13, rax
	ja	.label_1245
	mov	rax, r13
	shr	rax, 1
	lea	rcx, [r13 + rax + 1]
	jmp	.label_1228
.label_1242:
	test	r13, r13
	mov	rcx, r13
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1245
.label_1228:
	mov	rax, rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsi, rcx
	shl	rsi, 4
	mov	rdi, rbx
	call	xrealloc
	mov	rbx, rax
	mov	rcx, qword ptr [rsp + 0x10]
	jmp	.label_1231
.label_1233:
	mov	r12, rbx
	xor	eax, eax
	jmp	.label_1237
	nop	
.label_1240:
	add	r14, rbx
	mov	rdi, r14
	mov	rsi, rbp
	call	memcpy
	mov	r14, r13
	mov	rax, rbx
	mov	rbx, r15
.label_1235:
	mov	qword ptr [rsp], rax
	nop	dword ptr [rax + rax]
.label_1230:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1252
	movzx	eax, byte ptr [rbp + 0x13]
	cmp	al, 0x2e
	jne	.label_1255
	xor	eax, eax
	cmp	byte ptr [rbp + 0x14], 0x2e
	sete	al
	movzx	eax, byte ptr [rbp + rax + 0x14]
.label_1255:
	test	al, al
	je	.label_1230
	add	rbp, 0x13
	mov	rdi, rbp
	call	strlen
	lea	rdx, [rax + 1]
	mov	rcx, rbx
	sub	rcx, r14
	cmp	rcx, rdx
	lea	r13, [rax + r14 + 1]
	jbe	.label_1234
	mov	r15, rbx
	mov	rbx, qword ptr [rsp]
	jmp	.label_1240
.label_1234:
	cmp	r13, r14
	jb	.label_1241
	cmp	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rdx
	je	.label_1244
	movabs	rax, 0x5555555555555554
	cmp	r13, rax
	jae	.label_1241
	mov	rax, r13
	shr	rax, 1
	lea	rsi, [r13 + rax + 1]
	jmp	.label_1239
.label_1244:
	test	r13, r13
	mov	rsi, r13
	mov	eax, 0x80
	cmove	rsi, rax
	test	rsi, rsi
	js	.label_1253
.label_1239:
	mov	rdi, qword ptr [rsp]
	mov	r15, rsi
	call	xrealloc
	mov	rbx, rax
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1240
.label_1252:
	mov	rax, rbx
	xor	r12d, r12d
	xor	r13d, r13d
.label_1237:
	mov	ebx, dword ptr [r15]
	test	ebx, ebx
	je	.label_1238
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp]
	call	free
	mov	dword ptr [r15], ebx
	xor	r15d, r15d
	jmp	.label_1243
.label_1238:
	cmp	qword ptr [rsp + 0x20], 1
	ja	.label_1246
	test	r13, r13
	je	.label_1248
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [(rax * 8) + comparison_function_table]
	mov	edx, 0x10
	mov	rbx, r12
	mov	rdi, rbx
	mov	rsi, r13
	call	qsort
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1236:
	lea	rbp, [r15 + r14]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r14
	sub	r14, rbp
	add	r14, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r13
	jne	.label_1236
	jmp	.label_1249
.label_1246:
	cmp	rax, r14
	jne	.label_1251
	lea	rsi, [r14 + 1]
	mov	rdi, qword ptr [rsp]
	call	xrealloc
	mov	r15, rax
	jmp	.label_1247
.label_1251:
	mov	r15, qword ptr [rsp]
	jmp	.label_1247
.label_1248:
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
.label_1249:
	mov	rdi, r12
	call	free
.label_1247:
	mov	byte ptr [r15 + r14], 0
.label_1243:
	mov	rax, r15
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1241:
	call	xalloc_die
.label_1245:
	call	xalloc_die
.label_1253:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d7a0

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1257
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1257
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1257:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d7f0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d800

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d820

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebp, esi
	mov	r15, rdi
	call	__errno_location
	mov	r13, rax
	mov	r12d, dword ptr [r13]
	mov	rdi, r15
	call	strlen
	mov	rsi, rbx
	mov	r14, rax
	movsxd	rbx, ebp
	lea	rax, [rbx + rsi]
	cmp	r14, rax
	jb	.label_1263
	mov	rax, r14
	sub	rax, rsi
	sub	rax, rbx
	add	rax, r15
	mov	rcx, -1
	nop	dword ptr [rax]
.label_1258:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_1258
	cmp	rcx, rsi
	jae	.label_1261
.label_1263:
	mov	dword ptr [r13], 0x16
.label_1267:
	mov	eax, 0xffffffff
.label_1268:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1261:
	xor	edi, edi
	mov	qword ptr [rsp + 8], rsi
	call	randint_all_new
	mov	rbp, rax
	mov	eax, 0xffffffff
	test	rbp, rbp
	je	.label_1268
	mov	dword ptr [rsp + 0x1c], r12d
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x20], r15
	je	.label_1266
	neg	rax
	sub	r14, rbx
	add	r14, r15
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_1262:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_1265:
	mov	esi, 0x3d
	mov	rdi, rbp
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [r14 + rbx], al
	inc	rbx
	jne	.label_1265
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_1264
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_1259
	inc	r12d
	cmp	r12d, 0x3a2f8
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 8]
	jb	.label_1262
	jmp	.label_1260
.label_1266:
	xor	ebx, ebx
.label_1269:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_1264
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_1259
	inc	ebx
	cmp	ebx, 0x3a2f7
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	jbe	.label_1269
.label_1260:
	mov	rdi, rbp
	call	randint_all_free
	mov	dword ptr [r13], 0x11
	jmp	.label_1267
.label_1264:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	dword ptr [r13], eax
	mov	r13d, eax
.label_1259:
	mov	rdi, rbp
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], r13d
	mov	eax, r15d
	jmp	.label_1268
	.section	.text
	.align	16
	#Procedure 0x40d9e0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1270
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1274]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1270:
	mov	edi, OFFSET FLAT:label_1271
	mov	esi, OFFSET FLAT:label_1272
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1273
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da20

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da40

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da50

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	push	rbx
	sub	rsp, 0x90
	mov	rax, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	rsi, rax
	call	__lxstat
	mov	ebx, eax
	call	__errno_location
	test	ebx, ebx
	je	.label_1275
	cmp	dword ptr [rax], 0x4b
	jne	.label_1276
.label_1275:
	mov	dword ptr [rax], 0x11
.label_1276:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40daa0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1277
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1274]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1277:
	mov	edi, OFFSET FLAT:label_1271
	mov	esi, OFFSET FLAT:label_1272
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1273
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40dae0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40daf0

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
	ja	.label_1278
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
	jmp	.label_1279
.label_1278:
	mov	eax, ebx
.label_1279:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db40

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db60

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	rbp, rdx
	mov	r14, qword ptr [rbp + 0x58]
	mov	r15, qword ptr [rbp + 0x60]
	mov	r12, qword ptr [rcx + 0x58]
	mov	r13d, dword ptr [rcx + 0x60]
	test	r8b, 1
	je	.label_1297
	cmp	r14, r12
	jne	.label_1283
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1284
.label_1283:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1284
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1284
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	jne	.label_1294
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [rip + utimecmpat.ht],  rbx
	test	rbx, rbx
	je	.label_1303
.label_1294:
	mov	rsi, qword ptr [rip + utimecmpat.new_dst_res]
	test	rsi, rsi
	jne	.label_1282
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rip + utimecmpat.new_dst_res],  rsi
	test	rsi, rsi
	je	.label_1287
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1282:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_1295
	cmp	rax, qword ptr [rip + utimecmpat.new_dst_res]
	jne	.label_1281
	mov	qword ptr [rip + utimecmpat.new_dst_res],  0
	jmp	.label_1281
.label_1295:
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	je	.label_1298
.label_1287:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	hash_lookup
.label_1298:
	test	rax, rax
	jne	.label_1281
.label_1303:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rax, [rsp + 0x30]
.label_1281:
	mov	r10, qword ptr [rax + 8]
	movabs	rcx, 0xff00000000
	test	r10, rcx
	jne	.label_1285
	mov	qword ptr [rsp + 0x10], rax
	mov	r11, qword ptr [rbp + 0x48]
	mov	r9, qword ptr [rbp + 0x50]
	movsxd	r8, dword ptr [rbp + 0x70]
	mov	ecx, r11d
	or	ecx, r14d
	or	ecx, dword ptr [rbp + 0x68]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	imul	rsi, r8, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	edi, r8d
	sub	edi, esi
	movsxd	rsi, r15d
	imul	rsi, rsi, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	mov	ebp, r15d
	sub	ebp, esi
	or	ebp, edx
	or	ebp, edi
	je	.label_1289
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 1
	mov	r10d, 1
.label_1280:
	mov	dword ptr [rax + 8], r10d
	mov	byte ptr [rax + 0xc], 1
.label_1285:
	xor	eax, eax
	cmp	r10d, 0x77359400
	sete	al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1297:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1284
	mov	ecx, 1
	jg	.label_1284
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1284
	setg	al
	movzx	ecx, al
.label_1284:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1289:
	cmp	r10d, 0xb
	jl	.label_1286
	mov	qword ptr [rsp + 0x20], r11
	mov	ebx, 0xa
	mov	qword ptr [rsp + 0x18], r9
	mov	edx, r9d
	mov	edi, r15d
.label_1302:
	mov	r9, rbx
	movsxd	rsi, edi
	imul	rdi, rsi, 0x66666667
	mov	rsi, rdi
	shr	rsi, 0x3f
	sar	rdi, 0x22
	add	edi, esi
	movsxd	rax, r8d
	imul	r8, rax, 0x66666667
	mov	rsi, r8
	shr	rsi, 0x3f
	sar	r8, 0x22
	add	r8d, esi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	movsxd	r11, edx
	imul	rsi, r11, 0x66666667
	mov	rbp, rsi
	shr	rbp, 0x3f
	sar	rsi, 0x22
	add	esi, ebp
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	r11d, esi
	movsxd	rsi, r8d
	imul	rbp, rsi, 0x66666667
	mov	rbx, rbp
	shr	rbx, 0x3f
	sar	rbp, 0x22
	add	ebp, ebx
	add	ebp, ebp
	lea	ebx, [rbp + rbp*4]
	sub	esi, ebx
	or	esi, r11d
	movsxd	rbp, edi
	imul	rbx, rbp, 0x66666667
	mov	rax, rbx
	shr	rax, 0x3f
	sar	rbx, 0x22
	add	ebx, eax
	add	ebx, ebx
	lea	eax, [rbx + rbx*4]
	sub	ebp, eax
	mov	rbx, r9
	or	ebp, esi
	jne	.label_1291
	cmp	ebx, 0x3b9aca00
	je	.label_1301
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	cmp	ebx, r10d
	jl	.label_1302
.label_1291:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	cmp	ebx, 2
	mov	r10d, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
	jl	.label_1280
	jmp	.label_1288
.label_1286:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 0xa
	mov	ebx, 0xa
	jmp	.label_1288
.label_1301:
	xor	ecx, 1
	mov	ebx, 0x3b9aca00
	shl	ebx, cl
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
.label_1288:
	xor	edi, edi
	cmp	ebx, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1284
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1300
	test	al, al
	je	.label_1284
.label_1300:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1284
	jne	.label_1290
	mov	eax, r13d
	cdq	
	idiv	ebx
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1284
.label_1290:
	mov	qword ptr [rsp + 0x40], r11
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r14
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, ebx
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	add	eax, r15d
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x28]
	call	utimensat
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1284
	mov	qword ptr [rsp + 0x18], rbx
	lea	rcx, [rsp + 0x68]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, eax
	movsxd	rax, ebx
	mov	rcx, qword ptr [rsp + 0xc0]
	xor	rcx, r14
	or	rcx, rax
	movsxd	rax, r15d
	mov	rdx, qword ptr [rsp + 0xc8]
	xor	rdx, rax
	or	rdx, rcx
	je	.label_1293
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	utimensat
.label_1293:
	test	ebx, ebx
	je	.label_1299
	mov	ecx, 0xfffffffe
	jmp	.label_1284
.label_1299:
	mov	eax, dword ptr [rsp + 0xc0]
	and	eax, 1
	neg	eax
	and	eax, 0x3b9aca00
	add	rax, qword ptr [rsp + 0xc8]
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	r10d, 1
	cmp	ecx, edx
	mov	rbp, qword ptr [rsp + 0x18]
	jne	.label_1292
	mov	ecx, 1
.label_1304:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1292
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1296
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	r10d, ecx
	je	.label_1304
.label_1292:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1280
.label_1296:
	mov	r10d, ebp
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1280
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0b0

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e0c0

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0d0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0e0

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14, rsi
	mov	r15d, edi
	xor	ebx, ebx
	test	rdx, rdx
	lea	r13, [rsp]
	cmove	r13, rdx
	je	.label_1341
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1306
	cmp	rax, 0x3ffffffe
	jne	.label_1315
.label_1306:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1317
	cmp	rdi, 0x3ffffffe
	je	.label_1317
.label_1315:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1311
.label_1317:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1327
	mov	qword ptr [r13], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1327:
	cmp	rdi, 0x3ffffffe
	jne	.label_1332
	mov	qword ptr [r13 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1332:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1311
.label_1341:
	test	r15d, r15d
	jns	.label_1338
	test	r14, r14
	jne	.label_1338
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1311
.label_1338:
	cmp	dword ptr [rip + utimensat_works_really],  0
	js	.label_1333
	cmp	ebx, 2
	jne	.label_1316
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1344
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1309
.label_1344:
	mov	rsi, r14
	call	__xstat
.label_1309:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1311
	cmp	qword ptr [r13 + 8], 0x3ffffffe
	jne	.label_1313
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	mov	ebx, 3
	jmp	.label_1316
.label_1313:
	mov	ebx, 3
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	jne	.label_1316
	movups	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmmword ptr [r13 + 0x10], xmm0
.label_1316:
	test	r15d, r15d
	jns	.label_1326
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, r13
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1329
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1331
.label_1329:
	je	.label_1322
	call	__errno_location
.label_1331:
	cmp	dword ptr [rax], 0x26
	jne	.label_1322
.label_1326:
	test	r15d, r15d
	js	.label_1333
	mov	edi, r15d
	mov	rsi, r13
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1336
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1337
.label_1322:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1311
.label_1336:
	je	.label_1339
	call	__errno_location
.label_1337:
	cmp	dword ptr [rax], 0x26
	jne	.label_1339
.label_1333:
	mov	dword ptr [rip + utimensat_works_really],  0xffffffff
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1340
	cmp	ebx, 3
	je	.label_1342
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1343
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1318
.label_1340:
	xor	r12d, r12d
	test	r13, r13
	jne	.label_1308
	jmp	.label_1310
.label_1339:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1311
.label_1343:
	mov	rsi, r14
	call	__xstat
.label_1318:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1311
.label_1342:
	test	r13, r13
	je	.label_1319
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1335
	cmp	rax, 0x3fffffff
	jne	.label_1323
	cmp	qword ptr [r13 + 0x18], 0x3fffffff
	jne	.label_1324
.label_1319:
	xor	r12d, r12d
	jmp	.label_1310
.label_1335:
	xor	ebp, ebp
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	je	.label_1311
	lea	rbx, [r13 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	jmp	.label_1330
.label_1323:
	lea	rbx, [r13 + 0x18]
	jmp	.label_1330
.label_1324:
	lea	rbx, [r13 + 0x18]
	mov	rdi, r13
	call	gettime
.label_1330:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1334
	cmp	rax, 0x3ffffffe
	jne	.label_1308
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [r13 + 0x10], rax
	mov	qword ptr [r13 + 0x18], rcx
	jmp	.label_1308
.label_1334:
	add	r13, 0x10
	mov	rdi, r13
	call	gettime
.label_1308:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rsp + 0x40], rax
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsp + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	mov	rax, rcx
	imul	qword ptr [rsp + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x58], rdx
	lea	r12, [rsp + 0x40]
.label_1310:
	test	r15d, r15d
	js	.label_1314
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1321
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1311
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1325
.label_1314:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1325:
	mov	ebp, eax
.label_1311:
	mov	eax, ebp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1321:
	test	r12, r12
	je	.label_1311
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_1311
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1311
	lea	rdx, [r12 + 0x10]
	mov	rcx, qword ptr [rsp + 0xb0]
	mov	rax, qword ptr [rsp + 0xc0]
	sub	rcx, qword ptr [r12]
	sub	rax, qword ptr [r12 + 0x10]
	movups	xmm0, xmmword ptr [r12]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	xor	edx, edx
	cmp	rbx, 0x7a120
	jl	.label_1305
	cmp	rcx, 1
	jne	.label_1305
	xor	edx, edx
	cmp	qword ptr [rsp + 0xb8], 0
	jne	.label_1305
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x28], 0
.label_1305:
	cmp	r14, 0x7a120
	jl	.label_1312
	cmp	rax, 1
	jne	.label_1312
	cmp	qword ptr [rsp + 0xc8], 0
	je	.label_1307
.label_1312:
	test	rdx, rdx
	jne	.label_1328
	jmp	.label_1320
.label_1307:
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], 0
.label_1328:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1320:
	xor	ebp, ebp
	jmp	.label_1311
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e570

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e590

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xb0
	mov	r14, rdi
	xor	ebx, ebx
	test	rsi, rsi
	lea	r15, [rsp]
	mov	r12, r15
	cmove	r12, rsi
	je	.label_1352
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r12 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1358
	cmp	rax, 0x3ffffffe
	jne	.label_1364
.label_1358:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1365
	cmp	rdi, 0x3ffffffe
	je	.label_1365
.label_1364:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1360:
	mov	ebp, 0xffffffff
.label_1351:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1365:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1355
	mov	qword ptr [r12], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1355:
	cmp	rdi, 0x3ffffffe
	jne	.label_1362
	mov	qword ptr [r12 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1362:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1351
.label_1352:
	cmp	dword ptr [rip + lutimensat_works_really],  0
	js	.label_1347
	cmp	ebx, 2
	jne	.label_1350
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1351
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1359
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1350
.label_1359:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1350
	movups	xmm0, xmmword ptr [rsp + 0x78]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1350:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1345
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1348
.label_1345:
	je	.label_1353
	call	__errno_location
.label_1348:
	cmp	dword ptr [rax], 0x26
	jne	.label_1353
.label_1347:
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1354
	cmp	ebx, 3
	je	.label_1356
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1351
.label_1356:
	xor	edx, edx
	test	r12, r12
	je	.label_1361
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1363
	cmp	rax, 0x3fffffff
	jne	.label_1366
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1361
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1349
.label_1353:
	mov	dword ptr [rip + utimensat_works_really],  1
	mov	dword ptr [rip + lutimensat_works_really],  1
	jmp	.label_1351
.label_1354:
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1351
	jmp	.label_1361
.label_1363:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1351
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1349
.label_1366:
	lea	rbx, [r12 + 0x18]
.label_1349:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1367
	cmp	rax, 0x3ffffffe
	jne	.label_1346
	mov	rax, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1346
.label_1367:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
.label_1346:
	mov	rdx, r15
.label_1361:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x38]
	cmp	eax, 0xa000
	jne	.label_1357
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1360
.label_1357:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
	jmp	.label_1351
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e870

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
	je	.label_1378
	mov	edx, OFFSET FLAT:label_1374
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1380
.label_1378:
	mov	edx, OFFSET FLAT:label_1381
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1386
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
	mov	esi, OFFSET FLAT:label_1382
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1369
	jmp	qword ptr [(r12 * 8) + label_1370]
.label_1920:
	add	rsp, 8
	jmp	.label_1368
.label_1369:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1377
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
	jmp	.label_1368
.label_1921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1383
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
.label_1922:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1384
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
.label_1923:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1375
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
.label_1924:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1372
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
	jmp	.label_1368
.label_1925:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1371
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
	jmp	.label_1368
.label_1926:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1373
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
	jmp	.label_1368
.label_1927:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1376
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
	jmp	.label_1368
.label_1929:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1379
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
	jmp	.label_1368
.label_1928:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1385
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
.label_1368:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ebd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1387:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1387
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ec00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1388
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1390
.label_1388:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1390:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1391
	cmp	r10d, 0x29
	jae	.label_1400
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1389
.label_1400:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1389:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1391
	cmp	r10d, 0x29
	jae	.label_1398
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1399
.label_1398:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1399:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1391
	cmp	r10d, 0x29
	jae	.label_1396
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1397
.label_1396:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1397:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1391
	cmp	r10d, 0x29
	jae	.label_1394
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1395
.label_1394:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1395:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1391
	cmp	r10d, 0x29
	jae	.label_1392
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1393
.label_1392:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1393:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1391
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1391
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1391
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1391
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1391:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edf0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1401
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1401:
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
	#Procedure 0x40ee80
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1402
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1404
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1403
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef00

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_1405
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
.label_1405:
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
	#Procedure 0x40ef30
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1406
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1407
	test	rax, rax
	je	.label_1406
.label_1407:
	pop	rbx
	ret	
.label_1406:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef70

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1408
	test	rax, rax
	je	.label_1409
.label_1408:
	pop	rbx
	ret	
.label_1409:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef90
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1410
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1411
	test	rbx, rbx
	jne	.label_1411
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1411:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1412
	test	rax, rax
	je	.label_1410
.label_1412:
	pop	rbx
	ret	
.label_1410:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40efe0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1413
	test	rbx, rbx
	jne	.label_1413
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1413:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1415
	test	rax, rax
	je	.label_1414
.label_1415:
	pop	rbx
	ret	
.label_1414:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40f010
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1419
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1421
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1416
.label_1419:
	test	rcx, rcx
	jne	.label_1422
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1422:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1417
.label_1416:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1418
	test	rbx, rbx
	jne	.label_1418
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1418:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1420
	test	rax, rax
	je	.label_1421
.label_1420:
	pop	rbx
	ret	
.label_1421:
	call	xalloc_die
.label_1417:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f0b0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1423
	test	rax, rax
	je	.label_1424
.label_1423:
	pop	rbx
	ret	
.label_1424:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f0d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1427
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1429
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1426
	call	free
	xor	eax, eax
	jmp	.label_1428
.label_1427:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1425
	mov	qword ptr [rsi], rbx
.label_1426:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1428
	test	rax, rax
	je	.label_1425
.label_1428:
	pop	rbx
	ret	
.label_1425:
	call	xalloc_die
.label_1429:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f140
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
	je	.label_1431
	test	r14, r14
	je	.label_1430
.label_1431:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1430:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f180
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1432
	call	rpl_calloc
	test	rax, rax
	je	.label_1432
	pop	rcx
	ret	
.label_1432:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1b0

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
	je	.label_1433
	test	r15, r15
	je	.label_1434
.label_1433:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1434:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f1f0

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
	je	.label_1436
	test	r15, r15
	je	.label_1435
.label_1436:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1435:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f240

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1437
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_705
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40f270

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_1439
	pop	rcx
	ret	
.label_1439:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1438
	mov	edi, OFFSET FLAT:label_1440
	mov	esi, OFFSET FLAT:label_1441
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_1442
	call	__assert_fail
.label_1438:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f2b0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_1443
	cmp	ecx, 0x11
	jne	.label_1444
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1443:
	ret	
.label_1444:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f2d0

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
	jle	.label_1445
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_1447
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_1447:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1446
.label_1445:
	xor	ebx, ebx
.label_1446:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f340

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1448
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1449
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1449
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1448:
	mov	ecx, 1
.label_1449:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f390

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1450
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1450
	test	byte ptr [rbx + 1], 1
	je	.label_1450
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1450:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f3d0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1451
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1452
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1452:
	add	rax, rcx
.label_1451:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f400

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
	jne	.label_1453
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1453
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1454
.label_1453:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1454:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1455
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1455:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f470

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
	jae	.label_1481
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1481
	test	bl, 0x12
	je	.label_1481
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1483
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
	je	.label_1488
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1466:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1466
	inc	rbp
	mov	ebx, r13d
.label_1488:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1475
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_1477
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1482
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
.label_1477:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_1468
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_1468:
	xor	r14d, r14d
	test	r13, r13
	je	.label_1463
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_1467
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1469:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_1471
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_1471
	nop	dword ptr [rax]
.label_1476:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_1471
	dec	rbx
	cmp	rbx, 1
	ja	.label_1476
	nop	word ptr cs:[rax + rax]
.label_1471:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_1484
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
	je	.label_1489
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_1465
.label_1489:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_1465:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1473
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_1459
.label_1473:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_1459
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_1459:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_1469
	jmp	.label_1457
.label_1481:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1474:
	xor	eax, eax
.label_1483:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1475:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_1490
.label_1467:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_1491:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1456
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
	jne	.label_1494
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_1479
.label_1494:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_1479:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_1485
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_1480
.label_1485:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_1480
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_1480:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_1491
.label_1457:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_1492
	cmp	r12, 2
	jb	.label_1492
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_1492:
	mov	r12, qword ptr [rsp + 0x18]
.label_1463:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_1461
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
	je	.label_1464
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_1486
	jmp	.label_1487
.label_1482:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_1470
.label_1461:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_1487
.label_1464:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_1487
	mov	rdi, rax
	call	cycle_check_init
.label_1486:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_1478
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1493
	mov	edi, OFFSET FLAT:label_146
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1458
.label_1456:
	mov	r14, r15
.label_1484:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_1487:
	test	r14, r14
	je	.label_1462
	nop	dword ptr [rax]
.label_1472:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_1460
	call	closedir
.label_1460:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_1472
.label_1462:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_1470:
	mov	rdi, rbp
.label_1490:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_1474
.label_1493:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_146
	xor	eax, eax
	call	openat_safer
.label_1458:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_1478
	or	byte ptr [r15 + 0x48], 4
.label_1478:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_1483
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40fab0

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
	jne	.label_1497
	test	al, 1
	je	.label_1497
	mov	dl, 1
.label_1497:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_1499
	and	eax, 2
	jne	.label_1499
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1500
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1495
.label_1499:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_1500
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_1495
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_1503
	mov	eax, dword ptr [r14]
.label_1495:
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
.label_1498:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1500:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_1504
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_1498
	cmp	ecx, 0x4000
	jne	.label_1501
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1496
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_1496
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1496:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_1498
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1502
	cmp	dl, 0x2e
	jne	.label_1498
	test	ecx, 0xff0000
	jne	.label_1498
.label_1502:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_1498
.label_1504:
	mov	ax, 8
	jmp	.label_1498
.label_1501:
	mov	ax, 3
	jmp	.label_1498
.label_1503:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_1498
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fc50

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
	jae	.label_1512
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1509
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1509
	mov	qword ptr [r13], rdi
	jmp	.label_1513
.label_1512:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_1513:
	test	rbx, rbx
	je	.label_1516
	nop	dword ptr [rax]
.label_1505:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1505
	mov	rdi, qword ptr [r13]
.label_1516:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_1514
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_1506
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1507
	mov	rdx, rsi
	jmp	.label_1510
.label_1509:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_1515
.label_1507:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_1508:
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
	jne	.label_1508
.label_1510:
	test	rcx, rcx
	je	.label_1506
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1511:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_1511
.label_1506:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_1514:
	mov	qword ptr [rcx + 0x10], 0
.label_1515:
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
	#Procedure 0x40fdd0

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1529
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1530
	nop	word ptr cs:[rax + rax]
.label_1517:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1534
	mov	rbx, qword ptr [rdi + 8]
.label_1534:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1517
	jmp	.label_1519
.label_1530:
	mov	rbx, rdi
.label_1519:
	mov	rdi, rbx
	call	free
.label_1529:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1522
	nop	word ptr cs:[rax + rax]
.label_1527:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1525
	call	closedir
.label_1525:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1527
.label_1522:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1532
	xor	ebp, ebp
	test	al, 4
	jne	.label_1521
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1535
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1535:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_1520
	jmp	.label_1521
.label_1532:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_1521
	call	close
.label_1520:
	test	eax, eax
	je	.label_1521
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1521:
	lea	rbx, [r14 + 0x60]
	jmp	.label_1526
	nop	dword ptr [rax + rax]
.label_1524:
	mov	edi, eax
	call	close
.label_1526:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1528
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1524
	jmp	.label_1526
.label_1528:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1531
	call	hash_free
.label_1531:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1533
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1518
	call	hash_free
	jmp	.label_1518
.label_1533:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1518:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_1523
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1523:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ff40

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
	je	.label_1551
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_1551
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_1586
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_1587
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_1575
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1549
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1549
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1591
	mov	edi, OFFSET FLAT:label_146
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1578
.label_1586:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
.label_2023:
	jmp	.label_1551
.label_1587:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_1538
.label_1575:
	lea	r12, [r15 + 0x70]
.label_1538:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_1541
	cmp	edx, 4
	je	.label_1542
	test	al, 0x40
	je	.label_1544
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1542
.label_1544:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1546
	test	ah, 0x10
	jne	.label_1552
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1554
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1556
	nop	word ptr cs:[rax + rax]
.label_1541:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_1562
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_1566
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_1541
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1559
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1570
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1570
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1571
	mov	edi, OFFSET FLAT:label_146
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1574
.label_1577:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1556:
	test	rax, rax
	jne	.label_1577
	jmp	.label_1554
.label_1542:
	test	ecx, 0x20000
	je	.label_1580
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_1580:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1583
	nop	word ptr cs:[rax + rax]
.label_1588:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1585
	call	closedir
.label_1585:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1588
	mov	qword ptr [r14 + 8], 0
.label_1583:
	mov	word ptr [r15 + 0x70], 6
.label_1565:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_1551
.label_1562:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_1590
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1593
	mov	rdi, r15
	call	free
	jmp	.label_1559
.label_1566:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1596
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_1551
.label_1596:
	test	ax, 0x102
	je	.label_1539
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1540
	call	hash_free
	jmp	.label_1540
.label_1552:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	nop	word ptr cs:[rax + rax]
.label_1553:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1550
	call	closedir
.label_1550:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1553
	mov	qword ptr [r14 + 8], 0
.label_1546:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1557
.label_1554:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1559
.label_1557:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1551
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_1565
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_1565
	mov	word ptr [r12], 7
	jmp	.label_1565
.label_1591:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_146
	xor	eax, eax
	call	openat_safer
.label_1578:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1568
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1549
.label_1593:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1551
	mov	rbx, qword ptr [r15 + 8]
.label_1590:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_1572
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_1561
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_1573
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_1576
	test	al, 1
	jne	.label_1555
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_104
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1584
.label_1572:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_1551
.label_1568:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_1549
.label_1539:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1540:
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
	je	.label_1592
	cmp	rbp, r15
	jne	.label_1594
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_1592
.label_1594:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_1592:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1536
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_1545
.label_1536:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_1545
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_1545
.label_1573:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1584:
	test	eax, eax
	je	.label_1555
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1555
.label_1576:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_1560
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_1564
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1560
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1560
.label_1571:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_146
	xor	eax, eax
	call	openat_safer
.label_1574:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_1569
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_1570
.label_1569:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_1570:
	mov	word ptr [rbx + 0x74], 3
.label_1559:
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
.label_1545:
	mov	r15, rbx
.label_1549:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1579
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1582
	cmp	rax, 2
	jne	.label_1561
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1548
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1548
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_1582
	cmp	rax, 0x58465342
	je	.label_1582
.label_1548:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1579
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1582
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1582
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1582:
	mov	ax, word ptr [r15 + 0x70]
.label_1579:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1595
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1581
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1581:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1589
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1537
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_1543
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_1537
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_1547
.label_1595:
	mov	rbx, r15
	jmp	.label_1551
.label_1589:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_1543
	mov	qword ptr [r15], r15
.label_1547:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_1551
.label_1543:
	mov	rbx, r15
	jmp	.label_1551
.label_1537:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_1551
.label_1564:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_1558
	cmp	esi, -0x64
	jne	.label_1561
.label_1558:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1563
	mov	edi, eax
	call	close
.label_1563:
	mov	dword ptr [r14 + 0x2c], r15d
.label_1560:
	mov	edi, dword ptr [rbp]
	call	close
.label_1555:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_1567
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_1567
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_1567:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_1551:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1561:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410700

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1597
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1599
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1597:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1598
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1598
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1599
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1598
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1598
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_1598:
	add	rsp, 0x18
	ret	
.label_1599:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410790

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
	je	.label_1604
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1610
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1610
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1610:
	test	eax, eax
	sete	r14b
	jmp	.label_1615
.label_1604:
	xor	r14d, r14d
.label_1615:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_1616
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_1602
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_1602
	and	eax, 0x200
	je	.label_1602
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1602
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_1602:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1611
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1612
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_1614
.label_1616:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1605
	and	eax, 0x200
	je	.label_1605
	mov	edi, r13d
	call	close
	jmp	.label_1605
.label_1612:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_1614:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1605
.label_1611:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_1606
	test	rbx, rbx
	je	.label_1609
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1609
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_1609
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1609
.label_1606:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_1608
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1613
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1613
	mov	eax, dword ptr [r15 + 0x48]
.label_1609:
	test	ah, 2
	jne	.label_1617
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1618
.label_1617:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_1619
	cmp	esi, -0x64
	jne	.label_1600
.label_1619:
	test	r14b, r14b
	je	.label_1601
	test	al, 4
	jne	.label_1603
	test	esi, esi
	js	.label_1603
	mov	edi, esi
	jmp	.label_1607
.label_1613:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1608:
	mov	ebp, 0xffffffff
.label_1618:
	test	r13d, r13d
	jns	.label_1605
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1605
.label_1601:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1603
	mov	edi, eax
.label_1607:
	call	close
.label_1603:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_1605:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1600:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410980

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
	je	.label_1678
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_1685
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
	jmp	.label_1631
.label_1678:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_1694
	mov	edi, dword ptr [r15 + 0x2c]
.label_1694:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_1622
	test	al, 1
	je	.label_1623
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_1622
.label_1623:
	mov	edx, 0x20000
.label_1622:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_1630
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_1633
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_1639
.label_1685:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_1630:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_1626
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_1644
.label_1633:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_1639
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
	je	.label_1647
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1656
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_1639
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_1656
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_1639
.label_1647:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_1639
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_1639:
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
	je	.label_1668
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1650
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_1650
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_1676
	cmp	rax, 0x9fa0
	je	.label_1650
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_1650
	cmp	rax, 0x5346414f
	je	.label_1650
	jmp	.label_1668
.label_1656:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1644
.label_1676:
	test	rax, rax
	je	.label_1650
	cmp	rax, 0x6969
	jne	.label_1668
.label_1650:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_1690
.label_1668:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_1691
.label_1690:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_1695
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_1695:
	test	ebp, ebp
	js	.label_1624
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1692
.label_1624:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_1632
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_1632:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_1638
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_1638
	call	close
.label_1638:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_1691:
	mov	dword ptr [rsp + 0xc], 0
.label_1631:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_1645
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1645:
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
.label_1635:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_1649
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_1681:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_1671
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_1673
	cmp	byte ptr [r13], 0x2e
	jne	.label_1673
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_1677
	test	al, al
	je	.label_1679
	jmp	.label_1673
	nop	dword ptr [rax]
.label_1677:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_1673
.label_1679:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_1681
	jmp	.label_1683
	nop	dword ptr [rax + rax]
.label_1673:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1658
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
	jae	.label_1696
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_1637
	nop	dword ptr [rax + rax]
.label_1696:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_1640
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_1642
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_1643
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_1646
.label_1643:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_1646:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_1637:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_1654
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
	jne	.label_1657
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1651
	nop	
.label_1657:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_1651:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_1667
	mov	eax, edx
	and	eax, 0x400
	jne	.label_1667
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_1675
	nop	dword ptr [rax + rax]
.label_1667:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_1662
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_1662:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_1682
	mov	eax, dword ptr [(rcx * 4) + label_1636]
.label_1682:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_1675:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_1663
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_1663:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_1621
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_1621
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_1628
	cmp	rax, 0x1021994
	je	.label_1628
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_1621
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_1621
.label_1628:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_1621:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_1635
	jmp	.label_1649
.label_1671:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_1659
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_1659:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_1649
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_1649
.label_1683:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_1649:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_1653
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_1655
	nop	word ptr cs:[rax + rax]
.label_1661:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1655:
	test	rcx, rcx
	je	.label_1660
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1661
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1661
.label_1660:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_1653
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_1672:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_1666
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_1666:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_1670
	mov	rdx, qword ptr [rcx + 8]
.label_1670:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_1672
.label_1653:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_1674
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1674:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_1680
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_1680
	cmp	dword ptr [rsp], 1
	je	.label_1684
	test	r14, r14
	jne	.label_1680
.label_1684:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_1686
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_104
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_1688
.label_1686:
	mov	rdi, r15
	call	restore_initial_cwd
.label_1688:
	mov	rcx, rbp
	test	eax, eax
	je	.label_1680
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_1626
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1625:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_1620
	call	closedir
.label_1620:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_1625
	jmp	.label_1626
.label_1680:
	test	r14, r14
	je	.label_1627
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_1629
	cmp	r14, 2
	jb	.label_1634
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1634
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_1626
.label_1627:
	cmp	dword ptr [rsp], 3
	jne	.label_1641
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_1641
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1641
	mov	word ptr [r13 + 0x70], 6
.label_1641:
	xor	r14d, r14d
	test	r12, r12
	je	.label_1626
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1652:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_1648
	call	closedir
.label_1648:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_1652
	jmp	.label_1626
.label_1629:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_1626
.label_1634:
	mov	r14, r12
	jmp	.label_1626
.label_1692:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_1631
.label_1654:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_1664
	nop	word ptr [rax + rax]
.label_1669:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_1665
	call	closedir
.label_1665:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1669
.label_1664:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_1644
.label_1640:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_1697
.label_1642:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_1697:
	mov	qword ptr [rsp + 0x48], r12
.label_1658:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_1687
	nop	word ptr cs:[rax + rax]
.label_1693:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1689
	call	closedir
.label_1689:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1693
.label_1687:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_1644:
	xor	r14d, r14d
.label_1626:
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
	#Procedure 0x411430

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1702
	test	ah, 2
	jne	.label_1704
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1699
.label_1704:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1700
	mov	edi, eax
	call	close
.label_1700:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_1702:
	xor	eax, eax
.label_1699:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_1703
	nop	word ptr [rax + rax]
.label_1698:
	mov	edi, eax
	call	close
.label_1703:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1701
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1698
	jmp	.label_1703
.label_1701:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4114b0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1705
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1705:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4114e0
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
	jne	.label_1715
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_1708
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1717
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1708
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_1708
.label_1715:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1708
.label_1717:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_1712
	nop	dword ptr [rax]
.label_1722:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1718
	call	closedir
.label_1718:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1722
.label_1712:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_1706
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_1706:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1714
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_1714
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_1714
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1710
	mov	edi, OFFSET FLAT:label_146
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1719
.label_1714:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_1708:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1710:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_146
	xor	eax, eax
	call	openat_safer
.label_1719:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_1709
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_1713
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_1716
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1708
.label_1709:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_1708
.label_1713:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_1720
	cmp	esi, -0x64
	jne	.label_1711
.label_1720:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1721
	mov	edi, eax
	call	close
.label_1721:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_1707
.label_1716:
	mov	edi, r15d
	call	close
.label_1707:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_1708
.label_1711:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411690

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
	#Procedure 0x4116a0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1723
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1723:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4116c0

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
	je	.label_1724
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1725
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
	je	.label_1726
.label_1725:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1729
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1724
.label_1729:
	mov	r12b, 1
	mov	r14, rbp
.label_1726:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1724
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1724
	test	r12b, r12b
	je	.label_1727
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1727
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1728
	cmp	rax, rbp
	je	.label_1727
	call	abort
.label_1728:
	mov	rdi, rbp
	call	free
.label_1727:
	mov	rax, qword ptr [rsp]
.label_1724:
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
	#Procedure 0x4117c0

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
	#Procedure 0x4117d0

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
	#Procedure 0x4117e0

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
	#Procedure 0x411810

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
	je	.label_1730
	cmp	r15, -2
	jb	.label_1730
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1730
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1730:
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
	#Procedure 0x411870

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411880

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411890
	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:

	cmp	esi, -1
	je	.label_1731
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1731:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118b0

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	rax, rsi
	mov	esi, dword ptr [rdi]
	cmp	edx, -1
	je	.label_1732
	mov	edi, edx
	call	fchmod
	jmp	.label_1733
.label_1732:
	mov	rdi, rax
	call	chmod
.label_1733:
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118e0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4118f0

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
	je	.label_1736
	test	r14, r14
	je	.label_1740
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1739:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_1737
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_1735
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_1741
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_1737
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1737
.label_1741:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_1737:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_1739
	jmp	.label_1734
.label_1736:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1734
.label_1740:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1742:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_1738
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_1735
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_1738
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_1738:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_1742
.label_1734:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_1735:
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
	#Procedure 0x411a70
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
	je	.label_1743
	mov	esi, OFFSET FLAT:label_1744
	jmp	.label_1745
.label_1743:
	mov	esi, OFFSET FLAT:label_1746
.label_1745:
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
	#Procedure 0x411ae0

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
	mov	esi, OFFSET FLAT:label_1747
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_1752
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_1749:
	test	r15, r15
	je	.label_1751
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1748
.label_1751:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1753
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_1750
	nop	word ptr cs:[rax + rax]
.label_1748:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1754
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_1750:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_1749
.label_1752:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_1755
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
.label_1755:
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
	#Procedure 0x411c10

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
	jns	.label_1756
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_1757
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1744
	jmp	.label_1758
.label_1757:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1746
.label_1758:
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
.label_1756:
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
	#Procedure 0x411ce0
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
	je	.label_1759
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1760:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1759
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1760
.label_1759:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411d50

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
	jne	.label_1762
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1761
	test	cl, cl
	jne	.label_1761
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_1761
.label_1762:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1761
	call	__errno_location
	mov	dword ptr [rax], 0
.label_1761:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x411db0

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x411dc0

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_1763
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_1764
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_1764
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_1765
.label_1764:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_1766
	mov	al, 1
	test	rdx, rdx
	je	.label_1765
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_1766:
	xor	eax, eax
.label_1765:
	ret	
.label_1763:
	push	rax
	mov	edi, OFFSET FLAT:label_1767
	mov	esi, OFFSET FLAT:label_1768
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_1769
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e30

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1772
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1773
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1771
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
	test	rbx, rbx
	jne	.label_1774
	mov	edi, ebp
	call	close
	jmp	.label_1770
.label_1773:
	mov	rbx, r14
	jmp	.label_1772
.label_1771:
	call	__errno_location
	mov	r15, rax
	mov	r12d, dword ptr [r15]
.label_1770:
	xor	ebx, ebx
.label_1774:
	mov	rdi, r14
	call	closedir
	mov	dword ptr [r15], r12d
.label_1772:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ec0

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411ed0
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rsi, [rsp + 8]
	xor	edi, edi
	call	clock_gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411ef0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1776
	cmp	byte ptr [rax], 0x43
	jne	.label_1778
	cmp	byte ptr [rax + 1], 0
	je	.label_1775
.label_1778:
	mov	esi, OFFSET FLAT:label_1777
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1776
.label_1775:
	xor	ebx, ebx
.label_1776:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f30

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1779
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1780:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1780
.label_1779:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411f60

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
	#Procedure 0x411f90

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411fa0

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
	jne	.label_1781
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1781:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411fe0

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_1782
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_1783
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_1783:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_1782:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x412010

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_40
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1784
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412040

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1785
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1785:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1786
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1788
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1787
.label_1788:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1787:
	mov	ecx, dword ptr [rax]
.label_1786:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412100
	.globl randint_new
	.type randint_new, @function
randint_new:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412120

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1789
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_1789:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412150
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412160

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rbx, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	r14, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	lea	r12, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1794:
	cmp	r14, r13
	jae	.label_1790
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1791:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_1791
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_1792:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_1792
.label_1790:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_1793
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	r14, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rbx, rdx
	dec	rdi
	cmp	rcx, r14
	mov	r14, rdi
	ja	.label_1794
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, rbx
	jmp	.label_1795
.label_1793:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_1795:
	mov	rax, rcx
	add	rsp, 0x18
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
	#Procedure 0x412260
	.globl randint_free
	.type randint_free, @function
randint_free:

	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412280

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	esi, 0x18
	mov	rdi, rbx
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4122d0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1799
	xor	ebx, ebx
	test	r14, r14
	je	.label_1802
	mov	esi, OFFSET FLAT:label_1803
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1798
.label_1802:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_1800
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_1798
.label_1799:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_1798
.label_1800:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_1801
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1797
	cmp	r12, 0x800
	mov	edx, 0x800
	cmovbe	rdx, r12
	mov	edi, ebx
	mov	rsi, r14
	call	read
	mov	r12, rax
	mov	edi, ebx
	call	close
	xor	r13d, r13d
	test	r12, r12
	js	.label_1797
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_1796
.label_1797:
	mov	eax, 0x800
	sub	rax, r13
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	r12, [rsp]
	xor	esi, esi
	mov	rdi, r12
	call	gettimeofday
	lea	rdi, [r14 + r13]
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	add	rbx, r13
	cmp	rbx, 0x7ff
	ja	.label_1796
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getpid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1796
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + r12]
	lea	rsi, [rsp]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r12
	cmp	rbx, 0x7ff
	ja	.label_1796
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r12d, 4
	cmovbe	r12, rax
	call	getuid
	mov	dword ptr [rsp], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp]
	mov	rdx, r12
	call	memcpy
	add	r12, rbx
	cmp	r12, 0x7ff
	ja	.label_1796
	mov	eax, 0x800
	sub	rax, r12
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp], eax
	add	r12, r14
	lea	rsi, [rsp]
	mov	rdi, r12
	mov	rdx, rbx
	call	memcpy
.label_1796:
	mov	rdi, r14
	call	isaac_seed
.label_1798:
	mov	rax, r15
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412520
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412530
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412540

	.globl randread
	.type randread, @function
randread:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rcx, qword ptr [r14]
	test	rcx, rcx
	je	.label_1804
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_1809
	nop	dword ptr [rax]
.label_1808:
	add	rbx, rbp
	mov	rax, qword ptr [r14]
	mov	eax, dword ptr [rax]
	and	eax, 0x20
	cmovne	eax, dword ptr [r12]
	mov	dword ptr [r12], eax
	mov	rdi, qword ptr [r14 + 0x10]
	call	qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14]
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
.label_1809:
	sub	r15, rbp
	jne	.label_1808
	jmp	.label_1810
.label_1804:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1811
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1806:
	cmp	r15, 0x800
	jb	.label_1805
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1806
	jmp	.label_1807
.label_1805:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1811:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1807:
	mov	qword ptr [r14 + 0x18], r12
.label_1810:
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
	#Procedure 0x412660

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1812
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1812:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4126a0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1813
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1816
	mov	esi, OFFSET FLAT:label_1814
	jmp	.label_1815
.label_1816:
	mov	esi, OFFSET FLAT:label_1817
.label_1815:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1813:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x412700

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	r14
	push	rbx
	mov	rdx, qword ptr [rdi + 0x800]
	mov	rax, qword ptr [rdi + 0x810]
	inc	rax
	mov	rcx, qword ptr [rdi + 0x808]
	add	rcx, rax
	mov	qword ptr [rdi + 0x810], rax
	lea	r9, [rdi + 0x400]
	lea	r8, [rdi + 0x20]
	cmp	r9, r8
	cmova	r8, r9
	mov	rax, rdi
	not	rax
	add	rax, r8
	shr	rax, 5
	lea	r8, [rax*4]
	shl	rax, 5
	lea	r10, [rsi + rax + 0x20]
	mov	r11, rdi
	nop	dword ptr [rax + rax]
.label_1818:
	mov	rax, rdx
	shl	rax, 0x15
	xor	rax, rdx
	not	rax
	add	rax, qword ptr [r11 + 0x400]
	mov	rdx, qword ptr [r11]
	mov	ebx, edx
	and	ebx, 0x7f8
	add	rcx, qword ptr [rdi + rbx]
	add	rcx, rax
	mov	qword ptr [r11], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rdx, qword ptr [rdi + rcx]
	mov	qword ptr [rsi], rdx
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, rax
	add	rbx, qword ptr [r11 + 0x408]
	mov	rcx, qword ptr [r11 + 8]
	mov	eax, ecx
	and	eax, 0x7f8
	add	rdx, rbx
	add	rdx, qword ptr [rdi + rax]
	mov	qword ptr [r11 + 8], rdx
	shr	rdx, 8
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi + 8], rcx
	mov	r14, rbx
	shl	r14, 0xc
	xor	r14, rbx
	add	r14, qword ptr [r11 + 0x410]
	mov	rax, qword ptr [r11 + 0x10]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, r14
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [r11 + 0x10], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [rsi + 0x10], rax
	mov	rdx, r14
	shr	rdx, 0x21
	xor	rdx, r14
	add	rdx, qword ptr [r11 + 0x418]
	mov	rcx, qword ptr [r11 + 0x18]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [r11 + 0x18], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [rsi + 0x18], rcx
	add	r11, 0x20
	add	rsi, 0x20
	cmp	r11, r9
	jb	.label_1818
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_1819:
	mov	rbx, rdx
	shl	rbx, 0x15
	xor	rbx, rdx
	not	rbx
	add	rbx, qword ptr [rsi - 0x418]
	mov	rax, qword ptr [rsi - 0x18]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, qword ptr [rdi + rdx]
	add	rcx, rbx
	mov	qword ptr [rsi - 0x18], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10], rax
	mov	rdx, rbx
	shr	rdx, 5
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x410]
	mov	rcx, qword ptr [rsi - 0x10]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi - 0x10], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 8], rcx
	mov	rbx, rdx
	shl	rbx, 0xc
	xor	rbx, rdx
	add	rbx, qword ptr [rsi - 0x408]
	mov	rax, qword ptr [rsi - 8]
	mov	edx, eax
	and	edx, 0x7f8
	add	rcx, rbx
	add	rcx, qword ptr [rdi + rdx]
	mov	qword ptr [rsi - 8], rcx
	shr	rcx, 8
	and	ecx, 0x7f8
	add	rax, qword ptr [rdi + rcx]
	mov	qword ptr [r10 + 0x10], rax
	mov	rdx, rbx
	shr	rdx, 0x21
	xor	rdx, rbx
	add	rdx, qword ptr [rsi - 0x400]
	mov	rcx, qword ptr [rsi]
	mov	ebx, ecx
	and	ebx, 0x7f8
	add	rax, rdx
	add	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	shr	rax, 8
	and	eax, 0x7f8
	add	rcx, qword ptr [rdi + rax]
	mov	qword ptr [r10 + 0x18], rcx
	lea	rax, [rsi + 0x20]
	add	rsi, 8
	add	r10, 0x20
	cmp	rsi, r9
	mov	rsi, rax
	jb	.label_1819
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x412980

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	movabs	rdx, 0x647c4677a2884b7c
	movabs	r8, 0xb9f8b322c73ac862
	movabs	rsi, 0x8c0ea5053d4712a0
	movabs	rcx, 0xb29b2e824a595524
	movabs	rax, 0x82f053db8355e0ce
	movabs	r11, 0x48fe4a0fa5a09315
	movabs	r10, 0xae985bf2cbfc89ed
	movabs	r9, 0x98f5704f6c44c0ab
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1820:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r11, [r8 + rdx]
	shl	rdx, 9
	mov	r15, rdx
	xor	r15, r10
	sub	rsi, r15
	mov	r10, r8
	shr	r8, 0x17
	xor	r9, r8
	add	r10, rsi
	sub	rcx, r9
	lea	r12, [rcx + rsi]
	shl	rsi, 0xf
	mov	rdx, rsi
	xor	rdx, r11
	sub	rax, rdx
	mov	r8, rcx
	shr	r8, 0xe
	xor	r8, r10
	mov	r10, rcx
	add	r10, rax
	sub	r14, r8
	lea	r13, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r12
	sub	r15, rsi
	mov	rcx, r14
	shr	rcx, 0x11
	xor	rcx, r10
	mov	r11, r14
	add	r11, r15
	sub	r9, rcx
	lea	r10, [r9 + r15]
	shl	r15, 0xe
	mov	rax, r15
	xor	rax, r13
	mov	qword ptr [rdi + rbx*8], rdx
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rax
	mov	qword ptr [rdi + rbx*8 + 0x28], r11
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r9
	add	rbx, 8
	cmp	rbx, 0x100
	jl	.label_1820
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_1821:
	add	rdx, qword ptr [rdi + rbx*8]
	add	r8, qword ptr [rdi + rbx*8 + 8]
	add	rsi, qword ptr [rdi + rbx*8 + 0x10]
	add	rcx, qword ptr [rdi + rbx*8 + 0x18]
	add	rax, qword ptr [rdi + rbx*8 + 0x20]
	add	r11, qword ptr [rdi + rbx*8 + 0x28]
	add	r10, qword ptr [rdi + rbx*8 + 0x30]
	add	r9, qword ptr [rdi + rbx*8 + 0x38]
	sub	rdx, rax
	mov	r14, r9
	shr	r14, 9
	xor	r14, r11
	add	r9, rdx
	sub	r8, r14
	lea	r12, [r8 + rdx]
	shl	rdx, 9
	xor	rdx, r10
	sub	rsi, rdx
	mov	r11, r8
	shr	r11, 0x17
	xor	r11, r9
	add	r8, rsi
	sub	rcx, r11
	lea	r9, [rcx + rsi]
	shl	rsi, 0xf
	mov	r15, rsi
	xor	r15, r12
	sub	rax, r15
	mov	rsi, rcx
	shr	rsi, 0xe
	xor	r8, rsi
	add	rcx, rax
	sub	r14, r8
	lea	r12, [r14 + rax]
	shl	rax, 0x14
	mov	rsi, rax
	xor	rsi, r9
	sub	rdx, rsi
	mov	rax, r14
	shr	rax, 0x11
	xor	rcx, rax
	add	r14, rdx
	sub	r11, rcx
	lea	r10, [r11 + rdx]
	shl	rdx, 0xe
	xor	rdx, r12
	mov	qword ptr [rdi + rbx*8], r15
	mov	qword ptr [rdi + rbx*8 + 8], r8
	mov	qword ptr [rdi + rbx*8 + 0x10], rsi
	mov	qword ptr [rdi + rbx*8 + 0x18], rcx
	mov	qword ptr [rdi + rbx*8 + 0x20], rdx
	mov	qword ptr [rdi + rbx*8 + 0x28], r14
	mov	qword ptr [rdi + rbx*8 + 0x30], r10
	mov	qword ptr [rdi + rbx*8 + 0x38], r11
	add	rbx, 8
	cmp	rbx, 0x100
	mov	r9, r11
	mov	r11, r14
	mov	rax, rdx
	mov	rdx, r15
	jl	.label_1821
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412be0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x412bf0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412c00

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1822
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1824
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1822
.label_1824:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1822
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1823
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_1823:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1822:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c80

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_1825
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1825:
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
	ja	.label_1832
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1828
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1829
	test	esi, esi
	jne	.label_1832
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1833
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1834
.label_1832:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1835
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1829
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1839
.label_1828:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1830
.label_1829:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1843
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1844
.label_1843:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1844:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_1845:
	call	fcntl
.label_1830:
	mov	ebp, eax
.label_1827:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_1839:
	cmp	eax, 6
	jne	.label_1835
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1837
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1826
.label_1835:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1838
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1841
.label_1833:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1834:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_1845
.label_1837:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1826:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1831
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_1836
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1836
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1827
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_1840
.label_1836:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1827
.label_1838:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1841:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_1830
.label_1831:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_1840:
	test	al, al
	je	.label_1827
	test	ebp, ebp
	js	.label_1827
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1842
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1827
.label_1842:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_1827
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412f20

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
	#Procedure 0x412f40

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1846
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1850
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1847
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1848
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1846
.label_1848:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1849
.label_1850:
	mov	rax, rbx
	jmp	.label_1846
.label_1847:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1849:
	xor	eax, eax
.label_1846:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
