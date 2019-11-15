	.section	.text
	.align	16
	#Procedure 0x4018b0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_17
	jmp	.label_11
.label_11:
	movabs	rdi, OFFSET FLAT:label_14
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_18
.label_17:
	movabs	rdi, OFFSET FLAT:label_9
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_10
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_15
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
	mov	dword ptr [rbp - 0x2c], eax
	call	emit_ancillary_info
.label_18:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x4019f0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_28:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_27
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_27:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_20
	jmp	.label_29
.label_20:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_28
.label_29:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_30
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_30:
	movabs	rdi, OFFSET FLAT:label_34
	call	gettext
	movabs	rsi, OFFSET FLAT:label_24
	movabs	rdx, OFFSET FLAT:label_25
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_31
	movabs	rsi, OFFSET FLAT:label_23
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_31
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_31:
	movabs	rdi, OFFSET FLAT:label_26
	call	gettext
	movabs	rsi, OFFSET FLAT:label_25
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_33
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_21
	movabs	rsi, OFFSET FLAT:label_22
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401b90

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x18], 0
	call	is_smack_enabled
	and	al, 1
	mov	byte ptr [rbp - 0x19], al
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_21
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_103
	movabs	rsi, OFFSET FLAT:label_104
	mov	qword ptr [rbp - 0x58], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_103
	mov	qword ptr [rbp - 0x60], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x68], rax
	call	atexit
	mov	dword ptr [rbp - 0x6c], eax
.label_51:
	movabs	rdx, OFFSET FLAT:label_48
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_64
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x70], eax
	mov	dword ptr [rbp - 0x74], ecx
	je	.label_42
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x78], eax
	je	.label_72
	jmp	.label_77
.label_77:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_79
	jmp	.label_81
.label_81:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x5a
	mov	dword ptr [rbp - 0x80], eax
	je	.label_84
	jmp	.label_88
.label_88:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x84], eax
	je	.label_91
	jmp	.label_94
.label_94:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x88], eax
	je	.label_96
	jmp	.label_100
.label_100:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_102
	jmp	.label_69
.label_69:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x90], eax
	je	.label_106
	jmp	.label_78
.label_78:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x94], eax
	je	.label_39
	jmp	.label_97
.label_97:
	mov	eax, dword ptr [rbp - 0x70]
	sub	eax, 0x7a
	mov	dword ptr [rbp - 0x98], eax
	je	.label_47
	jmp	.label_65
.label_91:
	jmp	.label_57
.label_84:
	cmp	dword ptr [rbp - 0x18], 0
	jne	.label_60
	movabs	rdi, OFFSET FLAT:label_63
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_60:
	mov	byte ptr [byte ptr [just_context]],  1
	jmp	.label_57
.label_96:
	mov	byte ptr [byte ptr [just_group]],  1
	jmp	.label_57
.label_102:
	mov	byte ptr [byte ptr [use_name]],  1
	jmp	.label_57
.label_106:
	mov	byte ptr [byte ptr [use_real]],  1
	jmp	.label_57
.label_39:
	mov	byte ptr [byte ptr [just_user]],  1
	jmp	.label_57
.label_47:
	mov	byte ptr [byte ptr [opt_zero]],  1
	jmp	.label_57
.label_79:
	mov	byte ptr [byte ptr [just_group_list]],  1
	jmp	.label_57
.label_72:
	xor	edi, edi
	call	usage
.label_42:
	movabs	rsi, OFFSET FLAT:label_16
	movabs	rdx, OFFSET FLAT:label_24
	movabs	r8, OFFSET FLAT:label_98
	movabs	r9, OFFSET FLAT:label_99
	xor	eax, eax
	mov	ecx, eax
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	r10,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0xa0], rcx
	mov	rcx, r10
	mov	qword ptr [rsp], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_65:
	mov	edi, 1
	call	usage
.label_57:
	jmp	.label_51
.label_64:
	mov	eax, dword ptr [rbp - 8]
	sub	eax,  dword ptr [dword ptr [optind]]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x30], rcx
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_54
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_54
	movabs	rdi, OFFSET FLAT:label_67
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_54:
	mov	al,  byte ptr [byte ptr [just_user]]
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [just_group]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [just_group_list]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	mov	al,  byte ptr [byte ptr [just_context]]
	and	al, 1
	movzx	edx, al
	add	ecx, edx
	cmp	ecx, 1
	jle	.label_74
	movabs	rdi, OFFSET FLAT:label_93
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_74:
	mov	al, 1
	test	byte ptr [byte ptr [just_user]],  1
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_38
	mov	al, 1
	test	byte ptr [byte ptr [just_group]],  1
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_38
	mov	al, 1
	test	byte ptr [byte ptr [just_group_list]],  1
	mov	byte ptr [rbp - 0xa1], al
	jne	.label_38
	mov	al,  byte ptr [byte ptr [just_context]]
	mov	byte ptr [rbp - 0xa1], al
.label_38:
	mov	al, byte ptr [rbp - 0xa1]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	test	byte ptr [rbp - 0x31], 1
	je	.label_49
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_61
	test	byte ptr [byte ptr [use_name]],  1
	je	.label_49
.label_61:
	movabs	rdi, OFFSET FLAT:label_68
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_49:
	test	byte ptr [rbp - 0x31], 1
	je	.label_75
	test	byte ptr [byte ptr [opt_zero]],  1
	je	.label_75
	movabs	rdi, OFFSET FLAT:label_82
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_75:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_53
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_95
	test	byte ptr [rbp - 0x31], 1
	je	.label_53
	movabs	rdi, OFFSET FLAT:label_101
	call	getenv
	cmp	rax, 0
	jne	.label_53
.label_95:
	cmp	dword ptr [rbp - 0x18], 0
	je	.label_40
	movabs	rdi, OFFSET FLAT:context
	call	getcon
	cmp	eax, 0
	je	.label_40
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_43
.label_40:
	test	byte ptr [rbp - 0x19], 1
	je	.label_59
	movabs	rdi, OFFSET FLAT:context
	call	smack_new_label_from_self
	cmp	rax, 0
	jge	.label_59
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_59
.label_43:
	movabs	rdi, OFFSET FLAT:label_66
	call	gettext
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_59:
	jmp	.label_53
.label_53:
	cmp	qword ptr [rbp - 0x30], 1
	jb	.label_73
	xor	eax, eax
	mov	ecx, 1
	cmp	qword ptr [rbp - 0x30], 1
	cmova	eax, ecx
	cmp	eax, 0
	setne	dl
	and	dl, 1
	mov	byte ptr [byte ptr [multiple_users]],  dl
	movsxd	rsi,  dword ptr [dword ptr [optind]]
	add	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x30], rsi
.label_45:
	movsxd	rax,  dword ptr [dword ptr [optind]]
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_92
	mov	qword ptr [rbp - 0x40], 0
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	byte ptr [rax], 0
	je	.label_52
	movabs	rsi, OFFSET FLAT:euid
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	mov	qword ptr [rbp - 0xb0], rcx
	mov	r8, qword ptr [rbp - 0xb0]
	call	parse_user_spec
	cmp	rax, 0
	jne	.label_86
	mov	edi,  dword ptr [dword ptr [euid]]
	call	getpwuid
	mov	qword ptr [rbp - 0x40], rax
.label_86:
	jmp	.label_52
.label_52:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_55
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_36
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xb4], esi
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xc0], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0xb4]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	esi, al
	and	esi, 0
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_76
.label_55:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rax]
	call	xstrdup
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [dword ptr [euid]],  ecx
	mov	dword ptr [dword ptr [ruid]],  ecx
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [dword ptr [egid]],  ecx
	mov	dword ptr [dword ptr [rgid]],  ecx
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_stuff
	mov	rdi, qword ptr [rbp - 0x28]
	call	free
.label_76:
	mov	eax,  dword ptr [dword ptr [optind]]
	add	eax, 1
	mov	dword ptr [dword ptr [optind]],  eax
	jmp	.label_45
.label_92:
	jmp	.label_44
.label_73:
	mov	dword ptr [rbp - 0x4c], 0xffffffff
	mov	dword ptr [rbp - 0x50], 0xffffffff
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_46
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_56
	jmp	.label_62
.label_46:
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_56
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_56
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_56
.label_62:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	geteuid
	mov	dword ptr [dword ptr [euid]],  eax
	mov	eax,  dword ptr [dword ptr [euid]]
	cmp	eax, dword ptr [rbp - 0x4c]
	jne	.label_80
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_80
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_50
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc4], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc4]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_80:
	jmp	.label_56
.label_56:
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_105
	test	byte ptr [byte ptr [use_real]],  1
	jne	.label_41
	jmp	.label_35
.label_105:
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_35
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_41
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_35
.label_41:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getuid
	mov	dword ptr [dword ptr [ruid]],  eax
	mov	eax,  dword ptr [dword ptr [ruid]]
	cmp	eax, dword ptr [rbp - 0x4c]
	jne	.label_58
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_58
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_70
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xc8], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xc8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_58:
	jmp	.label_35
.label_35:
	test	byte ptr [byte ptr [just_user]],  1
	jne	.label_83
	test	byte ptr [byte ptr [just_group]],  1
	jne	.label_87
	test	byte ptr [byte ptr [just_group_list]],  1
	jne	.label_87
	test	byte ptr [byte ptr [just_context]],  1
	jne	.label_83
.label_87:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getegid
	mov	dword ptr [dword ptr [egid]],  eax
	mov	eax,  dword ptr [dword ptr [egid]]
	cmp	eax, dword ptr [rbp - 0x50]
	jne	.label_85
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_85
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_37
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xcc], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xcc]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_85:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getgid
	mov	dword ptr [dword ptr [rgid]],  eax
	mov	eax,  dword ptr [dword ptr [rgid]]
	cmp	eax, dword ptr [rbp - 0x50]
	jne	.label_90
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_90
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_89
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0xd0], esi
	call	gettext
	mov	edi, 1
	mov	esi, dword ptr [rbp - 0xd0]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_90:
	jmp	.label_83
.label_83:
	mov	rdi, qword ptr [rbp - 0x28]
	call	print_stuff
.label_44:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl,  byte ptr [byte ptr [ok]]
	test	dl, 1
	cmovne	eax, ecx
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024d0

	.globl is_smack_enabled
	.type is_smack_enabled, @function
is_smack_enabled:
	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	cl, al
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl smack_new_label_from_self
	.type smack_new_label_from_self, @function
smack_new_label_from_self:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	test	byte ptr [byte ptr [just_user]],  1
	je	.label_107
	test	byte ptr [byte ptr [use_real]],  1
	je	.label_114
	mov	eax,  dword ptr [dword ptr [ruid]]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_118
.label_114:
	mov	eax,  dword ptr [dword ptr [euid]]
	mov	dword ptr [rbp - 0xc], eax
.label_118:
	mov	eax, dword ptr [rbp - 0xc]
	mov	edi, eax
	call	print_user
	jmp	.label_111
.label_107:
	test	byte ptr [byte ptr [just_group]],  1
	je	.label_112
	test	byte ptr [byte ptr [use_real]],  1
	je	.label_116
	mov	eax,  dword ptr [dword ptr [rgid]]
	mov	dword ptr [rbp - 0x10], eax
	jmp	.label_120
.label_116:
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x10], eax
.label_120:
	mov	eax, dword ptr [rbp - 0x10]
	mov	cl,  byte ptr [byte ptr [use_name]]
	and	cl, 1
	mov	edi, eax
	movzx	esi, cl
	call	print_group
	and	al, 1
	movzx	esi, al
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	edi, al
	and	edi, esi
	cmp	edi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_115
.label_112:
	test	byte ptr [byte ptr [just_group_list]],  1
	je	.label_108
	mov	eax, 0x20
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi,  dword ptr [dword ptr [ruid]]
	mov	edx,  dword ptr [dword ptr [rgid]]
	mov	r8d,  dword ptr [dword ptr [egid]]
	mov	r9b,  byte ptr [byte ptr [use_name]]
	mov	r10b,  byte ptr [byte ptr [opt_zero]]
	test	r10b, 1
	cmovne	eax, ecx
	mov	r10b, al
	and	r9b, 1
	mov	ecx, r8d
	movzx	r8d, r9b
	movsx	r9d, r10b
	call	print_group_list
	and	al, 1
	movzx	ecx, al
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_117
.label_108:
	test	byte ptr [byte ptr [just_context]],  1
	je	.label_109
	mov	rdi,  qword ptr [word ptr [context]]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_119
.label_109:
	mov	rdi, qword ptr [rbp - 8]
	call	print_full_info
.label_119:
	jmp	.label_117
.label_117:
	jmp	.label_115
.label_115:
	jmp	.label_111
.label_111:
	test	byte ptr [byte ptr [opt_zero]],  1
	je	.label_110
	test	byte ptr [byte ptr [just_group_list]],  1
	je	.label_110
	test	byte ptr [byte ptr [multiple_users]],  1
	je	.label_110
	xor	edi, edi
	call	putchar_unlocked
	xor	edi, edi
	mov	dword ptr [rbp - 0x18], eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_113
.label_110:
	mov	eax, 0xa
	xor	ecx, ecx
	mov	dl,  byte ptr [byte ptr [opt_zero]]
	test	dl, 1
	cmovne	eax, ecx
	mov	edi, eax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x20], eax
.label_113:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402700

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], 0
	test	byte ptr [byte ptr [use_name]],  1
	je	.label_121
	mov	edi, dword ptr [rbp - 4]
	call	getpwuid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_122
	movabs	rdi, OFFSET FLAT:label_125
	call	gettext
	lea	rdi, [rbp - 4]
	mov	qword ptr [rbp - 0x20], rax
	call	uidtostr_ptr
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	esi, al
	and	esi, 0
	cmp	esi, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
.label_122:
	jmp	.label_121
.label_121:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_123
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_124
.label_123:
	lea	rdi, [rbp - 4]
	call	uidtostr_ptr
	mov	qword ptr [rbp - 0x28], rax
.label_124:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl print_full_info
	.type print_full_info, @function
print_full_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	movabs	rax, OFFSET FLAT:label_151
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	movabs	rdi, OFFSET FLAT:ruid
	mov	qword ptr [rbp - 0x38], rax
	call	uidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [ruid]]
	mov	dword ptr [rbp - 0x3c], eax
	call	getpwuid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_137
	movabs	rdi, OFFSET FLAT:label_135
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x40], eax
.label_137:
	movabs	rdi, OFFSET FLAT:label_148
	call	gettext
	movabs	rdi, OFFSET FLAT:rgid
	mov	qword ptr [rbp - 0x48], rax
	call	gidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [rgid]]
	mov	dword ptr [rbp - 0x4c], eax
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_131
	movabs	rdi, OFFSET FLAT:label_135
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x50], eax
.label_131:
	mov	eax,  dword ptr [dword ptr [euid]]
	cmp	eax,  dword ptr [dword ptr [ruid]]
	je	.label_126
	movabs	rdi, OFFSET FLAT:label_146
	call	gettext
	movabs	rdi, OFFSET FLAT:euid
	mov	qword ptr [rbp - 0x58], rax
	call	uidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [euid]]
	mov	dword ptr [rbp - 0x5c], eax
	call	getpwuid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_129
	movabs	rdi, OFFSET FLAT:label_135
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x60], eax
.label_129:
	jmp	.label_126
.label_126:
	mov	eax,  dword ptr [dword ptr [egid]]
	cmp	eax,  dword ptr [dword ptr [rgid]]
	je	.label_139
	movabs	rdi, OFFSET FLAT:label_147
	call	gettext
	movabs	rdi, OFFSET FLAT:egid
	mov	qword ptr [rbp - 0x68], rax
	call	gidtostr_ptr
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, rax
	mov	al, 0
	call	printf
	mov	edi,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x6c], eax
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_130
	movabs	rdi, OFFSET FLAT:label_135
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x70], eax
.label_130:
	jmp	.label_139
.label_139:
	cmp	qword ptr [rbp - 8], 0
	je	.label_140
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_144
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_150
.label_144:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_150
.label_150:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_154
.label_140:
	mov	eax,  dword ptr [dword ptr [egid]]
	mov	dword ptr [rbp - 0x24], eax
.label_154:
	lea	rdx, [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0x24]
	call	xgetgroups
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_132
	cmp	qword ptr [rbp - 8], 0
	je	.label_136
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_138
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x78], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_153
.label_136:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_145
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x84], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x84]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_153:
	mov	al,  byte ptr [byte ptr [ok]]
	and	al, 1
	movzx	ecx, al
	and	ecx, 0
	cmp	ecx, 0
	setne	al
	and	al, 1
	mov	byte ptr [byte ptr [ok]],  al
	jmp	.label_133
.label_132:
	cmp	dword ptr [rbp - 0x28], 0
	jle	.label_134
	movabs	rdi, OFFSET FLAT:label_143
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x88], eax
.label_134:
	mov	dword ptr [rbp - 0x2c], 0
.label_128:
	mov	eax, dword ptr [rbp - 0x2c]
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_152
	cmp	dword ptr [rbp - 0x2c], 0
	jle	.label_142
	mov	edi, 0x2c
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x8c], eax
.label_142:
	movsxd	rax, dword ptr [rbp - 0x2c]
	shl	rax, 2
	add	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	gidtostr_ptr
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movsxd	rsi, dword ptr [rbp - 0x2c]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	edi, dword ptr [rdi + rsi*4]
	mov	dword ptr [rbp - 0x90], eax
	call	getgrgid
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_149
	movabs	rdi, OFFSET FLAT:label_135
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x94], eax
.label_149:
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x2c]
	add	eax, 1
	mov	dword ptr [rbp - 0x2c], eax
	jmp	.label_128
.label_152:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	cmp	qword ptr [word ptr [context]],  0
	je	.label_133
	movabs	rdi, OFFSET FLAT:label_141
	call	gettext
	mov	rsi,  qword ptr [word ptr [context]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x98], eax
.label_133:
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bf0

	.globl uidtostr_ptr
	.type uidtostr_ptr, @function
uidtostr_ptr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:uidtostr_ptr.buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c20

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:gidtostr_ptr.buf
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, r9b
	mov	r10b, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	dword ptr [rbp - 0x18], edx
	mov	dword ptr [rbp - 0x1c], ecx
	and	r10b, 1
	mov	byte ptr [rbp - 0x1d], r10b
	mov	byte ptr [rbp - 0x1e], al
	mov	byte ptr [rbp - 0x1f], 1
	mov	qword ptr [rbp - 0x28], 0
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_161
	mov	edi, dword ptr [rbp - 0x14]
	call	getpwuid
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_163
	mov	byte ptr [rbp - 0x1f], 0
.label_163:
	jmp	.label_161
.label_161:
	mov	edi, dword ptr [rbp - 0x18]
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	esi, al
	call	print_group
	test	al, 1
	jne	.label_167
	mov	byte ptr [rbp - 0x1f], 0
.label_167:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, dword ptr [rbp - 0x18]
	je	.label_157
	movsx	edi, byte ptr [rbp - 0x1e]
	call	putchar_unlocked
	mov	edi, dword ptr [rbp - 0x1c]
	mov	cl, byte ptr [rbp - 0x1d]
	and	cl, 1
	movzx	esi, cl
	mov	dword ptr [rbp - 0x3c], eax
	call	print_group
	test	al, 1
	jne	.label_168
	mov	byte ptr [rbp - 0x1f], 0
.label_168:
	jmp	.label_157
.label_157:
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x48], rdi
	je	.label_155
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x4c], ecx
	jmp	.label_164
.label_155:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x4c], eax
.label_164:
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdx, [rbp - 0x30]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, eax
	call	xgetgroups
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jge	.label_170
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_158
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_138
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x50], esi
	call	gettext
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	call	quote
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_160
.label_158:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:label_145
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x5c], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x5c]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_160:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_162
.label_170:
	mov	dword ptr [rbp - 0x38], 0
.label_165:
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jge	.label_159
	movsxd	rax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x18]
	je	.label_156
	movsxd	rax, dword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x1c]
	je	.label_156
	movsx	edi, byte ptr [rbp - 0x1e]
	call	putchar_unlocked
	movsxd	rcx, dword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rdx + rcx*4]
	mov	sil, byte ptr [rbp - 0x1d]
	and	sil, 1
	movzx	esi, sil
	mov	dword ptr [rbp - 0x60], eax
	call	print_group
	test	al, 1
	jne	.label_166
	mov	byte ptr [rbp - 0x1f], 0
.label_166:
	jmp	.label_156
.label_156:
	jmp	.label_169
.label_169:
	mov	eax, dword ptr [rbp - 0x38]
	add	eax, 1
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_165
.label_159:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	cl, byte ptr [rbp - 0x1f]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_162:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402e70

	.globl print_group
	.type print_group, @function
print_group:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	al, sil
	mov	dword ptr [rbp - 4], edi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	mov	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x11], 1
	test	byte ptr [rbp - 5], 1
	je	.label_171
	mov	edi, dword ptr [rbp - 4]
	call	getgrgid
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_174
	movabs	rdi, OFFSET FLAT:label_175
	call	gettext
	xor	ecx, ecx
	mov	edx, dword ptr [rbp - 4]
	mov	edi, edx
	mov	qword ptr [rbp - 0x28], rdi
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	error
	mov	byte ptr [rbp - 0x11], 0
.label_174:
	jmp	.label_171
.label_171:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_173
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_172
.label_173:
	lea	rdi, [rbp - 4]
	call	gidtostr_ptr_0
	mov	qword ptr [rbp - 0x30], rax
.label_172:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi,  qword ptr [word ptr [stdout]]
	call	fputs_unlocked
	mov	cl, byte ptr [rbp - 0x11]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, edx
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f40

	.globl gidtostr_ptr_0
	.type gidtostr_ptr_0, @function
gidtostr_ptr_0:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	mov	edi, eax
	call	umaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f70
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402f90
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402fb0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_177
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_180
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_177
.label_180:
	movabs	rdi, OFFSET FLAT:label_179
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_182
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_181
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_176
.label_182:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_183
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_176:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_177:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_178
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_178:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_184
	jmp	.label_187
.label_187:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_187
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_186
.label_184:
	jmp	.label_185
.label_185:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_185
	jmp	.label_186
.label_186:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_188
	movabs	rdi, OFFSET FLAT:label_195
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_188:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_189
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_193
.label_189:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_193:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_190
	movabs	rsi, OFFSET FLAT:label_191
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_190
	movabs	rsi, OFFSET FLAT:label_192
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_194
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_194:
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4032c0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_196
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_197
.label_196:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_197
.label_197:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403340
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_198
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_199
.label_198:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_199
.label_199:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403380
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_200
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_201
.label_200:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_201
.label_201:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4033d0

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_202
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_203
.label_202:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_203
.label_203:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403480
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_204
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_204:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034c0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_205
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_205:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_207
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_206
.label_207:
	call	abort
.label_206:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403530
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_208
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_209
.label_208:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_209
.label_209:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403600

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_232:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_338
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_344]]
	jmp	rcx
.label_723:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_722:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_352
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_356:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_352
.label_352:
	movabs	rax, OFFSET FLAT:label_365
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_226
.label_724:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_226
.label_725:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_373
	movabs	rdi, OFFSET FLAT:label_377
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_225
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_373:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_256
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_328:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_391
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_397
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_397:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_402
.label_402:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_328
.label_391:
	jmp	.label_256
.label_256:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_226
.label_720:
	mov	byte ptr [rbp - 0x79], 1
.label_719:
	mov	byte ptr [rbp - 0x7b], 1
.label_721:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_413
	mov	byte ptr [rbp - 0x79], 1
.label_413:
	jmp	.label_211
.label_211:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_212
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_216
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_216:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_212
.label_212:
	movabs	rax, OFFSET FLAT:label_225
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_226
.label_718:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_226
.label_338:
	call	abort
.label_226:
	mov	qword ptr [rbp - 0x58], 0
.label_404:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_239
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_243
.label_239:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_243:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_257
	jmp	.label_265
.label_257:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_235
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_235
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_235
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_274
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_274
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_409
.label_274:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_409:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_235
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_235
	test	byte ptr [rbp - 0x7b], 1
	je	.label_295
	jmp	.label_246
.label_295:
	mov	byte ptr [rbp - 0x81], 1
.label_235:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_321
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_305]]
	jmp	rcx
.label_780:
	test	byte ptr [rbp - 0x79], 1
	je	.label_306
	jmp	.label_210
.label_210:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_311
	jmp	.label_246
.label_311:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_314
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_314
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_280
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_280:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_327
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_336
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_336:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_314:
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_347
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_347:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_269
.label_269:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_359
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_359
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_359
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_359
	jmp	.label_371
.label_371:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_331
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_380
.label_380:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_383
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_383:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_359
.label_359:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_396
.label_306:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_399
	jmp	.label_401
.label_399:
	jmp	.label_396
.label_396:
	jmp	.label_219
.label_791:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_403
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_410
	jmp	.label_384
.label_403:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_393
	jmp	.label_246
.label_393:
	jmp	.label_298
.label_410:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_215
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_215
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_215
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_220
	jmp	.label_229
.label_229:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_220
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_220
	jmp	.label_245
.label_245:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_220
	jmp	.label_250
.label_250:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_251
	jmp	.label_220
.label_220:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_259
	jmp	.label_246
.label_259:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_264
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_264:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_276
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_276:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_281
.label_281:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_285
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_285:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_293
.label_251:
	jmp	.label_293
.label_293:
	jmp	.label_215
.label_215:
	jmp	.label_298
.label_384:
	jmp	.label_298
.label_298:
	jmp	.label_219
.label_781:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_300
.label_782:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_300
.label_786:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_300
.label_784:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_304
.label_787:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_304
.label_783:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_304
.label_785:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_300
.label_792:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_308
	test	byte ptr [rbp - 0x7b], 1
	je	.label_313
	jmp	.label_246
.label_313:
	jmp	.label_214
.label_308:
	test	byte ptr [rbp - 0x79], 1
	je	.label_315
	test	byte ptr [rbp - 0x7b], 1
	je	.label_315
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_315
	jmp	.label_214
.label_315:
	jmp	.label_304
.label_304:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_322
	test	byte ptr [rbp - 0x7b], 1
	je	.label_322
	jmp	.label_246
.label_322:
	jmp	.label_300
.label_300:
	test	byte ptr [rbp - 0x79], 1
	je	.label_329
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_312
.label_329:
	jmp	.label_219
.label_793:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_334
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_337
	jmp	.label_340
.label_334:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_337
.label_340:
	jmp	.label_219
.label_337:
	jmp	.label_343
.label_343:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_346
	jmp	.label_219
.label_346:
	jmp	.label_349
.label_349:
	mov	byte ptr [rbp - 0x83], 1
.label_788:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_353
	test	byte ptr [rbp - 0x7b], 1
	je	.label_353
	jmp	.label_246
.label_353:
	jmp	.label_219
.label_790:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_360
	test	byte ptr [rbp - 0x7b], 1
	je	.label_364
	jmp	.label_246
.label_364:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_325
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_325
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_325:
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_390:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_386
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_394
.label_394:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_360:
	jmp	.label_219
.label_789:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_219
.label_321:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_357
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_407
.label_357:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_222
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_222:
	jmp	.label_231
.label_231:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_248
	jmp	.label_254
.label_248:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_255
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_254
.label_255:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_262
	mov	byte ptr [rbp - 0x91], 0
.label_282:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_266
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_266:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_278
	jmp	.label_279
.label_278:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_282
.label_279:
	jmp	.label_254
.label_262:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_287
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_287
	mov	qword ptr [rbp - 0xb8], 1
.label_317:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_291
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_233
	jmp	.label_301
.label_301:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_233
	jmp	.label_378
.label_378:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_233
	jmp	.label_307
.label_307:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_309
	jmp	.label_233
.label_233:
	jmp	.label_246
.label_309:
	jmp	.label_253
.label_253:
	jmp	.label_261
.label_261:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_317
.label_291:
	jmp	.label_287
.label_287:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_324
	mov	byte ptr [rbp - 0x91], 0
.label_324:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_320
.label_320:
	jmp	.label_354
.label_354:
	jmp	.label_333
.label_333:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_231
.label_254:
	jmp	.label_407
.label_407:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_341
	test	byte ptr [rbp - 0x79], 1
	je	.label_351
	test	byte ptr [rbp - 0x91], 1
	jne	.label_351
.label_341:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_244:
	test	byte ptr [rbp - 0x79], 1
	je	.label_361
	test	byte ptr [rbp - 0x91], 1
	jne	.label_361
	jmp	.label_319
.label_319:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_366
	jmp	.label_246
.label_366:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_369
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_369
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_376
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_376:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_381
.label_381:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_392
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_369:
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_406
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_370
.label_370:
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_412
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_412:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_213
.label_213:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_218
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_218:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_227
.label_361:
	test	byte ptr [rbp - 0x81], 1
	je	.label_234
	jmp	.label_238
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_240
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_240:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_234:
	jmp	.label_227
.label_227:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_252
	jmp	.label_258
.label_252:
	jmp	.label_260
.label_260:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_263
	test	byte ptr [rbp - 0x82], 1
	jne	.label_263
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_268
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_268:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_275
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_275:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_263:
	jmp	.label_283
.label_283:
	jmp	.label_284
.label_284:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_286
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_286:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_244
.label_258:
	jmp	.label_214
.label_351:
	jmp	.label_219
.label_219:
	test	byte ptr [rbp - 0x79], 1
	je	.label_296
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_297
.label_296:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_299
.label_297:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_299
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_302
.label_299:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_302
	jmp	.label_214
.label_302:
	jmp	.label_312
.label_312:
	jmp	.label_230
.label_230:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_237
	jmp	.label_246
.label_237:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_316
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_316
	jmp	.label_290
.label_290:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_294
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_294:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_326
.label_326:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_316:
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_350
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_358
.label_358:
	jmp	.label_214
.label_214:
	jmp	.label_303
.label_303:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_362
	test	byte ptr [rbp - 0x82], 1
	jne	.label_362
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_368
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_368:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_372
.label_372:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_379
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_379:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_362:
	jmp	.label_387
.label_387:
	jmp	.label_388
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_389
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_292
	mov	byte ptr [rbp - 0x7e], 0
.label_292:
	jmp	.label_401
.label_401:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_404
.label_265:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_342
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_342
	test	byte ptr [rbp - 0x7b], 1
	je	.label_342
	jmp	.label_246
.label_342:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_241
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_241
	test	byte ptr [rbp - 0x7d], 1
	je	.label_241
	test	byte ptr [rbp - 0x7e], 1
	je	.label_221
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_224
.label_221:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_228
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_228
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_232
.label_228:
	jmp	.label_363
.label_363:
	jmp	.label_241
.label_241:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_242
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_242
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_249
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_223
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_223:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_271
.label_271:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_247
.label_249:
	jmp	.label_242
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_270
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_224
.label_246:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_277
	test	byte ptr [rbp - 0x79], 1
	je	.label_277
	mov	dword ptr [rbp - 0x34], 4
.label_277:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_224:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049a0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4049e0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_414
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_415
.label_414:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_416
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_416:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404b40
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_418:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_419
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_418
.label_419:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_421
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_420]],  rax
.label_421:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_417
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_417:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c20

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404c60

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_429
	call	abort
.label_429:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_426
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_428
	call	xalloc_die
.label_428:
	test	byte ptr [rbp - 0x31], 1
	je	.label_425
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_427
.label_425:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_424
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_420]]
	mov	qword ptr [rax + 8], rcx
.label_424:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_426:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_422
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_423
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_423:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_422:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ee0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f20
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f40
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404f70

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404fb0

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_430
	call	abort
.label_430:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405060
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405090
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405140

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405170

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405190
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4051c0
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4052b0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405330
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405360
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4053e0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405440

	.globl quote
	.type quote, @function
quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405460

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_437
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_433
.label_437:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_435
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_436
	movabs	rax, OFFSET FLAT:label_439
	movabs	rcx, OFFSET FLAT:label_440
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_433
.label_436:
	movabs	rsi, OFFSET FLAT:label_434
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_438
	movabs	rax, OFFSET FLAT:label_431
	movabs	rcx, OFFSET FLAT:label_432
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_433
.label_438:
	movabs	rax, OFFSET FLAT:label_225
	movabs	rcx, OFFSET FLAT:label_365
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_433:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405560

	.globl getcon
	.type getcon, @function
getcon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405590
	.globl freecon
	.type freecon, @function
freecon:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055a0
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4055d0
	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405600
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	call	__errno_location
	mov	esi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, esi
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405630
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405660
	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405690
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056c0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4056f0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405720
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	edi, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edi
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405750
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405780
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057b0
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057e0
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	ax, dx
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	word ptr [rbp - 0x12], ax
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, edx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405820
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	xor	ecx, ecx
	mov	dx, cx
	mov	dword ptr [rax], 0x5f
	movzx	eax, dx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405850
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	call	__errno_location
	mov	ecx, 0xffffffff
	mov	dword ptr [rax], 0x5f
	mov	eax, ecx
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405880

	.globl parse_user_spec
	.type parse_user_spec, @function
parse_user_spec:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_441
	mov	esi, 0x3a
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_444
.label_441:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_444
.label_444:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_with_separator
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_442
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_442
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_442
	mov	esi, 0x2e
	mov	rdi, qword ptr [rbp - 8]
	call	strchr
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_443
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_with_separator
	cmp	rax, 0
	jne	.label_443
	mov	qword ptr [rbp - 0x38], 0
.label_443:
	jmp	.label_442
.label_442:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405970

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x60], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rcx]
	mov	dword ptr [rbp - 0x64], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_479
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xac], ecx
	jmp	.label_464
.label_479:
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_464
.label_464:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x68], eax
	mov	qword ptr [rbp - 0x38], 0
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_473
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rax], 0
.label_473:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_481
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
.label_481:
	mov	qword ptr [rbp - 0x50], 0
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_448
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax], 0
	je	.label_458
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	qword ptr [rbp - 0x50], rax
.label_458:
	jmp	.label_466
.label_448:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_469
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	rsi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	byte ptr [rsi + rax], 0
.label_469:
	jmp	.label_466
.label_466:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_453
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	jne	.label_477
.label_453:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_456
.label_477:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
.label_456:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_468
	mov	rax, qword ptr [rbp - 0x50]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_474
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_478
.label_474:
	mov	rdi, qword ptr [rbp - 0x50]
	call	getpwnam
	mov	qword ptr [rbp - 0xc0], rax
.label_478:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_446
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xc1], cl
	je	.label_454
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0xc1], al
.label_454:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	byte ptr [rbp - 0x71], al
	test	byte ptr [rbp - 0x71], 1
	je	.label_467
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_bad_spec]]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_457
.label_467:
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0x80]
	movabs	r8, OFFSET FLAT:label_21
	mov	rdi, qword ptr [rbp - 0x50]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_447
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0x80], rcx
	ja	.label_447
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_447
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x64], ecx
	jmp	.label_463
.label_447:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_user]]
	mov	qword ptr [rbp - 0x38], rax
.label_463:
	jmp	.label_457
.label_457:
	jmp	.label_459
.label_446:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x64], ecx
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_472
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_472
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 0x14]
	mov	dword ptr [rbp - 0x68], ecx
	mov	edi, dword ptr [rbp - 0x68]
	call	getgrgid
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_445
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_450
.label_445:
	lea	rsi, [rbp - 0xa0]
	mov	eax, dword ptr [rbp - 0x68]
	mov	edi, eax
	call	umaxtostr
	mov	qword ptr [rbp - 0xd0], rax
.label_450:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
	call	endgrent
.label_472:
	jmp	.label_459
.label_459:
	call	endpwent
.label_468:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_476
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_476
	mov	rax, qword ptr [rbp - 0x58]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_480
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xd8], rcx
	jmp	.label_452
.label_480:
	mov	rdi, qword ptr [rbp - 0x58]
	call	getgrnam
	mov	qword ptr [rbp - 0xd8], rax
.label_452:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_460
	xor	eax, eax
	mov	esi, eax
	mov	edx, 0xa
	lea	rcx, [rbp - 0xa8]
	movabs	r8, OFFSET FLAT:label_21
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrtoul
	cmp	eax, 0
	jne	.label_455
	mov	eax, 0xffffffff
	mov	ecx, eax
	cmp	qword ptr [rbp - 0xa8], rcx
	ja	.label_455
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	cmp	ecx, -1
	je	.label_455
	mov	rax, qword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x68], ecx
	jmp	.label_470
.label_455:
	mov	rax,  qword ptr [word ptr [parse_with_separator.E_invalid_group]]
	mov	qword ptr [rbp - 0x38], rax
.label_470:
	jmp	.label_462
.label_460:
	mov	rax, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rbp - 0x68], ecx
.label_462:
	call	endgrent
	mov	rdi, qword ptr [rbp - 0x58]
	call	xstrdup
	mov	qword ptr [rbp - 0x60], rax
.label_476:
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_465
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_475
	mov	eax, dword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	dword ptr [rcx], eax
.label_475:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_461
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x50], 0
.label_461:
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_449
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x60], 0
.label_449:
	jmp	.label_465
.label_465:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	rdi, qword ptr [rbp - 0x60]
	call	free
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_471
	mov	rdi, qword ptr [rbp - 0x38]
	call	gettext
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_451
.label_471:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_451
.label_451:
	mov	rax, qword ptr [rbp - 0xe0]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405e10

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_493
	movabs	rsi, OFFSET FLAT:label_483
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_494
.label_493:
	movabs	rsi, OFFSET FLAT:label_495
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_494:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_486
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:label_485
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_490
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_496]]
	jmp	rcx
.label_768:
	jmp	.label_482
.label_769:
	movabs	rdi, OFFSET FLAT:label_484
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_482
.label_770:
	movabs	rdi, OFFSET FLAT:label_500
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_482
.label_771:
	movabs	rdi, OFFSET FLAT:label_499
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_482
.label_772:
	movabs	rdi, OFFSET FLAT:label_487
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_482
.label_773:
	movabs	rdi, OFFSET FLAT:label_498
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_482
.label_774:
	movabs	rdi, OFFSET FLAT:label_488
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_482
.label_775:
	movabs	rdi, OFFSET FLAT:label_491
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_482
.label_776:
	movabs	rdi, OFFSET FLAT:label_497
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_482
.label_777:
	movabs	rdi, OFFSET FLAT:label_492
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_482
.label_490:
	movabs	rdi, OFFSET FLAT:label_489
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_482:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_503:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_501
	jmp	.label_502
.label_502:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_503
.label_501:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406440

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_507:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_504
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_509
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_508
.label_509:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_508:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_504:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_510
	jmp	.label_505
.label_510:
	jmp	.label_506
.label_506:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_507
.label_505:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406550

	.globl version_etc
	.type version_etc, @function
version_etc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_511
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_511:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4066c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_512
	call	gettext
	movabs	rsi, OFFSET FLAT:label_514
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_513
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_24
	movabs	rdx, OFFSET FLAT:label_25
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_515
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406750
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_516
	call	xalloc_die
.label_516:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_517
	cmp	qword ptr [rbp - 8], 0
	je	.label_517
	call	xalloc_die
.label_517:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4067e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_518
	call	xalloc_die
.label_518:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406830

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_519
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_519
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_521
.label_519:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_520
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_520
	call	xalloc_die
.label_520:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_521:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4068b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_522
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_525
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_525:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_523
	call	xalloc_die
.label_523:
	jmp	.label_524
.label_522:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_526
	call	xalloc_die
.label_526:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_524:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069f0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a30
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_527
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_528
.label_527:
	call	xalloc_die
.label_528:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406a90

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ad0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406b10

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_529
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_183
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x406b50

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 0x18]
	call	mgetgroups
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], -1
	jne	.label_530
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_530
	call	xalloc_die
.label_530:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ba0

	.globl xstrtoul
	.type xstrtoul, @function
xstrtoul:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xd0
	xor	eax, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	dword ptr [rbp - 0x4c], 0
	cmp	eax, dword ptr [rbp - 0x1c]
	jg	.label_560
	cmp	dword ptr [rbp - 0x1c], 0x24
	jg	.label_560
	jmp	.label_568
.label_560:
	movabs	rdi, OFFSET FLAT:label_569
	movabs	rsi, OFFSET FLAT:label_570
	mov	edx, 0x54
	movabs	rcx, OFFSET FLAT:label_571
	call	__assert_fail
.label_568:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_532
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_537
.label_532:
	lea	rax, [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_537
.label_537:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x40], rax
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x59], cl
.label_562:
	movzx	eax, byte ptr [rbp - 0x59]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x78], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_551
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x59], dl
	jmp	.label_562
.label_551:
	movzx	eax, byte ptr [rbp - 0x59]
	cmp	eax, 0x2d
	jne	.label_557
	mov	dword ptr [rbp - 4], 4
	jmp	.label_538
.label_557:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rbp - 0x1c]
	call	strtoul
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x10]
	jne	.label_565
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_531
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_531
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	je	.label_531
	mov	qword ptr [rbp - 0x48], 1
	jmp	.label_534
.label_531:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_538
.label_534:
	jmp	.label_540
.label_565:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_544
	call	__errno_location
	cmp	dword ptr [rax], 0x22
	je	.label_548
	mov	dword ptr [rbp - 4], 4
	jmp	.label_538
.label_548:
	mov	dword ptr [rbp - 0x4c], 1
.label_544:
	jmp	.label_540
.label_540:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_550
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_538
.label_550:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	je	.label_542
	mov	dword ptr [rbp - 0x60], 0x400
	mov	dword ptr [rbp - 0x64], 1
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	esi, byte ptr [rax]
	call	strchr
	cmp	rax, 0
	jne	.label_563
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_538
.label_563:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	mov	edx, ecx
	sub	edx, 0x45
	mov	dword ptr [rbp - 0x7c], ecx
	mov	dword ptr [rbp - 0x80], edx
	je	.label_535
	jmp	.label_572
.label_572:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x47
	mov	dword ptr [rbp - 0x84], eax
	je	.label_535
	jmp	.label_533
.label_533:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4b
	mov	dword ptr [rbp - 0x88], eax
	je	.label_535
	jmp	.label_539
.label_539:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x4d
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_535
	jmp	.label_546
.label_546:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x50
	mov	dword ptr [rbp - 0x90], eax
	je	.label_535
	jmp	.label_567
.label_567:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x94], eax
	je	.label_535
	jmp	.label_552
.label_552:
	mov	eax, dword ptr [rbp - 0x7c]
	add	eax, -0x59
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jb	.label_535
	jmp	.label_553
.label_553:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x67
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_535
	jmp	.label_558
.label_558:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6b
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_535
	jmp	.label_536
.label_536:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0xa4], eax
	je	.label_535
	jmp	.label_566
.label_566:
	mov	eax, dword ptr [rbp - 0x7c]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0xa8], eax
	jne	.label_555
	jmp	.label_535
.label_535:
	mov	esi, 0x30
	mov	rdi, qword ptr [rbp - 0x30]
	call	strchr
	cmp	rax, 0
	je	.label_554
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 1]
	mov	edx, ecx
	sub	edx, 0x42
	mov	dword ptr [rbp - 0xac], ecx
	mov	dword ptr [rbp - 0xb0], edx
	je	.label_564
	jmp	.label_559
.label_559:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x44
	mov	dword ptr [rbp - 0xb4], eax
	je	.label_564
	jmp	.label_545
.label_545:
	mov	eax, dword ptr [rbp - 0xac]
	sub	eax, 0x69
	mov	dword ptr [rbp - 0xb8], eax
	jne	.label_543
	jmp	.label_549
.label_549:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x42
	jne	.label_547
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 2
	mov	dword ptr [rbp - 0x64], eax
.label_547:
	jmp	.label_543
.label_564:
	mov	dword ptr [rbp - 0x60], 0x3e8
	mov	eax, dword ptr [rbp - 0x64]
	add	eax, 1
	mov	dword ptr [rbp - 0x64], eax
.label_543:
	jmp	.label_554
.label_554:
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	mov	eax, ecx
	sub	ecx, 0x35
	mov	qword ptr [rbp - 0xc0], rax
	mov	dword ptr [rbp - 0xc4], ecx
	ja	.label_556
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_561]]
	jmp	rcx
.label_816:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x200
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_807:
	lea	rdi, [rbp - 0x48]
	mov	esi, 0x400
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_817:
	mov	dword ptr [rbp - 0x68], 0
	jmp	.label_541
.label_808:
	lea	rdi, [rbp - 0x48]
	mov	edx, 6
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_809:
	lea	rdi, [rbp - 0x48]
	mov	edx, 3
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_810:
	lea	rdi, [rbp - 0x48]
	mov	edx, 1
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_811:
	lea	rdi, [rbp - 0x48]
	mov	edx, 2
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_812:
	lea	rdi, [rbp - 0x48]
	mov	edx, 5
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_813:
	lea	rdi, [rbp - 0x48]
	mov	edx, 4
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_818:
	lea	rdi, [rbp - 0x48]
	mov	esi, 2
	call	bkm_scale
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_814:
	lea	rdi, [rbp - 0x48]
	mov	edx, 8
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_815:
	lea	rdi, [rbp - 0x48]
	mov	edx, 7
	mov	esi, dword ptr [rbp - 0x60]
	call	bkm_scale_by_power
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_541
.label_556:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	or	edx, 2
	mov	dword ptr [rbp - 4], edx
	jmp	.label_538
.label_541:
	mov	eax, dword ptr [rbp - 0x68]
	or	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 0x4c], eax
	mov	eax, dword ptr [rbp - 0x64]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rcx]
	movsxd	rsi, eax
	add	rdx, rsi
	mov	qword ptr [rcx], rdx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx]
	cmp	byte ptr [rcx], 0
	je	.label_573
	mov	eax, dword ptr [rbp - 0x4c]
	or	eax, 2
	mov	dword ptr [rbp - 0x4c], eax
.label_573:
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], edx
.label_538:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xd0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407150

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	push	rbp
	mov	rbp, rsp
	mov	rax, -1
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	movsxd	rdi, dword ptr [rbp - 0x14]
	xor	esi, esi
	mov	edx, esi
	div	rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rdi]
	jae	.label_574
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], -1
	mov	dword ptr [rbp - 4], 1
	jmp	.label_575
.label_574:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_575:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4071b0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	dword ptr [rbp - 0x10], edx
	mov	dword ptr [rbp - 0x14], 0
.label_577:
	mov	eax, dword ptr [rbp - 0x10]
	mov	ecx, eax
	add	ecx, -1
	mov	dword ptr [rbp - 0x10], ecx
	cmp	eax, 0
	je	.label_576
	mov	rdi, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	call	bkm_scale
	or	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_577
.label_576:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407200

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_578
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_578:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_579
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_579
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_579
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_580
.label_579:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_580:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4072b0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_581
	mov	dword ptr [rbp - 4], 0
	jmp	.label_585
.label_581:
	jmp	.label_582
.label_582:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_584
	jmp	.label_583
.label_584:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_582
.label_583:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_585:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407370

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_586
	test	byte ptr [rbp - 0x13], 1
	je	.label_587
	test	byte ptr [rbp - 0x11], 1
	jne	.label_586
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_587
.label_586:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_588
	call	__errno_location
	mov	dword ptr [rax], 0
.label_588:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_589
.label_587:
	mov	dword ptr [rbp - 4], 0
.label_589:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407420

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_590
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_593
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_594
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_592
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_591
.label_594:
	mov	byte ptr [rbp - 5], 0
.label_591:
	jmp	.label_590
.label_590:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4074a0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_595
	movabs	rax, OFFSET FLAT:label_21
	mov	qword ptr [rbp - 8], rax
.label_595:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_596
	movabs	rax, OFFSET FLAT:label_597
	mov	qword ptr [rbp - 8], rax
.label_596:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407500

	.globl mgetgroups
	.type mgetgroups, @function
mgetgroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_598
	xor	eax, eax
	mov	edi, eax
	mov	dword ptr [rbp - 0x24], 0xa
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_609
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_605
.label_609:
	jmp	.label_600
.label_600:
	lea	rcx, [rbp - 0x24]
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x30]
	call	getgrouplist
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_621
	mov	eax, dword ptr [rbp - 0x3c]
	cmp	eax, dword ptr [rbp - 0x24]
	jne	.label_621
	mov	eax, dword ptr [rbp - 0x24]
	shl	eax, 1
	mov	dword ptr [rbp - 0x24], eax
.label_621:
	mov	rdi, qword ptr [rbp - 0x30]
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x38], rax
	cmp	rax, 0
	jne	.label_603
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x40], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x5c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_605
.label_603:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x30], rcx
	cmp	eax, dword ptr [rbp - 0x28]
	jg	.label_616
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_605
.label_616:
	jmp	.label_600
.label_598:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_602
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	getugroups
	mov	dword ptr [rbp - 0x60], eax
	jmp	.label_606
.label_602:
	xor	edi, edi
	xor	eax, eax
	mov	esi, eax
	call	getgroups
	mov	dword ptr [rbp - 0x60], eax
.label_606:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jge	.label_613
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_614
	xor	eax, eax
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	je	.label_614
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	edx, dword ptr [rbp - 0x14]
	mov	rax, qword ptr [rbp - 0x30]
	mov	dword ptr [rax], edx
	cmp	dword ptr [rbp - 0x14], -1
	setne	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 4], edx
	jmp	.label_605
.label_614:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_605
.label_613:
	cmp	dword ptr [rbp - 0x24], 0
	je	.label_608
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_612
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_612
.label_608:
	mov	eax, dword ptr [rbp - 0x24]
	add	eax, 1
	mov	dword ptr [rbp - 0x24], eax
.label_612:
	xor	eax, eax
	mov	edi, eax
	movsxd	rsi, dword ptr [rbp - 0x24]
	call	realloc_groupbuf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_620
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_605
.label_620:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_599
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	call	getugroups
	mov	dword ptr [rbp - 0x64], eax
	jmp	.label_610
.label_599:
	mov	eax, dword ptr [rbp - 0x24]
	cmp	dword ptr [rbp - 0x14], -1
	setne	cl
	and	cl, 1
	movzx	edx, cl
	sub	eax, edx
	mov	rsi, qword ptr [rbp - 0x30]
	cmp	dword ptr [rbp - 0x14], -1
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rdi, edx
	shl	rdi, 2
	add	rsi, rdi
	mov	edi, eax
	call	getgroups
	mov	dword ptr [rbp - 0x64], eax
.label_610:
	mov	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	jge	.label_618
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x44], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x68], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x68]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_605
.label_618:
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_604
	cmp	dword ptr [rbp - 0x14], -1
	je	.label_604
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	dword ptr [rcx], eax
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
.label_604:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rdx], rcx
	cmp	eax, dword ptr [rbp - 0x28]
	jge	.label_607
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x48], ecx
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rdx, dword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 4
	mov	qword ptr [rbp - 0x50], rax
.label_619:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jae	.label_601
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	cmp	ecx, dword ptr [rbp - 0x48]
	je	.label_622
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	ecx, dword ptr [rax]
	jne	.label_615
.label_622:
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, -1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_611
.label_615:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdx, rax
	add	rdx, 4
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rax + 4], ecx
.label_611:
	jmp	.label_617
.label_617:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 4
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_619
.label_601:
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_605:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407890

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_623
	call	__errno_location
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_624
.label_623:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 8], rax
.label_624:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407900

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_625
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_628
.label_625:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_626
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_627
.label_626:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_627
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_627:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_629
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_629:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_628:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079d0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_630
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_631
.label_630:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_632
.label_631:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_632:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a30

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_633
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_633:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a70

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_634
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_634
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_634
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_636
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_635
.label_636:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_635
.label_634:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_635:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_637
	jmp	.label_639
.label_639:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_638
.label_637:
	jmp	.label_638
.label_638:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b90
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_640
	jmp	.label_643
.label_643:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_640
	jmp	.label_641
.label_641:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_642
	jmp	.label_640
.label_640:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_644
.label_642:
	mov	byte ptr [rbp - 1], 0
.label_644:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c00
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_645
	jmp	.label_648
.label_648:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_646
	jmp	.label_645
.label_645:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_647
.label_646:
	mov	byte ptr [rbp - 1], 0
.label_647:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_649
	jmp	.label_650
.label_650:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_651
.label_649:
	mov	byte ptr [rbp - 1], 0
.label_651:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c80
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_652
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_652:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cb0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_653
	jmp	.label_655
.label_655:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_656
	jmp	.label_653
.label_653:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_654
.label_656:
	mov	byte ptr [rbp - 1], 0
.label_654:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d00
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_657
	jmp	.label_659
.label_659:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_658
.label_657:
	mov	byte ptr [rbp - 1], 0
.label_658:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d40
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_660
	jmp	.label_662
.label_662:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_661
.label_660:
	mov	byte ptr [rbp - 1], 0
.label_661:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d80
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_663
	jmp	.label_665
.label_665:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_664
.label_663:
	mov	byte ptr [rbp - 1], 0
.label_664:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407dc0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_666
	jmp	.label_668
.label_668:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_667
.label_666:
	mov	byte ptr [rbp - 1], 0
.label_667:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e00
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	mov	eax, edi
	sub	edi, 0x5d
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_669
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_671]]
	jmp	rcx
.label_835:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_670
.label_669:
	mov	byte ptr [rbp - 1], 0
.label_670:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e50
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_672
	jmp	.label_675
.label_675:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_674
	jmp	.label_672
.label_672:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_673
.label_674:
	mov	byte ptr [rbp - 1], 0
.label_673:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ea0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_676
	jmp	.label_678
.label_678:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_677
.label_676:
	mov	byte ptr [rbp - 1], 0
.label_677:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ee0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_679
	jmp	.label_681
.label_681:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_679
	jmp	.label_680
.label_680:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_682
	jmp	.label_679
.label_679:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_683
.label_682:
	mov	byte ptr [rbp - 1], 0
.label_683:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f50

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_684
	jmp	.label_686
.label_686:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_685
.label_684:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_685:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f90
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_687
	jmp	.label_689
.label_689:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_688
.label_687:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_688:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fd0

	.globl getugroups
	.type getugroups, @function
getugroups:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	dword ptr [rbp - 0x20], 0
	cmp	dword ptr [rbp - 0x1c], -1
	je	.label_696
	cmp	dword ptr [rbp - 4], 0
	je	.label_706
	mov	eax, dword ptr [rbp - 0x1c]
	movsxd	rcx, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + rcx*4], eax
.label_706:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_696:
	call	setgrent
.label_707:
	call	__errno_location
	mov	dword ptr [rax], 0
	call	getgrent
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_704
	jmp	.label_702
.label_704:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_691:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	je	.label_694
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	je	.label_703
	jmp	.label_701
.label_703:
	mov	dword ptr [rbp - 0x34], 0
.label_708:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x20]
	jge	.label_690
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_693
	movsxd	rax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	rax, qword ptr [rbp - 0x30]
	cmp	edx, dword ptr [rax + 0x10]
	jne	.label_693
	jmp	.label_690
.label_693:
	jmp	.label_700
.label_700:
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, 1
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_708
.label_690:
	mov	eax, dword ptr [rbp - 0x34]
	cmp	eax, dword ptr [rbp - 0x20]
	jne	.label_699
	cmp	dword ptr [rbp - 4], 0
	je	.label_697
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, dword ptr [rbp - 4]
	jl	.label_705
	jmp	.label_698
.label_705:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x10]
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + rax*4], ecx
.label_697:
	cmp	dword ptr [rbp - 0x20], 0x7fffffff
	jne	.label_695
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_698
.label_695:
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x20], eax
.label_699:
	jmp	.label_701
.label_701:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_691
.label_694:
	jmp	.label_707
.label_702:
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_692
	mov	dword ptr [rbp - 0x20], 0xffffffff
.label_692:
	jmp	.label_698
.label_698:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x38], ecx
	call	endgrent
	mov	ecx, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x3c], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	dword ptr [rax], ecx
	mov	eax, dword ptr [rbp - 0x20]
	add	rsp, 0x40
	pop	rbp
	ret	
