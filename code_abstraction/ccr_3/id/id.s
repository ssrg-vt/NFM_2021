	.section	.text
	.align	16
	#Procedure 0x4017b0

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
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_26
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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_14
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_14:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_11
	mov	ecx, OFFSET FLAT:label_12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_12
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_24:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
	#Procedure 0x401990

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_54
	call	setlocale
	mov	edi, OFFSET FLAT:label_59
	mov	esi, OFFSET FLAT:label_60
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_59
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_30
.label_567:
	mov	byte ptr [rip + just_group_list],  1
	nop	
.label_30:
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x46
	jle	.label_69
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_48
	jmp	qword ptr [(rax * 8) + label_29]
.label_569:
	mov	byte ptr [rip + just_group],  1
	jmp	.label_30
.label_572:
	mov	byte ptr [rip + just_user],  1
	jmp	.label_30
.label_573:
	mov	byte ptr [rip + opt_zero],  1
	jmp	.label_30
.label_570:
	mov	byte ptr [rip + use_name],  1
	jmp	.label_30
.label_571:
	mov	byte ptr [rip + use_real],  1
	jmp	.label_30
.label_69:
	cmp	eax, -1
	jne	.label_38
	movzx	esi, byte ptr [rip + just_user]
	movzx	ecx, byte ptr [rip + just_group]
	lea	eax, [rcx + rsi]
	movzx	edx, byte ptr [rip + just_group_list]
	add	eax, edx
	cmp	eax, 2
	jae	.label_40
	movsxd	rax, dword ptr [rip + optind]
	mov	ebx, esi
	or	bl, cl
	or	bl, dl
	jne	.label_45
	mov	bl, byte ptr [rip + use_real]
	test	bl, bl
	jne	.label_46
	cmp	byte ptr [rip + use_name],  1
	je	.label_46
	cmp	byte ptr [rip + opt_zero],  1
	je	.label_49
.label_45:
	movsxd	r15, ebp
	sub	r15, rax
	test	r15d, r15d
	je	.label_61
	cmp	r15d, 1
	setne	byte ptr [rip + multiple_users]
	add	r15, rax
	jmp	.label_58
	nop	
.label_41:
	movsxd	rax, dword ptr [rip + optind]
	inc	rax
	mov	dword ptr [rip + optind],  eax
.label_58:
	cmp	rax, r15
	jae	.label_63
	mov	rdi, qword ptr [r14 + rax*8]
	cmp	byte ptr [rdi], 0
	je	.label_27
	mov	esi, OFFSET FLAT:euid
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
	test	rax, rax
	jne	.label_27
	mov	edi, dword ptr [rip + euid]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_27
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x10]
	mov	dword ptr [rip + euid],  eax
	mov	dword ptr [rip + ruid],  eax
	shr	rax, 0x20
	mov	dword ptr [rip + egid],  eax
	mov	dword ptr [rip + rgid],  eax
	mov	rdi, rbx
	call	print_stuff
	mov	rdi, rbx
	call	free
	jmp	.label_41
	nop	dword ptr [rax]
.label_27:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, dword ptr [rip + optind]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_41
.label_61:
	test	sil, sil
	je	.label_50
	mov	al, byte ptr [rip + use_real]
	test	al, al
	je	.label_51
	jmp	.label_55
.label_50:
	or	cl, dl
	jne	.label_55
.label_51:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	mov	dword ptr [rip + euid],  eax
	cmp	eax, -1
	jne	.label_55
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_62
.label_55:
	cmp	byte ptr [rip + just_user],  1
	jne	.label_64
	mov	al, byte ptr [rip + use_real]
	test	al, al
	jne	.label_65
	jmp	.label_28
.label_64:
	mov	al, byte ptr [rip + just_group]
	test	al, al
	jne	.label_28
.label_65:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getuid
	mov	dword ptr [rip + ruid],  eax
	cmp	eax, -1
	jne	.label_28
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_31
.label_28:
	mov	al, byte ptr [rip + just_user]
	test	al, al
	jne	.label_32
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	mov	dword ptr [rip + egid],  eax
	cmp	eax, -1
	jne	.label_37
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	jne	.label_39
.label_37:
	mov	dword ptr [rbx], 0
	call	getgid
	mov	dword ptr [rip + rgid],  eax
	cmp	eax, -1
	jne	.label_32
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_44
.label_32:
	xor	edi, edi
	call	print_stuff
.label_63:
	movzx	eax, byte ptr [rip + ok]
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_38:
	cmp	eax, 0xffffff7d
	je	.label_47
	cmp	eax, 0xffffff7e
	jne	.label_48
	xor	edi, edi
	call	usage
.label_568:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	jmp	.label_53
.label_47:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_12
	mov	edx, OFFSET FLAT:label_15
	mov	r8d, OFFSET FLAT:label_56
	mov	r9d, OFFSET FLAT:label_57
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_48:
	mov	edi, 1
	call	usage
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_67
	jmp	.label_53
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_53
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
.label_53:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_62:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	jmp	.label_34
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	jmp	.label_34
.label_39:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_44:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
.label_34:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x401d80

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	cmp	byte ptr [rip + just_user],  1
	jne	.label_89
	mov	al, byte ptr [rip + use_real]
	mov	ecx, OFFSET FLAT:ruid
	mov	edx, OFFSET FLAT:euid
	test	al, al
	cmovne	rdx, rcx
	mov	ebx, dword ptr [rdx]
	mov	al, byte ptr [rip + use_name]
	test	al, al
	je	.label_93
	mov	edi, ebx
	call	getpwuid
	test	rax, rax
	je	.label_99
	mov	rdi, qword ptr [rax]
	jmp	.label_96
.label_89:
	cmp	byte ptr [rip + just_group],  1
	jne	.label_76
	mov	al, byte ptr [rip + use_real]
	mov	ecx, OFFSET FLAT:rgid
	mov	edx, OFFSET FLAT:egid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	movzx	esi, byte ptr [rip + use_name]
	call	print_group
	and	byte ptr [rip + ok],  al
	jmp	.label_77
.label_93:
	mov	ebx, ebx
	jmp	.label_71
.label_76:
	cmp	byte ptr [rip + just_group_list],  1
	jne	.label_73
	mov	esi, dword ptr [rip + ruid]
	mov	edx, dword ptr [rip + rgid]
	mov	ecx, dword ptr [rip + egid]
	mov	al, byte ptr [rip + opt_zero]
	test	al, al
	sete	al
	shl	al, 5
	movzx	r8d, byte ptr [rip + use_name]
	movzx	r9d, al
	mov	rdi, rbx
	call	print_group_list
	and	byte ptr [rip + ok],  al
	jmp	.label_77
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + ruid]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + ruid]
	call	getpwuid
	mov	r14, rax
	test	r14, r14
	je	.label_95
	mov	rdx, qword ptr [r14]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
.label_95:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_98
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + rgid]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + rgid]
	call	getgrgid
	test	rax, rax
	je	.label_106
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
.label_106:
	mov	eax, dword ptr [rip + euid]
	cmp	eax, dword ptr [rip + ruid]
	je	.label_88
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + euid]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + euid]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_88
	mov	rdx, qword ptr [rbp]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
	mov	r14, rbp
.label_88:
	mov	eax, dword ptr [rip + egid]
	cmp	eax, dword ptr [rip + rgid]
	je	.label_90
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, dword ptr [rip + egid]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbp
	mov	rdx, rcx
	call	__printf_chk
	mov	edi, dword ptr [rip + egid]
	call	getgrgid
	test	rax, rax
	je	.label_90
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
.label_90:
	test	rbx, rbx
	je	.label_105
	mov	esi, 0xffffffff
	test	r14, r14
	je	.label_72
	mov	esi, dword ptr [r14 + 0x14]
	jmp	.label_72
.label_99:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	ebx, ebx
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	byte ptr [rip + ok],  0
.label_71:
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_96:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
.label_77:
	mov	al, byte ptr [rip + opt_zero]
	cmp	al, 1
	jne	.label_87
	cmp	byte ptr [rip + multiple_users],  0
	je	.label_87
	mov	cl, byte ptr [rip + just_group_list]
	xor	cl, 1
	test	cl, 1
	jne	.label_87
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_91
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
.label_86:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_97
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0
	jmp	.label_83
.label_87:
	xor	ecx, ecx
	test	al, al
	mov	esi, 0xa
	cmovne	esi, ecx
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_103
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], sil
.label_83:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_105:
	mov	esi, dword ptr [rip + egid]
.label_72:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	call	xgetgroups
	mov	ebp, eax
	test	ebp, ebp
	js	.label_75
	je	.label_78
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	ebx, ebp
	xor	ebp, ebp
	jmp	.label_82
.label_75:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	test	rbx, rbx
	je	.label_101
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_77
.label_101:
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	byte ptr [rip + ok],  0
	jmp	.label_77
.label_104:
	mov	esi, 0x2c
	call	__overflow
	jmp	.label_102
	nop	dword ptr [rax]
.label_82:
	test	rbp, rbp
	jle	.label_102
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_104
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0x2c
.label_102:
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rax, qword ptr [rsp + 8]
	mov	edi, dword ptr [rax + rbp*4]
	call	getgrgid
	test	rax, rax
	je	.label_79
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_81
	xor	eax, eax
	call	__printf_chk
.label_79:
	inc	rbp
	cmp	ebx, ebp
	jne	.label_82
.label_78:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_77
.label_103:
	call	__overflow
	jmp	.label_83
.label_91:
	xor	esi, esi
	call	__overflow
	jmp	.label_86
.label_97:
	xor	esi, esi
	call	__overflow
	jmp	.label_83
	.section	.text
	.align	16
	#Procedure 0x402270

	.globl print_group_list
	.type print_group_list, @function
print_group_list:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, r9d
	mov	dword ptr [rsp + 4], r8d
	mov	r12d, ecx
	mov	ebx, edx
	mov	rbp, rdi
	mov	r15b, 1
	xor	r13d, r13d
	test	rbp, rbp
	je	.label_113
	mov	edi, esi
	call	getpwuid
	mov	r13, rax
	test	r13, r13
	setne	r15b
.label_113:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_115
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	je	.label_130
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_118
.label_115:
	mov	edi, ebx
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	.label_126
.label_130:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	ebp, ebx
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 8]
.label_126:
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_118:
	call	fputs_unlocked
	cmp	r12d, ebx
	je	.label_114
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_117
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_119:
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_127
	mov	edi, r12d
	call	getgrgid
	test	rax, rax
	je	.label_131
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_132
.label_127:
	mov	edi, r12d
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	.label_133
.label_131:
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], rbp
	mov	ebp, r12d
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 8]
.label_133:
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_132:
	call	fputs_unlocked
.label_114:
	test	r13, r13
	mov	esi, r12d
	je	.label_125
	mov	esi, dword ptr [r13 + 0x14]
.label_125:
	lea	rdx, [rsp + 0x10]
	mov	rdi, rbp
	call	xgetgroups
	test	eax, eax
	js	.label_124
	mov	qword ptr [rsp + 8], r15
	je	.label_116
	movzx	r15d, r14b
	movsxd	r13, eax
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_134
	mov	dword ptr [rsp + 4], r15d
	xor	r15d, r15d
	jmp	.label_112
.label_124:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	rbp, rbp
	je	.label_109
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbp
	mov	rbp, rax
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_121
.label_134:
	xor	ebp, ebp
	jmp	.label_122
.label_109:
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_121:
	xor	eax, eax
	jmp	.label_108
.label_111:
	mov	esi, dword ptr [rsp + 4]
	call	__overflow
	jmp	.label_136
	nop	dword ptr [rax]
.label_112:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, ebx
	je	.label_107
	cmp	eax, r12d
	je	.label_107
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_111
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_136:
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rax + r15*4]
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_123
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rip + stdout]
	jmp	.label_135
.label_123:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
.label_135:
	call	fputs_unlocked
.label_107:
	inc	r15
	cmp	r15, r13
	jl	.label_112
	jmp	.label_116
.label_128:
	mov	esi, r15d
	call	__overflow
	jmp	.label_110
	nop	word ptr [rax + rax]
.label_122:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + rbp*4]
	cmp	eax, ebx
	je	.label_120
	cmp	eax, r12d
	je	.label_120
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_128
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], r14b
.label_110:
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + rbp*4]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	call	umaxtostr
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_120:
	inc	rbp
	cmp	rbp, r13
	jl	.label_122
.label_116:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 8]
	and	al, 1
.label_108:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_117:
	movzx	esi, r14b
	call	__overflow
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0

	.globl print_group
	.type print_group, @function
print_group:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	sil, sil
	je	.label_137
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	je	.label_138
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_139
.label_137:
	mov	ebp, ebp
	mov	bl, 1
	jmp	.label_140
.label_138:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	ebp, ebp
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	call	error
.label_140:
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_139:
	mov	rsi, qword ptr [rip + stdout]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402660
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402670

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_147
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_144
	cmp	dword ptr [rbp], 0x20
	jne	.label_144
.label_147:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_143
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_141
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_143:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_141:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_146
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
	#Procedure 0x402730

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_148:
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
	ja	.label_148
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402780

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_149
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_151
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_151
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_154
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_154:
	mov	rbx, r14
.label_151:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_149:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_150
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402830
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
	#Procedure 0x402870
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
	#Procedure 0x402880
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
	#Procedure 0x402890
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
	#Procedure 0x4028d0
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
	#Procedure 0x4028f0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_155
	test	rdx, rdx
	je	.label_155
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_155:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402920
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
	#Procedure 0x4029a0

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
	jmp	.label_208
	nop	
.label_205:
	cmp	r8d, 2
	setne	al
	cmp	byte ptr [rsp + 0xf], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa8]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 0xc0]
	je	.label_199
	or	al, dl
	jne	.label_199
	test	dil, 1
	jne	.label_201
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_199
	test	rbp, rbp
	mov	r15d, r8d
	mov	al, bl
	mov	qword ptr [rsp + 0x48], rcx
	mov	r12d, esi
	mov	r13, qword ptr [rsp + 0x68]
	je	.label_208
	jmp	.label_199
.label_529:
	mov	r8d, 5
	test	r12b, 1
	jne	.label_213
	test	rbp, rbp
	je	.label_174
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax], 0x22
.label_174:
	mov	r14d, 1
	jmp	.label_219
.label_530:
	mov	r13b, 1
	mov	r8d, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_221
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	sil, 1
	jmp	.label_156
.label_213:
	xor	r14d, r14d
.label_219:
	mov	eax, OFFSET FLAT:label_221
	mov	qword ptr [rsp + 0x58], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x50], rax
	mov	r13b, 1
	jmp	.label_232
	nop	
.label_208:
	mov	rbp, r13
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_238
	mov	r8d, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	jmp	qword ptr [(rcx * 8) + label_243]
.label_531:
	mov	r14d, edi
	mov	edi, OFFSET FLAT:label_252
	mov	esi, r15d
	mov	ebx, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x80], rax
	mov	edi, OFFSET FLAT:label_178
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebx
	mov	edi, r14d
	mov	qword ptr [rsp + 0x78], rax
.label_532:
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x80]
	jne	.label_168
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_168
	xor	r14d, r14d
	nop	
.label_196:
	cmp	r14, rbp
	jae	.label_166
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], al
.label_166:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_196
.label_168:
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
	jmp	.label_156
.label_524:
	xor	r8d, r8d
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_156
.label_527:
	mov	al, 1
.label_525:
	mov	r12b, 1
.label_528:
	test	r12b, 1
	mov	cl, 1
	je	.label_195
	mov	ecx, eax
.label_195:
	mov	al, cl
.label_526:
	mov	r8d, 2
	test	r12b, 1
	jne	.label_164
	test	rbp, rbp
	je	.label_171
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx], 0x27
.label_171:
	mov	r14d, 1
	jmp	.label_254
.label_164:
	xor	r14d, r14d
.label_254:
	mov	ecx, OFFSET FLAT:label_178
	mov	qword ptr [rsp + 0x58], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x50], rcx
	mov	r13d, eax
.label_232:
	mov	sil, r12b
.label_156:
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
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_189:
	inc	r12
.label_185:
	cmp	r11, -1
	je	.label_226
	cmp	r12, r11
	jne	.label_229
	jmp	.label_231
	nop	word ptr cs:[rax + rax]
.label_226:
	mov	rcx, -1
	cmp	byte ptr [r10 + r12], 0
	je	.label_251
.label_229:
	cmp	byte ptr [rsp + 0x37], 0
	je	.label_239
	mov	rax, qword ptr [rsp + 0x50]
	lea	rbx, [r12 + rax]
	cmp	rax, 2
	jb	.label_227
	cmp	r11, -1
	jne	.label_227
	mov	r15d, edi
	mov	rdi, r10
	mov	r13d, r9d
	call	strlen
	mov	r9d, r13d
	mov	r8, qword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_227:
	cmp	rbx, r11
	jbe	.label_257
.label_239:
	xor	esi, esi
.label_207:
	movzx	r15d, byte ptr [r10 + r12]
	cmp	r15, 0x7e
	ja	.label_190
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_261]
.label_545:
	test	r12, r12
	jne	.label_216
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_257:
	mov	r13d, r9d
	mov	r15d, edi
	mov	rbx, r11
	lea	rdi, [r10 + r12]
	mov	rsi, qword ptr [rsp + 0x58]
	mov	rdx, qword ptr [rsp + 0x50]
	call	memcmp
	test	eax, eax
	sete	sil
	jne	.label_193
	cmp	byte ptr [rsp + 0xf], 0
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	je	.label_207
	jmp	.label_172
.label_193:
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rbx
	mov	edi, r15d
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, r13d
	jmp	.label_207
.label_549:
	xor	eax, eax
	cmp	r11, -1
	je	.label_282
	test	r12, r12
	jne	.label_160
	cmp	r11, 1
	je	.label_187
	xor	r13d, r13d
	jmp	.label_197
.label_538:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_167
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_172
	cmp	r8d, 2
	jne	.label_175
	mov	eax, r9d
	and	al, 1
	jne	.label_175
	cmp	r14, rbp
	jae	.label_179
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_179:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_181
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_191
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_191:
	add	r14, 3
	mov	r9b, 1
.label_175:
	mov	rcx, r14
	cmp	rcx, rbp
	jae	.label_200
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + rcx], 0x5c
.label_200:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r8d, 2
	je	.label_210
	lea	rdx, [r12 + 1]
	cmp	rdx, r11
	jae	.label_210
	mov	dl, byte ptr [r10 + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_210
	cmp	r14, rbp
	jae	.label_204
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x30
.label_204:
	lea	rdx, [rcx + 2]
	cmp	rdx, rbp
	jae	.label_223
	mov	ebx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rdx], 0x30
	mov	esi, ebx
.label_223:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_197
.label_539:
	mov	bl, 0x62
	jmp	.label_161
.label_540:
	mov	cl, 0x74
	jmp	.label_222
.label_541:
	mov	bl, 0x76
	jmp	.label_161
.label_542:
	mov	bl, 0x66
	jmp	.label_161
.label_543:
	mov	cl, 0x72
	jmp	.label_222
.label_546:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa8], rax
	cmp	r8d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_180
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
	jae	.label_245
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_245:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_259
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x5c
.label_259:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_263
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_263:
	add	r14, 3
	xor	r9d, r9d
.label_236:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_197
.label_547:
	mov	r15b, 0x3f
	cmp	r8d, 5
	je	.label_266
	cmp	r8d, 2
	jne	.label_216
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_216
	jmp	.label_180
.label_548:
	cmp	r8d, 2
	jne	.label_273
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_180
	mov	r15b, 0x5c
	xor	eax, eax
	jmp	.label_244
.label_190:
	cmp	qword ptr [rsp + 0xb8], 1
	mov	qword ptr [rsp + 0xa0], rbp
	mov	byte ptr [rsp + 0x1e], dil
	mov	dword ptr [rsp + 0x60], r9d
	mov	dword ptr [rsp + 0x94], esi
	jne	.label_279
	mov	qword ptr [rsp + 0x48], r11
	call	__ctype_b_loc
	mov	r10, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	ebx, 1
	jmp	.label_163
.label_282:
	test	r12, r12
	jne	.label_176
	mov	cl, byte ptr [r10 + 1]
	test	cl, cl
	jne	.label_176
.label_187:
	mov	dl, 1
.label_544:
	cmp	byte ptr [rsp + 0x27], 0
	je	.label_180
	xor	eax, eax
	mov	r13b, dl
.label_197:
	cmp	byte ptr [rsp + 0x36], 0
	je	.label_186
	cmp	qword ptr [rsp + 0x100], 0
	jne	.label_192
	jmp	.label_194
	nop	word ptr cs:[rax + rax]
.label_186:
	cmp	byte ptr [rsp + 0x35], 0
	je	.label_194
.label_192:
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	ebx, esi
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_202
	mov	rcx, qword ptr [rsp + 0x100]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_209
	nop	dword ptr [rax]
.label_194:
	test	sil, sil
.label_209:
	mov	ebx, r15d
	je	.label_212
	jmp	.label_215
.label_202:
	mov	ebx, r15d
	jmp	.label_215
.label_167:
	cmp	dword ptr [rsp + 0x9c], 0
	jne	.label_189
	xor	r15d, r15d
	jmp	.label_216
.label_273:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x32], 0
	je	.label_222
	xor	eax, eax
	mov	r15b, 0x5c
.label_244:
	xor	r13d, r13d
	jmp	.label_212
.label_222:
	cmp	byte ptr [rsp + 0x27], 0
	mov	ebx, ecx
	je	.label_180
.label_161:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1f], 0
	mov	r13d, 0
	je	.label_197
	nop	
.label_215:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_172
	cmp	r8d, 2
	jne	.label_237
	mov	eax, r9d
	and	al, 1
	jne	.label_237
	cmp	r14, rbp
	jae	.label_241
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_241:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_246
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x24
.label_246:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_249
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_237:
	cmp	r14, rbp
	jae	.label_258
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_258:
	inc	r14
	jmp	.label_211
.label_279:
	mov	qword ptr [rsp + 0x70], 0
	cmp	r11, -1
	jne	.label_262
	mov	rdi, r10
	call	strlen
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, rax
.label_262:
	cmp	byte ptr [rsp + 0x31], 0
	mov	qword ptr [rsp + 0x48], r11
	mov	qword ptr [rsp + 0x88], r12
	je	.label_265
	lea	rax, [r10 + r12]
	mov	qword ptr [rsp + 0xb0], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbp, [rsp + 0x70]
.label_220:
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
	je	.label_274
	cmp	rbx, -1
	mov	r10, qword ptr [rsp + 0x28]
	movabs	rsi, 0x20000002b
	je	.label_157
	test	rbx, rbx
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_177
	cmp	rbx, 2
	mov	rbp, qword ptr [rsp + 0xa0]
	jb	.label_169
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_264:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_228
	bt	rsi, rdx
	jb	.label_180
.label_228:
	inc	rcx
	cmp	rcx, rbx
	jb	.label_264
.label_169:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	jne	.label_217
	xor	r13d, r13d
.label_217:
	lea	rbp, [rsp + 0x70]
	mov	r12, qword ptr [rsp + 0x40]
	add	r12, rbx
	mov	rdi, rbp
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_220
	jmp	.label_159
.label_210:
	xor	r13d, r13d
	jmp	.label_197
.label_176:
	mov	r11, -1
	xor	r13d, r13d
	jmp	.label_197
.label_266:
	cmp	dword ptr [rsp + 0x98], 0
	je	.label_216
	lea	rcx, [r12 + 2]
	cmp	rcx, r11
	jae	.label_216
	cmp	byte ptr [r10 + r12 + 1], 0x3f
	jne	.label_216
	movsx	edx, byte ptr [r10 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_224
	mov	ebx, esi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_276
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_234
	cmp	r14, rbp
	jae	.label_235
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x3f
.label_235:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_240
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_240:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x22
.label_250:
	lea	rax, [r14 + 3]
	cmp	rax, rbp
	jae	.label_173
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], 0x3f
.label_173:
	add	r14, 4
	xor	eax, eax
	mov	r12, rcx
	mov	r15b, dl
.label_276:
	xor	r13d, r13d
	mov	esi, ebx
	jmp	.label_197
.label_216:
	xor	eax, eax
.label_160:
	xor	r13d, r13d
	jmp	.label_197
.label_265:
	mov	r13b, 1
	xor	r12d, r12d
	lea	rbx, [rsp + 0x70]
	nop	word ptr cs:[rax + rax]
.label_281:
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
	je	.label_270
	cmp	rbp, -1
	je	.label_272
	cmp	rbp, -2
	je	.label_274
	mov	edi, dword ptr [rsp + 0x64]
	call	iswprint
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x40]
	jne	.label_277
	xor	r13d, r13d
.label_277:
	add	r12, rbp
	lea	rbx, [rsp + 0x70]
	mov	rdi, rbx
	call	mbsinit
	test	eax, eax
	mov	r10, qword ptr [rsp + 0x28]
	mov	r11, qword ptr [rsp + 0x48]
	je	.label_281
	jmp	.label_159
.label_274:
	mov	r10, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rax, [rsi + r12]
	mov	rdx, qword ptr [rsp + 0x48]
	cmp	rax, rdx
	jae	.label_198
	lea	rax, [r10 + r12]
.label_183:
	cmp	byte ptr [rax + rsi], 0
	je	.label_198
	lea	rcx, [r12 + rsi + 1]
	inc	rsi
	cmp	rcx, rdx
	jb	.label_183
.label_198:
	mov	qword ptr [rsp + 0x40], rsi
.label_157:
	xor	r13d, r13d
	jmp	.label_177
.label_272:
	xor	r13d, r13d
.label_270:
	mov	r10, qword ptr [rsp + 0x28]
.label_177:
	mov	r12, qword ptr [rsp + 0x40]
.label_159:
	mov	rbx, r12
	mov	r12, qword ptr [rsp + 0x88]
.label_163:
	and	r13b, 1
	mov	eax, r13d
	or	al, byte ptr [rsp + 0x33]
	cmp	rbx, 1
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	dil, byte ptr [rsp + 0x1e]
	mov	r8, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x60]
	mov	esi, dword ptr [rsp + 0x94]
	ja	.label_184
	test	al, al
	je	.label_184
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_197
.label_184:
	mov	byte ptr [rsp + 0x40], al
	add	rbx, r12
	xor	eax, eax
	mov	r11, qword ptr [rsp + 0x48]
	jmp	.label_206
	nop	word ptr [rax + rax]
.label_158:
	inc	r14
	mov	r15b, byte ptr [r10 + r12 + 1]
	mov	r12, rdx
.label_206:
	cmp	byte ptr [rsp + 0x40], 0
	je	.label_214
	test	sil, 1
	je	.label_203
	cmp	r14, rbp
	jae	.label_218
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + r14], 0x5c
.label_218:
	inc	r14
	xor	esi, esi
	jmp	.label_203
	nop	word ptr cs:[rax + rax]
.label_214:
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_172
	cmp	r8d, 2
	jne	.label_230
	mov	eax, r9d
	and	al, 1
	jne	.label_230
	cmp	r14, rbp
	jae	.label_233
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_233:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_280
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x24
.label_280:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_225
	mov	rdx, qword ptr [rsp + 0x10]
	mov	byte ptr [rdx + rax], 0x27
.label_225:
	add	r14, 3
	mov	r9b, 1
.label_230:
	cmp	r14, rbp
	jae	.label_248
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x5c
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_278
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_278:
	lea	rax, [r14 + 2]
	cmp	rax, rbp
	jae	.label_260
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + rax], dl
	mov	esi, ecx
.label_260:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_203:
	lea	rdx, [r12 + 1]
	cmp	rbx, rdx
	jbe	.label_212
	test	r9b, 1
	je	.label_267
	mov	rcx, rbx
	mov	ebx, eax
	and	bl, 1
	jne	.label_162
	mov	r8, r12
	mov	r12d, esi
	cmp	r14, rbp
	jae	.label_269
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], 0x27
.label_269:
	lea	rsi, [r14 + 1]
	cmp	rsi, rbp
	jae	.label_275
	mov	rbx, qword ptr [rsp + 0x10]
	mov	byte ptr [rbx + rsi], 0x27
.label_275:
	add	r14, 2
	xor	r9d, r9d
	mov	esi, r12d
	mov	rbx, rcx
	mov	r12, r8
	mov	r8, qword ptr [rsp + 0x38]
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_162:
	mov	rbx, rcx
.label_267:
	cmp	r14, rbp
	jae	.label_158
	mov	ecx, esi
	mov	rsi, qword ptr [rsp + 0x10]
	mov	byte ptr [rsi + r14], r15b
	mov	esi, ecx
	jmp	.label_158
	nop	
.label_212:
	test	r9b, 1
	je	.label_165
	and	al, 1
	jne	.label_165
	cmp	r14, rbp
	jae	.label_170
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], 0x27
.label_170:
	lea	rax, [r14 + 1]
	cmp	rax, rbp
	jae	.label_255
	mov	rcx, qword ptr [rsp + 0x10]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	add	r14, 2
	xor	r9d, r9d
.label_165:
	mov	ebx, r15d
.label_211:
	cmp	r14, rbp
	jae	.label_182
	mov	rax, qword ptr [rsp + 0x10]
	mov	byte ptr [rax + r14], bl
.label_182:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, dil
	mov	edi, r13d
	jmp	.label_189
.label_224:
	xor	r13d, r13d
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_231:
	mov	rcx, r12
.label_251:
	cmp	r8d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_205
	or	al, dl
	jne	.label_205
	mov	r11, rcx
	jmp	.label_172
.label_180:
	mov	eax, 2
.label_188:
	mov	qword ptr [rsp + 0x38], rax
.label_172:
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
.label_271:
	mov	r14, rax
.label_268:
	mov	rax, r14
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_199:
	mov	rdx, qword ptr [rsp + 0x58]
	test	rdx, rdx
	je	.label_242
	cmp	byte ptr [rsp + 0xf], 0
	mov	rcx, qword ptr [rsp + 0x10]
	jne	.label_247
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_247
	inc	rdx
	nop	dword ptr [rax + rax]
.label_256:
	cmp	r14, rbp
	jae	.label_253
	mov	byte ptr [rcx + r14], al
.label_253:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_256
	jmp	.label_247
.label_201:
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
	jmp	.label_271
.label_242:
	mov	rcx, qword ptr [rsp + 0x10]
.label_247:
	cmp	r14, rbp
	jae	.label_268
	mov	byte ptr [rcx + r14], 0
	jmp	.label_268
.label_234:
	mov	eax, 5
	jmp	.label_188
.label_238:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4037d0
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
	#Procedure 0x4038a0
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
	je	.label_283
	mov	qword ptr [rax], rbx
.label_283:
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
	#Procedure 0x403990
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_284
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_286:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_286
.label_284:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_288
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_287], OFFSET FLAT:slot0
.label_288:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_285
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_285:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a30
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403a40

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
	js	.label_289
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_292
	cmp	r12d, 0x7fffffff
	je	.label_294
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
	jne	.label_290
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_290:
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
.label_292:
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
	jbe	.label_295
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_291
.label_295:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_293
	mov	rdi, r14
	call	free
.label_293:
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
.label_291:
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
.label_289:
	call	abort
.label_294:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c00
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c10
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
	#Procedure 0x403c30
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
	#Procedure 0x403c50
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
	je	.label_296
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
.label_296:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cc0
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
	je	.label_297
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
.label_297:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403d30
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
	je	.label_298
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
.label_298:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403da0
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
	je	.label_299
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
.label_299:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
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
	#Procedure 0x403e80
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
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
	#Procedure 0x403ef0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
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
	#Procedure 0x403f50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
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
	#Procedure 0x403fb0
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
	je	.label_303
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
.label_303:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404050
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_304
	test	rdx, rdx
	je	.label_304
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_304:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4040c0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_305
	test	rdx, rdx
	je	.label_305
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_305:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404130
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_306
	test	rsi, rsi
	je	.label_306
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_306:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4041a0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_300]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_301]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_302]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_307
	test	rsi, rsi
	je	.label_307
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
.label_307:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404210
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404220
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
	#Procedure 0x404240
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404260

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
	#Procedure 0x404280

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
	jne	.label_309
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_314
	cmp	ecx, 0x55
	jne	.label_308
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_308
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_308
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_308
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_308
	cmp	byte ptr [rax + 5], 0
	jne	.label_308
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_311
	mov	eax, OFFSET FLAT:label_312
	jmp	.label_313
.label_314:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_308
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_308
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_308
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_308
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_308
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_308
	cmp	byte ptr [rax + 7], 0
	je	.label_310
.label_308:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_221
	mov	eax, OFFSET FLAT:label_178
.label_313:
	cmove	rax, rcx
.label_309:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_310:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_315
	mov	eax, OFFSET FLAT:label_316
	jmp	.label_313
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

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
	je	.label_318
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_318:
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
	je	.label_317
	test	r14, r14
	jne	.label_317
	test	rbp, rbp
	je	.label_317
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_317
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_319
.label_317:
	mov	rax, rbp
.label_319:
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
	#Procedure 0x404400

	.globl parse_with_separator
	.type parse_with_separator, @function
parse_with_separator:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r14, r8
	mov	r12, rcx
	mov	r15, rsi
	mov	eax, dword ptr [rdx]
	mov	ecx, 0xffffffff
	test	r12, r12
	je	.label_320
	mov	ecx, dword ptr [r12]
.label_320:
	test	r14, r14
	je	.label_332
	mov	qword ptr [r14], 0
.label_332:
	test	r9, r9
	je	.label_331
	mov	qword ptr [r9], 0
.label_331:
	test	r15, r15
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rcx
	je	.label_339
	mov	qword ptr [rsp + 8], r9
	xor	ebp, ebp
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_344
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	rbp, rax
	mov	byte ptr [rbp + rbx], 0
.label_344:
	lea	rax, [r15 + 1]
	xor	ebx, ebx
	cmp	byte ptr [r15 + 1], 0
	cmovne	rbx, rax
	jmp	.label_350
.label_339:
	xor	r13d, r13d
	cmp	byte ptr [rdi], 0
	je	.label_322
	mov	qword ptr [rsp + 8], r9
	call	xstrdup
	mov	rbp, rax
	xor	ebx, ebx
.label_350:
	xor	r13d, r13d
	test	rbp, rbp
	mov	qword ptr [rsp + 0x30], r12
	mov	qword ptr [rsp + 0x28], r14
	je	.label_337
	cmp	byte ptr [rbp], 0x2b
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_336
	mov	rdi, rbp
	call	getpwnam
	mov	rbp, qword ptr [rsp + 0x20]
	test	rax, rax
	je	.label_336
	mov	rax, qword ptr [rax + 0x10]
	xor	r13d, r13d
	test	r15, r15
	mov	qword ptr [rsp + 0x10], rax
	je	.label_343
	mov	r15, rbx
	test	r15, r15
	jne	.label_349
	mov	rbp, rax
	shr	rbp, 0x20
	mov	edi, ebp
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 0x18], rbp
	je	.label_321
	mov	rdi, qword ptr [rax]
	jmp	.label_326
.label_336:
	mov	r14d, OFFSET FLAT:label_324
	xor	r13d, r13d
	test	r15, r15
	mov	r15, rbx
	je	.label_325
	test	r15, r15
	je	.label_333
.label_325:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_54
	mov	rdi, rbp
	call	xstrtoul
	test	eax, eax
	jne	.label_341
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_341
	xor	r14d, r14d
	cmp	eax, -1
	jne	.label_334
.label_341:
	mov	r14d, OFFSET FLAT:label_348
	mov	rax, qword ptr [rsp + 0x10]
.label_334:
	xor	r13d, r13d
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_333
.label_337:
	xor	edi, edi
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_346
.label_322:
	xor	edi, edi
	jmp	.label_328
.label_343:
	xor	r14d, r14d
	mov	r15, rbx
	jmp	.label_333
.label_321:
	lea	rsi, [rsp + 0x40]
	mov	rdi, rbp
	call	umaxtostr
	mov	rdi, rax
.label_326:
	call	xstrdup
	mov	r13, rax
	call	endgrent
.label_349:
	xor	r14d, r14d
.label_333:
	call	endpwent
	mov	rdi, qword ptr [rsp + 0x20]
.label_346:
	test	r15, r15
	je	.label_338
	test	r14, r14
	jne	.label_338
	mov	rbp, rdi
	cmp	byte ptr [r15], 0x2b
	je	.label_340
	mov	rdi, r15
	call	getgrnam
	test	rax, rax
	je	.label_340
	mov	ebx, dword ptr [rax + 0x10]
	xor	r14d, r14d
	jmp	.label_327
.label_338:
	mov	r9, qword ptr [rsp + 8]
	jmp	.label_347
.label_340:
	lea	rcx, [rsp + 0x40]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_54
	mov	rdi, r15
	call	xstrtoul
	test	eax, eax
	jne	.label_323
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_323
	xor	r14d, r14d
	cmp	ebx, -1
	jne	.label_327
.label_323:
	mov	r14d, OFFSET FLAT:label_330
	mov	rbx, qword ptr [rsp + 0x18]
.label_327:
	call	endgrent
	mov	rdi, r15
	call	xstrdup
	mov	r13, rax
	mov	qword ptr [rsp + 0x18], rbx
	mov	r9, qword ptr [rsp + 8]
	mov	rdi, rbp
.label_347:
	test	r14, r14
	je	.label_335
	xor	ebx, ebx
	jmp	.label_342
.label_335:
	mov	r14, qword ptr [rsp + 0x28]
	mov	r12, qword ptr [rsp + 0x30]
.label_328:
	mov	rax, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
	test	r12, r12
	je	.label_345
	mov	rax, qword ptr [rsp + 0x18]
	mov	dword ptr [r12], eax
.label_345:
	test	r14, r14
	je	.label_351
	mov	qword ptr [r14], rdi
	xor	edi, edi
.label_351:
	mov	bl, 1
	xor	r14d, r14d
	test	r9, r9
	je	.label_342
	mov	qword ptr [r9], r13
	xor	r14d, r14d
	xor	r13d, r13d
.label_342:
	call	free
	mov	rdi, r13
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_329
	xor	edi, edi
	mov	edx, 5
	mov	rsi, r14
	call	dcgettext
.label_329:
	add	rsp, 0x58
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
	#Procedure 0x4046d0

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
	je	.label_362
	mov	edx, OFFSET FLAT:label_367
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_355
.label_362:
	mov	edx, OFFSET FLAT:label_356
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_355:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
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
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_363
	jmp	qword ptr [(r12 * 8) + label_364]
.label_591:
	add	rsp, 8
	jmp	.label_354
.label_363:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
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
	jmp	.label_354
.label_592:
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
.label_593:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
.label_594:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
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
.label_595:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
	jmp	.label_354
.label_596:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
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
	jmp	.label_354
.label_597:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_366
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
	jmp	.label_354
.label_598:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
	jmp	.label_354
.label_600:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
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
	jmp	.label_354
.label_599:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
.label_354:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_371:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_371
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a60

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_382
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_384
.label_382:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_384:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_381
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_383
.label_381:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_383:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_379
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_380
.label_379:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_380:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_377
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_378
.label_377:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_378:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_375
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_376
.label_375:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_376:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_373
	cmp	r10d, 0x29
	jae	.label_372
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_374
.label_372:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_374:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_373
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_373:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c50

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_385
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_385:
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
	#Procedure 0x404ce0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_387
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_11
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d60
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_390
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_391
	test	rax, rax
	je	.label_390
.label_391:
	pop	rbx
	ret	
.label_390:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404da0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_392
	test	rax, rax
	je	.label_393
.label_392:
	pop	rbx
	ret	
.label_393:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404dc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_394
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_395
	test	rbx, rbx
	jne	.label_395
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_395:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_396
	test	rax, rax
	je	.label_394
.label_396:
	pop	rbx
	ret	
.label_394:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e10

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_397
	test	rbx, rbx
	jne	.label_397
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_397:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_399
	test	rax, rax
	je	.label_398
.label_399:
	pop	rbx
	ret	
.label_398:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_400
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_403
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_401
.label_400:
	test	rcx, rcx
	jne	.label_406
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_406:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_402
.label_401:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_405
	test	rbx, rbx
	jne	.label_405
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_405:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_404
	test	rax, rax
	je	.label_403
.label_404:
	pop	rbx
	ret	
.label_403:
	call	xalloc_die
.label_402:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_407
	test	rax, rax
	je	.label_408
.label_407:
	pop	rbx
	ret	
.label_408:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_409
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_412
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_413
	call	free
	xor	eax, eax
	jmp	.label_410
.label_409:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_411
	mov	qword ptr [rsi], rbx
.label_413:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_410
	test	rax, rax
	je	.label_411
.label_410:
	pop	rbx
	ret	
.label_411:
	call	xalloc_die
.label_412:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
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
	je	.label_415
	test	r14, r14
	je	.label_414
.label_415:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_414:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_416
	call	rpl_calloc
	test	rax, rax
	je	.label_416
	pop	rcx
	ret	
.label_416:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fe0

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
	je	.label_417
	test	r15, r15
	je	.label_418
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
.label_418:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405020

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
	je	.label_420
	test	r15, r15
	je	.label_419
.label_420:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_419:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_421
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_142
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4050a0

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_423
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_422
.label_423:
	mov	eax, ebx
	pop	rbx
	ret	
.label_422:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4050c0

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
	mov	r14, r8
	mov	r12d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	cmp	r12d, 0x25
	jae	.label_435
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r15, rax
	mov	dword ptr [r15], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_425:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_425
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r13d, 4
	cmp	al, 0x2d
	je	.label_424
	mov	rdi, rbx
	mov	edx, r12d
	mov	qword ptr [rsp + 8], rsi
	call	strtoul
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	r12, qword ptr [rax]
	cmp	r12, rbx
	je	.label_440
	mov	eax, dword ptr [r15]
	xor	ebx, ebx
	test	eax, eax
	je	.label_443
	cmp	eax, 0x22
	jne	.label_424
	mov	ebx, 1
.label_443:
	test	r14, r14
	jne	.label_444
	jmp	.label_430
.label_440:
	test	r14, r14
	je	.label_424
	movsx	esi, byte ptr [rbx]
	test	esi, esi
	je	.label_424
	mov	rdi, r14
	call	strchr
	xor	ebx, ebx
	mov	ebp, 1
	test	rax, rax
	je	.label_424
.label_444:
	movsx	r13d, byte ptr [r12]
	test	r13d, r13d
	je	.label_430
	mov	rdi, r14
	mov	esi, r13d
	call	strchr
	test	rax, rax
	je	.label_434
	mov	r15d, 1
	mov	esi, 0x400
	lea	eax, [r13 - 0x45]
	cmp	eax, 0x2f
	ja	.label_429
	movabs	rdx, 0x814400308945
	bt	rdx, rax
	jae	.label_429
	mov	esi, 0x30
	mov	rdi, r14
	call	strchr
	mov	r15d, 1
	mov	esi, 0x400
	test	rax, rax
	je	.label_429
	movsx	eax, byte ptr [r12 + 1]
	mov	r15d, 1
	mov	esi, 0x400
	cmp	eax, 0x42
	je	.label_432
	cmp	eax, 0x44
	je	.label_432
	cmp	eax, 0x69
	jne	.label_429
	xor	eax, eax
	cmp	byte ptr [r12 + 2], 0x42
	sete	al
	lea	r15, [rax + rax + 1]
	mov	esi, 0x400
	jmp	.label_429
.label_432:
	mov	r15d, 2
	mov	esi, 0x3e8
.label_429:
	add	r13d, -0x42
	cmp	r13d, 0x35
	ja	.label_434
	xor	eax, eax
	jmp	qword ptr [(r13 * 8) + label_442]
.label_504:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r8
	cmp	rax, rbp
	sbb	dil, dil
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, r8
	or	dl, r9b
	or	dl, dil
	jmp	.label_427
.label_434:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
	or	ebx, 2
	jmp	.label_433
.label_505:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	sbb	eax, eax
	jmp	.label_436
.label_506:
	mov	r8, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r8
	cmp	rax, rdi
	sbb	dl, dl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r8
	or	dl, r9b
	jmp	.label_427
.label_508:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	cl, cl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, cl
	jmp	.label_427
.label_502:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x36
	setne	al
	shl	rbp, 0xa
	jmp	.label_426
.label_503:
	mov	r9, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	dl, dl
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r10b, r10b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	r11b, r11b
	mov	rbp, rdi
	imul	rbp, rsi
	cmp	rax, rdi
	cmovb	rbp, r9
	cmp	rax, rbp
	sbb	r14b, r14b
	mov	rdi, rbp
	imul	rdi, rsi
	cmp	rax, rbp
	cmovb	rdi, r9
	cmp	rax, rdi
	sbb	bpl, bpl
	imul	rsi, rdi
	cmp	rax, rdi
	cmovb	rsi, r9
	or	dl, r8b
	or	dl, r10b
	or	dl, r11b
	or	dl, r14b
	or	dl, bpl
.label_427:
	and	dl, 1
	movzx	eax, dl
	jmp	.label_431
.label_507:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	cl, cl
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rdx, rbp
	imul	rdx, rsi
	cmp	rax, rbp
	cmovb	rdx, rdi
	cmp	rax, rdx
	sbb	r10b, r10b
	mov	rbp, rdx
	imul	rbp, rsi
	cmp	rax, rdx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	dl, dl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	cl, r8b
	or	cl, r9b
	or	cl, r10b
	or	cl, dl
	and	cl, 1
	movzx	eax, cl
	jmp	.label_431
.label_509:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r13b, r13b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	bpl, bpl
	imul	rsi, rcx
	cmp	rax, rcx
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	or	dl, r11b
	and	dl, 1
	or	dl, r14b
	or	dl, r13b
	or	dl, bpl
	jmp	.label_441
.label_510:
	mov	rdi, -1
	mov	rax, -1
	xor	edx, edx
	div	rsi
	cmp	rax, rbp
	sbb	r8b, r8b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	dl, dl
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r9b, r9b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r10b, r10b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	r11b, r11b
	mov	rcx, rbp
	imul	rcx, rsi
	cmp	rax, rbp
	cmovb	rcx, rdi
	cmp	rax, rcx
	sbb	r14b, r14b
	mov	rbp, rcx
	imul	rbp, rsi
	cmp	rax, rcx
	cmovb	rbp, rdi
	cmp	rax, rbp
	sbb	cl, cl
	imul	rsi, rbp
	cmp	rax, rbp
	cmovb	rsi, rdi
	or	dl, r8b
	or	dl, r9b
	or	dl, r10b
	and	dl, 1
	or	dl, r11b
	or	dl, r14b
	or	dl, cl
.label_441:
	movzx	eax, dl
.label_436:
	and	eax, 1
.label_431:
	mov	rbp, rsi
.label_428:
	or	eax, ebx
	lea	rcx, [r12 + r15]
	mov	rdx, qword ptr [rsp + 8]
	mov	qword ptr [rdx], rcx
	lea	ebx, [rax + 2]
	cmp	byte ptr [r12 + r15], 0
	cmove	ebx, eax
.label_430:
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax], rbp
.label_433:
	mov	r13d, ebx
.label_424:
	mov	eax, r13d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_511:
	xor	eax, eax
	mov	rdx, rbp
	shr	rdx, 0x37
	setne	al
	shl	rbp, 9
.label_426:
	cmp	rdx, 1
	sbb	rdx, rdx
	not	rdx
	or	rbp, rdx
	jmp	.label_428
.label_512:
	lea	rax, [rbp + rbp]
	test	rbp, rbp
	mov	rcx, -1
	cmovns	rcx, rax
	shr	rbp, 0x3f
	mov	eax, ebp
	mov	rbp, rcx
	jmp	.label_428
.label_435:
	mov	edi, OFFSET FLAT:label_437
	mov	esi, OFFSET FLAT:label_438
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_439
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_445
	test	rsi, rsi
	mov	ecx, 1
	je	.label_446
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_446
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_445:
	mov	ecx, 1
.label_446:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405730

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
	je	.label_447
	cmp	r15, -2
	jb	.label_447
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_447
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_447:
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
	#Procedure 0x405790

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
	jne	.label_449
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_448
	test	cl, cl
	jne	.label_448
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_448
.label_449:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_448
	call	__errno_location
	mov	dword ptr [rax], 0
.label_448:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4057f0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_451
	cmp	byte ptr [rax], 0x43
	jne	.label_453
	cmp	byte ptr [rax + 1], 0
	je	.label_450
.label_453:
	mov	esi, OFFSET FLAT:label_452
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_451
.label_450:
	xor	ebx, ebx
.label_451:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405830

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_54
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_454
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405860

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
	mov	r12, rdx
	mov	r13d, esi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_468
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0x28
	call	realloc
	mov	rbp, rax
	mov	r14d, 0xffffffff
	test	rbp, rbp
	je	.label_455
	mov	qword ptr [rsp + 0x10], r12
	mov	r12d, 0xa
	lea	r15, [rsp + 0xc]
	jmp	.label_460
	nop	dword ptr [rax + rax]
.label_471:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rbp, rax
.label_460:
	mov	rdi, rbx
	mov	esi, r13d
	mov	rdx, rbp
	mov	rcx, r15
	call	getgrouplist
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0xc]
	test	r14d, r14d
	jns	.label_458
	cmp	r12d, eax
	jne	.label_458
	add	r12d, r12d
	mov	dword ptr [rsp + 0xc], r12d
	mov	eax, r12d
.label_458:
	test	eax, eax
	js	.label_463
	movsxd	rsi, eax
	shl	rsi, 2
	mov	rdi, rbp
	call	realloc
	test	rax, rax
	je	.label_457
	test	r14d, r14d
	js	.label_471
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r14d, dword ptr [rsp + 0xc]
	jmp	.label_455
.label_468:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_462
	cmp	r13d, -1
	jne	.label_464
	test	eax, eax
	mov	ebx, eax
	jne	.label_465
.label_464:
	lea	ebx, [rax + 1]
	mov	dword ptr [rsp + 0xc], ebx
	cmp	eax, -2
	jg	.label_465
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_467
.label_465:
	movsxd	rsi, ebx
	shl	rsi, 2
	xor	edi, edi
	call	realloc
	mov	r15, rax
	mov	r14d, 0xffffffff
	test	r15, r15
	je	.label_455
	xor	eax, eax
	cmp	r13d, -1
	setne	al
	sub	ebx, eax
	lea	rsi, [r15 + rax*4]
	mov	edi, ebx
	call	getgroups
	test	eax, eax
	js	.label_459
	cmp	r13d, -1
	mov	r14d, eax
	je	.label_461
	mov	dword ptr [r15], r13d
	inc	eax
	mov	r14d, eax
.label_461:
	mov	qword ptr [r12], r15
	cmp	r14d, 2
	jl	.label_455
	movsxd	rax, r14d
	lea	rax, [r15 + rax*4]
	mov	rcx, r15
	add	rcx, 4
	cmp	rcx, rax
	jae	.label_455
	mov	edx, dword ptr [r15]
	mov	esi, edx
	nop	word ptr cs:[rax + rax]
.label_456:
	mov	edi, dword ptr [rcx]
	cmp	edi, edx
	je	.label_469
	cmp	edi, esi
	jne	.label_470
.label_469:
	dec	r14d
	add	rcx, 4
	cmp	rcx, rax
	jb	.label_456
	jmp	.label_455
.label_470:
	mov	dword ptr [r15 + 4], edi
	add	r15, 4
	add	rcx, 4
	cmp	rcx, rax
	mov	esi, edi
	jb	.label_456
	jmp	.label_455
.label_462:
	call	__errno_location
	mov	r14d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_455
	xor	edi, edi
	mov	esi, 4
	call	realloc
	test	rax, rax
	je	.label_455
	mov	qword ptr [r12], rax
	mov	dword ptr [rax], r13d
	xor	r14d, r14d
	cmp	r13d, -1
	setne	r14b
	jmp	.label_455
.label_463:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0xc
	jmp	.label_466
.label_457:
	call	__errno_location
	mov	rbx, rax
.label_466:
	mov	r14d, dword ptr [rbx]
	mov	rdi, rbp
	call	free
	mov	dword ptr [rbx], r14d
.label_467:
	mov	r14d, 0xffffffff
.label_455:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_459:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_455
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ab0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_472
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_474
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_472
.label_474:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_472
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_473
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_473:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_472:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_475
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_475
	test	byte ptr [rbx + 1], 1
	je	.label_475
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_475:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b70

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
	jne	.label_476
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_476
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_477
.label_476:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_477:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_478
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_478:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405be0

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
