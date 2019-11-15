	.section	.text
	.align	16
	#Procedure 0x401970

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_17:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_28
	nop	
.label_27:
	mov	edi, OFFSET FLAT:label_20
	call	strcmp
	test	eax, eax
	je	.label_25
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_27
.label_25:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_20
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
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
	je	.label_21
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_21
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_20
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_32
	mov	ecx, OFFSET FLAT:label_33
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
	#Procedure 0x401c10

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	dword ptr [rsp + 8], 0xffffffff
	mov	qword ptr [rsp + 0x28], 0
	mov	qword ptr [rsp + 0x18], 0
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_33
	call	setlocale
	mov	edi, OFFSET FLAT:label_47
	mov	esi, OFFSET FLAT:label_48
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_47
	call	textdomain
	call	initialize_exit_failure
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	xor	ebx, ebx
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_72
.label_82:
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_72:
	mov	edx, OFFSET FLAT:label_75
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r12
	call	getopt_long
	cmp	eax, 0xff
	jle	.label_78
	cmp	eax, 0x100
	je	.label_69
	cmp	eax, 0x102
	je	.label_82
	cmp	eax, 0x101
	jne	.label_86
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, r15
	call	strlen
	test	rax, rax
	je	.label_72
	cmp	byte ptr [r15 + rax - 1], 0x3a
	jne	.label_72
	mov	byte ptr [r15 + rax - 1], 0
	jmp	.label_72
.label_69:
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_72
.label_78:
	cmp	eax, -1
	jne	.label_34
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, ebp
	jge	.label_37
	mov	r13, qword ptr [r12 + rax*8]
	mov	rdi, r13
	call	is_root
	test	bl, bl
	je	.label_44
	test	al, al
	je	.label_46
.label_44:
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	jne	.label_35
	test	r15, r15
	je	.label_54
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r15
	call	parse_user_spec
.label_54:
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	jne	.label_67
	test	r14, r14
	je	.label_68
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	al, al
	je	.label_71
.label_68:
	mov	edi, dword ptr [rsp + 0xc]
	call	getpwuid
	mov	rcx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	rcx, rcx
	je	.label_67
	mov	edi, dword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	call	gid_unset
	mov	rcx, qword ptr [rsp + 0x10]
	test	al, al
	je	.label_76
	mov	eax, dword ptr [rcx + 0x14]
	mov	dword ptr [rsp + 8], eax
.label_76:
	mov	rax, qword ptr [rcx]
	mov	qword ptr [rsp + 0x10], rax
.label_67:
	test	r14, r14
	je	.label_85
.label_71:
	cmp	byte ptr [r14], 0
	je	.label_35
	lea	rsi, [rsp + 0x28]
	lea	rdx, [rsp + 0x18]
	xor	ecx, ecx
	mov	rdi, r14
	call	parse_additional_groups
.label_35:
	mov	rdi, r13
	call	chroot
	test	eax, eax
	jne	.label_96
	test	bl, bl
	jne	.label_97
	mov	edi, OFFSET FLAT:label_13
	call	chdir
	test	eax, eax
	jne	.label_36
.label_97:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	inc	rax
	cmp	eax, ebp
	jne	.label_39
	mov	edi, OFFSET FLAT:label_41
	call	getenv
	test	rax, rax
	jne	.label_45
	mov	edi, OFFSET FLAT:label_49
	call	bad_cast
.label_45:
	mov	qword ptr [r12], rax
	mov	edi, OFFSET FLAT:label_52
	call	bad_cast
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x10], 0
	jmp	.label_55
.label_39:
	lea	r12, [r12 + rax*8]
.label_55:
	test	r15, r15
	je	.label_63
	lea	rsi, [rsp + 0xc]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	xor	r8d, r8d
	mov	rdi, r15
	call	parse_user_spec
	mov	rbp, rax
	test	rbp, rbp
	je	.label_63
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	test	al, al
	je	.label_63
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	test	al, al
	jne	.label_73
.label_63:
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	test	al, al
	jne	.label_64
	test	r14, r14
	je	.label_40
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	test	al, al
	je	.label_80
.label_40:
	mov	edi, dword ptr [rsp + 0xc]
	call	getpwuid
	mov	rbp, rax
	mov	edi, dword ptr [rsp + 8]
	call	gid_unset
	test	rbp, rbp
	je	.label_88
	test	al, al
	je	.label_42
	mov	eax, dword ptr [rbp + 0x14]
	mov	dword ptr [rsp + 8], eax
.label_42:
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_64
.label_85:
	mov	edi, dword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x34], edi
	call	gid_unset
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_35
	xor	al, 1
	je	.label_35
	lea	rdx, [rsp + 0x28]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, dword ptr [rsp + 0x34]
	call	xgetgroups
	test	eax, eax
	jle	.label_35
	cdqe	
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_35
.label_80:
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_61
.label_88:
	test	al, al
	jne	.label_56
.label_64:
	mov	r15, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x20], 0
	test	r14, r14
	je	.label_58
.label_61:
	mov	bl, 1
	cmp	byte ptr [r14], 0
	je	.label_57
	xor	ecx, ecx
	cmp	qword ptr [rsp + 0x18], 0
	sete	cl
	lea	rsi, [rsp + 0x20]
	lea	rdx, [rsp + 0x18]
	mov	rdi, r14
	call	parse_additional_groups
	test	eax, eax
	je	.label_51
	mov	ebp, 0x7d
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_57
	jmp	.label_74
.label_58:
	mov	ebp, dword ptr [rsp + 8]
	mov	edi, ebp
	call	gid_unset
	xor	ebx, ebx
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_57
	xor	al, 1
	je	.label_57
	lea	rdx, [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	esi, ebp
	call	xgetgroups
	test	eax, eax
	jle	.label_84
	cdqe	
	mov	qword ptr [rsp + 0x18], rax
	xor	ebx, ebx
.label_51:
	mov	r15, qword ptr [rsp + 0x20]
.label_57:
	mov	edi, dword ptr [rsp + 0xc]
	call	uid_unset
	test	bl, bl
	jne	.label_92
	xor	al, 1
	je	.label_93
.label_92:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r15
	call	setgroups
	test	eax, eax
	jne	.label_94
.label_93:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	ebp, dword ptr [rsp + 8]
	mov	edi, ebp
	call	gid_unset
	test	al, al
	jne	.label_43
	mov	edi, ebp
	call	setgid
	test	eax, eax
	jne	.label_77
.label_43:
	mov	ebp, dword ptr [rsp + 0xc]
	mov	edi, ebp
	call	uid_unset
	test	al, al
	jne	.label_53
	mov	edi, ebp
	call	setuid
	test	eax, eax
	jne	.label_87
.label_53:
	mov	rdi, qword ptr [r12]
	mov	rsi, r12
	call	execvp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	cmp	ebx, 2
	sete	bpl
	or	ebp, 0x7e
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, qword ptr [r12]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
.label_74:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_50
	xor	ebx, ebx
	jmp	.label_57
.label_34:
	cmp	eax, 0xffffff7d
	je	.label_83
	cmp	eax, 0xffffff7e
	jne	.label_86
	xor	edi, edi
	call	usage
.label_83:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_20
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_90
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 0x7d
	call	usage
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 0x7d
	call	usage
.label_96:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_86:
	mov	edi, 0x7d
	call	usage
.label_94:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_81
	jmp	.label_60
.label_77:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_62
	jmp	.label_60
.label_87:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	jmp	.label_60
.label_36:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
.label_60:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_73:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 0x7d
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_56:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	mov	edi, 0x7d
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_50:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_66
	jmp	.label_60
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402280

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	mov	dword ptr [dword ptr [rip + exit_failure]],  0x7d
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402290

	.globl is_root
	.type is_root, @function
is_root:
	push	rbx
	call	canonicalize_file_name
	test	rax, rax
	je	.label_98
	movzx	edx, byte ptr [rax]
	mov	ecx, 0x2f
	sub	ecx, edx
	jne	.label_99
	movzx	ecx, byte ptr [rax + 1]
	neg	ecx
.label_99:
	test	ecx, ecx
	sete	bl
	jmp	.label_100
.label_98:
	xor	ebx, ebx
.label_100:
	mov	rdi, rax
	call	free
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

	.globl uid_unset
	.type uid_unset, @function
uid_unset:
	cmp	edi, -1
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022e0

	.globl gid_unset
	.type gid_unset, @function
gid_unset:
	cmp	edi, -1
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022f0

	.globl parse_additional_groups
	.type parse_additional_groups, @function
parse_additional_groups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	dword ptr [rsp + 4], ecx
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	qword ptr [rsp + 0x18], 0
	mov	qword ptr [rsp + 0x28], rdi
	call	xstrdup
	mov	esi, OFFSET FLAT:label_113
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi, rax
	call	strtok
	mov	r15, rax
	xor	r13d, r13d
	test	r15, r15
	mov	ebx, 0
	mov	dword ptr [rsp], 0
	je	.label_114
	lea	r12, [rsp + 8]
	mov	dword ptr [rsp], 0
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_104
.label_112:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_111
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_106
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r15
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	mov	dword ptr [rsp], 0xffffffff
	jmp	.label_102
	nop	dword ptr [rax + rax]
.label_104:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	mov	rdi, r15
	mov	rcx, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_103
	mov	rax, qword ptr [rsp + 8]
	shr	rax, 0x20
	jne	.label_103
	call	__ctype_b_loc
	mov	rbp, qword ptr [rax]
	dec	r15
	nop	word ptr cs:[rax + rax]
.label_101:
	movzx	r14d, byte ptr [r15 + 1]
	inc	r15
	movsx	edi, r14b
	call	to_uchar
	movzx	eax, al
	test	byte ptr [rbp + rax*2 + 1], 0x20
	jne	.label_101
	cmp	r14b, 0x2b
	je	.label_105
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	jne	.label_109
	jmp	.label_105
.label_103:
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_112
.label_109:
	mov	eax, dword ptr [rax + 0x10]
	mov	qword ptr [rsp + 8], rax
.label_105:
	cmp	r13, qword ptr [rsp + 0x18]
	jne	.label_115
	mov	edx, 4
	mov	rdi, rbx
	lea	rsi, [rsp + 0x18]
	call	x2nrealloc
	mov	rbx, rax
.label_115:
	mov	eax, dword ptr [rsp + 8]
	mov	dword ptr [rbx + r13*4], eax
	inc	r13
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	call	strtok
	mov	r15, rax
	test	r15, r15
	jne	.label_104
.label_114:
	mov	edx, dword ptr [rsp]
	test	edx, edx
	setne	al
	test	r13, r13
	setne	cl
	or	cl, al
	mov	ebp, 0xffffffff
	cmovne	ebp, edx
	jne	.label_107
	mov	eax, dword ptr [rsp + 4]
	xor	al, 1
	jne	.label_107
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp + 0x28]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
.label_111:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbx
	mov	ebp, 0xffffffff
	jmp	.label_108
.label_107:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbx
	test	ebp, ebp
	jne	.label_108
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r13
	xor	ebp, ebp
.label_108:
	mov	rdi, qword ptr [rsp + 0x30]
	call	free
	mov	eax, ebp
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
	#Procedure 0x402510

	.globl bad_cast
	.type bad_cast, @function
bad_cast:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402520

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402530
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402540
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_116
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_118
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_118
.label_116:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_117
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_119
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_117:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_119:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_121
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402610

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_125
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_124
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_124
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_123
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_123:
	mov	rbx, r14
.label_124:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_125:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_126
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0
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
	#Procedure 0x402700
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
	#Procedure 0x402710
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
	#Procedure 0x402720

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
	#Procedure 0x402760
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
	#Procedure 0x402780

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_128
	test	rdx, rdx
	je	.label_128
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_128:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027b0
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
	#Procedure 0x402830

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
.label_180:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_182
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_187]]
.label_574:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_194
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_199
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_575:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_207
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_207
	xor	r14d, r14d
.label_218:
	cmp	r14, r11
	jae	.label_214
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_214:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_218
.label_207:
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
	jmp	.label_144
.label_567:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_144
.label_570:
	mov	al, 1
.label_568:
	mov	r12b, 1
.label_571:
	test	r12b, 1
	mov	cl, 1
	je	.label_230
	mov	ecx, eax
.label_230:
	mov	al, cl
.label_569:
	test	r12b, 1
	jne	.label_233
	test	r11, r11
	je	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_235:
	mov	r14d, 1
	jmp	.label_239
.label_233:
	xor	r14d, r14d
.label_239:
	mov	ecx, OFFSET FLAT:label_199
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_144
.label_572:
	test	r12b, 1
	jne	.label_135
	test	r11, r11
	je	.label_137
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_137:
	mov	r14d, 1
	jmp	.label_188
.label_573:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_143
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_144
.label_135:
	xor	r14d, r14d
.label_188:
	mov	eax, OFFSET FLAT:label_143
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_144:
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
	jmp	.label_195
	nop	dword ptr [rax]
.label_191:
	inc	rsi
.label_195:
	cmp	rbp, -1
	je	.label_198
	cmp	rsi, rbp
	jne	.label_201
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_203
.label_201:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_209
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_211
	cmp	rbp, -1
	jne	.label_211
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
.label_211:
	cmp	rbx, rbp
	jbe	.label_220
.label_209:
	xor	r8d, r8d
.label_167:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_221
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_224]]
.label_474:
	test	rsi, rsi
	jne	.label_158
	jmp	.label_151
	nop	
.label_220:
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
	jne	.label_237
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_167
	jmp	.label_136
.label_237:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_167
.label_478:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_146
	test	rsi, rsi
	jne	.label_148
	cmp	rbp, 1
	je	.label_151
	xor	r13d, r13d
	jmp	.label_138
.label_467:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_155
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	cmp	r12d, 2
	jne	.label_157
	mov	eax, r9d
	and	al, 1
	jne	.label_157
	cmp	r14, r11
	jae	.label_159
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_159:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_163
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_163:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_170
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_170:
	add	r14, 3
	mov	r9b, 1
.label_157:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_179
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_179:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_181
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_181
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_181
	cmp	r14, r11
	jae	.label_132
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_132:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_212
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_212:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_138
.label_468:
	mov	bl, 0x62
	jmp	.label_206
.label_469:
	mov	cl, 0x74
	jmp	.label_185
.label_470:
	mov	bl, 0x76
	jmp	.label_206
.label_471:
	mov	bl, 0x66
	jmp	.label_206
.label_472:
	mov	cl, 0x72
	jmp	.label_185
.label_475:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_213
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
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
	jae	.label_219
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_225
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_225:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_227
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	add	r14, 3
	xor	r9d, r9d
.label_213:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_138
.label_476:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_236
	cmp	r12d, 2
	jne	.label_158
	cmp	byte ptr [rsp + 7], 0
	je	.label_158
	jmp	.label_129
.label_477:
	cmp	r12d, 2
	jne	.label_131
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_134
.label_221:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_141
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
.label_174:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_171
	test	r8b, r8b
	je	.label_171
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_138
.label_146:
	test	rsi, rsi
	jne	.label_162
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_162
.label_151:
	mov	dl, 1
.label_473:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_129
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_138:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_190
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_192
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_190:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_196
.label_192:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_200
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_134
	jmp	.label_156
	nop	dword ptr [rax]
.label_196:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_156
	jmp	.label_134
.label_200:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_156
.label_155:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_191
	xor	r15d, r15d
	jmp	.label_158
.label_131:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_185
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_134
.label_185:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_129
.label_206:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_138
	nop	word ptr cs:[rax + rax]
.label_156:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	cmp	r12d, 2
	jne	.label_130
	mov	eax, r9d
	and	al, 1
	jne	.label_130
	cmp	r14, r11
	jae	.label_234
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_234:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_216:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_242
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	add	r14, 3
	mov	r9b, 1
.label_130:
	cmp	r14, r11
	jae	.label_133
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_133:
	inc	r14
	jmp	.label_139
.label_141:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_142
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_142:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_208:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_161
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_166
	cmp	rbp, -2
	je	.label_172
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_175
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_147:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_226
	bt	rsi, rdx
	jb	.label_136
.label_226:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_147
.label_175:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_202
	xor	r13d, r13d
.label_202:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_208
	jmp	.label_174
.label_181:
	xor	r13d, r13d
	jmp	.label_138
.label_162:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_138
.label_236:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_158
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_158
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_158
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_222
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_145
	cmp	byte ptr [rsp + 7], 0
	jne	.label_129
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_228
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_228:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_176
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_176:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_238
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_238:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_241
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_241:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_138
.label_158:
	xor	eax, eax
.label_148:
	xor	r13d, r13d
	jmp	.label_138
.label_171:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_217:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_140:
	test	r8b, r8b
	je	.label_149
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_150
	cmp	r14, r11
	jae	.label_153
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_153:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_150
	nop	dword ptr [rax]
.label_149:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_136
	cmp	r12d, 2
	jne	.label_160
	mov	eax, r9d
	and	al, 1
	jne	.label_160
	cmp	r14, r11
	jae	.label_165
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_165:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_169
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_169:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_177
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_177:
	add	r14, 3
	mov	r9b, 1
.label_160:
	cmp	r14, r11
	jae	.label_189
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_189:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_184
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_184:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_193
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_193:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_150:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_134
	test	r9b, 1
	je	.label_205
	mov	ebx, eax
	and	bl, 1
	jne	.label_205
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_210
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_210:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_197
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_197:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_205:
	cmp	r14, r11
	jae	.label_217
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_217
	nop	word ptr cs:[rax + rax]
.label_134:
	test	r9b, 1
	je	.label_215
	and	al, 1
	jne	.label_215
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	r14, 2
	xor	r9d, r9d
.label_215:
	mov	ebx, r15d
.label_139:
	cmp	r14, r11
	jae	.label_229
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_229:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_191
.label_166:
	xor	r13d, r13d
.label_161:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_174
.label_172:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_243
	mov	rsi, qword ptr [rsp + 0x50]
.label_168:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_152
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_168
	xor	r13d, r13d
	jmp	.label_174
.label_243:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_174
.label_152:
	xor	r13d, r13d
	jmp	.label_174
.label_222:
	xor	r13d, r13d
	jmp	.label_138
.label_145:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_138
	nop	dword ptr [rax + rax]
.label_203:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_154
	or	dl, al
	je	.label_136
.label_154:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_178
	or	dl, al
	jne	.label_178
	test	r10b, 1
	jne	.label_173
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_178
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_180
.label_178:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_183
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_186
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_186
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_164:
	cmp	r14, r11
	jae	.label_232
	mov	byte ptr [rcx + r14], al
.label_232:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_164
	jmp	.label_186
.label_129:
	mov	qword ptr [rsp + 0x20], rbp
.label_136:
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
.label_231:
	mov	r14, rax
.label_204:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_173:
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
	jmp	.label_231
.label_183:
	mov	rcx, qword ptr [rsp + 8]
.label_186:
	cmp	r14, r11
	jae	.label_204
	mov	byte ptr [rcx + r14], 0
	jmp	.label_204
.label_182:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
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
	#Procedure 0x403600

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
	je	.label_244
	mov	qword ptr [rax], rbx
.label_244:
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
	#Procedure 0x4036f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_245
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_248:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_248
.label_245:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_249
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_246]], OFFSET FLAT:slot0
.label_249:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_247
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_247:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403790

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4037a0

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
	js	.label_250
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_253
	cmp	r12d, 0x7fffffff
	je	.label_255
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
	jne	.label_251
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_251:
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
.label_253:
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
	jbe	.label_256
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_252
.label_256:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_254
	mov	rdi, r14
	call	free
.label_254:
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
.label_252:
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
.label_250:
	call	abort
.label_255:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403960

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403970
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
	#Procedure 0x403980
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
	#Procedure 0x403990

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
	#Procedure 0x4039d0

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
	je	.label_257
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
.label_257:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30

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
	#Procedure 0x403a70

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
	#Procedure 0x403a90
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
	#Procedure 0x403ab0

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
	mov	rcx,  qword ptr [word ptr [rip + label_258]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
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
	#Procedure 0x403b20

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
	#Procedure 0x403b30

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b50
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
	#Procedure 0x403ba0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

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
	mov	rax,  qword ptr [word ptr [rip + label_258]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_259]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_260]]
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
	#Procedure 0x403c20
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
	#Procedure 0x403c40
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
	#Procedure 0x403c60

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c70
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
	#Procedure 0x403c80

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c90

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
	#Procedure 0x403ca0

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
	jne	.label_266
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
	je	.label_262
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_267
	mov	eax, OFFSET FLAT:label_268
	jmp	.label_265
.label_262:
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
	je	.label_261
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_263
	mov	eax, OFFSET FLAT:label_264
	jmp	.label_265
.label_261:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_143
	mov	eax, OFFSET FLAT:label_199
.label_265:
	cmove	rax, rcx
.label_266:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d60

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_270
.label_269:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_270
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_270
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
.label_270:
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
	#Procedure 0x403de0

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
	je	.label_274
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_272
	jmp	.label_273
.label_274:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_273
.label_272:
	mov	eax, 1
	test	bpl, bpl
	je	.label_273
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
.label_273:
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
	#Procedure 0x403e70

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_277
	jmp	.label_276
.label_275:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_276
.label_277:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
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
.label_276:
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
	#Procedure 0x403ef0

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
	je	.label_280
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_279
	jmp	.label_278
.label_280:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_278
.label_279:
	mov	eax, 1
	test	bpl, bpl
	je	.label_278
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
.label_278:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

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
	je	.label_283
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_281
	jmp	.label_282
.label_283:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_282
.label_281:
	mov	eax, 1
	test	bpl, bpl
	je	.label_282
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_282:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fc0

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
	je	.label_284
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_286
	jmp	.label_285
.label_284:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_285
.label_286:
	mov	eax, 1
	test	bpl, bpl
	je	.label_285
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_285:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404010

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
	je	.label_289
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_288
	jmp	.label_287
.label_289:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_287
.label_288:
	mov	eax, 1
	test	bpl, bpl
	je	.label_287
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_287:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404060

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_292
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_291
	jmp	.label_290
.label_292:
	mov	eax, 1
	test	cl, cl
	je	.label_290
.label_291:
	xor	eax, eax
.label_290:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, r8
	mov	r15, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_294
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_294:
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	qword ptr [rsp], rbp
	mov	r9, rbp
	call	parse_with_separator
	mov	rbp, rax
	test	rbx, rbx
	je	.label_293
	test	r14, r14
	jne	.label_293
	test	rbp, rbp
	je	.label_293
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_293
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_295
.label_293:
	mov	rax, rbp
.label_295:
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
	#Procedure 0x404140

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbp, r8
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	esi, 0xffffffff
	test	rcx, rcx
	je	.label_314
	mov	esi, dword ptr [rcx]
.label_314:
	test	rbp, rbp
	je	.label_317
	mov	qword ptr [rbp], 0
.label_317:
	test	r9, r9
	je	.label_323
	mov	qword ptr [r9], 0
.label_323:
	test	r15, r15
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 4], eax
	je	.label_325
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_297
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_297:
	lea	rax, [r15 + 1]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	cmovne	r12, rax
	jmp	.label_309
.label_325:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_316
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_309:
	xor	r14d, r14d
	test	r13, r13
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_322
	cmp	byte ptr [r13], 0x2b
	je	.label_299
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_299
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 4], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_300
	test	r12, r12
	jne	.label_300
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 8], rbx
	je	.label_311
	mov	rdi, qword ptr [rax]
	jmp	.label_315
.label_299:
	mov	ebp, OFFSET FLAT:label_306
	xor	r14d, r14d
	test	r15, r15
	je	.label_307
	test	r12, r12
	je	.label_301
.label_307:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_324
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_324
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_308
.label_324:
	mov	ebp, OFFSET FLAT:label_298
	mov	eax, dword ptr [rsp + 4]
.label_308:
	xor	r14d, r14d
	mov	dword ptr [rsp + 4], eax
	jmp	.label_301
.label_322:
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_303
.label_316:
	xor	r13d, r13d
	jmp	.label_304
.label_311:
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_315:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_300:
	xor	ebp, ebp
.label_301:
	call	endpwent
.label_303:
	test	r12, r12
	je	.label_318
	test	rbp, rbp
	jne	.label_318
	cmp	byte ptr [r12], 0x2b
	je	.label_319
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_319
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_302
.label_318:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_312
.label_319:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_33
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_313
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_313
	cmp	ebx, -1
	jne	.label_302
.label_313:
	mov	ebp, OFFSET FLAT:label_310
	mov	rbx, qword ptr [rsp + 8]
.label_302:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
.label_312:
	test	rbp, rbp
	je	.label_320
	xor	ebx, ebx
	jmp	.label_296
.label_320:
	mov	rbp, qword ptr [rsp + 0x20]
.label_304:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [rax], edx
	test	rcx, rcx
	je	.label_321
	mov	dword ptr [rcx], esi
.label_321:
	test	rbp, rbp
	je	.label_326
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_326:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_296
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_296:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_305
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_305:
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
	.align	16
	#Procedure 0x4043d0

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
	je	.label_337
	mov	edx, OFFSET FLAT:label_342
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_329
.label_337:
	mov	edx, OFFSET FLAT:label_331
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_329:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
	mov	esi, OFFSET FLAT:label_332
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_338
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_339]]
.label_523:
	add	rsp, 8
	jmp	.label_330
.label_338:
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
	jmp	.label_330
.label_524:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
.label_525:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
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
.label_526:
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
.label_527:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
	jmp	.label_330
.label_528:
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
	jmp	.label_330
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
	jmp	.label_330
.label_530:
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
	jmp	.label_330
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
	jmp	.label_330
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
.label_330:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404730
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_346:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_346
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404760

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_348:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_347
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_349
	nop	dword ptr [rax]
.label_347:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_349:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_350
	inc	r9
	cmp	r9, 0xa
	jb	.label_348
.label_350:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4047c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_351
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_351:
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
	#Procedure 0x404850
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_353
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048d0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_356
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_356:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404900

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_357
	test	rax, rax
	je	.label_358
.label_357:
	pop	rbx
	ret	
.label_358:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404920
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_359
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_359:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_360
	test	rbx, rbx
	jne	.label_360
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_360:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_362
	test	rax, rax
	je	.label_361
.label_362:
	pop	rbx
	ret	
.label_361:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404980

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_363
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_366
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_364
.label_363:
	test	rcx, rcx
	jne	.label_367
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_367:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_365
.label_364:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_366:
	call	xalloc_die
.label_365:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a00

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a10
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a20
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
	#Procedure 0x404a50
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_368
	call	rpl_calloc
	test	rax, rax
	je	.label_368
	pop	rcx
	ret	
.label_368:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a80

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
	#Procedure 0x404ab0

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
	#Procedure 0x404ad0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_79
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404b00

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_371
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_370
.label_371:
	mov	eax, ebx
	pop	rbx
	ret	
.label_370:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404b20

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r8
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_378
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_372:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_372
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_387
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_379
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_385
	cmp	eax, 0x22
	jne	.label_387
	mov	r12d, 1
.label_385:
	test	rbp, rbp
	jne	.label_389
	jmp	.label_373
.label_379:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_387
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_387
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_387
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_389:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_373
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_383
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_384
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_384
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_374
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_376
	cmp	ecx, 0x44
	je	.label_376
	cmp	ecx, 0x69
	jne	.label_374
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_374
.label_376:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_374
.label_384:
	mov	rsi, r14
.label_374:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_383
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_386]]
.label_540:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_377
.label_383:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_388
.label_541:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_377
.label_542:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_377
.label_544:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_377
.label_538:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_375
.label_539:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_377
.label_543:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_377
.label_545:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_377
.label_546:
	lea	rdi, [rsp]
	mov	edx, 7
.label_377:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_375:
	mov	rsi, r14
.label_548:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_373:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_388:
	mov	r15d, r12d
.label_387:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_547:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_375
.label_549:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_375
.label_378:
	mov	edi, OFFSET FLAT:label_380
	mov	esi, OFFSET FLAT:label_381
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_382
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dd0

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	div	rcx
	mov	rdx, qword ptr [rdi]
	imul	rcx, rdx
	cmp	rax, rdx
	cmovb	rcx, rsi
	sbb	eax, eax
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404e00

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebp, ebp
	test	ebx, ebx
	je	.label_390
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_391:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_391
.label_390:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_392
	test	rsi, rsi
	mov	ecx, 1
	je	.label_393
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_393
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_392:
	mov	ecx, 1
.label_393:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
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
	je	.label_394
	cmp	r15, -2
	jb	.label_394
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_394
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_394:
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
	#Procedure 0x404ef0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_395
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_395
.label_396:
	ret	
.label_395:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_396
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_397
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_397:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f50
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
	#Procedure 0x404f60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_398
.label_399:
	ret	
.label_398:
	cmp	edi, 0x7f
	je	.label_399
	xor	eax, eax
	jmp	.label_399
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f80
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
	#Procedure 0x404f90
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
	#Procedure 0x404fa0
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
	#Procedure 0x404fb0
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
	#Procedure 0x404fc0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_400
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_401]]
.label_402:
	ret	
.label_400:
	xor	eax, eax
	jmp	.label_402
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_403
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_403:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405000

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
	#Procedure 0x405010
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_404
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_404:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405030
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
	#Procedure 0x405040
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
	#Procedure 0x405050

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
	je	.label_406
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_405
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_405
.label_406:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_405
	test	cl, cl
	jne	.label_405
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_405:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_408
	cmp	byte ptr [rax], 0x43
	jne	.label_410
	cmp	byte ptr [rax + 1], 0
	je	.label_407
.label_410:
	mov	esi, OFFSET FLAT:label_409
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_408
.label_407:
	xor	ebx, ebx
.label_408:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405100

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_411:
	mov	rax, rcx
	mul	r8
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_411
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_33
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_412
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405180

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	r12d, esi
	mov	rbp, rdi
	test	rbp, rbp
	je	.label_413
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0xa
	call	realloc_groupbuf
	mov	rbx, rax
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_417
	mov	r15d, r12d
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_420:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	mov	esi, r15d
	mov	rdx, rbx
	lea	rcx, [rsp + 0xc]
	call	getgrouplist
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_423
	mov	eax, dword ptr [rsp + 0xc]
	cmp	r12d, eax
	jne	.label_423
	add	eax, eax
	mov	dword ptr [rsp + 0xc], eax
	nop	
.label_423:
	movsxd	rsi, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	call	realloc_groupbuf
	test	rax, rax
	je	.label_418
	test	r14d, r14d
	mov	rbx, rax
	js	.label_420
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r13d, dword ptr [rsp + 0xc]
	jmp	.label_417
.label_413:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_421
	cmp	r12d, -1
	jne	.label_414
	test	eax, eax
	jne	.label_416
.label_414:
	inc	dword ptr [rsp + 0xc]
.label_416:
	movsxd	rsi, dword ptr [rsp + 0xc]
	xor	edi, edi
	call	realloc_groupbuf
	mov	r15, rax
	mov	r13d, 0xffffffff
	test	r15, r15
	je	.label_417
	mov	edi, dword ptr [rsp + 0xc]
	xor	eax, eax
	cmp	r12d, -1
	setne	al
	sub	edi, eax
	lea	rsi, [r15 + rax*4]
	call	getgroups
	test	eax, eax
	js	.label_415
	cmp	r12d, -1
	mov	r13d, eax
	je	.label_425
	mov	dword ptr [r15], r12d
	inc	eax
	mov	r13d, eax
.label_425:
	mov	qword ptr [r14], r15
	cmp	r13d, 2
	jl	.label_417
	mov	eax, dword ptr [r15]
	movsxd	rcx, r13d
	lea	rcx, [r15 + rcx*4]
	mov	rdx, r15
	add	rdx, 4
	jmp	.label_424
.label_418:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
	jmp	.label_417
.label_421:
	call	__errno_location
	mov	r13d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_417
	xor	edi, edi
	mov	esi, 1
	call	realloc_groupbuf
	test	rax, rax
	je	.label_417
	mov	qword ptr [r14], rax
	mov	dword ptr [rax], r12d
	xor	r13d, r13d
	cmp	r12d, -1
	setne	r13b
	jmp	.label_417
.label_415:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_417
.label_419:
	mov	dword ptr [r15 + 4], esi
	add	r15, 4
	jmp	.label_422
	nop	dword ptr [rax]
.label_424:
	mov	esi, dword ptr [rdx]
	cmp	esi, eax
	je	.label_426
	cmp	esi, dword ptr [r15]
	jne	.label_419
.label_426:
	dec	r13d
.label_422:
	add	rdx, 4
	cmp	rdx, rcx
	jb	.label_424
.label_417:
	mov	eax, r13d
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
	#Procedure 0x405360

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rax
	mov	rax, rsi
	shr	rax, 0x3d
	je	.label_427
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_427:
	shl	rsi, 2
	call	realloc
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_428
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_430
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_428
.label_430:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_428
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_429
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_429:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_428:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_431
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_431
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_431:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405440

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_432
	ret	
.label_432:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460

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
	jne	.label_433
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_433
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_434
.label_433:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_434:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_435
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_435:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x4054d0

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
