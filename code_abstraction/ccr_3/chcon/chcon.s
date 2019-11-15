	.section	.text
	.align	16
	#Procedure 0x401a50

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
	mov	esi, OFFSET FLAT:label_30
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
	mov	esi, OFFSET FLAT:label_10
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
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
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
	mov	esi, OFFSET FLAT:label_24
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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_13
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_13:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_16
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_12:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
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
	#Procedure 0x401d00

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
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_81
	call	setlocale
	mov	edi, OFFSET FLAT:label_82
	mov	esi, OFFSET FLAT:label_83
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_82
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	r14d, 0x10
	mov	r15d, 0xffffffff
	xor	r12d, r12d
	xor	r13d, r13d
	xor	eax, eax
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_1097:
	mov	rax, qword ptr [rip + optarg]
.label_90:
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_33
.label_1089:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_range],  rax
	mov	r13b, 1
	nop	
.label_33:
	mov	edx, OFFSET FLAT:label_92
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x84
	ja	.label_105
	jmp	qword ptr [(rcx * 8) + label_106]
.label_1084:
	mov	r14d, 0x11
	jmp	.label_33
.label_1086:
	mov	r14d, 0x10
	jmp	.label_33
.label_1088:
	xor	r15d, r15d
	jmp	.label_33
.label_1090:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_role],  rax
	mov	r13b, 1
	jmp	.label_33
.label_1091:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_type],  rax
	mov	r13b, 1
	jmp	.label_33
.label_1094:
	mov	r15d, 1
	jmp	.label_33
.label_1095:
	xor	r12d, r12d
	jmp	.label_33
.label_1085:
	mov	r14d, 2
	jmp	.label_33
.label_1087:
	mov	byte ptr [rip + recurse],  1
	jmp	.label_33
.label_1092:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + specified_user],  rax
	mov	r13b, 1
	jmp	.label_33
.label_1093:
	mov	byte ptr [rip + verbose],  1
	jmp	.label_33
.label_1096:
	mov	r12b, 1
	jmp	.label_33
.label_1083:
	mov	al, byte ptr [rip + recurse]
	cmp	al, 1
	jne	.label_44
	cmp	r14d, 0x10
	jne	.label_48
	cmp	r15d, 1
	je	.label_50
	mov	byte ptr [rip + affect_symlink_referent],  0
	jmp	.label_53
.label_44:
	test	r15d, r15d
	setne	byte ptr [rip + affect_symlink_referent]
.label_53:
	mov	r14d, 0x10
	jmp	.label_56
.label_48:
	test	r15d, r15d
	je	.label_65
	mov	byte ptr [rip + affect_symlink_referent],  1
.label_56:
	mov	r15, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rip + optind]
	mov	edx, ebp
	sub	edx, ecx
	cmp	r15, 1
	mov	esi, 1
	mov	edi, 1
	adc	edi, 0
	test	r13b, r13b
	cmovne	edi, esi
	cmp	edx, edi
	jl	.label_58
	test	r15, r15
	jne	.label_46
	test	r13b, r13b
	je	.label_63
	mov	qword ptr [rip + specified_context],  0
	test	r12b, r12b
	je	.label_60
	xor	al, 1
	jne	.label_60
	mov	edi, OFFSET FLAT:main.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rip + root_dev_ino],  rax
	test	rax, rax
	je	.label_69
	mov	ecx, dword ptr [rip + optind]
	jmp	.label_71
.label_60:
	mov	qword ptr [rip + root_dev_ino],  0
.label_71:
	movsxd	rax, ecx
	lea	rdi, [rbx + rax*8]
	or	r14d, 8
	xor	edx, edx
	mov	esi, r14d
	call	xfts_open
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	call	rpl_fts_read
	mov	r13, rax
	mov	r15b, 1
	test	r13, r13
	je	.label_84
	mov	bl, 1
	jmp	.label_70
.label_89:
	mov	qword ptr [r13 + 0x20], 1
	mov	edx, 1
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
	mov	r15b, 1
	jmp	.label_39
.label_54:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_100
.label_51:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_93
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	rax, qword ptr [r13 + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	r12, qword ptr [r13 + 0x38]
	movzx	eax, word ptr [r13 + 0x70]
	mov	ecx, eax
	dec	ecx
	movzx	ecx, cx
	mov	r15b, 1
	cmp	ecx, 9
	ja	.label_110
	jmp	qword ptr [(rcx * 8) + label_42]
.label_1057:
	mov	r15b, 1
	cmp	byte ptr [rip + recurse],  1
	jne	.label_35
	mov	rax, qword ptr [rip + root_dev_ino]
	mov	r15b, 1
	test	rax, rax
	je	.label_39
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_39
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_39
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [r12], 0x2f
	jne	.label_107
	cmp	byte ptr [r12 + 1], 0
	je	.label_51
.label_107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_57
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_64:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
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
	mov	rsi, r13
	call	rpl_fts_set
	mov	rdi, rbx
	call	rpl_fts_read
	movzx	ebx, byte ptr [rsp + 0x17]
	jmp	.label_39
.label_1059:
	mov	r14d, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	jmp	.label_72
.label_1062:
	cmp	qword ptr [r13 + 0x58], 0
	jne	.label_86
	cmp	qword ptr [r13 + 0x20], 0
	je	.label_89
.label_86:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	jmp	.label_72
.label_1058:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	cycle_warning_required
	mov	r15b, 1
	test	al, al
	je	.label_35
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_39
.label_1060:
	mov	r15b, 1
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_35
	jmp	.label_39
.label_1061:
	mov	ebp, dword ptr [r13 + 0x40]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	esi, ebp
.label_72:
	call	error
.label_35:
	mov	ax, word ptr [r13 + 0x70]
.label_110:
	movzx	eax, ax
	cmp	eax, 6
	jne	.label_38
	test	r15b, r15b
	je	.label_38
	mov	rax, qword ptr [rip + root_dev_ino]
	test	rax, rax
	je	.label_38
	mov	rcx, qword ptr [r13 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_38
	mov	rcx, qword ptr [r13 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_38
	cmp	byte ptr [r12], 0x2f
	jne	.label_52
	cmp	byte ptr [r12 + 1], 0
	je	.label_54
.label_52:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r12
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_57
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
.label_100:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_68
	nop	dword ptr [rax + rax]
.label_38:
	test	r15b, r15b
	je	.label_68
	mov	byte ptr [rsp + 0x17], bl
	cmp	byte ptr [rip + verbose],  1
	jne	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r12
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
.label_73:
	mov	rax, qword ptr [rsp + 0x18]
	mov	edi, dword ptr [rax + 0x2c]
	mov	qword ptr [rsp + 0x20], 0
	mov	rbp, qword ptr [rip + specified_context]
	movzx	eax, byte ptr [rip + affect_symlink_referent]
	test	rbp, rbp
	je	.label_87
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	mov	rdx, rbp
	je	.label_91
	call	setfileconat
	jmp	.label_94
.label_87:
	test	al, al
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsi, rbx
	lea	rdx, [rsp + 0x20]
	je	.label_95
	call	getfileconat
	jmp	.label_98
.label_91:
	call	lsetfileconat
.label_94:
	test	eax, eax
	je	.label_99
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x2c], eax
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_104
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	rsi, rbp
	call	quote_n
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x2c]
	mov	rdx, r14
	mov	rcx, r12
	mov	r8, rbp
	call	error
	jmp	.label_99
.label_95:
	call	lgetfileconat
.label_98:
	test	eax, eax
	jns	.label_112
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0x3d
	jne	.label_34
.label_112:
	mov	rbp, qword ptr [rsp + 0x20]
	test	rbp, rbp
	je	.label_36
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbp
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	esi, 0x5f
	xor	eax, eax
	jmp	.label_80
.label_36:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	jmp	.label_67
.label_34:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
.label_80:
	mov	rdx, r14
.label_67:
	call	error
.label_99:
	movzx	ebx, byte ptr [rsp + 0x17]
.label_68:
	movzx	eax, byte ptr [rip + recurse]
	test	al, al
	jne	.label_62
	mov	edx, 4
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	rpl_fts_set
.label_62:
	test	r15b, r15b
	setne	r15b
.label_39:
	and	r15b, bl
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_read
	mov	r13, rax
	test	r13, r13
	mov	ebx, r15d
	jne	.label_70
.label_84:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	je	.label_75
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_75:
	mov	rdi, qword ptr [rsp + 0x18]
	call	rpl_fts_close
	test	eax, eax
	je	.label_85
	mov	ebx, dword ptr [rbx]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_85:
	movzx	eax, r15b
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_105:
	cmp	eax, 0xffffff7d
	je	.label_96
	cmp	eax, 0xffffff7e
	jne	.label_97
	xor	edi, edi
	call	usage
.label_97:
	mov	edi, 1
	call	usage
.label_96:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_16
	mov	edx, OFFSET FLAT:label_14
	mov	r8d, OFFSET FLAT:label_101
	mov	r9d, OFFSET FLAT:label_102
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_58:
	xor	edi, edi
	cmp	ecx, ebp
	jge	.label_108
	mov	esi, OFFSET FLAT:label_109
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movsxd	rax, ebp
	mov	rdi, qword ptr [rbx + rax*8 - 8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	edi, 1
	call	usage
.label_46:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	jmp	.label_45
.label_63:
	movsxd	rax, ecx
	inc	ecx
	mov	dword ptr [rip + optind],  ecx
	mov	rax, qword ptr [rbx + rax*8]
	mov	qword ptr [rip + specified_context],  rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + specified_context]
	call	quote
.label_45:
	mov	rcx, rax
	mov	edi, 1
	mov	esi, 0x5f
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_69:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_59
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_57
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_108:
	mov	esi, OFFSET FLAT:label_66
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
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_76
	jmp	.label_77
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
.label_77:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402740
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402750
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_118
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_114
	cmp	dword ptr [rbp], 0x20
	jne	.label_114
.label_118:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_116
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_113
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_115
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_116:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_115:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_117
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
	#Procedure 0x402820

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_119
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_121
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_123
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_121
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_124
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_124:
	mov	rbx, r14
.label_121:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_119:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_120
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4028d0
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
	#Procedure 0x402910
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
	#Procedure 0x402920
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
	#Procedure 0x402930
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
	#Procedure 0x402970
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
	#Procedure 0x402990
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_125
	test	rdx, rdx
	je	.label_125
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_125:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029c0
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
	#Procedure 0x402a40

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
	jmp	.label_167
	nop	
.label_206:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_192
	or	al, dl
	jne	.label_192
	test	dil, 1
	jne	.label_205
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_192
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_167
	jmp	.label_192
.label_1079:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_213
	test	rbp, rbp
	je	.label_148
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_148:
	mov	r14d, 1
	jmp	.label_217
.label_1080:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_162
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_161
.label_213:
	xor	r14d, r14d
.label_217:
	mov	eax, OFFSET FLAT:label_162
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_163
	nop	
.label_167:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_237
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_193]
.label_1081:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_248
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_126
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_1082:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_136
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_136
	xor	r14d, r14d
	nop	
.label_152:
	cmp	r14, rbp
	jae	.label_146
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_146:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_152
.label_136:
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
	jmp	.label_161
.label_1074:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_161
.label_1077:
	mov	al, 1
.label_1075:
	mov	r12b, 1
.label_1078:
	test	r12b, 1
	mov	cl, 1
	je	.label_178
	mov	ecx, eax
.label_178:
	mov	al, cl
.label_1076:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_180
	test	rbp, rbp
	je	.label_185
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_185:
	mov	r14d, 1
	jmp	.label_186
.label_180:
	xor	r14d, r14d
.label_186:
	mov	ecx, OFFSET FLAT:label_126
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_163:
	mov	sil, r12b
.label_161:
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
	jmp	.label_196
	nop	word ptr cs:[rax + rax]
.label_198:
	inc	r12
.label_196:
	cmp	r11, -1
	je	.label_221
	cmp	r12, r11
	jne	.label_225
	jmp	.label_228
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_171
.label_225:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_238
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_241
	cmp	r11, -1
	jne	.label_241
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_241:
	cmp	rbx, r11
	jbe	.label_252
.label_238:
	xor	esi, esi
.label_165:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_127
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_132]
.label_1022:
	test	r12, r12
	jne	.label_139
	jmp	.label_135
	nop	word ptr cs:[rax + rax]
.label_252:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_150
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_165
	jmp	.label_164
.label_150:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_165
.label_1026:
	xor	eax, eax
	cmp	r11, -1
	je	.label_172
	test	r12, r12
	jne	.label_176
	cmp	r11, 1
	je	.label_135
	xor	r13d, r13d
	jmp	.label_131
.label_1015:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_182
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_164
	cmp	r8d, 2
	jne	.label_188
	mov	eax, r9d
	and	al, 1
	jne	.label_188
	cmp	r14, rbp
	jae	.label_190
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_190:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_194
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_194:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_199:
	add	r14, 3
	mov	r9b, 1
.label_188:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_204
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_204:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_211
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_211
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_211
	cmp	r14, rbp
	jae	.label_189
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_189:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_160
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_160:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_131
.label_1016:
	mov	bl, 0x62
	jmp	.label_223
.label_1017:
	mov	cl, 0x74
	jmp	.label_138
.label_1018:
	mov	bl, 0x76
	jmp	.label_223
.label_1019:
	mov	bl, 0x66
	jmp	.label_223
.label_1020:
	mov	cl, 0x72
	jmp	.label_138
.label_1023:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_233
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_155
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
	jae	.label_244
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_244:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_129
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_129:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_134
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_134:
	add	r14, 3
	xor	r9d, r9d
.label_233:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_131
.label_1024:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_142
	cmp	r8d, 2
	jne	.label_139
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_139
	jmp	.label_155
.label_1025:
	cmp	r8d, 2
	jne	.label_157
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_155
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_195
.label_127:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_166
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_151
.label_172:
	test	r12, r12
	jne	.label_187
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_187
.label_135:
	mov	dl, 1
.label_1021:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_155
	xor	eax, eax
	mov	r13b, dl
.label_131:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_197
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_200
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_197:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_202
.label_200:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_177
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_209
	nop	dword ptr [rax]
.label_202:
	test	sil, sil
.label_209:
	mov	ebx, r15d
	je	.label_141
	jmp	.label_215
.label_177:
	mov	ebx, r15d
	jmp	.label_215
.label_182:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_198
	xor	r15d, r15d
	jmp	.label_139
.label_157:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_138
	xor	eax, eax
	mov	r15b, 0x5c
.label_195:
	xor	r13d, r13d
	jmp	.label_141
.label_138:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_155
.label_223:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_131
	nop	
.label_215:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_164
	cmp	r8d, 2
	jne	.label_234
	mov	eax, r9d
	and	al, 1
	jne	.label_234
	cmp	r14, rbp
	jae	.label_240
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_240:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_247
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_247:
	add	r14, 3
	mov	r9b, 1
.label_234:
	cmp	r14, rbp
	jae	.label_242
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_242:
	inc	r14
	jmp	.label_222
.label_166:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_133
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_133:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_212
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_128:
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
	je	.label_158
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_173
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_154
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_183
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_147:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_235
	bt	rsi, rdx
	jb	.label_155
.label_235:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_147
.label_183:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_227
	xor	r13d, r13d
.label_227:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_128
	jmp	.label_175
.label_211:
	xor	r13d, r13d
	jmp	.label_131
.label_187:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_131
.label_142:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_139
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_139
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_139
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_220
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_224
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_230
	cmp	r14, rbp
	jae	.label_231
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_231:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_239
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_239:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_201
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_201:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_218
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_218:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_224:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_131
.label_139:
	xor	eax, eax
.label_176:
	xor	r13d, r13d
	jmp	.label_131
.label_212:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_170:
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
	je	.label_140
	cmp	rbp, -1
	je	.label_156
	cmp	rbp, -2
	je	.label_158
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_159
	xor	r13d, r13d
.label_159:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_170
	jmp	.label_175
.label_158:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_169
	lea	rax, [r10 + r12]
.label_208:
	cmp	byte ptr [rax + rsi], 0
	je	.label_169
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_208
.label_169:
	mov	qword ptr [rsp + 0x40], rsi
.label_173:
	xor	r13d, r13d
	jmp	.label_154
.label_156:
	xor	r13d, r13d
.label_140:
	mov	r10, qword ptr [rsp + 0x28]
.label_154:
	mov	r12, qword ptr [rsp + 0x40]
.label_175:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_151:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_191
	test	al, al
	je	.label_191
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_131
.label_191:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_207
	nop	word ptr [rax + rax]
.label_174:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_207:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_214
	test	sil, 1
	je	.label_144
	cmp	r14, rbp
	jae	.label_216
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_216:
	inc	r14
	xor	esi, esi
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_164
	cmp	r8d, 2
	jne	.label_226
	mov	eax, r9d
	and	al, 1
	jne	.label_226
	cmp	r14, rbp
	jae	.label_229
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_229:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_232
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_232:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_210
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_210:
	add	r14, 3
	mov	r9b, 1
.label_226:
	cmp	r14, rbp
	jae	.label_246
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_246:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_250
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_130
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_130:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_144:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_141
	test	r9b, 1
	je	.label_143
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_243
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_149
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_149:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_168
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_168:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_143
	nop	word ptr cs:[rax + rax]
.label_243:
	mov	rbx, rcx
.label_143:
	cmp	r14, rbp
	jae	.label_174
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_174
	nop	
.label_141:
	test	r9b, 1
	je	.label_181
	and	al, 1
	jne	.label_181
	cmp	r14, rbp
	jae	.label_184
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_184:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_203
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_203:
	add	r14, 2
	xor	r9d, r9d
.label_181:
	mov	ebx, r15d
.label_222:
	cmp	r14, rbp
	jae	.label_236
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_236:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_198
.label_220:
	xor	r13d, r13d
	jmp	.label_131
	nop	word ptr cs:[rax + rax]
.label_228:
	mov	rcx, r12
.label_171:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_206
	or	al, dl
	jne	.label_206
	mov	r11, rcx
	jmp	.label_164
.label_155:
	mov	eax, 2
.label_153:
	mov	qword ptr [rsp + 0x38], rax
.label_164:
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
.label_219:
	mov	r14, rax
.label_145:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_192:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_179
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_137
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_137
	inc	rdx
	nop	dword ptr [rax + rax]
.label_251:
	cmp	r14, rbp
	jae	.label_249
	mov	byte ptr [rcx + r14], al
.label_249:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_251
	jmp	.label_137
.label_205:
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
	jmp	.label_219
.label_179:
	mov	rcx, qword ptr [rsp + 0x10]
.label_137:
	cmp	r14, rbp
	jae	.label_145
	mov	byte ptr [rcx + r14], 0
	jmp	.label_145
.label_230:
	mov	eax, 5
	jmp	.label_153
.label_237:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x403870
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
	#Procedure 0x403940
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
	je	.label_253
	mov	qword ptr [rax], rbx
.label_253:
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
	#Procedure 0x403a30
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_254
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_256:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_256
.label_254:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_257
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_258], OFFSET FLAT:slot0
.label_257:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_255
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_255:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ae0

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
	js	.label_259
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_262
	cmp	r12d, 0x7fffffff
	je	.label_264
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
	jne	.label_260
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_260:
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
.label_262:
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
	jbe	.label_265
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_261
.label_265:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_263
	mov	rdi, r14
	call	free
.label_263:
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
.label_261:
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
.label_259:
	call	abort
.label_264:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403ca0
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0
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
	#Procedure 0x403cd0
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
	#Procedure 0x403cf0

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
	je	.label_266
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
.label_266:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d60
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
	je	.label_267
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
.label_267:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403dd0

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
	je	.label_268
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
.label_268:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e40
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
	je	.label_269
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
.label_269:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403eb0
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
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
	#Procedure 0x403f20
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
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
	#Procedure 0x403f90

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
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
	#Procedure 0x403ff0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
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
	#Procedure 0x404050

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
	je	.label_273
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
.label_273:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4040f0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_274
	test	rdx, rdx
	je	.label_274
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_274:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x404160
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_275
	test	rdx, rdx
	je	.label_275
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_275:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_276
	test	rsi, rsi
	je	.label_276
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_276:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404240
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_270]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_271]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_272]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_277
	test	rsi, rsi
	je	.label_277
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
.label_277:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4042c0
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
	#Procedure 0x4042e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404300

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
	#Procedure 0x404320

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
	jne	.label_283
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_279
	cmp	ecx, 0x55
	jne	.label_278
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_278
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_278
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_278
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_278
	cmp	byte ptr [rax + 5], 0
	jne	.label_278
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_285
	mov	eax, OFFSET FLAT:label_286
	jmp	.label_282
.label_279:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_278
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_278
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_278
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_278
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_278
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_278
	cmp	byte ptr [rax + 7], 0
	je	.label_284
.label_278:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_162
	mov	eax, OFFSET FLAT:label_126
.label_282:
	cmove	rax, rcx
.label_283:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_284:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_280
	mov	eax, OFFSET FLAT:label_281
	jmp	.label_282
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043f0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rdx, [rsp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_57
	call	__lxstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_287
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_287:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440

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
	je	.label_288
	mov	edx, OFFSET FLAT:label_298
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_304
.label_288:
	mov	edx, OFFSET FLAT:label_305
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_304:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_291
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
	mov	esi, OFFSET FLAT:label_306
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_293
	jmp	qword ptr [(r12 * 8) + label_294]
.label_1099:
	add	rsp, 8
	jmp	.label_292
.label_293:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
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
	jmp	.label_292
.label_1100:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_289
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
.label_1101:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_302
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
.label_1102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_299
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
.label_1103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_296
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
	jmp	.label_292
.label_1104:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
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
	jmp	.label_292
.label_1105:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
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
	jmp	.label_292
.label_1106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_300
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
	jmp	.label_292
.label_1108:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_303
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
	jmp	.label_292
.label_1107:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_290
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
.label_292:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_307:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_307
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_313
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_315
.label_313:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_315:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_310
	cmp	r10d, 0x29
	jae	.label_312
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_314
.label_312:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_314:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_310
	cmp	r10d, 0x29
	jae	.label_309
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_311
.label_309:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_311:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_310
	cmp	r10d, 0x29
	jae	.label_320
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_308
.label_320:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_308:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_310
	cmp	r10d, 0x29
	jae	.label_318
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_319
.label_318:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_319:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_310
	cmp	r10d, 0x29
	jae	.label_316
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_317
.label_316:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_317:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_310
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_310
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_310
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_310
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_310:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_321
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_321:
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
	#Procedure 0x404a50
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_322
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_323
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_14
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ad0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_326
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_327
	test	rax, rax
	je	.label_326
.label_327:
	pop	rbx
	ret	
.label_326:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b10

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_328
	test	rax, rax
	je	.label_329
.label_328:
	pop	rbx
	ret	
.label_329:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b30
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_330
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_331
	test	rbx, rbx
	jne	.label_331
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_331:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_332
	test	rax, rax
	je	.label_330
.label_332:
	pop	rbx
	ret	
.label_330:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b80

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_333
	test	rbx, rbx
	jne	.label_333
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_333:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_335
	test	rax, rax
	je	.label_334
.label_335:
	pop	rbx
	ret	
.label_334:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404bb0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_339
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_341
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_336
.label_339:
	test	rcx, rcx
	jne	.label_342
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_342:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_337
.label_336:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_338
	test	rbx, rbx
	jne	.label_338
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_338:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_340
	test	rax, rax
	je	.label_341
.label_340:
	pop	rbx
	ret	
.label_341:
	call	xalloc_die
.label_337:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_343
	test	rax, rax
	je	.label_344
.label_343:
	pop	rbx
	ret	
.label_344:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_347
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_349
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_346
	call	free
	xor	eax, eax
	jmp	.label_348
.label_347:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_345
	mov	qword ptr [rsi], rbx
.label_346:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_348
	test	rax, rax
	je	.label_345
.label_348:
	pop	rbx
	ret	
.label_345:
	call	xalloc_die
.label_349:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ce0
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
	je	.label_351
	test	r14, r14
	je	.label_350
.label_351:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_350:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_352
	call	rpl_calloc
	test	rax, rax
	je	.label_352
	pop	rcx
	ret	
.label_352:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

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
	je	.label_353
	test	r15, r15
	je	.label_354
.label_353:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_354:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d90
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
	je	.label_356
	test	r15, r15
	je	.label_355
.label_356:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_355:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_111
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_359
	pop	rcx
	ret	
.label_359:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_358
	mov	edi, OFFSET FLAT:label_360
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_362
	call	__assert_fail
.label_358:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:
	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_363
	cmp	ecx, 0x11
	jne	.label_364
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_363:
	ret	
.label_364:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e70

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_365
	test	rsi, rsi
	mov	ecx, 1
	je	.label_366
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_366
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_365:
	mov	ecx, 1
.label_366:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0

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
	jae	.label_390
	mov	eax, ebx
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_390
	test	bl, 0x12
	je	.label_390
	mov	edi, 0x80
	call	malloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_368
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
	je	.label_371
	mov	r13d, ebx
	lea	rbx, [r12 + 8]
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_392:
	call	strlen
	cmp	rax, rbp
	cmova	rbp, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_392
	inc	rbp
	mov	ebx, r13d
.label_371:
	cmp	rbp, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rbp
	add	rsi, 0x100
	mov	qword ptr [r15 + 0x30], rsi
	xor	edi, edi
	call	realloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_399
	mov	qword ptr [rsp + 0x10], r15
	mov	qword ptr [r15 + 0x20], rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	r13, qword ptr [r12]
	xor	r12d, r12d
	test	r13, r13
	je	.label_401
	mov	edi, 0x110
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_403
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
.label_401:
	mov	byte ptr [rsp + 0xf], 1
	mov	qword ptr [rsp + 0x28], r14
	test	r14, r14
	je	.label_370
	mov	rax, qword ptr [rsp + 0x10]
	mov	al, byte ptr [rax + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_370:
	xor	r14d, r14d
	test	r13, r13
	je	.label_388
	test	bh, 8
	mov	qword ptr [rsp + 0x18], r12
	jne	.label_393
	xor	ebp, ebp
	xor	r15d, r15d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_374:
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	cmp	rbx, 3
	jb	.label_382
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	jne	.label_382
	nop	dword ptr [rax]
.label_400:
	cmp	byte ptr [r13 + rbx - 2], 0x2f
	jne	.label_382
	dec	rbx
	cmp	rbx, 1
	ja	.label_400
	nop	word ptr cs:[rax + rax]
.label_382:
	mov	qword ptr [rsp + 0x20], r15
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r15, rax
	mov	r14, rbp
	test	r15, r15
	je	.label_404
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
	je	.label_372
	mov	word ptr [r15 + 0x70], 0xb
	mov	qword ptr [r15 + 0xa8], 2
	jmp	.label_391
.label_372:
	xor	edx, edx
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
.label_391:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_396
	mov	r14, r15
	mov	qword ptr [r15 + 0x10], rbx
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_375
.label_396:
	mov	qword ptr [r15 + 0x10], 0
	test	rbx, rbx
	mov	r14, r15
	je	.label_375
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], r15
	mov	r14, rbx
.label_375:
	inc	r12
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + 8]
	add	rax, 8
	mov	qword ptr [rsp + 0x30], rax
	test	r13, r13
	mov	rbp, r14
	jne	.label_374
	jmp	.label_395
.label_390:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_398:
	xor	eax, eax
.label_368:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_399:
	mov	rdi, qword ptr [r15 + 0x20]
	jmp	.label_373
.label_393:
	xor	r15d, r15d
	xor	ebx, ebx
	xor	r12d, r12d
	nop	
.label_377:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r13
	call	strlen
	mov	rbp, rax
	lea	rdi, [rbp + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_381
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
	jne	.label_386
	mov	word ptr [rbx + 0x70], 0xb
	mov	qword ptr [rbx + 0xa8], 2
	jmp	.label_402
.label_386:
	xor	edx, edx
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
.label_402:
	mov	rax, qword ptr [rsp + 0x28]
	test	rax, rax
	je	.label_405
	mov	r14, rbx
	mov	qword ptr [rbx + 0x10], r15
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_369
.label_405:
	mov	qword ptr [rbx + 0x10], 0
	test	r15, r15
	mov	r14, rbx
	je	.label_369
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbx
	mov	r14, r15
.label_369:
	mov	rax, qword ptr [rsp + 0x30]
	mov	r13, qword ptr [rax + r12*8 + 8]
	inc	r12
	test	r13, r13
	mov	r15, r14
	jne	.label_377
.label_395:
	cmp	qword ptr [rsp + 0x28], 0
	je	.label_379
	cmp	r12, 2
	jb	.label_379
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r12
	call	fts_sort
	mov	r14, rax
.label_379:
	mov	r12, qword ptr [rsp + 0x18]
.label_388:
	mov	edi, 0x110
	call	malloc
	test	rax, rax
	je	.label_397
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
	je	.label_389
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	jne	.label_406
	jmp	.label_367
.label_403:
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_376
.label_397:
	mov	r15, qword ptr [rsp + 0x10]
	mov	qword ptr [r15], 0
	jmp	.label_367
.label_389:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r15 + 0x58], rax
	test	rax, rax
	je	.label_367
	mov	rdi, rax
	call	cycle_check_init
.label_406:
	mov	eax, dword ptr [r15 + 0x48]
	test	ax, 0x204
	jne	.label_378
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_380
	mov	edi, OFFSET FLAT:label_383
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_385
.label_381:
	mov	r14, r15
.label_404:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rsp + 0x18]
.label_367:
	test	r14, r14
	je	.label_387
	nop	dword ptr [rax]
.label_394:
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	je	.label_384
	call	closedir
.label_384:
	mov	rdi, r14
	call	free
	test	rbx, rbx
	mov	r14, rbx
	jne	.label_394
.label_387:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [r15 + 0x20]
.label_376:
	mov	rdi, rbp
.label_373:
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_398
.label_380:
	mov	edi, dword ptr [r15 + 0x2c]
	mov	esi, OFFSET FLAT:label_383
	xor	eax, eax
	call	openat_safer
.label_385:
	mov	dword ptr [r15 + 0x28], eax
	test	eax, eax
	jns	.label_378
	or	byte ptr [r15 + 0x48], 4
.label_378:
	mov	rdi, r15
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r15
	jmp	.label_368
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405500

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
	jne	.label_407
	test	al, 1
	je	.label_407
	mov	dl, 1
.label_407:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_414
	and	eax, 2
	jne	.label_414
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	r8d, 0x100
	mov	rcx, rbx
	call	__fxstatat
	test	eax, eax
	je	.label_408
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_412
.label_414:
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__xstat
	test	eax, eax
	je	.label_408
	call	__errno_location
	mov	r14, rax
	mov	eax, dword ptr [r14]
	cmp	eax, 2
	jne	.label_412
	mov	rsi, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	rdx, rbx
	call	__lxstat
	test	eax, eax
	je	.label_410
	mov	eax, dword ptr [r14]
.label_412:
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
.label_409:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_408:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_411
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_409
	cmp	ecx, 0x4000
	jne	.label_415
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_413
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_413
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_413:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ecx, dword ptr [r15 + 0x108]
	mov	ax, 1
	cmp	cl, 0x2e
	jne	.label_409
	mov	edx, ecx
	shr	edx, 8
	test	dl, dl
	je	.label_416
	cmp	dl, 0x2e
	jne	.label_409
	test	ecx, 0xff0000
	jne	.label_409
.label_416:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_409
.label_411:
	mov	ax, 8
	jmp	.label_409
.label_415:
	mov	ax, 3
	jmp	.label_409
.label_410:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_409
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

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
	jae	.label_422
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r12 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_423
	lea	r13, [r12 + 0x10]
	mov	rdi, qword ptr [r13]
	shl	rsi, 3
	call	realloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_423
	mov	qword ptr [r13], rdi
	jmp	.label_426
.label_422:
	mov	rdi, qword ptr [r12 + 0x10]
	add	r12, 0x10
	mov	r13, r12
.label_426:
	test	rbx, rbx
	je	.label_420
	nop	dword ptr [rax]
.label_419:
	mov	qword ptr [rdi], rbx
	add	rdi, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_419
	mov	rdi, qword ptr [r13]
.label_420:
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r15
	call	qsort
	mov	r8, qword ptr [r13]
	mov	rbx, qword ptr [r8]
	cmp	r14, 1
	mov	rcx, rbx
	je	.label_427
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rbx + 0x10], rcx
	mov	rcx, r14
	add	rcx, -2
	je	.label_418
	lea	rsi, [r8 + 8]
	lea	rdx, [r14 - 3]
	and	ecx, 3
	cmp	rdx, 3
	jae	.label_421
	mov	rdx, rsi
	jmp	.label_424
.label_423:
	mov	rdi, qword ptr [r12 + 0x10]
	call	free
	mov	qword ptr [r12 + 0x10], 0
	mov	qword ptr [r12 + 0x38], 0
	jmp	.label_428
.label_421:
	lea	rdi, [rcx + 2]
	sub	rdi, r14
	nop	dword ptr [rax + rax]
.label_417:
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
	jne	.label_417
.label_424:
	test	rcx, rcx
	je	.label_418
	add	rdx, 8
	neg	rcx
	nop	dword ptr [rax + rax]
.label_425:
	mov	rax, qword ptr [rdx - 8]
	mov	rsi, qword ptr [rdx]
	mov	qword ptr [rax + 0x10], rsi
	add	rdx, 8
	inc	rcx
	jne	.label_425
.label_418:
	mov	rcx, qword ptr [r8 + r14*8 - 8]
.label_427:
	mov	qword ptr [rcx + 0x10], 0
.label_428:
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
	#Procedure 0x405820

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_434
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_432
	nop	word ptr cs:[rax + rax]
.label_443:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_440
	mov	rbx, qword ptr [rdi + 8]
.label_440:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_443
	jmp	.label_444
.label_432:
	mov	rbx, rdi
.label_444:
	mov	rdi, rbx
	call	free
.label_434:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_446
	nop	word ptr cs:[rax + rax]
.label_431:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_429
	call	closedir
.label_429:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_431
.label_446:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_437
	xor	ebp, ebp
	test	al, 4
	jne	.label_438
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebp, ebp
	test	eax, eax
	je	.label_442
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_442:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebp, ebp
	je	.label_445
	jmp	.label_438
.label_437:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebp, ebp
	test	edi, edi
	js	.label_438
	call	close
.label_445:
	test	eax, eax
	je	.label_438
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_438:
	lea	rbx, [r14 + 0x60]
	jmp	.label_430
	nop	dword ptr [rax + rax]
.label_435:
	mov	edi, eax
	call	close
.label_430:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_433
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_435
	jmp	.label_430
.label_433:
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_436
	call	hash_free
.label_436:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_439
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_441
	call	hash_free
	jmp	.label_441
.label_439:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_441:
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebp, ebp
	je	.label_447
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_447:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405990

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
	je	.label_458
	mov	eax, dword ptr [r14 + 0x48]
	xor	ebx, ebx
	test	ah, 0x20
	jne	.label_458
	movzx	ecx, word ptr [r15 + 0x74]
	mov	word ptr [r15 + 0x74], 3
	cmp	ecx, 1
	je	.label_505
	movzx	edx, cx
	cmp	edx, 2
	jne	.label_506
	mov	ecx, dword ptr [r15 + 0x70]
	mov	esi, ecx
	and	esi, 0xfffe
	cmp	esi, 0xc
	jne	.label_508
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_448
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_448
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_450
	mov	edi, OFFSET FLAT:label_383
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_492
.label_505:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	rbx, r15
	jmp	.label_458
.label_506:
	lea	r12, [r15 + 0x70]
	mov	ecx, dword ptr [r15 + 0x70]
	jmp	.label_461
.label_508:
	lea	r12, [r15 + 0x70]
.label_461:
	movzx	esi, cx
	cmp	esi, 1
	jne	.label_465
	cmp	edx, 4
	je	.label_467
	test	al, 0x40
	je	.label_469
	mov	rdx, qword ptr [r15 + 0x78]
	cmp	rdx, qword ptr [r14 + 0x18]
	jne	.label_467
.label_469:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_472
	test	ah, 0x10
	jne	.label_475
	mov	rcx, qword ptr [r15 + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, r15
	call	fts_safe_changedir
	test	eax, eax
	je	.label_455
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r15 + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_477
	nop	word ptr cs:[rax + rax]
.label_465:
	mov	rbx, qword ptr [r15 + 0x10]
	test	rbx, rbx
	je	.label_482
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_486
	movzx	eax, word ptr [rbx + 0x74]
	cmp	eax, 4
	mov	r15, rbx
	je	.label_465
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_456
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_488
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_488
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_491
	mov	edi, OFFSET FLAT:label_383
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_495
.label_497:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_477:
	test	rax, rax
	jne	.label_497
	jmp	.label_455
.label_467:
	test	ecx, 0x20000
	je	.label_500
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_500:
	mov	rbx, qword ptr [r14 + 8]
	test	rbx, rbx
	je	.label_502
	nop	word ptr cs:[rax + rax]
.label_507:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_504
	call	closedir
.label_504:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_507
	mov	qword ptr [r14 + 8], 0
.label_502:
	mov	word ptr [r15 + 0x70], 6
.label_485:
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
	mov	rbx, r15
	jmp	.label_458
.label_482:
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_509
	mov	qword ptr [r14], rbx
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	rbx, rax
	test	rbx, rbx
	je	.label_452
	mov	rdi, r15
	call	free
	jmp	.label_456
.label_486:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	mov	eax, dword ptr [r14 + 0x48]
	je	.label_466
	or	eax, 0x2000
	mov	dword ptr [r14 + 0x48], eax
	xor	ebx, ebx
	jmp	.label_458
.label_466:
	test	ax, 0x102
	je	.label_462
	mov	rdi, qword ptr [r14 + 0x58]
	test	rdi, rdi
	je	.label_463
	call	hash_free
	jmp	.label_463
.label_475:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
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
	mov	qword ptr [r14 + 8], 0
.label_472:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_478
.label_455:
	mov	rbx, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_456
.label_478:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_458
	cmp	dword ptr [r15 + 0x40], 0
	je	.label_485
	movzx	eax, word ptr [r12]
	cmp	eax, 4
	je	.label_485
	mov	word ptr [r12], 7
	jmp	.label_485
.label_450:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_383
	xor	eax, eax
	call	openat_safer
.label_492:
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_489
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_448
.label_452:
	xor	ebx, ebx
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_458
	mov	rbx, qword ptr [r15 + 8]
.label_509:
	mov	qword ptr [r14], rbx
	mov	rdi, r15
	call	free
	cmp	qword ptr [rbx + 0x58], -1
	je	.label_493
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 0xb
	je	.label_481
	mov	rax, qword ptr [rbx + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [rbx + 0x58], 0
	je	.label_494
	movzx	eax, word ptr [rbx + 0x72]
	test	al, 2
	jne	.label_496
	test	al, 1
	jne	.label_464
	mov	rsi, qword ptr [rbx + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_501
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_503
.label_493:
	mov	rdi, rbx
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	ebx, ebx
	jmp	.label_458
.label_489:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
	jmp	.label_448
.label_462:
	mov	rdi, qword ptr [r14 + 0x58]
	call	free
.label_463:
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
	je	.label_451
	cmp	rbp, r15
	jne	.label_453
	cmp	byte ptr [rbx + 0x109], 0
	je	.label_451
.label_453:
	inc	rbp
	mov	rdi, rbp
	call	strlen
	mov	r12, rax
	lea	rdx, [r12 + 1]
	mov	rdi, r15
	mov	rsi, rbp
	call	memmove
	mov	qword ptr [rbx + 0x60], r12
.label_451:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	qword ptr [rbx + 0x30], rax
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_459
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [r14 + 0x58], rax
	jmp	.label_471
.label_459:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [r14 + 0x58], rax
	test	rax, rax
	je	.label_471
	mov	rdi, rax
	call	cycle_check_init
	jmp	.label_471
.label_494:
	mov	rdi, r14
	call	restore_initial_cwd
.label_503:
	test	eax, eax
	je	.label_464
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_464
.label_496:
	mov	eax, dword ptr [r14 + 0x48]
	lea	rbp, [rbx + 0x44]
	test	al, 4
	jne	.label_480
	test	ah, 2
	mov	r15d, dword ptr [rbx + 0x44]
	jne	.label_484
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_480
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_480
.label_491:
	mov	edi, dword ptr [r14 + 0x2c]
	mov	esi, OFFSET FLAT:label_383
	xor	eax, eax
	call	openat_safer
.label_495:
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_470
	or	byte ptr [rbx + 0x72], 2
	jmp	.label_488
.label_470:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
.label_488:
	mov	word ptr [rbx + 0x74], 3
.label_456:
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
.label_471:
	mov	r15, rbx
.label_448:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_499
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_449
	cmp	rax, 2
	jne	.label_481
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_498
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_498
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	filesystem_type
	cmp	rax, 0x52654973
	je	.label_449
	cmp	rax, 0x58465342
	je	.label_449
.label_498:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_499
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_449
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_449
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_449:
	mov	ax, word ptr [r15 + 0x70]
.label_499:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_454
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_490
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_490:
	movzx	eax, word ptr [r14 + 0x48]
	test	ax, 0x102
	je	.label_457
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_460
	movups	xmm0, xmmword ptr [r15 + 0x78]
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], r15
	mov	rdi, qword ptr [r14 + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	rbp, rax
	cmp	rbp, rbx
	je	.label_468
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	je	.label_460
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [r15], rax
	jmp	.label_473
.label_454:
	mov	rbx, r15
	jmp	.label_458
.label_457:
	mov	rdi, qword ptr [r14 + 0x58]
	lea	rsi, [r15 + 0x78]
	call	cycle_check
	test	al, al
	je	.label_468
	mov	qword ptr [r15], r15
.label_473:
	mov	word ptr [r15 + 0x70], 2
	mov	rbx, r15
	jmp	.label_458
.label_468:
	mov	rbx, r15
	jmp	.label_458
.label_460:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	ebx, ebx
	jmp	.label_458
.label_484:
	mov	esi, dword ptr [r14 + 0x2c]
	cmp	esi, r15d
	jne	.label_479
	cmp	esi, -0x64
	jne	.label_481
.label_479:
	lea	rdi, [r14 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_483
	mov	edi, eax
	call	close
.label_483:
	mov	dword ptr [r14 + 0x2c], r15d
.label_480:
	mov	edi, dword ptr [rbp]
	call	close
.label_464:
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 2
	je	.label_487
	mov	eax, dword ptr [rbx + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [rbx + 0x70], cx
	jne	.label_487
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
.label_487:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	rbx, rax
.label_458:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406150

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_511
	movups	xmm0, xmmword ptr [rsi + 0x78]
	movaps	xmmword ptr [rsp], xmm0
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_512
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_511:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_510
	cmp	qword ptr [rax + 0x58], 0
	js	.label_510
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_512
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_510
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_510
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	qword ptr [rcx], rax
.label_510:
	add	rsp, 0x18
	ret	
.label_512:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061e0

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
	je	.label_527
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_513
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_513
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_513:
	test	eax, eax
	sete	r14b
	jmp	.label_518
.label_527:
	xor	r14d, r14d
.label_518:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 4
	jne	.label_519
	test	r13d, r13d
	mov	qword ptr [rsp], r12
	jns	.label_520
	mov	ecx, r14d
	xor	cl, 1
	jne	.label_520
	and	eax, 0x200
	je	.label_520
	lea	rbp, [r15 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_520
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r14b, 1
.label_520:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_530
	mov	eax, dword ptr [r15 + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_532
	xor	eax, eax
	mov	rdi, rbx
	mov	esi, edx
	call	open_safer
	jmp	.label_517
.label_519:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_514
	and	eax, 0x200
	je	.label_514
	mov	edi, r13d
	call	close
	jmp	.label_514
.label_532:
	mov	edi, dword ptr [r15 + 0x2c]
	xor	eax, eax
	mov	rsi, rbx
	call	openat_safer
.label_517:
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_514
.label_530:
	mov	eax, dword ptr [r15 + 0x48]
	test	al, 2
	jne	.label_528
	test	rbx, rbx
	je	.label_526
	cmp	byte ptr [rbx], 0x2e
	jne	.label_526
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_526
	cmp	byte ptr [rbx + 2], 0
	jne	.label_526
.label_528:
	lea	rdx, [rsp + 8]
	mov	edi, 1
	mov	esi, r12d
	call	__fxstat
	test	eax, eax
	jne	.label_531
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_515
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_515
	mov	eax, dword ptr [r15 + 0x48]
.label_526:
	test	ah, 2
	jne	.label_521
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_522
.label_521:
	mov	esi, dword ptr [r15 + 0x2c]
	cmp	esi, r12d
	jne	.label_523
	cmp	esi, -0x64
	jne	.label_524
.label_523:
	test	r14b, r14b
	je	.label_525
	test	al, 4
	jne	.label_516
	test	esi, esi
	js	.label_516
	mov	edi, esi
	jmp	.label_529
.label_515:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_531:
	mov	ebp, 0xffffffff
.label_522:
	test	r13d, r13d
	jns	.label_514
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_514
.label_525:
	lea	rdi, [r15 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_516
	mov	edi, eax
.label_529:
	call	close
.label_516:
	mov	dword ptr [r15 + 0x2c], r12d
	xor	ebp, ebp
.label_514:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_524:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4063d0

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
	je	.label_604
	call	dirfd
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	js	.label_533
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
	jmp	.label_538
.label_604:
	mov	eax, dword ptr [r15 + 0x48]
	mov	ecx, eax
	and	ecx, 0x204
	mov	edi, 0xffffff9c
	cmp	ecx, 0x200
	jne	.label_548
	mov	edi, dword ptr [r15 + 0x2c]
.label_548:
	mov	rsi, qword ptr [r13 + 0x30]
	xor	edx, edx
	test	al, 0x10
	je	.label_554
	test	al, 1
	je	.label_555
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_554
.label_555:
	mov	edx, 0x20000
.label_554:
	lea	rcx, [rsp + 4]
	call	opendirat
	mov	qword ptr [r13 + 0x18], rax
	test	rax, rax
	je	.label_577
	mov	dword ptr [rsp], ebx
	lea	rcx, [r15 + 0x48]
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 0xb
	mov	rbp, r13
	mov	r12, rcx
	jne	.label_563
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rbp
	call	fts_stat
	mov	rbx, rbp
	mov	word ptr [rbp + 0x70], ax
	jmp	.label_568
.label_533:
	mov	rdi, qword ptr [r13 + 0x18]
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
.label_577:
	xor	r14d, r14d
	cmp	ebx, 3
	jne	.label_545
	mov	word ptr [r13 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r13 + 0x40], eax
	jmp	.label_551
.label_563:
	mov	rbx, rbp
	test	byte ptr [rcx + 1], 1
	je	.label_568
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
	je	.label_580
	mov	edi, 0x18
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_586
	mov	rax, rbx
	movups	xmm0, xmmword ptr [rax + 0x78]
	movups	xmmword ptr [rbp], xmm0
	mov	qword ptr [rbp + 0x10], rax
	mov	rdi, qword ptr [r15 + 0x58]
	mov	rsi, rbp
	call	hash_insert
	mov	r14, rax
	cmp	r14, rbp
	je	.label_568
	mov	rdi, rbp
	call	free
	test	r14, r14
	je	.label_586
	mov	rax, qword ptr [r14 + 0x10]
	mov	rcx, rbx
	mov	qword ptr [rcx], rax
	mov	word ptr [rcx + 0x70], 2
	jmp	.label_568
.label_580:
	mov	rdi, qword ptr [r15 + 0x58]
	lea	rsi, [rbp + 0x78]
	call	cycle_check
	test	al, al
	je	.label_568
	mov	rax, rbx
	mov	qword ptr [rax], rax
	mov	word ptr [rax + 0x70], 2
.label_568:
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
	je	.label_535
	mov	eax, dword ptr [rbp]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_539
	cmp	qword ptr [r13 + 0x88], 2
	jne	.label_539
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, r13
	call	filesystem_type
	cmp	rax, 0x9f9f
	jle	.label_591
	cmp	rax, 0x9fa0
	je	.label_539
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	je	.label_539
	cmp	rax, 0x5346414f
	je	.label_539
	jmp	.label_535
.label_586:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_551
.label_591:
	test	rax, rax
	je	.label_539
	cmp	rax, 0x6969
	jne	.label_535
.label_539:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14b, 1
	jmp	.label_542
.label_535:
	cmp	dword ptr [rsp], 3
	sete	bl
	mov	r14d, 0
	jne	.label_546
.label_542:
	mov	r15, r13
	test	byte ptr [rbp + 1], 2
	mov	ebp, dword ptr [rsp + 4]
	je	.label_549
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebp
	call	rpl_fcntl
	mov	ebp, eax
	mov	dword ptr [rsp + 4], ebp
.label_549:
	test	ebp, ebp
	js	.label_556
	xor	ecx, ecx
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	edx, ebp
	call	fts_safe_changedir
	test	eax, eax
	je	.label_561
.label_556:
	and	bl, r14b
	cmp	bl, 1
	jne	.label_562
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
.label_562:
	or	byte ptr [r15 + 0x72], 1
	mov	rdi, qword ptr [r15 + 0x18]
	call	closedir
	mov	rbx, r15
	mov	qword ptr [r15 + 0x18], 0
	mov	rbp, r12
	mov	eax, dword ptr [rbp]
	test	ah, 2
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_567
	mov	edi, dword ptr [rsp + 4]
	test	edi, edi
	js	.label_567
	call	close
.label_567:
	mov	r13, rbx
	mov	qword ptr [r13 + 0x18], 0
.label_546:
	mov	dword ptr [rsp + 0xc], 0
.label_538:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r13 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	test	byte ptr [rbp], 4
	je	.label_572
	mov	rax, qword ptr [r15 + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x20], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_572:
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
.label_610:
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	je	.label_544
	mov	qword ptr [rsp + 0x90], rax
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_606:
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	mov	rdi, rbx
	call	readdir
	mov	r14, rax
	test	r14, r14
	je	.label_598
	mov	rcx, r13
	mov	r13, r14
	add	r13, 0x13
	test	byte ptr [rbp], 0x20
	jne	.label_565
	cmp	byte ptr [r13], 0x2e
	jne	.label_565
	movzx	eax, byte ptr [r14 + 0x14]
	cmp	al, 0x2e
	je	.label_603
	test	al, al
	je	.label_575
	jmp	.label_565
	nop	dword ptr [rax]
.label_603:
	cmp	byte ptr [r14 + 0x15], 0
	jne	.label_565
.label_575:
	mov	r13, rcx
	mov	rbx, qword ptr [r13 + 0x18]
	test	rbx, rbx
	jne	.label_606
	jmp	.label_608
	nop	dword ptr [rax + rax]
.label_565:
	mov	qword ptr [rsp + 0x50], r12
	mov	rdi, r13
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_541
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
	jae	.label_550
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
	jmp	.label_566
	nop	dword ptr [rax + rax]
.label_550:
	mov	rax, qword ptr [rsp + 0x80]
	lea	rsi, [rax + rbx]
	add	rsi, qword ptr [rbp + 0x30]
	jb	.label_569
	mov	qword ptr [rbp + 0x30], rsi
	mov	rdi, r13
	call	realloc
	test	rax, rax
	je	.label_571
	mov	qword ptr [rbp + 0x20], rax
	cmp	r13, rax
	je	.label_583
	mov	rdx, qword ptr [rsp + 0x38]
	add	rax, rdx
	mov	rbp, qword ptr [rsp + 0x28]
	test	byte ptr [rbp], 4
	mov	rcx, qword ptr [rsp + 0x20]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_573
.label_583:
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x38]
.label_573:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + 0x30]
	sub	rax, rdx
.label_566:
	add	rbx, rdx
	mov	r13, rbp
	jb	.label_582
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
	jne	.label_587
	mov	rax, qword ptr [rsp + 0x68]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_592
	nop	
.label_587:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x68]
	call	memmove
	mov	rbp, r13
.label_592:
	mov	edx, dword ptr [rbp]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	je	.label_595
	mov	eax, edx
	and	eax, 0x400
	jne	.label_595
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	fts_stat
	mov	rbp, r13
	mov	word ptr [r12 + 0x70], ax
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_602
	nop	dword ptr [rax + rax]
.label_595:
	and	edx, 0x18
	movzx	ecx, byte ptr [r14 + 0x12]
	xor	eax, eax
	cmp	edx, 0x18
	mov	edx, 0
	jne	.label_600
	cmp	cl, 4
	setne	bl
	test	cl, cl
	setne	dl
	and	dl, bl
.label_600:
	mov	word ptr [r12 + 0x70], 0xb
	lea	esi, [rcx - 1]
	cmp	esi, 0xb
	mov	r14, qword ptr [rsp + 0x40]
	ja	.label_607
	mov	eax, dword ptr [(rcx * 4) + label_536]
.label_607:
	mov	dword ptr [r12 + 0x90], eax
	cmp	dl, 1
	mov	eax, 1
	adc	rax, 0
	mov	qword ptr [r12 + 0xa8], rax
.label_602:
	mov	qword ptr [r12 + 0x10], 0
	mov	rcx, qword ptr [rsp + 0x50]
	test	rcx, rcx
	mov	rax, r12
	je	.label_576
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rcx
.label_576:
	mov	rbx, rax
	cmp	r14, 0x2710
	jne	.label_553
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rax], 0
	jne	.label_553
	mov	esi, dword ptr [rsp + 4]
	mov	rdi, qword ptr [rsp + 0x30]
	call	filesystem_type
	cmp	rax, 0x6969
	je	.label_558
	cmp	rax, 0x1021994
	je	.label_558
	mov	dword ptr [rsp + 8], 0
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	mov	rbp, r13
	je	.label_553
	mov	al, 1
	mov	dword ptr [rsp + 8], eax
	jmp	.label_553
.label_558:
	mov	dword ptr [rsp + 8], 0
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_553:
	inc	r14
	cmp	qword ptr [rsp + 0x58], r14
	mov	rax, r12
	mov	r13, qword ptr [rsp + 0x30]
	mov	r12, rbx
	ja	.label_610
	jmp	.label_544
.label_598:
	mov	eax, dword ptr [r15]
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x40]
	je	.label_584
	mov	dword ptr [r13 + 0x40], eax
	mov	rax, qword ptr [rsp + 0x70]
	or	rax, r14
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r13 + 0x70], cx
.label_584:
	mov	rdi, qword ptr [r13 + 0x18]
	test	rdi, rdi
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_544
	call	closedir
	mov	qword ptr [r13 + 0x18], 0
	jmp	.label_544
.label_608:
	mov	r15, qword ptr [rsp + 0x10]
	mov	r14, qword ptr [rsp + 0x40]
.label_544:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	je	.label_581
	mov	rcx, qword ptr [r15 + 8]
	mov	rax, qword ptr [r15 + 0x20]
	jmp	.label_585
	nop	word ptr cs:[rax + rax]
.label_590:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_585:
	test	rcx, rcx
	je	.label_589
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_590
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_590
.label_589:
	cmp	qword ptr [r12 + 0x58], 0
	js	.label_581
	mov	rcx, r12
	nop	word ptr cs:[rax + rax]
.label_599:
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rcx + 0x108]
	cmp	rdx, rsi
	je	.label_594
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
.label_594:
	mov	qword ptr [rcx + 0x38], rax
	mov	rdx, qword ptr [rcx + 0x10]
	test	rdx, rdx
	jne	.label_597
	mov	rdx, qword ptr [rcx + 8]
.label_597:
	cmp	qword ptr [rdx + 0x58], 0
	mov	rcx, rdx
	jns	.label_599
.label_581:
	test	byte ptr [rbp], 4
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_601
	mov	rax, qword ptr [rsp + 0x20]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	cmp	rdx, qword ptr [r15 + 0x30]
	cmove	rcx, rax
	test	r14, r14
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_601:
	cmp	qword ptr [rsp + 0x70], 0
	jne	.label_543
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_543
	cmp	dword ptr [rsp], 1
	je	.label_609
	test	r14, r14
	jne	.label_543
.label_609:
	cmp	qword ptr [r13 + 0x58], 0
	je	.label_534
	mov	rsi, qword ptr [r13 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_501
	mov	rdi, r15
	call	fts_safe_changedir
	jmp	.label_540
.label_534:
	mov	rdi, r15
	call	restore_initial_cwd
.label_540:
	mov	rcx, rbp
	test	eax, eax
	je	.label_543
	mov	word ptr [r13 + 0x70], 7
	or	byte ptr [rcx + 1], 0x20
	xor	r14d, r14d
	test	r12, r12
	je	.label_545
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_557:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_552
	call	closedir
.label_552:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_557
	jmp	.label_545
.label_543:
	test	r14, r14
	je	.label_559
	mov	eax, dword ptr [rsp + 8]
	test	al, 1
	jne	.label_560
	cmp	r14, 2
	jb	.label_564
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_564
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	jmp	.label_545
.label_559:
	cmp	dword ptr [rsp], 3
	jne	.label_570
	movzx	eax, word ptr [r13 + 0x70]
	cmp	eax, 4
	je	.label_570
	movzx	eax, ax
	cmp	eax, 7
	je	.label_570
	mov	word ptr [r13 + 0x70], 6
.label_570:
	xor	r14d, r14d
	test	r12, r12
	je	.label_545
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_579:
	mov	rbp, qword ptr [r12 + 0x10]
	mov	rdi, qword ptr [r12 + 0x18]
	test	rdi, rdi
	je	.label_574
	call	closedir
.label_574:
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_579
	jmp	.label_545
.label_560:
	mov	rbx, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx], OFFSET FLAT:fts_compare_ino
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	fts_sort
	mov	r14, rax
	mov	qword ptr [rbx], 0
	jmp	.label_545
.label_564:
	mov	r14, r12
	jmp	.label_545
.label_561:
	mov	al, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	rbp, r12
	mov	r13, rax
	jmp	.label_538
.label_582:
	mov	rdi, r12
	call	free
	mov	rbp, qword ptr [rsp + 0x50]
	test	rbp, rbp
	mov	r14, qword ptr [rsp + 0x30]
	je	.label_593
	nop	word ptr [rax + rax]
.label_596:
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rdi, qword ptr [rbp + 0x18]
	test	rdi, rdi
	je	.label_578
	call	closedir
.label_578:
	mov	rdi, rbp
	call	free
	test	rbx, rbx
	mov	rbp, rbx
	jne	.label_596
.label_593:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [r13 + 1], 0x20
	mov	dword ptr [r15], 0x24
	jmp	.label_551
.label_569:
	mov	rdi, r13
	call	free
	mov	qword ptr [rbp + 0x20], 0
	mov	dword ptr [r15], 0x24
	jmp	.label_605
.label_571:
	mov	rdi, qword ptr [rbp + 0x20]
	call	free
	mov	qword ptr [rbp + 0x20], 0
.label_605:
	mov	qword ptr [rsp + 0x48], r12
.label_541:
	mov	r12, qword ptr [rsp + 0x30]
	mov	r14d, dword ptr [r15]
	mov	rdi, qword ptr [rsp + 0x48]
	call	free
	mov	rbx, qword ptr [rsp + 0x50]
	test	rbx, rbx
	je	.label_537
	nop	word ptr cs:[rax + rax]
.label_547:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_588
	call	closedir
.label_588:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_547
.label_537:
	mov	rbx, r12
	mov	rdi, qword ptr [rbx + 0x18]
	call	closedir
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x70], 7
	mov	rax, qword ptr [rsp + 0x28]
	or	byte ptr [rax + 1], 0x20
	mov	dword ptr [r15], r14d
.label_551:
	xor	r14d, r14d
.label_545:
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
	#Procedure 0x406e80

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_611
	test	ah, 2
	jne	.label_615
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_616
.label_615:
	mov	esi, dword ptr [rbx + 0x2c]
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_614
	mov	edi, eax
	call	close
.label_614:
	mov	dword ptr [rbx + 0x2c], 0xffffff9c
.label_611:
	xor	eax, eax
.label_616:
	movzx	ebp, al
	add	rbx, 0x60
	jmp	.label_612
	nop	word ptr [rax + rax]
.label_613:
	mov	edi, eax
	call	close
.label_612:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_617
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_613
	jmp	.label_612
.label_617:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f00

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_618
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_618:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f30
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
	jne	.label_625
	mov	r15, qword ptr [r13]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [r13 + 0x49], 0x20
	jne	.label_619
	movzx	ecx, word ptr [r15 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_633
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_619
	mov	rax, qword ptr [r15 + 0x10]
	jmp	.label_619
.label_625:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_619
.label_633:
	mov	rbx, qword ptr [r13 + 8]
	test	rbx, rbx
	je	.label_628
	nop	dword ptr [rax]
.label_620:
	mov	rbp, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_626
	call	closedir
.label_626:
	mov	rdi, rbx
	call	free
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_620
.label_628:
	mov	ebx, 1
	cmp	r12d, 0x1000
	jne	.label_622
	or	byte ptr [r13 + 0x49], 0x10
	mov	ebx, 2
.label_622:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_630
	mov	rax, qword ptr [r15 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_630
	mov	eax, dword ptr [r13 + 0x48]
	test	al, 4
	jne	.label_630
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_621
	mov	edi, OFFSET FLAT:label_383
	xor	eax, eax
	mov	esi, edx
	call	open_safer
	jmp	.label_623
.label_630:
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
.label_619:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_621:
	mov	edi, dword ptr [r13 + 0x2c]
	mov	esi, OFFSET FLAT:label_383
	xor	eax, eax
	call	openat_safer
.label_623:
	mov	r15d, eax
	test	r15d, r15d
	js	.label_632
	mov	rdi, r13
	mov	esi, ebx
	call	fts_build
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r13 + 0x49], 2
	jne	.label_629
	mov	edi, r15d
	call	fchdir
	test	eax, eax
	je	.label_635
	mov	ebx, dword ptr [r14]
	mov	edi, r15d
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_619
.label_632:
	mov	qword ptr [r13 + 8], 0
	xor	eax, eax
	jmp	.label_619
.label_629:
	mov	esi, dword ptr [r13 + 0x2c]
	cmp	esi, r15d
	jne	.label_624
	cmp	esi, -0x64
	jne	.label_627
.label_624:
	lea	rdi, [r13 + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_631
	mov	edi, eax
	call	close
.label_631:
	mov	dword ptr [r13 + 0x2c], r15d
	jmp	.label_634
.label_635:
	mov	edi, r15d
	call	close
.label_634:
	mov	rax, qword ptr [r13 + 8]
	jmp	.label_619
.label_627:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070e0

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
	#Procedure 0x4070f0

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_636
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_636:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407110

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
	je	.label_639
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_641
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
	je	.label_642
.label_641:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_638
	mov	rax, qword ptr [rax + 8]
	jmp	.label_639
.label_638:
	mov	r12b, 1
	mov	r14, rbp
.label_642:
	xor	eax, eax
	test	r15d, r15d
	js	.label_639
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_639
	test	r12b, r12b
	je	.label_640
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_640
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_637
	cmp	rax, rbp
	je	.label_640
	call	abort
.label_637:
	mov	rdi, rbp
	call	free
.label_640:
	mov	rax, qword ptr [rsp]
.label_639:
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
	#Procedure 0x407210

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
	#Procedure 0x407220

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
	#Procedure 0x407230

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
	#Procedure 0x407260

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
	je	.label_643
	cmp	r15, -2
	jb	.label_643
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_643
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_643:
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
	#Procedure 0x4072c0

	.globl getfileconat
	.type getfileconat, @function
getfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_644
	cmp	byte ptr [rax], 0x2f
	jne	.label_647
.label_644:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_648:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_647:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_645
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_645
	mov	rdi, r14
	call	free
.label_645:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_650
	test	ebx, ebx
	js	.label_651
	cmp	dword ptr [rsp], ebx
	jne	.label_651
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_648
.label_651:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_649
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_648
.label_649:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_646
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_648
.label_650:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_646:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073c0

	.globl lgetfileconat
	.type lgetfileconat, @function
lgetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_652
	cmp	byte ptr [rax], 0x2f
	jne	.label_656
.label_652:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_655:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_656:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_653
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_653
	mov	rdi, r14
	call	free
.label_653:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_658
	test	ebx, ebx
	js	.label_659
	cmp	dword ptr [rsp], ebx
	jne	.label_659
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_655
.label_659:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_657
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_655
.label_657:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_654
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_655
.label_658:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_654:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074c0

	.globl setfileconat
	.type setfileconat, @function
setfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_660
	cmp	byte ptr [rax], 0x2f
	jne	.label_664
.label_660:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_663:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_664:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_661
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_661
	mov	rdi, r14
	call	free
.label_661:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_666
	test	ebx, ebx
	js	.label_667
	cmp	dword ptr [rsp], ebx
	jne	.label_667
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_663
.label_667:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_665
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_663
.label_665:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_662
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_663
.label_666:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_662:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075c0

	.globl lsetfileconat
	.type lsetfileconat, @function
lsetfileconat:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0xfc8
	mov	rax, rsi
	mov	ebx, edi
	cmp	ebx, -0x64
	je	.label_668
	cmp	byte ptr [rax], 0x2f
	jne	.label_673
.label_668:
	call	__errno_location
	mov	dword ptr [rax], 0x5f
.label_671:
	mov	eax, 0xffffffff
	add	rsp, 0xfc8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_673:
	lea	r15, [rsp]
	mov	rdi, r15
	mov	esi, ebx
	mov	rdx, rax
	call	openat_proc_name
	mov	r14, rax
	test	r14, r14
	je	.label_669
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	cmp	r14, r15
	je	.label_669
	mov	rdi, r14
	call	free
.label_669:
	lea	rdi, [rsp]
	call	save_cwd
	test	eax, eax
	jne	.label_674
	test	ebx, ebx
	js	.label_675
	cmp	dword ptr [rsp], ebx
	jne	.label_675
	lea	rdi, [rsp]
	call	free_cwd
	call	__errno_location
	mov	dword ptr [rax], 9
	jmp	.label_671
.label_675:
	mov	edi, ebx
	call	fchdir
	mov	ebp, eax
	call	__errno_location
	mov	rbx, rax
	test	ebp, ebp
	je	.label_672
	mov	ebp, dword ptr [rbx]
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], ebp
	jmp	.label_671
.label_672:
	mov	dword ptr [rbx], 0x5f
	lea	rdi, [rsp]
	call	restore_cwd
	test	eax, eax
	jne	.label_670
	lea	rdi, [rsp]
	call	free_cwd
	mov	dword ptr [rbx], 0x5f
	jmp	.label_671
.label_674:
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	openat_save_fail
.label_670:
	mov	edi, dword ptr [rbx]
	call	openat_restore_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076c0

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
	jne	.label_677
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_676
	test	cl, cl
	jne	.label_676
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_676
.label_677:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_676
	call	__errno_location
	mov	dword ptr [rax], 0
.label_676:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407720

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x407730

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	cmp	dword ptr [rdi + 0x18], 0x95f616
	jne	.label_678
	mov	rcx, qword ptr [rdi + 0x10]
	test	rcx, rcx
	je	.label_679
	mov	rax, qword ptr [rsi + 8]
	cmp	rax, qword ptr [rdi]
	jne	.label_679
	mov	rdx, qword ptr [rsi]
	mov	al, 1
	cmp	rdx, qword ptr [rdi + 8]
	je	.label_680
.label_679:
	lea	rdx, [rcx + 1]
	mov	qword ptr [rdi + 0x10], rdx
	test	rdx, rcx
	jne	.label_681
	mov	al, 1
	test	rdx, rdx
	je	.label_680
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rdi], rax
.label_681:
	xor	eax, eax
.label_680:
	ret	
.label_678:
	push	rax
	mov	edi, OFFSET FLAT:label_682
	mov	esi, OFFSET FLAT:label_683
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_684
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4077a0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_685
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_685:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_686
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_688
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_687
.label_688:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_687:
	mov	edx, dword ptr [rax]
.label_686:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407870

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_690
	cmp	byte ptr [rax], 0x43
	jne	.label_692
	cmp	byte ptr [rax + 1], 0
	je	.label_689
.label_692:
	mov	esi, OFFSET FLAT:label_691
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_690
.label_689:
	xor	ebx, ebx
.label_690:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078b0
	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:

	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078c0
	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:

	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078d0
	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:

	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078e0
	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:

	mov	rcx, qword ptr [rdi]
	mov	rdi, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	rcx, rdi
	jae	.label_693
	mov	rax, rcx
	not	rax
	add	rdi, rax
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	eax, eax
	test	rdi, rdi
	je	.label_699
	sub	rsi, r8
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_697:
	cmp	qword ptr [rcx], 0
	je	.label_696
	xor	edi, edi
	mov	rdx, rcx
	nop	dword ptr [rax + rax]
.label_698:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_698
	cmp	rdi, rax
	cmova	rax, rdi
.label_696:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_695
	lea	rdx, [rcx + 0x10]
	xor	edi, edi
.label_700:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_700
	cmp	rdi, rax
	cmova	rax, rdi
.label_695:
	add	rcx, 0x20
	add	rsi, -2
	jne	.label_697
.label_699:
	test	r8, r8
	je	.label_693
	cmp	qword ptr [rcx], 0
	je	.label_693
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_694:
	mov	rcx, qword ptr [rcx + 8]
	inc	rdx
	test	rcx, rcx
	jne	.label_694
	cmp	rdx, rax
	cmova	rax, rdx
.label_693:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4079a0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rax, qword ptr [rdi]
	mov	r9, qword ptr [rdi + 8]
	xor	r10d, r10d
	cmp	rax, r9
	mov	ecx, 0
	jae	.label_707
	mov	rcx, rax
	not	rcx
	add	r9, rcx
	shr	r9, 4
	lea	rsi, [r9 + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ecx, ecx
	test	r9, r9
	je	.label_710
	sub	rsi, r8
	xor	ecx, ecx
	xor	r10d, r10d
	nop	
.label_706:
	cmp	qword ptr [rax], 0
	je	.label_702
	mov	rdx, rax
	nop	dword ptr [rax]
.label_709:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_709
	inc	r10
.label_702:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_711
	lea	rdx, [rax + 0x10]
	nop	word ptr [rax + rax]
.label_704:
	inc	rcx
	mov	rdx, qword ptr [rdx + 8]
	test	rdx, rdx
	jne	.label_704
	inc	r10
.label_711:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_706
	jmp	.label_708
.label_710:
	xor	r10d, r10d
.label_708:
	test	r8, r8
	je	.label_707
	cmp	qword ptr [rax], 0
	je	.label_707
	nop	dword ptr [rax]
.label_701:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_701
	inc	r10
.label_707:
	cmp	r10, qword ptr [rdi + 0x18]
	jne	.label_703
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_705
.label_703:
	xor	eax, eax
.label_705:
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60
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
	jae	.label_712
	mov	rdx, rax
	not	rdx
	add	rdi, rdx
	shr	rdi, 4
	lea	rsi, [rdi + 1]
	mov	r8d, esi
	and	r8d, 1
	xor	ebx, ebx
	test	rdi, rdi
	je	.label_715
	sub	rsi, r8
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_723:
	cmp	qword ptr [rax], 0
	je	.label_722
	xor	edi, edi
	mov	rdx, rax
	nop	dword ptr [rax + rax]
.label_726:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_726
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_722:
	cmp	qword ptr [rax + 0x10], 0
	je	.label_724
	lea	rdx, [rax + 0x10]
	xor	edi, edi
.label_721:
	mov	rdx, qword ptr [rdx + 8]
	inc	rdi
	test	rdx, rdx
	jne	.label_721
	cmp	rdi, rbx
	cmova	rbx, rdi
.label_724:
	add	rax, 0x20
	add	rsi, -2
	jne	.label_723
.label_715:
	test	r8, r8
	je	.label_712
	cmp	qword ptr [rax], 0
	je	.label_712
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_713:
	mov	rax, qword ptr [rax + 8]
	inc	rdx
	test	rax, rax
	jne	.label_713
	cmp	rdx, rbx
	cmova	rbx, rdx
.label_712:
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_714
	xor	eax, eax
	mov	rdi, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_725
	xor	eax, eax
	mov	rdi, r15
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r14
	movdqa	xmm2, xmmword ptr [rip + label_717]
	punpckldq	xmm1, xmm2
	movapd	xmm3, xmmword ptr [rip + label_718]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0, qword ptr [rip + label_719]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_720
	mov	al, 1
	mov	rdi, r15
	mov	rcx, r14
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_716
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
	#Procedure 0x407bd0

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
	jae	.label_730
	mov	rbx, qword ptr [r14]
	shl	rax, 4
	mov	rsi, qword ptr [rbx + rax]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_727
	add	rbx, rax
	je	.label_727
	cmp	rsi, r12
	je	.label_729
	xor	r15d, r15d
	nop	
.label_728:
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_731
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	je	.label_727
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	jne	.label_728
.label_729:
	mov	r15, r12
	jmp	.label_727
.label_731:
	mov	r15, qword ptr [rbx]
.label_727:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_730:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c50
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_732
	mov	rcx, qword ptr [rdi]
	mov	rdx, qword ptr [rdi + 8]
	jmp	.label_735
	nop	word ptr cs:[rax + rax]
.label_734:
	add	rcx, 0x10
.label_735:
	cmp	rcx, rdx
	jae	.label_733
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_734
.label_732:
	ret	
.label_733:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407c90
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
	jae	.label_738
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	lea	rdx, [rcx + rax]
	nop	word ptr cs:[rax + rax]
.label_739:
	cmp	qword ptr [rdx], rbx
	mov	rdx, qword ptr [rdx + 8]
	je	.label_736
	test	rdx, rdx
	jne	.label_739
	jmp	.label_737
.label_736:
	test	rdx, rdx
	je	.label_737
	mov	rax, qword ptr [rdx]
	jmp	.label_740
.label_737:
	mov	rdx, qword ptr [r14 + 8]
	lea	rcx, [rcx + rax + 0x10]
	nop	word ptr cs:[rax + rax]
.label_741:
	cmp	rcx, rdx
	mov	eax, 0
	jae	.label_740
	mov	rax, qword ptr [rcx]
	add	rcx, 0x10
	test	rax, rax
	je	.label_741
.label_740:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_738:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d20
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r9, qword ptr [rdi]
	mov	r8, qword ptr [rdi + 8]
	xor	eax, eax
	cmp	r9, r8
	jae	.label_742
	xor	eax, eax
.label_744:
	cmp	qword ptr [r9], 0
	je	.label_743
	test	r9, r9
	je	.label_743
	mov	r8, r9
	nop	
.label_745:
	cmp	rax, rdx
	jae	.label_742
	mov	rcx, qword ptr [r8]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r8, qword ptr [r8 + 8]
	test	r8, r8
	jne	.label_745
	mov	r8, qword ptr [rdi + 8]
.label_743:
	add	r9, 0x10
	cmp	r9, r8
	jb	.label_744
.label_742:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d70
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
	jae	.label_749
	xor	ebx, ebx
.label_748:
	mov	rdi, qword ptr [r13]
	test	rdi, rdi
	je	.label_750
	test	r13, r13
	je	.label_750
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_749
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_747:
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	je	.label_746
	inc	rbx
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	jne	.label_747
	jmp	.label_749
	nop	dword ptr [rax]
.label_746:
	mov	rax, qword ptr [r12 + 8]
	inc	rbx
.label_750:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_748
.label_749:
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
	#Procedure 0x407e10
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_751
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_752:
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
	jne	.label_752
.label_751:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e50
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax, dword ptr [rip + label_753]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0, xmmword ptr [rip + default_tuning]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e70

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
	je	.label_754
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_tuning
	cmove	rbx, rax
	mov	qword ptr [r15 + 0x28], rbx
	cmp	rbx, rax
	je	.label_767
	movss	xmm0, dword ptr [rbx + 8]
	ucomiss	xmm0, dword ptr [rip + label_757]
	jbe	.label_755
	movss	xmm1, dword ptr [rip + label_761]
	ucomiss	xmm1, xmm0
	jbe	.label_755
	movss	xmm1, dword ptr [rbx + 0xc]
	ucomiss	xmm1, dword ptr [rip + label_766]
	jbe	.label_755
	movss	xmm1, dword ptr [rbx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_755
	addss	xmm1, dword ptr [rip + label_757]
	ucomiss	xmm0, xmm1
	jbe	.label_755
	movss	xmm0, dword ptr [rbx + 4]
	movss	xmm2, dword ptr [rip + label_762]
	ucomiss	xmm2, xmm0
	jb	.label_755
	ucomiss	xmm0, xmm1
	jbe	.label_755
.label_767:
	cmp	byte ptr [rbx + 0x10], 0
	jne	.label_768
	mov	eax, r12d
	and	eax, 1
	test	r12, r12
	js	.label_756
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, r12
	jmp	.label_759
.label_756:
	shr	r12, 1
	or	rax, r12
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_759:
	divss	xmm0, dword ptr [rbx + 8]
	movss	xmm1, dword ptr [rip + label_764]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	r12, xmm0
	ucomiss	xmm0, xmm1
	cmovae	r12, rcx
	ucomiss	xmm0, dword ptr [rip + label_765]
	jae	.label_755
.label_768:
	cmp	r12, 0xa
	mov	ebx, 0xa
	cmovae	rbx, r12
	or	rbx, 1
	jmp	.label_763
	nop	
.label_760:
	add	rbx, 2
.label_763:
	cmp	rbx, -1
	je	.label_755
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_758
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_769:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_758
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_769
.label_758:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_760
	mov	rax, rbx
	shr	rax, 0x3c
	jne	.label_755
	mov	qword ptr [r15 + 0x10], rbx
	test	rbx, rbx
	je	.label_755
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [r15], rax
	test	rax, rax
	je	.label_755
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
	jmp	.label_754
.label_755:
	mov	rdi, r15
	call	free
	xor	eax, eax
.label_754:
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
	#Procedure 0x408090

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
	#Procedure 0x4080a0

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4080b0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_772
	nop	word ptr cs:[rax + rax]
.label_775:
	add	r14, 0x10
.label_772:
	cmp	r14, rax
	jae	.label_774
	cmp	qword ptr [r14], 0
	je	.label_775
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_776
	nop	word ptr cs:[rax + rax]
.label_771:
	test	cl, 1
	je	.label_770
	mov	rdi, qword ptr [rbx]
	call	rax
	mov	rax, qword ptr [r15 + 0x40]
.label_770:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [r15 + 0x48], rbx
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_771
.label_776:
	test	cl, cl
	je	.label_773
	mov	rdi, qword ptr [r14]
	call	rax
.label_773:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 8]
	jmp	.label_775
.label_774:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408160

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_780
	cmp	qword ptr [r14 + 0x20], 0
	je	.label_780
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_786
	nop	
.label_779:
	add	r15, 0x10
.label_786:
	cmp	r15, rax
	jae	.label_780
	mov	rdi, qword ptr [r15]
	test	rdi, rdi
	je	.label_779
	test	r15, r15
	je	.label_779
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [r15 + 8]
	jmp	.label_781
.label_785:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r14 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
.label_781:
	test	rbx, rbx
	jne	.label_785
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_779
.label_780:
	mov	r15, qword ptr [r14]
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_778
	nop	
.label_782:
	add	r15, 0x10
.label_778:
	cmp	r15, rax
	jae	.label_777
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	je	.label_782
	nop	word ptr cs:[rax + rax]
.label_784:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_784
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_782
.label_777:
	mov	rdi, qword ptr [r14 + 0x48]
	test	rdi, rdi
	je	.label_787
.label_783:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_783
.label_787:
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
	#Procedure 0x408230

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
	jne	.label_802
	mov	ecx, esi
	and	ecx, 1
	test	rsi, rsi
	js	.label_790
	cvtsi2ss	xmm0, rsi
	jmp	.label_794
.label_790:
	shr	rsi, 1
	or	rcx, rsi
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_794:
	divss	xmm0, dword ptr [rax + 8]
	movss	xmm1, dword ptr [rip + label_764]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rsi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rsi, rcx
	ucomiss	xmm0, dword ptr [rip + label_765]
	jae	.label_788
.label_802:
	cmp	rsi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rsi
	or	rbx, 1
	jmp	.label_798
	nop	dword ptr [rax + rax]
.label_793:
	add	rbx, 2
.label_798:
	cmp	rbx, -1
	je	.label_788
	cmp	rbx, 0xa
	mov	ecx, 3
	jb	.label_792
	mov	esi, 0xc
	mov	edi, 9
	mov	ecx, 3
	nop	dword ptr [rax + rax]
.label_806:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_792
	lea	rdi, [rdi + rsi + 4]
	add	rcx, 2
	add	rsi, 8
	cmp	rdi, rbx
	jb	.label_806
.label_792:
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	test	rdx, rdx
	je	.label_793
	lea	rax, [rbx - 1]
	movabs	rcx, 0xffffffffffffffe
	cmp	rax, rcx
	ja	.label_788
	mov	bpl, 1
	cmp	rbx, qword ptr [r14 + 0x10]
	je	.label_799
	mov	esi, 0x10
	mov	rdi, rbx
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_788
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
	je	.label_796
	mov	rdi, qword ptr [r14]
	call	free
	movaps	xmm0, xmmword ptr [rsp]
	movups	xmmword ptr [r14], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [r14 + 0x10], xmm0
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	jmp	.label_799
.label_796:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [r14 + 0x48], rax
	mov	r12, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_791
	nop	
.label_800:
	add	r12, 0x10
.label_791:
	cmp	r12, r15
	jae	.label_797
	cmp	qword ptr [r12], 0
	je	.label_800
	mov	rbp, qword ptr [r12 + 8]
	test	rbp, rbp
	je	.label_804
	mov	rsi, qword ptr [r14 + 0x10]
	nop	word ptr cs:[rax + rax]
.label_801:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_795
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_803
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_805
	nop	word ptr [rax + rax]
.label_803:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_805:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_801
.label_804:
	mov	qword ptr [r12 + 8], 0
	jmp	.label_800
.label_797:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, r14
	call	transfer_entries
	test	al, al
	je	.label_789
	mov	rdi, qword ptr [rsp]
	call	free
.label_788:
	xor	ebp, ebp
.label_799:
	mov	eax, ebp
	add	rsp, 0x50
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_795:
	call	abort
.label_789:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4084c0

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
	jae	.label_807
	test	dl, dl
	je	.label_814
	nop	dword ptr [rax]
.label_808:
	cmp	qword ptr [r13], 0
	je	.label_824
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	je	.label_827
	mov	rsi, qword ptr [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_823:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_813
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_820
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_812
	nop	word ptr [rax + rax]
.label_820:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_812:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_823
	mov	rax, qword ptr [r15 + 8]
.label_827:
	mov	qword ptr [r13 + 8], 0
.label_824:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_808
	jmp	.label_807
	nop	word ptr cs:[rax + rax]
.label_814:
	mov	r12, qword ptr [r13]
	test	r12, r12
	je	.label_819
	mov	rbp, qword ptr [r13 + 8]
	test	rbp, rbp
	mov	rsi, qword ptr [r14 + 0x10]
	je	.label_822
	nop	word ptr [rax + rax]
.label_825:
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	qword ptr [r14 + 0x30]
	mov	rsi, qword ptr [r14 + 0x10]
	cmp	rax, rsi
	jae	.label_813
	mov	rdx, qword ptr [r14]
	mov	rcx, qword ptr [rbp + 8]
	shl	rax, 4
	cmp	qword ptr [rdx + rax], 0
	je	.label_816
	mov	rdi, qword ptr [rdx + rax + 8]
	mov	qword ptr [rbp + 8], rdi
	mov	qword ptr [rdx + rax + 8], rbp
	jmp	.label_811
	nop	word ptr [rax + rax]
.label_816:
	add	rdx, rax
	mov	qword ptr [rdx], rbx
	inc	qword ptr [r14 + 0x18]
	mov	qword ptr [rbp], 0
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rbp + 8], rax
	mov	qword ptr [r14 + 0x48], rbp
.label_811:
	test	rcx, rcx
	mov	rbp, rcx
	jne	.label_825
	mov	r12, qword ptr [r13]
.label_822:
	mov	qword ptr [r13 + 8], 0
	mov	rdi, r12
	call	qword ptr [r14 + 0x30]
	mov	rbx, rax
	cmp	rbx, qword ptr [r14 + 0x10]
	jae	.label_826
	mov	rbp, qword ptr [r14]
	shl	rbx, 4
	cmp	qword ptr [rbp + rbx], 0
	je	.label_810
	mov	rax, qword ptr [r14 + 0x48]
	test	rax, rax
	je	.label_815
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r14 + 0x48], rcx
	jmp	.label_818
	nop	dword ptr [rax + rax]
.label_810:
	add	rbp, rbx
	mov	qword ptr [rbp], r12
	inc	qword ptr [r14 + 0x18]
	jmp	.label_817
.label_815:
	mov	edi, 0x10
	call	malloc
	test	rax, rax
	je	.label_821
.label_818:
	mov	qword ptr [rax], r12
	mov	rcx, qword ptr [rbp + rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp + rbx + 8], rax
.label_817:
	mov	qword ptr [r13], 0
	dec	qword ptr [r15 + 0x18]
	mov	rax, qword ptr [r15 + 8]
.label_819:
	add	r13, 0x10
	cmp	r13, rax
	jb	.label_814
.label_807:
	mov	al, 1
.label_809:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_821:
	xor	eax, eax
	jmp	.label_809
.label_813:
	call	abort
.label_826:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4086e0

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
	je	.label_830
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_830
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_834
	cmp	rsi, r14
	je	.label_842
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_828
	mov	rax, qword ptr [r12]
.label_841:
	test	rax, rax
	jne	.label_847
	jmp	.label_834
.label_842:
	mov	rax, r14
.label_847:
	xor	ebp, ebp
	test	r15, r15
	je	.label_835
	mov	qword ptr [r15], rax
	jmp	.label_835
.label_828:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_834
	lea	rbp, [rbx + rbp + 8]
	nop	word ptr [rax + rax]
.label_832:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_857
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_829
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_832
.label_834:
	mov	rcx, qword ptr [r13 + 0x10]
	mov	rax, qword ptr [r13 + 0x18]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_836
	cvtsi2ss	xmm1, rax
	jmp	.label_844
.label_836:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_844:
	mov	rax, qword ptr [r13 + 0x28]
	movss	xmm2, dword ptr [rax + 8]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_848
	cvtsi2ss	xmm0, rcx
	jmp	.label_854
.label_848:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_854:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_837
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_858
	ucomiss	xmm2, dword ptr [rip + label_757]
	jbe	.label_833
	movss	xmm3, dword ptr [rip + label_761]
	ucomiss	xmm3, xmm2
	jbe	.label_833
	movss	xmm3, dword ptr [rax + 0xc]
	ucomiss	xmm3, dword ptr [rip + label_766]
	jbe	.label_833
	movss	xmm3, dword ptr [rax]
	xorps	xmm4, xmm4
	ucomiss	xmm3, xmm4
	jb	.label_833
	addss	xmm3, dword ptr [rip + label_757]
	ucomiss	xmm2, xmm3
	jbe	.label_833
	movss	xmm4, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_762]
	ucomiss	xmm5, xmm4
	jb	.label_833
	ucomiss	xmm4, xmm3
	ja	.label_839
.label_833:
	mov	qword ptr [r13 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	movss	xmm2, dword ptr [rip + label_838]
	jmp	.label_839
.label_858:
	mov	eax, OFFSET FLAT:default_tuning
.label_839:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm1, xmm3
	jbe	.label_837
	cmp	byte ptr [rax + 0x10], 0
	mulss	xmm0, dword ptr [rax + 0xc]
	jne	.label_840
	mulss	xmm0, xmm2
.label_840:
	mov	ebp, 0xffffffff
	ucomiss	xmm0, dword ptr [rip + label_765]
	jae	.label_835
	movss	xmm1, dword ptr [rip + label_764]
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
	je	.label_835
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rdi, r14
	call	qword ptr [r13 + 0x30]
	mov	rbp, rax
	cmp	rbp, qword ptr [r13 + 0x10]
	jae	.label_830
	mov	rbx, qword ptr [r13]
	shl	rbp, 4
	lea	r12, [rbx + rbp]
	mov	rsi, qword ptr [rbx + rbp]
	test	rsi, rsi
	je	.label_837
	cmp	rsi, r14
	mov	rax, r14
	je	.label_831
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	test	al, al
	je	.label_850
	mov	rax, qword ptr [r12]
.label_831:
	test	rax, rax
	jne	.label_843
.label_837:
	cmp	qword ptr [r12], 0
	je	.label_845
	mov	rax, qword ptr [r13 + 0x48]
	test	rax, rax
	je	.label_846
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [r13 + 0x48], rcx
	jmp	.label_849
.label_845:
	mov	qword ptr [r12], r14
	movdqu	xmm0, xmmword ptr [r13 + 0x18]
	paddq	xmm0, xmmword ptr [rip + label_852]
	movdqu	xmmword ptr [r13 + 0x18], xmm0
	jmp	.label_853
.label_846:
	mov	edi, 0x10
	call	malloc
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_835
.label_849:
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [r12 + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r12 + 8], rax
	inc	qword ptr [r13 + 0x20]
.label_853:
	mov	ebp, 1
.label_835:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_857:
	mov	rax, r14
	jmp	.label_841
.label_829:
	mov	rax, qword ptr [rbp]
	jmp	.label_841
.label_850:
	mov	rax, qword ptr [rbx + rbp + 8]
	test	rax, rax
	je	.label_837
	lea	rbp, [rbx + rbp + 8]
.label_856:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_851
	mov	rdi, r14
	call	qword ptr [r13 + 0x38]
	mov	rbp, qword ptr [rbp]
	test	al, al
	jne	.label_855
	mov	rax, qword ptr [rbp + 8]
	add	rbp, 8
	test	rax, rax
	jne	.label_856
	jmp	.label_837
.label_851:
	mov	rax, r14
	jmp	.label_831
.label_855:
	mov	rax, qword ptr [rbp]
	jmp	.label_831
.label_830:
	call	abort
.label_843:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a20

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
	je	.label_859
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_859:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a50

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
	jae	.label_877
	mov	rbp, qword ptr [r15]
	shl	rbx, 4
	mov	rsi, qword ptr [rbp + rbx]
	xor	r12d, r12d
	test	rsi, rsi
	je	.label_867
	lea	r13, [rbp + rbx]
	cmp	rsi, r14
	je	.label_865
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	test	al, al
	je	.label_869
	mov	r14, qword ptr [r13]
.label_865:
	mov	rax, qword ptr [rbp + rbx + 8]
	test	rax, rax
	je	.label_872
	movups	xmm0, xmmword ptr [rax]
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [r15 + 0x48]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [r15 + 0x48], rax
	jmp	.label_862
.label_869:
	mov	rax, qword ptr [rbp + rbx + 8]
	xor	r12d, r12d
	test	rax, rax
	je	.label_867
	lea	rbx, [rbp + rbx + 8]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_861:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r14
	je	.label_878
	mov	rdi, r14
	call	qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx]
	test	al, al
	jne	.label_880
	mov	rax, qword ptr [rcx + 8]
	add	rcx, 8
	test	rax, rax
	mov	rbx, rcx
	jne	.label_861
	jmp	.label_867
.label_872:
	mov	qword ptr [r13], 0
	jmp	.label_862
.label_878:
	mov	rcx, rax
	jmp	.label_871
.label_880:
	mov	r14, qword ptr [rcx]
.label_871:
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbx], rax
	mov	qword ptr [rcx], 0
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [r15 + 0x48], rcx
.label_862:
	xor	r12d, r12d
	test	r14, r14
	je	.label_867
	dec	qword ptr [r15 + 0x20]
	cmp	qword ptr [r13], 0
	jne	.label_868
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_874
	cvtsi2ss	xmm1, rax
	jmp	.label_879
.label_874:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm1, rcx
	addss	xmm1, xmm1
.label_879:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	movss	xmm2, dword ptr [rax]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_864
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	jmp	.label_870
.label_864:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_870:
	movaps	xmm3, xmm2
	mulss	xmm3, xmm0
	ucomiss	xmm3, xmm1
	jbe	.label_868
	mov	ecx, OFFSET FLAT:default_tuning
	cmp	rax, rcx
	je	.label_875
	movss	xmm3, dword ptr [rax + 8]
	ucomiss	xmm3, dword ptr [rip + label_757]
	jbe	.label_863
	movss	xmm4, dword ptr [rip + label_761]
	ucomiss	xmm4, xmm3
	jbe	.label_863
	xorps	xmm4, xmm4
	ucomiss	xmm2, xmm4
	jb	.label_863
	movss	xmm4, dword ptr [rax + 0xc]
	ucomiss	xmm4, dword ptr [rip + label_766]
	jbe	.label_863
	movss	xmm4, dword ptr [rip + label_757]
	addss	xmm4, xmm2
	ucomiss	xmm3, xmm4
	jbe	.label_863
	movss	xmm3, dword ptr [rax + 4]
	movss	xmm5, dword ptr [rip + label_762]
	ucomiss	xmm5, xmm3
	jb	.label_863
	ucomiss	xmm3, xmm4
	ja	.label_860
.label_863:
	mov	qword ptr [r15 + 40], OFFSET FLAT:default_tuning
	mov	eax, OFFSET FLAT:default_tuning
	xorps	xmm2, xmm2
	jmp	.label_860
.label_875:
	mov	eax, OFFSET FLAT:default_tuning
.label_860:
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_868
	mulss	xmm0, dword ptr [rax + 4]
	cmp	byte ptr [rax + 0x10], 0
	jne	.label_876
	mulss	xmm0, dword ptr [rax + 8]
.label_876:
	movss	xmm1, dword ptr [rip + label_764]
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
	jne	.label_868
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_866
	nop	word ptr cs:[rax + rax]
.label_873:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_873
.label_866:
	mov	qword ptr [r15 + 0x48], 0
.label_868:
	mov	r12, r14
.label_867:
	mov	rax, r12
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_877:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0

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
	#Procedure 0x408d20

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d30

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
	jne	.label_881
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_881:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d70

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	cmp	byte ptr [rdi + 0x1c], 0
	jne	.label_882
	mov	ecx, dword ptr [rdi + 0x10]
	mov	edx, dword ptr [rdi + 0x14]
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], ecx
	mov	ecx, dword ptr [rdi + 0x14]
	cmp	ecx, dword ptr [rdi + 0x18]
	jne	.label_883
	mov	byte ptr [rdi + 0x1c], 1
	ret	
.label_883:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rdi + 0x14], ecx
	ret	
.label_882:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x408da0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_81
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_884
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408dd0

	.globl openat_save_fail
	.type openat_save_fail, @function
openat_save_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_885
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e10

	.globl openat_restore_fail
	.type openat_restore_fail, @function
openat_restore_fail:
	push	rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	ebp, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_886
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e50

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_887
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_887:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_888
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_889
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_890
.label_889:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_890:
	mov	ecx, dword ptr [rax]
.label_888:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f10

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
	js	.label_892
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_891
	mov	dword ptr [r14], ebp
	jmp	.label_892
.label_891:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_892:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408f60

	.globl save_cwd
	.type save_cwd, @function
save_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	qword ptr [rbx + 8], 0
	xor	ebp, ebp
	mov	edi, OFFSET FLAT:label_383
	mov	esi, 0x80000
	xor	eax, eax
	call	open_safer
	mov	dword ptr [rbx], eax
	test	eax, eax
	jns	.label_893
	xor	edi, edi
	xor	esi, esi
	call	getcwd
	mov	qword ptr [rbx + 8], rax
	cmp	rax, 1
	sbb	ebp, ebp
.label_893:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fb0

	.globl restore_cwd
	.type restore_cwd, @function
restore_cwd:
	mov	eax, dword ptr [rdi]
	test	eax, eax
	js	.label_894
	mov	edi, eax
	jmp	fchdir
.label_894:
	mov	rdi, qword ptr [rdi + 8]
	jmp	chdir_long
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fd0

	.globl free_cwd
	.type free_cwd, @function
free_cwd:
	push	rbx
	mov	rbx, rdi
	mov	edi, dword ptr [rbx]
	test	edi, edi
	js	.label_895
	call	close
.label_895:
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ff0

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
	ja	.label_896
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
	jmp	.label_897
.label_896:
	mov	eax, ebx
.label_897:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409040

	.globl chdir_long
	.type chdir_long, @function
chdir_long:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rdi
	call	chdir
	mov	ebx, eax
	test	ebx, ebx
	je	.label_923
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 0x24
	jne	.label_907
	mov	rdi, rbp
	call	strlen
	mov	r15, rax
	test	r15, r15
	je	.label_915
	cmp	r15, 0x1000
	jb	.label_898
	add	r15, rbp
	mov	rbx, -1
	nop	word ptr [rax + rax]
.label_909:
	cmp	byte ptr [rbp + rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_909
	mov	r12d, 0xffffff9c
	test	rbx, rbx
	je	.label_913
	cmp	rbx, 2
	jne	.label_916
	lea	rdi, [rbp + 3]
	mov	rdx, r15
	sub	rdx, rdi
	mov	esi, 0x2f
	call	memchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_924
	mov	byte ptr [rbx], 0
	mov	edi, 0xffffff9c
	mov	edx, 0x10900
	xor	eax, eax
	mov	rsi, rbp
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	mov	byte ptr [rbx], 0x2f
	js	.label_925
	nop	word ptr cs:[rax + rax]
.label_905:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_905
	jmp	.label_906
.label_923:
	xor	ebx, ebx
	jmp	.label_907
.label_916:
	mov	edi, 0xffffff9c
	mov	esi, OFFSET FLAT:label_57
	mov	edx, 0x10900
	xor	eax, eax
	call	openat
	mov	r12d, eax
	test	r12d, r12d
	js	.label_925
	add	rbp, rbx
.label_913:
	mov	rbx, rbp
.label_906:
	cmp	byte ptr [rbx], 0x2f
	je	.label_921
	cmp	rbx, r15
	jbe	.label_931
	mov	edi, OFFSET FLAT:label_927
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0xa3
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
.label_932:
	mov	esi, 0x2f
	mov	edx, 0x1000
	mov	rdi, rbx
	call	memrchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_924
	mov	byte ptr [rbp], 0
	mov	rax, rbp
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_908
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_920
	test	r12d, r12d
	js	.label_928
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_902
.label_928:
	mov	r12d, ebx
	mov	byte ptr [rbp], 0x2f
	mov	rbx, rbp
	nop	
.label_929:
	cmp	byte ptr [rbx + 1], 0x2f
	lea	rbx, [rbx + 1]
	je	.label_929
.label_931:
	mov	rax, r15
	sub	rax, rbx
	cmp	rax, 0x1000
	jge	.label_932
	cmp	rbx, r15
	jae	.label_903
	mov	edx, 0x10900
	xor	eax, eax
	mov	edi, r12d
	mov	rsi, rbx
	call	openat
	mov	ebx, eax
	test	ebx, ebx
	js	.label_911
	test	r12d, r12d
	js	.label_912
	mov	edi, r12d
	call	close
	test	eax, eax
	je	.label_912
	jmp	.label_902
.label_924:
	mov	dword ptr [r14], 0x24
	jmp	.label_919
.label_903:
	mov	ebx, r12d
.label_912:
	mov	edi, ebx
	call	fchdir
	test	eax, eax
	je	.label_922
	mov	r12d, ebx
	jmp	.label_911
.label_925:
	mov	ebx, dword ptr [r14]
	jmp	.label_926
.label_922:
	test	ebx, ebx
	js	.label_914
	mov	edi, ebx
	call	close
	test	eax, eax
	mov	ebx, 0
	je	.label_907
	jmp	.label_902
.label_920:
	mov	byte ptr [rbp], 0x2f
.label_911:
	mov	ebx, dword ptr [r14]
	test	r12d, r12d
	js	.label_926
	mov	edi, r12d
	call	close
	test	eax, eax
	jne	.label_902
.label_926:
	mov	dword ptr [r14], ebx
.label_919:
	mov	ebx, 0xffffffff
.label_907:
	mov	eax, ebx
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_914:
	xor	ebx, ebx
	jmp	.label_907
.label_908:
	mov	edi, OFFSET FLAT:label_910
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0xb3
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
.label_902:
	mov	edi, OFFSET FLAT:label_917
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0x40
	mov	ecx, OFFSET FLAT:label_918
	call	__assert_fail
.label_915:
	mov	edi, OFFSET FLAT:label_930
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
.label_898:
	mov	edi, OFFSET FLAT:label_904
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0x7f
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
.label_921:
	mov	edi, OFFSET FLAT:label_899
	mov	esi, OFFSET FLAT:label_900
	mov	edx, 0xa2
	mov	ecx, OFFSET FLAT:label_901
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x409320

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_933
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_934
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_933
.label_934:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_933
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_935
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_935:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_933:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xd0
	mov	ebx, edi
	test	al, al
	je	.label_941
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_941:
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
	ja	.label_944
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_951
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_950
	test	esi, esi
	jne	.label_944
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_945
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_946
.label_944:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_947
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_950
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_954
.label_951:
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_937
.label_950:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_938
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_939
.label_938:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_939:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
.label_940:
	call	fcntl
.label_937:
	mov	ebp, eax
.label_936:
	mov	eax, ebp
	add	rsp, 0xd0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_954:
	cmp	eax, 6
	jne	.label_947
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_949
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_952
.label_947:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_953
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_956
.label_945:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_946:
	mov	edx, dword ptr [rax]
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	jmp	.label_940
.label_949:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_952:
	mov	r14d, dword ptr [rax]
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_943
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	jns	.label_948
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_948
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_936
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	mov	al, 1
	jmp	.label_955
.label_948:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_936
.label_953:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_956:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	jmp	.label_937
.label_943:
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebx
	mov	edx, r14d
	call	fcntl
	mov	ebp, eax
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	sete	al
.label_955:
	test	al, al
	je	.label_936
	test	ebp, ebp
	js	.label_936
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_942
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebp
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_936
.label_942:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	mov	ebp, 0xffffffff
	jmp	.label_936
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409640

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_957
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_957
	test	byte ptr [rbx + 1], 1
	je	.label_957
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_957:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409680

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
	jne	.label_958
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_958
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_959
.label_958:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_959:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_960
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_960:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4096f0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409710

	.globl openat_proc_name
	.type openat_proc_name, @function
openat_proc_name:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdx
	mov	r15d, esi
	mov	rbx, rdi
	cmp	byte ptr [r14], 0
	je	.label_966
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
	test	ecx, ecx
	jne	.label_965
	mov	edi, OFFSET FLAT:label_969
	mov	esi, 0x10900
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_964
	lea	r12, [rsp]
	mov	esi, 1
	mov	edx, 0x20
	mov	ecx, OFFSET FLAT:label_968
	xor	eax, eax
	mov	rdi, r12
	mov	r8d, ebp
	call	__sprintf_chk
	xor	esi, esi
	mov	rdi, r12
	call	access
	cmp	eax, 1
	sbb	eax, eax
	not	eax
	or	eax, 1
	mov	dword ptr [rip + openat_proc_name.proc_status],  eax
	mov	edi, ebp
	call	close
	mov	ecx, dword ptr [rip + openat_proc_name.proc_status]
.label_965:
	xor	eax, eax
	test	ecx, ecx
	js	.label_961
	mov	rdi, r14
	call	strlen
	add	rax, 0x1b
	cmp	rax, 0xfc1
	jb	.label_963
	mov	rdi, rax
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_961
.label_963:
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_962
	xor	eax, eax
	mov	rdi, rbx
	mov	r8d, r15d
	call	__sprintf_chk
	movsxd	rdi, eax
	add	rdi, rbx
	mov	rsi, r14
	call	strcpy
	jmp	.label_967
.label_966:
	mov	byte ptr [rbx], 0
.label_967:
	mov	rax, rbx
.label_961:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_964:
	mov	dword ptr [rip + openat_proc_name.proc_status],  0xffffffff
	xor	eax, eax
	jmp	.label_961
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x409820

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
