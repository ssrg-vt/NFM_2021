	.section	.text
	.align	16
	#Procedure 0x401810

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_11
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_11:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401930

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_26
	nop	
.label_25:
	mov	edi, OFFSET FLAT:label_17
	call	strcmp
	test	eax, eax
	je	.label_23
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_25
.label_23:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_17
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_18
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_18
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_18:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_17
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_17
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_30
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
	#Procedure 0x401a50

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
	mov	esi, OFFSET FLAT:label_30
	call	setlocale
	mov	edi, OFFSET FLAT:label_52
	mov	esi, OFFSET FLAT:label_53
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_52
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_59
.label_541:
	mov	byte ptr [byte ptr [rip + just_group_list]],  1
	nop	
.label_59:
	mov	edx, OFFSET FLAT:label_60
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x46
	jle	.label_65
	add	eax, -0x47
	cmp	eax, 0x33
	ja	.label_51
	jmp	qword ptr [word ptr [+ (rax * 8) + label_45]]
.label_543:
	mov	byte ptr [byte ptr [rip + just_group]],  1
	jmp	.label_59
.label_544:
	mov	byte ptr [byte ptr [rip + use_name]],  1
	jmp	.label_59
.label_545:
	mov	byte ptr [byte ptr [rip + use_real]],  1
	jmp	.label_59
.label_546:
	mov	byte ptr [byte ptr [rip + just_user]],  1
	jmp	.label_59
.label_547:
	mov	byte ptr [byte ptr [rip + opt_zero]],  1
	jmp	.label_59
.label_65:
	cmp	eax, -1
	jne	.label_71
	movzx	edx,  byte ptr [byte ptr [rip + just_user]]
	movzx	ecx,  byte ptr [byte ptr [rip + just_group]]
	lea	eax, [rcx + rdx]
	movzx	esi,  byte ptr [byte ptr [rip + just_group_list]]
	add	eax, esi
	cmp	eax, 2
	jae	.label_33
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	or	cl, dl
	or	cl, sil
	jne	.label_39
	mov	cl,  byte ptr [byte ptr [rip + use_real]]
	test	cl, cl
	jne	.label_41
	cmp	byte ptr [byte ptr [rip + use_name]],  1
	je	.label_41
	cmp	byte ptr [byte ptr [rip + opt_zero]],  1
	je	.label_46
.label_39:
	movsxd	r15, ebp
	sub	r15, rax
	test	r15d, r15d
	je	.label_47
	cmp	r15d, 1
	setne	byte ptr [byte ptr [rip + multiple_users]]
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	add	r15, rax
	jmp	.label_50
	nop	word ptr cs:[rax + rax]
.label_35:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	inc	rax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_50:
	cmp	rax, r15
	jae	.label_67
	mov	rdi, qword ptr [r14 + rax*8]
	cmp	byte ptr [rdi], 0
	je	.label_62
	mov	esi, OFFSET FLAT:euid
	xor	edx, edx
	xor	ecx, ecx
	xor	r8d, r8d
	call	parse_user_spec
	test	rax, rax
	jne	.label_62
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	je	.label_62
	mov	rdi, qword ptr [rbp]
	call	xstrdup
	mov	rbx, rax
	mov	eax, dword ptr [rbp + 0x10]
	mov	dword ptr [dword ptr [rip + euid]],  eax
	mov	dword ptr [dword ptr [rip + ruid]],  eax
	mov	eax, dword ptr [rbp + 0x14]
	mov	dword ptr [dword ptr [rip + egid]],  eax
	mov	dword ptr [dword ptr [rip + rgid]],  eax
	mov	rdi, rbx
	call	print_stuff
	mov	rdi, rbx
	call	free
	jmp	.label_35
	nop	word ptr [rax + rax]
.label_62:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_38
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	mov	byte ptr [byte ptr [rip + ok]],  0
	jmp	.label_35
.label_47:
	cmp	byte ptr [byte ptr [rip + just_user]],  1
	jne	.label_48
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	jmp	.label_61
.label_48:
	mov	al,  byte ptr [byte ptr [rip + just_group]]
	test	al, al
	jne	.label_54
	mov	al,  byte ptr [byte ptr [rip + just_group_list]]
.label_61:
	test	al, al
	jne	.label_54
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	geteuid
	mov	dword ptr [dword ptr [rip + euid]],  eax
	cmp	eax, -1
	jne	.label_54
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_73
.label_54:
	cmp	byte ptr [byte ptr [rip + just_user]],  1
	jne	.label_64
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	test	al, al
	jne	.label_66
	jmp	.label_63
.label_64:
	mov	al,  byte ptr [byte ptr [rip + just_group]]
	test	al, al
	jne	.label_63
.label_66:
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getuid
	mov	dword ptr [dword ptr [rip + ruid]],  eax
	cmp	eax, -1
	jne	.label_63
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_72
.label_63:
	mov	al,  byte ptr [byte ptr [rip + just_user]]
	test	al, al
	jne	.label_42
	call	__errno_location
	mov	rbx, rax
	mov	dword ptr [rbx], 0
	call	getegid
	mov	dword ptr [dword ptr [rip + egid]],  eax
	cmp	eax, -1
	jne	.label_36
	mov	ebp, dword ptr [rbx]
	test	ebp, ebp
	jne	.label_37
.label_36:
	mov	dword ptr [rbx], 0
	call	getgid
	mov	dword ptr [dword ptr [rip + rgid]],  eax
	cmp	eax, -1
	jne	.label_42
	mov	ebx, dword ptr [rbx]
	test	ebx, ebx
	jne	.label_44
.label_42:
	xor	edi, edi
	call	print_stuff
.label_67:
	movzx	eax,  byte ptr [byte ptr [rip + ok]]
	xor	eax, 1
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	cmp	eax, 0xffffff7d
	je	.label_49
	cmp	eax, 0xffffff7e
	jne	.label_51
	xor	edi, edi
	call	usage
.label_542:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_55
	jmp	.label_56
.label_49:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_17
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_57
	mov	r9d, OFFSET FLAT:label_58
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_51:
	mov	edi, 1
	call	usage
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	jmp	.label_56
.label_41:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
	jmp	.label_56
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
.label_56:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_72:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	jmp	.label_32
.label_37:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_34
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
	mov	esi, OFFSET FLAT:label_40
	jmp	.label_32
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_43
.label_32:
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
	#Procedure 0x401e60

	.globl print_stuff
	.type print_stuff, @function
print_stuff:
	push	rax
	cmp	byte ptr [byte ptr [rip + just_user]],  1
	jne	.label_74
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	mov	ecx, OFFSET FLAT:ruid
	mov	edx, OFFSET FLAT:euid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	call	print_user
	jmp	.label_76
.label_74:
	cmp	byte ptr [byte ptr [rip + just_group]],  1
	jne	.label_77
	mov	al,  byte ptr [byte ptr [rip + use_real]]
	mov	ecx, OFFSET FLAT:rgid
	mov	edx, OFFSET FLAT:egid
	test	al, al
	cmovne	rdx, rcx
	mov	edi, dword ptr [rdx]
	movzx	esi,  byte ptr [byte ptr [rip + use_name]]
	call	print_group
	and	byte ptr [byte ptr [rip + ok]],  al
	jmp	.label_76
.label_77:
	cmp	byte ptr [byte ptr [rip + just_group_list]],  1
	jne	.label_78
	mov	esi,  dword ptr [dword ptr [rip + ruid]]
	mov	edx,  dword ptr [dword ptr [rip + rgid]]
	mov	ecx,  dword ptr [dword ptr [rip + egid]]
	mov	al,  byte ptr [byte ptr [rip + opt_zero]]
	test	al, al
	sete	al
	shl	al, 5
	movzx	r8d,  byte ptr [byte ptr [rip + use_name]]
	movzx	r9d, al
	call	print_group_list
	and	byte ptr [byte ptr [rip + ok]],  al
	jmp	.label_76
.label_78:
	call	print_full_info
.label_76:
	cmp	byte ptr [byte ptr [rip + opt_zero]],  1
	jne	.label_75
	cmp	byte ptr [byte ptr [rip + multiple_users]],  0
	je	.label_75
	mov	al,  byte ptr [byte ptr [rip + just_group_list]]
	xor	al, 1
	test	al, 1
	jne	.label_75
	xor	edi, edi
	call	putchar_unlocked
	xor	edi, edi
	pop	rax
	jmp	putchar_unlocked
.label_75:
	mov	al,  byte ptr [byte ptr [rip + opt_zero]]
	xor	ecx, ecx
	test	al, al
	mov	edi, 0xa
	cmovne	edi, ecx
	pop	rax
	jmp	putchar_unlocked
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl print_user
	.type print_user, @function
print_user:
	push	rbx
	sub	rsp, 0x10
	mov	dword ptr [rsp + 0xc], edi
	cmp	byte ptr [byte ptr [rip + use_name]],  1
	jne	.label_79
	call	getpwuid
	test	rax, rax
	je	.label_80
	mov	rdi, qword ptr [rax]
	jmp	.label_81
.label_80:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_82
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	lea	rdi, [rsp + 0xc]
	call	uidtostr_ptr
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	byte ptr [byte ptr [rip + ok]],  0
.label_79:
	lea	rdi, [rsp + 0xc]
	call	uidtostr_ptr
	mov	rdi, rax
.label_81:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	add	rsp, 0x10
	pop	rbx
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl print_full_info
	.type print_full_info, @function
print_full_info:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_100
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:ruid
	call	uidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + ruid]]
	call	getpwuid
	mov	r15, rax
	test	r15, r15
	je	.label_88
	mov	rdx, qword ptr [r15]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_98
	xor	eax, eax
	call	__printf_chk
.label_88:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:rgid
	call	gidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + rgid]]
	call	getgrgid
	test	rax, rax
	je	.label_104
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_98
	xor	eax, eax
	call	__printf_chk
.label_104:
	mov	eax,  dword ptr [dword ptr [rip + euid]]
	cmp	eax,  dword ptr [dword ptr [rip + ruid]]
	je	.label_85
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_90
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:euid
	call	uidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + euid]]
	call	getpwuid
	mov	rbx, rax
	test	rbx, rbx
	je	.label_85
	mov	rdx, qword ptr [rbx]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_98
	xor	eax, eax
	call	__printf_chk
	mov	r15, rbx
.label_85:
	mov	eax,  dword ptr [dword ptr [rip + egid]]
	cmp	eax,  dword ptr [dword ptr [rip + rgid]]
	je	.label_91
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, OFFSET FLAT:egid
	call	gidtostr_ptr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
	mov	edi,  dword ptr [dword ptr [rip + egid]]
	call	getgrgid
	test	rax, rax
	je	.label_91
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_98
	xor	eax, eax
	call	__printf_chk
.label_91:
	test	r14, r14
	je	.label_102
	mov	esi, 0xffffffff
	test	r15, r15
	je	.label_103
	mov	esi, dword ptr [r15 + 0x14]
	jmp	.label_103
.label_102:
	mov	esi,  dword ptr [dword ptr [rip + egid]]
.label_103:
	lea	rdx, [rsp]
	mov	rdi, r14
	call	xgetgroups
	mov	ebx, eax
	test	ebx, ebx
	js	.label_83
	je	.label_86
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_87:
	test	rbp, rbp
	jle	.label_97
	mov	edi, 0x2c
	call	putchar_unlocked
.label_97:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rax + rbp*4]
	call	gidtostr_ptr
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rax, qword ptr [rsp]
	mov	edi, dword ptr [rax + rbp*4]
	call	getgrgid
	test	rax, rax
	je	.label_99
	mov	rdx, qword ptr [rax]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_98
	xor	eax, eax
	call	__printf_chk
.label_99:
	inc	rbp
	cmp	ebp, ebx
	jne	.label_87
.label_86:
	mov	rdi, qword ptr [rsp]
	call	free
	jmp	.label_92
.label_83:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	test	r14, r14
	je	.label_94
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	jmp	.label_93
.label_94:
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
.label_93:
	mov	byte ptr [byte ptr [rip + ok]],  0
.label_92:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402290

	.globl uidtostr_ptr
	.type uidtostr_ptr, @function
uidtostr_ptr:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:uidtostr_ptr.buf
	jmp	umaxtostr
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0

	.globl gidtostr_ptr
	.type gidtostr_ptr, @function
gidtostr_ptr:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf
	jmp	umaxtostr
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4022b0

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
	mov	dword ptr [rsp + 8], r9d
	mov	ebx, r8d
	mov	r14d, ecx
	mov	r13d, edx
	mov	r12, rdi
	mov	r15b, 1
	xor	ebp, ebp
	test	r12, r12
	je	.label_113
	mov	edi, esi
	call	getpwuid
	mov	rbp, rax
	test	rbp, rbp
	setne	r15b
.label_113:
	movzx	esi, bl
	mov	edi, r13d
	mov	dword ptr [rsp + 0xc], esi
	call	print_group
	mov	bl, al
	test	bl, bl
	je	.label_116
	mov	bl, r15b
.label_116:
	cmp	r14d, r13d
	je	.label_106
	mov	eax, dword ptr [rsp + 8]
	movsx	edi, al
	call	putchar_unlocked
	mov	edi, r14d
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_111
	mov	eax, ebx
.label_111:
	mov	bl, al
.label_106:
	test	rbp, rbp
	mov	esi, r14d
	je	.label_112
	mov	esi, dword ptr [rbp + 0x14]
.label_112:
	lea	rdx, [rsp + 0x10]
	mov	rdi, r12
	call	xgetgroups
	test	eax, eax
	js	.label_117
	je	.label_107
	mov	ecx, dword ptr [rsp + 8]
	movsx	r12d, cl
	movsxd	rbp, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	rax, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rax + r15*4]
	cmp	eax, r13d
	je	.label_105
	cmp	eax, r14d
	je	.label_105
	mov	edi, r12d
	call	putchar_unlocked
	mov	rax, qword ptr [rsp + 0x10]
	mov	edi, dword ptr [rax + r15*4]
	mov	esi, dword ptr [rsp + 0xc]
	call	print_group
	test	al, al
	je	.label_108
	mov	eax, ebx
.label_108:
	mov	bl, al
.label_105:
	inc	r15
	cmp	r15, rbp
	jl	.label_110
.label_107:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	and	bl, 1
	jmp	.label_115
.label_117:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	test	r12, r12
	je	.label_114
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_109
.label_114:
	mov	esi, OFFSET FLAT:label_101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_109:
	xor	ebx, ebx
.label_115:
	mov	eax, ebx
	add	rsp, 0x18
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
	#Procedure 0x402420

	.globl print_group
	.type print_group, @function
print_group:
	push	rbx
	sub	rsp, 0x10
	mov	dword ptr [rsp + 0xc], edi
	mov	bl, 1
	test	sil, sil
	je	.label_118
	call	getgrgid
	test	rax, rax
	je	.label_119
	mov	rdi, qword ptr [rax]
	mov	bl, 1
	jmp	.label_121
.label_119:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	ecx, dword ptr [rsp + 0xc]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
.label_118:
	lea	rdi, [rsp + 0xc]
	call	gidtostr_ptr_0
	mov	rdi, rax
.label_121:
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl gidtostr_ptr_0
	.type gidtostr_ptr_0, @function
gidtostr_ptr_0:
	mov	edi, dword ptr [rdi]
	mov	esi, OFFSET FLAT:gidtostr_ptr.buf_0
	jmp	umaxtostr
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4024a0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024b0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_125
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_122
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_122
.label_125:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_126
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_124
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_126:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_124:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_127
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
	#Procedure 0x402580

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_129:
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
	ja	.label_129
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4025d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_133
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_135
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_130
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_135
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_131
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_131:
	mov	rbx, r14
.label_135:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_133:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_134
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402680
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
	#Procedure 0x4026c0
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
	#Procedure 0x4026d0
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
	#Procedure 0x4026e0

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
	#Procedure 0x402720
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
	#Procedure 0x402740

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_136
	test	rdx, rdx
	je	.label_136
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_136:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402770
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
	#Procedure 0x4027f0

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
.label_167:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_172
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_176]]
.label_510:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_180
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_185
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_511:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_196
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_196
	xor	r14d, r14d
.label_210:
	cmp	r14, r11
	jae	.label_207
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_207:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_210
.label_196:
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
	jmp	.label_214
.label_503:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_214
.label_506:
	mov	al, 1
.label_504:
	mov	r12b, 1
.label_507:
	test	r12b, 1
	mov	cl, 1
	je	.label_226
	mov	ecx, eax
.label_226:
	mov	al, cl
.label_505:
	test	r12b, 1
	jne	.label_229
	test	r11, r11
	je	.label_231
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_231:
	mov	r14d, 1
	jmp	.label_236
.label_229:
	xor	r14d, r14d
.label_236:
	mov	ecx, OFFSET FLAT:label_185
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_214
.label_508:
	test	r12b, 1
	jne	.label_245
	test	r11, r11
	je	.label_192
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_192:
	mov	r14d, 1
	jmp	.label_220
.label_509:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_141
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_214
.label_245:
	xor	r14d, r14d
.label_220:
	mov	eax, OFFSET FLAT:label_141
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_214:
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
	jmp	.label_152
	nop	dword ptr [rax]
.label_191:
	inc	rsi
.label_152:
	cmp	rbp, -1
	je	.label_184
	cmp	rsi, rbp
	jne	.label_206
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_184:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_190
.label_206:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_199
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_202
	cmp	rbp, -1
	jne	.label_202
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
.label_202:
	cmp	rbx, rbp
	jbe	.label_212
.label_199:
	xor	r8d, r8d
.label_179:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_215
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_218]]
.label_522:
	test	rsi, rsi
	jne	.label_200
	jmp	.label_140
	nop	
.label_212:
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
	jne	.label_234
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_179
	jmp	.label_151
.label_234:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_179
.label_526:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_251
	test	rsi, rsi
	jne	.label_137
	cmp	rbp, 1
	je	.label_140
	xor	r13d, r13d
	jmp	.label_142
.label_515:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_145
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	cmp	r12d, 2
	jne	.label_149
	mov	eax, r9d
	and	al, 1
	jne	.label_149
	cmp	r14, r11
	jae	.label_239
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_239:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_156
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_156:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_162
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_162:
	add	r14, 3
	mov	r9b, 1
.label_149:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_203
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_203:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_171
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_171
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_171
	cmp	r14, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_181:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_242
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_242:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_142
.label_516:
	mov	bl, 0x62
	jmp	.label_194
.label_517:
	mov	cl, 0x74
	jmp	.label_198
.label_518:
	mov	bl, 0x76
	jmp	.label_194
.label_519:
	mov	bl, 0x66
	jmp	.label_194
.label_520:
	mov	cl, 0x72
	jmp	.label_198
.label_523:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_205
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
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
	jae	.label_211
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_211:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_219
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_219:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_222
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_222:
	add	r14, 3
	xor	r9d, r9d
.label_205:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_142
.label_524:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_232
	cmp	r12d, 2
	jne	.label_200
	cmp	byte ptr [rsp + 7], 0
	je	.label_200
	jmp	.label_147
.label_525:
	cmp	r12d, 2
	jne	.label_241
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_195
.label_215:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_169
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
.label_168:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_148
	test	r8b, r8b
	je	.label_148
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_142
.label_251:
	test	rsi, rsi
	jne	.label_166
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_166
.label_140:
	mov	dl, 1
.label_521:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_147
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_142:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_177
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_178
	jmp	.label_182
	nop	word ptr cs:[rax + rax]
.label_177:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_182
.label_178:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_186
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_195
	jmp	.label_159
	nop	dword ptr [rax]
.label_182:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_159
	jmp	.label_195
.label_186:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_159
.label_145:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_191
	xor	r15d, r15d
	jmp	.label_200
.label_241:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_198
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_195
.label_198:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_147
.label_194:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_142
	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	cmp	r12d, 2
	jne	.label_227
	mov	eax, r9d
	and	al, 1
	jne	.label_227
	cmp	r14, r11
	jae	.label_230
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_230:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_238
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_238:
	add	r14, 3
	mov	r9b, 1
.label_227:
	cmp	r14, r11
	jae	.label_244
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_244:
	inc	r14
	jmp	.label_213
.label_169:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_249
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_249:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_246:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_155
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_158
	cmp	rbp, -2
	je	.label_170
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_164
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_243:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_146
	bt	rsi, rdx
	jb	.label_151
.label_146:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_243
.label_164:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_188
	xor	r13d, r13d
.label_188:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_246
	jmp	.label_168
.label_171:
	xor	r13d, r13d
	jmp	.label_142
.label_166:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_142
.label_232:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_200
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_200
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_200
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_247
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_150
	cmp	byte ptr [rsp + 7], 0
	jne	.label_147
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_223
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_223:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_193
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_193:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_235
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_235:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_209
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_209:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_142
.label_200:
	xor	eax, eax
.label_137:
	xor	r13d, r13d
	jmp	.label_142
.label_148:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_248
	nop	word ptr cs:[rax + rax]
.label_204:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_248:
	test	r8b, r8b
	je	.label_138
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_139
	cmp	r14, r11
	jae	.label_143
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_143:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_139
	nop	dword ptr [rax]
.label_138:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_151
	cmp	r12d, 2
	jne	.label_154
	mov	eax, r9d
	and	al, 1
	jne	.label_154
	cmp	r14, r11
	jae	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_157:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_161
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_161:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_165
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_165:
	add	r14, 3
	mov	r9b, 1
.label_154:
	cmp	r14, r11
	jae	.label_221
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_221:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_174
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_174:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_160
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_160:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_139:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_195
	test	r9b, 1
	je	.label_197
	mov	ebx, eax
	and	bl, 1
	jne	.label_197
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_201
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_201:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_224
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_224:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_197:
	cmp	r14, r11
	jae	.label_204
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_195:
	test	r9b, 1
	je	.label_216
	and	al, 1
	jne	.label_216
	cmp	r14, r11
	jae	.label_217
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_217:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_237
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_237:
	add	r14, 2
	xor	r9d, r9d
.label_216:
	mov	ebx, r15d
.label_213:
	cmp	r14, r11
	jae	.label_225
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_225:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_191
.label_158:
	xor	r13d, r13d
.label_155:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_168
.label_170:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_240
	mov	rsi, qword ptr [rsp + 0x50]
.label_208:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_189
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_208
	xor	r13d, r13d
	jmp	.label_168
.label_240:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_168
.label_189:
	xor	r13d, r13d
	jmp	.label_168
.label_247:
	xor	r13d, r13d
	jmp	.label_142
.label_150:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_142
	nop	dword ptr [rax + rax]
.label_190:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_144
	or	dl, al
	je	.label_151
.label_144:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_153
	or	dl, al
	jne	.label_153
	test	r10b, 1
	jne	.label_163
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_153
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_167
.label_153:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_173
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_175
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_175
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_187:
	cmp	r14, r11
	jae	.label_183
	mov	byte ptr [rcx + r14], al
.label_183:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_187
	jmp	.label_175
.label_147:
	mov	qword ptr [rsp + 0x20], rbp
.label_151:
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
.label_228:
	mov	r14, rax
.label_233:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_163:
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
	jmp	.label_228
.label_173:
	mov	rcx, qword ptr [rsp + 8]
.label_175:
	cmp	r14, r11
	jae	.label_233
	mov	byte ptr [rcx + r14], 0
	jmp	.label_233
.label_172:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0
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
	#Procedure 0x4035c0

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
	je	.label_252
	mov	qword ptr [rax], rbx
.label_252:
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
	#Procedure 0x4036b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_253
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_256:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_256
.label_253:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_257
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_254]], OFFSET FLAT:slot0
.label_257:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_255
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_255:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403760

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
	js	.label_258
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_261
	cmp	r12d, 0x7fffffff
	je	.label_263
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
	jne	.label_259
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_259:
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
.label_261:
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
	jbe	.label_264
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_260
.label_264:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_262
	mov	rdi, r14
	call	free
.label_262:
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
.label_260:
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
.label_258:
	call	abort
.label_263:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403920

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403930
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
	#Procedure 0x403940
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
	#Procedure 0x403950

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
	#Procedure 0x403990

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
	je	.label_265
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
.label_265:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4039f0

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
	#Procedure 0x403a30
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
	#Procedure 0x403a50
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
	#Procedure 0x403a70

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
	mov	rcx,  qword ptr [word ptr [rip + label_266]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_268]]
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
	#Procedure 0x403ae0

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
	#Procedure 0x403af0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b00
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b10
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
	#Procedure 0x403b60

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

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
	mov	rax,  qword ptr [word ptr [rip + label_266]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_267]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_268]]
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
	#Procedure 0x403be0
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
	#Procedure 0x403c00
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
	#Procedure 0x403c20

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c30
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
	#Procedure 0x403c40

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

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
	#Procedure 0x403c60

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
	jne	.label_276
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
	je	.label_273
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_269
	mov	eax, OFFSET FLAT:label_270
	jmp	.label_271
.label_273:
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
	je	.label_272
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_274
	mov	eax, OFFSET FLAT:label_275
	jmp	.label_271
.label_272:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_141
	mov	eax, OFFSET FLAT:label_185
.label_271:
	cmove	rax, rcx
.label_276:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d20

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
	je	.label_278
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_279
	jmp	.label_277
.label_278:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_277
.label_279:
	mov	eax, 1
	test	bpl, bpl
	je	.label_277
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
.label_277:
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
	#Procedure 0x403da0

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
	je	.label_282
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_281
.label_282:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_281
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_281
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
.label_281:
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
	#Procedure 0x403e30

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
	je	.label_283
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_285
	jmp	.label_284
.label_283:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_284
.label_285:
	mov	eax, 1
	test	bpl, bpl
	je	.label_284
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
.label_284:
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
	#Procedure 0x403eb0

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
	je	.label_288
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_287
	jmp	.label_286
.label_288:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_286
.label_287:
	mov	eax, 1
	test	bpl, bpl
	je	.label_286
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
.label_286:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f20

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
	je	.label_291
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_289
	jmp	.label_290
.label_291:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_290
.label_289:
	mov	eax, 1
	test	bpl, bpl
	je	.label_290
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_290:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403f80

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
	je	.label_292
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_294
	jmp	.label_293
.label_292:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_293
.label_294:
	mov	eax, 1
	test	bpl, bpl
	je	.label_293
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_293:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403fd0

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
	je	.label_297
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_296
	jmp	.label_295
.label_297:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_295
.label_296:
	mov	eax, 1
	test	bpl, bpl
	je	.label_295
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_295:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404020

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_300
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_299
	jmp	.label_298
.label_300:
	mov	eax, 1
	test	cl, cl
	je	.label_298
.label_299:
	xor	eax, eax
.label_298:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404050

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
	je	.label_302
	mov	esi, 0x3a
	mov	rdi, r13
	call	strchr
	mov	r14, rax
.label_302:
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
	je	.label_301
	test	r14, r14
	jne	.label_301
	test	rbp, rbp
	je	.label_301
	mov	esi, 0x2e
	mov	rdi, r13
	call	strchr
	test	rax, rax
	je	.label_301
	mov	rdi, r13
	mov	rsi, rax
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, r15
	mov	r9, qword ptr [rsp]
	call	parse_with_separator
	test	rax, rax
	cmovne	rax, rbp
	jmp	.label_303
.label_301:
	mov	rax, rbp
.label_303:
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
	#Procedure 0x404100

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
	je	.label_304
	mov	esi, dword ptr [rcx]
.label_304:
	test	rbp, rbp
	je	.label_307
	mov	qword ptr [rbp], 0
.label_307:
	test	r9, r9
	je	.label_319
	mov	qword ptr [r9], 0
.label_319:
	test	r15, r15
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 4], eax
	je	.label_322
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	xor	r13d, r13d
	mov	rbx, r15
	sub	rbx, rdi
	je	.label_326
	lea	rsi, [rbx + 1]
	call	xmemdup
	mov	r13, rax
	mov	byte ptr [r13 + rbx], 0
.label_326:
	lea	rax, [r15 + 1]
	xor	r12d, r12d
	cmp	byte ptr [r15 + 1], 0
	cmovne	r12, rax
	jmp	.label_332
.label_322:
	xor	r14d, r14d
	cmp	byte ptr [rdi], 0
	je	.label_306
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x18], r9
	call	xstrdup
	mov	r13, rax
	xor	r12d, r12d
.label_332:
	xor	r14d, r14d
	test	r13, r13
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_317
	cmp	byte ptr [r13], 0x2b
	je	.label_324
	mov	rdi, r13
	call	getpwnam
	test	rax, rax
	je	.label_324
	mov	ecx, dword ptr [rax + 0x10]
	mov	dword ptr [rsp + 4], ecx
	xor	r14d, r14d
	test	r15, r15
	je	.label_328
	test	r12, r12
	jne	.label_328
	mov	ebx, dword ptr [rax + 0x14]
	mov	edi, ebx
	call	getgrgid
	test	rax, rax
	mov	qword ptr [rsp + 8], rbx
	je	.label_334
	mov	rdi, qword ptr [rax]
	jmp	.label_305
.label_324:
	mov	ebp, OFFSET FLAT:label_315
	xor	r14d, r14d
	test	r15, r15
	je	.label_316
	test	r12, r12
	je	.label_309
.label_316:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_30
	mov	rdi, r13
	call	xstrtoul
	test	eax, eax
	jne	.label_320
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, rax
	shr	rcx, 0x20
	jne	.label_320
	xor	ebp, ebp
	cmp	eax, -1
	jne	.label_318
.label_320:
	mov	ebp, OFFSET FLAT:label_327
	mov	eax, dword ptr [rsp + 4]
.label_318:
	xor	r14d, r14d
	mov	dword ptr [rsp + 4], eax
	jmp	.label_309
.label_317:
	xor	r13d, r13d
	xor	ebp, ebp
	jmp	.label_329
.label_306:
	xor	r13d, r13d
	jmp	.label_330
.label_334:
	lea	rsi, [rsp + 0x30]
	mov	rdi, rbx
	call	umaxtostr
	mov	rdi, rax
.label_305:
	call	xstrdup
	mov	r14, rax
	call	endgrent
.label_328:
	xor	ebp, ebp
.label_309:
	call	endpwent
.label_329:
	test	r12, r12
	je	.label_308
	test	rbp, rbp
	jne	.label_308
	cmp	byte ptr [r12], 0x2b
	je	.label_310
	mov	rdi, r12
	call	getgrnam
	test	rax, rax
	je	.label_310
	mov	ebx, dword ptr [rax + 0x10]
	jmp	.label_312
.label_308:
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	jmp	.label_321
.label_310:
	lea	rcx, [rsp + 0x30]
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_30
	mov	rdi, r12
	call	xstrtoul
	test	eax, eax
	jne	.label_325
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rax, rbx
	shr	rax, 0x20
	jne	.label_325
	cmp	ebx, -1
	jne	.label_312
.label_325:
	mov	ebp, OFFSET FLAT:label_333
	mov	rbx, qword ptr [rsp + 8]
.label_312:
	call	endgrent
	mov	rdi, r12
	call	xstrdup
	mov	r14, rax
	mov	esi, ebx
	mov	r9, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x10]
.label_321:
	test	rbp, rbp
	je	.label_311
	xor	ebx, ebx
	jmp	.label_313
.label_311:
	mov	rbp, qword ptr [rsp + 0x20]
.label_330:
	mov	rax, qword ptr [rsp + 0x28]
	mov	edx, dword ptr [rsp + 4]
	mov	dword ptr [rax], edx
	test	rcx, rcx
	je	.label_314
	mov	dword ptr [rcx], esi
.label_314:
	test	rbp, rbp
	je	.label_323
	mov	qword ptr [rbp], r13
	xor	r13d, r13d
.label_323:
	mov	bl, 1
	xor	ebp, ebp
	test	r9, r9
	je	.label_313
	mov	qword ptr [r9], r14
	xor	ebp, ebp
	xor	r14d, r14d
.label_313:
	mov	rdi, r13
	call	free
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	bl, bl
	jne	.label_331
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbp
	call	dcgettext
.label_331:
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
	#Procedure 0x404390

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
	je	.label_344
	mov	edx, OFFSET FLAT:label_350
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_338
.label_344:
	mov	edx, OFFSET FLAT:label_339
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_338:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_345
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_346]]
.label_552:
	add	rsp, 8
	jmp	.label_337
.label_345:
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
	jmp	.label_337
.label_553:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
.label_554:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
.label_555:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
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
.label_556:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_348
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
	jmp	.label_337
.label_557:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_347
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
	jmp	.label_337
.label_558:
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
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_337
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
	jmp	.label_337
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_336
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
	jmp	.label_337
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_342
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
.label_337:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_354:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_354
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404720

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_356:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_355
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_357
	nop	dword ptr [rax]
.label_355:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_357:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_358
	inc	r9
	cmp	r9, 0xa
	jb	.label_356
.label_358:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404780

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_359
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_359:
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
	#Procedure 0x404810
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_360
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_361
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404890
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_364
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_364:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_365
	test	rax, rax
	je	.label_366
.label_365:
	pop	rbx
	ret	
.label_366:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_367
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_367:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_368
	test	rbx, rbx
	jne	.label_368
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_368:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_370
	test	rax, rax
	je	.label_369
.label_370:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404940

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_371
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_374
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_372
.label_371:
	test	rcx, rcx
	jne	.label_375
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_375:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_373
.label_372:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_374:
	call	xalloc_die
.label_373:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049c0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049d0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049e0
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
	#Procedure 0x404a10
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_376
	call	rpl_calloc
	test	rax, rax
	je	.label_376
	pop	rcx
	ret	
.label_376:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

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
	#Procedure 0x404a70

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
	#Procedure 0x404a90

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_123
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x404ac0

	.globl xgetgroups
	.type xgetgroups, @function
xgetgroups:
	push	rbx
	call	mgetgroups
	mov	ebx, eax
	cmp	ebx, -1
	jne	.label_379
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	je	.label_378
.label_379:
	mov	eax, ebx
	pop	rbx
	ret	
.label_378:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ae0

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
	jae	.label_391
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_386:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_386
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_380
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoul
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_392
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_396
	cmp	eax, 0x22
	jne	.label_380
	mov	r12d, 1
.label_396:
	test	rbp, rbp
	jne	.label_384
	jmp	.label_390
.label_392:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_380
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_380
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_380
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_384:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_390
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_389
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_382
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_382
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_388
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_385
	cmp	ecx, 0x44
	je	.label_385
	cmp	ecx, 0x69
	jne	.label_388
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_388
.label_385:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_388
.label_382:
	mov	rsi, r14
.label_388:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_389
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_397]]
.label_474:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_381
.label_389:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_383
.label_475:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_381
.label_476:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_381
.label_478:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_381
.label_472:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_387
.label_473:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_381
.label_477:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_381
.label_479:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_381
.label_480:
	lea	rdi, [rsp]
	mov	edx, 7
.label_381:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_387:
	mov	rsi, r14
.label_482:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_390:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_383:
	mov	r15d, r12d
.label_380:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_481:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_387
.label_483:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_387
.label_391:
	mov	edi, OFFSET FLAT:label_393
	mov	esi, OFFSET FLAT:label_394
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_395
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	#Procedure 0x404dc0

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
	je	.label_398
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_399:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_399
.label_398:
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
	#Procedure 0x404e00

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_400
	test	rsi, rsi
	mov	ecx, 1
	je	.label_401
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_401
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_400:
	mov	ecx, 1
.label_401:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50

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
	je	.label_402
	cmp	r15, -2
	jb	.label_402
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_402
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_402:
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
	#Procedure 0x404eb0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_403
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_403
.label_404:
	ret	
.label_403:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_404
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_405
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_405:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f00
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f10
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
	#Procedure 0x404f20
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_406
.label_407:
	ret	
.label_406:
	cmp	edi, 0x7f
	je	.label_407
	xor	eax, eax
	jmp	.label_407
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f40
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
	#Procedure 0x404f50
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
	#Procedure 0x404f60
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
	#Procedure 0x404f70
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
	#Procedure 0x404f80
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_408
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_409]]
.label_410:
	ret	
.label_408:
	xor	eax, eax
	jmp	.label_410
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_411
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_411:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

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
	#Procedure 0x404fd0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_412
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_412:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ff0
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
	#Procedure 0x405000
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
	#Procedure 0x405010

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
	je	.label_414
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_413
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_413
.label_414:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_413
	test	cl, cl
	jne	.label_413
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_413:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405080

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_416
	cmp	byte ptr [rax], 0x43
	jne	.label_418
	cmp	byte ptr [rax + 1], 0
	je	.label_415
.label_418:
	mov	esi, OFFSET FLAT:label_417
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_416
.label_415:
	xor	ebx, ebx
.label_416:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050c0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_30
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_419
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050f0

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
	je	.label_426
	mov	dword ptr [rsp + 0xc], 0xa
	xor	edi, edi
	mov	esi, 0xa
	call	realloc_groupbuf
	mov	rbx, rax
	mov	r13d, 0xffffffff
	test	rbx, rbx
	je	.label_421
	mov	r15d, r12d
	mov	qword ptr [rsp + 0x10], r14
	nop	
.label_422:
	mov	r12d, dword ptr [rsp + 0xc]
	mov	rdi, rbp
	mov	esi, r15d
	mov	rdx, rbx
	lea	rcx, [rsp + 0xc]
	call	getgrouplist
	mov	r14d, eax
	test	r14d, r14d
	jns	.label_420
	mov	eax, dword ptr [rsp + 0xc]
	cmp	r12d, eax
	jne	.label_420
	add	eax, eax
	mov	dword ptr [rsp + 0xc], eax
	nop	
.label_420:
	movsxd	rsi, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	call	realloc_groupbuf
	test	rax, rax
	je	.label_433
	test	r14d, r14d
	mov	rbx, rax
	js	.label_422
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r13d, dword ptr [rsp + 0xc]
	jmp	.label_421
.label_426:
	xor	edi, edi
	xor	esi, esi
	call	getgroups
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	js	.label_428
	cmp	r12d, -1
	jne	.label_430
	test	eax, eax
	jne	.label_432
.label_430:
	inc	dword ptr [rsp + 0xc]
.label_432:
	movsxd	rsi, dword ptr [rsp + 0xc]
	xor	edi, edi
	call	realloc_groupbuf
	mov	r15, rax
	mov	r13d, 0xffffffff
	test	r15, r15
	je	.label_421
	mov	edi, dword ptr [rsp + 0xc]
	xor	eax, eax
	cmp	r12d, -1
	setne	al
	sub	edi, eax
	lea	rsi, [r15 + rax*4]
	call	getgroups
	test	eax, eax
	js	.label_431
	cmp	r12d, -1
	mov	r13d, eax
	je	.label_429
	mov	dword ptr [r15], r12d
	inc	eax
	mov	r13d, eax
.label_429:
	mov	qword ptr [r14], r15
	cmp	r13d, 2
	jl	.label_421
	mov	eax, dword ptr [r15]
	movsxd	rcx, r13d
	lea	rcx, [r15 + rcx*4]
	mov	rdx, r15
	add	rdx, 4
	jmp	.label_424
.label_433:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
	jmp	.label_421
.label_428:
	call	__errno_location
	mov	r13d, 0xffffffff
	cmp	dword ptr [rax], 0x26
	jne	.label_421
	xor	edi, edi
	mov	esi, 1
	call	realloc_groupbuf
	test	rax, rax
	je	.label_421
	mov	qword ptr [r14], rax
	mov	dword ptr [rax], r12d
	xor	r13d, r13d
	cmp	r12d, -1
	setne	r13b
	jmp	.label_421
.label_431:
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	free
	mov	dword ptr [rbx], ebp
	jmp	.label_421
.label_427:
	mov	dword ptr [r15 + 4], esi
	add	r15, 4
	jmp	.label_423
	nop	dword ptr [rax]
.label_424:
	mov	esi, dword ptr [rdx]
	cmp	esi, eax
	je	.label_425
	cmp	esi, dword ptr [r15]
	jne	.label_427
.label_425:
	dec	r13d
.label_423:
	add	rdx, 4
	cmp	rdx, rcx
	jb	.label_424
.label_421:
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
	#Procedure 0x4052d0

	.globl realloc_groupbuf
	.type realloc_groupbuf, @function
realloc_groupbuf:
	push	rax
	mov	rax, rsi
	shr	rax, 0x3d
	je	.label_434
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_434:
	shl	rsi, 2
	call	realloc
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405300

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_435
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_436
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_435
.label_436:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_435
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_437
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_437:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_435:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_438
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_438
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_438:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_439
	ret	
.label_439:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053d0

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
	jne	.label_440
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_440
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_441
.label_440:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_441:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_442
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_442:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	16
	#Procedure 0x405440

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
