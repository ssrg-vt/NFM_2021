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
.label_1888:
	mov	bl, 1
	mov	r13, qword ptr [rip + optarg]
	jmp	.label_58
.label_1889:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	cmovne	r15, rax
	mov	bl, 1
	mov	cl, r14b
	jmp	.label_31
.label_1890:
	mov	dword ptr [rsp + 0x10], 1
	mov	cl, r14b
	jmp	.label_31
.label_1891:
	mov	dword ptr [rsp + 0x10], 3
	mov	cl, r14b
	jmp	.label_31
.label_1892:
	mov	dword ptr [rsp + 0x10], 2
	mov	cl, r14b
	jmp	.label_31
.label_1893:
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
.label_1894:
	mov	byte ptr [rsp + 0x35], 1
	mov	cl, r14b
	jmp	.label_31
.label_1895:
	mov	byte ptr [rsp + 0x36], 1
	mov	cl, r14b
	jmp	.label_31
.label_1896:
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
	je	.label_108
	mov	qword ptr [rsp + 0x10], rsi
	cmp	byte ptr [rsi + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	r12, rax
	mov	r13d, 2
	jmp	.label_104
	nop	dword ptr [rax + rax]
.label_110:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
.label_104:
	mov	dword ptr [rsp + 8], r13d
.label_125:
	mov	rdi, r12
	call	rpl_fts_read
	mov	r14, rax
	test	r14, r14
	je	.label_118
	movzx	eax, word ptr [r14 + 0x70]
	lea	ecx, [rax - 1]
	movzx	ecx, cx
	cmp	ecx, 0xc
	ja	.label_119
	jmp	qword ptr [(rcx * 8) + label_122]
.label_1872:
	mov	r13, qword ptr [rsp + 0x10]
	cmp	byte ptr [r13 + 9], 0
	jne	.label_123
	mov	ebp, 0x15
	cmp	byte ptr [r13 + 0xa], 0
	je	.label_126
	mov	edi, dword ptr [r12 + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_130
.label_123:
	cmp	qword ptr [r14 + 0x58], 0
	jne	.label_100
	mov	rbp, qword ptr [r14 + 0x30]
	mov	rdi, rbp
	call	last_component
	cmp	byte ptr [rax], 0x2e
	jne	.label_150
	xor	ecx, ecx
	cmp	byte ptr [rax + 1], 0x2e
	sete	cl
	mov	al, byte ptr [rax + rcx + 1]
	cmp	al, 0x2f
	je	.label_141
	test	al, al
	je	.label_141
.label_150:
	mov	rax, qword ptr [r13 + 0x10]
	test	rax, rax
	je	.label_93
	mov	rcx, qword ptr [r14 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_93
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	je	.label_96
.label_93:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_100
	mov	esi, OFFSET FLAT:label_102
	xor	edx, edx
	mov	rdi, rbp
	call	file_name_concat
	mov	rbx, rax
	test	rbx, rbx
	mov	ebp, 0
	je	.label_105
	mov	edi, 1
	mov	rsi, rbx
	lea	rdx, [rsp + 0x18]
	call	__lxstat
	test	eax, eax
	jne	.label_116
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r12 + 0x18]
	cmp	rax, qword ptr [rsp + 0x18]
	jne	.label_128
.label_100:
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r12
	mov	rsi, r14
	mov	rcx, r13
	lea	r9, [rsp + 0x18]
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_124
	cmp	dword ptr [rsp + 0x18], 4
	jne	.label_124
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
.label_124:
	cmp	r15d, 2
	je	.label_97
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_140
	nop	
.label_146:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_140:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_144
	cmp	qword ptr [rax + 0x20], 0
	je	.label_146
.label_144:
	mov	edx, 4
	mov	rdi, r12
	mov	rsi, r14
	call	rpl_fts_set
	mov	rdi, r12
	call	rpl_fts_read
	jmp	.label_97
.label_1874:
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	byte ptr [rcx + 8], 0
	je	.label_98
	cmp	qword ptr [r14 + 0x58], 0
	jle	.label_98
	mov	rcx, qword ptr [r14 + 0x78]
	cmp	rcx, qword ptr [r12 + 0x18]
	jne	.label_103
	nop	word ptr cs:[rax + rax]
.label_98:
	or	eax, 2
	movzx	ebx, ax
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r12
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rcx, rbp
	call	prompt
	mov	r15d, eax
	cmp	r15d, 2
	jne	.label_97
	xor	ecx, ecx
	cmp	ebx, 6
	sete	cl
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	excise
	mov	r15d, eax
.label_97:
	lea	eax, [r15 - 2]
	cmp	eax, 2
	jae	.label_113
	cmp	dword ptr [rsp + 8], 2
	jne	.label_125
	mov	r13d, 3
	cmp	r15d, 3
	jne	.label_125
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_113:
	mov	r13d, 4
	cmp	r15d, 4
	je	.label_104
	jmp	.label_142
.label_1873:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_139
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
	jmp	.label_148
.label_1875:
	mov	r15d, dword ptr [r14 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
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
.label_148:
	mov	rdx, rbp
	call	error
.label_101:
	mov	r13d, 4
	jmp	.label_110
.label_103:
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_131
	nop	
.label_117:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_131:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_115
	cmp	qword ptr [rax + 0x20], 0
	je	.label_117
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	jmp	.label_104
.label_130:
	cmp	byte ptr [r13 + 0xa], 0
	mov	ebp, 0x15
	mov	eax, 0x27
	cmovne	ebp, eax
.label_126:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
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
	jmp	.label_145
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_145:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_101
	cmp	qword ptr [rax + 0x20], 0
	je	.label_99
	jmp	.label_101
.label_116:
	mov	rbp, rbx
.label_105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
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
	jmp	.label_101
.label_128:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
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
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_107
.label_141:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_133
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	r13d, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_138
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_102
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
	jmp	.label_110
.label_96:
	mov	rax, qword ptr [r14 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_109
	cmp	byte ptr [rax + 1], 0
	je	.label_112
.label_109:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
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
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
.label_107:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_101
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
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
	jmp	.label_147
.label_118:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_149
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	mov	dword ptr [rsp + 8], 4
.label_149:
	mov	rdi, r12
	call	rpl_fts_close
	test	eax, eax
	mov	eax, dword ptr [rsp + 8]
	je	.label_108
	mov	ebx, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_111
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	eax, 4
.label_108:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
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
	mov	r9d, OFFSET FLAT:label_129
	xor	eax, eax
	mov	rdx, r15
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
.label_142:
	mov	edi, OFFSET FLAT:label_135
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_137
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039e0

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
	js	.label_156
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_152
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	nop	word ptr [rax + rax]
.label_155:
	mov	rdi, rbx
	call	readdir
	test	rax, rax
	je	.label_154
	cmp	byte ptr [rax + 0x13], 0x2e
	jne	.label_157
	xor	ecx, ecx
	cmp	byte ptr [rax + 0x14], 0x2e
	sete	cl
	movzx	ecx, byte ptr [rax + rcx + 0x14]
	cmp	cl, 0x2f
	cmove	rax, rbp
	test	cl, cl
	cmovne	rbp, rax
	cmp	cl, 0x2f
	je	.label_155
	test	cl, cl
	je	.label_155
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
	test	rbp, rbp
	jne	.label_151
	jmp	.label_153
.label_152:
	mov	edi, ebp
	call	close
	jmp	.label_151
.label_154:
	mov	r14d, dword ptr [r14]
	mov	rdi, rbx
	call	closedir
.label_153:
	test	r14d, r14d
	sete	bl
	jmp	.label_156
.label_157:
	mov	rdi, rbx
	call	closedir
.label_151:
	xor	ebx, ebx
.label_156:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403aa0

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
	mov	rbp, rcx
	mov	r12d, edx
	mov	r15, rsi
	mov	ecx, dword ptr [rdi + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	rax, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	rbx, rbx
	mov	dword ptr [rsp + 0xc], ecx
	mov	qword ptr [rsp + 0x10], rdx
	je	.label_182
	mov	dword ptr [rbx], 2
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	mov	edi, ecx
	mov	rsi, rdx
	call	is_empty_dir
	mov	r14b, al
	movzx	eax, r14b
	add	eax, 3
	mov	dword ptr [rbx], eax
	jmp	.label_158
.label_182:
	mov	qword ptr [rsp + 0x58], -1
	movzx	r13d, r12b
	shl	r13d, 2
	xor	r14d, r14d
.label_158:
	mov	ebx, 3
	cmp	qword ptr [r15 + 0x20], 0
	jne	.label_164
	mov	ecx, dword ptr [rbp + 4]
	cmp	ecx, 5
	je	.label_162
	mov	rdx, qword ptr [rbp]
	mov	rax, rdx
	shr	rax, 0x20
	xor	r15d, r15d
	test	dl, dl
	je	.label_171
	xor	ecx, ecx
	jmp	.label_166
.label_171:
	cmp	ecx, 3
	je	.label_173
	cmp	byte ptr [rbp + 0x19], 0
	mov	ecx, 0
	je	.label_166
.label_173:
	call	can_write_any_file
	test	al, al
	jne	.label_163
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_191
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_183
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	r15, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], r15
	jmp	.label_186
.label_183:
	mov	rax, qword ptr [rsp + 0x58]
.label_191:
	test	rax, rax
	js	.label_187
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
	jmp	.label_194
.label_163:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	eax, dword ptr [rbp + 4]
.label_166:
	cmp	eax, 3
	je	.label_160
	jmp	.label_162
.label_187:
	mov	r15, qword ptr [rsp + 0x30]
	call	__errno_location
.label_186:
	mov	dword ptr [rax], r15d
	mov	r15d, 0xffffffff
.label_194:
	mov	ecx, dword ptr [rax]
.label_160:
	test	r15d, r15d
	js	.label_168
	xor	r12b, 1
	je	.label_168
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_172
	mov	r12, rcx
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_175
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rcx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rcx
	jmp	.label_178
.label_175:
	mov	rax, qword ptr [rsp + 0x58]
	mov	rcx, r12
.label_172:
	test	rax, rax
	js	.label_181
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r12d, 0xa
	cmp	eax, 0xa000
	je	.label_184
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
.label_168:
	mov	r12d, r13d
.label_184:
	test	r15d, r15d
	js	.label_159
	mov	eax, r12d
	and	al, 0xf
	cmp	al, 4
	je	.label_190
	cmp	al, 0xa
	jne	.label_192
	cmp	dword ptr [rbp + 4], 3
	je	.label_192
	jmp	.label_162
.label_190:
	cmp	byte ptr [rbp + 9], 0
	jne	.label_192
	cmp	byte ptr [rbp + 0xa], 0
	mov	ecx, 0x15
	je	.label_159
	mov	eax, r14d
	xor	al, 1
	jne	.label_159
.label_192:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r13, rax
	cmp	r12d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	r14b, cl
	je	.label_185
	mov	rax, qword ptr [rsp + 0x58]
	cmp	rax, -1
	jne	.label_167
	lea	rcx, [rsp + 0x28]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rsp + 0x10]
	call	__fxstatat
	test	eax, eax
	je	.label_174
	mov	qword ptr [rsp + 0x58], -2
	call	__errno_location
	movsxd	rbx, dword ptr [rax]
	mov	qword ptr [rsp + 0x30], rbx
	jmp	.label_188
.label_185:
	mov	rbp, qword ptr [rip + stderr]
	xor	edi, edi
	test	r15d, r15d
	je	.label_177
	mov	esi, OFFSET FLAT:label_179
	jmp	.label_180
.label_181:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
	mov	rcx, rbx
.label_178:
	mov	dword ptr [rax], ecx
.label_159:
	mov	ebx, 4
	mov	edi, 4
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
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
.label_177:
	mov	esi, OFFSET FLAT:label_193
.label_180:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [rip + program_name]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r13
	call	__fprintf_chk
	jmp	.label_161
.label_174:
	mov	rax, qword ptr [rsp + 0x58]
.label_167:
	test	rax, rax
	js	.label_189
	mov	r14, qword ptr [rip + stderr]
	mov	r12, r13
	xor	edi, edi
	test	r15d, r15d
	je	.label_165
	mov	esi, OFFSET FLAT:label_169
	jmp	.label_170
.label_189:
	mov	rbx, qword ptr [rsp + 0x30]
	call	__errno_location
.label_188:
	mov	dword ptr [rax], ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r13
	call	error
	mov	ebx, 4
	jmp	.label_164
.label_165:
	mov	esi, OFFSET FLAT:label_176
.label_170:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	r13, qword ptr [rip + program_name]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rbp
	mov	r9, r12
	call	__fprintf_chk
.label_161:
	call	yesno
	test	al, al
	je	.label_164
.label_162:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ee0

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
	je	.label_198
	call	__errno_location
	mov	r12, rax
	mov	ebp, dword ptr [r12]
	cmp	ebp, 0x1e
	jne	.label_201
	mov	esi, dword ptr [rbx + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	call	__fxstatat
	test	eax, eax
	je	.label_200
	cmp	dword ptr [r12], 2
	je	.label_196
.label_200:
	mov	dword ptr [r12], 0x1e
.label_196:
	mov	ebp, dword ptr [r12]
.label_201:
	cmp	byte ptr [r13], 0
	je	.label_203
	mov	r14d, 2
	cmp	ebp, 0x16
	ja	.label_202
	mov	eax, 0x500004
	bt	eax, ebp
	jb	.label_197
.label_202:
	cmp	ebp, 0x54
	je	.label_197
.label_203:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 4
	jne	.label_195
	mov	eax, ebp
	cmp	ebp, 0x27
	ja	.label_195
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_195
	mov	eax, dword ptr [r15 + 0x40]
	cmp	eax, 0xd
	je	.label_204
	cmp	eax, 1
	jne	.label_195
.label_204:
	mov	dword ptr [r12], eax
	mov	ebp, eax
.label_195:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
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
	jmp	.label_208
	nop	dword ptr [rax + rax]
.label_199:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_208:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_197
	cmp	qword ptr [rax + 0x20], 0
	je	.label_199
	jmp	.label_197
.label_198:
	mov	r14d, 2
	cmp	byte ptr [r13 + 0x1a], 0
	je	.label_197
	xor	edi, edi
	test	bpl, bpl
	je	.label_205
	mov	esi, OFFSET FLAT:label_206
	jmp	.label_207
.label_205:
	mov	esi, OFFSET FLAT:label_209
.label_207:
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
.label_197:
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
	#Procedure 0x404090

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	r15
	push	r14
	push	rbx
	mov	rbx, r8
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_213
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_210
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_211
.label_210:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
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
.label_213:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_212
	xor	cl, 1
	jne	.label_212
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	jmp	.label_212
.label_211:
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
	#Procedure 0x404130
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
	#Procedure 0x4041a0

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
	#Procedure 0x4041d0
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
	#Procedure 0x404200

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
	#Procedure 0x404250

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
	mov	r13, r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x88], rcx
	mov	r8d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	r15, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 0
	mov	ecx, dword ptr [r13 + 0x34]
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_340
	test	ecx, ecx
	jns	.label_352
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, rbx
	mov	rcx, r14
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_352
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_352:
	test	ecx, ecx
	sete	r8b
	test	r15, r15
	je	.label_340
	mov	byte ptr [r15], r8b
.label_340:
	test	ecx, ecx
	mov	qword ptr [rbp - 0x48], rbx
	je	.label_360
	cmp	ecx, 0x11
	jne	.label_364
	cmp	dword ptr [r13 + 8], 2
	jne	.label_364
	jmp	.label_367
.label_360:
	cmp	byte ptr [r13 + 0x31], 0
	jne	.label_367
.label_364:
	mov	rax, r13
	mov	r13, r8
	mov	r12d, ecx
	test	ecx, ecx
	mov	r15, r14
	cmove	rbx, r14
	mov	r14, rax
	cmp	dword ptr [rax + 4], 2
	jne	.label_371
	lea	rdx, [rbp - 0x178]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	jmp	.label_380
.label_371:
	lea	rdx, [rbp - 0x178]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
.label_380:
	test	eax, eax
	je	.label_387
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
.label_558:
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
.label_534:
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
.label_387:
	mov	esi, dword ptr [rbp - 0x160]
	mov	eax, esi
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_398
	cmp	byte ptr [r14 + 0x2a], 0
	mov	r8, r13
	mov	r13, r14
	mov	r14, r15
	mov	ecx, r12d
	mov	rbx, qword ptr [rbp - 0x48]
	jne	.label_367
	cmp	byte ptr [r13 + 0x19], 0
	je	.label_408
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_526
	jmp	.label_527
.label_398:
	mov	r8, r13
	mov	r13, r14
	mov	r14, r15
	mov	ecx, r12d
	mov	rbx, qword ptr [rbp - 0x48]
.label_367:
	mov	dl, byte ptr [rbp + 0x10]
	test	dl, dl
	mov	dword ptr [rbp - 0x3c], esi
	je	.label_419
	mov	rdi, qword ptr [r13 + 0x48]
	test	rdi, rdi
	je	.label_419
	mov	r12, rbx
	mov	rbx, r13
	mov	eax, esi
	and	eax, 0xf000
	mov	r15d, ecx
	mov	r13, r8
	cmp	eax, 0x4000
	je	.label_425
	cmp	dword ptr [rbx], 0
	jne	.label_425
	lea	rdx, [rbp - 0x178]
	mov	rsi, r12
	call	seen_file
	test	al, al
	je	.label_433
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_434
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
.label_433:
	mov	rdi, qword ptr [rbx + 0x48]
.label_425:
	lea	rdx, [rbp - 0x178]
	mov	rsi, r12
	call	record_file
	mov	dl, byte ptr [rbp + 0x10]
	mov	r8, r13
	mov	r13, rbx
	mov	ecx, r15d
	mov	esi, dword ptr [rbp - 0x3c]
.label_419:
	mov	qword ptr [rbp - 0x30], r14
	mov	eax, dword ptr [r13 + 4]
	mov	r15b, 1
	cmp	eax, 4
	je	.label_449
	cmp	eax, 3
	sete	r15b
	and	r15b, dl
.label_449:
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	test	r8b, r8b
	jne	.label_316
	cmp	ecx, 0x11
	jne	.label_458
	cmp	dword ptr [r13 + 8], 2
	jne	.label_458
	xor	eax, eax
	mov	qword ptr [rbp - 0x68], rax
	xor	r8d, r8d
	jmp	.label_460
.label_458:
	mov	eax, esi
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	r14, qword ptr [rbp - 0x30]
	je	.label_464
	mov	dl, 1
	mov	qword ptr [rbp - 0x68], rdx
	cmp	byte ptr [r13 + 0x14], 0
	je	.label_468
	cmp	eax, 0xa000
	je	.label_468
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_468
.label_464:
	mov	al, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	byte ptr [r13 + 0x18], 0
	jne	.label_468
	cmp	byte ptr [r13 + 0x2c], 0
	jne	.label_468
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_468
	cmp	dword ptr [r13], 0
	jne	.label_468
	cmp	byte ptr [r13 + 0x15], 0
	setne	al
	mov	qword ptr [rbp - 0x68], rax
.label_468:
	mov	r12d, esi
	mov	ebx, ecx
	mov	rax, qword ptr [rbp - 0x68]
	movzx	r8d, al
	shl	r8d, 8
	lea	rcx, [rbp - 0x2a8]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, r14
	call	__fxstatat
	test	eax, eax
	je	.label_483
	mov	r12d, r15d
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	r8b, 1
	cmp	r15d, 2
	mov	dl, byte ptr [rbp + 0x10]
	mov	ecx, ebx
	je	.label_485
	cmp	r15d, 0x28
	jne	.label_488
	cmp	byte ptr [r13 + 0x16], 0
	je	.label_488
	xor	r8d, r8d
.label_485:
	cmp	ecx, 0x11
	mov	r14d, 0
	mov	esi, dword ptr [rbp - 0x3c]
	mov	r15d, r12d
	mov	eax, 0
	mov	qword ptr [rbp - 0x68], rax
	je	.label_460
	jmp	.label_316
.label_483:
	xor	r8d, r8d
	mov	dl, byte ptr [rbp + 0x10]
	mov	esi, r12d
.label_460:
	mov	qword ptr [rbp - 0x60], r8
	cmp	dword ptr [r13 + 8], 2
	mov	byte ptr [rbp - 0x78], r15b
	jne	.label_497
	xor	r15d, r15d
	jmp	.label_285
.label_497:
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x2a0]
	mov	rbx, qword ptr [rbp - 0x30]
	jne	.label_501
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x2a8]
	jne	.label_501
	mov	r15b, 1
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_219
	jmp	.label_508
.label_501:
	xor	r15d, r15d
.label_508:
	cmp	dword ptr [r13 + 4], 2
	jne	.label_509
	mov	eax, dword ptr [rbp - 0x160]
	mov	ecx, eax
	and	ecx, 0xf000
	lea	r12, [rbp - 0x178]
	lea	r14, [rbp - 0x2a8]
	cmp	ecx, 0xa000
	jne	.label_511
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x290]
	cmp	ecx, 0xa000
	jne	.label_511
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	same_name
	test	al, al
	jne	.label_235
	cmp	dword ptr [r13], 0
	mov	dl, byte ptr [rbp + 0x10]
	je	.label_518
	xor	r15d, r15d
	jmp	.label_219
.label_488:
	mov	r12, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
.label_282:
	mov	rdx, rbx
	jmp	.label_534
.label_509:
	test	r15b, r15b
	je	.label_536
	lea	r14, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, rbx
	mov	rdx, r14
	call	__lxstat
	test	eax, eax
	jne	.label_308
	lea	r12, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, r12
	call	__lxstat
	test	eax, eax
	jne	.label_308
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x208]
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_542
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x210]
	sete	r15b
	jmp	.label_546
.label_408:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_553
.label_527:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	r14d, r14d
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_484:
	mov	rdx, r15
	jmp	.label_534
.label_536:
	xor	r15d, r15d
	jmp	.label_219
.label_518:
	test	r15b, r15b
	je	.label_522
	cmp	byte ptr [r13 + 0x18], 0
	mov	r15b, 1
	mov	esi, dword ptr [rbp - 0x3c]
	jne	.label_235
	jmp	.label_285
.label_542:
	xor	r15d, r15d
.label_546:
	mov	eax, dword ptr [rbp - 0x3b8]
	mov	ecx, eax
	and	ecx, 0xf000
	cmp	ecx, 0xa000
	jne	.label_511
	mov	ecx, 0xf000
	and	ecx, dword ptr [rbp - 0x1f8]
	cmp	ecx, 0xa000
	jne	.label_511
	cmp	byte ptr [r13 + 0x15], 0
	je	.label_511
	xor	r15d, r15d
	jmp	.label_219
.label_511:
	mov	rcx, qword ptr [r13]
	test	ecx, ecx
	je	.label_577
	test	r15b, r15b
	je	.label_521
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	same_name
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	mov	esi, dword ptr [rbp - 0x3c]
	jne	.label_235
	xor	r15d, r15d
	jmp	.label_285
.label_577:
	cmp	byte ptr [r13 + 0x18], 0
	jne	.label_581
	cmp	byte ptr [r13 + 0x15], 0
	je	.label_244
.label_581:
	mov	ecx, 0xf000
	and	ecx, dword ptr [r14 + 0x18]
	cmp	ecx, 0xa000
	jne	.label_574
	xor	r15d, r15d
	jmp	.label_219
.label_521:
	and	eax, 0xf000
	xor	r15d, r15d
	cmp	eax, 0xa000
	jne	.label_219
	movabs	rax, 0xffffffff00000000
	and	rcx, rax
	movabs	rax, 0x200000000
	cmp	rcx, rax
	je	.label_219
	mov	al, byte ptr [r13 + 0x18]
	test	al, al
	jne	.label_219
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_235
	xor	r15d, r15d
	jmp	.label_219
.label_574:
	test	r15b, r15b
	je	.label_244
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_244
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rbx
	call	same_name
	test	al, al
	je	.label_248
	mov	eax, dword ptr [r12 + 0x18]
	mov	dl, byte ptr [rbp + 0x10]
.label_244:
	and	eax, 0xf000
	cmp	eax, 0xa000
	je	.label_251
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	je	.label_251
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, qword ptr [r14 + 8]
	jne	.label_257
	mov	rax, qword ptr [r12]
	cmp	rax, qword ptr [r14]
	jne	.label_262
	mov	r15b, 1
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_219
.label_251:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_272
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x160]
	cmp	eax, 0xa000
	jne	.label_272
	cmp	qword ptr [r14 + 0x10], 2
	jb	.label_272
	mov	rdi, qword ptr [rbp - 0x48]
	call	canonicalize_file_name
	mov	dl, byte ptr [rbp + 0x10]
	mov	r15, rax
	test	r15, r15
	je	.label_272
	mov	rdi, r15
	mov	rsi, rbx
	call	same_name
	mov	r14d, eax
	mov	rdi, r15
	call	free
	mov	dl, byte ptr [rbp + 0x10]
	test	r14b, r14b
	mov	esi, dword ptr [rbp - 0x3c]
	jne	.label_235
	xor	r15d, r15d
	jmp	.label_285
.label_272:
	cmp	byte ptr [r13 + 0x2c], 0
	je	.label_288
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_288
	xor	r15d, r15d
	jmp	.label_219
.label_288:
	cmp	dword ptr [r13 + 4], 2
	jne	.label_235
	mov	eax, 0xf000
	and	eax, dword ptr [r12 + 0x18]
	cmp	eax, 0xa000
	jne	.label_302
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x48]
	call	__xstat
	test	eax, eax
	jne	.label_308
	jmp	.label_309
.label_522:
	xor	r15d, r15d
	jmp	.label_219
.label_248:
	cmp	byte ptr [r13 + 0x18], 0
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_235
	xor	r15d, r15d
	jmp	.label_285
.label_257:
	xor	r15d, r15d
	jmp	.label_219
.label_302:
	lea	rdi, [rbp - 0x3d0]
	mov	edx, 0x90
	mov	rsi, r12
	call	memcpy
.label_309:
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	jne	.label_314
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_321
.label_308:
	xor	r15d, r15d
	mov	dl, byte ptr [rbp + 0x10]
.label_219:
	mov	esi, dword ptr [rbp - 0x3c]
.label_285:
	mov	ebx, esi
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	mov	r14, qword ptr [rbp + 0x28]
	je	.label_344
	mov	al, byte ptr [r13 + 0x2d]
	test	al, al
	je	.label_344
	cmp	byte ptr [r13 + 0x1f], 0
	je	.label_331
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_334
	mov	rax, qword ptr [rbp - 0x2a8]
	cmp	rax, qword ptr [rbp - 0x178]
	sete	al
	jmp	.label_336
.label_331:
	xor	eax, eax
	jmp	.label_339
.label_334:
	xor	eax, eax
.label_336:
	xor	al, 1
.label_339:
	movzx	ecx, al
	lea	rsi, [rbp - 0x2a8]
	lea	rdx, [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x30]
	call	utimecmp
	test	eax, eax
	mov	dl, byte ptr [rbp + 0x10]
	js	.label_344
	test	r14, r14
	je	.label_346
	mov	byte ptr [r14], 1
.label_346:
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdi, rbx
	call	remember_copied
	mov	rsi, rbx
	mov	r14b, 1
	test	rax, rax
	mov	dl, byte ptr [rbp - 0x78]
	je	.label_228
	movzx	ecx, byte ptr [r13 + 0x2e]
	movzx	r8d, dl
	mov	edx, 1
	mov	rbx, rax
	mov	rdi, rbx
	call	create_hard_link
	mov	rsi, rbx
	xor	ecx, ecx
	mov	qword ptr [rbp - 0xc8], rcx
	test	al, al
	jne	.label_228
	jmp	.label_246
.label_344:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_361
	mov	eax, dword ptr [r13 + 8]
	cmp	eax, 2
	je	.label_366
	cmp	eax, 3
	je	.label_368
	cmp	eax, 4
	jne	.label_369
	cmp	byte ptr [r13 + 0x2f], 0
	je	.label_369
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0xa000
	je	.label_369
	call	can_write_any_file
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	jne	.label_369
	mov	esi, 2
	mov	rdi, qword ptr [rbp - 0x30]
	call	euidaccess
	mov	dl, byte ptr [rbp + 0x10]
	test	eax, eax
	je	.label_369
.label_368:
	lea	rdx, [rbp - 0x2a8]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x30]
	call	overwrite_ok
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	jne	.label_369
.label_366:
	mov	r14b, 1
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_228
	mov	byte ptr [rax], 1
	jmp	.label_228
.label_361:
	cmp	ebx, 0x4000
	je	.label_369
	mov	eax, dword ptr [r13 + 8]
	mov	r14b, 1
	cmp	eax, 2
	je	.label_228
	cmp	eax, 3
	jne	.label_369
	lea	rdx, [rbp - 0x2a8]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x30]
	call	overwrite_ok
	test	r15b, r15b
	jne	.label_228
	test	al, al
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_403
	jmp	.label_228
.label_369:
	mov	r14b, 1
	test	r15b, r15b
	jne	.label_228
.label_403:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	je	.label_411
	cmp	ebx, 0x4000
	jne	.label_413
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_416
	cmp	dword ptr [r13], 0
	je	.label_416
.label_413:
	test	dl, dl
	je	.label_411
	cmp	dword ptr [r13], 3
	je	.label_411
	mov	rdi, qword ptr [r13 + 0x40]
	lea	rdx, [rbp - 0x2a8]
	mov	rsi, qword ptr [rbp - 0x30]
	call	seen_file
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_411
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	jmp	.label_422
.label_411:
	cmp	ebx, 0x4000
	je	.label_431
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	jne	.label_431
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_436
	cmp	dword ptr [r13], 0
	je	.label_436
.label_431:
	mov	bl, byte ptr [r13 + 0x18]
	test	bl, bl
	je	.label_438
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0x160]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_438
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	je	.label_438
	cmp	dword ptr [r13], 0
	je	.label_446
.label_438:
	mov	r14, qword ptr [r13]
	test	r14d, r14d
	je	.label_447
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	dl, byte ptr [rbp + 0x10]
	mov	r15, rax
	cmp	byte ptr [r15], 0x2e
	jne	.label_453
	xor	eax, eax
	cmp	byte ptr [r15 + 1], 0x2e
	sete	al
	mov	al, byte ptr [r15 + rax + 1]
	test	al, al
	je	.label_447
	cmp	al, 0x2f
	je	.label_447
.label_453:
	test	bl, bl
	jne	.label_459
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	jne	.label_459
.label_447:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	mov	ecx, 0x11
	cmp	eax, 0x4000
	jne	.label_465
	mov	esi, dword ptr [rbp - 0x3c]
	mov	r8, qword ptr [rbp - 0x60]
	xor	r14d, r14d
	mov	r15b, byte ptr [rbp - 0x78]
	jmp	.label_316
.label_459:
	cmp	r14d, 3
	je	.label_259
	mov	rdi, r15
	call	strlen
	mov	qword ptr [rbp - 0xc8], rax
	mov	rdi, qword ptr [rbp - 0x30]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	rdi, qword ptr [rip + simple_backup_suffix]
	mov	qword ptr [rbp - 0x60], rdi
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + r14]
	cmp	qword ptr [rbp - 0xc8], rax
	jne	.label_259
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	jne	.label_259
	add	r15, r14
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x60]
	call	strcmp
	test	eax, eax
	jne	.label_259
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	strlen
	mov	r14, rax
	lea	rdi, [r12 + r14 + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rcx, -1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	__mempcpy_chk
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdi, rax
	call	strcpy
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	mov	r14d, eax
	mov	rdi, rbx
	call	free
	test	r14d, r14d
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x208]
	jne	.label_259
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x210]
	jne	.label_259
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_427
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_512
	jmp	.label_513
.label_259:
	mov	edx, dword ptr [r13]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x30]
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_472
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
	mov	ecx, 0x11
	mov	r8b, 1
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	mov	r15b, byte ptr [rbp - 0x78]
	jmp	.label_316
.label_465:
	test	bl, bl
	mov	r8, qword ptr [rbp - 0x60]
	mov	r15b, byte ptr [rbp - 0x78]
	jne	.label_529
	cmp	byte ptr [r13 + 0x15], 0
	jne	.label_530
	cmp	byte ptr [r13 + 0x22], 0
	je	.label_533
	cmp	qword ptr [rbp - 0x298], 1
	ja	.label_530
.label_533:
	movabs	rax, 0xffffffff00000000
	and	r14, rax
	movabs	rax, 0x200000000
	cmp	r14, rax
	jne	.label_529
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x160]
	xor	r14d, r14d
	cmp	eax, 0x8000
	jne	.label_530
	mov	esi, dword ptr [rbp - 0x3c]
	jmp	.label_316
.label_416:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_306
.label_422:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
.label_582:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_550
.label_529:
	mov	esi, dword ptr [rbp - 0x3c]
	xor	r14d, r14d
	jmp	.label_316
.label_436:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_561
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
	jmp	.label_282
.label_472:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	cmp	ebx, 2
	mov	r15b, byte ptr [rbp - 0x78]
	jne	.label_445
	mov	ecx, 0x11
	mov	r8b, 1
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	jmp	.label_316
.label_530:
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdi, rbx
	call	unlink
	test	eax, eax
	je	.label_572
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 2
	jne	.label_573
.label_572:
	mov	r8b, 1
	xor	r14d, r14d
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_576
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	r8b, 1
.label_576:
	mov	esi, dword ptr [rbp - 0x3c]
	mov	dl, byte ptr [rbp + 0x10]
	mov	ecx, 0x11
.label_316:
	test	dl, dl
	je	.label_222
	cmp	qword ptr [r13 + 0x40], 0
	je	.label_222
	cmp	byte ptr [r13 + 0x18], 0
	jne	.label_222
	cmp	dword ptr [r13], 0
	jne	.label_222
	mov	rax, qword ptr [rbp - 0x68]
	test	al, al
	jne	.label_227
	lea	rbx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	r12, r8
	mov	byte ptr [rbp - 0x78], r15b
	mov	r15d, ecx
	call	__lxstat
	mov	ecx, r15d
	mov	r15b, byte ptr [rbp - 0x78]
	mov	r8, r12
	mov	dl, byte ptr [rbp + 0x10]
	test	eax, eax
	jne	.label_239
	jmp	.label_243
.label_227:
	lea	rbx, [rbp - 0x2a8]
.label_243:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_239
	mov	rdi, qword ptr [r13 + 0x40]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	mov	r12d, r15d
	mov	r15, r8
	mov	ebx, ecx
	call	seen_file
	mov	ecx, ebx
	mov	r8, r15
	mov	r15d, r12d
	mov	dl, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_239
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_255
	jmp	.label_256
.label_239:
	mov	esi, dword ptr [rbp - 0x3c]
.label_222:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_260
	mov	eax, esi
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_260
	mov	al, byte ptr [r13 + 0x18]
	test	al, al
	jne	.label_260
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, r14
	mov	r12d, r15d
	mov	r15, r8
	mov	ebx, ecx
	call	emit_verbose
	mov	ecx, ebx
	mov	r8, r15
	mov	r15d, r12d
	mov	dl, byte ptr [rbp + 0x10]
.label_260:
	xor	edi, edi
	test	ecx, ecx
	mov	qword ptr [rbp - 0xc8], r14
	je	.label_275
	mov	ebx, dword ptr [rbp - 0x3c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	mov	byte ptr [rbp - 0x78], r15b
	jne	.label_278
	mov	al, byte ptr [r13 + 0x2a]
	test	al, al
	je	.label_278
	mov	r15d, ecx
	mov	r14, r13
	mov	r13, r8
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rbp - 0x170]
	test	dl, dl
	je	.label_283
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rax
.label_313:
	call	remember_copied
	jmp	.label_300
.label_278:
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_301
	cmp	qword ptr [rbp - 0x168], 1
	jne	.label_301
	mov	r15d, ecx
	mov	r14, r13
	mov	r13, r8
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x170]
	jmp	.label_305
.label_301:
	xor	edi, edi
	cmp	byte ptr [r13 + 0x22], 0
	je	.label_275
	xor	edi, edi
	cmp	byte ptr [r13 + 0x17], 0
	jne	.label_275
	cmp	qword ptr [rbp - 0x168], 1
	ja	.label_311
	mov	esi, dword ptr [r13 + 4]
	cmp	esi, 3
	sete	al
	xor	edi, edi
	cmp	esi, 4
	je	.label_311
	and	al, dl
	je	.label_275
.label_311:
	mov	r15d, ecx
	mov	r14, r13
	mov	r13, r8
	mov	rdx, qword ptr [rbp - 0x178]
	mov	rsi, qword ptr [rbp - 0x170]
	mov	rdi, qword ptr [rbp - 0x30]
	jmp	.label_313
.label_283:
	mov	rdi, rcx
	mov	rsi, rax
.label_305:
	call	src_to_dest_lookup
.label_300:
	xor	edi, edi
	test	rax, rax
	mov	r8, r13
	mov	r13, r14
	mov	ecx, r15d
	mov	r15b, byte ptr [rbp - 0x78]
	je	.label_275
	cmp	ebx, 0x4000
	jne	.label_327
	mov	r15d, ecx
	mov	rbx, r8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	r12, rax
	call	same_name
	test	al, al
	je	.label_332
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
	mov	rsi, r12
	jmp	.label_246
.label_327:
	movzx	ecx, byte ptr [r13 + 0x2e]
	movzx	r8d, r15b
	mov	edx, 1
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbx, rax
	call	create_hard_link
	mov	r14b, 1
	test	al, al
	mov	rsi, rbx
	jne	.label_228
	jmp	.label_246
.label_332:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], r12
	mov	rsi, r12
	call	same_name
	test	al, al
	je	.label_362
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
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
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_228
	mov	al, byte ptr [r13 + 0x18]
	test	al, al
	je	.label_228
	mov	rax, qword ptr [rbp + 0x28]
	mov	byte ptr [rax], 1
	jmp	.label_228
.label_362:
	mov	ecx, dword ptr [r13 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_385
	and	al, byte ptr [rbp + 0x10]
	mov	r8, rbx
	mov	ecx, r15d
	jne	.label_395
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_391
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
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	call	error
	mov	rsi, rbx
	jmp	.label_246
.label_385:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	r8, rbx
	mov	ecx, r15d
	jmp	.label_404
.label_395:
	mov	rdi, qword ptr [rbp - 0x68]
.label_404:
	mov	r15b, byte ptr [rbp - 0x78]
.label_275:
	mov	qword ptr [rbp - 0x68], rdi
	cmp	byte ptr [r13 + 0x18], 0
	mov	rbx, qword ptr [rbp - 0x48]
	mov	r14d, dword ptr [rbp - 0x3c]
	je	.label_409
	cmp	ecx, 0x11
	jne	.label_414
	mov	rdi, rbx
	mov	rsi, qword ptr [rbp - 0x30]
	call	rename
	test	eax, eax
	je	.label_417
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_414:
	cmp	ecx, 0x16
	je	.label_580
	cmp	ecx, 0x12
	je	.label_424
	test	ecx, ecx
	jne	.label_426
.label_417:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_428
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_429
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, rbx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	emit_verbose
.label_428:
	cmp	byte ptr [r13 + 0x21], 0
	mov	r14, qword ptr [rbp + 0x28]
	je	.label_437
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_439
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_442
.label_439:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_437
.label_580:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_457
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
.label_424:
	mov	r12d, r15d
	and	r14d, 0xf000
	cmp	r14d, 0x4000
	jne	.label_477
	mov	rdi, qword ptr [rbp - 0x30]
	call	rmdir
	jmp	.label_480
.label_426:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_481
	mov	edx, 5
	mov	r15d, ecx
	call	dcgettext
	mov	rdx, rbx
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	jmp	.label_486
.label_477:
	mov	rdi, qword ptr [rbp - 0x30]
	call	unlink
.label_480:
	test	eax, eax
	je	.label_492
	call	__errno_location
	mov	r15d, dword ptr [rax]
	cmp	r15d, 2
	jne	.label_494
.label_492:
	cmp	r14d, 0x4000
	mov	r8b, 1
	je	.label_496
	mov	al, byte ptr [r13 + 0x2e]
	test	al, al
	mov	r14d, dword ptr [rbp - 0x3c]
	mov	r15d, r12d
	je	.label_409
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_500
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0xc8]
	call	emit_verbose
	mov	r8b, 1
	jmp	.label_409
.label_494:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_510
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, r13
	mov	rcx, r12
.label_486:
	call	error
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x170]
	call	forget_created
	jmp	.label_228
.label_442:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_437:
	mov	rsi, qword ptr [rbp - 0x30]
	test	r14, r14
	je	.label_528
	mov	byte ptr [r14], 1
.label_528:
	mov	r14b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_228
	cmp	byte ptr [r13 + 0x31], 0
	jne	.label_228
	mov	rdi, qword ptr [r13 + 0x40]
	lea	rdx, [rbp - 0x178]
	call	record_file
	jmp	.label_228
.label_496:
	mov	r14d, dword ptr [rbp - 0x3c]
	mov	r15d, r12d
.label_409:
	cmp	byte ptr [r13 + 0x2b], 0
	mov	r12d, r14d
	je	.label_537
	mov	r12d, dword ptr [r13 + 0x10]
.label_537:
	mov	ebx, 0x3f
	cmp	byte ptr [r13 + 0x1d], 0
	jne	.label_258
	mov	eax, r14d
	and	eax, 0xf000
	xor	edx, edx
	cmp	eax, 0x4000
	mov	ebx, 0x12
	cmovne	ebx, edx
.label_258:
	mov	qword ptr [rbp - 0x60], r8
	movzx	ecx, r8b
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	dword ptr [rbp - 0xa4], ecx
	mov	r8, r13
	call	set_process_security_ctx
	test	al, al
	je	.label_547
	mov	r8d, r12d
	and	ebx, r8d
	mov	edi, r14d
	and	edi, 0xf000
	cmp	edi, 0x4000
	jne	.label_345
	mov	r15d, ebx
	cmp	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x178]
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_559
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
.label_566:
	cmp	qword ptr [rdx + 8], rcx
	jne	.label_564
	cmp	qword ptr [rdx + 0x10], rax
	je	.label_405
.label_564:
	mov	rdx, qword ptr [rdx]
	test	rdx, rdx
	jne	.label_566
.label_559:
	mov	rdx, rsp
	lea	rbx, [rdx - 0x20]
	mov	qword ptr [rbp - 0x78], rbx
	mov	rsp, rbx
	mov	rbx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx - 0x20], rbx
	mov	qword ptr [rdx - 0x18], rcx
	mov	qword ptr [rdx - 0x10], rax
	test	sil, sil
	mov	dword ptr [rbp - 0x6c], edi
	jne	.label_567
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0x4000
	jne	.label_567
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_575
	cmp	byte ptr [r13 + 0x25], 0
	je	.label_514
.label_575:
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_524
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_579
.label_524:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r13 + 0x26], 0
	mov	r15d, 0
	mov	rsi, qword ptr [rbp - 0x68]
	jne	.label_246
	jmp	.label_226
.label_547:
	xor	r14d, r14d
	jmp	.label_228
.label_345:
	cmp	byte ptr [r13 + 0x2c], 0
	mov	dword ptr [rbp - 0x7c], ebx
	je	.label_229
	mov	dword ptr [rbp - 0x6c], edi
	mov	r15, qword ptr [rbp - 0x48]
	cmp	byte ptr [r15], 0x2f
	je	.label_233
	mov	rdi, qword ptr [rbp - 0x30]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_241
	cmp	byte ptr [rbx + 1], 0
	je	.label_242
.label_241:
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_138
	call	__xstat
	test	eax, eax
	jne	.label_242
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	rsi, rbx
	call	__xstat
	test	eax, eax
	je	.label_254
.label_242:
	mov	rdi, rbx
	call	free
.label_233:
	movzx	ecx, byte ptr [r13 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r12d, eax
	test	r12d, r12d
	jle	.label_266
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_269
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r14
	mov	rcx, rbx
	call	error
	jmp	.label_281
.label_567:
	and	r8d, 0xfff
	mov	eax, r15d
	mov	esi, eax
	not	esi
	and	esi, r8d
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rdi, rbx
	call	mkdir
	test	eax, eax
	je	.label_291
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
	jmp	.label_297
.label_229:
	cmp	byte ptr [r13 + 0x17], 0
	je	.label_221
	mov	ebx, edi
	cmp	byte ptr [r13 + 0x16], 0
	mov	al, 1
	jne	.label_303
	cmp	dword ptr [r13 + 8], 3
	sete	al
.label_303:
	movzx	edx, al
	movzx	r8d, r15b
	xor	r15d, r15d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	call	create_hard_link
	test	al, al
	je	.label_281
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	xor	r14d, r14d
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	edi, ebx
	jmp	.label_310
.label_291:
	lea	rdx, [rbp - 0x2a8]
	mov	edi, 1
	mov	rsi, rbx
	call	__lxstat
	test	eax, eax
	je	.label_315
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
.label_297:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
.label_394:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	jmp	.label_323
.label_266:
	mov	r15b, 1
	xor	r14d, r14d
.label_532:
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	jmp	.label_330
.label_405:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_463
.label_556:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	jmp	.label_323
.label_221:
	cmp	edi, 0x8000
	je	.label_341
	cmp	edi, 0xa000
	je	.label_343
	mov	al, byte ptr [r13 + 0x14]
	test	al, al
	je	.label_343
.label_341:
	mov	dword ptr [rbp - 0x6c], edi
	mov	eax, dword ptr [rbp - 0x160]
	mov	dword ptr [rbp - 0xa4], eax
	mov	al, byte ptr [r13 + 0x23]
	mov	byte ptr [rbp - 0x78], al
	xor	esi, esi
	cmp	dword ptr [r13 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	mov	r15, qword ptr [rbp - 0x48]
	mov	rdi, r15
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_354
	lea	rdx, [rbp - 0x3d0]
	mov	edi, 1
	mov	esi, ebx
	call	__fxstat
	test	eax, eax
	mov	dword ptr [rbp - 0x88], ebx
	je	.label_357
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
.label_498:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_375
.label_315:
	mov	r14d, dword ptr [rbp - 0x290]
	mov	eax, r14d
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	jne	.label_377
	xor	r12d, r12d
	jmp	.label_381
.label_377:
	mov	esi, r14d
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
	mov	r12b, 1
	test	eax, eax
	je	.label_381
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_394
.label_381:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_452
	mov	rdx, qword ptr [rbp - 0x2a8]
	mov	rsi, qword ptr [rbp - 0x2a0]
	mov	rdi, qword ptr [rbp - 0x30]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_452:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_226
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_402
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_226
.label_354:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_420
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
.label_551:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_240
.label_254:
	mov	rax, qword ptr [rbp - 0x208]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_432
	mov	r14, qword ptr [rbp - 0x210]
	mov	r15, qword ptr [rbp - 0x3d0]
	mov	rdi, rbx
	call	free
	cmp	r14, r15
	mov	r15, qword ptr [rbp - 0x48]
	je	.label_233
	jmp	.label_324
.label_343:
	mov	ecx, ebx
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_444
	movzx	eax, di
	cmp	eax, 0x6000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_347
	cmp	eax, 0x2000
	je	.label_347
	cmp	eax, 0x1000
	jne	.label_450
	mov	r15d, edi
	mov	ebx, ecx
	not	ebx
	and	ebx, r14d
	mov	qword ptr [rbp - 0x210], 0
	lea	rcx, [rbp - 0x210]
	xor	edi, edi
	mov	r14, qword ptr [rbp - 0x30]
	mov	rsi, r14
	mov	edx, ebx
	call	__xmknod
	mov	cl, 1
	mov	qword ptr [rbp - 0x38], rcx
	test	eax, eax
	je	.label_461
	and	ebx, 0xffffefff
	mov	rdi, r14
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_461
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_515
	jmp	.label_516
.label_579:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_514:
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_226
.label_445:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_476
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_479
.label_446:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_482
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	jmp	.label_487
.label_357:
	mov	rax, qword ptr [rbp - 0x170]
	cmp	rax, qword ptr [rbp - 0x3c8]
	jne	.label_489
	mov	rax, qword ptr [rbp - 0x178]
	cmp	rax, qword ptr [rbp - 0x3d0]
	jne	.label_489
	and	r12d, 0x1ff
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	mov	edx, eax
	mov	ecx, dword ptr [rbp - 0x7c]
	jne	.label_356
	mov	dword ptr [rbp - 0x4c], r12d
	cmp	byte ptr [r13 + 0x23], 0
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
	cmp	byte ptr [r13 + 0x21], 0
	mov	dword ptr [rbp - 0x38], ebx
	je	.label_502
	test	ebx, ebx
	jns	.label_504
	jmp	.label_382
.label_489:
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_507
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
.label_375:
	mov	rdx, rbx
	call	error
	xor	ebx, ebx
.label_280:
	mov	edi, dword ptr [rbp - 0x88]
	call	close
	test	eax, eax
	mov	r15, qword ptr [rbp - 0x48]
	jns	.label_519
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	call	error
.label_519:
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	test	al, al
	je	.label_281
	xor	r15d, r15d
	mov	r14b, 1
	jmp	.label_532
.label_432:
	mov	rdi, rbx
	call	free
.label_324:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_535
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_240:
	mov	rdx, rbx
.label_323:
	call	error
.label_281:
	mov	rsi, qword ptr [rbp - 0x68]
.label_246:
	cmp	byte ptr [r13 + 0x25], 0
	jne	.label_539
	test	rsi, rsi
	mov	r14, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbp - 0xc8]
	jne	.label_540
	mov	rsi, qword ptr [rbp - 0x178]
	mov	rdi, qword ptr [rbp - 0x170]
	call	forget_created
.label_540:
	test	rbx, rbx
	je	.label_548
	mov	rdi, rbx
	mov	rsi, r14
	call	rename
	test	eax, eax
	je	.label_554
	call	__errno_location
	mov	r15d, dword ptr [rax]
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_557
	jmp	.label_558
.label_548:
	xor	r14d, r14d
	jmp	.label_228
.label_554:
	cmp	byte ptr [r13 + 0x2e], 0
	je	.label_562
	mov	r12, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_563
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
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
.label_562:
	xor	r14d, r14d
	jmp	.label_228
.label_444:
	movzx	eax, di
	cmp	eax, 0xa000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_506
	cmp	eax, 0xc000
	jne	.label_450
.label_347:
	mov	r15d, edi
	mov	edx, ecx
	not	edx
	and	edx, r14d
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rbp - 0x210], rax
	lea	rcx, [rbp - 0x210]
	xor	edi, edi
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rsi, rbx
	call	__xmknod
	test	eax, eax
	je	.label_583
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_584
	jmp	.label_297
.label_402:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_290
	xor	eax, eax
	mov	rdx, rbx
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_236
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_226:
	mov	rcx, qword ptr [rbp - 0x88]
	test	rcx, rcx
	mov	dword ptr [rbp - 0x7c], r15d
	mov	dword ptr [rbp - 0x4c], r14d
	je	.label_245
	mov	al, byte ptr [r13 + 0x1c]
	test	al, al
	je	.label_245
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x178]
	jne	.label_250
.label_245:
	movups	xmm0, xmmword ptr [r13 + 0x40]
	movaps	xmmword ptr [rbp - 0x1d0], xmm0
	movups	xmm0, xmmword ptr [r13]
	movups	xmm1, xmmword ptr [r13 + 0x10]
	movups	xmm2, xmmword ptr [r13 + 0x20]
	movups	xmm3, xmmword ptr [r13 + 0x30]
	movaps	xmmword ptr [rbp - 0x1e0], xmm3
	movaps	xmmword ptr [rbp - 0x1f0], xmm2
	movaps	xmmword ptr [rbp - 0x200], xmm1
	movaps	xmmword ptr [rbp - 0x210], xmm0
	mov	esi, 2
	mov	rbx, qword ptr [rbp - 0x48]
	mov	rdi, rbx
	call	savedir
	test	rax, rax
	je	.label_273
	cmp	dword ptr [r13 + 4], 3
	jne	.label_274
	mov	dword ptr [rbp - 0x20c], 2
.label_274:
	mov	qword ptr [rbp - 0xb8], r12
	cmp	byte ptr [rax], 0
	mov	qword ptr [rbp - 0x98], rax
	mov	r15b, 1
	je	.label_277
	xor	r14d, r14d
	mov	r12, rax
	mov	rbx, qword ptr [rbp - 0x30]
.label_319:
	mov	byte ptr [rbp - 0x38], r15b
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r12
	call	file_name_concat
	mov	r15, rax
	mov	qword ptr [rbp - 0x88], r15
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	file_name_concat
	mov	rcx, rax
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rax, qword ptr [rbp + 0x18]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rbp - 0x340], al
	mov	rdi, r15
	mov	rsi, rcx
	mov	edx, dword ptr [rbp - 0xa4]
	lea	rcx, [rbp - 0x178]
	mov	r8, qword ptr [rbp - 0x78]
	lea	r9, [rbp - 0x210]
	push	0
	lea	rax, [rbp - 0x3d0]
	push	rax
	lea	rax, [rbp - 0x340]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r15d, eax
	and	r15b, byte ptr [rbp - 0x38]
	movzx	ebx, byte ptr [rbp - 0x3d0]
	mov	rax, qword ptr [rbp + 0x20]
	or	byte ptr [rax], bl
	mov	rdi, qword ptr [rbp - 0xa0]
	call	free
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	test	bl, bl
	jne	.label_317
	and	r14b, 1
	or	r14b, byte ptr [rbp - 0x340]
	mov	rdi, r12
	call	strlen
	cmp	byte ptr [r12 + rax + 1], 0
	lea	r12, [r12 + rax + 1]
	mov	rbx, qword ptr [rbp - 0x30]
	jne	.label_319
	jmp	.label_317
.label_273:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
	jmp	.label_337
.label_250:
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_337
.label_277:
	xor	r14d, r14d
.label_317:
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	and	r14b, 1
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], r14b
	test	r15b, r15b
	setne	al
	mov	qword ptr [rbp - 0x38], rax
	mov	r12, qword ptr [rbp - 0xb8]
.label_337:
	xor	r15d, r15d
	xor	r14d, r14d
.label_330:
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
.label_286:
	mov	edi, dword ptr [rbp - 0x6c]
.label_310:
	test	dl, dl
	jne	.label_348
	cmp	edi, 0x4000
	je	.label_348
	mov	al, byte ptr [r13 + 0x14]
	test	al, al
	jne	.label_348
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_353
	cmp	byte ptr [r13 + 0x25], 0
	je	.label_348
.label_353:
	mov	dword ptr [rbp - 0x88], r15d
	mov	r15, r12
	mov	dword ptr [rbp - 0x6c], edi
	mov	r12, rdx
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_355
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_359
.label_355:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rsi, qword ptr [rbp - 0x68]
	cmp	byte ptr [r13 + 0x26], 0
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, r12
	mov	edi, dword ptr [rbp - 0x6c]
	mov	r12, r15
	mov	r15d, dword ptr [rbp - 0x88]
	jne	.label_246
	jmp	.label_348
.label_359:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, r12
	mov	edi, dword ptr [rbp - 0x6c]
	mov	r12, r15
	mov	r15d, dword ptr [rbp - 0x88]
.label_348:
	test	cl, cl
	je	.label_392
	cmp	qword ptr [r13 + 0x40], 0
	je	.label_392
	mov	dword ptr [rbp - 0x68], r14d
	mov	r14, r12
	mov	r12d, r15d
	mov	r15d, edi
	mov	rbx, rdx
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	call	__lxstat
	test	eax, eax
	jne	.label_397
	mov	rdi, qword ptr [r13 + 0x40]
	lea	rdx, [rbp - 0x210]
	mov	rsi, qword ptr [rbp - 0x30]
	call	record_file
.label_397:
	mov	rdx, rbx
	mov	edi, r15d
	mov	r15d, r12d
	mov	r12, r14
	mov	r14d, dword ptr [rbp - 0x68]
.label_392:
	cmp	edi, 0x4000
	je	.label_407
	mov	al, byte ptr [r13 + 0x17]
	test	al, al
	jne	.label_379
.label_407:
	test	r14b, r14b
	jne	.label_379
	cmp	byte ptr [r13 + 0x1f], 0
	mov	rbx, qword ptr [rbp - 0x30]
	je	.label_412
	mov	qword ptr [rbp - 0x60], rdx
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x210], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x200], xmm0
	lea	rsi, [rbp - 0x210]
	mov	rdi, rbx
	test	r15b, r15b
	je	.label_415
	call	lutimens
	test	eax, eax
	je	.label_294
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_430
	jmp	.label_294
.label_415:
	call	utimens
	test	eax, eax
	je	.label_294
	call	__errno_location
.label_430:
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbp - 0x68], eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x68]
	mov	rdx, r14
	call	error
	cmp	byte ptr [r13 + 0x24], 0
	je	.label_294
	xor	r14d, r14d
	jmp	.label_228
.label_294:
	mov	rdx, qword ptr [rbp - 0x60]
.label_412:
	test	r15b, r15b
	jne	.label_379
	cmp	byte ptr [r13 + 0x1d], 0
	je	.label_370
	test	dl, dl
	jne	.label_448
	mov	eax, dword ptr [rbp - 0x15c]
	cmp	eax, dword ptr [rbp - 0x28c]
	jne	.label_448
	mov	eax, dword ptr [rbp - 0x158]
	cmp	eax, dword ptr [rbp - 0x288]
	je	.label_370
.label_448:
	xor	r8d, r8d
	mov	r14, rdx
	test	dl, dl
	setne	r8b
	lea	rcx, [rbp - 0x178]
	lea	r9, [rbp - 0x2a8]
	mov	edx, 0xffffffff
	mov	rdi, r13
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_386
	test	eax, eax
	jne	.label_467
	and	dword ptr [rbp - 0x3c], 0xfffff1ff
.label_467:
	mov	rdx, r14
.label_370:
	cmp	byte ptr [r13 + 0x1e], 0
	jne	.label_469
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_470
.label_469:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x3c]
	call	copy_acl
	test	eax, eax
	je	.label_379
	cmp	byte ptr [r13 + 0x24], 0
	je	.label_379
	xor	r14d, r14d
	jmp	.label_228
.label_573:
	mov	r12, rbx
	xor	r14d, r14d
	xor	edi, edi
	mov	ebx, eax
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r12
.label_479:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_484
.label_314:
	lea	rdi, [rbp - 0x210]
	mov	edx, 0x90
	mov	rsi, r14
	call	memcpy
.label_321:
	mov	rax, qword ptr [rbp - 0x3c8]
	cmp	rax, qword ptr [rbp - 0x208]
	mov	dl, byte ptr [rbp + 0x10]
	jne	.label_262
	mov	rax, qword ptr [rbp - 0x3d0]
	cmp	rax, qword ptr [rbp - 0x210]
	jne	.label_493
	cmp	byte ptr [r13 + 0x17], 0
	je	.label_235
	mov	eax, 0xf000
	and	eax, dword ptr [r14 + 0x18]
	cmp	eax, 0xa000
	setne	r15b
	jmp	.label_219
.label_235:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_499
.label_256:
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
.label_550:
	call	quotearg_n_style
.label_487:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	error
	jmp	.label_228
.label_262:
	xor	r15d, r15d
	jmp	.label_219
.label_386:
	xor	r14d, r14d
	jmp	.label_228
.label_583:
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
.label_461:
	xor	r14d, r14d
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	edi, r15d
	xor	r15d, r15d
	jmp	.label_310
.label_506:
	mov	dword ptr [rbp - 0x6c], edi
	mov	rsi, qword ptr [rbp - 0x148]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r15, rax
	test	r15, r15
	je	.label_523
	movzx	ecx, byte ptr [r13 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r15
	mov	rdx, qword ptr [rbp - 0x30]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_312
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	jne	.label_531
	mov	al, byte ptr [r13 + 0x2d]
	test	al, al
	je	.label_531
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x290]
	cmp	eax, 0xa000
	jne	.label_531
	mov	rbx, qword ptr [rbp - 0x278]
	mov	rdi, r15
	call	strlen
	cmp	rbx, rax
	jne	.label_531
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_531
	mov	rdi, rbx
	mov	rsi, r15
	call	strcmp
	mov	r12d, eax
	mov	rdi, rbx
	call	free
	test	r12d, r12d
	je	.label_312
.label_531:
	mov	rdi, r15
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_545
.label_516:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_551
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_555
	jmp	.label_556
.label_470:
	cmp	byte ptr [r13 + 0x2b], 0
	je	.label_560
	mov	edx, dword ptr [r13 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_379
	xor	r14d, r14d
	jmp	.label_228
.label_493:
	xor	r15d, r15d
	jmp	.label_219
.label_523:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_441
	jmp	.label_297
.label_560:
	mov	r15, rbx
	mov	rbx, rdx
	test	dl, dl
	je	.label_568
	mov	al, byte ptr [r13 + 0x20]
	test	al, al
	je	.label_568
	mov	eax, dword ptr [rbp - 0x3c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_571
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_571:
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, r15
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_379
	xor	r14d, r14d
	jmp	.label_228
.label_312:
	mov	rdi, r15
	call	free
	mov	rbx, r13
	cmp	byte ptr [r13 + 0x25], 0
	jne	.label_539
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_223
	mov	esi, dword ptr [rbp - 0x15c]
	mov	edx, dword ptr [rbp - 0x158]
	mov	rdi, qword ptr [rbp - 0x30]
	call	lchown
	test	eax, eax
	je	.label_223
	call	__errno_location
	mov	r14d, dword ptr [rax]
	cmp	r14d, 0x16
	je	.label_292
	cmp	r14d, 1
	jne	.label_232
.label_292:
	cmp	byte ptr [rbx + 0x1a], 0
	je	.label_223
.label_232:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x30]
	call	error
	cmp	byte ptr [rbx + 0x24], 0
	je	.label_247
	mov	r13, rbx
	jmp	.label_281
.label_568:
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_383
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_253
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_253:
	not	eax
	and	dword ptr [rbp - 0x7c], eax
	test	r12b, r12b
	jne	.label_261
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_261
	test	bl, bl
	je	.label_268
	lea	rdx, [rbp - 0x2a8]
	mov	edi, 1
	mov	rsi, r15
	call	__lxstat
	test	eax, eax
	je	.label_268
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	jmp	.label_282
.label_223:
	mov	r15b, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	xor	r12d, r12d
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r13, rbx
	jmp	.label_286
.label_502:
	test	ebx, ebx
	js	.label_299
	mov	al, byte ptr [r13 + 0x25]
	test	al, al
	je	.label_299
.label_504:
	cmp	byte ptr [r13 + 0x23], 0
	je	.label_230
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_304
.label_230:
	mov	dword ptr [r15], 0x5f
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_217
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r13 + 0x26], 0
	je	.label_299
	xor	r15d, r15d
	jmp	.label_220
.label_383:
	mov	dword ptr [rbp - 0x7c], 0
	jmp	.label_261
.label_304:
	mov	dword ptr [r15], 0x5f
.label_299:
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_382
	mov	qword ptr [rbp - 0x58], r13
	mov	dword ptr [rbp - 0xb8], 0
	xor	eax, eax
	mov	esi, dword ptr [rbp - 0x38]
	jmp	.label_325
.label_382:
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], r13
	cmp	byte ptr [r13 + 0x16], 0
	mov	dword ptr [rbp - 0xb8], 0
	mov	esi, dword ptr [rbp - 0x38]
	je	.label_325
	mov	rdi, qword ptr [rbp - 0x30]
	call	unlink
	test	eax, eax
	je	.label_333
	mov	r14d, dword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
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
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
.label_451:
	xor	ebx, ebx
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_280
.label_333:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x2e], 0
	je	.label_231
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
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
.label_231:
	mov	dl, 1
	mov	r13, qword ptr [rbp - 0x58]
	cmp	byte ptr [r13 + 0x21], 0
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	r12d, dword ptr [rbp - 0x4c]
	je	.label_356
	mov	ecx, 1
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	r8, r13
	call	set_process_security_ctx
	mov	r12d, dword ptr [rbp - 0x4c]
	mov	dl, 1
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x38], rcx
	test	al, al
	mov	ecx, dword ptr [rbp - 0x7c]
	mov	al, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	ebx, 0
	je	.label_280
	jmp	.label_356
.label_268:
	mov	eax, dword ptr [rbp - 0x290]
	mov	dword ptr [rbp - 0x4c], eax
	not	eax
	test	dword ptr [rbp - 0x7c], eax
	je	.label_261
	mov	r12b, 1
.label_261:
	test	r12b, 1
	je	.label_379
	mov	esi, dword ptr [rbp - 0x4c]
	or	esi, dword ptr [rbp - 0x7c]
	mov	rdi, r15
	call	chmod
	test	eax, eax
	je	.label_379
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r13 + 0x24], 0
	jne	.label_228
.label_379:
	mov	rax, qword ptr [rbp - 0x38]
	test	al, al
	setne	r14b
	jmp	.label_228
.label_427:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_400
.label_513:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	r14d, r14d
	jmp	.label_582
.label_247:
	mov	r15b, 1
	xor	r14d, r14d
	mov	al, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	dword ptr [rbp - 0x4c], eax
	mov	cl, byte ptr [rbp + 0x10]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	r13, rbx
	mov	edi, dword ptr [rbp - 0x6c]
	xor	r12d, r12d
	jmp	.label_310
.label_236:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_226
.label_539:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_356:
	mov	byte ptr [rbp - 0x60], dl
	mov	qword ptr [rbp - 0x58], r13
	mov	dword ptr [rbp - 0xb8], ecx
	mov	r15d, ecx
	not	r15d
	mov	dword ptr [rbp - 0x4c], r12d
	and	r15d, r12d
	mov	esi, 0xc1
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	r13d, eax
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
	mov	ebx, r13d
	test	r13d, r13d
	jns	.label_329
	cmp	r14d, 0x11
	jne	.label_329
	mov	r14d, 0x11
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x18], 0
	jne	.label_443
	lea	rdx, [rbp - 0x340]
	mov	edi, 1
	mov	rsi, qword ptr [rbp - 0x30]
	call	__lxstat
	mov	r14d, 0x11
	test	eax, eax
	jne	.label_329
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x328]
	cmp	eax, 0xa000
	jne	.label_329
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x30], 0
	je	.label_455
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	edx, r15d
	call	open_safer
	mov	ebx, eax
	mov	r14d, dword ptr [r12]
.label_329:
	cmp	r14d, 0x15
	jne	.label_443
	test	ebx, ebx
	jns	.label_443
	mov	r14d, 0x15
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_443
	mov	r15, qword ptr [rbp - 0x30]
	mov	rdi, r15
	call	strlen
	xor	r14d, r14d
	cmp	byte ptr [r15 + rax - 1], 0x2f
	setne	r14b
	or	r14d, 0x14
.label_443:
	mov	al, byte ptr [rbp - 0x60]
	mov	esi, ebx
.label_325:
	test	esi, esi
	js	.label_474
	mov	qword ptr [rbp - 0x60], rax
	lea	rdx, [rbp - 0x210]
	mov	edi, 1
	mov	dword ptr [rbp - 0x38], esi
	call	__fxstat
	test	eax, eax
	je	.label_478
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
.label_234:
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_220
.label_474:
	mov	qword ptr [rbp - 0x60], rax
	test	al, al
	mov	r13, qword ptr [rbp - 0x58]
	mov	r12d, dword ptr [rbp - 0x4c]
	mov	ecx, dword ptr [rbp - 0xb8]
	jne	.label_490
	cmp	r14d, 2
	jne	.label_490
	mov	dl, 1
	cmp	byte ptr [r13 + 0x18], 0
	je	.label_356
.label_490:
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_495
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	jmp	.label_498
.label_478:
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	cmp	byte ptr [rbp - 0x78], 0
	je	.label_342
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x38], 0
	je	.label_503
	xor	eax, eax
	mov	qword ptr [rbp - 0xa0], rax
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edi, dword ptr [rbp - 0x38]
	mov	edx, dword ptr [rbp - 0x88]
	call	ioctl
	test	eax, eax
	je	.label_342
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0x38], 2
	jne	.label_503
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_456
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style
	mov	r14, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r14
	mov	r8, rbx
	call	error
	jmp	.label_234
.label_503:
	call	getpagesize
	mov	ebx, eax
	mov	rax, qword ptr [rbp - 0x1d8]
	movabs	r13, 0x2000000000000001
	cmp	rax, r13
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, r13
	mov	ecx, 0x20000
	mov	qword ptr [rbp - 0xe0], rdx
	cmovae	rdx, rcx
	test	rax, rax
	cmovle	rdx, rcx
	cmp	rax, 0x20000
	cmovl	rdx, rcx
	mov	qword ptr [rbp - 0x98], rdx
	xor	r12d, r12d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rbp - 0x88]
	call	fdadvise
	mov	eax, 0xf000
	mov	r14d, dword ptr [rbp - 0x3b8]
	and	r14d, eax
	cmp	r14d, 0x8000
	jne	.label_541
	mov	rcx, qword ptr [rbp - 0x3a0]
	mov	rdx, rcx
	sar	rdx, 0x3f
	shr	rdx, 0x37
	add	rdx, rcx
	sar	rdx, 9
	cmp	qword ptr [rbp - 0x390], rdx
	setl	r12b
.label_541:
	movsxd	r15, ebx
	and	eax, dword ptr [rbp - 0x1f8]
	cmp	eax, 0x8000
	jne	.label_295
	mov	rax, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rax + 0xc]
	cmp	ecx, 2
	sete	al
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rbp - 0xbc], ecx
	je	.label_389
	and	al, r12b
	jne	.label_389
.label_295:
	mov	rax, qword ptr [rbp - 0x398]
	cmp	rax, r13
	mov	ecx, 0x200
	mov	edi, 0x200
	cmovb	rdi, rax
	test	rax, rax
	cmovle	rdi, rcx
	cmp	rax, r13
	mov	ecx, 0x20000
	cmovae	rdi, rcx
	test	rax, rax
	cmovle	rdi, rcx
	movabs	rbx, 0x7fffffffffffffff
	sub	rbx, r15
	cmp	rax, 0x20000
	cmovl	rdi, rcx
	mov	rsi, qword ptr [rbp - 0x98]
	mov	rdx, rbx
	call	buffer_lcm
	mov	rcx, rax
	cmp	r14d, 0x8000
	jne	.label_578
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	rdx, qword ptr [rbp - 0x98]
	cmp	rax, rdx
	lea	rax, [rax + 1]
	cmovb	rdx, rax
	mov	qword ptr [rbp - 0x98], rdx
.label_578:
	mov	rsi, qword ptr [rbp - 0x98]
	lea	rsi, [rcx + rsi - 1]
	xor	edx, edx
	mov	rax, rsi
	div	rcx
	sub	rsi, rdx
	lea	rax, [rsi - 1]
	cmp	rax, rbx
	cmovae	rsi, rcx
	mov	qword ptr [rbp - 0x98], rsi
	mov	dword ptr [rbp - 0xbc], 0
.label_389:
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rax + r15]
	call	xmalloc
	mov	rcx, rax
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rcx, [rax + r15 - 1]
	xor	edx, edx
	mov	rax, rcx
	div	r15
	sub	rcx, rdx
	mov	qword ptr [rbp - 0xe8], rcx
	test	r12b, r12b
	je	.label_225
	mov	rax, qword ptr [rbp - 0x3a0]
	mov	qword ptr [rbp - 0xb0], rax
	mov	eax, dword ptr [rbp - 0xbc]
	test	al, al
	je	.label_237
	mov	rax, qword ptr [rbp - 0x58]
	mov	eax, dword ptr [rax + 0xc]
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_473
.label_237:
	mov	dword ptr [rbp - 0x90], 1
.label_473:
	lea	rsi, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x88]
	call	extent_scan_init
	xor	eax, eax
	mov	qword ptr [rbp - 0xd0], rax
	cmp	dword ptr [rbp - 0x90], 3
	mov	eax, 0
	cmove	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x218], rax
	mov	r14b, 1
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_252
.label_378:
	cmp	qword ptr [rbp - 0x328], 0
	je	.label_265
	xor	r15d, r15d
.label_544:
	mov	rax, qword ptr [rbp - 0x318]
	lea	rcx, [r15 + r15*2]
	mov	rdx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rax + rcx*8 + 8]
	mov	r12, rdx
	mov	qword ptr [rbp - 0x78], rax
	lea	rax, [rax + rdx]
	cmp	rax, qword ptr [rbp - 0xb0]
	jle	.label_270
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, r12
	cmp	rcx, rax
	cmovg	rcx, rax
	mov	r12, rcx
	sub	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
.label_270:
	mov	r14, r12
	sub	r14, rbx
	sub	r14, qword ptr [rbp - 0xd0]
	je	.label_279
	xor	edx, edx
	mov	edi, dword ptr [rbp - 0x88]
	mov	rsi, r12
	call	lseek
	test	rax, rax
	js	.label_289
	cmp	dword ptr [rbp - 0x90], 1
	jne	.label_570
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_307
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	edi, 0x20000
	mov	eax, 0x400
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_307
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_307:
	mov	r13d, dword ptr [rbp - 0x38]
.label_318:
	test	r14, r14
	je	.label_279
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	ebx, 0x20000
	mov	eax, 0x400
	cmovne	rbx, rax
	cmp	rbx, r14
	cmovae	rbx, r14
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, r13d
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r14, rcx
	cmp	rax, rbx
	je	.label_318
	jmp	.label_393
.label_279:
	xor	r14d, r14d
	jmp	.label_322
.label_570:
	xor	edx, edx
	cmp	dword ptr [rbp - 0x90], 3
	sete	dl
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rcx, r14
	call	create_hole
	mov	r14b, 1
	test	al, al
	je	.label_328
.label_322:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rbp - 0x88]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	r8, qword ptr [rbp - 0x218]
	lea	rax, [rbp - 0x89]
	push	rax
	lea	rax, [rbp - 0xd8]
	push	rax
	push	qword ptr [rbp - 0x78]
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_328
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	r13, [rcx + r12]
	mov	al, byte ptr [rbp - 0x89]
	cmp	r13, qword ptr [rbp - 0xb0]
	je	.label_298
	inc	r15d
	mov	r15d, r15d
	cmp	r15, qword ptr [rbp - 0x328]
	mov	rbx, r12
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xd0], rdx
	jb	.label_544
	test	rcx, rcx
	je	.label_320
	mov	r14b, al
	jmp	.label_320
.label_265:
	mov	r12, rbx
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x78], rax
.label_320:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	cmp	byte ptr [rbp - 0x31f], 0
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xd0], rax
	mov	rbx, r12
	je	.label_252
	jmp	.label_372
.label_298:
	test	rcx, rcx
	je	.label_373
	mov	r14b, al
.label_373:
	mov	byte ptr [rbp - 0x31f], 1
	mov	r13, qword ptr [rbp - 0xb0]
	jmp	.label_320
.label_252:
	lea	rdi, [rbp - 0x340]
	call	extent_scan_read
	test	al, al
	jne	.label_378
	cmp	byte ptr [rbp - 0x31f], 0
	je	.label_293
.label_372:
	mov	r15, qword ptr [rbp - 0xb0]
	sub	r15, r13
	jg	.label_384
	and	r14b, 1
	je	.label_249
.label_384:
	cmp	dword ptr [rbp - 0x90], 1
	jne	.label_401
	cmp	qword ptr [rip + write_zeros.zeros],  0
	jne	.label_396
	mov	al, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [rip + write_zeros.zeros],  rax
	test	rax, rax
	jne	.label_396
	mov	qword ptr [rip + write_zeros.zeros], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [rip + write_zeros.nz],  1
.label_396:
	mov	r14d, 0x400
.label_517:
	test	r15, r15
	je	.label_249
	movzx	eax, byte ptr [rip + write_zeros.nz]
	test	al, al
	mov	ebx, 0x20000
	cmovne	rbx, r14
	cmp	rbx, r15
	cmovae	rbx, r15
	mov	rsi, qword ptr [rip + write_zeros.zeros]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	full_write
	cmp	rax, rbx
	mov	ecx, 0
	cmove	rcx, rbx
	sub	r15, rcx
	cmp	rax, rbx
	je	.label_517
	jmp	.label_349
.label_393:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_423
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x30]
	call	quotearg_n_style_colon
.label_462:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
.label_328:
	mov	rdi, qword ptr [rbp - 0x318]
	call	free
	mov	qword ptr [rbp - 0x318], 0
	mov	qword ptr [rbp - 0x328], 0
	jmp	.label_263
.label_455:
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_440
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
	mov	al, byte ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_451
.label_289:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
	jmp	.label_462
.label_293:
	cmp	byte ptr [rbp - 0x320], 0
	je	.label_350
.label_225:
	xor	r8d, r8d
	mov	eax, dword ptr [rbp - 0xbc]
	test	al, al
	cmovne	r8, qword ptr [rbp - 0xe0]
	xor	r9d, r9d
	mov	rax, qword ptr [rbp - 0x58]
	cmp	dword ptr [rax + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rax, [rbp - 0xd8]
	lea	rbx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x88]
	mov	esi, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0x98]
	push	rax
	push	rbx
	push	-1
	push	qword ptr [rbp - 0x30]
	push	qword ptr [rbp - 0x48]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_263
	cmp	byte ptr [rbp - 0xd8], 0
	je	.label_342
	mov	rsi, qword ptr [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x38]
	call	ftruncate
	test	eax, eax
	jns	.label_342
	jmp	.label_349
.label_401:
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0xb0]
	call	ftruncate
	test	eax, eax
	je	.label_249
.label_349:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_491
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x30]
	call	quotearg_style
.label_374:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
.label_264:
	call	error
	jmp	.label_263
.label_249:
	cmp	dword ptr [rbp - 0x90], 3
	jne	.label_342
	sub	qword ptr [rbp - 0xb0], r13
	jle	.label_342
	mov	esi, 3
	mov	edi, dword ptr [rbp - 0x38]
	mov	rdx, r13
	mov	rcx, qword ptr [rbp - 0xb0]
	call	fallocate
	test	eax, eax
	jns	.label_342
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x26
	je	.label_342
	cmp	ebx, 0x5f
	jne	.label_505
.label_342:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x1f], 0
	je	.label_475
	movups	xmm0, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x340], xmm0
	movups	xmm0, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x330], xmm0
	lea	rdx, [rbp - 0x340]
	mov	edi, dword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	fdutimens
	test	eax, eax
	je	.label_475
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_435
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
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x24], 0
	jne	.label_263
.label_475:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x1d], 0
	je	.label_410
	mov	eax, dword ptr [rbp - 0x15c]
	cmp	eax, dword ptr [rbp - 0x1f4]
	jne	.label_552
	mov	eax, dword ptr [rbp - 0x158]
	cmp	eax, dword ptr [rbp - 0x1f0]
	je	.label_410
.label_552:
	xor	r8d, r8d
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	setne	r8b
	lea	rcx, [rbp - 0x178]
	lea	r9, [rbp - 0x210]
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rbp - 0x38]
	call	set_owner
	cmp	eax, -1
	je	.label_263
	test	eax, eax
	jne	.label_410
	and	dword ptr [rbp - 0xa4], 0xfffff1ff
.label_410:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x27], 0
	je	.label_287
	cmp	byte ptr [rbp - 0x1f8], 0
	js	.label_287
	call	geteuid
	test	eax, eax
	je	.label_287
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_543
	mov	esi, 0x180
	mov	edi, dword ptr [rbp - 0x38]
	call	fchmod
	jmp	.label_549
.label_263:
	xor	r15d, r15d
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_220
.label_543:
	mov	esi, 0x180
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_549:
	test	eax, eax
	jne	.label_287
	mov	esi, dword ptr [rbp - 0xb8]
	not	esi
	and	esi, dword ptr [rbp - 0x4c]
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_376
	mov	edi, dword ptr [rbp - 0x38]
	call	fchmod
	jmp	.label_287
.label_376:
	mov	rdi, qword ptr [rbp - 0x30]
	call	chmod
.label_287:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x1e], 0
	jne	.label_388
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x18], 0
	je	.label_565
.label_388:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, dword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rbp - 0x38]
	mov	r8d, dword ptr [rbp - 0xa4]
	call	copy_acl
	test	eax, eax
	jne	.label_569
	jmp	.label_351
.label_565:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	byte ptr [rax + 0x2b], 0
	je	.label_525
	mov	r13, qword ptr [rbp - 0x58]
	mov	edx, dword ptr [r13 + 0x10]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	call	set_acl
	test	eax, eax
	sete	r15b
	jmp	.label_220
.label_525:
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	je	.label_520
	mov	rax, qword ptr [rbp - 0x58]
	mov	al, byte ptr [rax + 0x20]
	test	al, al
	je	.label_520
	mov	edx, dword ptr [rip + cached_umask.mask]
	cmp	edx, -1
	jne	.label_538
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	edx, dword ptr [rip + cached_umask.mask]
.label_538:
	not	edx
	and	edx, 0x1b6
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x38]
	call	set_acl
	test	eax, eax
	sete	r15b
	mov	r13, qword ptr [rbp - 0x58]
	jmp	.label_220
.label_520:
	cmp	dword ptr [rbp - 0xb8], 0
	je	.label_351
	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_224
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
.label_224:
	not	eax
	test	dword ptr [rbp - 0xb8], eax
	je	.label_351
	cmp	dword ptr [rbp - 0x38], 0
	js	.label_471
	mov	edi, dword ptr [rbp - 0x38]
	mov	esi, dword ptr [rbp - 0x4c]
	call	fchmod
	jmp	.label_338
.label_471:
	mov	rdi, qword ptr [rbp - 0x30]
	mov	esi, dword ptr [rbp - 0x4c]
	call	chmod
.label_338:
	test	eax, eax
	je	.label_351
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
.label_569:
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15b, byte ptr [r13 + 0x24]
	xor	r15b, 1
	jmp	.label_220
.label_351:
	mov	r13, qword ptr [rbp - 0x58]
	mov	r15b, 1
.label_220:
	mov	edi, dword ptr [rbp - 0x38]
	call	close
	test	eax, eax
	js	.label_267
	mov	qword ptr [rbp - 0x38], r15
	jmp	.label_466
.label_267:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x38], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_271
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
.label_466:
	mov	rbx, qword ptr [rbp - 0xa0]
	jmp	.label_280
.label_350:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	jmp	.label_374
.label_505:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
	jmp	.label_264
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407990

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
	#Procedure 0x4079d0
	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:

	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_586
	cmp	eax, 1
	jne	.label_585
.label_586:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_587
.label_585:
	xor	eax, eax
.label_587:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a00
	.globl cached_umask
	.type cached_umask, @function
cached_umask:

	mov	eax, dword ptr [rip + cached_umask.mask]
	cmp	eax, -1
	jne	.label_588
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [rip + cached_umask.mask],  eax
	mov	edi, eax
	call	umask
	mov	eax, dword ptr [rip + cached_umask.mask]
	add	rsp, 8
.label_588:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a30

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
	jle	.label_590
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
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
	jmp	.label_589
.label_590:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_589
	xor	r12b, 1
	jne	.label_589
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_209
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
.label_589:
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
	#Procedure 0x407b20

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
	je	.label_592
	call	can_write_any_file
	test	al, al
	jne	.label_592
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	je	.label_592
	mov	edi, dword ptr [rbx + 0x18]
	lea	rsi, [rsp + 0x14]
	call	strmode
	mov	byte ptr [rsp + 0x1e], 0
	mov	r15, qword ptr [rip + stderr]
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_595
	cmp	byte ptr [r12 + 0x15], 0
	jne	.label_595
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_598
.label_595:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_594
.label_597:
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
	jmp	.label_599
.label_592:
	mov	r15, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_593
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
.label_599:
	call	yesno
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_598:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_596
	jmp	.label_597
	nop	
	.section	.text
	.align	16
	#Procedure 0x407c60

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
	mov	esi, OFFSET FLAT:label_290
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_601
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_602
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
.label_601:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_600
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_600:
	mov	esi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	__overflow
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d20

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
	jne	.label_603
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_616
	mov	edx, dword ptr [r9 + 0x18]
.label_604:
	add	rcx, 0x18
.label_607:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_603
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, r13d
	call	qset_acl
	test	eax, eax
	je	.label_603
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x16
	je	.label_606
	cmp	ebx, 1
	jne	.label_608
.label_606:
	cmp	byte ptr [r15 + 0x1b], 0
	je	.label_609
.label_608:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_620
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
.label_609:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_614
.label_616:
	mov	rax, qword ptr [r15 + 0x18]
	test	al, al
	jne	.label_618
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_603
.label_618:
	mov	edx, dword ptr [r9 + 0x18]
	test	al, al
	setne	bl
	movabs	rsi, 0xff000000000000
	test	rax, rsi
	jne	.label_604
	test	bl, bl
	jne	.label_604
	lea	rcx, [r15 + 0x10]
	jmp	.label_607
.label_603:
	cmp	r13d, -1
	je	.label_610
	mov	edi, r13d
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_614
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_617
	cmp	ebx, 1
	jne	.label_605
.label_617:
	mov	esi, 0xffffffff
	mov	edi, r13d
	mov	edx, r12d
	call	fchown
	jmp	.label_619
.label_610:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_614
	call	__errno_location
	mov	rbp, rax
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_612
	cmp	ebx, 1
	jne	.label_605
.label_612:
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
.label_619:
	mov	dword ptr [rbp], ebx
.label_605:
	mov	ebx, dword ptr [rbp]
	cmp	ebx, 0x16
	je	.label_611
	cmp	ebx, 1
	jne	.label_613
.label_611:
	cmp	byte ptr [r15 + 0x1a], 0
	je	.label_615
.label_613:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
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
	jne	.label_614
.label_615:
	xor	eax, eax
.label_614:
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
	#Procedure 0x407f10

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
	mov	dword ptr [rsp + 0x1c], r9d
	mov	rbp, rcx
	mov	r15, rdx
	mov	dword ptr [rsp + 8], esi
	mov	r12d, edi
	mov	rax, qword ptr [rsp + 0xa0]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r8, r8
	mov	rax, rbp
	mov	qword ptr [rsp + 0x40], r8
	cmovne	rax, r8
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	jmp	.label_640
.label_631:
	mov	qword ptr [rsp + 0x10], rsi
	mov	rax, qword ptr [rsp + 0xa0]
	mov	byte ptr [rax], bl
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x28]
.label_640:
	cmp	rsi, rbp
	cmovb	rbp, rsi
	mov	qword ptr [rsp + 0x28], rsi
	nop	dword ptr [rax]
.label_635:
	test	rsi, rsi
	je	.label_639
	mov	edi, r12d
	mov	rsi, r15
	mov	rdx, rbp
	call	read
	mov	r13, rax
	test	r13, r13
	jns	.label_630
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 4
	mov	rsi, qword ptr [rsp + 0x28]
	je	.label_635
	jmp	.label_636
	nop	word ptr cs:[rax + rax]
.label_630:
	je	.label_639
	sub	qword ptr [rsp + 0x28], r13
	mov	rax, qword ptr [rsp + 0x98]
	add	qword ptr [rax], r13
	mov	ebx, r14d
	and	bl, 1
	mov	r8, r15
	mov	rdi, r15
	mov	rbp, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x20], r15
	mov	dword ptr [rsp + 0xc], r12d
	nop	word ptr cs:[rax + rax]
.label_628:
	mov	r9d, ebx
	cmp	rbp, r13
	mov	r12, r13
	cmovb	r12, rbp
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_625
	test	r12, r12
	je	.label_625
	mov	rbx, rsi
	not	rbp
	mov	rax, r13
	not	rax
	cmp	rbp, rax
	cmova	rax, rbp
	mov	rdx, -2
	sub	rdx, rax
	mov	rsi, rdi
	nop	word ptr [rax + rax]
.label_644:
	cmp	byte ptr [rsi], 0
	jne	.label_634
	mov	r14b, 1
	test	rdx, rdx
	je	.label_622
	inc	rsi
	mov	eax, edx
	dec	rdx
	test	al, 0xf
	jne	.label_644
	inc	rdx
	mov	rbp, rdi
	mov	r14, r8
	mov	r15d, r9d
	call	memcmp
	mov	r9d, r15d
	mov	r8, r14
	mov	rdi, rbp
	test	eax, eax
	sete	r14b
	jmp	.label_622
.label_634:
	xor	r14d, r14d
.label_622:
	mov	rsi, rbx
.label_625:
	mov	ebx, r14d
	and	bl, 1
	sete	al
	cmp	bl, r9b
	setne	r10b
	test	rsi, rsi
	setne	cl
	cmp	r13, r12
	sete	dl
	and	dl, al
	test	r12, r12
	sete	r15b
	or	r15b, dl
	and	cl, r10b
	jne	.label_626
	test	r15b, r15b
	jne	.label_626
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	cmp	rsi, rax
	ja	.label_637
	add	rsi, r12
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12d, dword ptr [rsp + 0xc]
	jmp	.label_643
	nop	
.label_626:
	mov	byte ptr [rsp + 6], bl
	mov	qword ptr [rsp + 0x10], rdi
	mov	byte ptr [rsp + 7], cl
	test	cl, 1
	mov	rbp, r12
	mov	eax, 0
	cmovne	rbp, rax
	add	rsi, rbp
	test	r9b, r9b
	mov	rcx, rsi
	je	.label_621
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x88]
	call	create_hole
	test	al, al
	jne	.label_647
	jmp	.label_624
.label_621:
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, r8
	mov	rdx, rcx
	mov	rbx, rcx
	call	full_write
	cmp	rax, rbx
	jne	.label_638
.label_647:
	test	r15b, r15b
	je	.label_641
	test	r12, r12
	cmove	r13, r12
	test	byte ptr [rsp + 7], 1
	mov	eax, 0
	cmove	r12, rax
	mov	rsi, r12
	jmp	.label_642
	nop	word ptr cs:[rax + rax]
.label_641:
	mov	rsi, r12
	mov	rbp, r12
.label_642:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	r8, rdi
	mov	r15, qword ptr [rsp + 0x20]
	mov	r12d, dword ptr [rsp + 0xc]
	mov	bl, byte ptr [rsp + 6]
.label_643:
	add	rdi, rbp
	sub	r13, rbp
	jne	.label_628
	jmp	.label_631
.label_639:
	test	r14b, 1
	je	.label_633
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x88]
	mov	rcx, qword ptr [rsp + 0x10]
	call	create_hole
	test	al, al
	je	.label_624
.label_633:
	mov	r14b, 1
	jmp	.label_627
.label_636:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_646
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x80]
.label_623:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_629:
	call	error
	jmp	.label_627
.label_624:
	xor	r14d, r14d
.label_627:
	mov	eax, r14d
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_637:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_632
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
	mov	rdx, rbx
	jmp	.label_629
.label_638:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_645
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x88]
	jmp	.label_623
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4082b0

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
	js	.label_648
	mov	r15b, 1
	test	r12b, r12b
	je	.label_649
	sub	rax, rbp
	mov	esi, 3
	mov	edi, ebx
	mov	rdx, rax
	mov	rcx, rbp
	call	fallocate
	test	eax, eax
	jns	.label_649
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x26
	je	.label_649
	cmp	ebp, 0x5f
	je	.label_649
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
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
	jmp	.label_650
.label_648:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_454
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
.label_650:
	call	error
.label_649:
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
	#Procedure 0x408390

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
	je	.label_651
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
.label_651:
	add	rsp, 0x20
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083e0

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
	#Procedure 0x408400

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
	je	.label_652
	mov	rax, qword ptr [rcx + 0x10]
.label_652:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x408430

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
	je	.label_653
	xor	eax, eax
	cmp	r14, rbx
	je	.label_654
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rax, qword ptr [r14 + 0x10]
.label_654:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_653:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084b0

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
	je	.label_655
	pop	rax
	ret	
.label_655:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4084e0

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
	#Procedure 0x4084f0

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_656
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_656:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408510
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi, qword ptr [rip + src_to_dest]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408520

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
	#Procedure 0x408550

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
.label_675:
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
	js	.label_681
	mov	ecx, dword ptr [rsp + 0x1c]
	test	rcx, rcx
	je	.label_657
	mov	rax, qword ptr [r14 + 0x18]
	mov	rdx, rcx
	not	rdx
	cmp	rax, rdx
	ja	.label_664
	add	rax, rcx
	mov	qword ptr [r14 + 0x18], rax
	movabs	rcx, 0x555555555555556
	cmp	rax, rcx
	jae	.label_670
	mov	rdi, qword ptr [r14 + 0x28]
	sub	r12, rdi
	shl	rax, 3
	lea	rsi, [rax + rax*2]
	call	xrealloc
	mov	qword ptr [r14 + 0x28], rax
	add	r12, rax
	mov	r8d, dword ptr [rsp + 0x1c]
	test	r8d, r8d
	je	.label_662
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_659:
	mov	ecx, edx
	imul	rbx, rcx, 0x38
	mov	rdi, qword ptr [rsp + rbx + 0x28]
	mov	rsi, qword ptr [rsp + rbx + 0x38]
	mov	rcx, r13
	sub	rcx, rsi
	cmp	rdi, rcx
	ja	.label_678
	test	r15d, r15d
	je	.label_661
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	mov	ecx, r9d
	and	ecx, 0xfffffffe
	mov	r10, qword ptr [r12 + 8]
	mov	rbp, qword ptr [r12]
	add	rbp, r10
	cmp	dword ptr [r12 + 0x10], ecx
	jne	.label_677
	cmp	rbp, rdi
	jne	.label_677
	add	r10, rsi
	mov	qword ptr [r12 + 8], r10
	mov	dword ptr [r12 + 0x10], r9d
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
.label_661:
	mov	rbp, qword ptr [r14 + 8]
	cmp	rbp, rdi
	ja	.label_668
	mov	r9d, dword ptr [rsp + rbx + 0x50]
	jmp	.label_666
.label_677:
	cmp	rbp, rdi
	jbe	.label_666
.label_668:
	mov	rcx, rbp
	sub	rcx, rdi
	sub	rsi, rcx
	ja	.label_674
	lea	rcx, [rsp + rbx + 0x28]
	mov	qword ptr [rcx], rbp
	mov	qword ptr [rcx + 0x10], rsi
	dec	edx
	jmp	.label_676
	nop	word ptr cs:[rax + rax]
.label_666:
	mov	ecx, r15d
	lea	rcx, [rcx + rcx*2]
	lea	r12, [rax + rcx*8]
	mov	qword ptr [rax + rcx*8], rdi
	mov	qword ptr [rax + rcx*8 + 8], rsi
	mov	dword ptr [rax + rcx*8 + 0x10], r9d
	inc	r15d
.label_676:
	inc	edx
	cmp	edx, r8d
	jb	.label_659
.label_662:
	test	byte ptr [r12 + 0x10], 1
	je	.label_679
	mov	byte ptr [r14 + 0x21], 1
.label_679:
	mov	cl, byte ptr [r14 + 0x21]
	cmp	r15d, 0x49
	jb	.label_658
	test	cl, cl
	jne	.label_660
	dec	r15d
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 - 0x18]
	mov	qword ptr [r14 + 0x18], r15
	jmp	.label_663
	nop	word ptr cs:[rax + rax]
.label_658:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
	test	cl, cl
	jne	.label_669
.label_663:
	mov	rbx, qword ptr [r12 + 8]
	add	rbx, qword ptr [r12]
	mov	qword ptr [r14 + 8], rbx
	mov	al, 1
	cmp	r15d, 0x48
	jb	.label_675
	jmp	.label_667
.label_674:
	cmp	qword ptr [r14 + 8], 0
	je	.label_665
	xor	eax, eax
	jmp	.label_667
.label_681:
	cmp	qword ptr [r14 + 8], 0
	je	.label_665
	xor	eax, eax
	jmp	.label_667
.label_665:
	mov	byte ptr [r14 + 0x20], 1
	xor	eax, eax
	jmp	.label_667
.label_657:
	mov	byte ptr [r14 + 0x21], 1
	cmp	qword ptr [r14 + 8], 0
	setne	al
	jmp	.label_667
.label_660:
	mov	eax, r15d
	mov	qword ptr [r14 + 0x18], rax
.label_669:
	mov	al, 1
.label_667:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_678:
	mov	edi, OFFSET FLAT:label_671
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_673
	call	__assert_fail
.label_664:
	mov	edi, OFFSET FLAT:label_680
	mov	esi, OFFSET FLAT:label_672
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_673
	call	__assert_fail
.label_670:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4087e0

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
	jns	.label_687
	mov	edi, r13d
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_682
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_687:
	cmp	r14d, 0x11
	jne	.label_682
	xor	bpl, 1
	jne	.label_682
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_684
	lea	r15, [rsp + 0x20]
	jmp	.label_688
.label_684:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_683
.label_688:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_683
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
	je	.label_685
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_686
.label_683:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_682
.label_685:
	mov	edi, ebx
	mov	rsi, r15
	mov	ebp, ebx
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_689
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_689:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	call	unlinkat
.label_686:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_682
	mov	rdi, r15
	call	free
.label_682:
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
	#Procedure 0x408950

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
	#Procedure 0x408970

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
	jns	.label_696
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_694
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_696:
	cmp	ebp, 0x11
	jne	.label_694
	xor	bl, 1
	jne	.label_694
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_693
	lea	r12, [rsp + 0x10]
	jmp	.label_695
.label_693:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_691
.label_695:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_691
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_690
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_692
.label_691:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_694
.label_690:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_692
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_692:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_694
	mov	rdi, r12
	call	free
.label_694:
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
	#Procedure 0x408ab0

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
	#Procedure 0x408ad0

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
	je	.label_697
	cmp	ebp, -2
	jne	.label_698
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_700
.label_697:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
.label_700:
	call	error
.label_698:
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
	#Procedure 0x408b60

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
	je	.label_701
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_390
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
.label_701:
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
	#Procedure 0x408bc0

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
	je	.label_702
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_710:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_707
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_703
.label_707:
	cmp	r13, r12
	jb	.label_709
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_704
	add	r12, r12
	jmp	.label_705
	nop	word ptr cs:[rax + rax]
.label_704:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_708
.label_705:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_710
	jmp	.label_702
.label_709:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_702
.label_708:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_706
.label_703:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_706:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_702:
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
	#Procedure 0x408cd0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_711
	mov	edi, OFFSET FLAT:label_714
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_712
	test	rbx, rbx
	je	.label_713
.label_711:
	mov	eax, OFFSET FLAT:label_712
	cmp	byte ptr [rbx], 0
	je	.label_713
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_712
	cmove	rax, rbx
.label_713:
	mov	qword ptr [rip + simple_backup_suffix],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d20

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
	jne	.label_729
	mov	edi, OFFSET FLAT:label_714
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_712
	test	rbx, rbx
	je	.label_733
	mov	edi, OFFSET FLAT:label_712
	cmp	byte ptr [rbx], 0
	je	.label_733
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:label_712
	cmove	rdi, rbx
.label_733:
	mov	qword ptr [rip + simple_backup_suffix],  rdi
.label_729:
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
	je	.label_746
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
.label_738:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcpy
	cmp	r12d, 1
	jne	.label_719
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
	jmp	.label_716
	nop	word ptr cs:[rax + rax]
.label_719:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	mov	dword ptr [rsp + 8], r12d
	je	.label_736
	call	rewinddir
	mov	rdi, qword ptr [rsp]
	jmp	.label_739
.label_736:
	movzx	ebp, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x40]
	mov	rsi, r13
	lea	rcx, [rsp + 0xc]
	call	opendirat
	mov	rdi, rax
	test	rdi, rdi
	je	.label_745
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
.label_739:
	mov	rax, rdi
	mov	qword ptr [rsp], rax
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_715
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
.label_744:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_723
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_723
	mov	rsi, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rbx + rsi + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_723
	lea	rcx, [rbx + rsi + 0x13]
	cmp	al, 0x39
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_734
	lea	rcx, [rbx + rsi + 0x17]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_742:
	cmp	al, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	edx, eax
	add	edx, -0x30
	inc	rbp
	cmp	edx, 0xa
	jb	.label_742
	inc	rbp
	jmp	.label_722
.label_734:
	mov	ebp, 1
.label_722:
	cmp	al, 0x7e
	jne	.label_726
	lea	rbx, [rbx + rsi + 0x15]
	cmp	byte ptr [rbx + rbp + 1], 0
	jne	.label_726
	cmp	qword ptr [rsp + 0x30], rbp
	jb	.label_720
	jne	.label_726
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jg	.label_726
.label_720:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x30], rcx
	lea	r15, [rax + rcx]
	cmp	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], rdx
	jae	.label_721
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
	jne	.label_725
	jmp	.label_718
.label_721:
	mov	rax, r14
.label_725:
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
	jmp	.label_737
.label_740:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_737:
	cmp	cl, 0x39
	je	.label_740
	inc	cl
	mov	byte ptr [rax], cl
.label_726:
	mov	r15, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_723:
	mov	rdi, qword ptr [rsp]
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_744
	mov	r13, r14
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x38]
	jmp	.label_747
.label_745:
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
.label_747:
	cmp	ecx, 1
	mov	qword ptr [rsp], rax
	je	.label_727
	cmp	ecx, 2
	je	.label_715
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_716
	jmp	.label_718
	nop	dword ptr [rax + rax]
.label_715:
	cmp	dword ptr [rsp + 8], 2
	jne	.label_727
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
.label_727:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_730
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_732
	test	r12d, r12d
	js	.label_735
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
	jmp	.label_741
.label_730:
	mov	eax, 0xff
	jmp	.label_732
.label_735:
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
.label_741:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	rax, rdx
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_732:
	cmp	rax, rbp
	jae	.label_717
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rcx, [r13 + rcx]
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_716
.label_717:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_716:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	r12d, dword ptr [rsp + 8]
	mov	r13, r14
	je	.label_724
	mov	edx, dword ptr [rsp + 0xc]
	test	edx, edx
	jns	.label_728
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_728:
	xor	r8d, r8d
	cmp	r12d, 1
	setne	r8b
	mov	rax, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, r15
	call	renameatu
	test	eax, eax
	je	.label_724
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_738
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_743
	call	closedir
.label_743:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_731
.label_724:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_746
	call	closedir
	jmp	.label_746
.label_718:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_731:
	xor	r13d, r13d
.label_746:
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
	#Procedure 0x409300

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409310
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_748
	pop	rcx
	ret	
.label_748:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409330
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_749
	cmp	byte ptr [rsi], 0
	je	.label_749
	push	rax
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + backup_types]
	add	rsp, 8
.label_749:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409370

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_750
	cmp	byte ptr [rsi], 0
	je	.label_750
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_753
.label_750:
	mov	edi, OFFSET FLAT:label_751
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_752
	cmp	byte ptr [rax], 0
	je	.label_752
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_754
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_753:
	call	__xargmatch_internal
	mov	ecx, dword ptr [(rax * 4) + backup_types]
.label_752:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4093e0

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_755
	test	rsi, rsi
	je	.label_757
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_756:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_756
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_757
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	je	.label_758
	jmp	.label_757
.label_755:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_757:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_758:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x409450
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409460

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
	je	.label_761
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_761
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_761:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_762
	test	eax, eax
	jne	.label_762
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_762:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_764
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_763
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_759
.label_763:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_760
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_759:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409530
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409540
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409550

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_769
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_767
	cmp	dword ptr [rbp], 0x20
	jne	.label_767
.label_769:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_766
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_767:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_768
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_765
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_766:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_765:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_760
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409610

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_770
	pop	rcx
	ret	
.label_770:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409630
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
.label_772:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_771
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_772
.label_771:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409670

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
.label_776:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_773
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_776
.label_773:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_775
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_774
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_774:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_775:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409710

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_777:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_777
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_781
	nop	word ptr cs:[rax + rax]
.label_780:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_781:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_780
	test	dl, dl
	je	.label_779
	mov	ecx, esi
	and	cl, 1
	je	.label_778
	xor	esi, esi
.label_778:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_780
.label_779:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409770

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_783:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_782
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_783
.label_782:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097a0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_784
	mov	rbx, rax
.label_784:
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
	#Procedure 0x4097d0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097e0
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_785
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_785:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409800

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_786
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_786:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_787
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_789
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_788
.label_789:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_788:
	mov	edx, dword ptr [rax]
.label_787:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098d0

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
	je	.label_790
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
	je	.label_791
	cmp	rax, rbx
	je	.label_790
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_790:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_791:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409950

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_792
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
.label_792:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409990

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_802
	cmp	ecx, 0x3fff
	jg	.label_797
	cmp	eax, 0x1000
	je	.label_801
	cmp	eax, 0x2000
	jne	.label_793
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_799
	mov	edx, 5
	jmp	dcgettext
.label_802:
	cmp	eax, 0x8000
	je	.label_804
	cmp	eax, 0xa000
	je	.label_808
	cmp	eax, 0xc000
	jne	.label_793
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_800
	mov	edx, 5
	jmp	dcgettext
.label_797:
	cmp	eax, 0x4000
	je	.label_807
	cmp	eax, 0x6000
	jne	.label_793
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_796
	mov	edx, 5
	jmp	dcgettext
.label_801:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_806
	mov	edx, 5
	jmp	dcgettext
.label_804:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_798
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_809
	mov	edx, 5
	jmp	dcgettext
.label_808:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_794
	mov	edx, 5
	jmp	dcgettext
.label_807:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	jmp	dcgettext
.label_793:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_795
	mov	edx, 5
	jmp	dcgettext
.label_798:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_805
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a90

	.globl strmode
	.type strmode, @function
strmode:
	mov	eax, edi
	mov	edx, eax
	and	edx, 0xfffff000
	movsx	ecx, dx
	cmp	ecx, 0xfff
	jle	.label_814
	cmp	ecx, 0x3fff
	jg	.label_820
	movzx	ecx, dx
	cmp	ecx, 0x1000
	je	.label_823
	cmp	ecx, 0x2000
	jne	.label_818
	mov	cl, 0x63
	jmp	.label_810
.label_814:
	mov	cl, 0x2d
	movzx	edx, dx
	cmp	edx, 0x8000
	je	.label_810
	cmp	edx, 0xa000
	je	.label_815
	cmp	edx, 0xc000
	jne	.label_818
	mov	cl, 0x73
	jmp	.label_810
.label_820:
	movzx	ecx, dx
	cmp	ecx, 0x6000
	je	.label_822
	cmp	ecx, 0x4000
	jne	.label_818
	mov	cl, 0x64
	jmp	.label_810
.label_823:
	mov	cl, 0x70
	jmp	.label_810
.label_822:
	mov	cl, 0x62
	jmp	.label_810
.label_818:
	mov	cl, 0x3f
	jmp	.label_810
.label_815:
	mov	cl, 0x6c
.label_810:
	push	rbx
	mov	byte ptr [rsi], cl
	mov	bl, ah
	test	bl, 1
	mov	r9b, 0x72
	mov	cl, 0x72
	jne	.label_812
	mov	cl, 0x2d
.label_812:
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
	jne	.label_819
	mov	cl, 0x2d
.label_819:
	test	bl, 8
	jne	.label_811
	mov	dl, cl
.label_811:
	mov	byte ptr [rsi + 3], dl
	test	al, 0x20
	mov	cl, 0x72
	jne	.label_826
	mov	cl, 0x2d
.label_826:
	mov	byte ptr [rsi + 4], cl
	test	al, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_817
	mov	cl, 0x2d
.label_817:
	mov	byte ptr [rsi + 5], cl
	mov	ecx, eax
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_821
	mov	cl, 0x2d
.label_821:
	test	bl, 4
	jne	.label_824
	mov	dil, cl
.label_824:
	mov	byte ptr [rsi + 6], dil
	test	al, 4
	jne	.label_827
	mov	r9b, 0x2d
.label_827:
	mov	byte ptr [rsi + 7], r9b
	test	al, 2
	jne	.label_813
	mov	dl, 0x2d
.label_813:
	mov	byte ptr [rsi + 8], dl
	and	eax, 1
	jne	.label_816
	mov	r8b, 0x2d
.label_816:
	test	bl, 2
	pop	rbx
	je	.label_825
	shl	eax, 5
	or	eax, 0x54
	mov	r8d, eax
.label_825:
	mov	byte ptr [rsi + 9], r8b
	mov	byte ptr [rsi + 0xa], 0x20
	mov	byte ptr [rsi + 0xb], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bc0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bd0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_828
	pop	rcx
	ret	
.label_828:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0

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
	je	.label_833
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_832
	cmp	byte ptr [r15], 0x2f
	je	.label_832
	mov	r12b, 0x2f
	jmp	.label_829
.label_833:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_829
.label_832:
	xor	r12d, r12d
.label_829:
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
	je	.label_831
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_830
	mov	qword ptr [rax], rbp
.label_830:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_831:
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
	#Procedure 0x409cd0

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
	je	.label_834
	nop	word ptr [rax + rax]
.label_836:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_834
	test	rax, rax
	je	.label_835
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_836
	jmp	.label_834
.label_835:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_834:
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
	#Procedure 0x409d30
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d40
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d50
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d60
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_837
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_843
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_841:
	cmp	qword ptr [rcx], 0
	je	.label_840
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_842:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_842
	cmp	rdi, rax
	cmova	rax, rdi
.label_840:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_839
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_844:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_844
	cmp	rdi, rax
	cmova	rax, rdi
.label_839:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_841
.label_843:
	test	r8, r8
	je	.label_837
	cmp	qword ptr [rcx], 0
	je	.label_837
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_838:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_838
	cmp	rdx, rax
	cmova	rax, rdx
.label_837:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e20
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_850
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_853
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_854:
	cmp	qword ptr [rax], 0
	je	.label_846
	mov	rdx, rax
	nop	dword ptr [rax]
.label_852:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_852
	inc	r10
.label_846:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_855
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_848:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_848
	inc	r10
.label_855:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_854
	jmp	.label_851
.label_853:
	xor	r10d, r10d
.label_851:
	test	r8, r8
	je	.label_850
	cmp	qword ptr [rax], 0
	je	.label_850
	nop	dword ptr [rax]
.label_845:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_845
	inc	r10
.label_850:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_847
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_849
.label_847:
	xor	eax, eax
.label_849:
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ee0
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
	jae	.label_856
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_859
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_870:
	cmp	qword ptr [rax], 0
	je	.label_866
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_860:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_860
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_866:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_867
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_868:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_868
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_867:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_870
.label_859:
	test	r8, r8
	je	.label_856
	cmp	qword ptr [rax], 0
	je	.label_856
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_857:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_857
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_856:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_858
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_869
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_862]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_863]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_864]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_865
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_861
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
	#Procedure 0x40a050

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
	jae	.label_874
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_871
	add	rbx, rax
	je	.label_871
	cmp	rsi, r12
	je	.label_873
	xor	r15d, r15d
	nop	
.label_872:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_875
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_871
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_872
.label_873:
	mov	r15, r12
	jmp	.label_871
.label_875:
	mov	r15, qword ptr [rbx]
.label_871:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_874:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_876
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_879
	nop	word ptr cs:[rax + rax]
.label_878:
	add	rcx, 0x10
.label_879:
	cmp	rcx, rdx
	jae	.label_877
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_878
.label_876:
	ret	
.label_877:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a110
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
	jae	.label_882
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_883:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_880
	test	rdx, rdx
	jne	.label_883
	jmp	.label_881
.label_880:
	test	rdx, rdx
	je	.label_881
	mov	rax, qword ptr [rdx]
	jmp	.label_884
.label_881:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_885:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_884
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_885
.label_884:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_882:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1a0
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_886
	xor	eax, eax
.label_888:
	cmp	qword ptr [r9], 0
	je	.label_887
	test	r9, r9
	je	.label_887
	mov	r8, r9
	nop	
.label_889:
	cmp	rax, rdx
	jae	.label_886
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_889
	mov	r8, qword ptr [rdi + 8]
.label_887:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_888
.label_886:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1f0
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
	jae	.label_893
	xor	ebx, ebx
.label_892:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_894
	test	r13, r13
	je	.label_894
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_893
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_891:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_890
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_891
	jmp	.label_893
	nop	dword ptr [rax]
.label_890:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_894:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_892
.label_893:
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
	#Procedure 0x40a290
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_895
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_896:
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
	jne	.label_896
.label_895:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2d0
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_897]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2f0

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
	je	.label_898
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_911
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_901]
	jbe	.label_899
	movss	xmm1, dword ptr [rip + label_905]
	ucomiss	xmm1, xmm0
	jbe	.label_899
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_910]
	jbe	.label_899
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_899
	addss	xmm1, dword ptr [rip + label_901]
	ucomiss	xmm0, xmm1
	jbe	.label_899
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_906]
	ucomiss	xmm2, xmm0
	jb	.label_899
	ucomiss	xmm0, xmm1
	jbe	.label_899
.label_911:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_912
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_900
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_904
.label_900:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_904:
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
	jae	.label_899
.label_912:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_907
	nop	
.label_903:
	add	rbx, 2
.label_907:
	cmp	rbx, -1
	je	.label_899
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_902
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_913:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_902
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_913
.label_902:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_903
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_899
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_899
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_899
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
	jmp	.label_898
.label_899:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_898:
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
	#Procedure 0x40a510

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
	#Procedure 0x40a520

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a530
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_916
	nop	word ptr cs:[rax + rax]
.label_919:
	add	r14, 0x10
.label_916:
	cmp	r14, rax
	jae	.label_918
	cmp	qword ptr [r14], 0
	je	.label_919
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_920
	nop	word ptr cs:[rax + rax]
.label_915:
	test	cl, 1
	je	.label_914
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_914:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_915
.label_920:
	test	cl, cl
	je	.label_917
	mov	rdi, qword ptr [r14]
	call	rax
.label_917:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_919
.label_918:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5e0

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
	jmp	.label_930
	nop	
.label_925:
	add	r15, 0x10
.label_930:
	cmp	r15, rax
	jae	.label_927
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_925
	test	r15, r15
	je	.label_925
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_926
.label_929:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_926:
	test	rbx, rbx
	jne	.label_929
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_925
.label_927:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_922
	nop	
.label_924:
	add	r15, 0x10
.label_922:
	cmp	r15, rax
	jae	.label_921
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_924
	nop	word ptr cs:[rax + rax]
.label_928:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_928
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_924
.label_921:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_931
.label_923:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_923
.label_931:
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
	#Procedure 0x40a6b0

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
	jne	.label_939
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_933
	cvtsi2ss	xmm0, rsi
	jmp	.label_938
.label_933:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_938:
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
	jae	.label_932
.label_939:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_943
	nop	dword ptr [rax + rax]
.label_936:
	add	rbx, 2
.label_943:
	cmp	rbx, -1
	je	.label_932
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_935
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_950:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_935
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_950
.label_935:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_936
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_932
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_944
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_932
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
	je	.label_940
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_944
.label_940:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_934
	nop	
.label_945:
	add	r12, 0x10
.label_934:
	cmp	r12, r15
	jae	.label_942
	cmp	qword ptr [r12], 0
	je	.label_945
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_948
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_946:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_941
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_947
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_949
	nop	word ptr [rax + rax]
.label_947:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_949:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_946
.label_948:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_945
.label_942:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_937
	mov	rdi, qword ptr [rsp]
	call	free
.label_932:
	xor	ebp, ebp
.label_944:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_941:
	call	abort
.label_937:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a940

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
	jae	.label_951
	nop	word ptr cs:[rax + rax]
.label_955:
	mov	r13, qword ptr [r14]
	test	r13, r13
	je	.label_961
	mov	r15, qword ptr [r14 + 8]
	test	r15, r15
	je	.label_964
	mov	rsi, qword ptr [rbp + 0x10]
	nop	dword ptr [rax]
.label_959:
	mov	rbx, qword ptr [r15]
	mov	rdi, rbx
	call	qword ptr [rbp + 0x30]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	rax, rsi
	jae	.label_956
	mov	rdx, qword ptr [rbp]
	mov	rcx, qword ptr [r15 + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_958
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [r15 + 8], rdi
	mov	qword ptr [rdx + rax + 8], r15
	jmp	.label_963
	nop	dword ptr [rax]
.label_958:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [rbp + 0x18]
	mov	qword ptr [r15], 0
	mov	rax, qword ptr [rbp + 0x48]
	mov	qword ptr [r15 + 8], rax
	mov	qword ptr [rbp + 0x48], r15
.label_963:
	test	rcx, rcx
	mov	r15, rcx
	jne	.label_959
	mov	r13, qword ptr [r14]
.label_964:
	mov	qword ptr [r14 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_961
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rdi, r13
	call	qword ptr [rbp + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [rbp + 0x10]
	jae	.label_954
	mov	r15, qword ptr [rbp]
	shl	rbx, 4
	cmp	qword ptr [r15 + rbx], 0
	je	.label_957
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_960
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp + 0x48], rcx
	jmp	.label_962
.label_957:
	add	r15, rbx
	mov	qword ptr [r15], r13
	inc	qword ptr [rbp + 0x18]
	jmp	.label_952
.label_960:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_953
.label_962:
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [r15 + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + rbx + 8], rax
.label_952:
	mov	qword ptr [r14], 0
	dec	qword ptr [r12 + 0x18]
.label_961:
	add	r14, 0x10
	cmp	r14, qword ptr [r12 + 8]
	jb	.label_955
	mov	al, 1
.label_951:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_953:
	xor	eax, eax
	jmp	.label_951
.label_956:
	call	abort
.label_954:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aab0

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
	je	.label_984
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_984
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_966
	cmp	rsi, r14
	je	.label_993
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_967
	mov	rax, qword ptr [r12]
.label_965:
	test	rax, rax
	jne	.label_970
	jmp	.label_966
.label_993:
	mov	rax, r14
.label_970:
	xor	ebp, ebp
	test	r15, r15
	je	.label_973
	mov	qword ptr [r15], rax
	jmp	.label_973
.label_967:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_966
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_990:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_986
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_989
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_990
.label_966:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_991
	cvtsi2ss	xmm1, rax
	jmp	.label_995
.label_991:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_995:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_971
	cvtsi2ss	xmm0, rcx
	jmp	.label_981
.label_971:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_981:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_976
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_988
	ucomiss	xmm2, dword ptr [rip + label_901]
	jbe	.label_968
	movss	xmm3, dword ptr [rip + label_905]
	ucomiss	xmm3, xmm2
	jbe	.label_968
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_910]
	jbe	.label_968
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_968
	addss	xmm3, dword ptr [rip + label_901]
	ucomiss	xmm2, xmm3
	jbe	.label_968
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_906]
	ucomiss	xmm5, xmm4
	jb	.label_968
	ucomiss	xmm4, xmm3
	ja	.label_980
.label_968:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_982]
	jmp	.label_980
.label_988:
	mov	eax, OFFSET FLAT:default_tuning
.label_980:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_976
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_974
	mulss	xmm0, xmm2
.label_974:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_909]
	jae	.label_973
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
	je	.label_973
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_984
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_976
	cmp	rsi, r14
	mov	rax, r14
	je	.label_987
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_992
	mov	rax, qword ptr [r12]
.label_987:
	test	rax, rax
	jne	.label_994
.label_976:
	cmp	qword ptr [r12], 0
	je	.label_979
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_969
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_972
.label_979:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_977]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_978
.label_969:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_973
.label_972:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_978:
	mov	ebp, 1
.label_973:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_986:
	mov	rax, r14
	jmp	.label_965
.label_989:
	mov	rax, qword ptr [rbp]
	jmp	.label_965
.label_992:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_976
	lea	rbp, [rbx + rbp + 8]
.label_985:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_975
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_983
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_985
	jmp	.label_976
.label_975:
	mov	rax, r14
	jmp	.label_987
.label_983:
	mov	rax, qword ptr [rbp]
	jmp	.label_987
.label_984:
	call	abort
.label_994:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adf0

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
	je	.label_996
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_996:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ae20

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
	jae	.label_1007
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_1002
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_1013
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_1014
	mov	r14, qword ptr [r13]
.label_1013:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_1017
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_998
.label_1014:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_1002
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1011:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_1008
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_1010
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_1011
	jmp	.label_1002
.label_1017:
	mov	qword ptr [r13], 0
	jmp	.label_998
.label_1008:
	mov	rcx, rax
	jmp	.label_1016
.label_1010:
	mov	r14, qword ptr [rcx]
.label_1016:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_998:
	xor	r12d, r12d
	test	r14, r14
	je	.label_1002
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_1000
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_1006
	cvtsi2ss	xmm1, rax
	jmp	.label_1009
.label_1006:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_1009:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_1012
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_1015
.label_1012:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_1015:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_1000
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_1003
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_901]
	jbe	.label_1005
	movss	xmm4, dword ptr [rip + label_905]
	ucomiss	xmm4, xmm3
	jbe	.label_1005
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_1005
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_910]
	jbe	.label_1005
	movss	xmm4, dword ptr [rip + label_901]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_1005
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_906]
	ucomiss	xmm5, xmm3
	jb	.label_1005
	ucomiss	xmm3, xmm4
	ja	.label_997
.label_1005:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_997
.label_1003:
	mov	eax, OFFSET FLAT:default_tuning
.label_997:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_1000
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_1004
	mulss	xmm0, dword ptr [rax + 8]
.label_1004:
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
	jne	.label_1000
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_1001
	nop	word ptr cs:[rax + rax]
.label_999:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_999
.label_1001:
	mov	qword ptr [r15 + 0x48], 0
.label_1000:
	mov	r12, r14
.label_1002:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1007:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b0c0

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
	#Procedure 0x40b0f0

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
	#Procedure 0x40b100

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1018
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1019
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_1018:
	xor	eax, eax
	ret	
.label_1019:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b130
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1020
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_1021
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_1020:
	xor	eax, eax
	ret	
.label_1021:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40b160

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
	#Procedure 0x40b180

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
	js	.label_1023
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1022
	mov	dword ptr [r14], ebp
	jmp	.label_1023
.label_1022:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_1023:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b1d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1027
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_1029
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_1024
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_1029
	mov	esi, OFFSET FLAT:label_1026
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_1025
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_1025:
	mov	rbx, r14
.label_1029:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1027:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_1028
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b280

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
	jne	.label_1030
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_1030:
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
	#Procedure 0x40b2d0

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
	#Procedure 0x40b300
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
	#Procedure 0x40b340
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
	#Procedure 0x40b350
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
	#Procedure 0x40b360
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
	#Procedure 0x40b3a0
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
	#Procedure 0x40b3c0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_1031
	test	rdx, rdx
	je	.label_1031
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_1031:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3f0
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
	#Procedure 0x40b470

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
.label_1111:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1109
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_1113]
.label_1975:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_1119
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1051
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1976:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1134
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1134
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1143:
	cmp	r14, r11
	jae	.label_1056
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1056:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1143
.label_1134:
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
	jmp	.label_1032
.label_1968:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_1032
.label_1971:
	mov	al, 1
.label_1969:
	mov	r12b, 1
.label_1972:
	test	r12b, 1
	mov	cl, 1
	je	.label_1040
	mov	ecx, eax
.label_1040:
	mov	al, cl
.label_1970:
	test	r12b, 1
	jne	.label_1042
	test	r11, r11
	je	.label_1104
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1104:
	mov	r14d, 1
	jmp	.label_1047
.label_1042:
	xor	r14d, r14d
.label_1047:
	mov	ecx, OFFSET FLAT:label_1051
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_1032
.label_1973:
	test	r12b, 1
	jne	.label_1061
	test	r11, r11
	je	.label_1063
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1063:
	mov	r14d, 1
	jmp	.label_1066
.label_1974:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1068
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_1032
.label_1061:
	xor	r14d, r14d
.label_1066:
	mov	eax, OFFSET FLAT:label_1068
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_1032:
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
	jmp	.label_1088
	nop	dword ptr [rax]
.label_1044:
	inc	rsi
.label_1088:
	cmp	rbp, -1
	je	.label_1128
	cmp	rsi, rbp
	jne	.label_1130
	jmp	.label_1131
	nop	word ptr cs:[rax + rax]
.label_1128:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1135
.label_1130:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1129
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_1138
	cmp	rbp, -1
	jne	.label_1138
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
.label_1138:
	cmp	rbx, rbp
	jbe	.label_1147
.label_1129:
	xor	r8d, r8d
.label_1055:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1126
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_1150]
.label_1989:
	test	rsi, rsi
	jne	.label_1033
	jmp	.label_1038
	nop	word ptr cs:[rax + rax]
.label_1147:
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
	jne	.label_1052
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1055
	jmp	.label_1065
.label_1052:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1055
.label_1993:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1076
	test	rsi, rsi
	jne	.label_1079
	cmp	rbp, 1
	je	.label_1038
	xor	r13d, r13d
	jmp	.label_1045
.label_1982:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_1086
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1084
	cmp	r12d, 2
	jne	.label_1091
	mov	eax, r9d
	and	al, 1
	jne	.label_1091
	cmp	r14, r11
	jae	.label_1094
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1094:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1099
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1099:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1083
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1083:
	add	r14, 3
	mov	r9b, 1
.label_1091:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1112
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1112:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1117
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1117
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1117
	cmp	r14, r11
	jae	.label_1115
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1115:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1093
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1093:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_1045
.label_1983:
	mov	bl, 0x62
	jmp	.label_1137
.label_1984:
	mov	cl, 0x74
	jmp	.label_1037
.label_1985:
	mov	bl, 0x76
	jmp	.label_1137
.label_1986:
	mov	bl, 0x66
	jmp	.label_1137
.label_1987:
	mov	cl, 0x72
	jmp	.label_1037
.label_1990:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1142
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1060
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
	jae	.label_1145
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1145:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1034
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_1034:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1041
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1041:
	add	r14, 3
	xor	r9d, r9d
.label_1142:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_1045
.label_1991:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1048
	cmp	r12d, 2
	jne	.label_1033
	cmp	byte ptr [rsp + 6], 0
	je	.label_1033
	jmp	.label_1060
.label_1992:
	cmp	r12d, 2
	jne	.label_1062
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1060
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1095
.label_1126:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_1072
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
.label_1073:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_1090
	test	r8b, r8b
	je	.label_1090
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_1045
.label_1076:
	test	rsi, rsi
	jne	.label_1087
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1087
.label_1038:
	mov	dl, 1
.label_1988:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_1060
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_1045:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1120
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1122
	jmp	.label_1127
	nop	word ptr cs:[rax + rax]
.label_1120:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1127
.label_1122:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1132
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1095
	jmp	.label_1141
	nop	dword ptr [rax]
.label_1127:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1141
	jmp	.label_1095
.label_1132:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1141
.label_1086:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1044
	xor	r15d, r15d
	jmp	.label_1033
.label_1062:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_1037
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1095
.label_1037:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_1060
.label_1137:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_1045
	nop	word ptr cs:[rax + rax]
.label_1141:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1084
	cmp	r12d, 2
	jne	.label_1043
	mov	eax, r9d
	and	al, 1
	jne	.label_1043
	cmp	r14, r11
	jae	.label_1121
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1121:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1053
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1053:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1039
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1039:
	add	r14, 3
	mov	r9b, 1
.label_1043:
	cmp	r14, r11
	jae	.label_1064
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1064:
	inc	r14
	jmp	.label_1069
.label_1072:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1074
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1074:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_1078:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1098
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1101
	cmp	rbp, -2
	je	.label_1108
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1075
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1140:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1148
	bt	rsi, rdx
	jb	.label_1124
.label_1148:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1140
.label_1075:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1144
	xor	r13d, r13d
.label_1144:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_1078
	jmp	.label_1073
.label_1117:
	xor	r13d, r13d
	jmp	.label_1045
.label_1087:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_1045
.label_1048:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_1033
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_1033
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_1033
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1149
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1153
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1071
	cmp	r14, r11
	jae	.label_1146
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1146:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1116
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1116:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1050
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_1050:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1151
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_1151:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_1045
.label_1033:
	xor	eax, eax
.label_1079:
	xor	r13d, r13d
	jmp	.label_1045
.label_1090:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1070
	nop	word ptr cs:[rax + rax]
.label_1102:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1070:
	test	r8b, r8b
	je	.label_1080
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_1081
	cmp	r14, r11
	jae	.label_1082
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_1082:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_1081
	nop	dword ptr [rax]
.label_1080:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_1065
	cmp	r12d, 2
	jne	.label_1097
	mov	eax, r9d
	and	al, 1
	jne	.label_1097
	cmp	r14, r11
	jae	.label_1100
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1100:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1105
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1105:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1110
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1110:
	add	r14, 3
	mov	r9b, 1
.label_1097:
	cmp	r14, r11
	jae	.label_1114
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1114:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1136
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1136:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1123
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1123:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1081:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_1095
	test	r9b, 1
	je	.label_1103
	mov	ebx, eax
	and	bl, 1
	jne	.label_1103
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1139
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1139:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1125
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1125:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1103:
	cmp	r14, r11
	jae	.label_1102
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1102
	nop	word ptr cs:[rax + rax]
.label_1095:
	test	r9b, 1
	je	.label_1096
	and	al, 1
	jne	.label_1096
	cmp	r14, r11
	jae	.label_1152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1046
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1046:
	add	r14, 2
	xor	r9d, r9d
.label_1096:
	mov	ebx, r15d
.label_1069:
	cmp	r14, r11
	jae	.label_1059
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_1059:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1044
.label_1101:
	xor	r13d, r13d
.label_1098:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1073
.label_1108:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_1058
	mov	rsi, qword ptr [rsp + 0x58]
.label_1067:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_1106
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1067
	xor	r13d, r13d
	jmp	.label_1073
.label_1058:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_1073
.label_1106:
	xor	r13d, r13d
	jmp	.label_1073
.label_1149:
	xor	r13d, r13d
	jmp	.label_1045
.label_1153:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_1045
	nop	dword ptr [rax + rax]
.label_1131:
	mov	rcx, rsi
.label_1135:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_1085
	or	al, dl
	je	.label_1089
.label_1085:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_1092
	or	al, dl
	jne	.label_1092
	test	r10b, 1
	jne	.label_1107
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_1092
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_1111
.label_1092:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_1118
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1036
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1036
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1133:
	cmp	r14, r11
	jae	.label_1077
	mov	byte ptr [rcx + r14], al
.label_1077:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1133
	jmp	.label_1036
.label_1084:
	mov	qword ptr [rsp + 0x20], rbp
.label_1065:
	mov	rdx, rdi
	jmp	.label_1035
.label_1060:
	mov	qword ptr [rsp + 0x20], rbp
.label_1124:
	mov	rdx, rdi
	mov	eax, 2
.label_1049:
	mov	qword ptr [rsp + 0x38], rax
.label_1035:
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
.label_1054:
	mov	r14, rax
.label_1057:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1089:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_1035
.label_1107:
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
	jmp	.label_1054
.label_1118:
	mov	rcx, qword ptr [rsp + 8]
.label_1036:
	cmp	r14, r11
	jae	.label_1057
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1057
.label_1071:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_1049
.label_1109:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c280
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
	#Procedure 0x40c350
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
	je	.label_1154
	mov	qword ptr [rax], rbx
.label_1154:
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
	#Procedure 0x40c440
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_1155
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1157:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1157
.label_1155:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1159
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_1158], OFFSET FLAT:slot0
.label_1159:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1156
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_1156:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4e0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c4f0

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
	js	.label_1163
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1166
	cmp	r12d, 0x7fffffff
	je	.label_1161
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
	jne	.label_1164
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_1164:
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
.label_1166:
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
	jbe	.label_1162
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1165
.label_1162:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1160
	mov	rdi, r14
	call	free
.label_1160:
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
.label_1165:
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
.label_1163:
	call	abort
.label_1161:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c6b0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c6c0
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
	#Procedure 0x40c6e0
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
	#Procedure 0x40c700

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
	je	.label_1167
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
.label_1167:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c770
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
	je	.label_1168
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
.label_1168:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7e0

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
	je	.label_1169
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
.label_1169:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c850
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
	je	.label_1170
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
.label_1170:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c8c0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
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
	#Procedure 0x40c930
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
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
	#Procedure 0x40c9a0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
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
	#Procedure 0x40ca00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
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
	#Procedure 0x40ca60

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
	je	.label_1174
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
.label_1174:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cb00
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1175
	test	rdx, rdx
	je	.label_1175
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1175:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cb70
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_1176
	test	rdx, rdx
	je	.label_1176
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1176:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbe0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1177
	test	rsi, rsi
	je	.label_1177
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_1177:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40cc50
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_1171]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_1172]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_1173]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_1178
	test	rsi, rsi
	je	.label_1178
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
.label_1178:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ccc0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ccd0
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
	#Procedure 0x40ccf0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd10

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
	#Procedure 0x40cd30

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
	jne	.label_1180
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_1185
	cmp	ecx, 0x55
	jne	.label_1179
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_1179
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_1179
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_1179
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_1179
	cmp	byte ptr [rax + 5], 0
	jne	.label_1179
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1182
	mov	eax, OFFSET FLAT:label_1183
	jmp	.label_1184
.label_1185:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_1179
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_1179
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_1179
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_1179
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_1179
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_1179
	cmp	byte ptr [rax + 7], 0
	je	.label_1181
.label_1179:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_1068
	mov	eax, OFFSET FLAT:label_1051
.label_1184:
	cmove	rax, rcx
.label_1180:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1181:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1186
	mov	eax, OFFSET FLAT:label_1187
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ce00

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
	jns	.label_1188
	mov	eax, dword ptr [rcx]
	cmp	eax, 0x16
	je	.label_1189
	cmp	eax, 0x5f
	je	.label_1189
	cmp	eax, 0x26
	jne	.label_1188
.label_1189:
	test	r12d, r12d
	je	.label_1195
	cmp	r12d, 1
	jne	.label_1196
	mov	rbx, rcx
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	mov	rcx, rbx
	test	eax, eax
	je	.label_1190
	mov	eax, dword ptr [rcx]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_1193
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_1188
.label_1190:
	mov	dword ptr [rcx], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_1188
.label_1195:
	xor	r12d, r12d
.label_1193:
	mov	qword ptr [rsp], rcx
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_1192
	test	rax, rax
	je	.label_1192
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_1197
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1192
.label_1197:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1188
	test	r12b, r12b
	je	.label_1198
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	je	.label_1192
	mov	dword ptr [rax], 2
	jmp	.label_1188
.label_1196:
	mov	dword ptr [rcx], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_1188
.label_1198:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_1199
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1188
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1192
	jmp	.label_1188
.label_1199:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1191
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	jne	.label_1194
.label_1192:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_1188:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1191:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_1188
.label_1194:
	mov	dword ptr [rax], 0x15
	jmp	.label_1188
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d000

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
	jne	.label_1200
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_1200:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d050

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
.label_1202:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1201
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1202
	cmp	rbx, 0x7ff00001
	jb	.label_1201
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_1202
.label_1201:
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
	#Procedure 0x40d0b0

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
	#Procedure 0x40d0d0

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
	jne	.label_1204
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1207
.label_1204:
	xor	ebp, ebp
.label_1205:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1207:
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
	je	.label_1209
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1209:
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
	je	.label_1203
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1203:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1206
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1208
.label_1206:
	xor	ebp, ebp
.label_1208:
	mov	rdi, rbx
	call	free
	jmp	.label_1205
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d220

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rdi
	mov	ecx, esi
	xor	r15d, r15d
	test	r14, r14
	je	.label_1215
	mov	rax, qword ptr [(rcx * 8) + comparison_function_table]
	mov	qword ptr [rsp + 0x30], rax
	dec	rcx
	mov	qword ptr [rsp + 0x20], rcx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1211
.label_1210:
	mov	rdi, rbx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	qword ptr [rbp + rcx], rax
	mov	rax, qword ptr [r15]
	mov	rdx, rbp
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rbp + rcx + 8], rax
	inc	r12
	add	r13, qword ptr [rsp + 0x28]
	nop	word ptr cs:[rax + rax]
.label_1211:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r14
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1222
	movzx	eax, byte ptr [r15 + 0x13]
	cmp	al, 0x2e
	jne	.label_1225
	xor	eax, eax
	cmp	byte ptr [r15 + 0x14], 0x2e
	sete	al
	movzx	eax, byte ptr [r15 + rax + 0x14]
.label_1225:
	test	al, al
	je	.label_1211
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	cmp	qword ptr [rsp + 0x20], 1
	ja	.label_1228
	cmp	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x28], rbp
	jne	.label_1212
	cmp	qword ptr [rsp], 0
	je	.label_1214
	movabs	rax, 0x555555555555555
	cmp	r12, rax
	jae	.label_1220
	mov	rax, r12
	shr	rax, 1
	lea	rcx, [r12 + rax + 1]
	jmp	.label_1217
.label_1228:
	mov	rax, qword ptr [rsp + 0x10]
	sub	rax, r13
	cmp	rax, rbp
	mov	rax, qword ptr [rsp + 8]
	ja	.label_1219
	mov	rsi, rbp
	add	rsi, r13
	jb	.label_1220
	test	rax, rax
	je	.label_1227
	movabs	rcx, 0x5555555555555554
	cmp	rsi, rcx
	jae	.label_1220
	mov	rcx, rsi
	shr	rcx, 1
	lea	rsi, [rsi + rcx + 1]
	jmp	.label_1230
.label_1212:
	mov	rbp, qword ptr [rsp]
	jmp	.label_1210
.label_1214:
	test	r12, r12
	mov	rcx, r12
	mov	eax, 8
	cmove	rcx, rax
	mov	rax, rcx
	shr	rax, 0x3b
	jne	.label_1213
.label_1217:
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, rcx
	shl	rsi, 4
	mov	rdi, qword ptr [rsp]
	call	xrealloc
	mov	rbp, rax
	jmp	.label_1210
.label_1227:
	test	rsi, rsi
	mov	ecx, 0x80
	cmove	rsi, rcx
	test	rsi, rsi
	js	.label_1223
.label_1230:
	mov	rdi, rax
	mov	rax, rsi
	mov	qword ptr [rsp + 0x10], rax
	call	xrealloc
.label_1219:
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	lea	rdi, [rax + r13]
	mov	rsi, rbx
	mov	rdx, rbp
	call	memcpy
	add	r13, rbp
	jmp	.label_1211
.label_1222:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1226
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r15d, r15d
	jmp	.label_1215
.label_1226:
	cmp	qword ptr [rsp + 0x20], 1
	mov	r15, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	ja	.label_1218
	test	r12, r12
	je	.label_1221
	mov	edx, 0x10
	mov	rdi, r14
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	qsort
	inc	r13
	mov	rdi, r13
	call	xmalloc
	mov	r15, rax
	xor	r13d, r13d
	mov	rbx, r14
	nop	word ptr cs:[rax + rax]
.label_1224:
	lea	rbp, [r15 + r13]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r13
	sub	r13, rbp
	add	r13, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1224
	jmp	.label_1229
.label_1218:
	cmp	qword ptr [rsp + 0x10], r13
	jne	.label_1216
	lea	rsi, [r13 + 1]
	mov	rdi, r15
	call	xrealloc
	mov	r15, rax
	jmp	.label_1216
.label_1221:
	inc	r13
	mov	rdi, r13
	call	xmalloc
	mov	r15, rax
	xor	r13d, r13d
.label_1229:
	mov	rdi, r14
	call	free
.label_1216:
	mov	byte ptr [r15 + r13], 0
.label_1215:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1220:
	call	xalloc_die
.label_1223:
	call	xalloc_die
.label_1213:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d510

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
	je	.label_1231
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1231
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1231:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d560

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d570

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
	#Procedure 0x40d590

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
	mov	r12, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r14, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r15d, dword ptr [rax]
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	movsxd	r13, ebx
	lea	rax, [r13 + r12]
	cmp	rbp, rax
	jb	.label_1232
	mov	rax, rbp
	sub	rax, r12
	sub	rax, r13
	add	rax, r14
	mov	rcx, -1
	nop	dword ptr [rax + rax]
.label_1237:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_1237
	cmp	rcx, r12
	jae	.label_1239
.label_1232:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_1233:
	mov	r12d, 0xffffffff
.label_1238:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1239:
	mov	dword ptr [rsp + 0x14], r15d
	mov	qword ptr [rsp + 0x18], r14
	xor	r14d, r14d
	xor	edi, edi
	mov	rsi, r12
	call	randint_all_new
	mov	r15, rax
	mov	rax, r12
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1238
	sub	rbp, r13
	add	rbp, qword ptr [rsp + 0x18]
	mov	rcx, rax
	neg	rcx
	mov	qword ptr [rsp + 0x20], rcx
	nop	
.label_1241:
	mov	r13, rax
	test	rax, rax
	je	.label_1236
	mov	rbx, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_1240:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1240
.label_1236:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1235
	mov	rax, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x11
	mov	r12d, 0xffffffff
	jne	.label_1234
	inc	r14d
	cmp	r14d, 0x3a2f7
	mov	rax, r13
	jbe	.label_1241
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_1233
.label_1235:
	mov	eax, dword ptr [rsp + 0x14]
	mov	rcx, qword ptr [rsp + 8]
	mov	dword ptr [rcx], eax
	mov	ebx, eax
.label_1234:
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ebx
	jmp	.label_1238
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d700
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1242
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1246]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1242:
	mov	edi, OFFSET FLAT:label_1243
	mov	esi, OFFSET FLAT:label_1244
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1245
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d740

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
	#Procedure 0x40d760

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d770

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
	je	.label_1247
	cmp	dword ptr [rax], 0x4b
	jne	.label_1248
.label_1247:
	mov	dword ptr [rax], 0x11
.label_1248:
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
	#Procedure 0x40d7c0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1249
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_1246]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_1249:
	mov	edi, OFFSET FLAT:label_1243
	mov	esi, OFFSET FLAT:label_1244
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1245
	call	__assert_fail
	.section	.text
	.align	16
	#Procedure 0x40d800
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d810

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
	ja	.label_1250
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
	jmp	.label_1251
.label_1250:
	mov	eax, ebx
.label_1251:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d860

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
	#Procedure 0x40d880

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
	je	.label_1252
	cmp	r14, r12
	jne	.label_1264
	xor	ecx, ecx
	cmp	r15d, r13d
	je	.label_1256
.label_1264:
	lea	rax, [r12 - 2]
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jle	.label_1256
	lea	rax, [r14 - 2]
	mov	ecx, 1
	cmp	r12, rax
	jle	.label_1256
	mov	dword ptr [rsp + 0xc], edi
	mov	qword ptr [rsp + 0x28], rsi
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	jne	.label_1272
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	rbx, rax
	mov	qword ptr [rip + utimecmpat.ht],  rbx
	test	rbx, rbx
	je	.label_1260
.label_1272:
	mov	rsi, qword ptr [rip + utimecmpat.new_dst_res]
	test	rsi, rsi
	jne	.label_1263
	mov	edi, 0x10
	call	malloc
	mov	rsi, rax
	mov	qword ptr [rip + utimecmpat.new_dst_res],  rsi
	test	rsi, rsi
	je	.label_1268
	mov	dword ptr [rsi + 8], 0x77359400
	mov	byte ptr [rsi + 0xc], 0
.label_1263:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsi], rax
	mov	rdi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_1273
	cmp	rax, qword ptr [rip + utimecmpat.new_dst_res]
	jne	.label_1254
	mov	qword ptr [rip + utimecmpat.new_dst_res],  0
	jmp	.label_1254
.label_1273:
	mov	rbx, qword ptr [rip + utimecmpat.ht]
	test	rbx, rbx
	je	.label_1253
.label_1268:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0x30], rax
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	hash_lookup
.label_1253:
	test	rax, rax
	jne	.label_1254
.label_1260:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rax, [rsp + 0x30]
.label_1254:
	mov	r10, qword ptr [rax + 8]
	movabs	rcx, 0xff00000000
	test	r10, rcx
	jne	.label_1266
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
	je	.label_1274
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 1
	mov	r10d, 1
.label_1262:
	mov	dword ptr [rax + 8], r10d
	mov	byte ptr [rax + 0xc], 1
.label_1266:
	xor	eax, eax
	cmp	r10d, 0x77359400
	sete	al
	not	rax
	and	r12, rax
	mov	eax, r13d
	cdq	
	idiv	r10d
	sub	r13d, edx
.label_1252:
	mov	ecx, 0xffffffff
	cmp	r14, r12
	jl	.label_1256
	mov	ecx, 1
	jg	.label_1256
	cmp	r15d, r13d
	mov	ecx, 0xffffffff
	jl	.label_1256
	setg	al
	movzx	ecx, al
.label_1256:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1274:
	cmp	r10d, 0xb
	jl	.label_1267
	mov	qword ptr [rsp + 0x20], r11
	mov	ebx, 0xa
	mov	qword ptr [rsp + 0x18], r9
	mov	edx, r9d
	mov	edi, r15d
.label_1259:
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
	jne	.label_1270
	cmp	ebx, 0x3b9aca00
	je	.label_1258
	add	ebx, ebx
	lea	ebx, [rbx + rbx*4]
	cmp	ebx, r10d
	jl	.label_1259
.label_1270:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	cmp	ebx, 2
	mov	r10d, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
	jl	.label_1262
	jmp	.label_1269
.label_1267:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], 0xa
	mov	ebx, 0xa
	jmp	.label_1269
.label_1258:
	xor	ecx, 1
	mov	ebx, 0x3b9aca00
	shl	ebx, cl
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax + 8], ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	r11, qword ptr [rsp + 0x20]
.label_1269:
	xor	edi, edi
	cmp	ebx, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r12, r14
	jl	.label_1256
	cmp	r14, r12
	setne	al
	cmp	r13d, r15d
	jg	.label_1257
	test	al, al
	je	.label_1256
.label_1257:
	mov	rax, rdi
	not	rax
	and	rax, r12
	mov	ecx, 0xffffffff
	cmp	r14, rax
	jl	.label_1256
	jne	.label_1271
	mov	eax, r13d
	cdq	
	idiv	ebx
	mov	eax, r13d
	sub	eax, edx
	cmp	r15d, eax
	jl	.label_1256
.label_1271:
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
	jne	.label_1256
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
	je	.label_1275
	mov	qword ptr [rsp + 0x50], r14
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	utimensat
.label_1275:
	test	ebx, ebx
	je	.label_1255
	mov	ecx, 0xfffffffe
	jmp	.label_1256
.label_1255:
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
	jne	.label_1261
	mov	ecx, 1
.label_1265:
	mov	r10d, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1261
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, ebp
	je	.label_1276
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
	je	.label_1265
.label_1261:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1262
.label_1276:
	mov	r10d, ebp
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_1262
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ddd0

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
	#Procedure 0x40dde0

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
	#Procedure 0x40ddf0
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de00

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
	je	.label_1277
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r13 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1316
	cmp	rax, 0x3ffffffe
	jne	.label_1291
.label_1316:
	mov	rcx, qword ptr [r13 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1293
	cmp	rdi, 0x3ffffffe
	je	.label_1293
.label_1291:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	ebp, 0xffffffff
	jmp	.label_1279
.label_1293:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1303
	mov	qword ptr [r13], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1303:
	cmp	rdi, 0x3ffffffe
	jne	.label_1309
	mov	qword ptr [r13 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1309:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1279
.label_1277:
	test	r15d, r15d
	jns	.label_1304
	test	r14, r14
	jne	.label_1304
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebp, 0xffffffff
	jmp	.label_1279
.label_1304:
	cmp	dword ptr [rip + utimensat_works_really],  0
	js	.label_1278
	cmp	ebx, 2
	jne	.label_1282
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1283
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1287
.label_1283:
	mov	rsi, r14
	call	__xstat
.label_1287:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1279
	cmp	qword ptr [r13 + 8], 0x3ffffffe
	jne	.label_1290
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	mov	ebx, 3
	jmp	.label_1282
.label_1290:
	mov	ebx, 3
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	jne	.label_1282
	movups	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmmword ptr [r13 + 0x10], xmm0
.label_1282:
	test	r15d, r15d
	jns	.label_1302
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	mov	rdx, r13
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1305
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1307
.label_1305:
	je	.label_1308
	call	__errno_location
.label_1307:
	cmp	dword ptr [rax], 0x26
	jne	.label_1308
.label_1302:
	test	r15d, r15d
	js	.label_1278
	mov	edi, r15d
	mov	rsi, r13
	call	futimens
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1312
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1313
.label_1308:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1279
.label_1312:
	je	.label_1314
	call	__errno_location
.label_1313:
	cmp	dword ptr [rax], 0x26
	jne	.label_1314
.label_1278:
	mov	dword ptr [rip + utimensat_works_really],  0xffffffff
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1315
	cmp	ebx, 3
	je	.label_1280
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	test	r15d, r15d
	js	.label_1281
	mov	esi, r15d
	call	__fxstat
	jmp	.label_1285
.label_1315:
	xor	r12d, r12d
	test	r13, r13
	jne	.label_1286
	jmp	.label_1288
.label_1314:
	mov	dword ptr [rip + utimensat_works_really],  1
	jmp	.label_1279
.label_1281:
	mov	rsi, r14
	call	__xstat
.label_1285:
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1279
.label_1280:
	test	r13, r13
	je	.label_1295
	mov	rax, qword ptr [r13 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1297
	cmp	rax, 0x3fffffff
	jne	.label_1299
	cmp	qword ptr [r13 + 0x18], 0x3fffffff
	jne	.label_1300
.label_1295:
	xor	r12d, r12d
	jmp	.label_1288
.label_1297:
	xor	ebp, ebp
	cmp	qword ptr [r13 + 0x18], 0x3ffffffe
	je	.label_1279
	lea	rbx, [r13 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [r13], xmm0
	jmp	.label_1306
.label_1299:
	lea	rbx, [r13 + 0x18]
	jmp	.label_1306
.label_1300:
	lea	rbx, [r13 + 0x18]
	mov	rdi, r13
	call	gettime
.label_1306:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1311
	cmp	rax, 0x3ffffffe
	jne	.label_1286
	mov	rax, qword ptr [rsp + 0xc0]
	mov	rcx, qword ptr [rsp + 0xc8]
	mov	qword ptr [r13 + 0x10], rax
	mov	qword ptr [r13 + 0x18], rcx
	jmp	.label_1286
.label_1311:
	add	r13, 0x10
	mov	rdi, r13
	call	gettime
.label_1286:
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
.label_1288:
	test	r15d, r15d
	js	.label_1292
	xor	ebp, ebp
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, r12
	call	futimesat
	test	eax, eax
	je	.label_1298
	mov	ebp, 0xffffffff
	test	r14, r14
	je	.label_1279
	mov	rdi, r14
	mov	rsi, r12
	call	utimes
	jmp	.label_1301
.label_1292:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, r12
	call	futimesat
.label_1301:
	mov	ebp, eax
.label_1279:
	mov	eax, ebp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1298:
	test	r12, r12
	je	.label_1279
	mov	rbx, qword ptr [r12 + 8]
	mov	r14, qword ptr [r12 + 0x18]
	cmp	rbx, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_1279
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	mov	esi, r15d
	call	__fxstat
	test	eax, eax
	jne	.label_1279
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
	jl	.label_1284
	cmp	rcx, 1
	jne	.label_1284
	xor	edx, edx
	cmp	qword ptr [rsp + 0xb8], 0
	jne	.label_1284
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x28], 0
.label_1284:
	cmp	r14, 0x7a120
	jl	.label_1289
	cmp	rax, 1
	jne	.label_1289
	cmp	qword ptr [rsp + 0xc8], 0
	je	.label_1310
.label_1289:
	test	rdx, rdx
	jne	.label_1294
	jmp	.label_1296
.label_1310:
	lea	rdx, [rsp + 0x20]
	mov	qword ptr [rsp + 0x38], 0
.label_1294:
	xor	esi, esi
	mov	edi, r15d
	call	futimesat
.label_1296:
	xor	ebp, ebp
	jmp	.label_1279
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e290

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
	#Procedure 0x40e2b0

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
	je	.label_1327
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdx, qword ptr [r12 + 8]
	mov	rax, rdx
	and	rax, 0xfffffffffffffffe
	cmp	rdx, 0x3b9aca00
	jb	.label_1333
	cmp	rax, 0x3ffffffe
	jne	.label_1339
.label_1333:
	mov	rcx, qword ptr [r12 + 0x18]
	mov	rdi, rcx
	and	rdi, 0xfffffffffffffffe
	cmp	rcx, 0x3b9aca00
	jb	.label_1317
	cmp	rdi, 0x3ffffffe
	je	.label_1317
.label_1339:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1334:
	mov	ebp, 0xffffffff
.label_1320:
	mov	eax, ebp
	add	rsp, 0xb0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1317:
	xor	esi, esi
	cmp	rax, 0x3ffffffe
	mov	eax, 0
	jne	.label_1329
	mov	qword ptr [r12], 0
	xor	eax, eax
	cmp	rdx, 0x3ffffffe
	sete	al
	mov	esi, 1
.label_1329:
	cmp	rdi, 0x3ffffffe
	jne	.label_1335
	mov	qword ptr [r12 + 0x10], 0
	xor	edx, edx
	cmp	rcx, 0x3ffffffe
	sete	dl
	add	eax, edx
	mov	esi, 1
.label_1335:
	xor	ebx, ebx
	cmp	eax, 1
	sete	bl
	add	ebx, esi
	mov	ebp, 0xffffffff
	js	.label_1320
.label_1327:
	cmp	dword ptr [rip + lutimensat_works_really],  0
	js	.label_1332
	cmp	ebx, 2
	jne	.label_1324
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1320
	cmp	qword ptr [r12 + 8], 0x3ffffffe
	jne	.label_1336
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	mov	ebx, 3
	jmp	.label_1324
.label_1336:
	mov	ebx, 3
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	jne	.label_1324
	movups	xmm0, xmmword ptr [rsp + 0x78]
	movaps	xmmword ptr [r12 + 0x10], xmm0
.label_1324:
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	mov	rdx, r12
	call	utimensat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_1323
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1325
.label_1323:
	je	.label_1328
	call	__errno_location
.label_1325:
	cmp	dword ptr [rax], 0x26
	jne	.label_1328
.label_1332:
	mov	dword ptr [rip + lutimensat_works_really],  0xffffffff
	test	ebx, ebx
	je	.label_1337
	cmp	ebx, 3
	je	.label_1330
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	jne	.label_1320
.label_1330:
	xor	edx, edx
	test	r12, r12
	je	.label_1319
	mov	rax, qword ptr [r12 + 8]
	cmp	rax, 0x3ffffffe
	je	.label_1338
	cmp	rax, 0x3fffffff
	jne	.label_1318
	xor	edx, edx
	cmp	qword ptr [r12 + 0x18], 0x3fffffff
	je	.label_1319
	lea	rbx, [r12 + 0x18]
	mov	rdi, r12
	call	gettime
	jmp	.label_1326
.label_1328:
	mov	dword ptr [rip + utimensat_works_really],  1
	mov	dword ptr [rip + lutimensat_works_really],  1
	jmp	.label_1320
.label_1337:
	lea	rdx, [rsp + 0x20]
	mov	edi, 1
	mov	rsi, r14
	call	__lxstat
	mov	ebp, 0xffffffff
	test	eax, eax
	mov	rdx, r12
	jne	.label_1320
	jmp	.label_1319
.label_1338:
	xor	ebp, ebp
	cmp	qword ptr [r12 + 0x18], 0x3ffffffe
	je	.label_1320
	lea	rbx, [r12 + 0x18]
	movups	xmm0, xmmword ptr [rsp + 0x68]
	movaps	xmmword ptr [r12], xmm0
	jmp	.label_1326
.label_1318:
	lea	rbx, [r12 + 0x18]
.label_1326:
	mov	rax, qword ptr [rbx]
	cmp	rax, 0x3fffffff
	je	.label_1321
	cmp	rax, 0x3ffffffe
	jne	.label_1322
	mov	rax, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x10], rax
	mov	qword ptr [r12 + 0x18], rcx
	jmp	.label_1322
.label_1321:
	add	r12, 0x10
	mov	rdi, r12
	call	gettime
.label_1322:
	mov	rdx, r15
.label_1319:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x38]
	cmp	eax, 0xa000
	jne	.label_1331
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1334
.label_1331:
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebp, eax
	jmp	.label_1320
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e590

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
	je	.label_1346
	mov	edx, OFFSET FLAT:label_1355
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1342
.label_1346:
	mov	edx, OFFSET FLAT:label_1344
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1349
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
	mov	esi, OFFSET FLAT:label_1345
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1351
	jmp	qword ptr [(r12 * 8) + label_1352]
.label_1843:
	add	rsp, 8
	jmp	.label_1343
.label_1351:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1358
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
	jmp	.label_1343
.label_1844:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1350
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
.label_1845:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1340
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
.label_1846:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1356
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
.label_1847:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1353
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
	jmp	.label_1343
.label_1848:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1348
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
	jmp	.label_1343
.label_1849:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1354
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
	jmp	.label_1343
.label_1850:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1357
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
	jmp	.label_1343
.label_1852:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1341
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
	jmp	.label_1343
.label_1851:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1347
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
.label_1343:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e8f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1359:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1359
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e920

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1370
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_1372
.label_1370:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1372:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_1361
	cmp	r10d, 0x29
	jae	.label_1369
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1371
.label_1369:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1371:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_1361
	cmp	r10d, 0x29
	jae	.label_1367
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1368
.label_1367:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1368:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_1361
	cmp	r10d, 0x29
	jae	.label_1365
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1366
.label_1365:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1366:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_1361
	cmp	r10d, 0x29
	jae	.label_1363
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1364
.label_1363:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1364:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_1361
	cmp	r10d, 0x29
	jae	.label_1360
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_1362
.label_1360:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1362:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_1361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_1361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_1361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_1361
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_1361:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1373
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1373:
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
	#Procedure 0x40eba0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1374
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_129
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1376
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_18
	mov	ecx, OFFSET FLAT:label_19
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1375
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ec20

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	cmp	byte ptr [rip + can_write_any_file.initialized],  1
	jne	.label_1377
	mov	al, byte ptr [rip + can_write_any_file.can_write]
	ret	
.label_1377:
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
	#Procedure 0x40ec50
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_1378
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_1379
	test	rax, rax
	je	.label_1378
.label_1379:
	pop	rbx
	ret	
.label_1378:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ec90

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1380
	test	rax, rax
	je	.label_1381
.label_1380:
	pop	rbx
	ret	
.label_1381:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ecb0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_1382
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_1383
	test	rbx, rbx
	jne	.label_1383
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1383:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1384
	test	rax, rax
	je	.label_1382
.label_1384:
	pop	rbx
	ret	
.label_1382:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed00

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1385
	test	rbx, rbx
	jne	.label_1385
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1385:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1387
	test	rax, rax
	je	.label_1386
.label_1387:
	pop	rbx
	ret	
.label_1386:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40ed30
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1391
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_1393
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1388
.label_1391:
	test	rcx, rcx
	jne	.label_1394
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_1394:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_1389
.label_1388:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_1390
	test	rbx, rbx
	jne	.label_1390
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1390:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1392
	test	rax, rax
	je	.label_1393
.label_1392:
	pop	rbx
	ret	
.label_1393:
	call	xalloc_die
.label_1389:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edd0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1395
	test	rax, rax
	je	.label_1396
.label_1395:
	pop	rbx
	ret	
.label_1396:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40edf0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1399
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_1401
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_1398
	call	free
	xor	eax, eax
	jmp	.label_1400
.label_1399:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_1397
	mov	qword ptr [rsi], rbx
.label_1398:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1400
	test	rax, rax
	je	.label_1397
.label_1400:
	pop	rbx
	ret	
.label_1397:
	call	xalloc_die
.label_1401:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee60
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
	je	.label_1403
	test	r14, r14
	je	.label_1402
.label_1403:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1402:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eea0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1404
	call	rpl_calloc
	test	rax, rax
	je	.label_1404
	pop	rcx
	ret	
.label_1404:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eed0

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
	je	.label_1405
	test	r15, r15
	je	.label_1406
.label_1405:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1406:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ef10

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
	je	.label_1408
	test	r15, r15
	je	.label_1407
.label_1408:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1407:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef60

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1409
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_699
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40ef90

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_1411
	pop	rcx
	ret	
.label_1411:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1410
	mov	edi, OFFSET FLAT:label_1412
	mov	esi, OFFSET FLAT:label_1413
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_1414
	call	__assert_fail
.label_1410:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40efd0
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_1415
	cmp	ecx, 0x11
	jne	.label_1416
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1415:
	ret	
.label_1416:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40eff0

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
	jle	.label_1417
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_1419
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_1419:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1418
.label_1417:
	xor	ebx, ebx
.label_1418:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f060

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1420
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1421
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1421
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1420:
	mov	ecx, 1
.label_1421:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f0b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1422
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1422
	test	byte ptr [rbx + 1], 1
	je	.label_1422
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_1422:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f0f0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1423
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1424
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1424:
	add	rax, rcx
.label_1423:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f120

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
	jne	.label_1425
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1425
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1426
.label_1425:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1426:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1427
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1427:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f190

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
	jae	.label_1433
	mov	eax, r12d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1433
	test	r12b, 0x12
	je	.label_1433
	mov	edi, 0x80
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1448
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
	je	.label_1455
	mov	rax, r14
	mov	r14, rbx
	mov	r15, rax
	lea	rbx, [rax + 8]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1450:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1450
	inc	rbp
	mov	rbx, r14
	mov	r14, r15
.label_1455:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [rbx + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1434
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r15, qword ptr [r14]
	xor	r14d, r14d
	test	r15, r15
	je	.label_1437
	mov	edi, 0x110
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1432
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
.label_1437:
	mov	byte ptr [rsp + 0xf], 1
	test	r13, r13
	je	.label_1444
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_1444:
	xor	ebp, ebp
	test	r15, r15
	mov	qword ptr [rsp + 0x28], r14
	je	.label_1431
	and	r12d, 0x800
	xor	ebp, ebp
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x20], r13
	nop	word ptr cs:[rax + rax]
.label_1451:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	test	r12d, r12d
	jne	.label_1430
	cmp	rbp, 3
	jb	.label_1430
	cmp	byte ptr [r15 + rbp - 1], 0x2f
	jne	.label_1430
	nop	word ptr cs:[rax + rax]
.label_1440:
	cmp	byte ptr [r15 + rbp - 2], 0x2f
	jne	.label_1430
	dec	rbp
	cmp	rbp, 1
	ja	.label_1440
	nop	word ptr cs:[rax + rax]
.label_1430:
	mov	r14d, r12d
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_1456
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
	jne	.label_1436
	mov	word ptr [r12 + 0x70], 0xb
	mov	qword ptr [r12 + 0xa8], 2
	jmp	.label_1439
	nop	dword ptr [rax]
.label_1436:
	xor	edx, edx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
.label_1439:
	mov	r13, qword ptr [rsp + 0x20]
	test	r13, r13
	je	.label_1447
	mov	rbp, r12
	mov	qword ptr [r12 + 0x10], rbx
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1452
.label_1447:
	mov	qword ptr [r12 + 0x10], 0
	test	rbx, rbx
	mov	rbp, r12
	je	.label_1452
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 0x10], r12
	mov	rbp, rbx
.label_1452:
	mov	rbx, qword ptr [rsp + 0x40]
	inc	rbx
	mov	rax, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x38], rax
	test	r15, r15
	mov	qword ptr [rsp + 0x18], r12
	mov	r12d, r14d
	jne	.label_1451
	test	r13, r13
	je	.label_1431
	cmp	rbx, 2
	jb	.label_1431
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, rbx
	call	fts_sort
	mov	rbp, rax
.label_1431:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_1441
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
	je	.label_1443
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1446
	jmp	.label_1428
.label_1433:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1449:
	xor	eax, eax
.label_1448:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1434:
	mov	rdi, qword ptr [rbx + 0x20]
	jmp	.label_1453
.label_1456:
	mov	rbp, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_1428
.label_1432:
	mov	rbx, qword ptr [rsp + 0x10]
	jmp	.label_1438
.label_1441:
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx], 0
.label_1428:
	mov	r14, rbx
	test	rbp, rbp
	je	.label_1429
	nop	dword ptr [rax + rax]
.label_1442:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_1454
	call	closedir
.label_1454:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_1442
.label_1429:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rbx, r14
	mov	rbp, qword ptr [rbx + 0x20]
.label_1438:
	mov	rdi, rbp
.label_1453:
	call	free
	mov	rdi, rbx
	call	free
	jmp	.label_1449
.label_1443:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1428
	mov	rdi, rax
	call	cycle_check_init
.label_1446:
	mov	eax, dword ptr [rbx + 0x48]
	test	ax, 0x204
	jne	.label_1435
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1457
	mov	edi, OFFSET FLAT:label_138
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1445
.label_1457:
	mov	edi, dword ptr [rbx + 0x2c]
	mov	esi, OFFSET FLAT:label_138
	xor	eax, eax
	call	openat_safer
.label_1445:
	mov	dword ptr [rbx + 0x28], eax
	test	eax, eax
	jns	.label_1435
	or	byte ptr [rbx + 0x48], 4
.label_1435:
	mov	rdi, rbx
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, rbx
	jmp	.label_1448
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f6e0

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
	jne	.label_1465
	test	al, 1
	je	.label_1465
	mov	dl, 1
.label_1465:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_1458
	and	eax, 2
	jne	.label_1458
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_1459
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1461
.label_1458:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_1459
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_1461
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_1466
	mov	eax, dword ptr [r14]
.label_1461:
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
.label_1460:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1459:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_1467
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_1460
	cmp	ecx, 0x4000
	jne	.label_1462
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1463
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_1463
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1463:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_1460
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_1464
	cmp	dl, 0x2e
	jne	.label_1460
	test	ecx, 0xff0000
	jne	.label_1460
.label_1464:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_1460
.label_1467:
	mov	ax, 8
	jmp	.label_1460
.label_1462:
	mov	ax, 3
	jmp	.label_1460
.label_1466:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_1460
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f880

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
	jae	.label_1468
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1469
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1469
	mov	qword ptr [r13], rdi
	jmp	.label_1472
.label_1468:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_1472:
	test	rbx, rbx
	je	.label_1474
	nop	dword ptr [rax]
.label_1477:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1477
	mov	rdi, qword ptr [r13]
.label_1474:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_1473
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_1476
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_1478
	mov	rdx, rsi
	jmp	.label_1470
.label_1469:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_1475
.label_1478:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_1479:
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
	jne	.label_1479
.label_1470:
	test	rcx, rcx
	je	.label_1476
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_1471:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_1471
.label_1476:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_1473:
	mov	qword ptr [rcx + 0x10], 0
.label_1475:
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
	#Procedure 0x40fa00

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1480
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1481
	nop	word ptr cs:[rax + rax]
.label_1490:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1487
	mov	rbx, qword ptr [rdi + 8]
.label_1487:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1490
	jmp	.label_1491
.label_1481:
	mov	rbx, rdi
.label_1491:
	mov	rdi, rbx
	call	free
.label_1480:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1494
	nop	word ptr cs:[rax + rax]
.label_1497:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1484
	call	closedir
.label_1484:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1497
.label_1494:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1483
	xor	ebp, ebp
	test	al, 4
	jne	.label_1485
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_1489
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1489:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_1492
	jmp	.label_1485
.label_1483:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_1485
	call	close
.label_1492:
	test	eax, eax
	je	.label_1485
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_1485:
	lea	rbx, [r14 + 0x60]
	jmp	.label_1496
	nop	dword ptr [rax + rax]
.label_1493:
	mov	edi, eax
	call	close
.label_1496:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1498
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1493
	jmp	.label_1496
.label_1498:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1482
	call	hash_free
.label_1482:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_1486
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1488
	call	hash_free
	jmp	.label_1488
.label_1486:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_1488:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_1495
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1495:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb70

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
	je	.label_1512
	mov	eax, dword ptr [r14 + 0x48]
	xor	r15d, r15d
	test	ah, 0x20
	jne	.label_1512
	movzx	ecx, word ptr [r12 + 0x74]
	mov	word ptr [r12 + 0x74], 3
	cmp	ecx, 1
	je	.label_1537
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_1541
	mov	ecx, dword ptr [r12 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_1545
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1550
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1553
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1555
	mov	edi, OFFSET FLAT:label_138
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1507
.label_1537:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	mov	r15, r12
	jmp	.label_1512
.label_1541:
	lea	r13, [r12 + 0x70]
	mov	ecx, dword ptr [r12 + 0x70]
	jmp	.label_1516
.label_1545:
	lea	r13, [r12 + 0x70]
.label_1516:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_1519
	cmp	edx, 4
	je	.label_1521
	test	al, 0x40
	je	.label_1547
	mov	rdx, qword ptr [r12 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_1521
.label_1547:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1530
	test	ah, 0x10
	jne	.label_1533
	mov	rcx, qword ptr [r12 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r12
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1531
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r12 + 0x40], eax
	or	byte ptr [r12 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1540
	nop	word ptr cs:[rax + rax]
.label_1519:
	mov	r15, qword ptr [r12 + 0x10]
	test	r15, r15
	je	.label_1518
	mov	qword ptr [r14], r15
	mov	rdi, r12
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1552
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	r12, r15
	je	.label_1519
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1499
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1511
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1511
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1544
	mov	edi, OFFSET FLAT:label_138
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_1515
.label_1529:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1540:
	test	rax, rax
	jne	.label_1529
	jmp	.label_1531
.label_1521:
	test	ecx, 0x20000
	je	.label_1532
	mov	edi, dword ptr [r12 + 0x44]
	call	close
.label_1532:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_1535
	nop	dword ptr [rax]
.label_1543:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1538
	call	closedir
.label_1538:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_1543
	mov	qword ptr [r14 + 8], 0
.label_1535:
	mov	word ptr [r12 + 0x70], 6
.label_1501:
	mov	rdi, r14
	mov	rsi, r12
	call	leave_dir
	mov	r15, r12
	jmp	.label_1512
.label_1518:
	mov	r15, qword ptr [r12 + 8]
	cmp	qword ptr [r15 + 0x18], 0
	je	.label_1551
	mov	qword ptr [r14], r15
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1504
	mov	rdi, r12
	call	free
	jmp	.label_1499
.label_1550:
	mov	r15, r12
	jmp	.label_1509
.label_1552:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_1514
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	r15d, r15d
	jmp	.label_1512
.label_1553:
	mov	r15, r12
	jmp	.label_1509
.label_1514:
	test	ax, 0x102
	je	.label_1522
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_1917
	jmp	.label_1917
