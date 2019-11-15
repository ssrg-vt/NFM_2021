	.section	.text
	.align	32
	#Procedure 0x4019e0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_17
	jmp	.label_22
.label_22:
	movabs	rdi, OFFSET FLAT:label_24
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_20
.label_17:
	movabs	rdi, OFFSET FLAT:label_21
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_13
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_23
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_14
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_16
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
	movabs	rdi, OFFSET FLAT:label_25
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_9
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_12
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:label_18
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_10
	movabs	rdx, OFFSET FLAT:label_11
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_19
	mov	dword ptr [rbp - 0x3c], eax
	call	emit_ancillary_info
.label_20:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x401bb0

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
.label_34:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_33
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_33:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_26
	jmp	.label_35
.label_26:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_34
.label_35:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_36
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_36:
	movabs	rdi, OFFSET FLAT:label_40
	call	gettext
	movabs	rsi, OFFSET FLAT:label_30
	movabs	rdx, OFFSET FLAT:label_31
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
	je	.label_37
	movabs	rsi, OFFSET FLAT:label_29
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_37
	movabs	rdi, OFFSET FLAT:label_38
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_37:
	movabs	rdi, OFFSET FLAT:label_32
	call	gettext
	movabs	rsi, OFFSET FLAT:label_31
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_39
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:label_27
	movabs	rsi, OFFSET FLAT:label_28
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
	.align	32
	#Procedure 0x401d50

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x15], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:label_27
	call	setlocale
	movabs	rdi, OFFSET FLAT:label_69
	movabs	rsi, OFFSET FLAT:label_70
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:label_69
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	movabs	rdi, OFFSET FLAT:close_stdout
	mov	qword ptr [rbp - 0x30], rax
	call	atexit
	mov	dword ptr [rbp - 0x34], eax
.label_50:
	movabs	rdx, OFFSET FLAT:label_93
	movabs	rcx, OFFSET FLAT:longopts
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x14], eax
	cmp	eax, -1
	je	.label_95
	mov	eax, dword ptr [rbp - 0x14]
	mov	ecx, eax
	sub	ecx, 0xffffff7d
	mov	dword ptr [rbp - 0x38], eax
	mov	dword ptr [rbp - 0x3c], ecx
	je	.label_41
	jmp	.label_46
.label_46:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0xffffff7e
	mov	dword ptr [rbp - 0x40], eax
	je	.label_47
	jmp	.label_54
.label_54:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x48
	mov	dword ptr [rbp - 0x44], eax
	je	.label_56
	jmp	.label_58
.label_58:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x54
	mov	dword ptr [rbp - 0x48], eax
	je	.label_57
	jmp	.label_45
.label_45:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x61
	mov	dword ptr [rbp - 0x4c], eax
	je	.label_62
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x50], eax
	je	.label_66
	jmp	.label_67
.label_67:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x64
	mov	dword ptr [rbp - 0x54], eax
	je	.label_68
	jmp	.label_73
.label_73:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6c
	mov	dword ptr [rbp - 0x58], eax
	je	.label_74
	jmp	.label_76
.label_76:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x6d
	mov	dword ptr [rbp - 0x5c], eax
	je	.label_79
	jmp	.label_83
.label_83:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x70
	mov	dword ptr [rbp - 0x60], eax
	je	.label_84
	jmp	.label_85
.label_85:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x71
	mov	dword ptr [rbp - 0x64], eax
	je	.label_88
	jmp	.label_86
.label_86:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x72
	mov	dword ptr [rbp - 0x68], eax
	je	.label_91
	jmp	.label_96
.label_96:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x6c], eax
	je	.label_97
	jmp	.label_43
.label_43:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x74
	mov	dword ptr [rbp - 0x70], eax
	je	.label_44
	jmp	.label_48
.label_48:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x75
	mov	dword ptr [rbp - 0x74], eax
	je	.label_90
	jmp	.label_55
.label_55:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x78], eax
	je	.label_57
	jmp	.label_59
.label_59:
	mov	eax, dword ptr [rbp - 0x38]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_61
	jmp	.label_63
.label_62:
	mov	byte ptr [byte ptr [need_boottime]],  1
	mov	byte ptr [byte ptr [need_deadprocs]],  1
	mov	byte ptr [byte ptr [need_login]],  1
	mov	byte ptr [byte ptr [need_initspawn]],  1
	mov	byte ptr [byte ptr [need_runlevel]],  1
	mov	byte ptr [byte ptr [need_clockchange]],  1
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [include_mesg]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [byte ptr [include_exit]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_66:
	mov	byte ptr [byte ptr [need_boottime]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_68:
	mov	byte ptr [byte ptr [need_deadprocs]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [byte ptr [include_exit]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_56:
	mov	byte ptr [byte ptr [include_heading]],  1
	jmp	.label_49
.label_74:
	mov	byte ptr [byte ptr [need_login]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_79:
	mov	byte ptr [byte ptr [my_line_only]],  1
	jmp	.label_49
.label_84:
	mov	byte ptr [byte ptr [need_initspawn]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_88:
	mov	byte ptr [byte ptr [short_list]],  1
	jmp	.label_49
.label_91:
	mov	byte ptr [byte ptr [need_runlevel]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_97:
	mov	byte ptr [byte ptr [short_output]],  1
	jmp	.label_49
.label_44:
	mov	byte ptr [byte ptr [need_clockchange]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_57:
	mov	byte ptr [byte ptr [include_mesg]],  1
	jmp	.label_49
.label_90:
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [include_idle]],  1
	mov	byte ptr [rbp - 0x15], 0
	jmp	.label_49
.label_61:
	mov	byte ptr [byte ptr [do_lookup]],  1
	jmp	.label_49
.label_47:
	xor	edi, edi
	call	usage
.label_41:
	movabs	rsi, OFFSET FLAT:label_19
	movabs	rdx, OFFSET FLAT:label_30
	movabs	r8, OFFSET FLAT:label_80
	movabs	r9, OFFSET FLAT:label_81
	movabs	rax, OFFSET FLAT:label_82
	xor	ecx, ecx
	mov	edi, ecx
	mov	r10,  qword ptr [word ptr [stdout]]
	mov	rcx,  qword ptr [word ptr [Version]]
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r10
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], 0
	mov	al, 0
	call	version_etc
	xor	edi, edi
	call	exit
.label_63:
	mov	edi, 1
	call	usage
.label_49:
	jmp	.label_50
.label_95:
	test	byte ptr [rbp - 0x15], 1
	je	.label_53
	mov	byte ptr [byte ptr [need_users]],  1
	mov	byte ptr [byte ptr [short_output]],  1
.label_53:
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_75
	mov	byte ptr [byte ptr [short_output]],  0
.label_75:
	mov	edi, 2
	call	hard_locale
	test	al, 1
	jne	.label_64
	jmp	.label_65
.label_64:
	movabs	rax, OFFSET FLAT:label_77
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0x10
	jmp	.label_78
.label_65:
	movabs	rax, OFFSET FLAT:label_72
	mov	qword ptr [word ptr [time_format]],  rax
	mov	dword ptr [dword ptr [time_format_width]],  0xc
.label_78:
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [rip + optind]]
	sub	eax, ecx
	mov	ecx, eax
	inc	ecx
	sub	ecx, 2
	mov	dword ptr [rbp - 0x8c], eax
	mov	dword ptr [rbp - 0x90], ecx
	jb	.label_51
	jmp	.label_87
.label_87:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x94], eax
	je	.label_89
	jmp	.label_92
.label_92:
	mov	eax, dword ptr [rbp - 0x8c]
	sub	eax, 2
	mov	dword ptr [rbp - 0x98], eax
	jne	.label_94
	jmp	.label_42
.label_42:
	mov	byte ptr [byte ptr [my_line_only]],  1
.label_51:
	movabs	rdi, OFFSET FLAT:label_10
	mov	esi, 1
	call	who
	jmp	.label_52
.label_89:
	xor	esi, esi
	movsxd	rax,  dword ptr [dword ptr [optind]]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rcx + rax*8]
	call	who
	jmp	.label_52
.label_94:
	movabs	rdi, OFFSET FLAT:label_60
	call	gettext
	mov	ecx,  dword ptr [dword ptr [optind]]
	add	ecx, 2
	movsxd	rdi, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0xa0], rax
	call	quote
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	mov	al, 0
	call	error
	mov	edi, 1
	call	usage
.label_52:
	xor	eax, eax
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl who
	.type who, @function
who:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	lea	rdx, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsi, rax
	call	read_utmp
	cmp	eax, 0
	je	.label_100
	call	__errno_location
	xor	edi, edi
	mov	esi, 3
	mov	ecx, dword ptr [rax]
	mov	rdx, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x24], ecx
	call	quotearg_n_style_colon
	mov	edi, 1
	movabs	rdx, OFFSET FLAT:label_101
	mov	esi, dword ptr [rbp - 0x24]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_100:
	test	byte ptr [byte ptr [short_list]],  1
	je	.label_99
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	list_entries_who
	jmp	.label_98
.label_99:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	scan_entries
.label_98:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402360

	.globl list_entries_who
	.type list_entries_who, @function
list_entries_who:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], rax
.label_104:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_102
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x2c]
	cmp	ecx, 0
	je	.label_105
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 7
	jne	.label_105
	mov	rdi, qword ptr [rbp - 0x10]
	call	extract_trimmed_name
	movabs	rdi, OFFSET FLAT:label_103
	mov	qword ptr [rbp - 0x28], rax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	al, 0
	call	printf
	mov	rdi, qword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 0x2c], eax
	call	free
	movabs	rdx, OFFSET FLAT:label_106
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 1
	mov	qword ptr [rbp - 0x18], rdx
.label_105:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_104
.label_102:
	movabs	rdi, OFFSET FLAT:label_107
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x30], eax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402450

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [byte ptr [include_heading]],  1
	je	.label_128
	call	print_heading
.label_128:
	test	byte ptr [byte ptr [my_line_only]],  1
	je	.label_108
	xor	edi, edi
	call	ttyname
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_109
	jmp	.label_127
.label_109:
	movabs	rsi, OFFSET FLAT:label_119
	mov	eax, 5
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_125
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 5
	mov	qword ptr [rbp - 0x18], rax
.label_125:
	jmp	.label_108
.label_108:
	jmp	.label_122
.label_122:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 8], rcx
	cmp	rax, 0
	je	.label_127
	test	byte ptr [byte ptr [my_line_only]],  1
	je	.label_130
	mov	eax, 0x20
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	rsi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_113
.label_130:
	test	byte ptr [byte ptr [need_users]],  1
	je	.label_121
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax + 0x2c]
	cmp	ecx, 0
	je	.label_121
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 7
	jne	.label_121
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	print_user
	jmp	.label_112
.label_121:
	test	byte ptr [byte ptr [need_runlevel]],  1
	je	.label_129
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 1
	jne	.label_129
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_runlevel
	jmp	.label_110
.label_129:
	test	byte ptr [byte ptr [need_boottime]],  1
	je	.label_117
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 2
	jne	.label_117
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_boottime
	jmp	.label_124
.label_117:
	test	byte ptr [byte ptr [need_clockchange]],  1
	je	.label_120
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 3
	jne	.label_120
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_clockchange
	jmp	.label_123
.label_120:
	test	byte ptr [byte ptr [need_initspawn]],  1
	je	.label_111
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 5
	jne	.label_111
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_initspawn
	jmp	.label_116
.label_111:
	test	byte ptr [byte ptr [need_login]],  1
	je	.label_118
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 6
	jne	.label_118
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_login
	jmp	.label_126
.label_118:
	test	byte ptr [byte ptr [need_deadprocs]],  1
	je	.label_115
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 8
	jne	.label_115
	mov	rdi, qword ptr [rbp - 0x10]
	call	print_deadprocs
.label_115:
	jmp	.label_126
.label_126:
	jmp	.label_116
.label_116:
	jmp	.label_123
.label_123:
	jmp	.label_124
.label_124:
	jmp	.label_110
.label_110:
	jmp	.label_112
.label_112:
	jmp	.label_113
.label_113:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, word ptr [rax]
	cmp	ecx, 2
	jne	.label_114
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rax, dword ptr [rax + 0x154]
	mov	qword ptr [rbp - 0x20], rax
.label_114:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x180
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_122
.label_127:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rdi, OFFSET FLAT:label_131
	call	gettext
	movabs	rdi, OFFSET FLAT:label_135
	mov	qword ptr [rbp - 8], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_136
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_137
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_132
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_133
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_134
	mov	qword ptr [rbp - 0x30], rax
	call	gettext
	mov	ecx, 0xffffffff
	mov	edx, 0x20
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x20]
	mov	qword ptr [rsp], r10
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rsp + 8], r10
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4027a0

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x2d0
	movabs	rax, OFFSET FLAT:label_149
	lea	rcx, [rbp - 0xf4]
	lea	rdx, [rbp - 0xe0]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0xe8], rdx
	mov	rdx, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rdx + 4]
	mov	rdi, rcx
	mov	rsi, rax
	mov	al, 0
	call	sprintf
	mov	rcx, qword ptr [rbp - 8]
	movsx	r8d, byte ptr [rcx + 8]
	cmp	r8d, 0x2f
	mov	dword ptr [rbp - 0x214], eax
	je	.label_155
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	eax, OFFSET FLAT:label_119
	mov	esi, eax
	call	stpcpy
	mov	qword ptr [rbp - 0xe8], rax
.label_155:
	mov	eax, 0x20
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rsi, rcx
	call	stzncpy
	lea	rsi, [rbp - 0xa0]
	lea	rdi, [rbp - 0xe0]
	mov	qword ptr [rbp - 0x220], rax
	call	stat
	cmp	eax, 0
	jne	.label_154
	lea	rdi, [rbp - 0xa0]
	call	is_tty_writable
	mov	ecx, 0x2d
	mov	edx, 0x2b
	test	al, 1
	cmovne	ecx, edx
	mov	al, cl
	mov	byte ptr [rbp - 0xa9], al
	mov	rdi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa8], rdi
	jmp	.label_157
.label_154:
	mov	byte ptr [rbp - 0xa9], 0x3f
	mov	qword ptr [rbp - 0xa8], 0
.label_157:
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_145
	lea	rdi, [rbp - 0xb0]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x228], rdi
	mov	rdi, rax
	call	idle_string
	movabs	rsi, OFFSET FLAT:label_151
	mov	edx, 6
	mov	rdi, qword ptr [rbp - 0x228]
	mov	rcx, rax
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_159
.label_145:
	movabs	rsi, OFFSET FLAT:label_142
	lea	rdi, [rbp - 0xb0]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x230], eax
.label_159:
	mov	rax, qword ptr [rbp - 8]
	cmp	byte ptr [rax + 0x4c], 0
	je	.label_141
	mov	eax, 0x100
	mov	edx, eax
	lea	rdi, [rbp - 0x200]
	mov	qword ptr [rbp - 0x208], 0
	mov	qword ptr [rbp - 0x210], 0
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x4c
	mov	rsi, rcx
	call	stzncpy
	mov	esi, 0x3a
	lea	rdi, [rbp - 0x200]
	mov	qword ptr [rbp - 0x238], rax
	call	strchr
	mov	qword ptr [rbp - 0x210], rax
	cmp	qword ptr [rbp - 0x210], 0
	je	.label_160
	mov	rax, qword ptr [rbp - 0x210]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x210], rcx
	mov	byte ptr [rax], 0
.label_160:
	movsx	eax, byte ptr [rbp - 0x200]
	cmp	eax, 0
	je	.label_143
	test	byte ptr [byte ptr [do_lookup]],  1
	je	.label_143
	lea	rdi, [rbp - 0x200]
	call	canon_host
	mov	qword ptr [rbp - 0x208], rax
.label_143:
	cmp	qword ptr [rbp - 0x208], 0
	jne	.label_152
	lea	rax, [rbp - 0x200]
	mov	qword ptr [rbp - 0x208], rax
.label_152:
	cmp	qword ptr [rbp - 0x210], 0
	je	.label_158
	mov	rax,  qword ptr [word ptr [print_user.hostlen]]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x240], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x248], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x248]
	add	rdi, rax
	add	rdi, 4
	mov	rax, qword ptr [rbp - 0x240]
	cmp	rax, rdi
	jae	.label_146
	mov	rdi, qword ptr [rbp - 0x208]
	call	strlen
	mov	rdi, qword ptr [rbp - 0x210]
	mov	qword ptr [rbp - 0x250], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x250]
	add	rdi, rax
	add	rdi, 4
	mov	qword ptr [word ptr [print_user.hostlen]],  rdi
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_146:
	movabs	rsi, OFFSET FLAT:label_144
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	rcx, qword ptr [rbp - 0x210]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x254], eax
	jmp	.label_150
.label_158:
	mov	rax,  qword ptr [word ptr [print_user.hostlen]]
	mov	rdi, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x260], rax
	call	strlen
	add	rax, 3
	mov	rdi, qword ptr [rbp - 0x260]
	cmp	rdi, rax
	jae	.label_156
	mov	rdi, qword ptr [rbp - 0x208]
	call	strlen
	add	rax, 3
	mov	qword ptr [word ptr [print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_156:
	movabs	rsi, OFFSET FLAT:label_153
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	mov	rdx, qword ptr [rbp - 0x208]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0x264], eax
.label_150:
	lea	rax, [rbp - 0x200]
	mov	rcx, qword ptr [rbp - 0x208]
	cmp	rcx, rax
	je	.label_148
	mov	rdi, qword ptr [rbp - 0x208]
	call	free
.label_148:
	jmp	.label_140
.label_141:
	cmp	qword ptr [word ptr [print_user.hostlen]],  1
	jae	.label_139
	mov	qword ptr [word ptr [print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [print_user.hoststr]],  rax
.label_139:
	mov	rax,  qword ptr [word ptr [print_user.hoststr]]
	mov	byte ptr [rax], 0
.label_140:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	cl, byte ptr [rbp - 0xa9]
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x270], rax
	mov	byte ptr [rbp - 0x271], cl
	mov	qword ptr [rbp - 0x280], rdx
	call	time_string
	lea	rdx, [rbp - 0xf4]
	lea	rdi, [rbp - 0xb0]
	cmp	qword ptr [word ptr [print_user.hoststr]],  0
	mov	qword ptr [rbp - 0x288], rax
	mov	qword ptr [rbp - 0x290], rdx
	mov	qword ptr [rbp - 0x298], rdi
	je	.label_138
	mov	rax,  qword ptr [word ptr [print_user.hoststr]]
	mov	qword ptr [rbp - 0x2a0], rax
	jmp	.label_147
.label_138:
	movabs	rax, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 0x2a0], rax
	jmp	.label_147
.label_147:
	mov	rax, qword ptr [rbp - 0x2a0]
	mov	ecx, 0x20
	movabs	rdx, OFFSET FLAT:label_27
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x270]
	mov	r8b, byte ptr [rbp - 0x271]
	movsx	r9d, r8b
	mov	qword ptr [rbp - 0x2a8], rdx
	mov	edx, r9d
	mov	r8, qword ptr [rbp - 0x280]
	mov	r9, qword ptr [rbp - 0x288]
	mov	r10, qword ptr [rbp - 0x298]
	mov	qword ptr [rsp], r10
	mov	r11, qword ptr [rbp - 0x290]
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp - 0x2a8]
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x2d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl print_runlevel
	.type print_runlevel, @function
print_runlevel:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	eax, 0x100
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rdi + 4]
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x10]
	idiv	ecx
	mov	sil, al
	mov	byte ptr [rbp - 9], sil
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 4]
	cdq	
	idiv	ecx
	mov	sil, dl
	mov	byte ptr [rbp - 0xa], sil
	cmp	qword ptr [word ptr [print_runlevel.runlevline]],  0
	jne	.label_169
	movabs	rdi, OFFSET FLAT:label_166
	call	gettext
	mov	rdi, rax
	call	strlen
	add	rax, 3
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [print_runlevel.runlevline]],  rax
.label_169:
	movabs	rdi, OFFSET FLAT:label_166
	mov	rax,  qword ptr [word ptr [print_runlevel.runlevline]]
	mov	qword ptr [rbp - 0x18], rax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_171
	movzx	ecx, byte ptr [rbp - 0xa]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	al, 0
	call	sprintf
	cmp	qword ptr [word ptr [print_runlevel.comment]],  0
	mov	dword ptr [rbp - 0x1c], eax
	jne	.label_163
	movabs	rdi, OFFSET FLAT:label_161
	call	gettext
	mov	rdi, rax
	call	strlen
	add	rax, 2
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [word ptr [print_runlevel.comment]],  rax
.label_163:
	movabs	rdi, OFFSET FLAT:label_161
	mov	rax,  qword ptr [word ptr [print_runlevel.comment]]
	mov	qword ptr [rbp - 0x28], rax
	call	gettext
	movzx	ecx, byte ptr [rbp - 9]
	cmp	ecx, 0x4e
	mov	qword ptr [rbp - 0x30], rax
	jne	.label_170
	mov	eax, 0x53
	mov	dword ptr [rbp - 0x34], eax
	jmp	.label_164
.label_170:
	movzx	eax, byte ptr [rbp - 9]
	mov	dword ptr [rbp - 0x34], eax
.label_164:
	mov	eax, dword ptr [rbp - 0x34]
	movabs	rsi, OFFSET FLAT:label_162
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, eax
	mov	al, 0
	call	sprintf
	mov	r8,  qword ptr [word ptr [print_runlevel.runlevline]]
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x38], eax
	mov	qword ptr [rbp - 0x40], r8
	call	time_string
	movzx	edi, byte ptr [rbp - 9]
	mov	qword ptr [rbp - 0x48], rax
	call	c_isprint
	test	al, 1
	jne	.label_167
	jmp	.label_165
.label_167:
	mov	rax,  qword ptr [word ptr [print_runlevel.comment]]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_168
.label_165:
	movabs	rax, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_168
.label_168:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0xffffffff
	movabs	rdx, OFFSET FLAT:label_27
	mov	esi, 0x20
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], esi
	mov	rsi, rdx
	mov	r8d, dword ptr [rbp - 0x54]
	mov	qword ptr [rbp - 0x60], rdx
	mov	edx, r8d
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x48]
	mov	r10, qword ptr [rbp - 0x60]
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r10
	call	print_line
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ee0

	.globl print_boottime
	.type print_boottime, @function
print_boottime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_172
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	time_string
	mov	ecx, 0xffffffff
	movabs	rdi, OFFSET FLAT:label_27
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402f60

	.globl print_clockchange
	.type print_clockchange, @function
print_clockchange:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:label_173
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rax
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	call	time_string
	mov	ecx, 0xffffffff
	movabs	rdi, OFFSET FLAT:label_27
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rdi
	mov	edi, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x10]
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402fe0

	.globl print_initspawn
	.type print_initspawn, @function
print_initspawn:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:label_149
	lea	rdi, [rbp - 0x1c]
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	mov	rdx, qword ptr [rbp - 8]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 8]
	mov	dword ptr [rbp - 0x20], eax
	mov	qword ptr [rbp - 0x28], rdx
	call	time_string
	mov	edi, 0xffffffff
	movabs	rdx, OFFSET FLAT:label_27
	mov	ecx, 0x20
	lea	rsi, [rbp - 0x1c]
	mov	r8, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	qword ptr [rbp - 0x38], rdx
	mov	edx, ecx
	mov	r9, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], r8
	mov	r8, r9
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rsp], rax
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp + 8], r10
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp + 0x10], r11
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4030a0

	.globl print_login
	.type print_login, @function
print_login:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:label_149
	lea	rdi, [rbp - 0x24]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	movabs	rdi, OFFSET FLAT:label_174
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], rdx
	call	time_string
	mov	edi, 0xffffffff
	mov	ecx, 0x20
	movabs	rdx, OFFSET FLAT:label_27
	lea	rsi, [rbp - 0x24]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rsi
	mov	rsi, r9
	mov	qword ptr [rbp - 0x48], rdx
	mov	edx, ecx
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x50], r8
	mov	r8, r10
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], rax
	mov	r11, qword ptr [rbp - 0x40]
	mov	qword ptr [rsp + 8], r11
	mov	rbx, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 0x18], rax
	call	print_line
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	add	rsp, 0x68
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403180

	.globl print_deadprocs
	.type print_deadprocs, @function
print_deadprocs:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	make_id_equals_comment
	movabs	rsi, OFFSET FLAT:label_149
	lea	rdi, [rbp - 0x2c]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rdx, dword ptr [rax + 4]
	mov	al, 0
	call	sprintf
	cmp	qword ptr [word ptr [print_deadprocs.exitstr]],  0
	mov	dword ptr [rbp - 0x30], eax
	jne	.label_178
	movabs	rdi, OFFSET FLAT:label_176
	call	gettext
	movabs	rdi, OFFSET FLAT:label_175
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 6
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x40], rax
	call	gettext
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x40]
	add	rdi, rax
	add	rdi, 6
	add	rdi, 1
	call	xmalloc
	mov	qword ptr [word ptr [print_deadprocs.exitstr]],  rax
.label_178:
	movabs	rdi, OFFSET FLAT:label_176
	mov	rax,  qword ptr [word ptr [print_deadprocs.exitstr]]
	mov	qword ptr [rbp - 0x48], rax
	call	gettext
	movabs	rdi, OFFSET FLAT:label_175
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	ecx, word ptr [rcx + 0x14c]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x54], ecx
	call	gettext
	movabs	rsi, OFFSET FLAT:label_177
	mov	rdi, qword ptr [rbp - 0x18]
	movsx	r9d, word ptr [rdi + 0x14e]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rbp - 0x54]
	mov	r8, rax
	mov	al, 0
	call	sprintf
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 8
	mov	rdi, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	call	time_string
	mov	edi, 0xffffffff
	movabs	rdx, OFFSET FLAT:label_27
	mov	ecx, 0x20
	lea	rsi, [rbp - 0x2c]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r10,  qword ptr [word ptr [print_deadprocs.exitstr]]
	mov	qword ptr [rbp - 0x68], rsi
	mov	rsi, rdx
	mov	qword ptr [rbp - 0x70], rdx
	mov	edx, ecx
	mov	r11, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x78], r8
	mov	r8, r11
	mov	r9, rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rbp - 0x68]
	mov	qword ptr [rsp + 8], rbx
	mov	r14, qword ptr [rbp - 0x78]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r10
	call	print_line
	mov	rdi, qword ptr [rbp - 0x20]
	call	free
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403330

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	al, dl
	mov	r10, qword ptr [rbp + 0x28]
	mov	r11, qword ptr [rbp + 0x20]
	mov	rbx, qword ptr [rbp + 0x18]
	mov	r14, qword ptr [rbp + 0x10]
	mov	dword ptr [rbp - 0x2c], edi
	mov	qword ptr [rbp - 0x38], rsi
	mov	byte ptr [rbp - 0x39], al
	mov	dword ptr [rbp - 0x40], ecx
	mov	qword ptr [rbp - 0x48], r8
	mov	qword ptr [rbp - 0x50], r9
	mov	qword ptr [rbp - 0x58], r14
	mov	qword ptr [rbp - 0x60], rbx
	mov	qword ptr [rbp - 0x68], r11
	mov	qword ptr [rbp - 0x70], r10
	mov	al, byte ptr [rbp - 0x39]
	mov	byte ptr [byte ptr [label_197]],  al
	test	byte ptr [byte ptr [include_idle]],  1
	je	.label_186
	test	byte ptr [byte ptr [short_output]],  1
	jne	.label_186
	mov	rdi, qword ptr [rbp - 0x58]
	call	strlen
	cmp	rax, 7
	jae	.label_186
	movabs	rsi, OFFSET FLAT:label_198
	lea	rdi, [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_183
.label_186:
	mov	byte ptr [rbp - 0x80], 0
.label_183:
	test	byte ptr [byte ptr [short_output]],  1
	jne	.label_192
	mov	rdi, qword ptr [rbp - 0x60]
	call	strlen
	cmp	rax, 0xc
	jae	.label_192
	movabs	rsi, OFFSET FLAT:label_199
	lea	rdi, [rbp - 0x8d]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xb0], eax
	jmp	.label_189
.label_192:
	mov	byte ptr [rbp - 0x8d], 0
.label_189:
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_195
	mov	eax, 0xc
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0xb8], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0xb8]
	cmp	rcx, rax
	jbe	.label_184
	mov	eax, 0xc
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_193
.label_184:
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0xc0], rax
.label_193:
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_181
.label_195:
	mov	eax, 1
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc8], rcx
	jmp	.label_181
.label_181:
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x98], rax
	test	byte ptr [byte ptr [include_exit]],  1
	je	.label_179
	movabs	rsi, OFFSET FLAT:label_187
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	al, 0
	call	sprintf
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_194
.label_179:
	mov	rax, qword ptr [rbp - 0x98]
	mov	byte ptr [rax], 0
.label_194:
	mov	edx, dword ptr [rbp - 0x2c]
	cmp	qword ptr [rbp - 0x38], 0
	mov	dword ptr [rbp - 0xd0], edx
	je	.label_182
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_190
.label_182:
	movabs	rax, OFFSET FLAT:label_191
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0xd8]
	lea	rdi, [rbp - 0x78]
	movabs	rsi, OFFSET FLAT:label_180
	lea	rcx, [rbp - 0x8d]
	lea	rdx, [rbp - 0x80]
	movabs	r8, OFFSET FLAT:label_27
	movabs	r9, OFFSET FLAT:print_line.mesg
	mov	r10b,  byte ptr [byte ptr [include_mesg]]
	test	r10b, 1
	cmovne	r8, r9
	mov	r9d, dword ptr [rbp - 0x40]
	mov	r11, qword ptr [rbp - 0x48]
	mov	ebx,  dword ptr [dword ptr [time_format_width]]
	mov	r14, qword ptr [rbp - 0x50]
	mov	r15, qword ptr [rbp - 0x68]
	mov	r12, qword ptr [rbp - 0x98]
	mov	r13d, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rdx
	mov	edx, r13d
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, rax
	mov	qword ptr [rsp], r11
	mov	dword ptr [rsp + 8], ebx
	mov	qword ptr [rsp + 0x10], r14
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rsp + 0x18], rax
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rsp + 0x20], r11
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x30], r12
	mov	al, 0
	call	asprintf
	mov	dword ptr [rbp - 0x9c], eax
	cmp	dword ptr [rbp - 0x9c], -1
	jne	.label_196
	call	xalloc_die
.label_196:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0xf0], rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0xf0]
	add	rdi, rax
	mov	qword ptr [rbp - 0xa8], rdi
.label_185:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0xa8], rcx
	movsx	edx, byte ptr [rax - 1]
	cmp	edx, 0x20
	jne	.label_188
	jmp	.label_185
.label_188:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	byte ptr [rax + 1], 0
	mov	rdi, qword ptr [rbp - 0x78]
	call	puts
	mov	rdi, qword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0xf4], eax
	call	free
	mov	rdi, qword ptr [rbp - 0x98]
	call	free
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4036a0

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
.label_202:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rbp - 0x20]
	mov	byte ptr [rbp - 0x21], cl
	jae	.label_203
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x21], dl
.label_203:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_200
	jmp	.label_201
.label_200:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_202
.label_201:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl is_tty_writable
	.type is_tty_writable, @function
is_tty_writable:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 0x18]
	and	eax, 0x10
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403750

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, 0x8000000000000000
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [word ptr [idle_string.now]],  rax
	jne	.label_208
	movabs	rdi, OFFSET FLAT:idle_string.now
	call	time
	mov	qword ptr [rbp - 0x28], rax
.label_208:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_206
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	sub	rax, 0x15180
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_206
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax,  qword ptr [word ptr [idle_string.now]]
	jg	.label_206
	mov	rax,  qword ptr [word ptr [idle_string.now]]
	sub	rax, qword ptr [rbp - 0x10]
	mov	ecx, eax
	mov	dword ptr [rbp - 0x1c], ecx
	cmp	dword ptr [rbp - 0x1c], 0x3c
	jge	.label_204
	movabs	rax, OFFSET FLAT:label_215
	mov	qword ptr [rbp - 8], rax
	jmp	.label_205
.label_204:
	mov	eax, 0xe10
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x2c]
	idiv	ecx
	cmp	eax, 0x18
	jge	.label_214
	jmp	.label_207
.label_214:
	movabs	rdi, OFFSET FLAT:label_209
	movabs	rsi, OFFSET FLAT:label_210
	mov	edx, 0xcd
	movabs	rcx, OFFSET FLAT:label_211
	call	__assert_fail
.label_207:
	movabs	rdi, OFFSET FLAT:idle_string.idle_hhmm
	movabs	rsi, OFFSET FLAT:label_213
	mov	eax, 0x3c
	mov	ecx, 0xe10
	mov	edx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, edx
	cdq	
	idiv	ecx
	mov	r8d, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 0x34], eax
	mov	eax, r8d
	cdq	
	idiv	ecx
	mov	eax, edx
	cdq	
	mov	ecx, dword ptr [rbp - 0x30]
	idiv	ecx
	mov	r8d, dword ptr [rbp - 0x34]
	mov	edx, r8d
	mov	ecx, eax
	mov	al, 0
	call	sprintf
	movabs	rsi, OFFSET FLAT:idle_string.idle_hhmm
	mov	qword ptr [rbp - 8], rsi
	mov	dword ptr [rbp - 0x38], eax
	jmp	.label_205
.label_206:
	movabs	rdi, OFFSET FLAT:label_212
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_205:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038c0

	.globl time_string
	.type time_string, @function
time_string:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rdi, dword ptr [rdi + 0x154]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, rax
	call	localtime
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_216
	movabs	rdi, OFFSET FLAT:time_string.buf
	mov	eax, 0x21
	mov	esi, eax
	mov	rdx,  qword ptr [word ptr [time_format]]
	mov	rcx, qword ptr [rbp - 0x20]
	call	strftime
	movabs	rcx, OFFSET FLAT:time_string.buf
	mov	qword ptr [rbp - 8], rcx
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_217
.label_216:
	movabs	rsi, OFFSET FLAT:time_string.buf
	mov	rdi, qword ptr [rbp - 0x18]
	call	timetostr
	mov	qword ptr [rbp - 8], rax
.label_217:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403950

	.globl timetostr
	.type timetostr, @function
timetostr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	imaxtostr
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl make_id_equals_comment
	.type make_id_equals_comment, @function
make_id_equals_comment:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	movabs	rax, OFFSET FLAT:label_218
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 4
	mov	rdi, rax
	call	gettext
	mov	rdi, rax
	call	strlen
	add	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	movabs	rdi, OFFSET FLAT:label_218
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strcpy
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, 0x28
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rax
	call	strncat
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rdx
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a10
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
	jb	.label_219
	jmp	.label_222
.label_222:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_219
	jmp	.label_220
.label_220:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_221
	jmp	.label_219
.label_219:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_223
.label_221:
	mov	byte ptr [rbp - 1], 0
.label_223:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403a80
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
	jb	.label_224
	jmp	.label_227
.label_227:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_225
	jmp	.label_224
.label_224:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_226
.label_225:
	mov	byte ptr [rbp - 1], 0
.label_226:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ad0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_228
	jmp	.label_229
.label_229:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_230
.label_228:
	mov	byte ptr [rbp - 1], 0
.label_230:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b00
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_231
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_231:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30
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
	jb	.label_232
	jmp	.label_234
.label_234:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_235
	jmp	.label_232
.label_232:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_233
.label_235:
	mov	byte ptr [rbp - 1], 0
.label_233:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b80
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_236
	jmp	.label_238
.label_238:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_237
.label_236:
	mov	byte ptr [rbp - 1], 0
.label_237:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403bc0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_239
	jmp	.label_241
.label_241:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_240
.label_239:
	mov	byte ptr [rbp - 1], 0
.label_240:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c00
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_242
	jmp	.label_244
.label_244:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_243
.label_242:
	mov	byte ptr [rbp - 1], 0
.label_243:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c40

	.globl c_isprint
	.type c_isprint, @function
c_isprint:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_245
	jmp	.label_247
.label_247:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_246
.label_245:
	mov	byte ptr [rbp - 1], 0
.label_246:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403c80
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
	ja	.label_248
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_250]]
	jmp	rcx
.label_681:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_249
.label_248:
	mov	byte ptr [rbp - 1], 0
.label_249:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403cd0
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
	jb	.label_251
	jmp	.label_253
.label_253:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_254
	jmp	.label_251
.label_251:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_252
.label_254:
	mov	byte ptr [rbp - 1], 0
.label_252:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d20
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_255
	jmp	.label_257
.label_257:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_256
.label_255:
	mov	byte ptr [rbp - 1], 0
.label_256:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403d60
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
	jb	.label_258
	jmp	.label_261
.label_261:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_258
	jmp	.label_259
.label_259:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_260
	jmp	.label_258
.label_258:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_262
.label_260:
	mov	byte ptr [rbp - 1], 0
.label_262:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403dd0

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_263
	jmp	.label_265
.label_265:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_264
.label_263:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_264:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e10
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_266
	jmp	.label_268
.label_268:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_267
.label_266:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_267:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e50

	.globl canon_host
	.type canon_host, @function
canon_host:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rsi, OFFSET FLAT:last_cherror
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	canon_host_r
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e80

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	ecx, eax
	movabs	rdx, OFFSET FLAT:canon_host_r.hints
	lea	r8, [rbp - 0x20]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], 0
	mov	qword ptr [rbp - 0x20], 0
	mov	dword ptr [dword ptr [canon_host_r.hints]],  2
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rcx
	mov	rcx, r8
	call	getaddrinfo
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_270
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_273
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_269
.label_273:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
.label_269:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	strdup
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_271
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_271
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xfffffff6
.label_271:
	mov	rdi, qword ptr [rbp - 0x20]
	call	freeaddrinfo
	jmp	.label_272
.label_270:
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_274
	mov	eax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx], eax
.label_274:
	jmp	.label_272
.label_272:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f70
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	push	rbp
	mov	rbp, rsp
	mov	edi,  dword ptr [dword ptr [last_cherror]]
	call	gai_strerror
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f90
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
	.align	32
	#Procedure 0x403fb0
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
	.align	32
	#Procedure 0x403fd0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_276
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_279
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_276
.label_279:
	movabs	rdi, OFFSET FLAT:label_278
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_281
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_280
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_275
.label_281:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:label_101
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_275:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_276:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_277
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_277:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040c0

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
	je	.label_282
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_286
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_285
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:label_283
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_284
.label_285:
	mov	byte ptr [rbp - 5], 0
.label_284:
	jmp	.label_282
.label_282:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404140

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
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
	jge	.label_287
	jmp	.label_290
.label_290:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	sub	rcx, rdx
	mov	dil, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], dil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_290
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_289
.label_287:
	jmp	.label_288
.label_288:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	cqo	
	idiv	rcx
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
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_288
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404240

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_291
	movabs	rdi, OFFSET FLAT:label_297
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_291:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_292
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_295
.label_292:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_295:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_293
	movabs	rsi, OFFSET FLAT:label_294
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_293
	movabs	rsi, OFFSET FLAT:label_296
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_298
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname]],  rax
.label_298:
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404360
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
	je	.label_299
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_300
.label_299:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_300
.label_300:
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
	.align	32
	#Procedure 0x4043e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_301
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_302
.label_301:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404420
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
	je	.label_303
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_304
.label_303:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404470

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
	je	.label_305
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_306
.label_305:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_306
.label_306:
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
	.align	32
	#Procedure 0x404520
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_307
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_307:
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
	.align	32
	#Procedure 0x404560

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
	jne	.label_308
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_308:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_310
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_309
.label_310:
	call	abort
.label_309:
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
	.align	32
	#Procedure 0x4045d0
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
	je	.label_311
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_312
.label_311:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_312
.label_312:
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
	.align	32
	#Procedure 0x4046a0

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
.label_372:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_475
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_514]]
	jmp	rcx
.label_726:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_725:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_406
	jmp	.label_490
.label_490:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_491
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	movabs	rax, OFFSET FLAT:label_425
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_346
.label_727:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_346
.label_728:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_382
	movabs	rdi, OFFSET FLAT:label_477
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:label_366
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_382:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_317
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_436:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_322
	jmp	.label_325
.label_325:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_327
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_327:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_335
.label_335:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_436
.label_322:
	jmp	.label_317
.label_317:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_346
.label_723:
	mov	byte ptr [rbp - 0x79], 1
.label_722:
	mov	byte ptr [rbp - 0x7b], 1
.label_724:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_354
	mov	byte ptr [rbp - 0x79], 1
.label_354:
	jmp	.label_431
.label_431:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_357
	jmp	.label_359
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_361
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_361:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_357
.label_357:
	movabs	rax, OFFSET FLAT:label_366
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_346
.label_721:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_346
.label_475:
	call	abort
.label_346:
	mov	qword ptr [rbp - 0x58], 0
.label_337:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_457
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_379
.label_457:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_379:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_394
	jmp	.label_402
.label_394:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_403
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_403
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_403
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_412
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_412
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_493
.label_412:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_493:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_403
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_403
	test	byte ptr [rbp - 0x7b], 1
	je	.label_437
	jmp	.label_351
.label_437:
	mov	byte ptr [rbp - 0x81], 1
.label_403:
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
	ja	.label_428
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_446]]
	jmp	rcx
.label_731:
	test	byte ptr [rbp - 0x79], 1
	je	.label_447
	jmp	.label_452
.label_452:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_345
	jmp	.label_351
.label_345:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_455
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_455
	jmp	.label_460
.label_460:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_369
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_463
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_427
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_427:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_469
.label_469:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_473
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_473:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_455:
	jmp	.label_482
.label_482:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_484
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_484:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_418
.label_418:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_320
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_320
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_320
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_320
	jmp	.label_504
.label_504:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_506
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_506:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_513
.label_513:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_313
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_320
.label_320:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_326
.label_447:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_329
	jmp	.label_333
.label_329:
	jmp	.label_326
.label_326:
	jmp	.label_334
.label_742:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_336
	jmp	.label_341
.label_341:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_343
	jmp	.label_344
.label_336:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_479
	jmp	.label_351
.label_479:
	jmp	.label_353
.label_343:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_360
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_360
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_360
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_355
	jmp	.label_370
.label_370:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_355
	jmp	.label_374
.label_374:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_355
	jmp	.label_380
.label_380:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_355
	jmp	.label_387
.label_387:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_388
	jmp	.label_355
.label_355:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_396
	jmp	.label_351
.label_396:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_401
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_401:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_411
.label_411:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_414
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_414:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_419
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_423
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_423:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_429
.label_429:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_386
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_386:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_433
.label_388:
	jmp	.label_433
.label_433:
	jmp	.label_360
.label_360:
	jmp	.label_353
.label_344:
	jmp	.label_353
.label_353:
	jmp	.label_334
.label_732:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_442
.label_733:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_442
.label_737:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_442
.label_735:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_445
.label_738:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_445
.label_734:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_445
.label_736:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_442
.label_743:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_450
	test	byte ptr [rbp - 0x7b], 1
	je	.label_454
	jmp	.label_351
.label_454:
	jmp	.label_434
.label_450:
	test	byte ptr [rbp - 0x79], 1
	je	.label_456
	test	byte ptr [rbp - 0x7b], 1
	je	.label_456
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_456
	jmp	.label_434
.label_456:
	jmp	.label_445
.label_445:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_461
	test	byte ptr [rbp - 0x7b], 1
	je	.label_461
	jmp	.label_351
.label_461:
	jmp	.label_442
.label_442:
	test	byte ptr [rbp - 0x79], 1
	je	.label_467
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_453
.label_467:
	jmp	.label_334
.label_744:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_471
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_474
	jmp	.label_478
.label_471:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_474
.label_478:
	jmp	.label_334
.label_474:
	jmp	.label_481
.label_481:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_483
	jmp	.label_334
.label_483:
	jmp	.label_486
.label_486:
	mov	byte ptr [rbp - 0x83], 1
.label_739:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_489
	test	byte ptr [rbp - 0x7b], 1
	je	.label_489
	jmp	.label_351
.label_489:
	jmp	.label_334
.label_741:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_494
	test	byte ptr [rbp - 0x7b], 1
	je	.label_498
	jmp	.label_351
.label_498:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_435
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_435
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_435:
	jmp	.label_509
.label_509:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_511
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_511:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_516
.label_516:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_316
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_316:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_330
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_494:
	jmp	.label_334
.label_740:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_334
.label_428:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_342
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
	jmp	.label_352
.label_342:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_363
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_363:
	jmp	.label_371
.label_371:
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
	jne	.label_384
	jmp	.label_314
.label_384:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_393
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_314
.label_393:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_439
	mov	byte ptr [rbp - 0x91], 0
.label_420:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_404
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_404:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_416
	jmp	.label_417
.label_416:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_420
.label_417:
	jmp	.label_314
.label_439:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_426
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_426
	mov	qword ptr [rbp - 0xb8], 1
.label_459:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_430
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
	jb	.label_432
	jmp	.label_443
.label_443:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_432
	jmp	.label_408
.label_408:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_432
	jmp	.label_449
.label_449:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_451
	jmp	.label_432
.label_432:
	jmp	.label_351
.label_451:
	jmp	.label_364
.label_364:
	jmp	.label_397
.label_397:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_459
.label_430:
	jmp	.label_426
.label_426:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_464
	mov	byte ptr [rbp - 0x91], 0
.label_464:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_466
.label_466:
	jmp	.label_448
.label_448:
	jmp	.label_470
.label_470:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_371
.label_314:
	jmp	.label_352
.label_352:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_480
	test	byte ptr [rbp - 0x79], 1
	je	.label_488
	test	byte ptr [rbp - 0x91], 1
	jne	.label_488
.label_480:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_332:
	test	byte ptr [rbp - 0x79], 1
	je	.label_495
	test	byte ptr [rbp - 0x91], 1
	jne	.label_495
	jmp	.label_499
.label_499:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_500
	jmp	.label_351
.label_500:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_503
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_503
	jmp	.label_508
.label_508:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_510
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_510:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_515
.label_515:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_315:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_323
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_328
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_328:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_503:
	jmp	.label_338
.label_338:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_339
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_339:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_462
.label_462:
	jmp	.label_348
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_350
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_350:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_358
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_362
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_367
.label_495:
	test	byte ptr [rbp - 0x81], 1
	je	.label_373
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_377
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_377:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_373:
	jmp	.label_367
.label_367:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_391
	jmp	.label_395
.label_391:
	jmp	.label_398
.label_398:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_400
	test	byte ptr [rbp - 0x82], 1
	jne	.label_400
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_410
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_413
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_413:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_400:
	jmp	.label_421
.label_421:
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_424
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_424:
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
	jmp	.label_332
.label_395:
	jmp	.label_434
.label_488:
	jmp	.label_334
.label_334:
	test	byte ptr [rbp - 0x79], 1
	je	.label_438
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_440
.label_438:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_441
.label_440:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_441
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
	jne	.label_444
.label_441:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_444
	jmp	.label_434
.label_444:
	jmp	.label_453
.label_453:
	jmp	.label_321
.label_321:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_331
	jmp	.label_351
.label_331:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_458
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_458
	jmp	.label_507
.label_507:
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
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_468
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_468:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_472
.label_472:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_476
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_476:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_458:
	jmp	.label_485
.label_485:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_487
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_487:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_492
.label_492:
	jmp	.label_434
.label_434:
	jmp	.label_496
.label_496:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_497
	test	byte ptr [rbp - 0x82], 1
	jne	.label_497
	jmp	.label_501
.label_501:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_502
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_502:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_512
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_512:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_497:
	jmp	.label_318
.label_318:
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_381
	mov	byte ptr [rbp - 0x7e], 0
.label_381:
	jmp	.label_333
.label_333:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_337
.label_402:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_340
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_340
	test	byte ptr [rbp - 0x7b], 1
	je	.label_340
	jmp	.label_351
.label_340:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_347
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_347
	test	byte ptr [rbp - 0x7d], 1
	je	.label_347
	test	byte ptr [rbp - 0x7e], 1
	je	.label_356
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
	jmp	.label_365
.label_356:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_368
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_368
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_372
.label_368:
	jmp	.label_376
.label_376:
	jmp	.label_347
.label_347:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_378
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_378
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_385
	jmp	.label_389
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_392
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_392:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_383
.label_385:
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_365
.label_351:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_415
	test	byte ptr [rbp - 0x79], 1
	je	.label_415
	mov	dword ptr [rbp - 0x34], 4
.label_415:
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
.label_365:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a40
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
	.align	32
	#Procedure 0x405a80

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
	je	.label_517
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_518
.label_517:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_518
.label_518:
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
	je	.label_519
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_519:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405be0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_523:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_522
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_523
.label_522:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_524
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_521]],  rax
.label_524:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_520
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_520:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405cc0

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
	.align	32
	#Procedure 0x405d00

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
	jge	.label_527
	call	abort
.label_527:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_532
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_526
	call	xalloc_die
.label_526:
	test	byte ptr [rbp - 0x31], 1
	je	.label_531
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_525
.label_531:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_525:
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
	je	.label_530
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_521]]
	mov	qword ptr [rax + 8], rcx
.label_530:
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
.label_532:
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
	ja	.label_528
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_529
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_529:
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
.label_528:
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
	.align	32
	#Procedure 0x405f80

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
	.align	32
	#Procedure 0x405fc0
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
	.align	32
	#Procedure 0x405fe0
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
	.align	32
	#Procedure 0x406010

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
	.align	32
	#Procedure 0x406050

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
	jne	.label_533
	call	abort
.label_533:
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
	.align	32
	#Procedure 0x4060c0

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
	.align	32
	#Procedure 0x406100
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
	.align	32
	#Procedure 0x406130
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
	.align	32
	#Procedure 0x406160

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
	.align	32
	#Procedure 0x4061e0

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
	.align	32
	#Procedure 0x406210

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
	.align	32
	#Procedure 0x406230
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
	.align	32
	#Procedure 0x406260

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
	.align	32
	#Procedure 0x406310

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
	.align	32
	#Procedure 0x406350

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
	.align	32
	#Procedure 0x4063d0
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
	.align	32
	#Procedure 0x406400
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
	.align	32
	#Procedure 0x406440

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
	.align	32
	#Procedure 0x406480
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
	.align	32
	#Procedure 0x4064b0

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
	.align	32
	#Procedure 0x4064e0

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
	.align	32
	#Procedure 0x406500

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
	je	.label_540
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_536
.label_540:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:label_538
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_539
	movabs	rax, OFFSET FLAT:label_542
	movabs	rcx, OFFSET FLAT:label_543
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_536
.label_539:
	movabs	rsi, OFFSET FLAT:label_537
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_541
	movabs	rax, OFFSET FLAT:label_534
	movabs	rcx, OFFSET FLAT:label_535
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_536
.label_541:
	movabs	rax, OFFSET FLAT:label_366
	movabs	rcx, OFFSET FLAT:label_425
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_536:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406600

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
	je	.label_544
	movabs	rsi, OFFSET FLAT:label_560
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_551
.label_544:
	movabs	rsi, OFFSET FLAT:label_552
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_551:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:label_561
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
	mov	ecx, OFFSET FLAT:label_555
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
	ja	.label_548
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_556]]
	jmp	rcx
.label_667:
	jmp	.label_547
.label_668:
	movabs	rdi, OFFSET FLAT:label_554
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
	jmp	.label_547
.label_669:
	movabs	rdi, OFFSET FLAT:label_559
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
	jmp	.label_547
.label_670:
	movabs	rdi, OFFSET FLAT:label_558
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
	jmp	.label_547
.label_671:
	movabs	rdi, OFFSET FLAT:label_562
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
	jmp	.label_547
.label_672:
	movabs	rdi, OFFSET FLAT:label_550
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
	jmp	.label_547
.label_673:
	movabs	rdi, OFFSET FLAT:label_545
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
	jmp	.label_547
.label_674:
	movabs	rdi, OFFSET FLAT:label_549
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
	jmp	.label_547
.label_675:
	movabs	rdi, OFFSET FLAT:label_557
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
	jmp	.label_547
.label_676:
	movabs	rdi, OFFSET FLAT:label_553
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
	jmp	.label_547
.label_548:
	movabs	rdi, OFFSET FLAT:label_546
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
.label_547:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406bc0
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
.label_565:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_563
	jmp	.label_564
.label_564:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_565
.label_563:
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
	.align	32
	#Procedure 0x406c30

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
.label_566:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_570
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_568
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_567
.label_568:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_567:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_570:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_572
	jmp	.label_571
.label_572:
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_566
.label_571:
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
	.align	32
	#Procedure 0x406d40

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
	je	.label_573
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
.label_573:
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
	.align	32
	#Procedure 0x406eb0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_574
	call	gettext
	movabs	rsi, OFFSET FLAT:label_576
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_577
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:label_30
	movabs	rdx, OFFSET FLAT:label_31
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:label_575
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
	.align	32
	#Procedure 0x406f40
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
	jae	.label_578
	call	xalloc_die
.label_578:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f90

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
	jne	.label_579
	cmp	qword ptr [rbp - 8], 0
	je	.label_579
	call	xalloc_die
.label_579:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406fd0
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
	jae	.label_580
	call	xalloc_die
.label_580:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407020

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_581
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_581
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_583
.label_581:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_582
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_582
	call	xalloc_die
.label_582:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_583:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4070a0

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
	jne	.label_584
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_587
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
.label_587:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_585
	call	xalloc_die
.label_585:
	jmp	.label_586
.label_584:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_588
	call	xalloc_die
.label_588:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_586:
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
	.align	32
	#Procedure 0x407190

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
	.align	32
	#Procedure 0x4071b0
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
	.align	32
	#Procedure 0x4071e0
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
	.align	32
	#Procedure 0x407220
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
	jb	.label_589
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_590
.label_589:
	call	xalloc_die
.label_590:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407280

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
	.align	32
	#Procedure 0x4072c0
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
	.align	32
	#Procedure 0x407300

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:label_591
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:label_101
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407340

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
	jne	.label_592
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_592:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_593
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_593
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_593
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_594
.label_593:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_594:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4073f0

	.globl extract_trimmed_name
	.type extract_trimmed_name, @function
extract_trimmed_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	eax, 0x21
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	edx, 0x20
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x2c
	mov	rsi, rax
	call	strncpy
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x20], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x28], rcx
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, rax
	mov	qword ptr [rbp - 0x10], rcx
.label_596:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0x29], cl
	jae	.label_595
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax - 1]
	cmp	ecx, 0x20
	sete	dl
	mov	byte ptr [rbp - 0x29], dl
.label_595:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_597
	jmp	.label_598
.label_597:
	jmp	.label_599
.label_599:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x10], rcx
	mov	byte ptr [rax - 1], 0
	jmp	.label_596
.label_598:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4074b0

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	qword ptr [rbp - 0x28], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 8]
	call	utmpxname
	mov	dword ptr [rbp - 0x44], eax
	call	setutxent
.label_602:
	call	getutxent
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	je	.label_603
	mov	rdi, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rbp - 0x1c]
	call	desirable_utmp_entry
	test	al, 1
	jne	.label_601
	jmp	.label_600
.label_601:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_604
	lea	rsi, [rbp - 0x30]
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rcx
	call	x2nrealloc
	mov	qword ptr [rbp - 0x38], rax
.label_604:
	mov	eax, 0x180
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	add	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
	imul	rcx, rcx, 0x180
	add	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	memcpy
.label_600:
	jmp	.label_602
.label_603:
	call	endutxent
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4075a0

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi + 0x2c]
	cmp	eax, 0
	mov	byte ptr [rbp - 0x16], cl
	je	.label_605
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	movsx	edx, word ptr [rcx]
	cmp	edx, 7
	mov	byte ptr [rbp - 0x17], al
	je	.label_607
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0x17], cl
	jmp	.label_607
.label_607:
	mov	al, byte ptr [rbp - 0x17]
	mov	byte ptr [rbp - 0x16], al
.label_605:
	mov	al, byte ptr [rbp - 0x16]
	and	al, 1
	mov	byte ptr [rbp - 0x15], al
	mov	ecx, dword ptr [rbp - 0x14]
	and	ecx, 2
	cmp	ecx, 0
	je	.label_606
	test	byte ptr [rbp - 0x15], 1
	jne	.label_606
	mov	byte ptr [rbp - 1], 0
	jmp	.label_609
.label_606:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_608
	test	byte ptr [rbp - 0x15], 1
	je	.label_608
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 4]
	jge	.label_608
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	edi, dword ptr [rax + 4]
	call	kill
	cmp	eax, 0
	jge	.label_608
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_608
	mov	byte ptr [rbp - 1], 0
	jmp	.label_609
.label_608:
	mov	byte ptr [rbp - 1], 1
.label_609:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407680

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
	jne	.label_610
	mov	dword ptr [rbp - 4], 0
	jmp	.label_614
.label_610:
	jmp	.label_611
.label_611:
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
	jne	.label_613
	jmp	.label_612
.label_613:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_611
.label_612:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_614:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407740

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
	jne	.label_615
	test	byte ptr [rbp - 0x13], 1
	je	.label_617
	test	byte ptr [rbp - 0x11], 1
	jne	.label_615
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_617
.label_615:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_618
	call	__errno_location
	mov	dword ptr [rax], 0
.label_618:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_616
.label_617:
	mov	dword ptr [rbp - 4], 0
.label_616:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4077f0

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
	jne	.label_619
	movabs	rax, OFFSET FLAT:label_27
	mov	qword ptr [rbp - 8], rax
.label_619:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_620
	movabs	rax, OFFSET FLAT:label_621
	mov	qword ptr [rbp - 8], rax
.label_620:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407850

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
	jmp	.label_622
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
	je	.label_624
.label_626:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_624
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_624:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_623
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_623:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_622:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407920

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_627
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_628
.label_627:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_629
.label_628:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_629:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407980

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
	je	.label_630
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_630:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	jne	.label_631
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_631
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_631
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_633
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_632
.label_633:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_632
.label_631:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_632:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a90

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
	ja	.label_634
	jmp	.label_636
.label_636:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_635
.label_634:
	jmp	.label_635
.label_635:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
