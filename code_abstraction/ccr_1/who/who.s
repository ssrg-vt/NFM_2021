	.section	.text
	.align	16
	#Procedure 0x4019f0

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
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	mov	esi, OFFSET FLAT:label_11
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
	mov	esi, OFFSET FLAT:label_15
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
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_21
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_19
	mov	ecx, OFFSET FLAT:label_20
	xor	eax, eax
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_17:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
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
	#Procedure 0x401ba0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_23
	nop	
.label_36:
	mov	edi, OFFSET FLAT:label_27
	call	strcmp
	test	eax, eax
	je	.label_34
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_36
.label_34:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_27
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_24
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_24
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_24:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_27
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
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
	#Procedure 0x401cc0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_33
	call	setlocale
	mov	edi, OFFSET FLAT:label_55
	mov	esi, OFFSET FLAT:label_56
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_55
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	bpl, 1
	jmp	.label_37
.label_38:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_37:
	mov	edx, OFFSET FLAT:label_41
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebx
	mov	rsi, r14
	call	getopt_long
	lea	ecx, [rax + 1]
	cmp	ecx, 0x81
	ja	.label_45
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_43]]
.label_434:
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
	jmp	.label_37
.label_433:
	mov	byte ptr [byte ptr [rip + include_heading]],  1
	jmp	.label_37
.label_436:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	xor	ebp, ebp
	jmp	.label_37
.label_437:
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
	jmp	.label_58
.label_438:
	mov	byte ptr [byte ptr [rip + need_login]],  1
	jmp	.label_38
.label_439:
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
	jmp	.label_37
.label_442:
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	jmp	.label_38
.label_443:
	mov	byte ptr [byte ptr [rip + short_output]],  1
	jmp	.label_37
.label_446:
	mov	byte ptr [byte ptr [rip + do_lookup]],  1
	jmp	.label_37
.label_435:
	mov	byte ptr [byte ptr [rip + need_boottime]],  1
	mov	byte ptr [byte ptr [rip + need_deadprocs]],  1
	mov	byte ptr [byte ptr [rip + need_login]],  1
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	mov	byte ptr [byte ptr [rip + need_runlevel]],  1
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + include_mesg]],  1
.label_58:
	mov	byte ptr [byte ptr [rip + include_idle]],  1
	mov	byte ptr [byte ptr [rip + include_exit]],  1
	xor	ebp, ebp
	jmp	.label_37
.label_440:
	mov	byte ptr [byte ptr [rip + need_initspawn]],  1
	xor	ebp, ebp
	jmp	.label_37
.label_441:
	mov	byte ptr [byte ptr [rip + short_list]],  1
	jmp	.label_37
.label_444:
	mov	byte ptr [byte ptr [rip + need_clockchange]],  1
	xor	ebp, ebp
	jmp	.label_37
.label_445:
	mov	byte ptr [byte ptr [rip + need_users]],  1
	jmp	.label_38
.label_432:
	test	bpl, bpl
	je	.label_44
	mov	byte ptr [byte ptr [rip + need_users]],  1
	mov	byte ptr [byte ptr [rip + short_output]],  1
.label_44:
	cmp	byte ptr [byte ptr [rip + include_exit]],  1
	jne	.label_46
	mov	byte ptr [byte ptr [rip + short_output]],  0
.label_46:
	mov	edi, 2
	call	hard_locale
	mov	ecx, OFFSET FLAT:label_49
	mov	edx, OFFSET FLAT:label_50
	test	al, al
	cmovne	rdx, rcx
	movzx	eax, al
	lea	eax, [rax*4 + 0xc]
	mov	qword ptr [word ptr [rip + time_format]],  rdx
	mov	dword ptr [dword ptr [rip + time_format_width]],  eax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	sub	ebx, eax
	lea	ecx, [rbx + 1]
	cmp	ecx, 2
	jb	.label_51
	cmp	ebx, 1
	je	.label_39
	cmp	ebx, 2
	jne	.label_57
	mov	byte ptr [byte ptr [rip + my_line_only]],  1
.label_51:
	mov	edi, OFFSET FLAT:label_19
	mov	esi, 1
	jmp	.label_42
.label_39:
	mov	rdi, qword ptr [r14 + rax*8]
	xor	esi, esi
.label_42:
	call	who
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_45:
	cmp	eax, 0xffffff7d
	je	.label_47
	cmp	eax, 0xffffff7e
	jne	.label_48
	xor	edi, edi
	call	usage
.label_48:
	mov	edi, 1
	call	usage
.label_47:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_27
	mov	edx, OFFSET FLAT:label_25
	mov	r8d, OFFSET FLAT:label_52
	mov	r9d, OFFSET FLAT:label_53
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_54
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_40
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r14 + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	
	.section	.text
	.align	16
	#Procedure 0x401f60

	.globl who
	.type who, @function
who:
	push	rbp
	push	rbx
	sub	rsp, 0x18
	mov	eax, esi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x10]
	lea	rdx, [rsp + 8]
	mov	ecx, eax
	call	read_utmp
	test	eax, eax
	jne	.label_61
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	cmp	byte ptr [byte ptr [rip + short_list]],  1
	jne	.label_59
	call	list_entries_who
	jmp	.label_62
.label_59:
	call	scan_entries
.label_62:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	add	rsp, 0x18
	pop	rbx
	pop	rbp
	ret	
.label_61:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401fe0

	.globl list_entries_who
	.type list_entries_who, @function
list_entries_who:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r15, rdi
	xor	r14d, r14d
	test	r15, r15
	je	.label_63
	mov	r12d, OFFSET FLAT:label_33
	xor	r14d, r14d
.label_66:
	dec	r15
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_67
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_67
	mov	rdi, rbx
	call	extract_trimmed_name
	mov	r13, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_65
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	call	__printf_chk
	mov	rdi, r13
	call	free
	inc	r14
	mov	r12d, OFFSET FLAT:label_68
.label_67:
	add	rbx, 0x180
	test	r15, r15
	jne	.label_66
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rdx, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	__printf_chk
	nop	
	.section	.text
	.align	16
	#Procedure 0x402080

	.globl scan_entries
	.type scan_entries, @function
scan_entries:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [byte ptr [rip + include_heading]],  1
	jne	.label_69
	call	print_heading
.label_69:
	cmp	byte ptr [byte ptr [rip + my_line_only]],  1
	jne	.label_74
	xor	edi, edi
	call	ttyname
	mov	r12, rax
	test	r12, r12
	je	.label_76
	mov	esi, OFFSET FLAT:label_78
	mov	edx, 5
	mov	rdi, r12
	call	strncmp
	lea	r15, [r12 + 5]
	test	eax, eax
	cmovne	r15, r12
.label_74:
	test	r14, r14
	je	.label_76
	movabs	r12, 0x8000000000000000
	nop	dword ptr [rax + rax]
.label_71:
	cmp	byte ptr [byte ptr [rip + my_line_only]],  1
	jne	.label_82
	lea	rsi, [rbx + 8]
	mov	edx, 0x20
	mov	rdi, r15
	call	strncmp
	test	eax, eax
	jne	.label_72
.label_82:
	cmp	byte ptr [byte ptr [rip + need_users]],  1
	jne	.label_73
	cmp	byte ptr [rbx + 0x2c], 0
	je	.label_73
	movzx	eax, word ptr [rbx]
	cmp	eax, 7
	jne	.label_73
	mov	rdi, rbx
	mov	rsi, r12
	call	print_user
	jmp	.label_72
	nop	dword ptr [rax]
.label_73:
	cmp	byte ptr [byte ptr [rip + need_runlevel]],  1
	jne	.label_80
	movzx	eax, word ptr [rbx]
	cmp	eax, 1
	jne	.label_80
	mov	rdi, rbx
	call	print_runlevel
	jmp	.label_72
	nop	
.label_80:
	cmp	byte ptr [byte ptr [rip + need_boottime]],  1
	jne	.label_81
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_81
	mov	rdi, rbx
	call	print_boottime
	jmp	.label_72
	nop	dword ptr [rax + rax]
.label_81:
	cmp	byte ptr [byte ptr [rip + need_clockchange]],  1
	jne	.label_70
	movzx	eax, word ptr [rbx]
	cmp	eax, 3
	jne	.label_70
	mov	rdi, rbx
	call	print_clockchange
	jmp	.label_72
	nop	dword ptr [rax + rax]
.label_70:
	cmp	byte ptr [byte ptr [rip + need_initspawn]],  1
	jne	.label_75
	movzx	eax, word ptr [rbx]
	cmp	eax, 5
	jne	.label_75
	mov	rdi, rbx
	call	print_initspawn
	jmp	.label_72
.label_75:
	cmp	byte ptr [byte ptr [rip + need_login]],  1
	jne	.label_79
	movzx	eax, word ptr [rbx]
	cmp	eax, 6
	jne	.label_79
	mov	rdi, rbx
	call	print_login
	jmp	.label_72
.label_79:
	cmp	byte ptr [byte ptr [rip + need_deadprocs]],  1
	jne	.label_72
	movzx	eax, word ptr [rbx]
	cmp	eax, 8
	jne	.label_72
	mov	rdi, rbx
	call	print_deadprocs
	nop	
.label_72:
	dec	r14
	movzx	eax, word ptr [rbx]
	cmp	eax, 2
	jne	.label_77
	movsxd	r12, dword ptr [rbx + 0x154]
.label_77:
	add	rbx, 0x180
	test	r14, r14
	jne	.label_71
.label_76:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402220

	.globl print_heading
	.type print_heading, @function
print_heading:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_83
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_89
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_86
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_87
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_88
	mov	edx, 5
	call	dcgettext
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	rsi, r14
	mov	r8, r15
	mov	r9, r12
	push	rax
	push	rbp
	push	rbx
	push	r13
	call	print_line
	add	rsp, 0x28
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
	#Procedure 0x4022f0

	.globl print_user
	.type print_user, @function
print_user:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1e8
	mov	rbx, rsi
	mov	r12, rdi
	movsxd	r8, dword ptr [r12 + 4]
	lea	r14, [rsp + 0x14]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	lea	r15, [r12 + 8]
	cmp	byte ptr [r12 + 8], 0x2f
	jne	.label_97
	lea	rdi, [rsp + 0x20]
	jmp	.label_102
.label_97:
	lea	rdi, [rsp + 0x25]
	mov	word ptr [rsp + 0x24], 0x2f
	mov	dword ptr [rsp + 0x20], 0x7665642f
.label_102:
	mov	edx, 0x20
	mov	rsi, r15
	call	stzncpy
	lea	rdi, [rsp + 0x20]
	lea	rsi, [rsp + 0x50]
	call	stat
	mov	r13b, 0x3f
	test	eax, eax
	jne	.label_91
	lea	rdi, [rsp + 0x50]
	call	is_tty_writable
	test	al, al
	mov	r13b, 0x2b
	jne	.label_109
	mov	r13b, 0x2d
.label_109:
	mov	rdi, qword ptr [rsp + 0x98]
	test	rdi, rdi
	je	.label_91
	mov	rsi, rbx
	call	idle_string
	mov	rbp, rax
	lea	rdi, [rsp + 1]
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_95
	mov	r8d, 6
	xor	eax, eax
	mov	r9, rbp
	call	__sprintf_chk
	jmp	.label_99
.label_91:
	lea	rdi, [rsp + 1]
	mov	esi, 1
	mov	edx, 7
	mov	ecx, OFFSET FLAT:label_100
	xor	eax, eax
	call	__sprintf_chk
.label_99:
	cmp	byte ptr [r12 + 0x4c], 0
	je	.label_105
	mov	byte ptr [rsp], r13b
	lea	rsi, [r12 + 0x4c]
	lea	rbx, [rsp + 0xe0]
	mov	edx, 0x100
	mov	rdi, rbx
	call	stzncpy
	mov	esi, 0x3a
	mov	rdi, rbx
	call	strchr
	xor	ebp, ebp
	test	rax, rax
	je	.label_93
	mov	rbp, rax
	inc	rbp
	mov	byte ptr [rax], 0
.label_93:
	mov	qword ptr [rsp + 8], r15
	xor	r13d, r13d
	cmp	byte ptr [rsp + 0xe0], 0
	je	.label_96
	xor	r13d, r13d
	cmp	byte ptr [byte ptr [rip + do_lookup]],  1
	jne	.label_96
	lea	rdi, [rsp + 0xe0]
	call	canon_host
	mov	r13, rax
.label_96:
	test	r13, r13
	cmovne	rbx, r13
	mov	r15,  qword ptr [word ptr [rip + print_user.hostlen]]
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	test	rbp, rbp
	je	.label_107
	mov	rdi, rbp
	call	strlen
	lea	rax, [r14 + rax + 4]
	cmp	r15, rax
	jae	.label_90
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  rax
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_90:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_98
	xor	eax, eax
	mov	r8, rbx
	mov	r9, rbp
	call	__sprintf_chk
	jmp	.label_103
.label_105:
	cmp	qword ptr [word ptr [rip + print_user.hostlen]],  0
	jne	.label_104
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  1
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_104:
	mov	rax,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	byte ptr [rax], 0
	jmp	.label_92
.label_107:
	add	r14, 3
	cmp	r15, r14
	jae	.label_94
	mov	qword ptr [word ptr [rip + print_user.hostlen]],  r14
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	call	free
	mov	rdi,  qword ptr [word ptr [rip + print_user.hostlen]]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_user.hoststr]],  rax
.label_94:
	mov	rdi,  qword ptr [word ptr [rip + print_user.hoststr]]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_101
	xor	eax, eax
	mov	r8, rbx
	call	__sprintf_chk
.label_103:
	lea	r14, [rsp + 0x14]
	mov	r15, qword ptr [rsp + 8]
	test	r13, r13
	je	.label_106
	mov	rdi, rbx
	call	free
.label_106:
	mov	r13b, byte ptr [rsp]
.label_92:
	lea	rbx, [r12 + 0x2c]
	mov	rdi, r12
	call	time_string
	mov	rcx,  qword ptr [word ptr [rip + print_user.hoststr]]
	test	rcx, rcx
	mov	ebp, OFFSET FLAT:label_33
	cmovne	rbp, rcx
	lea	r10, [rsp + 1]
	movsx	edx, r13b
	mov	edi, 0x20
	mov	ecx, 0x20
	mov	rsi, rbx
	mov	r8, r15
	mov	r9, rax
	push	OFFSET FLAT:label_33
	push	rbp
	push	r14
	push	r10
	call	print_line
	add	rsp, 0x208
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
	#Procedure 0x4025f0

	.globl print_runlevel
	.type print_runlevel, @function
print_runlevel:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	ebx, dword ptr [r14 + 4]
	mov	ebp, ebx
	sar	ebp, 0x1f
	shr	ebp, 0x18
	add	ebp, ebx
	cmp	qword ptr [word ptr [rip + print_runlevel.runlevline]],  0
	jne	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 3]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_runlevel.runlevline]],  rax
.label_111:
	sar	ebp, 8
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_112
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
	movzx	r9d, bl
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_114
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	cmp	qword ptr [word ptr [rip + print_runlevel.comment]],  0
	jne	.label_115
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 2]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_runlevel.comment]],  rax
.label_115:
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.comment]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movzx	ebp, bpl
	cmp	ebp, 0x4e
	mov	r9d, 0x53
	cmovne	r9d, ebp
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_113
	xor	eax, eax
	mov	rdi, r15
	mov	r8, rbx
	call	__sprintf_chk
	mov	r15,  qword ptr [word ptr [rip + print_runlevel.runlevline]]
	mov	rdi, r14
	call	time_string
	mov	rbx, rax
	mov	edi, ebp
	call	c_isprint
	mov	ecx, OFFSET FLAT:label_33
	test	al, al
	mov	rax,  qword ptr [word ptr [rip + print_runlevel.comment]]
	cmove	rax, rcx
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r15
	mov	r9, rbx
	push	OFFSET FLAT:label_33
	push	rax
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402760

	.globl print_boottime
	.type print_boottime, @function
print_boottime:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	mov	r9, rax
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027c0

	.globl print_clockchange
	.type print_clockchange, @function
print_clockchange:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_117
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 0x20
	mov	ecx, 0xffffffff
	mov	r8, r14
	mov	r9, rax
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	push	OFFSET FLAT:label_33
	call	print_line
	add	rsp, 0x28
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402820

	.globl print_initspawn
	.type print_initspawn, @function
print_initspawn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r14, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r15, [rsp + 0xc]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, r15
	call	__sprintf_chk
	lea	r12, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, r12
	mov	r9, rax
	push	OFFSET FLAT:label_33
	push	r14
	push	r15
	push	OFFSET FLAT:label_33
	call	print_line
	add	rsp, 0x20
	mov	rdi, r14
	call	free
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4028b0

	.globl print_login
	.type print_login, @function
print_login:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r15, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	r14, [rsp + 4]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	lea	r13, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	rsi, r12
	mov	r8, r13
	mov	r9, rax
	push	OFFSET FLAT:label_33
	push	r15
	push	r14
	push	OFFSET FLAT:label_33
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
	call	free
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402950

	.globl print_deadprocs
	.type print_deadprocs, @function
print_deadprocs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdi
	call	make_id_equals_comment
	mov	r15, rax
	movsxd	r8, dword ptr [rbx + 4]
	lea	rdi, [rsp + 0xc]
	mov	esi, 1
	mov	edx, 0xc
	mov	ecx, OFFSET FLAT:label_108
	xor	eax, eax
	call	__sprintf_chk
	cmp	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  0
	jne	.label_120
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [r12 + rax + 0xe]
	call	xmalloc
	mov	qword ptr [word ptr [rip + print_deadprocs.exitstr]],  rax
.label_120:
	mov	r12,  qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_122
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	movsx	r14d, word ptr [rbx + 0x14c]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	movsx	ebp, word ptr [rbx + 0x14e]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_121
	mov	eax, 0
	mov	rdi, r12
	mov	r8, r13
	mov	r9d, r14d
	push	rbp
	push	r10
	call	__sprintf_chk
	add	rsp, 0x10
	lea	rbp, [rbx + 8]
	mov	rdi, rbx
	call	time_string
	mov	edi, 0xffffffff
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 0x20
	mov	ecx, 0x20
	mov	r8, rbp
	mov	r9, rax
	push	qword ptr [word ptr [rip + print_deadprocs.exitstr]]
	push	r15
	lea	rax, [rsp + 0x1c]
	push	rax
	push	OFFSET FLAT:label_33
	call	print_line
	add	rsp, 0x20
	mov	rdi, r15
	call	free
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
	#Procedure 0x402aa0

	.globl print_line
	.type print_line, @function
print_line:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r12d, ecx
	mov	rbx, rsi
	mov	r13d, edi
	mov	byte ptr [byte ptr [rip + label_132]],  dl
	cmp	byte ptr [byte ptr [rip + include_idle]],  1
	jne	.label_133
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	test	al, al
	jne	.label_133
	mov	r14, qword ptr [rsp + 0x70]
	mov	rdi, r14
	call	strlen
	cmp	rax, 6
	ja	.label_133
	lea	rdi, [rsp + 0x10]
	mov	esi, 1
	mov	edx, 8
	mov	ecx, OFFSET FLAT:label_135
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_126
.label_133:
	mov	byte ptr [rsp + 0x10], 0
.label_126:
	mov	al,  byte ptr [byte ptr [rip + short_output]]
	test	al, al
	jne	.label_129
	mov	r14, qword ptr [rsp + 0x78]
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xb
	ja	.label_129
	lea	rdi, [rsp + 0x2b]
	mov	esi, 1
	mov	edx, 0xd
	mov	ecx, OFFSET FLAT:label_136
	xor	eax, eax
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_127
.label_129:
	mov	byte ptr [rsp + 0x2b], 0
.label_127:
	mov	r14, qword ptr [rsp + 0x88]
	mov	edi, 1
	cmp	byte ptr [byte ptr [rip + include_exit]],  1
	jne	.label_130
	mov	rdi, r14
	call	strlen
	cmp	rax, 0xc
	lea	rax, [rax + 2]
	mov	edi, 0xe
	cmovae	rdi, rax
.label_130:
	mov	r15, qword ptr [rsp + 0x80]
	call	xmalloc
	mov	rbp, rax
	cmp	byte ptr [byte ptr [rip + include_exit]],  1
	jne	.label_128
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_131
	xor	eax, eax
	mov	rdi, rbp
	mov	r8, r14
	call	__sprintf_chk
	jmp	.label_137
.label_128:
	mov	byte ptr [rbp], 0
.label_137:
	test	rbx, rbx
	mov	r8d, OFFSET FLAT:label_123
	cmovne	r8, rbx
	mov	al,  byte ptr [byte ptr [rip + include_mesg]]
	mov	ecx, OFFSET FLAT:print_line.mesg
	mov	r9d, OFFSET FLAT:label_33
	test	al, al
	cmovne	r9, rcx
	mov	ebx,  dword ptr [dword ptr [rip + time_format_width]]
	lea	r10, [rsp + 0x2b]
	lea	r11, [rsp + 0x10]
	lea	rdi, [rsp + 8]
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_124
	mov	eax, 0
	mov	ecx, r13d
	push	rbp
	push	r15
	push	r10
	push	r11
	push	qword ptr [rsp + 0x38]
	push	rbx
	push	qword ptr [rsp + 0x50]
	push	r12
	call	__asprintf_chk
	add	rsp, 0x40
	cmp	eax, -1
	je	.label_134
	mov	rbx, qword ptr [rsp + 8]
	mov	rdi, rbx
	call	strlen
	lea	rax, [rbx + rax + 1]
	nop	dword ptr [rax]
.label_125:
	cmp	byte ptr [rax - 2], 0x20
	lea	rax, [rax - 1]
	je	.label_125
	mov	byte ptr [rax], 0
	mov	rdi, qword ptr [rsp + 8]
	call	puts
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rdi, rbp
	call	free
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_134:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402c80

	.globl stzncpy
	.type stzncpy, @function
stzncpy:
	test	rdx, rdx
	jle	.label_138
	add	rdx, rsi
	nop	dword ptr [rax + rax]
.label_139:
	movzx	eax, byte ptr [rsi]
	test	al, al
	je	.label_138
	inc	rsi
	mov	byte ptr [rdi], al
	inc	rdi
	cmp	rsi, rdx
	jb	.label_139
.label_138:
	mov	byte ptr [rdi], 0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl is_tty_writable
	.type is_tty_writable, @function
is_tty_writable:
	mov	al, byte ptr [rdi + 0x18]
	and	al, 0x10
	shr	al, 4
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402cc0

	.globl idle_string
	.type idle_string, @function
idle_string:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	movabs	rax, 0x8000000000000000
	cmp	qword ptr [word ptr [rip + idle_string.now]],  rax
	jne	.label_140
	mov	edi, OFFSET FLAT:idle_string.now
	call	time
.label_140:
	cmp	r14, rbx
	jge	.label_147
	mov	rax,  qword ptr [word ptr [rip + idle_string.now]]
	cmp	rax, rbx
	jl	.label_147
	lea	rcx, [rax - 0x15180]
	cmp	rcx, rbx
	jge	.label_147
	sub	eax, ebx
	mov	ebx, OFFSET FLAT:label_142
	cmp	eax, 0x3c
	jl	.label_143
	cmp	eax, 0x15180
	jge	.label_141
	mov	ecx, eax
	mov	r8d, 0x91a2b3c5
	imul	r8, rcx
	shr	r8, 0x2b
	imul	ecx, r8d, 0xe10
	sub	eax, ecx
	mov	r9d, 0x88888889
	imul	r9, rax
	shr	r9, 0x25
	mov	ebx, OFFSET FLAT:idle_string.idle_hhmm
	mov	edi, OFFSET FLAT:idle_string.idle_hhmm
	mov	esi, 1
	mov	edx, 6
	mov	ecx, OFFSET FLAT:label_149
	xor	eax, eax
	call	__sprintf_chk
.label_143:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_147:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	dcgettext
.label_141:
	mov	edi, OFFSET FLAT:label_144
	mov	esi, OFFSET FLAT:label_145
	mov	edx, 0xcd
	mov	ecx, OFFSET FLAT:label_146
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402da0

	.globl time_string
	.type time_string, @function
time_string:
	push	rbx
	sub	rsp, 0x10
	movsxd	rax, dword ptr [rdi + 0x154]
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rsp + 8]
	call	localtime
	test	rax, rax
	je	.label_150
	mov	rdx,  qword ptr [word ptr [rip + time_format]]
	mov	ebx, OFFSET FLAT:time_string.buf
	mov	edi, OFFSET FLAT:time_string.buf
	mov	esi, 0x21
	mov	rcx, rax
	call	strftime
	jmp	.label_151
.label_150:
	mov	rdi, qword ptr [rsp + 8]
	call	timetostr
	mov	rbx, rax
.label_151:
	mov	rax, rbx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e00

	.globl timetostr
	.type timetostr, @function
timetostr:
	mov	esi, OFFSET FLAT:time_string.buf
	jmp	imaxtostr
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e10

	.globl make_id_equals_comment
	.type make_id_equals_comment, @function
make_id_equals_comment:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	call	strlen
	lea	rdi, [rax + 5]
	call	xmalloc
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_152
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rsi, rax
	call	strcpy
	lea	rsi, [r14 + 0x28]
	mov	edx, 4
	mov	rcx, -1
	mov	rdi, rbx
	call	__strncat_chk
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_153
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_153
.label_154:
	ret	
.label_153:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_154
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402eb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_155
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_155:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402ed0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0
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
	#Procedure 0x402ef0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_156
.label_157:
	ret	
.label_156:
	cmp	edi, 0x7f
	je	.label_157
	xor	eax, eax
	jmp	.label_157
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10
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
	#Procedure 0x402f20
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
	#Procedure 0x402f30
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
	#Procedure 0x402f40

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
	#Procedure 0x402f50
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_158
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_159]]
.label_160:
	ret	
.label_158:
	xor	eax, eax
	jmp	.label_160
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f70
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_161
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_161:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f90

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
	#Procedure 0x402fa0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_162
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_162:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402fc0
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
	#Procedure 0x402fd0
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
	#Procedure 0x402fe0

	.globl canon_host
	.type canon_host, @function
canon_host:
	mov	esi, OFFSET FLAT:last_cherror
	jmp	canon_host_r
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ff0

	.globl canon_host_r
	.type canon_host_r, @function
canon_host_r:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp], 0
	mov	dword ptr [dword ptr [rip + canon_host_r.hints]],  2
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, OFFSET FLAT:canon_host_r.hints
	call	getaddrinfo
	test	eax, eax
	je	.label_165
	xor	ebx, ebx
	test	r14, r14
	je	.label_163
	mov	dword ptr [r14], eax
	xor	ebx, ebx
	jmp	.label_163
.label_165:
	mov	rax, qword ptr [rsp]
	mov	rax, qword ptr [rax + 0x20]
	test	rax, rax
	cmovne	rbx, rax
	mov	rdi, rbx
	call	__strdup
	mov	rbx, rax
	test	r14, r14
	je	.label_164
	test	rbx, rbx
	jne	.label_164
	mov	dword ptr [r14], 0xfffffff6
.label_164:
	mov	rdi, qword ptr [rsp]
	call	freeaddrinfo
.label_163:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403070
	.globl ch_strerror
	.type ch_strerror, @function
ch_strerror:

	mov	edi,  dword ptr [dword ptr [rip + last_cherror]]
	jmp	gai_strerror
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403090
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4030a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_168
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_166
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_166
.label_168:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_169
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_171
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_167
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_169:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_167:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_170
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
	#Procedure 0x403160

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_173
	cmp	byte ptr [rax], 0x43
	jne	.label_175
	cmp	byte ptr [rax + 1], 0
	je	.label_172
.label_175:
	mov	esi, OFFSET FLAT:label_174
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_173
.label_172:
	xor	ebx, ebx
.label_173:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4031a0

	.globl imaxtostr
	.type imaxtostr, @function
imaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_176
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_177:
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
	ja	.label_177
	jmp	.label_179
.label_176:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_178:
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
	ja	.label_178
	mov	byte ptr [rsi], 0x2d
.label_179:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_180
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_182
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_184
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_182
	mov	esi, OFFSET FLAT:label_183
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_185
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_185:
	mov	rbx, r14
.label_182:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_180:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_181
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403310
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
	#Procedure 0x403350
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
	#Procedure 0x403360
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
	#Procedure 0x403370

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
	#Procedure 0x4033b0
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
	#Procedure 0x4033d0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_186
	test	rdx, rdx
	je	.label_186
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_186:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403400
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
	#Procedure 0x403480

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
.label_255:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_259
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_264]]
.label_466:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_269
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_208
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_467:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_278
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_278
	xor	r14d, r14d
.label_289:
	cmp	r14, r11
	jae	.label_287
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_287:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_289
.label_278:
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
	jmp	.label_190
.label_459:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_190
.label_462:
	mov	al, 1
.label_460:
	mov	r12b, 1
.label_463:
	test	r12b, 1
	mov	cl, 1
	je	.label_196
	mov	ecx, eax
.label_196:
	mov	al, cl
.label_461:
	test	r12b, 1
	jne	.label_199
	test	r11, r11
	je	.label_251
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_251:
	mov	r14d, 1
	jmp	.label_206
.label_199:
	xor	r14d, r14d
.label_206:
	mov	ecx, OFFSET FLAT:label_208
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_190
.label_464:
	test	r12b, 1
	jne	.label_216
	test	r11, r11
	je	.label_224
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_224:
	mov	r14d, 1
	jmp	.label_286
.label_465:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_225
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_190
.label_216:
	xor	r14d, r14d
.label_286:
	mov	eax, OFFSET FLAT:label_225
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_190:
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
	jmp	.label_243
	nop	dword ptr [rax]
.label_239:
	inc	rsi
.label_243:
	cmp	rbp, -1
	je	.label_271
	cmp	rsi, rbp
	jne	.label_221
	jmp	.label_275
	nop	word ptr cs:[rax + rax]
.label_271:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_275
.label_221:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_280
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_282
	cmp	rbp, -1
	jne	.label_282
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
.label_282:
	cmp	rbx, rbp
	jbe	.label_291
.label_280:
	xor	r8d, r8d
.label_204:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_293
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_299]]
.label_496:
	test	rsi, rsi
	jne	.label_187
	jmp	.label_192
	nop	
.label_291:
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
	jne	.label_203
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_204
	jmp	.label_214
.label_203:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_204
.label_500:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_227
	test	rsi, rsi
	jne	.label_228
	cmp	rbp, 1
	je	.label_192
	xor	r13d, r13d
	jmp	.label_188
.label_489:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_233
	cmp	byte ptr [rsp + 7], 0
	jne	.label_191
	cmp	r12d, 2
	jne	.label_235
	mov	eax, r9d
	and	al, 1
	jne	.label_235
	cmp	r14, r11
	jae	.label_249
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_249:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_244
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_244:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_248
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_248:
	add	r14, 3
	mov	r9b, 1
.label_235:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_217
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_217:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_258
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_258
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_258
	cmp	r14, r11
	jae	.label_270
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_270:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_272
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_272:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_188
.label_490:
	mov	bl, 0x62
	jmp	.label_277
.label_491:
	mov	cl, 0x74
	jmp	.label_279
.label_492:
	mov	bl, 0x76
	jmp	.label_277
.label_493:
	mov	bl, 0x66
	jmp	.label_277
.label_494:
	mov	cl, 0x72
	jmp	.label_279
.label_497:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_285
	cmp	byte ptr [rsp + 7], 0
	jne	.label_191
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
	jae	.label_290
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_290:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_301
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_301:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_193
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_193:
	add	r14, 3
	xor	r9d, r9d
.label_285:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_188
.label_498:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_202
	cmp	r12d, 2
	jne	.label_187
	cmp	byte ptr [rsp + 7], 0
	je	.label_187
	jmp	.label_191
.label_499:
	cmp	r12d, 2
	jne	.label_212
	cmp	byte ptr [rsp + 7], 0
	jne	.label_191
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_218
.label_293:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_236
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
.label_222:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_234
	test	r8b, r8b
	je	.label_234
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_188
.label_227:
	test	rsi, rsi
	jne	.label_254
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_254
.label_192:
	mov	dl, 1
.label_495:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_191
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_188:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_265
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_267
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_265:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_257
.label_267:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_273
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_218
	jmp	.label_284
	nop	dword ptr [rax]
.label_257:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_284
	jmp	.label_218
.label_273:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_284
.label_233:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_239
	xor	r15d, r15d
	jmp	.label_187
.label_212:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_279
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_218
.label_279:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_191
.label_277:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_188
	nop	word ptr cs:[rax + rax]
.label_284:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_191
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
	jae	.label_268
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_268:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_210
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_210:
	add	r14, 3
	mov	r9b, 1
.label_197:
	cmp	r14, r11
	jae	.label_215
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_215:
	inc	r14
	jmp	.label_219
.label_236:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_223
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_223:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_211:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_242
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_246
	cmp	rbp, -2
	je	.label_283
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_252
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_189:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_276
	bt	rsi, rdx
	jb	.label_214
.label_276:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_189
.label_252:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_274
	xor	r13d, r13d
.label_274:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_211
	jmp	.label_222
.label_258:
	xor	r13d, r13d
	jmp	.label_188
.label_254:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_188
.label_202:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_187
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_187
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_187
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_295
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_300
	cmp	byte ptr [rsp + 7], 0
	jne	.label_191
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_241
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_241:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_205:
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
	jmp	.label_188
.label_187:
	xor	eax, eax
.label_228:
	xor	r13d, r13d
	jmp	.label_188
.label_234:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_220
	nop	word ptr cs:[rax + rax]
.label_288:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_220:
	test	r8b, r8b
	je	.label_229
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_230
	cmp	r14, r11
	jae	.label_231
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_231:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_230
	nop	dword ptr [rax]
.label_229:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_214
	cmp	r12d, 2
	jne	.label_213
	mov	eax, r9d
	and	al, 1
	jne	.label_213
	cmp	r14, r11
	jae	.label_245
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_245:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_253:
	add	r14, 3
	mov	r9b, 1
.label_213:
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_237:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_262
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_262:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_297
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_297:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_230:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_218
	test	r9b, 1
	je	.label_256
	mov	ebx, eax
	and	bl, 1
	jne	.label_256
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_281
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_281:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_294
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_294:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_256:
	cmp	r14, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_218:
	test	r9b, 1
	je	.label_266
	and	al, 1
	jne	.label_266
	cmp	r14, r11
	jae	.label_296
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_296:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_292
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_292:
	add	r14, 2
	xor	r9d, r9d
.label_266:
	mov	ebx, r15d
.label_219:
	cmp	r14, r11
	jae	.label_195
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_195:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_239
.label_246:
	xor	r13d, r13d
.label_242:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_222
.label_283:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_238
	mov	rsi, qword ptr [rsp + 0x50]
.label_226:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_261
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_226
	xor	r13d, r13d
	jmp	.label_222
.label_238:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_222
.label_261:
	xor	r13d, r13d
	jmp	.label_222
.label_295:
	xor	r13d, r13d
	jmp	.label_188
.label_300:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_188
	nop	dword ptr [rax + rax]
.label_275:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_232
	or	dl, al
	je	.label_214
.label_232:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_240
	or	dl, al
	jne	.label_240
	test	r10b, 1
	jne	.label_250
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_240
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_255
.label_240:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_260
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_263
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_263
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_298:
	cmp	r14, r11
	jae	.label_207
	mov	byte ptr [rcx + r14], al
.label_207:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_298
	jmp	.label_263
.label_191:
	mov	qword ptr [rsp + 0x20], rbp
.label_214:
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
.label_198:
	mov	r14, rax
.label_201:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_250:
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
	jmp	.label_198
.label_260:
	mov	rcx, qword ptr [rsp + 8]
.label_263:
	cmp	r14, r11
	jae	.label_201
	mov	byte ptr [rcx + r14], 0
	jmp	.label_201
.label_259:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404240
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
	#Procedure 0x404250

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
	je	.label_302
	mov	qword ptr [rax], rbx
.label_302:
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
	#Procedure 0x404340
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_303
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_306:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_306
.label_303:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_307
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_305]], OFFSET FLAT:slot0
.label_307:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_304
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_304:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4043e0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4043f0

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
	js	.label_311
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_314
	cmp	r12d, 0x7fffffff
	je	.label_309
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
	jne	.label_312
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_312:
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
.label_314:
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
	jbe	.label_310
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_313
.label_310:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_308
	mov	rdi, r14
	call	free
.label_308:
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
.label_313:
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
.label_311:
	call	abort
.label_309:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4045b0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0
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
	#Procedure 0x4045d0
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
	#Procedure 0x4045e0

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
	#Procedure 0x404620

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
	je	.label_315
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
.label_315:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404680

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
	#Procedure 0x4046c0
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
	#Procedure 0x4046e0
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
	#Procedure 0x404700

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
	mov	rcx,  qword ptr [word ptr [rip + label_316]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_317]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_318]]
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
	#Procedure 0x404770

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
	#Procedure 0x404780

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404790
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	#Procedure 0x4047f0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404800

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
	mov	rax,  qword ptr [word ptr [rip + label_316]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_317]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_318]]
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
	#Procedure 0x404870
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
	#Procedure 0x404890
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
	#Procedure 0x4048b0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4048c0
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
	#Procedure 0x4048d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4048e0

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
	#Procedure 0x4048f0

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
	jne	.label_323
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
	je	.label_319
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_324
	mov	eax, OFFSET FLAT:label_325
	jmp	.label_322
.label_319:
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
	je	.label_326
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_320
	mov	eax, OFFSET FLAT:label_321
	jmp	.label_322
.label_326:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_225
	mov	eax, OFFSET FLAT:label_208
.label_322:
	cmove	rax, rcx
.label_323:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4049b0

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
	je	.label_327
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_329
	jmp	.label_328
.label_327:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_328
.label_329:
	mov	eax, 1
	test	bpl, bpl
	je	.label_328
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
.label_328:
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
	#Procedure 0x404a30

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
	je	.label_332
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_331
.label_332:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_331
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_331
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
.label_331:
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
	#Procedure 0x404ac0

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
	je	.label_333
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_335
	jmp	.label_334
.label_333:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_334
.label_335:
	mov	eax, 1
	test	bpl, bpl
	je	.label_334
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
.label_334:
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
	#Procedure 0x404b40

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
	je	.label_338
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_337
	jmp	.label_336
.label_338:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_336
.label_337:
	mov	eax, 1
	test	bpl, bpl
	je	.label_336
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
.label_336:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bb0

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
	je	.label_341
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_339
	jmp	.label_340
.label_341:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_340
.label_339:
	mov	eax, 1
	test	bpl, bpl
	je	.label_340
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_340:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c10

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
	je	.label_342
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_344
	jmp	.label_343
.label_342:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_343
.label_344:
	mov	eax, 1
	test	bpl, bpl
	je	.label_343
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_343:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404c60

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
	je	.label_347
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_346
	jmp	.label_345
.label_347:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_345
.label_346:
	mov	eax, 1
	test	bpl, bpl
	je	.label_345
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_345:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cb0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_350
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_349
	jmp	.label_348
.label_350:
	mov	eax, 1
	test	cl, cl
	je	.label_348
.label_349:
	xor	eax, eax
.label_348:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ce0

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
	je	.label_363
	mov	edx, OFFSET FLAT:label_354
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_360
.label_363:
	mov	edx, OFFSET FLAT:label_361
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_360:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_365
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
	mov	esi, OFFSET FLAT:label_362
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_366
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_367]]
.label_528:
	add	rsp, 8
	jmp	.label_353
.label_366:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
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
	jmp	.label_353
.label_529:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_352
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
.label_530:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
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
.label_531:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_355
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
.label_532:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_369
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
	jmp	.label_353
.label_533:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
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
	jmp	.label_353
.label_534:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
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
	jmp	.label_353
.label_535:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
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
	jmp	.label_353
.label_537:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_359
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
	jmp	.label_353
.label_536:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_364
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
.label_353:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405040
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_370:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_370
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405070

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_372:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_371
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_373
	nop	dword ptr [rax]
.label_371:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_373:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_374
	inc	r9
	cmp	r9, 0xa
	jb	.label_372
.label_374:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4050d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_375
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_375:
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
	#Procedure 0x405160
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_377
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_26
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4051e0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_380
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_380:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405210

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_381
	test	rax, rax
	je	.label_382
.label_381:
	pop	rbx
	ret	
.label_382:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405230
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_383
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_383:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405260

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_384
	test	rbx, rbx
	jne	.label_384
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_384:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_386
	test	rax, rax
	je	.label_385
.label_386:
	pop	rbx
	ret	
.label_385:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405290

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_387
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_390
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_388
.label_387:
	test	rcx, rcx
	jne	.label_391
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_391:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_389
.label_388:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_390:
	call	xalloc_die
.label_389:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405320
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330
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
	#Procedure 0x405360
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_392
	call	rpl_calloc
	test	rax, rax
	je	.label_392
	pop	rcx
	ret	
.label_392:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390

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
	#Procedure 0x4053c0
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
	#Procedure 0x4053e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_393
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_60
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_394
	test	rsi, rsi
	mov	ecx, 1
	je	.label_395
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_395
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_394:
	mov	ecx, 1
.label_395:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405460

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
	je	.label_396
	cmp	r15, -2
	jb	.label_396
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_396
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_396:
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
	#Procedure 0x4054c0

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
	jle	.label_397
	add	rax, rbx
	nop	dword ptr [rax]
.label_398:
	cmp	byte ptr [rax - 1], 0x20
	jne	.label_397
	mov	byte ptr [rax - 1], 0
	dec	rax
	cmp	rbx, rax
	jb	.label_398
.label_397:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl read_utmp
	.type read_utmp, @function
read_utmp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebp, ecx
	mov	r14, rdx
	mov	r15, rsi
	mov	qword ptr [rsp], 0
	call	utmpxname
	call	setutxent
	xor	r13d, r13d
	xor	r12d, r12d
	jmp	.label_400
.label_399:
	lea	rdi, [r12 + r12*2]
	inc	r12
	shl	rdi, 7
	add	rdi, r13
	mov	edx, 0x180
	mov	rsi, rbx
	call	memcpy
	nop	dword ptr [rax + rax]
.label_400:
	call	getutxent
	mov	rbx, rax
	test	rbx, rbx
	je	.label_401
	mov	rdi, rbx
	mov	esi, ebp
	call	desirable_utmp_entry
	test	al, al
	je	.label_400
	cmp	r12, qword ptr [rsp]
	jne	.label_399
	mov	edx, 0x180
	mov	rdi, r13
	lea	rsi, [rsp]
	call	x2nrealloc
	mov	r13, rax
	jmp	.label_399
.label_401:
	call	endutxent
	mov	qword ptr [r15], r12
	mov	qword ptr [r14], r13
	xor	eax, eax
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
	#Procedure 0x4055d0

	.globl desirable_utmp_entry
	.type desirable_utmp_entry, @function
desirable_utmp_entry:
	cmp	byte ptr [rdi + 0x2c], 0
	je	.label_405
	movzx	eax, word ptr [rdi]
	cmp	eax, 7
	sete	al
	jmp	.label_406
.label_405:
	xor	eax, eax
.label_406:
	push	rax
	test	sil, 2
	je	.label_402
	test	al, al
	jne	.label_402
	xor	eax, eax
	jmp	.label_404
.label_402:
	test	sil, 1
	je	.label_403
	xor	al, 1
	jne	.label_403
	mov	edi, dword ptr [rdi + 4]
	test	edi, edi
	jle	.label_403
	xor	esi, esi
	call	kill
	test	eax, eax
	jns	.label_403
	call	__errno_location
	cmp	dword ptr [rax], 3
	jne	.label_403
	xor	eax, eax
	jmp	.label_404
.label_403:
	mov	al, 1
.label_404:
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x405620

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
	je	.label_407
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_408
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_408
.label_407:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_408
	test	cl, cl
	jne	.label_408
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_408:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405690

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
	mov	eax, OFFSET FLAT:label_409
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_410
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_411
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_410
.label_411:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_410
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_412
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_412:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_410:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_413
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_413
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_413:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_414
	ret	
.label_414:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790

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
	jne	.label_415
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_415
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_416
.label_415:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_416:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_417
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_417:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405800

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
	nop	dword ptr [rax]
