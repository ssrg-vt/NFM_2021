	.section	.text
	.align	32
	#Procedure 0x401f40

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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	mov	r8, rdx
	mov	r9, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_12
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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4021d0

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_78
	call	setlocale
	mov	edi, OFFSET FLAT:label_36
	mov	esi, OFFSET FLAT:label_82
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_36
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	mov	byte ptr [rip + hard_dir_link],  0
	mov	byte ptr [rip + verbose],  0
	mov	byte ptr [rip + interactive],  0
	mov	byte ptr [rip + remove_existing_files],  0
	mov	byte ptr [rip + symbolic_link],  0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	lea	r12, [rsp + 0x28]
	mov	r13d, 0xf000
	xor	r15d, r15d
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_37
.label_1045:
	mov	byte ptr [rip + hard_dir_link],  1
	mov	al, r14b
	nop	word ptr cs:[rax + rax]
.label_37:
	mov	r14d, eax
	mov	edx, OFFSET FLAT:label_58
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x77
	ja	.label_62
	mov	al, 1
	jmp	qword ptr [(rcx * 8) + label_63]
.label_1046:
	mov	byte ptr [rip + logical],  1
	mov	al, r14b
	jmp	.label_37
.label_1055:
	test	r15, r15
	jne	.label_68
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 1
	mov	rdx, r12
	call	__xstat
	test	eax, eax
	jne	.label_38
	mov	eax, dword ptr [rsp + 0x40]
	and	eax, r13d
	cmp	eax, 0x4000
	jne	.label_76
	mov	r15, qword ptr [rip + optarg]
	mov	al, r14b
	jmp	.label_37
.label_1047:
	mov	byte ptr [rip + logical],  0
	mov	al, r14b
	jmp	.label_37
.label_1048:
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rsp + 0x20], rax
	mov	al, r14b
	jmp	.label_37
.label_1049:
	mov	rax, qword ptr [rip + optarg]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x10]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	al, r14b
	jmp	.label_37
.label_1050:
	mov	byte ptr [rip + remove_existing_files],  1
	mov	byte ptr [rip + interactive],  0
	mov	al, r14b
	jmp	.label_37
.label_1051:
	mov	byte ptr [rip + remove_existing_files],  0
	mov	byte ptr [rip + interactive],  1
	mov	al, r14b
	jmp	.label_37
.label_1052:
	mov	byte ptr [rip + dereference_dest_dir_symlinks],  1
	mov	al, r14b
	jmp	.label_37
.label_1053:
	mov	byte ptr [rip + relative],  1
	mov	al, r14b
	jmp	.label_37
.label_1054:
	mov	byte ptr [rip + symbolic_link],  1
	mov	al, r14b
	jmp	.label_37
.label_1056:
	mov	byte ptr [rip + verbose],  1
	mov	al, r14b
	jmp	.label_37
.label_1044:
	movsxd	rax, dword ptr [rip + optind]
	movsxd	r13, ebp
	sub	r13, rax
	test	r13d, r13d
	jle	.label_66
	mov	dl, byte ptr [rip + relative]
	cmp	dl, 1
	jne	.label_74
	mov	cl, byte ptr [rip + symbolic_link]
	test	cl, cl
	je	.label_75
.label_74:
	lea	r12, [rbx + rax*8]
	test	r14b, r14b
	je	.label_40
	test	r15, r15
	jne	.label_79
	xor	ebx, ebx
	cmp	r13d, 2
	jne	.label_81
	mov	r14d, 0xffffffff
	mov	r13d, 2
	jmp	.label_33
.label_40:
	test	r15, r15
	jne	.label_39
	cmp	r13d, 2
	jge	.label_39
	mov	r14d, 0xffffffff
	mov	ebp, 0xffffff9c
	mov	ebx, OFFSET FLAT:label_77
	jmp	.label_33
.label_39:
	test	r15, r15
	setne	al
	cmp	r13d, 2
	setne	bpl
	mov	r14d, 0xffffffff
	or	bpl, al
	jne	.label_45
	mov	rax, qword ptr [r12]
	mov	rcx, qword ptr [r12 + 8]
	cmp	byte ptr [rip + symbolic_link],  1
	jne	.label_47
	test	dl, dl
	jne	.label_45
	mov	esi, 0xffffff9c
	mov	rdi, rax
	mov	rdx, rcx
	call	symlinkat
	jmp	.label_56
.label_47:
	movzx	r8d, byte ptr [rip + logical]
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rax
	call	linkat
.label_56:
	test	eax, eax
	js	.label_61
	mov	r13d, 2
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_33
.label_61:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	js	.label_45
	cmp	r14d, 0x14
	je	.label_45
	cmp	r14d, 0x11
	jne	.label_67
.label_45:
	test	r15, r15
	mov	rbx, r15
	jne	.label_71
	mov	rbx, qword ptr [r12 + r13*8 - 8]
.label_71:
	mov	al, byte ptr [rip + dereference_dest_dir_symlinks]
	test	al, al
	mov	eax, 0x230000
	mov	edx, 0x210000
	cmovne	edx, eax
	mov	edi, 0xffffff9c
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
	mov	ecx, eax
	test	eax, eax
	js	.label_80
	cmp	r15, 1
	sbb	r13d, 0
	mov	ebp, ecx
	jmp	.label_33
.label_80:
	mov	r15, rbx
	mov	r13d, 2
	xor	ebx, ebx
	test	bpl, 1
	mov	ebp, ecx
	jne	.label_34
.label_33:
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x18]
	test	cl, cl
	je	.label_41
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 0x10]
	call	xget_version
.label_41:
	mov	dword ptr [rip + backup_type],  eax
	mov	rdi, qword ptr [rsp + 0x20]
	call	set_simple_backup_suffix
	test	rbx, rbx
	je	.label_48
	mov	r15d, ebp
	mov	r14, rbx
	cmp	r13d, 1
	jle	.label_69
	cmp	byte ptr [rip + remove_existing_files],  1
	jne	.label_52
	cmp	dword ptr [rip + backup_type],  3
	je	.label_52
	mov	al, byte ptr [rip + symbolic_link]
	xor	al, 1
	test	al, 1
	je	.label_52
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rip + dest_set],  rax
	test	rax, rax
	jne	.label_52
	call	xalloc_die
.label_48:
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
	mov	esi, 0xffffff9c
	mov	rcx, rdx
	mov	r8d, r14d
	call	do_link
	mov	ebx, eax
	jmp	.label_70
.label_69:
	mov	bl, 1
	jne	.label_70
.label_52:
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rdi, qword ptr [r12]
	call	last_component
	mov	rdi, r14
	mov	rsi, rax
	lea	rdx, [rsp + 0x28]
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	strip_trailing_slashes
	mov	rdi, qword ptr [r12]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r8d, 0xffffffff
	mov	esi, r15d
	mov	rcx, rbp
	call	do_link
	and	bl, al
	mov	rdi, rbp
	call	free
	add	r12, 8
	dec	r13d
	jne	.label_44
.label_70:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_67:
	mov	r13d, 2
	xor	ebx, ebx
	jmp	.label_33
.label_62:
	cmp	eax, 0xffffff7d
	je	.label_42
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_51:
	mov	edi, 1
	call	usage
.label_42:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_28
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_53
	mov	r9d, OFFSET FLAT:label_54
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	jmp	.label_50
.label_38:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + optarg]
	mov	edi, 4
.label_35:
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_76:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
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
.label_66:
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
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	jmp	.label_50
.label_81:
	xor	edi, edi
	cmp	r13d, 1
	jg	.label_55
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12]
	jmp	.label_59
.label_75:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
.label_50:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_55:
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r12 + 0x10]
.label_59:
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
.label_34:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402820

	.globl do_link
	.type do_link, @function
do_link:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	r14d, r8d
	mov	r15, rcx
	mov	r12, rdx
	mov	ebp, esi
	mov	qword ptr [rsp + 8], rdi
	mov	al, byte ptr [rip + logical]
	xor	ebx, ebx
	test	al, al
	sete	r13b
	test	r14d, r14d
	jns	.label_95
	cmp	byte ptr [rip + symbolic_link],  1
	jne	.label_110
	mov	al, byte ptr [rip + relative]
	test	al, al
	je	.label_114
	mov	dword ptr [rsp + 0x1c], ebp
	mov	qword ptr [rsp + 0x10], r15
	mov	r14d, 0xffffffff
	mov	ecx, 1
	jmp	.label_117
.label_110:
	movzx	r8d, al
	shl	r8d, 0xa
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, ebp
	mov	rcx, r12
	call	linkat
	jmp	.label_129
.label_114:
	mov	rdi, qword ptr [rsp + 8]
	mov	esi, ebp
	mov	rdx, r12
	call	symlinkat
.label_129:
	xor	r14d, r14d
	test	eax, eax
	jns	.label_95
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_95:
	test	r14d, r14d
	mov	al, byte ptr [rip + symbolic_link]
	jne	.label_134
	mov	rcx, qword ptr [rip + dest_set]
	test	rcx, rcx
	jne	.label_134
	xor	r13d, r13d
	test	al, 1
	mov	ebx, 0
	je	.label_143
	jmp	.label_111
.label_134:
	mov	qword ptr [rsp + 0x10], r15
	mov	ecx, 1
	test	al, 1
	jne	.label_91
	mov	bl, r13b
	shl	ebx, 8
	lea	rcx, [rsp + 0x38]
	mov	edi, 1
	mov	esi, 0xffffff9c
	mov	rdx, qword ptr [rsp + 8]
	mov	r8d, ebx
	call	__fxstatat
	xor	ecx, ecx
	test	eax, eax
	je	.label_91
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_108
.label_91:
	mov	dword ptr [rsp + 0x1c], ebp
	xor	r13d, r13d
	test	r14d, r14d
	je	.label_112
.label_117:
	mov	al, byte ptr [rip + symbolic_link]
	test	al, al
	jne	.label_116
	mov	al, byte ptr [rip + hard_dir_link]
	test	al, al
	jne	.label_116
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x50]
	cmp	eax, 0x4000
	jne	.label_116
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_123
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
.label_108:
	mov	rdx, rbx
	call	error
	jmp	.label_85
.label_116:
	mov	dword ptr [rsp + 0x34], ecx
	xor	ebx, ebx
	cmp	byte ptr [rip + relative],  1
	jne	.label_138
	mov	qword ptr [rsp + 0x28], r12
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	r12, rax
	mov	esi, 2
	mov	rdi, r12
	call	canonicalize_filename_mode
	mov	r15, rax
	mov	esi, 2
	mov	rdi, qword ptr [rsp + 8]
	call	canonicalize_filename_mode
	mov	rbp, rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_86
	test	rbp, rbp
	je	.label_86
	mov	edi, 0x1000
	call	xmalloc
	mov	r13, rax
	mov	ecx, 0x1000
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r13
	call	relpath
	test	al, al
	je	.label_139
	mov	rbx, r13
	jmp	.label_86
.label_138:
	mov	rbp, qword ptr [rsp + 8]
	jmp	.label_101
.label_112:
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_104
.label_139:
	mov	rdi, r13
	call	free
	xor	ebx, ebx
.label_86:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	mov	r12, qword ptr [rsp + 0x28]
	jne	.label_101
	mov	rdi, qword ptr [rsp + 8]
	call	xstrdup
	mov	rbx, rax
	mov	rbp, rbx
.label_101:
	mov	r15b, 1
	mov	al, byte ptr [rip + remove_existing_files]
	test	al, al
	jne	.label_126
	mov	al, byte ptr [rip + interactive]
	test	al, al
	jne	.label_126
	xor	r13d, r13d
	cmp	dword ptr [rip + backup_type],  0
	setne	r15b
	je	.label_130
.label_126:
	mov	qword ptr [rsp + 8], rbp
	lea	rcx, [rsp + 0xc8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	ebp, dword ptr [rsp + 0x1c]
	mov	esi, ebp
	mov	rdx, r12
	call	__fxstatat
	test	eax, eax
	je	.label_146
	mov	qword ptr [rsp + 0x20], rbx
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	cmp	ebx, 2
	mov	r15d, 0
	je	.label_90
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_72
.label_132:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_96
.label_146:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xe0]
	cmp	eax, 0x4000
	jne	.label_142
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_135
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
.label_96:
	call	error
.label_102:
	mov	rbp, r12
	jmp	.label_85
.label_142:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, qword ptr [rip + dest_set]
	lea	rdx, [rsp + 0xc8]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	seen_file
	test	al, al
	je	.label_137
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
.label_136:
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	rbp, r12
	jmp	.label_85
.label_137:
	cmp	dword ptr [rip + backup_type],  0
	je	.label_88
	mov	al, byte ptr [rip + symbolic_link]
	test	al, al
	je	.label_89
	jmp	.label_94
.label_88:
	cmp	byte ptr [rip + remove_existing_files],  1
	jne	.label_94
.label_89:
	cmp	dword ptr [rsp + 0x34], 0
	je	.label_97
	lea	rdx, [rsp + 0x38]
	mov	edi, 1
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
	test	eax, eax
	jne	.label_94
.label_97:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0xd0]
	jne	.label_94
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rsp + 0xc8]
	jne	.label_94
	cmp	qword ptr [rsp + 0x48], 1
	je	.label_109
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, ebp
	mov	rcx, r12
	call	same_nameat
	test	al, al
	je	.label_94
.label_109:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_136
.label_94:
	xor	r13d, r13d
	test	r14d, r14d
	js	.label_140
	cmp	r14d, 0x11
	jne	.label_90
.label_140:
	mov	qword ptr [rsp + 0x28], r12
	cmp	byte ptr [rip + interactive],  1
	jne	.label_145
	mov	r13, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp, qword ptr [rip + program_name]
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
	mov	r12b, 1
	call	yesno
	test	al, al
	je	.label_102
.label_145:
	mov	edx, dword ptr [rip + backup_type]
	xor	r13d, r13d
	test	edx, edx
	je	.label_105
	mov	ebx, dword ptr [rsp + 0x1c]
	mov	edi, ebx
	mov	r12, qword ptr [rsp + 0x28]
	mov	rsi, r12
	call	find_backup_file_name
	mov	r13, rax
	mov	edi, ebx
	mov	rsi, r12
	mov	edx, ebx
	mov	rcx, r13
	call	renameat
	test	eax, eax
	je	.label_90
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rdi, r13
	call	free
	xor	r13d, r13d
	cmp	ebx, 2
	mov	r15d, 0
	je	.label_90
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	jmp	.label_132
.label_105:
	mov	r12, qword ptr [rsp + 0x28]
.label_90:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 8]
.label_130:
	cmp	byte ptr [rip + symbolic_link],  1
	jne	.label_133
	movzx	ecx, r15b
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x1c]
	mov	rdx, r12
	mov	r8d, r14d
	call	force_symlinkat
	jmp	.label_144
.label_133:
	movzx	r8d, byte ptr [rip + logical]
	shl	r8d, 0xa
	mov	dword ptr [rsp], r14d
	movzx	r9d, r15b
	mov	edi, 0xffffff9c
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0x1c]
	mov	rcx, r12
	call	force_linkat
.label_144:
	mov	r14d, eax
	mov	qword ptr [rsp + 8], rbp
.label_104:
	mov	r15, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rip + symbolic_link]
	test	r14d, r14d
	jle	.label_87
	test	al, 1
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [rsp + 0x28], r12
	mov	qword ptr [rsp + 0x20], rbx
	je	.label_93
	cmp	r14d, 0x24
	je	.label_98
	mov	rax, qword ptr [rsp + 8]
	cmp	byte ptr [rax], 0
	je	.label_98
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_107
.label_87:
	test	al, 1
	jne	.label_111
.label_143:
	mov	rdi, qword ptr [rip + dest_set]
	lea	rdx, [rsp + 0x38]
	mov	rsi, r15
	call	record_file
.label_111:
	mov	bpl, 1
	cmp	byte ptr [rip + verbose],  1
	jne	.label_113
	mov	qword ptr [rsp + 0x20], rbx
	mov	r14d, OFFSET FLAT:label_78
	test	r13, r13
	mov	ebx, OFFSET FLAT:label_78
	je	.label_100
	mov	rbp, r12
	sub	rbp, r15
	xor	r12d, r12d
	test	rbp, rbp
	mov	rbx, r13
	jle	.label_127
	mov	rdi, r13
	call	strlen
	lea	rdi, [rbp + rax + 1]
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, rbp
	call	memcpy
	add	rbp, rbx
	mov	rdi, rbp
	mov	rsi, r13
	call	strcpy
	mov	r12, rbx
.label_127:
	mov	edi, 2
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r14, rax
	mov	rdi, r12
	call	free
	mov	ebx, OFFSET FLAT:label_148
.label_100:
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rbp, rax
	mov	al, byte ptr [rip + symbolic_link]
	test	al, al
	mov	eax, 0x2d
	mov	r15d, 0x3d
	cmovne	r15d, eax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style
	mov	qword ptr [rsp], rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_99
	xor	eax, eax
	mov	r8, rbp
	mov	rdx, r14
	mov	rcx, rbx
	mov	r9d, r15d
	call	__printf_chk
	mov	rbx, qword ptr [rsp + 0x20]
	mov	bpl, 1
	jmp	.label_113
.label_93:
	lea	eax, [r14 - 0x11]
	cmp	eax, 0xe
	ja	.label_115
	jmp	qword ptr [(rax * 8) + label_118]
.label_1069:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	jmp	.label_107
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
	jmp	.label_107
.label_115:
	cmp	r14d, 0x7a
	jne	.label_122
.label_1068:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	jmp	.label_107
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
.label_107:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	test	r13, r13
	je	.label_120
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, r13
	mov	edx, edi
	mov	rcx, qword ptr [rsp + 0x28]
	call	renameat
	test	eax, eax
	je	.label_84
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x10]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_103
.label_120:
	xor	r13d, r13d
	mov	rbx, qword ptr [rsp + 0x20]
	xor	ebp, ebp
	jmp	.label_113
.label_84:
	xor	ebp, ebp
.label_103:
	mov	rbx, qword ptr [rsp + 0x20]
.label_113:
	mov	rdi, r13
	call	free
	mov	rdi, rbx
	call	free
.label_85:
	mov	eax, ebp
	add	rsp, 0x158
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
	#Procedure 0x403080

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
	jns	.label_149
	mov	edi, r13d
	mov	edx, ebx
	mov	rcx, r12
	mov	r8d, r15d
	call	linkat
	xor	r14d, r14d
	test	eax, eax
	je	.label_150
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_149:
	cmp	r14d, 0x11
	jne	.label_150
	xor	bpl, 1
	jne	.label_150
	mov	rdi, r12
	call	last_component
	mov	rbp, rax
	sub	rbp, r12
	lea	rdi, [rbp + 9]
	mov	r14d, r15d
	cmp	rdi, 0x101
	jae	.label_154
	lea	r15, [rsp + 0x20]
	jmp	.label_151
.label_154:
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_152
.label_151:
	mov	rcx, -1
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbp
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r15, r15
	je	.label_152
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
	je	.label_155
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_156
.label_152:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	jmp	.label_150
.label_155:
	mov	edi, ebx
	mov	rsi, r15
	mov	ebp, ebx
	mov	edx, ebx
	mov	rcx, r12
	call	renameat
	mov	r14d, 0xffffffff
	test	eax, eax
	je	.label_153
	call	__errno_location
	mov	r14d, dword ptr [rax]
.label_153:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	call	unlinkat
.label_156:
	lea	rax, [rsp + 0x20]
	cmp	r15, rax
	je	.label_150
	mov	rdi, r15
	call	free
.label_150:
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
	.align	32
	#Procedure 0x4031f0

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
	.align	32
	#Procedure 0x403210

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
	jns	.label_160
	mov	rdi, r15
	mov	esi, r14d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_157
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_160:
	cmp	ebp, 0x11
	jne	.label_157
	xor	bl, 1
	jne	.label_157
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	sub	rbx, r13
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jae	.label_162
	lea	r12, [rsp + 0x10]
	jmp	.label_163
.label_162:
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_159
.label_163:
	mov	rcx, -1
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	test	r12, r12
	je	.label_159
	mov	qword ptr [rsp], r15
	mov	dword ptr [rsp + 8], r14d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_161
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_158
.label_159:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_157
.label_161:
	mov	edi, r14d
	mov	rsi, r12
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_158
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r12
	call	unlinkat
.label_158:
	lea	rax, [rsp + 0x10]
	cmp	r12, rax
	je	.label_157
	mov	rdi, r12
	call	free
.label_157:
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
	.align	32
	#Procedure 0x403350

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl relpath
	.type relpath, @function
relpath:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	cmp	byte ptr [rsi + 1], 0x2f
	sete	al
	cmp	byte ptr [rdi + 1], 0x2f
	mov	r14, rcx
	mov	r12, rdx
	sete	cl
	xor	ebx, ebx
	xor	cl, al
	jne	.label_172
	mov	dl, byte ptr [rsi]
	test	dl, dl
	mov	rcx, rdi
	mov	eax, 0
	je	.label_168
	xor	ecx, ecx
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_180:
	movzx	ebx, byte ptr [rdi + rcx]
	test	bl, bl
	je	.label_178
	cmp	dl, bl
	jne	.label_178
	lea	rbx, [rcx + 1]
	cmp	dl, 0x2f
	cmove	eax, ebx
	movzx	edx, byte ptr [rsi + rcx + 1]
	test	dl, dl
	mov	rcx, rbx
	jne	.label_180
	mov	rcx, rbx
	add	rcx, rdi
.label_168:
	mov	cl, byte ptr [rcx]
	test	cl, cl
	je	.label_184
	cmp	cl, 0x2f
	je	.label_184
	jmp	.label_185
.label_178:
	cmp	dl, 0x2f
	jne	.label_185
	test	bl, bl
	jne	.label_185
	mov	ebx, ecx
.label_184:
	mov	eax, ebx
.label_185:
	test	eax, eax
	je	.label_190
	cdqe	
	lea	rcx, [rdi + rax]
	cmp	byte ptr [rsi + rax], 0x2f
	lea	rdx, [rsi + rax + 1]
	lea	rbx, [rsi + rax]
	cmove	rbx, rdx
	cmp	byte ptr [rdi + rax], 0x2f
	lea	r15, [rdi + rax + 1]
	cmovne	r15, rcx
	cmp	byte ptr [rbx], 0
	je	.label_191
	test	r12, r12
	je	.label_170
	mov	bpl, 1
	cmp	r14, 3
	jb	.label_169
	mov	byte ptr [r12 + 2], 0
	mov	word ptr [r12], 0x2e2e
	add	r12, 2
	add	r14, -2
	jmp	.label_174
.label_190:
	xor	ebx, ebx
	jmp	.label_172
.label_191:
	cmp	byte ptr [r15], 0
	mov	ebx, OFFSET FLAT:label_77
	cmovne	rbx, r15
	test	r12, r12
	je	.label_182
	mov	rdi, rbx
	call	strlen
	cmp	rax, r14
	jae	.label_187
	inc	rax
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rax
	call	memcpy
	jmp	.label_165
.label_170:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_166
	call	fputs_unlocked
	xor	r12d, r12d
.label_174:
	xor	ebp, ebp
	jmp	.label_169
.label_173:
	inc	rbx
.label_169:
	movzx	eax, byte ptr [rbx]
	cmp	al, 0x2f
	je	.label_171
	test	al, al
	jne	.label_173
	jmp	.label_175
.label_171:
	test	r12, r12
	je	.label_176
	mov	al, 1
	cmp	r14, 4
	jb	.label_177
	mov	dword ptr [r12], 0x2e2e2f
	add	r12, 3
	add	r14, -3
	jmp	.label_181
.label_176:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_183
	call	fputs_unlocked
	xor	r12d, r12d
.label_181:
	xor	eax, eax
.label_177:
	and	bpl, 1
	or	bpl, al
	jmp	.label_173
.label_175:
	cmp	byte ptr [r15], 0
	je	.label_189
	test	r12, r12
	je	.label_192
	mov	bl, 1
	cmp	r14, 1
	jbe	.label_193
	mov	word ptr [r12], 0x2f
	inc	r12
	dec	r14
	and	bpl, 1
	jmp	.label_186
.label_182:
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rbx
	call	fputs_unlocked
.label_165:
	mov	bl, 1
	jmp	.label_172
.label_192:
	mov	rsi, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:label_167
	call	fputs_unlocked
	and	bpl, 1
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, r15
	call	fputs_unlocked
	jmp	.label_188
.label_193:
	mov	bpl, 1
.label_186:
	mov	rdi, r15
	call	strlen
	cmp	rax, r14
	jae	.label_179
	inc	rax
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, rax
	call	memcpy
.label_188:
	xor	ebx, ebx
.label_179:
	or	bpl, bl
.label_189:
	mov	bl, 1
	test	bpl, 1
	je	.label_172
.label_187:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0
	mov	esi, 0x24
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	call	error
.label_172:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_195
	mov	edi, OFFSET FLAT:label_198
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_196
	test	rbx, rbx
	je	.label_197
.label_195:
	mov	eax, OFFSET FLAT:label_196
	cmp	byte ptr [rbx], 0
	je	.label_197
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_196
	cmove	rax, rbx
.label_197:
	mov	qword ptr [rip + simple_backup_suffix],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610

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
	jne	.label_209
	mov	edi, OFFSET FLAT:label_198
	call	getenv
	mov	rbx, rax
	mov	edi, OFFSET FLAT:label_196
	test	rbx, rbx
	je	.label_206
	mov	edi, OFFSET FLAT:label_196
	cmp	byte ptr [rbx], 0
	je	.label_206
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	edi, OFFSET FLAT:label_196
	cmove	rdi, rbx
.label_206:
	mov	qword ptr [rip + simple_backup_suffix],  rdi
.label_209:
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
	je	.label_211
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
.label_217:
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x70]
	call	memcpy
	cmp	r12d, 1
	jne	.label_202
	mov	rax, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
	jmp	.label_201
	nop	word ptr cs:[rax + rax]
.label_202:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rbx, [r13 + rax]
	mov	rdi, rbx
	call	base_len
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	mov	dword ptr [rsp + 8], r12d
	je	.label_215
	call	rewinddir
	mov	rdi, qword ptr [rsp]
	jmp	.label_218
.label_215:
	movzx	ebp, word ptr [rbx]
	mov	word ptr [rbx], 0x2e
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x40]
	mov	rsi, r13
	lea	rcx, [rsp + 0xc]
	call	opendirat
	mov	rdi, rax
	test	rdi, rdi
	je	.label_225
	mov	word ptr [rbx], bp
	mov	rax, qword ptr [rsp + 0x20]
	mov	byte ptr [rbx + rax + 4], 0
	mov	dword ptr [rbx + rax], 0x7e317e2e
.label_218:
	mov	rax, rdi
	mov	qword ptr [rsp], rax
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_230
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
.label_224:
	lea	rbp, [rbx + 0x13]
	mov	rdi, rbp
	call	strlen
	cmp	rax, r13
	jb	.label_203
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [r14 + rax]
	mov	rsi, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_203
	mov	rsi, qword ptr [rsp + 0x20]
	mov	al, byte ptr [rbx + rsi + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_203
	lea	rcx, [rbx + rsi + 0x13]
	cmp	al, 0x39
	sete	r15b
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_213
	lea	rcx, [rbx + rsi + 0x17]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_220:
	cmp	al, 0x39
	sete	al
	and	r15b, al
	movsx	eax, byte ptr [rcx + rbp]
	mov	edx, eax
	add	edx, -0x30
	inc	rbp
	cmp	edx, 0xa
	jb	.label_220
	inc	rbp
	jmp	.label_223
.label_213:
	mov	ebp, 1
.label_223:
	cmp	al, 0x7e
	jne	.label_226
	lea	rbx, [rbx + rsi + 0x15]
	cmp	byte ptr [rbx + rbp + 1], 0
	jne	.label_226
	cmp	qword ptr [rsp + 0x30], rbp
	jb	.label_222
	jne	.label_226
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcmp
	test	eax, eax
	jg	.label_226
.label_222:
	movzx	edx, r15b
	lea	rcx, [rdx + rbp]
	mov	rax, qword ptr [rsp + 0x60]
	mov	qword ptr [rsp + 0x30], rcx
	lea	r15, [rax + rcx]
	cmp	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x38], rdx
	jae	.label_229
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
	jne	.label_205
	jmp	.label_200
.label_229:
	mov	rax, r14
.label_205:
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
	jmp	.label_216
.label_207:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
.label_216:
	cmp	cl, 0x39
	je	.label_207
	inc	cl
	mov	byte ptr [rax], cl
.label_226:
	mov	r15, qword ptr [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_203:
	mov	rdi, qword ptr [rsp]
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_224
	mov	r13, r14
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 0x38]
	jmp	.label_227
.label_225:
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
.label_227:
	cmp	ecx, 1
	mov	qword ptr [rsp], rax
	je	.label_228
	cmp	ecx, 2
	je	.label_230
	mov	r14, r13
	cmp	ecx, 3
	jne	.label_201
	jmp	.label_200
	nop	dword ptr [rax + rax]
.label_230:
	cmp	dword ptr [rsp + 8], 2
	jne	.label_228
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [r13 + rax]
	mov	rsi, qword ptr [rip + simple_backup_suffix]
	mov	rdx, qword ptr [rsp + 0x58]
	call	memcpy
	mov	dword ptr [rsp + 8], 1
.label_228:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	cmp	rbp, 0xf
	jb	.label_210
	mov	rax, qword ptr [rsp + 0x48]
	test	rax, rax
	jne	.label_212
	test	r12d, r12d
	js	.label_214
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
	jmp	.label_219
.label_210:
	mov	eax, 0xff
	jmp	.label_212
.label_214:
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
.label_219:
	cmp	rax, -1
	mov	rdx, -1
	mov	ecx, 0xe
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	rax, rdx
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_212:
	cmp	rax, rbp
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r14, r13
	lea	rcx, [r13 + rcx]
	sub	rcx, rbx
	cmp	rax, rcx
	lea	rax, [rax - 1]
	cmova	rax, rcx
	mov	word ptr [rbx + rax], 0x7e
	jmp	.label_201
.label_199:
	mov	r14, r13
	nop	dword ptr [rax + rax]
.label_201:
	mov	eax, dword ptr [rsp + 0x44]
	test	al, al
	mov	r12d, dword ptr [rsp + 8]
	mov	r13, r14
	je	.label_204
	mov	edx, dword ptr [rsp + 0xc]
	test	edx, edx
	jns	.label_208
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	mov	edx, 0xffffff9c
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
.label_208:
	xor	r8d, r8d
	cmp	r12d, 1
	setne	r8b
	mov	rax, qword ptr [rsp + 0x28]
	lea	rcx, [r13 + rax]
	mov	edi, 0xffffff9c
	mov	rsi, r15
	call	renameatu
	test	eax, eax
	je	.label_204
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	cmp	ebp, 0x11
	je	.label_217
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_221
	call	closedir
.label_221:
	mov	rdi, r13
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_231
.label_204:
	mov	rdi, qword ptr [rsp]
	test	rdi, rdi
	je	.label_211
	call	closedir
	jmp	.label_211
.label_200:
	mov	rdi, r14
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_231:
	xor	r13d, r13d
.label_211:
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
	.align	32
	#Procedure 0x403bf0

	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:
	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_232
	pop	rcx
	ret	
.label_232:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c10
	.globl get_version
	.type get_version, @function
get_version:

	mov	eax, 2
	test	rsi, rsi
	je	.label_233
	cmp	byte ptr [rsi], 0
	je	.label_233
	push	rax
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax, dword ptr [(rax * 4) + backup_types]
	add	rsp, 8
.label_233:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c50

	.globl xget_version
	.type xget_version, @function
xget_version:
	push	rax
	test	rsi, rsi
	je	.label_234
	cmp	byte ptr [rsi], 0
	je	.label_234
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	jmp	.label_237
.label_234:
	mov	edi, OFFSET FLAT:label_235
	call	getenv
	mov	ecx, 2
	test	rax, rax
	je	.label_236
	cmp	byte ptr [rax], 0
	je	.label_236
	mov	r9, qword ptr [rip + argmatch_die]
	mov	edi, OFFSET FLAT:label_238
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	mov	rsi, rax
.label_237:
	call	__xargmatch_internal
	mov	ecx, dword ptr [(rax * 4) + backup_types]
.label_236:
	mov	eax, ecx
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403cc0

	.globl canonicalize_filename_mode
	.type canonicalize_filename_mode, @function
canonicalize_filename_mode:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	r14d, esi
	mov	r12, rdi
	mov	ebx, r14d
	and	ebx, 3
	lea	eax, [r14 + 3]
	test	eax, ebx
	jne	.label_295
	test	r12, r12
	je	.label_295
	mov	al, byte ptr [r12]
	cmp	al, 0x2f
	je	.label_303
	test	al, al
	jne	.label_306
	call	__errno_location
	mov	dword ptr [rax], 2
	jmp	.label_270
.label_295:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_270:
	xor	ebp, ebp
.label_255:
	mov	rax, rbp
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_303:
	mov	edi, 0x1000
	call	xmalloc
	mov	rdi, rax
	mov	byte ptr [rdi], 0x2f
	lea	r8, [rdi + 0x1000]
	lea	rbp, [rdi + 1]
	jmp	.label_247
.label_306:
	call	xgetcwd
	xor	ebp, ebp
	test	rax, rax
	je	.label_255
	xor	esi, esi
	mov	rbp, rax
	mov	rdi, rbp
	call	__rawmemchr
	mov	rdi, rbp
	mov	r8, rax
	mov	rbp, r8
	sub	rbp, rdi
	cmp	rbp, 0xfff
	jg	.label_251
	mov	esi, 0x1000
	call	xrealloc
	mov	rdi, rax
	add	rbp, rdi
	mov	r8, rdi
	add	r8, 0x1000
	jmp	.label_247
.label_251:
	mov	rbp, r8
.label_247:
	mov	al, byte ptr [r12]
	xor	r15d, r15d
	test	al, al
	je	.label_281
	mov	ecx, r14d
	and	ecx, 4
	mov	dword ptr [rsp + 0x50], ecx
	mov	ecx, r14d
	and	ecx, 7
	mov	dword ptr [rsp + 0x54], ecx
	xor	ecx, ecx
	mov	dword ptr [rsp + 0x2c], ebx
	cmp	ebx, 2
	setne	cl
	lea	ecx, [rcx + rcx*8 + 4]
	mov	dword ptr [rsp + 0x4c], ecx
	xor	r15d, r15d
	and	r14b, 3
	mov	qword ptr [rsp + 0x60], r14
	mov	qword ptr [rsp + 0x30], r12
	mov	r14, r12
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x18], rcx
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x38], rcx
.label_298:
	mov	qword ptr [rsp + 0x10], r15
	mov	r13, r14
.label_271:
	lea	rcx, [rdi + 1]
	mov	r12, rbp
.label_259:
	cmp	r12, rcx
	jbe	.label_253
	mov	edx, eax
	nop	word ptr cs:[rax + rax]
.label_269:
	cmp	dl, 0x2f
	mov	r14, r13
	lea	rsi, [r13 + 1]
	jne	.label_268
	nop	dword ptr [rax]
.label_296:
	movzx	edx, byte ptr [rsi]
	inc	rsi
	cmp	dl, 0x2f
	je	.label_296
	lea	r14, [rsi - 1]
.label_268:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_254
	nop	word ptr cs:[rax + rax]
.label_262:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_254:
	cmp	al, 0x2f
	je	.label_261
	test	al, al
	jne	.label_262
.label_261:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	jne	.label_265
	cmp	byte ptr [r14], 0x2e
	jne	.label_252
	mov	dl, byte ptr [r13]
	test	dl, dl
	jne	.label_269
	jmp	.label_256
.label_265:
	test	r15, r15
	je	.label_256
	cmp	r15, 2
	jne	.label_276
	cmp	dl, 0x2e
	jne	.label_245
	cmp	byte ptr [rsi], 0x2e
	jne	.label_245
	dec	r12
	mov	rdx, r12
	nop	
.label_287:
	mov	r12, rdx
	cmp	r12, rdi
	jbe	.label_283
	lea	rdx, [r12 - 1]
	cmp	byte ptr [r12 - 1], 0x2f
	jne	.label_287
.label_283:
	test	al, al
	jne	.label_259
	jmp	.label_256
.label_253:
	cmp	al, 0x2f
	mov	edx, eax
	mov	r14, r13
	lea	rcx, [r13 + 1]
	jne	.label_297
	nop	
.label_300:
	movzx	edx, byte ptr [rcx]
	inc	rcx
	cmp	dl, 0x2f
	je	.label_300
	lea	r14, [rcx - 1]
.label_297:
	mov	eax, edx
	mov	r13, r14
	jmp	.label_301
	nop	word ptr cs:[rax + rax]
.label_309:
	movzx	eax, byte ptr [r13 + 1]
	inc	r13
.label_301:
	test	al, al
	je	.label_308
	cmp	al, 0x2f
	jne	.label_309
.label_308:
	mov	r15, r13
	sub	r15, r14
	cmp	r15, 1
	je	.label_239
	cmp	r15, 2
	jne	.label_243
	cmp	dl, 0x2e
	jne	.label_245
	cmp	byte ptr [rcx], 0x2e
	je	.label_249
	jmp	.label_245
.label_239:
	cmp	dl, 0x2e
	jne	.label_252
.label_249:
	test	al, al
	jne	.label_253
	jmp	.label_256
.label_252:
	mov	r15d, 1
.label_276:
	cmp	byte ptr [r12 - 1], 0x2f
	je	.label_258
	mov	byte ptr [r12], 0x2f
	inc	r12
.label_258:
	lea	rax, [r12 + r15]
	cmp	rax, r8
	jae	.label_263
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 8], rdi
	jmp	.label_266
.label_263:
	sub	r12, rdi
	sub	r8, rdi
	lea	rbp, [r15 + 1]
	cmp	r15, 0xfff
	mov	eax, 0x1000
	cmovle	rbp, rax
	add	rbp, r8
	mov	rsi, rbp
	call	xrealloc
	add	rbp, rax
	mov	qword ptr [rsp + 8], rax
	add	r12, rax
	mov	qword ptr [rsp + 0x20], rbp
.label_266:
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r15
	call	memcpy
	lea	rbp, [r12 + r15]
	mov	byte ptr [r12 + r15], 0
	cmp	dword ptr [rsp + 0x54], 6
	jne	.label_285
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_291
.label_285:
	cmp	dword ptr [rsp + 0x50], 0
	lea	rdx, [rsp + 0x68]
	mov	edi, 1
	jne	.label_299
	mov	rsi, qword ptr [rsp + 8]
	call	__lxstat
	jmp	.label_257
.label_299:
	mov	rsi, qword ptr [rsp + 8]
	call	__xstat
.label_257:
	test	eax, eax
	je	.label_304
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	al, 1
	je	.label_307
	test	al, al
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
	je	.label_267
	mov	dword ptr [rsp + 0x80], 0
	xor	eax, eax
	jmp	.label_246
.label_304:
	mov	eax, dword ptr [rsp + 0x80]
.label_291:
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rdx, [rsp + 0x68]
.label_246:
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_275
	mov	qword ptr [rsp + 0x40], rbp
	mov	dword ptr [rsp + 0x28], ebx
	mov	rax, qword ptr [rsp + 0x38]
	test	rax, rax
	jne	.label_264
	mov	edi, 7
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare_ino_str
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	lea	rdx, [rsp + 0x68]
	test	rax, rax
	je	.label_278
.label_264:
	mov	rbx, rax
	mov	rdi, rbx
	mov	r14, qword ptr [rsp + 0x30]
	mov	rsi, r14
	mov	rbp, rdx
	call	seen_file
	test	al, al
	mov	qword ptr [rsp + 0x38], rbx
	je	.label_284
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	eax, 0x28
	cmovne	ebx, eax
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_288
.label_284:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	record_file
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, qword ptr [rsp + 8]
	call	areadlink_with_size
	test	rax, rax
	jne	.label_293
	call	__errno_location
	cmp	dword ptr [rsp + 0x2c], 2
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	jne	.label_240
	cmp	dword ptr [rax], 0xc
	je	.label_240
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	jmp	.label_294
.label_307:
	mov	rax, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x20]
	nop	dword ptr [rax + rax]
.label_280:
	movzx	ecx, byte ptr [rax]
	inc	rax
	cmp	cl, 0x2f
	je	.label_280
	xor	eax, eax
	test	cl, cl
	setne	al
	cmp	ebx, 2
	lea	eax, [rax + rax*8 + 4]
	mov	ecx, 0xd
	cmovne	eax, ecx
.label_288:
	and	al, 0xf
	cmp	al, 4
	jne	.label_272
.label_294:
	mov	al, byte ptr [r13]
	test	al, al
	jne	.label_271
	jmp	.label_274
.label_245:
	mov	r15d, 2
	jmp	.label_276
.label_243:
	test	r15, r15
	jne	.label_276
	jmp	.label_256
.label_275:
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_282
	cmp	dword ptr [rsp + 0x2c], 2
	je	.label_282
	mov	cl, byte ptr [r13]
	mov	eax, 0x14
	test	cl, cl
	jne	.label_286
.label_282:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	mov	r14, r13
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_292
.label_293:
	mov	qword ptr [rsp + 0x58], rax
	mov	rdi, rax
	call	strlen
	mov	r14, rax
	mov	rdi, r13
	call	strlen
	mov	rdx, rax
	lea	rcx, [r14 + rdx + 1]
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	ebx, dword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x30], r14
	je	.label_302
	cmp	rcx, rax
	jbe	.label_241
	mov	rdi, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsi, rcx
	mov	r14, rdx
	call	xrealloc
	jmp	.label_248
.label_302:
	cmp	rcx, 0x1000
	mov	eax, 0x1000
	cmovbe	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	rdi, rcx
	mov	r14, rdx
	call	xmalloc
.label_248:
	mov	rdx, r14
	mov	r14, rax
	jmp	.label_289
.label_241:
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x10]
.label_289:
	mov	rdi, qword ptr [rsp + 0x30]
	add	rdi, r14
	inc	rdx
	mov	rsi, r13
	call	memmove
	mov	rdi, r14
	mov	r13, qword ptr [rsp + 0x58]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x30]
	call	memcpy
	mov	rdi, r13
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 1]
	cmp	byte ptr [rdi], 0x2f
	jne	.label_242
	mov	byte ptr [rcx], 0x2f
	mov	rbp, rax
	jmp	.label_279
.label_242:
	cmp	rbp, rax
	jbe	.label_279
	lea	rax, [r12 + r15 - 1]
.label_273:
	mov	rbp, rax
	cmp	rbp, rcx
	jbe	.label_279
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	jne	.label_273
.label_279:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	mov	r15, r14
	mov	qword ptr [rsp + 0x30], r14
	mov	r8, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x18]
.label_292:
	mov	al, byte ptr [r14]
	test	al, al
	mov	qword ptr [rsp + 0x18], rcx
	jne	.label_298
	jmp	.label_290
.label_256:
	mov	rbp, r12
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_290
.label_281:
	xor	eax, eax
	mov	qword ptr [rsp + 0x38], rax
.label_290:
	lea	rax, [rdi + 1]
	cmp	rbp, rax
	jbe	.label_305
	lea	rax, [rbp - 1]
	cmp	byte ptr [rbp - 1], 0x2f
	cmove	rbp, rax
.label_305:
	mov	byte ptr [rbp], 0
	lea	rax, [rbp + 1]
	cmp	r8, rax
	je	.label_244
	mov	esi, 1
	sub	rsi, rdi
	add	rsi, rbp
	call	xrealloc
	mov	rbp, rax
	jmp	.label_250
.label_244:
	mov	rbp, rdi
.label_250:
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_255
	call	hash_free
	jmp	.label_255
.label_274:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_290
.label_240:
	mov	ebx, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 8]
	jmp	.label_260
.label_272:
	cmp	al, 0xd
	jne	.label_255
	jmp	.label_260
.label_267:
	mov	eax, ebx
.label_286:
	mov	ebx, eax
.label_260:
	mov	ebp, ebx
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rdi, rbx
	call	free
	mov	rdi, qword ptr [rsp + 0x38]
	test	rdi, rdi
	je	.label_277
	call	hash_free
.label_277:
	call	__errno_location
	mov	dword ptr [rax], ebp
	jmp	.label_270
.label_278:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043a0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

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
	je	.label_311
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_311
	mov	rdi, qword ptr [rip + stdin]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_311:
	mov	rdi, qword ptr [rip + stdin]
	call	close_stream
	test	bpl, bpl
	jne	.label_310
	test	eax, eax
	jne	.label_310
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_310:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_315
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_312
.label_315:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_314
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_312:
	call	close_stdout
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404480
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name_0],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404490
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_320
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_317
	cmp	dword ptr [rbp], 0x20
	jne	.label_317
.label_320:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_319
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name_0]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_318
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_319:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_318:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_314
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404560

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_321
	pop	rcx
	ret	
.label_321:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580
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
.label_323:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_322
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_323
.label_322:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045c0

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
.label_327:
	mov	rbx, rax
	lea	r12, [rbx - 1]
	cmp	r15, r12
	jae	.label_324
	lea	rax, [rbx - 1]
	cmp	byte ptr [r14 + rbx - 2], 0x2f
	je	.label_327
.label_324:
	xor	edi, edi
	cmp	rbx, 1
	sete	dil
	add	rdi, rbx
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_326
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	memcpy
	cmp	rbx, 1
	jne	.label_325
	mov	byte ptr [r15], 0x2e
	mov	r12d, 1
.label_325:
	mov	byte ptr [r15 + r12], 0
	mov	rax, r15
.label_326:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404660

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_328:
	movzx	edx, byte ptr [rdi + 1]
	inc	rdi
	cmp	dl, 0x2f
	je	.label_328
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_332
	nop	word ptr cs:[rax + rax]
.label_331:
	movzx	edx, byte ptr [rax + 1]
	inc	rax
	mov	sil, cl
.label_332:
	mov	cl, 1
	cmp	dl, 0x2f
	je	.label_331
	test	dl, dl
	je	.label_330
	mov	ecx, esi
	and	cl, 1
	je	.label_329
	xor	esi, esi
.label_329:
	test	cl, cl
	cmovne	rdi, rax
	mov	ecx, esi
	jmp	.label_331
.label_330:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_334:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_333
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_334
.label_333:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	rbx
	mov	rbx, rdi
	call	last_component
	cmp	byte ptr [rax], 0
	je	.label_335
	mov	rbx, rax
.label_335:
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
	.align	32
	#Procedure 0x404720

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
	je	.label_336
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
	je	.label_337
	cmp	rax, rbx
	je	.label_336
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_336:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_337:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047a0

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_338
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
.label_338:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_339
	pop	rcx
	ret	
.label_339:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404800

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
	je	.label_343
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_340
	cmp	byte ptr [r15], 0x2f
	je	.label_340
	mov	r12b, 0x2f
	jmp	.label_341
.label_343:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_341
.label_340:
	xor	r12d, r12d
.label_341:
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
	je	.label_344
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_342
	mov	qword ptr [rax], rbp
.label_342:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_344:
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
	.align	32
	#Procedure 0x4048e0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404900
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_348
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_346
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_347:
	cmp	qword ptr [rcx], 0
	je	.label_352
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_345:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_345
	cmp	rdi, rax
	cmova	rax, rdi
.label_352:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_351
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_349:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_349
	cmp	rdi, rax
	cmova	rax, rdi
.label_351:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_347
.label_346:
	test	r8, r8
	je	.label_348
	cmp	qword ptr [rcx], 0
	je	.label_348
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_350:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_350
	cmp	rdx, rax
	cmova	rax, rdx
.label_348:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049d0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_358
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_360
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_355:
	cmp	qword ptr [rax], 0
	je	.label_356
	mov	rdx, rax
	nop	dword ptr [rax]
.label_359:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_359
	inc	r10
.label_356:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_361
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_353:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_353
	inc	r10
.label_361:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_355
	jmp	.label_357
.label_360:
	xor	r10d, r10d
.label_357:
	test	r8, r8
	je	.label_358
	cmp	qword ptr [rax], 0
	je	.label_358
	nop	dword ptr [rax]
.label_362:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_362
	inc	r10
.label_358:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_363
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_354
.label_363:
	xor	eax, eax
.label_354:
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a90
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
	jae	.label_370
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_372
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_373:
	cmp	qword ptr [rax], 0
	je	.label_364
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_367:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_367
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_364:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_366
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_369:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_369
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_366:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_373
.label_372:
	test	r8, r8
	je	.label_370
	cmp	qword ptr [rax], 0
	je	.label_370
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_365:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_365
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_370:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_371
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_368
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_375]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_376]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_377]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_378
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_374
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
	.align	32
	#Procedure 0x404c00

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
	jae	.label_383
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_381
	add	rbx, rax
	je	.label_381
	cmp	rsi, r12
	je	.label_382
	xor	r15d, r15d
	nop	
.label_379:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_380
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_381
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_379
.label_382:
	mov	r15, r12
	jmp	.label_381
.label_380:
	mov	r15, qword ptr [rbx]
.label_381:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_383:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c80
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_384
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
.label_386:
	add	rcx, 0x10
.label_387:
	cmp	rcx, rdx
	jae	.label_385
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_386
.label_384:
	ret	
.label_385:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cc0
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
	jae	.label_391
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_392:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_390
	test	rdx, rdx
	jne	.label_392
	jmp	.label_388
.label_390:
	test	rdx, rdx
	je	.label_388
	mov	rax, qword ptr [rdx]
	jmp	.label_389
.label_388:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_393:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_389
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_393
.label_389:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_391:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d50
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_394
	xor	eax, eax
.label_396:
	cmp	qword ptr [r9], 0
	je	.label_395
	test	r9, r9
	je	.label_395
	mov	r8, r9
	nop	
.label_397:
	cmp	rax, rdx
	jae	.label_394
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_397
	mov	r8, qword ptr [rdi + 8]
.label_395:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_396
.label_394:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404da0
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
	jae	.label_398
	xor	ebx, ebx
.label_402:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_400
	test	r13, r13
	je	.label_400
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_398
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_399:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_401
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_399
	jmp	.label_398
	nop	dword ptr [rax]
.label_401:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_400:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_402
.label_398:
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
	.align	32
	#Procedure 0x404e40
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_403
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_404:
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
	jne	.label_404
.label_403:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e80
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_405]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0

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
	je	.label_411
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_416
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_420]
	jbe	.label_409
	movss	xmm1, dword ptr [rip + label_408]
	ucomiss	xmm1, xmm0
	jbe	.label_409
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_414]
	jbe	.label_409
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_409
	addss	xmm1, dword ptr [rip + label_420]
	ucomiss	xmm0, xmm1
	jbe	.label_409
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_410]
	ucomiss	xmm2, xmm0
	jb	.label_409
	ucomiss	xmm0, xmm1
	jbe	.label_409
.label_416:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_418
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_419
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_406
.label_419:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_406:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_412]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_413]
	jae	.label_409
.label_418:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_415
	nop	
.label_421:
	add	rbx, 2
.label_415:
	cmp	rbx, -1
	je	.label_409
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_407
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_417:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_407
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_417
.label_407:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_421
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_409
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_409
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_409
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
	jmp	.label_411
.label_409:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_411:
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
	#Procedure 0x4050c0

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
	.align	32
	#Procedure 0x4050d0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_422
	nop	word ptr cs:[rax + rax]
.label_425:
	add	r14, 0x10
.label_422:
	cmp	r14, rax
	jae	.label_424
	cmp	qword ptr [r14], 0
	je	.label_425
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_426
	nop	word ptr cs:[rax + rax]
.label_428:
	test	cl, 1
	je	.label_427
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_427:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_428
.label_426:
	test	cl, cl
	je	.label_423
	mov	rdi, qword ptr [r14]
	call	rax
.label_423:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_425
.label_424:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_434
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_434
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_436
	nop	
.label_429:
	add	r15, 0x10
.label_436:
	cmp	r15, rax
	jae	.label_434
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_429
	test	r15, r15
	je	.label_429
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_430
.label_433:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_430:
	test	rbx, rbx
	jne	.label_433
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_429
.label_434:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_435
	nop	
.label_431:
	add	r15, 0x10
.label_435:
	cmp	r15, rax
	jae	.label_438
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_431
	nop	word ptr cs:[rax + rax]
.label_432:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_432
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_431
.label_438:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_437
.label_439:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_439
.label_437:
	mov	rdi, qword ptr [r14]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405260

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
	jne	.label_451
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_456
	cvtsi2ss	xmm0, rsi
	jmp	.label_442
.label_456:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_442:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_412]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_413]
	jae	.label_444
.label_451:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_447
	nop	dword ptr [rax + rax]
.label_458:
	add	rbx, 2
.label_447:
	cmp	rbx, -1
	je	.label_444
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_440
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_454:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_440
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_454
.label_440:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_458
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_444
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_448
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_444
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
	je	.label_445
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_448
.label_445:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_457
	nop	
.label_449:
	add	r12, 0x10
.label_457:
	cmp	r12, r15
	jae	.label_446
	cmp	qword ptr [r12], 0
	je	.label_449
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_452
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_450:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_443
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_455
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_453
	nop	word ptr [rax + rax]
.label_455:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_453:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_450
.label_452:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_449
.label_446:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_441
	mov	rdi, qword ptr [rsp]
	call	free
.label_444:
	xor	ebp, ebp
.label_448:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_443:
	call	abort
.label_441:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054f0

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
	jae	.label_476
	test	dl, dl
	je	.label_466
	nop	dword ptr [rax]
.label_477:
	cmp	qword ptr [r13], 0
	je	.label_470
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_474
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_469:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_463
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_468
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_472
	nop	word ptr [rax + rax]
.label_468:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_472:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_469
	mov	rax, qword ptr [r15 + 8]
.label_474:
	mov	qword ptr [r13 + 8], 0
.label_470:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_477
	jmp	.label_476
	nop	word ptr cs:[rax + rax]
.label_466:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_465
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_475
	nop	word ptr [rax + rax]
.label_467:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_463
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_462
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_460
	nop	word ptr [rax + rax]
.label_462:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_460:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_467
	mov	r12, qword ptr [r13]
.label_475:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_473
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_478
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_461
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_464
	nop	dword ptr [rax + rax]
.label_478:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_459
.label_461:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_479
.label_464:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_459:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_465:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_466
.label_476:
	mov	al, 1
.label_471:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_479:
	xor	eax, eax
	jmp	.label_471
.label_463:
	call	abort
.label_473:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405710

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
	je	.label_488
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_488
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_486
	cmp	rsi, r14
	je	.label_500
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_503
	mov	rax, qword ptr [r12]
.label_499:
	test	rax, rax
	jne	.label_505
	jmp	.label_486
.label_500:
	mov	rax, r14
.label_505:
	xor	ebp, ebp
	test	r15, r15
	je	.label_483
	mov	qword ptr [r15], rax
	jmp	.label_483
.label_503:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_486
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_495:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_490
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_492
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_495
.label_486:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_497
	cvtsi2ss	xmm1, rax
	jmp	.label_502
.label_497:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_502:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_508
	cvtsi2ss	xmm0, rcx
	jmp	.label_485
.label_508:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_485:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_482
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_491
	ucomiss	xmm2, dword ptr [rip + label_420]
	jbe	.label_493
	movss	xmm3, dword ptr [rip + label_408]
	ucomiss	xmm3, xmm2
	jbe	.label_493
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_414]
	jbe	.label_493
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_493
	addss	xmm3, dword ptr [rip + label_420]
	ucomiss	xmm2, xmm3
	jbe	.label_493
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_410]
	ucomiss	xmm5, xmm4
	jb	.label_493
	ucomiss	xmm4, xmm3
	ja	.label_484
.label_493:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_489]
	jmp	.label_484
.label_491:
	mov	eax, OFFSET FLAT:default_tuning
.label_484:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_482
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_494
	mulss	xmm0, xmm2
.label_494:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_413]
	jae	.label_483
	movss	xmm1, dword ptr [rip + label_412]
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
	je	.label_483
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_488
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_482
	cmp	rsi, r14
	mov	rax, r14
	je	.label_487
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_498
	mov	rax, qword ptr [r12]
.label_487:
	test	rax, rax
	jne	.label_501
.label_482:
	cmp	qword ptr [r12], 0
	je	.label_507
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_504
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_509
.label_507:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_480]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_481
.label_504:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_483
.label_509:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_481:
	mov	ebp, 1
.label_483:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_490:
	mov	rax, r14
	jmp	.label_499
.label_492:
	mov	rax, qword ptr [rbp]
	jmp	.label_499
.label_498:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_482
	lea	rbp, [rbx + rbp + 8]
.label_510:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_506
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_496
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_510
	jmp	.label_482
.label_506:
	mov	rax, r14
	jmp	.label_487
.label_496:
	mov	rax, qword ptr [rbp]
	jmp	.label_487
.label_488:
	call	abort
.label_501:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a50

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
	je	.label_511
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_511:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405a80
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
	jae	.label_517
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_512
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_523
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_526
	mov	r14, qword ptr [r13]
.label_523:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_529
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_524
.label_526:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_512
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_521:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_518
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_516
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_521
	jmp	.label_512
.label_529:
	mov	qword ptr [r13], 0
	jmp	.label_524
.label_518:
	mov	rcx, rax
	jmp	.label_528
.label_516:
	mov	r14, qword ptr [rcx]
.label_528:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_524:
	xor	r12d, r12d
	test	r14, r14
	je	.label_512
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_514
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_531
	cvtsi2ss	xmm1, rax
	jmp	.label_520
.label_531:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_520:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_522
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_527
.label_522:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_527:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_514
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_532
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_420]
	jbe	.label_515
	movss	xmm4, dword ptr [rip + label_408]
	ucomiss	xmm4, xmm3
	jbe	.label_515
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_515
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_414]
	jbe	.label_515
	movss	xmm4, dword ptr [rip + label_420]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_515
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_410]
	ucomiss	xmm5, xmm3
	jb	.label_515
	ucomiss	xmm3, xmm4
	ja	.label_525
.label_515:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_525
.label_532:
	mov	eax, OFFSET FLAT:default_tuning
.label_525:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_514
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_513
	mulss	xmm0, dword ptr [rax + 8]
.label_513:
	movss	xmm1, dword ptr [rip + label_412]
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
	jne	.label_514
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_519
	nop	word ptr cs:[rax + rax]
.label_530:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_530
.label_519:
	mov	qword ptr [r15 + 0x48], 0
.label_514:
	mov	r12, r14
.label_512:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_517:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d20

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
	.align	32
	#Procedure 0x405d50
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
	.align	32
	#Procedure 0x405d60

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_533
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_534
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_533:
	xor	eax, eax
	ret	
.label_534:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405d90

	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_535
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_536
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_535:
	xor	eax, eax
	ret	
.label_536:
	xor	eax, eax
	ret	
	.section	.text
	.align	32
	#Procedure 0x405dc0

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
	.align	32
	#Procedure 0x405de0

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_537
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_537:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_538
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_540
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_539
.label_540:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_539:
	mov	ecx, dword ptr [rax]
.label_538:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ea0

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
	js	.label_542
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_541
	mov	dword ptr [r14], ebp
	jmp	.label_542
.label_541:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_542:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405ef0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_546
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_544
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_543
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_544
	mov	esi, OFFSET FLAT:label_548
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_545
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_545:
	mov	rbx, r14
.label_544:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_546:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_547
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fa0
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
	#Procedure 0x405fe0
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
	#Procedure 0x405ff0
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
	#Procedure 0x406000
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
	#Procedure 0x406040
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
	#Procedure 0x406060
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_549
	test	rdx, rdx
	je	.label_549
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_549:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406090
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
	#Procedure 0x406110

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
	jmp	.label_553
	nop	
.label_551:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_557
	or	al, dl
	jne	.label_557
	test	dil, 1
	jne	.label_676
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_557
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_553
	jmp	.label_557
.label_978:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_559
	test	rbp, rbp
	je	.label_563
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_563:
	mov	r14d, 1
	jmp	.label_567
.label_979:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_568
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_569
.label_559:
	xor	r14d, r14d
.label_567:
	mov	eax, OFFSET FLAT:label_568
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_582
	nop	
.label_553:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_591
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_668]
.label_980:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_602
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_608
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_981:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_616
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_616
	xor	r14d, r14d
	nop	
.label_629:
	cmp	r14, rbp
	jae	.label_604
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_604:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_629
.label_616:
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
	jmp	.label_569
.label_973:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_569
.label_976:
	mov	al, 1
.label_974:
	mov	r12b, 1
.label_977:
	test	r12b, 1
	mov	cl, 1
	je	.label_651
	mov	ecx, eax
.label_651:
	mov	al, cl
.label_975:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_652
	test	rbp, rbp
	je	.label_658
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_658:
	mov	r14d, 1
	jmp	.label_660
.label_652:
	xor	r14d, r14d
.label_660:
	mov	ecx, OFFSET FLAT:label_608
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_582:
	mov	sil, r12b
.label_569:
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
	jmp	.label_666
	nop	word ptr cs:[rax + rax]
.label_620:
	inc	r12
.label_666:
	cmp	r11, -1
	je	.label_576
	cmp	r12, r11
	jne	.label_579
	jmp	.label_581
	nop	word ptr cs:[rax + rax]
.label_576:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_586
.label_579:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_592
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_595
	cmp	r11, -1
	jne	.label_595
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_595:
	cmp	rbx, r11
	jbe	.label_607
.label_592:
	xor	esi, esi
.label_631:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_609
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_612]
.label_1101:
	test	r12, r12
	jne	.label_562
	jmp	.label_619
	nop	word ptr cs:[rax + rax]
.label_607:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_628
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_631
	jmp	.label_558
.label_628:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_631
.label_1105:
	xor	eax, eax
	cmp	r11, -1
	je	.label_644
	test	r12, r12
	jne	.label_649
	cmp	r11, 1
	je	.label_619
	xor	r13d, r13d
	jmp	.label_556
.label_1094:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_654
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_558
	cmp	r8d, 2
	jne	.label_662
	mov	eax, r9d
	and	al, 1
	jne	.label_662
	cmp	r14, rbp
	jae	.label_663
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_663:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_618
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_618:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_670
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_670:
	add	r14, 3
	mov	r9b, 1
.label_662:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_675
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_675:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_550
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_550
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_550
	cmp	r14, rbp
	jae	.label_617
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_617:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_650
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_650:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_556
.label_1095:
	mov	bl, 0x62
	jmp	.label_577
.label_1096:
	mov	cl, 0x74
	jmp	.label_570
.label_1097:
	mov	bl, 0x76
	jmp	.label_577
.label_1098:
	mov	bl, 0x66
	jmp	.label_577
.label_1099:
	mov	cl, 0x72
	jmp	.label_570
.label_1102:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_589
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_574
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
	jae	.label_598
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_598:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_610
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_610:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_615
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_615:
	add	r14, 3
	xor	r9d, r9d
.label_589:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_556
.label_1103:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_622
	cmp	r8d, 2
	jne	.label_562
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_562
	jmp	.label_574
.label_1104:
	cmp	r8d, 2
	jne	.label_634
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_574
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_640
.label_609:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_642
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_636
.label_644:
	test	r12, r12
	jne	.label_661
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_661
.label_619:
	mov	dl, 1
.label_1100:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_574
	xor	eax, eax
	mov	r13b, dl
.label_556:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_667
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_671
	jmp	.label_672
	nop	word ptr cs:[rax + rax]
.label_667:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_672
.label_671:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_564
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_554
	nop	dword ptr [rax]
.label_672:
	test	sil, sil
.label_554:
	mov	ebx, r15d
	je	.label_572
	jmp	.label_561
.label_564:
	mov	ebx, r15d
	jmp	.label_561
.label_654:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_620
	xor	r15d, r15d
	jmp	.label_562
.label_634:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_570
	xor	eax, eax
	mov	r15b, 0x5c
.label_640:
	xor	r13d, r13d
	jmp	.label_572
.label_570:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_574
.label_577:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_556
	nop	
.label_561:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_558
	cmp	r8d, 2
	jne	.label_590
	mov	eax, r9d
	and	al, 1
	jne	.label_590
	cmp	r14, rbp
	jae	.label_594
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_594:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_599
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_599:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_601
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_601:
	add	r14, 3
	mov	r9b, 1
.label_590:
	cmp	r14, rbp
	jae	.label_614
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_614:
	inc	r14
	jmp	.label_638
.label_642:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_613
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_613:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_566
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_633:
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
	je	.label_635
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_647
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_659
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_656
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_578:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_669
	bt	rsi, rdx
	jb	.label_574
.label_669:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_578
.label_656:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_673
	xor	r13d, r13d
.label_673:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_633
	jmp	.label_555
.label_550:
	xor	r13d, r13d
	jmp	.label_556
.label_661:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_556
.label_622:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_562
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_562
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_562
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_573
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_583
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_585
	cmp	r14, rbp
	jae	.label_587
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_587:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_593
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_593:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_674
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_674:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_621
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_621:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_583:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_556
.label_562:
	xor	eax, eax
.label_649:
	xor	r13d, r13d
	jmp	.label_556
.label_566:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_643:
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
	je	.label_623
	cmp	rbp, -1
	je	.label_632
	cmp	rbp, -2
	je	.label_635
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_639
	xor	r13d, r13d
.label_639:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_643
	jmp	.label_555
.label_635:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_606
	lea	rax, [r10 + r12]
.label_641:
	cmp	byte ptr [rax + rsi], 0
	je	.label_606
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_641
.label_606:
	mov	qword ptr [rsp + 0x40], rsi
.label_647:
	xor	r13d, r13d
	jmp	.label_659
.label_632:
	xor	r13d, r13d
.label_623:
	mov	r10, qword ptr [rsp + 0x28]
.label_659:
	mov	r12, qword ptr [rsp + 0x40]
.label_555:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_636:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_665
	test	al, al
	je	.label_665
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_556
.label_665:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_552
	nop	word ptr [rax + rax]
.label_648:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_552:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_560
	test	sil, 1
	je	.label_571
	cmp	r14, rbp
	jae	.label_565
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_565:
	inc	r14
	xor	esi, esi
	jmp	.label_571
	nop	word ptr cs:[rax + rax]
.label_560:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_558
	cmp	r8d, 2
	jne	.label_580
	mov	eax, r9d
	and	al, 1
	jne	.label_580
	cmp	r14, rbp
	jae	.label_584
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_584:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_627
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_627:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_597
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_597:
	add	r14, 3
	mov	r9b, 1
.label_580:
	cmp	r14, rbp
	jae	.label_600
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_600:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_588
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_588:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_611
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_611:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_571:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_572
	test	r9b, 1
	je	.label_624
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_646
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_626
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_626:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_645
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_645:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_624
	nop	word ptr cs:[rax + rax]
.label_646:
	mov	rbx, rcx
.label_624:
	cmp	r14, rbp
	jae	.label_648
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_648
	nop	
.label_572:
	test	r9b, 1
	je	.label_653
	and	al, 1
	jne	.label_653
	cmp	r14, rbp
	jae	.label_657
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_657:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_637
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_637:
	add	r14, 2
	xor	r9d, r9d
.label_653:
	mov	ebx, r15d
.label_638:
	cmp	r14, rbp
	jae	.label_664
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_664:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_620
.label_573:
	xor	r13d, r13d
	jmp	.label_556
	nop	word ptr cs:[rax + rax]
.label_581:
	mov	rcx, r12
.label_586:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_551
	or	al, dl
	jne	.label_551
	mov	r11, rcx
	jmp	.label_558
.label_574:
	mov	eax, 2
.label_630:
	mov	qword ptr [rsp + 0x38], rax
.label_558:
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
.label_575:
	mov	r14, rax
.label_625:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_557:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_655
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_596
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_596
	inc	rdx
	nop	dword ptr [rax + rax]
.label_605:
	cmp	r14, rbp
	jae	.label_603
	mov	byte ptr [rcx + r14], al
.label_603:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_605
	jmp	.label_596
.label_676:
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
	jmp	.label_575
.label_655:
	mov	rcx, qword ptr [rsp + 0x10]
.label_596:
	cmp	r14, rbp
	jae	.label_625
	mov	byte ptr [rcx + r14], 0
	jmp	.label_625
.label_585:
	mov	eax, 5
	jmp	.label_630
.label_591:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x406f40
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
	#Procedure 0x407010
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
	je	.label_677
	mov	qword ptr [rax], rbx
.label_677:
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
	#Procedure 0x407100
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_678
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_681:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_681
.label_678:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_682
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_680], OFFSET FLAT:slot0
.label_682:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_679
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_679:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4071a0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4071b0

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
	js	.label_686
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_689
	cmp	r12d, 0x7fffffff
	je	.label_684
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
	jne	.label_687
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_687:
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
.label_689:
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
	jbe	.label_685
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_688
.label_685:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_683
	mov	rdi, r14
	call	free
.label_683:
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
.label_688:
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
.label_686:
	call	abort
.label_684:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407370
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407380
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
	#Procedure 0x4073a0
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
	#Procedure 0x4073c0

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
	je	.label_690
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
.label_690:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407430
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
	je	.label_691
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
.label_691:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074a0

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
	je	.label_692
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
.label_692:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407510
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
	je	.label_693
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
.label_693:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407580
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
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
	#Procedure 0x4075f0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
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
	#Procedure 0x407660

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
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
	#Procedure 0x4076c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
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
	#Procedure 0x407720

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
	je	.label_697
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
.label_697:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4077c0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_698
	test	rdx, rdx
	je	.label_698
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_698:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x407830
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_699
	test	rdx, rdx
	je	.label_699
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_699:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078a0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_700
	test	rsi, rsi
	je	.label_700
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_700:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407910
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_694]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_695]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_696]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_701
	test	rsi, rsi
	je	.label_701
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
.label_701:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407980
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407990
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
	#Procedure 0x4079b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4079d0

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
	#Procedure 0x4079f0

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
	jne	.label_703
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_708
	cmp	ecx, 0x55
	jne	.label_702
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_702
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_702
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_702
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_702
	cmp	byte ptr [rax + 5], 0
	jne	.label_702
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_705
	mov	eax, OFFSET FLAT:label_706
	jmp	.label_707
.label_708:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_702
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_702
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_702
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_702
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_702
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_702
	cmp	byte ptr [rax + 7], 0
	je	.label_704
.label_702:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_568
	mov	eax, OFFSET FLAT:label_608
.label_707:
	cmove	rax, rcx
.label_703:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_704:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_709
	mov	eax, OFFSET FLAT:label_710
	jmp	.label_707
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ac0

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
	jns	.label_711
	mov	eax, dword ptr [rcx]
	cmp	eax, 0x16
	je	.label_714
	cmp	eax, 0x5f
	je	.label_714
	cmp	eax, 0x26
	jne	.label_711
.label_714:
	test	r12d, r12d
	je	.label_718
	cmp	r12d, 1
	jne	.label_719
	mov	rbx, rcx
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	mov	rcx, rbx
	test	eax, eax
	je	.label_715
	mov	eax, dword ptr [rcx]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_717
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_711
.label_715:
	mov	dword ptr [rcx], 0x11
	mov	ebx, 0xffffffff
	jmp	.label_711
.label_718:
	xor	r12d, r12d
.label_717:
	mov	qword ptr [rsp], rcx
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r13
	call	strlen
	test	rbx, rbx
	je	.label_712
	test	rax, rax
	je	.label_712
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_720
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_712
.label_720:
	lea	rcx, [rsp + 8]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r15d
	mov	rdx, rbp
	call	__fxstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_711
	test	r12b, r12b
	je	.label_721
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	je	.label_712
	mov	dword ptr [rax], 2
	jmp	.label_711
.label_719:
	mov	dword ptr [rcx], 0x5f
	mov	ebx, 0xffffffff
	jmp	.label_711
.label_721:
	lea	rcx, [rsp + 0x98]
	mov	edi, 1
	mov	r8d, 0x100
	mov	esi, r14d
	mov	rdx, r13
	call	__fxstatat
	test	eax, eax
	je	.label_722
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_711
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_712
	jmp	.label_711
.label_722:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_716
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	mov	rax, qword ptr [rsp]
	jne	.label_713
.label_712:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r13
	call	renameat
	mov	ebx, eax
.label_711:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_716:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0x14
	jmp	.label_711
.label_713:
	mov	dword ptr [rax], 0x15
	jmp	.label_711
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cc0

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
	.align	32
	#Procedure 0x407ce0

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
	jne	.label_728
	mov	qword ptr [rsp + 0x10], r15
	mov	dword ptr [rsp + 8], r12d
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_723
.label_728:
	xor	ebp, ebp
.label_726:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_723:
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
	je	.label_724
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_724:
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
	je	.label_725
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_725:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_729
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_727
.label_729:
	xor	ebp, ebp
.label_727:
	mov	rdi, rbx
	call	free
	jmp	.label_726
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e30

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
	jb	.label_738
	mov	rax, r14
	sub	rax, rsi
	sub	rax, rbx
	add	rax, r15
	mov	rcx, -1
	nop	dword ptr [rax]
.label_734:
	cmp	byte ptr [rax + rcx + 1], 0x58
	lea	rcx, [rcx + 1]
	je	.label_734
	cmp	rcx, rsi
	jae	.label_737
.label_738:
	mov	dword ptr [r13], 0x16
.label_730:
	mov	eax, 0xffffffff
.label_731:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_737:
	xor	edi, edi
	mov	qword ptr [rsp + 8], rsi
	call	randint_all_new
	mov	rbp, rax
	mov	eax, 0xffffffff
	test	rbp, rbp
	je	.label_731
	mov	dword ptr [rsp + 0x1c], r12d
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x20], r15
	je	.label_741
	neg	rax
	sub	r14, rbx
	add	r14, r15
	xor	r12d, r12d
	mov	qword ptr [rsp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_732:
	mov	rbx, rax
	nop	word ptr cs:[rax + rax]
.label_740:
	mov	esi, 0x3d
	mov	rdi, rbp
	call	randint_genmax
	movzx	eax, byte ptr [rax + letters]
	mov	byte ptr [r14 + rbx], al
	inc	rbx
	jne	.label_740
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_733
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_735
	inc	r12d
	cmp	r12d, 0x3a2f8
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rsp + 8]
	jb	.label_732
	jmp	.label_739
.label_741:
	xor	ebx, ebx
.label_736:
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r15d, eax
	test	r15d, r15d
	jns	.label_733
	mov	r13d, dword ptr [r13]
	cmp	r13d, 0x11
	mov	r15d, 0xffffffff
	jne	.label_735
	inc	ebx
	cmp	ebx, 0x3a2f7
	mov	r13, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp + 0x20]
	jbe	.label_736
.label_739:
	mov	rdi, rbp
	call	randint_all_free
	mov	dword ptr [r13], 0x11
	jmp	.label_730
.label_733:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	dword ptr [r13], eax
	mov	r13d, eax
.label_735:
	mov	rdi, rbp
	call	randint_all_free
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], r13d
	mov	eax, r15d
	jmp	.label_731
	.section	.text
	.align	32
	#Procedure 0x407ff0
	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_742
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_746]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_742:
	mov	edi, OFFSET FLAT:label_743
	mov	esi, OFFSET FLAT:label_744
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_745
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408030

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
	.align	32
	#Procedure 0x408050

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408060

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
	je	.label_747
	cmp	dword ptr [rax], 0x4b
	jne	.label_748
.label_747:
	mov	dword ptr [rax], 0x11
.label_748:
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4080b0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_749
	movsxd	rax, ecx
	mov	rcx, qword ptr [(rax * 8) + label_746]
	lea	rdx, [rsp + 4]
	mov	r8d, 6
	call	try_tempname_len
	pop	rcx
	ret	
.label_749:
	mov	edi, OFFSET FLAT:label_743
	mov	esi, OFFSET FLAT:label_744
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_745
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x4080f0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408100

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
	ja	.label_750
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
	jmp	.label_751
.label_750:
	mov	eax, ebx
.label_751:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408150

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
	je	.label_758
	mov	edx, OFFSET FLAT:label_767
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_754
.label_758:
	mov	edx, OFFSET FLAT:label_756
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_754:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_760
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
	mov	esi, OFFSET FLAT:label_757
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_762
	jmp	qword ptr [(r12 * 8) + label_763]
.label_1013:
	add	rsp, 8
	jmp	.label_755
.label_762:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_770
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
	jmp	.label_755
.label_1014:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_761
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
.label_1015:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_752
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
.label_1016:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_768
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
.label_1017:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_765
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
	jmp	.label_755
.label_1018:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_764
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
	jmp	.label_755
.label_1019:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_766
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
	jmp	.label_755
.label_1020:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_769
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
	jmp	.label_755
.label_1022:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_753
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
	jmp	.label_755
.label_1021:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_759
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
.label_755:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_771:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_771
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_782
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_784
.label_782:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_784:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_773
	cmp	r10d, 0x29
	jae	.label_781
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_783
.label_781:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_783:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_773
	cmp	r10d, 0x29
	jae	.label_779
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_780
.label_779:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_780:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_773
	cmp	r10d, 0x29
	jae	.label_777
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_778
.label_777:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_778:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_773
	cmp	r10d, 0x29
	jae	.label_775
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_776
.label_775:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_776:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_773
	cmp	r10d, 0x29
	jae	.label_772
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_774
.label_772:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_774:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_773
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_773
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_773
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_773
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_773:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_785
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_785:
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
	#Procedure 0x408760
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_786
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_787
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_789
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_788
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4087e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_790
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_791
	test	rax, rax
	je	.label_790
.label_791:
	pop	rbx
	ret	
.label_790:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408820

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_792
	test	rax, rax
	je	.label_793
.label_792:
	pop	rbx
	ret	
.label_793:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408840
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_794
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_795
	test	rbx, rbx
	jne	.label_795
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_795:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_796
	test	rax, rax
	je	.label_794
.label_796:
	pop	rbx
	ret	
.label_794:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408890

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_797
	test	rbx, rbx
	jne	.label_797
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_797:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_799
	test	rax, rax
	je	.label_798
.label_799:
	pop	rbx
	ret	
.label_798:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4088c0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_800
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_803
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_801
.label_800:
	test	rcx, rcx
	jne	.label_806
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_806:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_802
.label_801:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_805
	test	rbx, rbx
	jne	.label_805
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_805:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_804
	test	rax, rax
	je	.label_803
.label_804:
	pop	rbx
	ret	
.label_803:
	call	xalloc_die
.label_802:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_807
	test	rax, rax
	je	.label_808
.label_807:
	pop	rbx
	ret	
.label_808:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_809
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_812
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_813
	call	free
	xor	eax, eax
	jmp	.label_810
.label_809:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_811
	mov	qword ptr [rsi], rbx
.label_813:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_810
	test	rax, rax
	je	.label_811
.label_810:
	pop	rbx
	ret	
.label_811:
	call	xalloc_die
.label_812:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089f0
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
	je	.label_815
	test	r14, r14
	je	.label_814
.label_815:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_814:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_816
	call	rpl_calloc
	test	rax, rax
	je	.label_816
	pop	rcx
	ret	
.label_816:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

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
	je	.label_817
	test	r15, r15
	je	.label_818
.label_817:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_818:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408aa0

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
	je	.label_820
	test	r15, r15
	je	.label_819
.label_820:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_819:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408af0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_821
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_194
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408b20

	.globl xgetcwd
	.type xgetcwd, @function
xgetcwd:
	push	rbx
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_823
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_822
.label_823:
	mov	rax, rbx
	pop	rbx
	ret	
.label_822:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b50

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
	jle	.label_824
	mov	rdi, qword ptr [rsp]
	cmp	byte ptr [rdi + rax - 1], 0xa
	jne	.label_826
	mov	byte ptr [rdi + rax - 1], 0
	mov	rdi, qword ptr [rsp]
.label_826:
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_825
.label_824:
	xor	ebx, ebx
.label_825:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bc0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_827
	test	rsi, rsi
	mov	ecx, 1
	je	.label_828
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_828
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_827:
	mov	ecx, 1
.label_828:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c10

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_829
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_829
	test	byte ptr [rbx + 1], 1
	je	.label_829
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_829:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c50

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_830
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_831
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_831:
	add	rax, rcx
.label_830:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c80

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
	jne	.label_832
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_832
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_833
.label_832:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_833:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_834
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_834:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408cf0

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
	je	.label_835
	cmp	r15, -2
	jb	.label_835
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_835
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_835:
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
	#Procedure 0x408d50

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
	je	.label_838
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_837:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_843
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_841
.label_843:
	cmp	r13, r12
	jb	.label_836
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_839
	add	r12, r12
	jmp	.label_840
	nop	word ptr cs:[rax + rax]
.label_839:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_844
.label_840:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_837
	jmp	.label_838
.label_836:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_838
.label_844:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_842
.label_841:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_842:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_838:
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
	#Procedure 0x408e60

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408e70

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
	je	.label_847
	test	r14, r14
	je	.label_852
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x20], r14
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_851:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_849
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_846
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	je	.label_853
	mov	rdi, rax
	imul	rdi, r13
	add	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_849
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_849
.label_853:
	mov	qword ptr [rsp + 8], rbx
	nop	word ptr [rax + rax]
.label_849:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	add	r14, r13
	test	rbp, rbp
	jne	.label_851
	jmp	.label_845
.label_847:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_845
.label_852:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_848:
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r12
	call	strncmp
	test	eax, eax
	jne	.label_850
	mov	rdi, rbp
	call	strlen
	cmp	rax, r12
	je	.label_846
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, -1
	cmove	rax, rbx
	mov	qword ptr [rsp + 8], rax
	je	.label_850
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	nop	word ptr [rax + rax]
.label_850:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + rbx*8 + 8]
	inc	rbx
	test	rbp, rbp
	jne	.label_848
.label_845:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbx, -2
	cmove	rbx, qword ptr [rsp + 8]
.label_846:
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
	.align	32
	#Procedure 0x408ff0
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
	je	.label_854
	mov	esi, OFFSET FLAT:label_855
	jmp	.label_856
.label_854:
	mov	esi, OFFSET FLAT:label_857
.label_856:
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
	#Procedure 0x409060

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
	mov	esi, OFFSET FLAT:label_858
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stderr]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [rbp]
	test	rbx, rbx
	je	.label_863
	xor	r13d, r13d
	xor	r15d, r15d
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_860:
	test	r15, r15
	je	.label_862
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_859
.label_862:
	mov	r13, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_864
	xor	eax, eax
	mov	rdi, r13
	call	__fprintf_chk
	mov	r13, r12
	jmp	.label_861
	nop	word ptr cs:[rax + rax]
.label_859:
	mov	rbp, qword ptr [rip + stderr]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_865
	xor	eax, eax
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp]
	call	__fprintf_chk
.label_861:
	mov	rbx, qword ptr [rbp + r15*8 + 8]
	inc	r15
	add	r12, r14
	test	rbx, rbx
	jne	.label_860
.label_863:
	mov	rdi, qword ptr [rip + stderr]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_866
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
.label_866:
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
	#Procedure 0x409190

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
	jns	.label_867
	cmp	rax, -1
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, r14
	je	.label_868
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_855
	jmp	.label_869
.label_868:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_857
.label_869:
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
.label_867:
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
	#Procedure 0x409260
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
	je	.label_870
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_871:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_870
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_871
.label_870:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092d0

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
	jne	.label_873
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_872
	test	cl, cl
	jne	.label_872
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_872
.label_873:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_872
	call	__errno_location
	mov	dword ptr [rax], 0
.label_872:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409330

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_875
	cmp	byte ptr [rax], 0x43
	jne	.label_877
	cmp	byte ptr [rax + 1], 0
	je	.label_874
.label_877:
	mov	esi, OFFSET FLAT:label_876
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_875
.label_874:
	xor	ebx, ebx
.label_875:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409370

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_878
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_879:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_879
.label_878:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4093a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_78
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_880
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093d0
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
	.align	32
	#Procedure 0x4093f0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rbx
	call	randread_new
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_881
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
.label_881:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409420
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409430

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
.label_884:
	cmp	r14, r13
	jae	.label_883
	mov	rax, r14
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_882:
	shl	rax, 8
	or	rax, 0xff
	inc	rdx
	cmp	rax, r13
	jb	.label_882
	mov	rdi, r15
	mov	rsi, r12
	call	randread
	mov	rax, r12
.label_887:
	mov	rcx, rbx
	shl	rcx, 8
	movzx	ebx, byte ptr [rax]
	or	rbx, rcx
	shl	r14, 8
	or	r14, 0xff
	inc	rax
	cmp	r14, r13
	jb	.label_887
.label_883:
	mov	rcx, rbx
	mov	rsi, r14
	sub	rsi, r13
	je	.label_885
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
	ja	.label_884
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
	jmp	.label_886
.label_885:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_886:
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
	.align	32
	#Procedure 0x409530
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
	.align	32
	#Procedure 0x409550

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
	.align	32
	#Procedure 0x4095a0

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
	je	.label_892
	xor	ebx, ebx
	test	r14, r14
	je	.label_894
	mov	esi, OFFSET FLAT:label_895
	mov	rdi, r14
	call	fopen_safer
	mov	rbx, rax
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_890
.label_894:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], rbx
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], r14
	test	rbx, rbx
	je	.label_893
	mov	rsi, r15
	add	rsi, 0x18
	cmp	r12, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r12
	xor	edx, edx
	mov	rdi, rbx
	call	setvbuf
	jmp	.label_890
.label_892:
	mov	edi, 0x1038
	call	xmalloc
	mov	r15, rax
	mov	qword ptr [r15], 0
	mov	qword ptr [r15 + 8], OFFSET FLAT:randread_error
	mov	qword ptr [r15 + 0x10], 0
	jmp	.label_890
.label_893:
	mov	qword ptr [r15 + 0x18], 0
	mov	r14, r15
	add	r14, 0x20
	xor	r13d, r13d
	mov	edi, OFFSET FLAT:label_888
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebx, eax
	test	ebx, ebx
	js	.label_891
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
	js	.label_891
	cmp	r12, 0x7ff
	mov	r13, r12
	ja	.label_889
.label_891:
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
	ja	.label_889
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
	ja	.label_889
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
	ja	.label_889
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
	ja	.label_889
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
.label_889:
	mov	rdi, r14
	call	isaac_seed
.label_890:
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
	.align	32
	#Procedure 0x4097f0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409800
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409810

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
	je	.label_902
	mov	esi, 1
	mov	rdi, rbx
	mov	rdx, r15
	call	fread_unlocked
	mov	rbp, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_897
	nop	dword ptr [rax]
.label_896:
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
.label_897:
	sub	r15, rbp
	jne	.label_896
	jmp	.label_898
.label_902:
	mov	r12, qword ptr [r14 + 0x18]
	lea	r13, [r14 + 0x838]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_899
	lea	rbp, [r14 + 0x20]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_901:
	cmp	r15, 0x800
	jb	.label_900
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_901
	jmp	.label_903
.label_900:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_899:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_903:
	mov	qword ptr [r14 + 0x18], r12
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
	.align	32
	#Procedure 0x409930

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
	je	.label_904
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_904:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409970

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
	je	.label_905
	mov	r14d, dword ptr [rip + exit_failure]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_908
	mov	esi, OFFSET FLAT:label_906
	jmp	.label_907
.label_908:
	mov	esi, OFFSET FLAT:label_909
.label_907:
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
.label_905:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4099d0

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
.label_910:
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
	jb	.label_910
	lea	r9, [rdi + 0x800]
	lea	rsi, [rdi + r8*8 + 0x38]
	nop	word ptr cs:[rax + rax]
.label_911:
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
	jb	.label_911
	mov	qword ptr [rdi + 0x800], rdx
	mov	qword ptr [rdi + 0x808], rcx
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c50

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
.label_912:
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
	jl	.label_912
	xor	ebx, ebx
	nop	dword ptr [rax + rax]
.label_913:
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
	jl	.label_913
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
	.align	32
	#Procedure 0x409eb0

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
	#Procedure 0x409ec0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ed0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_914
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_916
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_914
.label_916:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_914
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_915
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_915:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_914:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f50

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
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
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xf0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_921
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_933
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_922
	test	esi, esi
	jne	.label_921
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_936
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_937
.label_921:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_917
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_922
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_924
.label_933:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_927
.label_922:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_928
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_929
.label_928:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_929:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_930:
	call	fcntl
.label_927:
	mov	ebp, eax
.label_918:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_924:
	cmp	eax, 6
	jne	.label_917
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_920
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_935
.label_917:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_923
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_926
.label_936:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_937:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_930
.label_920:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_935:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_934
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_919
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_919
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_918
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_925
.label_919:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_918
.label_923:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_926:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_927
.label_934:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_925:
	test	al, al
	je	.label_918
	test	ebp, ebp
	js	.label_918
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_932
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_918
.label_932:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_918
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a1f0

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
	.align	32
	#Procedure 0x40a210

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
	je	.label_939
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_941
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_942
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_938
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_939
.label_938:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_940
.label_941:
	mov	rax, rbx
	jmp	.label_939
.label_942:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_940:
	xor	eax, eax
.label_939:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
