	.section	.text
	.align	16
	#Procedure 0x4019d0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_14
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_22
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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_20
	mov	esi, OFFSET FLAT:label_26
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_20:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_10
	mov	ecx, OFFSET FLAT:label_15
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_15
	mov	ecx, OFFSET FLAT:label_16
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_14:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_25
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
	#Procedure 0x401bc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x418
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_84
	call	setlocale
	mov	edi, OFFSET FLAT:label_90
	mov	esi, OFFSET FLAT:label_91
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_90
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	jmp	.label_33
.label_518:
	mov	byte ptr [rip + include_home_and_shell],  1
	nop	dword ptr [rax]
.label_33:
	mov	edx, OFFSET FLAT:label_76
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_54
	add	eax, -0x62
	cmp	eax, 0x15
	ja	.label_45
	jmp	qword ptr [(rax * 8) + label_47]
.label_519:
	mov	byte ptr [rip + include_heading],  1
	jmp	.label_33
.label_520:
	mov	byte ptr [rip + include_project],  1
	jmp	.label_33
.label_521:
	mov	byte ptr [rip + include_fullname],  1
	mov	byte ptr [rip + include_where],  1
	jmp	.label_33
.label_522:
	mov	byte ptr [rip + do_short_format],  1
	jmp	.label_33
.label_523:
	mov	byte ptr [rip + include_plan],  1
	jmp	.label_33
.label_524:
	mov	byte ptr [rip + include_fullname],  1
	mov	byte ptr [rip + include_where],  1
	mov	byte ptr [rip + include_idle],  1
	jmp	.label_33
.label_525:
	mov	byte ptr [rip + do_short_format],  0
	jmp	.label_33
.label_526:
	mov	byte ptr [rip + include_fullname],  1
	jmp	.label_33
.label_54:
	cmp	eax, -1
	jne	.label_70
	movsxd	rax, dword ptr [rip + optind]
	movsxd	r12, ebp
	sub	r12, rax
	mov	cl, byte ptr [rip + do_short_format]
	cmp	cl, 1
	jne	.label_72
	test	r12d, r12d
	je	.label_81
.label_72:
	lea	r13, [rbx + rax*8]
	test	cl, cl
	je	.label_40
	mov	qword ptr [rsp + 8], r13
	test	r12d, r12d
	jle	.label_46
	lea	r14, [rsp + 0x10]
	xor	r13d, r13d
	jmp	.label_44
.label_40:
	mov	qword ptr [rsp], 0
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp]
	mov	edi, OFFSET FLAT:label_27
	xor	ecx, ecx
	call	read_utmp
	test	eax, eax
	jne	.label_36
	mov	r14, qword ptr [rsp + 0x10]
	mov	r15, qword ptr [rsp]
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_49
	mov	edx, OFFSET FLAT:label_50
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [rip + time_format],  rdx
	mov	dword ptr [rip + time_format_width],  eax
	mov	al, byte ptr [rip + include_heading]
	test	al, al
	jne	.label_51
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_60
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al, byte ptr [rip + include_fullname]
	test	al, al
	jne	.label_63
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_69
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_83
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
	mov	al, byte ptr [rip + include_idle]
	test	al, al
	jne	.label_92
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_96
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_92:
	mov	ebp, dword ptr [rip + time_format_width]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_37
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_43
	xor	eax, eax
	mov	edx, ebp
	call	__printf_chk
	mov	al, byte ptr [rip + include_where]
	test	al, al
	jne	.label_52
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_52:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_31
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_51
.label_71:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_34
.label_85:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_73
.label_32:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_74
	nop	word ptr cs:[rax + rax]
.label_44:
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rdi, rbp
	call	getpwnam
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_35
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	test	rbx, rbx
	je	.label_53
	mov	rbp, qword ptr [rbx + 0x18]
	mov	esi, 0x2c
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	je	.label_57
	mov	byte ptr [rax], 0
	mov	rbp, qword ptr [rbx + 0x18]
.label_57:
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	create_fullname
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_71
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_34:
	mov	al, byte ptr [rip + include_home_and_shell]
	test	al, al
	jne	.label_74
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [rbx + 0x20]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_93
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdx, qword ptr [rbx + 0x28]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_38
	xor	eax, eax
	call	__printf_chk
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_32
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_74:
	mov	al, byte ptr [rip + include_project]
	test	al, al
	jne	.label_55
	mov	rdi, qword ptr [rbx + 0x20]
	call	strlen
	lea	rdi, [rax + 0xa]
	call	xmalloc
	mov	r15, rax
	mov	rsi, qword ptr [rbx + 0x20]
	mov	rdi, r15
	call	stpcpy
	movabs	rcx, 0x63656a6f72702e2f
	mov	qword ptr [rax], rcx
	mov	word ptr [rax + 8], 0x74
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, r15
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	je	.label_68
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_39
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_82
	nop	dword ptr [rax + rax]
.label_48:
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rax
	call	fwrite_unlocked
.label_82:
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, r14
	mov	rcx, rbp
	call	fread_unlocked
	test	rax, rax
	jne	.label_48
	mov	rdi, rbp
	call	rpl_fclose
.label_68:
	mov	rdi, r15
	call	free
.label_55:
	mov	al, byte ptr [rip + include_plan]
	test	al, al
	jne	.label_78
	mov	rdi, qword ptr [rbx + 0x20]
	call	strlen
	lea	rdi, [rax + 7]
	call	xmalloc
	mov	rbp, rax
	mov	rsi, qword ptr [rbx + 0x20]
	mov	rdi, rbp
	call	stpcpy
	mov	byte ptr [rax + 6], 0
	mov	word ptr [rax + 4], 0x6e61
	mov	dword ptr [rax], 0x6c702e2f
	mov	esi, OFFSET FLAT:label_59
	mov	rdi, rbp
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	je	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_75
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	jmp	.label_64
	nop	word ptr [rax + rax]
.label_95:
	mov	rcx, qword ptr [rip + stdout]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, rax
	call	fwrite_unlocked
.label_64:
	mov	esi, 1
	mov	edx, 0x400
	mov	rdi, r14
	mov	rcx, rbx
	call	fread_unlocked
	test	rax, rax
	jne	.label_95
	mov	rdi, rbx
	call	rpl_fclose
.label_62:
	mov	rdi, rbp
	call	free
.label_78:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_85
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
	jmp	.label_73
	nop	word ptr cs:[rax + rax]
.label_53:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_73:
	inc	r13
	cmp	r13d, r12d
	jne	.label_44
	jmp	.label_46
.label_31:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
.label_58:
	add	r15, 0x180
.label_51:
	test	r14, r14
	je	.label_46
	dec	r14
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_58
	movzx	eax, word ptr [r15]
	cmp	eax, 7
	jne	.label_58
	lea	rbp, [r15 + 0x2c]
	test	r12d, r12d
	je	.label_66
	jle	.label_58
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_89:
	mov	rsi, qword ptr [r13 + rbx*8]
	mov	edx, 0x20
	mov	rdi, rbp
	call	strncmp
	test	eax, eax
	je	.label_66
	inc	rbx
	cmp	rbx, r12
	jl	.label_89
	jmp	.label_58
.label_66:
	mov	rdi, r15
	call	print_entry
	jmp	.label_58
.label_46:
	xor	eax, eax
	add	rsp, 0x418
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_70:
	cmp	eax, 0xffffff7d
	je	.label_80
	cmp	eax, 0xffffff7e
	jne	.label_45
	xor	edi, edi
	call	usage
.label_80:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	esi, OFFSET FLAT:label_15
	mov	edx, OFFSET FLAT:label_9
	mov	r8d, OFFSET FLAT:label_86
	mov	r9d, OFFSET FLAT:label_87
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_88
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_45:
	mov	edi, 1
	call	usage
.label_81:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
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
.label_36:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	edx, OFFSET FLAT:label_27
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	esi, ebx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402390

	.globl print_entry
	.type print_entry, @function
print_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	rbx, rdi
	mov	cl, byte ptr [rbx + 8]
	cmp	cl, 0x2f
	jne	.label_102
	lea	rax, [rsp]
	jmp	.label_108
.label_102:
	lea	rax, [rsp + 5]
	mov	word ptr [rsp + 4], 0x2f
	mov	dword ptr [rsp], 0x7665642f
.label_108:
	test	cl, cl
	je	.label_117
	lea	rdx, [rbx + 0x28]
	lea	rsi, [rbx + 9]
	inc	rax
	mov	rdi, rax
	nop	word ptr [rax + rax]
.label_126:
	mov	rax, rdi
	mov	byte ptr [rax - 1], cl
	cmp	rsi, rdx
	jae	.label_117
	movzx	ecx, byte ptr [rsi]
	inc	rsi
	lea	rdi, [rax + 1]
	test	cl, cl
	jne	.label_126
.label_117:
	mov	byte ptr [rax], 0
	lea	rsi, [rsp]
	lea	rdx, [rsp + 0x138]
	mov	edi, 1
	call	__xstat
	mov	r15d, 0x3f
	xor	r13d, r13d
	test	eax, eax
	jne	.label_103
	test	byte ptr [rsp + 0x150], 0x10
	mov	eax, 0x20
	mov	r15d, 0x2a
	cmovne	r15d, eax
	mov	r13, qword ptr [rsp + 0x180]
.label_103:
	lea	r14, [rbx + 8]
	lea	rbp, [rbx + 0x2c]
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_115
	mov	edx, 0x20
	xor	eax, eax
	mov	rcx, rbp
	call	__printf_chk
	mov	al, byte ptr [rip + include_fullname]
	test	al, al
	jne	.label_123
	lea	rax, [rsp + 0x30]
	lea	rcx, [rbx + 0x4c]
	nop	word ptr cs:[rax + rax]
.label_99:
	movzx	edx, byte ptr [rbp]
	test	dl, dl
	je	.label_97
	inc	rbp
	mov	byte ptr [rax], dl
	inc	rax
	cmp	rbp, rcx
	jb	.label_99
.label_97:
	mov	byte ptr [rax], 0
	lea	rdi, [rsp + 0x30]
	call	getpwnam
	mov	rbp, rax
	test	rbp, rbp
	je	.label_106
	mov	r12, qword ptr [rbp + 0x18]
	mov	esi, 0x2c
	mov	rdi, r12
	call	strchr
	test	rax, rax
	je	.label_113
	mov	byte ptr [rax], 0
	mov	r12, qword ptr [rbp + 0x18]
.label_113:
	mov	rsi, qword ptr [rbp]
	mov	rdi, r12
	call	create_fullname
	mov	rbp, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_120
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	mov	rdi, rbp
	call	free
	jmp	.label_123
.label_106:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_98
	xor	eax, eax
	mov	rdx, rcx
	call	__printf_chk
.label_123:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_104
	mov	ecx, 0x20
	xor	eax, eax
	mov	edx, r15d
	mov	r8, r14
	call	__printf_chk
	mov	al, byte ptr [rip + include_idle]
	test	al, al
	jne	.label_111
	test	r13, r13
	je	.label_118
	mov	rcx, qword ptr [rip + idle_string.now]
	test	rcx, rcx
	jne	.label_119
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
	mov	rcx, qword ptr [rip + idle_string.now]
.label_119:
	sub	rcx, r13
	mov	ebp, OFFSET FLAT:label_127
	cmp	rcx, 0x3c
	jl	.label_124
	cmp	rcx, 0x1517f
	jg	.label_133
	mov	rax, rcx
	shr	rax, 4
	movabs	rdx, 0x91a2b3c4d5e6f81
	mul	rdx
	mov	r8, rdx
	shr	r8, 3
	imul	rax, r8, 0xe10
	sub	rcx, rax
	movabs	rdx, 0x8888888888888889
	mov	rax, rcx
	mul	rdx
	mov	r9, rdx
	shr	r9, 5
	mov	ebp, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_100
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_124
.label_118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdx, rcx
	jmp	.label_131
.label_133:
	movabs	rdx, 0xc22e450672894ab7
	mov	rax, rcx
	mul	rdx
	mov	r8, rdx
	shr	r8, 0x10
	mov	ebp, OFFSET FLAT:idle_string.buf
	mov	edi, OFFSET FLAT:idle_string.buf
	mov	esi, 1
	mov	edx, 0x16
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	call	__sprintf_chk
.label_124:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_29
	xor	eax, eax
	mov	rdx, rbp
.label_131:
	call	__printf_chk
.label_111:
	movsxd	rax, dword ptr [rbx + 0x154]
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rsp + 0x30]
	call	localtime
	test	rax, rax
	je	.label_129
	mov	rdx, qword ptr [rip + time_format]
	mov	ebp, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_128
.label_129:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	esi, OFFSET FLAT:time_string.buf
	call	imaxtostr
	mov	rbp, rax
.label_128:
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdx, rbp
	call	__printf_chk
	mov	al, byte ptr [rip + include_where]
	test	al, al
	jne	.label_110
	mov	cl, byte ptr [rbx + 0x4c]
	test	cl, cl
	je	.label_110
	lea	rax, [rbx + 0x14c]
	add	rbx, 0x4d
	lea	rsi, [rsp + 0x31]
	nop	word ptr cs:[rax + rax]
.label_132:
	mov	rdx, rsi
	mov	byte ptr [rdx - 1], cl
	cmp	rbx, rax
	jae	.label_130
	movzx	ecx, byte ptr [rbx]
	inc	rbx
	lea	rsi, [rdx + 1]
	test	cl, cl
	jne	.label_132
.label_130:
	mov	byte ptr [rdx], 0
	lea	r14, [rsp + 0x30]
	mov	esi, 0x3a
	mov	rdi, r14
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_105
	mov	rbp, rax
	inc	rbp
	mov	byte ptr [rax], 0
.label_105:
	xor	ebx, ebx
	cmp	byte ptr [rsp + 0x30], 0
	je	.label_109
	lea	rdi, [rsp + 0x30]
	call	canon_host
	mov	rbx, rax
.label_109:
	test	rbx, rbx
	cmovne	r14, rbx
	mov	edi, 1
	test	rbp, rbp
	je	.label_116
	mov	esi, OFFSET FLAT:label_121
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	__printf_chk
	jmp	.label_107
.label_116:
	mov	esi, OFFSET FLAT:label_38
	xor	eax, eax
	mov	rdx, r14
	call	__printf_chk
.label_107:
	test	rbx, rbx
	je	.label_110
	mov	rdi, r14
	call	free
.label_110:
	mov	rdi, qword ptr [rip + stdout]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_122
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_114:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_122:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_114
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl create_fullname
	.type create_fullname, @function
create_fullname:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	call	strlen
	mov	r15, rax
	xor	ebx, ebx
	mov	rax, r12
	nop	
.label_140:
	movzx	ecx, byte ptr [rax]
	xor	edx, edx
	cmp	cl, 0x26
	sete	dl
	add	rbx, rdx
	inc	rax
	test	cl, cl
	jne	.label_140
	inc	r15
	test	rbx, rbx
	je	.label_142
	mov	rdi, r14
	call	strlen
	mov	rcx, rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_134
	imul	rcx, rbx
	mov	rax, rcx
	sub	rax, rbx
	add	r15, rax
	cmp	r15, rcx
	jb	.label_134
.label_142:
	mov	rdi, r15
	call	xmalloc
	lea	r13, [r14 + 1]
	mov	qword ptr [rsp], rax
	mov	rbp, rax
	jmp	.label_139
	nop	dword ptr [rax + rax]
.label_136:
	inc	r12
.label_139:
	mov	al, byte ptr [r12]
	cmp	al, 0x26
	je	.label_137
	test	al, al
	je	.label_138
	mov	byte ptr [rbp], al
	inc	rbp
	inc	r12
	jmp	.label_139
	nop	word ptr [rax + rax]
.label_137:
	mov	bl, byte ptr [r14]
	movzx	r15d, bl
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	test	byte ptr [rax + r15*2 + 1], 2
	jne	.label_143
	mov	rax, r14
	jmp	.label_135
	nop	dword ptr [rax]
.label_143:
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + r15*4]
	mov	byte ptr [rbp], al
	inc	rbp
	mov	bl, byte ptr [r13]
	mov	rax, r13
.label_135:
	test	bl, bl
	je	.label_136
	inc	rax
.label_141:
	mov	byte ptr [rbp], bl
	inc	rbp
	movzx	ebx, byte ptr [rax]
	inc	rax
	test	bl, bl
	jne	.label_141
	jmp	.label_136
.label_138:
	mov	byte ptr [rbp], 0
	mov	rax, qword ptr [rsp]
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_134:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4028e0

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_146
	mov	dword ptr [rip + last_cherror],  eax
	xor	ebx, ebx
	jmp	.label_144
.label_146:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_145
	mov	dword ptr [rip + last_cherror],  0xfffffff6
.label_145:
	mov	rdi, qword ptr [rsp + 8]
	call	freeaddrinfo
.label_144:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402960
	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:

	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [rip + canon_host_r.hints],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_149
	xor	ebx, ebx
	test	r14, r14
	je	.label_147
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_147
.label_149:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_148
	test	rbx, rbx
	jne	.label_148
	mov	dword ptr [r14], 0xfffffff6
.label_148:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_147:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4029e0
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi, dword ptr [rip + last_cherror]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a10

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_155
	mov	bl, byte ptr [rip + ignore_EPIPE]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_152
	cmp	dword ptr [rbp], 0x20
	jne	.label_152
.label_155:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_151
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_152:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_153
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, qword ptr [rip + file_name]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_150
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_151:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_150:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_154
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
	#Procedure 0x402ad0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_157
	cmp	byte ptr [rax], 0x43
	jne	.label_159
	cmp	byte ptr [rax + 1], 0
	je	.label_156
.label_159:
	mov	esi, OFFSET FLAT:label_158
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_157
.label_156:
	xor	ebx, ebx
.label_157:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_160
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_161:
	mov	rax, rcx
	imul	r8
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + rax]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	add	edi, 0x30
	mov	byte ptr [rsi - 1], dil
	dec	rsi
	add	rdx, rax
	add	rcx, 9
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_161
	jmp	.label_163
.label_160:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_162:
	mov	rax, rcx
	imul	r8
	mov	r10, rdx
	shr	r10, 0x3f
	sar	rdx, 2
	lea	edi, [rdx + r10]
	add	edi, edi
	lea	r9d, [rdi + rdi*4]
	mov	edi, ecx
	sub	edi, r9d
	mov	eax, 0x30
	sub	eax, edi
	mov	byte ptr [rsi], al
	add	rdx, r10
	add	rcx, 9
	dec	rsi
	cmp	rcx, 0x12
	mov	rcx, rdx
	ja	.label_162
	mov	byte ptr [rsi], 0x2d
.label_163:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bd0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_167
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_169
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_164
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_169
	mov	esi, OFFSET FLAT:label_166
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_165
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_165:
	mov	rbx, r14
.label_169:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_167:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_168
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c80
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
	#Procedure 0x402cc0
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
	#Procedure 0x402cd0
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
	#Procedure 0x402ce0
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
	#Procedure 0x402d20
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
	#Procedure 0x402d40
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_170
	test	rdx, rdx
	je	.label_170
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_170:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d70
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
	#Procedure 0x402df0

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
.label_217:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_214
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_219]
.label_551:
	mov	byte ptr [rsp + 7], r10b
	mov	edi, OFFSET FLAT:label_226
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_233
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10b, byte ptr [rsp + 7]
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_552:
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_243
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_243
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_258:
	cmp	r14, r11
	jae	.label_254
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_254:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_258
.label_243:
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
	jmp	.label_184
.label_544:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_184
.label_547:
	mov	al, 1
.label_545:
	mov	r12b, 1
.label_548:
	test	r12b, 1
	mov	cl, 1
	je	.label_272
	mov	ecx, eax
.label_272:
	mov	al, cl
.label_546:
	test	r12b, 1
	jne	.label_274
	test	r11, r11
	je	.label_172
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_172:
	mov	r14d, 1
	jmp	.label_276
.label_274:
	xor	r14d, r14d
.label_276:
	mov	ecx, OFFSET FLAT:label_233
	mov	qword ptr [rsp + 0x48], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x40], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_184
.label_549:
	test	r12b, 1
	jne	.label_287
	test	r11, r11
	je	.label_289
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_289:
	mov	r14d, 1
	jmp	.label_292
.label_550:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_182
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	sil, 1
	jmp	.label_184
.label_287:
	xor	r14d, r14d
.label_292:
	mov	eax, OFFSET FLAT:label_182
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x40], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_184:
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
	jmp	.label_193
	nop	dword ptr [rax]
.label_259:
	inc	rsi
.label_193:
	cmp	rbp, -1
	je	.label_237
	cmp	rsi, rbp
	jne	.label_238
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_237:
	mov	rcx, -1
	cmp	byte ptr [rdi + rsi], 0
	je	.label_245
.label_238:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_248
	mov	rax, qword ptr [rsp + 0x40]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_250
	cmp	rbp, -1
	jne	.label_250
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
.label_250:
	cmp	rbx, rbp
	jbe	.label_264
.label_248:
	xor	r8d, r8d
.label_230:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_265
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_268]
.label_463:
	test	rsi, rsi
	jne	.label_260
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_264:
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
	jne	.label_279
	cmp	byte ptr [rsp + 6], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_230
	jmp	.label_189
.label_279:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x38]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_230
.label_467:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_179
	test	rsi, rsi
	jne	.label_183
	cmp	rbp, 1
	je	.label_187
	xor	r13d, r13d
	jmp	.label_181
.label_456:
	cmp	byte ptr [rsp + 0x17], 0
	je	.label_191
	cmp	byte ptr [rsp + 6], 0
	jne	.label_192
	cmp	r12d, 2
	jne	.label_197
	mov	eax, r9d
	and	al, 1
	jne	.label_197
	cmp	r14, r11
	jae	.label_200
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_200:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_204
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_255
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	add	r14, 3
	mov	r9b, 1
.label_197:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_218
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_218:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_222
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_222
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_222
	cmp	r14, r11
	jae	.label_291
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_291:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_225
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_225:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_181
.label_457:
	mov	bl, 0x62
	jmp	.label_199
.label_458:
	mov	cl, 0x74
	jmp	.label_213
.label_459:
	mov	bl, 0x76
	jmp	.label_199
.label_460:
	mov	bl, 0x66
	jmp	.label_199
.label_461:
	mov	cl, 0x72
	jmp	.label_213
.label_464:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_256
	cmp	byte ptr [rsp + 6], 0
	jne	.label_223
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
	jae	.label_262
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_262:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_270
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_270:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_273
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_273:
	add	r14, 3
	xor	r9d, r9d
.label_256:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_181
.label_465:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_277
	cmp	r12d, 2
	jne	.label_260
	cmp	byte ptr [rsp + 6], 0
	je	.label_260
	jmp	.label_223
.label_466:
	cmp	r12d, 2
	jne	.label_288
	cmp	byte ptr [rsp + 6], 0
	jne	.label_223
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_208
.label_265:
	mov	dword ptr [rsp + 0x54], r8d
	mov	dword ptr [rsp + 0x50], r9d
	mov	byte ptr [rsp + 7], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xa8], 1
	jne	.label_174
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
.label_175:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2a]
	mov	qword ptr [rsp + 0x60], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 7]
	mov	r12, qword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x50]
	ja	.label_196
	test	r8b, r8b
	je	.label_196
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x54]
	jmp	.label_181
.label_179:
	test	rsi, rsi
	jne	.label_280
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_280
.label_187:
	mov	dl, 1
.label_462:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_223
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_181:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_231
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_232
	jmp	.label_236
	nop	word ptr cs:[rax + rax]
.label_231:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_236
.label_232:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_241
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_208
	jmp	.label_253
	nop	dword ptr [rax]
.label_236:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_253
	jmp	.label_208
.label_241:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_253
.label_191:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_259
	xor	r15d, r15d
	jmp	.label_260
.label_288:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x29], 0
	je	.label_213
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_208
.label_213:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_223
.label_199:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x17], 0
	mov	r13d, 0
	je	.label_181
	nop	word ptr cs:[rax + rax]
.label_253:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_192
	cmp	r12d, 2
	jne	.label_275
	mov	eax, r9d
	and	al, 1
	jne	.label_275
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_220
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_220:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_249
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	r14, 3
	mov	r9b, 1
.label_275:
	cmp	r14, r11
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_290:
	inc	r14
	jmp	.label_171
.label_174:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_176
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_176:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x60], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x58], rsi
.label_177:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_201
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_206
	cmp	rbp, -2
	je	.label_212
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2b]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_271
	mov	rax, qword ptr [rsp + 0x60]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_221:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_178
	bt	rsi, rdx
	jb	.label_235
.label_178:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_221
.label_271:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_246
	xor	r13d, r13d
.label_246:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x58]
	je	.label_177
	jmp	.label_175
.label_222:
	xor	r13d, r13d
	jmp	.label_181
.label_280:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_181
.label_277:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_260
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_260
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_260
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_203
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_244
	cmp	byte ptr [rsp + 6], 0
	jne	.label_263
	cmp	r14, r11
	jae	.label_207
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_207:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_180
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_180:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_278
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x22
.label_278:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_216
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + rax], 0x3f
.label_216:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_181
.label_260:
	xor	eax, eax
.label_183:
	xor	r13d, r13d
	jmp	.label_181
.label_196:
	add	qword ptr [rsp + 0x60], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_173
	nop	word ptr cs:[rax + rax]
.label_261:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_173:
	test	r8b, r8b
	je	.label_185
	mov	ecx, dword ptr [rsp + 0x54]
	test	cl, 1
	je	.label_186
	cmp	r14, r11
	jae	.label_188
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_188:
	inc	r14
	mov	dword ptr [rsp + 0x54], 0
	jmp	.label_186
	nop	dword ptr [rax]
.label_185:
	cmp	byte ptr [rsp + 6], 0
	jne	.label_189
	cmp	r12d, 2
	jne	.label_202
	mov	eax, r9d
	and	al, 1
	jne	.label_202
	cmp	r14, r11
	jae	.label_205
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_205:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_209
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_209:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_215
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_215:
	add	r14, 3
	mov	r9b, 1
.label_202:
	cmp	r14, r11
	jae	.label_251
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_251:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_227
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_227:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_234
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_234:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_186:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x60], rdx
	jbe	.label_208
	test	r9b, 1
	je	.label_210
	mov	ebx, eax
	and	bl, 1
	jne	.label_210
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_252
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_252:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_266
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_266:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_210:
	cmp	r14, r11
	jae	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_261
	nop	word ptr cs:[rax + rax]
.label_208:
	test	r9b, 1
	je	.label_267
	and	al, 1
	jne	.label_267
	cmp	r14, r11
	jae	.label_269
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_269:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_257
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_257:
	add	r14, 2
	xor	r9d, r9d
.label_267:
	mov	ebx, r15d
.label_171:
	cmp	r14, r11
	jae	.label_285
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_285:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_259
.label_206:
	xor	r13d, r13d
.label_201:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_175
.label_212:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbp, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	jbe	.label_284
	mov	rsi, qword ptr [rsp + 0x58]
.label_286:
	mov	rax, qword ptr [rsp + 0x60]
	cmp	byte ptr [rax + r12], 0
	je	.label_283
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_286
	xor	r13d, r13d
	jmp	.label_175
.label_284:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x58]
	jmp	.label_175
.label_283:
	xor	r13d, r13d
	jmp	.label_175
.label_203:
	xor	r13d, r13d
	jmp	.label_181
.label_244:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_181
	nop	dword ptr [rax + rax]
.label_239:
	mov	rcx, rsi
.label_245:
	cmp	r12d, 2
	setne	al
	test	r14, r14
	setne	dl
	cmp	byte ptr [rsp + 6], 0
	je	.label_190
	or	al, dl
	je	.label_195
.label_190:
	cmp	r12d, 2
	setne	al
	cmp	byte ptr [rsp + 6], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x2c]
	mov	rsi, qword ptr [rsp + 0xb0]
	je	.label_198
	or	al, dl
	jne	.label_198
	test	r10b, 1
	jne	.label_211
	cmp	qword ptr [rsp + 0x68], 0
	je	.label_198
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	qword ptr [rsp + 0x20], rcx
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x68]
	je	.label_217
.label_198:
	mov	rdx, qword ptr [rsp + 0x48]
	test	rdx, rdx
	je	.label_224
	cmp	byte ptr [rsp + 6], 0
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_228
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_228
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_242:
	cmp	r14, r11
	jae	.label_240
	mov	byte ptr [rcx + r14], al
.label_240:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_242
	jmp	.label_228
.label_192:
	mov	qword ptr [rsp + 0x20], rbp
.label_189:
	mov	rdx, rdi
	jmp	.label_247
.label_223:
	mov	qword ptr [rsp + 0x20], rbp
.label_235:
	mov	rdx, rdi
	mov	eax, 2
.label_229:
	mov	qword ptr [rsp + 0x38], rax
.label_247:
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
.label_281:
	mov	r14, rax
.label_282:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_195:
	mov	rdx, rdi
	mov	qword ptr [rsp + 0x20], rcx
	jmp	.label_247
.label_211:
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
	jmp	.label_281
.label_224:
	mov	rcx, qword ptr [rsp + 8]
.label_228:
	cmp	r14, r11
	jae	.label_282
	mov	byte ptr [rcx + r14], 0
	jmp	.label_282
.label_263:
	mov	qword ptr [rsp + 0x20], rbp
	mov	rdx, rdi
	mov	eax, 5
	jmp	.label_229
.label_214:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c00
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
	#Procedure 0x403cd0
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
	je	.label_293
	mov	qword ptr [rax], rbx
.label_293:
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
	#Procedure 0x403dc0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_294
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_296:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_296
.label_294:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_298
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_297], OFFSET FLAT:slot0
.label_298:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_295
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_295:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e60
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x403e70

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
	js	.label_302
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_305
	cmp	r12d, 0x7fffffff
	je	.label_300
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
	jne	.label_303
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_303:
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
.label_305:
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
	jbe	.label_301
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_304
.label_301:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_299
	mov	rdi, r14
	call	free
.label_299:
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
.label_304:
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
.label_302:
	call	abort
.label_300:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404040
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
	#Procedure 0x404060
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
	#Procedure 0x404080
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
	je	.label_306
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
.label_306:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040f0
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
	je	.label_307
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
.label_307:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404160
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
	je	.label_308
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
.label_308:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041d0
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
	je	.label_309
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
.label_309:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404240
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
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
	#Procedure 0x4042b0
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
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
	#Procedure 0x404320

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
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
	#Procedure 0x404380
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
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
	#Procedure 0x4043e0

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
	je	.label_313
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
.label_313:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404480
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_314
	test	rdx, rdx
	je	.label_314
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_314:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044f0
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_315
	test	rdx, rdx
	je	.label_315
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_315:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404560
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_316
	test	rsi, rsi
	je	.label_316
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_316:
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4045d0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax, qword ptr [rip + label_310]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_311]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_312]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_317
	test	rsi, rsi
	je	.label_317
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
.label_317:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404640
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404650
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
	#Procedure 0x404670
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404690
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
	#Procedure 0x4046b0

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
	jne	.label_319
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_324
	cmp	ecx, 0x55
	jne	.label_318
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_318
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_318
	cmp	byte ptr [rax + 3], 0x2d
	jne	.label_318
	cmp	byte ptr [rax + 4], 0x38
	jne	.label_318
	cmp	byte ptr [rax + 5], 0
	jne	.label_318
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_321
	mov	eax, OFFSET FLAT:label_322
	jmp	.label_323
.label_324:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_318
	cmp	byte ptr [rax + 2], 0x31
	jne	.label_318
	cmp	byte ptr [rax + 3], 0x38
	jne	.label_318
	cmp	byte ptr [rax + 4], 0x30
	jne	.label_318
	cmp	byte ptr [rax + 5], 0x33
	jne	.label_318
	cmp	byte ptr [rax + 6], 0x30
	jne	.label_318
	cmp	byte ptr [rax + 7], 0
	je	.label_320
.label_318:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:label_182
	mov	eax, OFFSET FLAT:label_233
.label_323:
	cmove	rax, rcx
.label_319:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_320:
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_325
	mov	eax, OFFSET FLAT:label_326
	jmp	.label_323
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404780

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
	je	.label_327
	mov	edx, OFFSET FLAT:label_337
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_343
.label_327:
	mov	edx, OFFSET FLAT:label_344
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_343:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	mov	esi, OFFSET FLAT:label_345
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_332
	jmp	qword ptr [(r12 * 8) + label_333]
.label_432:
	add	rsp, 8
	jmp	.label_330
.label_332:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
.label_433:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
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
.label_434:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_341
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
.label_435:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_338
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
.label_436:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_335
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
.label_437:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_334
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
.label_438:
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
	mov	eax, 0
	mov	rdi, r14
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x28
	jmp	.label_330
.label_439:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
.label_441:
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
	jmp	.label_330
.label_440:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_329
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
	#Procedure 0x404ae0
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
	#Procedure 0x404b10

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_351
	mov	r9, r10
	add	r9, qword ptr [r8 + 0x10]
	lea	r10d, [r10 + 8]
	mov	dword ptr [r8], r10d
	jmp	.label_354
.label_351:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_354:
	sub	rsp, 0x58
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp], rax
	xor	r9d, r9d
	test	rax, rax
	je	.label_353
	cmp	r10d, 0x29
	jae	.label_350
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_352
.label_350:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_352:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 8], rax
	mov	r9d, 1
	test	rax, rax
	je	.label_353
	cmp	r10d, 0x29
	jae	.label_348
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_349
.label_348:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_349:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x10], rax
	mov	r9d, 2
	test	rax, rax
	je	.label_353
	cmp	r10d, 0x29
	jae	.label_359
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_347
.label_359:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_347:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x18], rax
	mov	r9d, 3
	test	rax, rax
	je	.label_353
	cmp	r10d, 0x29
	jae	.label_357
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_358
.label_357:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_358:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x20], rax
	mov	r9d, 4
	test	rax, rax
	je	.label_353
	cmp	r10d, 0x29
	jae	.label_355
	movsxd	r9, r10d
	add	r9, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_356
.label_355:
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
.label_356:
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x28], rax
	mov	r9d, 5
	test	rax, rax
	je	.label_353
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x30], rax
	mov	r9d, 6
	test	rax, rax
	je	.label_353
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x38], rax
	mov	r9d, 7
	test	rax, rax
	je	.label_353
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x40], rax
	mov	r9d, 8
	test	rax, rax
	je	.label_353
	mov	r9, qword ptr [r8 + 8]
	lea	rax, [r9 + 8]
	mov	qword ptr [r8 + 8], rax
	mov	rax, qword ptr [r9]
	mov	qword ptr [rsp + 0x48], rax
	cmp	rax, 1
	mov	r9d, 9
	sbb	r9, -1
.label_353:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_360
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_360:
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
	#Procedure 0x404d90
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_361
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_362
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_9
	mov	ecx, OFFSET FLAT:label_10
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_363
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e10
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_365
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_366
	test	rax, rax
	je	.label_365
.label_366:
	pop	rbx
	ret	
.label_365:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_367
	test	rax, rax
	je	.label_368
.label_367:
	pop	rbx
	ret	
.label_368:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_369
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_370
	test	rbx, rbx
	jne	.label_370
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_370:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_371
	test	rax, rax
	je	.label_369
.label_371:
	pop	rbx
	ret	
.label_369:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ec0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_372
	test	rbx, rbx
	jne	.label_372
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_372:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_374
	test	rax, rax
	je	.label_373
.label_374:
	pop	rbx
	ret	
.label_373:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404ef0
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_378
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_380
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_375
.label_378:
	test	rcx, rcx
	jne	.label_381
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	xor	ecx, ecx
	cmp	rbx, 0x80
	seta	cl
	add	rcx, rax
.label_381:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_376
.label_375:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
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
	je	.label_380
.label_379:
	pop	rbx
	ret	
.label_380:
	call	xalloc_die
.label_376:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f90
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_382
	test	rax, rax
	je	.label_383
.label_382:
	pop	rbx
	ret	
.label_383:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_386
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_388
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_385
	call	free
	xor	eax, eax
	jmp	.label_387
.label_386:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_384
	mov	qword ptr [rsi], rbx
.label_385:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_387
	test	rax, rax
	je	.label_384
.label_387:
	pop	rbx
	ret	
.label_384:
	call	xalloc_die
.label_388:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405020
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
	je	.label_390
	test	r14, r14
	je	.label_389
.label_390:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_389:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405060
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_391
	call	rpl_calloc
	test	rax, rax
	je	.label_391
	pop	rcx
	ret	
.label_391:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405090

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
	je	.label_392
	test	r15, r15
	je	.label_393
.label_392:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_393:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0
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
	je	.label_395
	test	r15, r15
	je	.label_394
.label_395:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_394:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_67
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405150

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_397
	test	rsi, rsi
	mov	ecx, 1
	je	.label_398
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_398
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_397:
	mov	ecx, 1
.label_398:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_399
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_400
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_399
.label_400:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_399
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_401
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_401:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_399:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405220

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_402
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_402
	test	byte ptr [rbx + 1], 1
	je	.label_402
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_402:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260

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
	jne	.label_403
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_403
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_404
.label_403:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_404:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_405
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_405:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4052d0

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
	je	.label_406
	cmp	r15, -2
	jb	.label_406
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_406
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_406:
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
	#Procedure 0x405330
	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:

	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	edi, 0x21
	call	xmalloc
	mov	rbx, rax
	lea	rsi, [r14 + 0x2c]
	mov	edx, 0x20
	mov	rdi, rbx
	call	strncpy
	mov	byte ptr [rbx + 0x20], 0
	mov	rdi, rbx
	call	strlen
	test	rax, rax
	jle	.label_407
	add	rax, rbx
	nop	dword ptr [rax]
.label_408:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_407
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_408
.label_407:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405390

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14d, ecx
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rsi
	call	utmpxname
	call	setutxent
	call	getutxent
	mov	rbx, rax
	xor	r12d, r12d
	test	rbx, rbx
	mov	ebp, 0
	je	.label_420
	mov	r13d, r14d
	and	r13d, 2
	and	r14d, 1
	xor	ebp, ebp
	xor	r12d, r12d
	xor	r15d, r15d
	jmp	.label_414
.label_413:
	cmp	rbp, r15
	jne	.label_417
	test	r12, r12
	je	.label_418
	movabs	rax, 0x38e38e38e38e38
	cmp	rbp, rax
	jae	.label_410
	mov	rax, rbp
	shr	rax, 1
	lea	r15, [rbp + rax + 1]
	jmp	.label_409
.label_418:
	test	rbp, rbp
	mov	r15, rbp
	mov	eax, 1
	cmove	r15, rax
	movabs	rax, 0x55555555555556
	cmp	r15, rax
	jae	.label_411
.label_409:
	mov	rax, r15
	shl	rax, 7
	lea	rsi, [rax + rax*2]
	mov	rdi, r12
	call	xrealloc
	mov	r12, rax
.label_417:
	lea	rdi, [rbp + rbp*2]
	inc	rbp
	shl	rdi, 7
	add	rdi, r12
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	jmp	.label_416
	nop	word ptr cs:[rax + rax]
.label_414:
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_412
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	sete	al
	jmp	.label_419
	nop	word ptr cs:[rax + rax]
.label_412:
	xor	eax, eax
.label_419:
	test	r13d, r13d
	je	.label_415
	test	al, al
	je	.label_416
.label_415:
	test	r14d, r14d
	je	.label_413
	xor	al, 1
	jne	.label_413
	mov	edi, dword ptr [rbx + 4]
	test	edi, edi
	jle	.label_413
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_413
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_413
.label_416:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_414
.label_420:
	call	endutxent
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], r12
	xor	eax, eax
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_410:
	call	xalloc_die
.label_411:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

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
	jne	.label_422
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_421
	test	cl, cl
	jne	.label_421
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_421
.label_422:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_421
	call	__errno_location
	mov	dword ptr [rax], 0
.label_421:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405580

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_84
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_423
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x4055b0

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
