	.section	.text
	.align	16
	#Procedure 0x401cf0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_21
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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
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
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_11
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_21:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401ef0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f20

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_34
	nop	
.label_32:
	mov	edi, OFFSET FLAT:label_25
	call	strcmp
	test	eax, eax
	je	.label_30
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_32
.label_30:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_25
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_35
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_26
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_26
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_26:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_25
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_29
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_37
	mov	ecx, OFFSET FLAT:label_38
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
	#Procedure 0x402070

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbx, rsi
	mov	ebp, edi
	mov	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp], 0xa
	movabs	rax, 0x3ff0000000000000
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_38
	call	setlocale
	mov	edi, OFFSET FLAT:label_68
	mov	esi, OFFSET FLAT:label_69
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_68
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + count_lines]],  1
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + from_start]],  0
	mov	byte ptr [byte ptr [rip + forever]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	r15, [rsp]
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	parse_obsolete_option
	movzx	eax, al
	sub	ebp, eax
	lea	r14, [rbx + rax*8]
	lea	rcx, [rsp + 0xc]
	lea	r8, [rsp + 0x10]
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, r15
	call	parse_options
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_53
	mov	rax, qword ptr [rsp]
	test	rax, rax
	je	.label_53
	dec	rax
	mov	qword ptr [rsp], rax
.label_53:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ebx, OFFSET FLAT:main.dummy_stdin
	mov	r12d, 1
	cmp	ebp, eax
	jle	.label_55
	xor	r12d, r12d
	sub	ebp, eax
	lea	rbx, [r14 + rax*8]
	je	.label_40
	movsxd	r12, ebp
.label_55:
	xor	eax, eax
	xor	ecx, ecx
	nop	
.label_62:
	mov	rsi, qword ptr [rbx + rax*8]
	movzx	edi, byte ptr [rsi]
	mov	edx, 0x2d
	sub	edx, edi
	jne	.label_57
	movzx	edx, byte ptr [rsi + 1]
	neg	edx
.label_57:
	test	edx, edx
	mov	dl, 1
	je	.label_61
	mov	edx, ecx
.label_61:
	inc	rax
	cmp	r12, rax
	mov	cl, dl
	jne	.label_62
	and	dl, 1
	je	.label_65
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_43
.label_65:
	test	dl, dl
	sete	al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_40
	test	al, al
	jne	.label_40
	cmp	r12, 1
	jne	.label_70
	mov	eax,  dword ptr [dword ptr [rip + pid]]
	test	eax, eax
	jne	.label_70
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_70
	lea	rsi, [rsp + 0x18]
	xor	edi, edi
	call	fstat
	test	eax, eax
	jne	.label_70
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x8000
	jne	.label_40
.label_70:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_44
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_40:
	cmp	qword ptr [rsp], 0
	jne	.label_49
	mov	cl,  byte ptr [byte ptr [rip + from_start]]
	xor	eax, eax
	or	cl,  byte ptr [byte ptr [rip + forever]]
	je	.label_50
.label_49:
	mov	esi, 0x60
	mov	rdi, r12
	call	xnmalloc
	mov	r14, rax
	test	r12, r12
	je	.label_56
	mov	rax, r12
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_64:
	mov	rdx, qword ptr [rbx]
	mov	qword ptr [rcx], rdx
	add	rbx, 8
	add	rcx, 0x60
	dec	rax
	jne	.label_64
.label_56:
	mov	eax, dword ptr [rsp + 0xc]
	cmp	eax, 1
	je	.label_58
	cmp	r12, 2
	jb	.label_59
	test	eax, eax
	jne	.label_59
.label_58:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_59:
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	r13b, 1
	test	r12, r12
	je	.label_66
	mov	r13b, 1
	mov	rbx, r12
	mov	rbp, r14
	nop	word ptr [rax + rax]
.label_71:
	mov	rsi, qword ptr [rsp]
	mov	rdi, rbp
	call	tail_file
	and	r13b, al
	add	rbp, 0x60
	dec	rbx
	jne	.label_71
.label_66:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_72
	mov	rdi, r14
	mov	rsi, r12
	call	ignore_fifo_and_pipe
	test	rax, rax
	je	.label_72
	lea	rsi, [rsp + 0x18]
	mov	edi, 1
	call	fstat
	test	eax, eax
	js	.label_39
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x30]
	cmp	eax, 0x1000
	sete	byte ptr [byte ptr [rip + monitor_output]]
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	jne	.label_54
	mov	rdi, r14
	mov	rsi, r12
	call	tailable_stdin
	test	al, al
	jne	.label_51
	mov	rdi, r14
	mov	rsi, r12
	call	any_remote_file
	test	al, al
	jne	.label_51
	mov	rdi, r14
	mov	rsi, r12
	call	any_non_remote_file
	test	al, al
	je	.label_51
	mov	rdi, r14
	mov	rsi, r12
	call	any_symlinks
	test	al, al
	jne	.label_51
	mov	rdi, r14
	mov	rsi, r12
	call	any_non_regular_fifo
	test	al, al
	jne	.label_51
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_46
	mov	eax, r13d
	xor	al, 1
	je	.label_46
.label_51:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
.label_54:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	movsd	xmm0, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r12
	call	tail_forever
.label_72:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_75
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_67
.label_75:
	movzx	eax, r13b
	xor	eax, 1
.label_50:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_46:
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	jne	.label_54
	call	inotify_init
	mov	ebx, eax
	test	ebx, ebx
	js	.label_74
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_76
	movsd	xmm0, qword ptr [rsp + 0x10]
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r12
	call	tail_forever_inotify
	test	al, al
	je	.label_47
.label_74:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
	test	r12, r12
	je	.label_54
	mov	rbp, r14
	add	rbp, 0x48
	mov	r15, r12
.label_77:
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, -1
	je	.label_45
	mov	edi, ebx
	call	inotify_rm_watch
.label_45:
	mov	esi, dword ptr [rbp]
	cmp	esi, -1
	je	.label_52
	mov	edi, ebx
	call	inotify_rm_watch
.label_52:
	add	rbp, 0x60
	dec	r15
	jne	.label_77
	jmp	.label_54
.label_47:
	mov	eax, 1
	jmp	.label_50
.label_43:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_63
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_67:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_63
	xor	eax, eax
	call	error
.label_39:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_73
.label_42:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_76:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	jmp	.label_42
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402520

	.globl parse_obsolete_option
	.type parse_obsolete_option, @function
parse_obsolete_option:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_82
	cmp	edi, 3
	jne	.label_91
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_82
	cmp	byte ptr [rax + 1], 0
	jne	.label_78
	jmp	.label_82
.label_91:
	add	edi, -3
	cmp	edi, 1
	ja	.label_83
.label_78:
	mov	rax, qword ptr [rbx + 0x10]
	cmp	byte ptr [rax], 0x2d
	jne	.label_83
	cmp	byte ptr [rax + 1], 0x2d
	jne	.label_88
	cmp	byte ptr [rax + 2], 0
	je	.label_82
	xor	ebp, ebp
	jmp	.label_81
.label_82:
	call	posix2_version
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_97
	cmp	edx, 0x2b
	jne	.label_83
	add	eax, 0xfffcf250
	mov	bpl, 1
	cmp	eax, 0x2b8
	ja	.label_84
	xor	ebp, ebp
	jmp	.label_81
.label_83:
	xor	ebp, ebp
	jmp	.label_81
.label_97:
	cmp	eax, 0x30db0
	jge	.label_90
	xor	ebp, ebp
	jmp	.label_84
.label_90:
	xor	eax, eax
	cmp	byte ptr [rdi], 0x63
	sete	al
	xor	ebp, ebp
	cmp	byte ptr [rdi + rax], 0
	je	.label_81
.label_84:
	xor	eax, eax
	nop	dword ptr [rax]
.label_86:
	movsx	esi, byte ptr [rcx + rax + 1]
	lea	edx, [rsi - 0x30]
	inc	rax
	cmp	edx, 0xa
	jb	.label_86
	mov	r15b, 1
	mov	edx, 0xa
	cmp	esi, 0x6c
	je	.label_96
	cmp	esi, 0x63
	je	.label_92
	cmp	esi, 0x62
	jne	.label_94
	mov	edx, 0x1400
.label_92:
	xor	r15d, r15d
.label_96:
	lea	rcx, [rcx + rax + 1]
	jmp	.label_98
.label_88:
	xor	ebp, ebp
	jmp	.label_81
.label_94:
	add	rcx, rax
.label_98:
	lea	rsi, [rcx + 1]
	cmp	byte ptr [rcx], 0x66
	sete	r12b
	cmovne	rsi, rcx
	cmp	byte ptr [rsi], 0
	je	.label_85
	xor	ebp, ebp
	jmp	.label_81
.label_85:
	cmp	rax, 1
	jne	.label_89
	mov	qword ptr [r14], rdx
	jmp	.label_79
.label_89:
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:label_93
	mov	rcx, r14
	call	xstrtoumax
	test	eax, 0xfffffffd
	jne	.label_80
.label_79:
	mov	byte ptr [byte ptr [rip + from_start]],  bpl
	mov	byte ptr [byte ptr [rip + count_lines]],  r15b
	mov	byte ptr [byte ptr [rip + forever]],  r12b
	mov	bpl, 1
.label_81:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_80:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_95
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx + 8]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026c0

	.globl parse_options
	.type parse_options, @function
parse_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	ebp, edi
	jmp	.label_100
.label_107:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_125
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r12], rax
	nop	word ptr [rax + rax]
.label_100:
	mov	edx, OFFSET FLAT:label_105
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	mov	ebx, eax
	lea	eax, [rbx + 0x83]
	cmp	eax, 0x108
	ja	.label_112
	jmp	qword ptr [word ptr [+ (rax * 8) + label_116]]
.label_1105:
	cmp	ebx, 0x6e
	sete	byte ptr [byte ptr [rip + count_lines]]
	sete	al
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movzx	edx, byte ptr [rcx]
	cmp	dl, 0x2d
	je	.label_117
	cmp	dl, 0x2b
	jne	.label_126
	mov	byte ptr [byte ptr [rip + from_start]],  1
	jmp	.label_127
.label_1106:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_118
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:label_104
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [rip + follow_mode]],  eax
	jmp	.label_100
.label_1104:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jmp	.label_100
.label_1107:
	mov	dword ptr [r15], 2
	jmp	.label_100
.label_1108:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	lea	rdx, [rsp + 0x10]
	call	xstrtod
	test	al, al
	je	.label_102
	movsd	xmm0, qword ptr [rsp + 0x10]
	ucomisd	xmm0,  qword ptr [word ptr [label_103]]
	jb	.label_102
	mov	rax, qword ptr [rsp + 8]
	movsd	qword ptr [rax], xmm0
	jmp	.label_100
.label_1109:
	mov	dword ptr [r15], 1
	jmp	.label_100
.label_1110:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	jmp	.label_100
.label_1111:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jmp	.label_100
.label_1112:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]],  rax
	jmp	.label_100
.label_1113:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:label_38
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + pid]],  eax
	jmp	.label_100
.label_1114:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_100
.label_1115:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	jmp	.label_100
.label_118:
	mov	dword ptr [dword ptr [rip + follow_mode]],  2
	jmp	.label_100
.label_117:
	inc	rcx
	mov	qword ptr [word ptr [rip + optarg]],  rcx
.label_127:
	movzx	eax,  byte ptr [byte ptr [rip + count_lines]]
.label_126:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	test	al, al
	je	.label_101
	mov	esi, OFFSET FLAT:label_106
	jmp	.label_107
.label_101:
	mov	esi, OFFSET FLAT:label_109
	jmp	.label_107
.label_1102:
	cmp	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jne	.label_111
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_115
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_111
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_128
	jmp	.label_129
.label_115:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_119
.label_129:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_111:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_130
	mov	al,  byte ptr [byte ptr [rip + forever]]
	test	al, al
	jne	.label_130
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_110
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_113
.label_130:
	test	edi, edi
	je	.label_113
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_113
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_113
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [dword ptr [rip + pid]],  0
.label_113:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_1100:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	sub	rsp, 8
	mov	esi, OFFSET FLAT:label_25
	mov	edx, OFFSET FLAT:label_28
	mov	r8d, OFFSET FLAT:label_120
	mov	r9d, OFFSET FLAT:label_121
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_122
	push	OFFSET FLAT:label_123
	call	version_etc
	add	rsp, 0x20
	xor	edi, edi
	call	exit
.label_1101:
	xor	edi, edi
	call	usage
.label_112:
	mov	edi, 1
	call	usage
.label_102:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_99
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ac0

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x98
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax], 0x2d
	jne	.label_141
	cmp	byte ptr [rax + 1], 0
	je	.label_144
.label_141:
	mov	rdi, qword ptr [rbx]
	xor	r15d, r15d
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	r14d, eax
.label_146:
	cmp	r14d, -1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	cmp	r14d, -1
	mov	byte ptr [rbx + 0x36], al
	je	.label_149
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	jne	.label_133
	mov	rdi, rbx
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_133:
	mov	rdi, rbx
	call	pretty_name
	lea	rcx, [rsp]
	mov	rdi, rax
	mov	esi, r14d
	mov	rdx, rbp
	call	tail
	mov	bpl, al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_142
	mov	eax, ebp
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	dword ptr [rbx + 0x3c], eax
	lea	rsi, [rsp + 8]
	mov	edi, r14d
	call	fstat
	test	eax, eax
	js	.label_148
	movzx	eax, word ptr [rsp + 0x20]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_150
	cmp	eax, 0x8000
	je	.label_134
	cmp	eax, 0xc000
	je	.label_134
	jmp	.label_138
.label_149:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_139
	mov	dword ptr [rbx + 0x38], 0xffffffff
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
.label_139:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_145
.label_137:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_135
.label_142:
	test	r15b, r15b
	jne	.label_135
	mov	edi, r14d
	call	close
	test	eax, eax
	je	.label_135
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	jmp	.label_137
.label_144:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r14d, r14d
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	r15b, 1
	jmp	.label_146
.label_148:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], ecx
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_140
.label_150:
	cmp	eax, 0x1000
	je	.label_134
	cmp	eax, 0x2000
	jne	.label_138
.label_134:
	test	bpl, bpl
	je	.label_140
	mov	rdx, qword ptr [rsp]
	test	r15b, r15b
	mov	eax, 0xffffffff
	mov	r8d, 1
	cmovne	r8d, eax
	lea	rcx, [rsp + 8]
	mov	rdi, rbx
	mov	esi, r14d
	call	record_open_fd
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r14d
	mov	rsi, rax
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	mov	bpl, 1
	jmp	.label_135
.label_138:
	mov	dword ptr [rbx + 0x3c], 0xffffffff
	mov	byte ptr [rbx + 0x36], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_132
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbx
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:label_38
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_143
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_143:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r15
	mov	rcx, rbp
	call	error
.label_140:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r14d
	mov	rsi, rax
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	xor	ebp, ebp
.label_135:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402dd0

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	xor	eax, eax
	test	rsi, rsi
	je	.label_151
	add	rdi, 0x38
	xor	eax, eax
	mov	ecx, 0xf000
	nop	word ptr cs:[rax + rax]
.label_153:
	mov	rdx, qword ptr [rdi - 0x38]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_152
	cmp	byte ptr [rdx + 1], 0
	jne	.label_152
	cmp	byte ptr [rdi - 4], 0
	jne	.label_152
	cmp	dword ptr [rdi], 0
	js	.label_152
	mov	edx, dword ptr [rdi - 8]
	and	edx, ecx
	cmp	edx, 0x1000
	jne	.label_152
	mov	dword ptr [rdi], 0xffffffff
	mov	byte ptr [rdi - 4], 1
	jmp	.label_154
	nop	word ptr cs:[rax + rax]
.label_152:
	inc	rax
.label_154:
	add	rdi, 0x60
	dec	rsi
	jne	.label_153
.label_151:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e40

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	test	rsi, rsi
	je	.label_155
	xor	ecx, ecx
	nop	word ptr [rax + rax]
.label_158:
	cmp	byte ptr [rdi + 0x34], 0
	jne	.label_156
	mov	rdx, qword ptr [rdi]
	cmp	byte ptr [rdx], 0x2d
	jne	.label_156
	mov	al, 1
	cmp	byte ptr [rdx + 1], 0
	je	.label_157
	nop	word ptr cs:[rax + rax]
.label_156:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_158
.label_155:
	xor	eax, eax
.label_157:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402e80

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	test	rsi, rsi
	je	.label_159
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_161:
	cmp	dword ptr [rdi], 0
	js	.label_160
	mov	al, 1
	cmp	byte ptr [rdi - 3], 0
	jne	.label_162
.label_160:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_161
.label_159:
	xor	eax, eax
.label_162:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402eb0

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	test	rsi, rsi
	je	.label_163
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_165:
	cmp	dword ptr [rdi], 0
	js	.label_164
	mov	al, 1
	cmp	byte ptr [rdi - 3], 0
	je	.label_166
.label_164:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_165
.label_163:
	xor	eax, eax
.label_166:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402ee0

	.globl any_symlinks
	.type any_symlinks, @function
any_symlinks:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x90
	mov	r14, rsi
	mov	r12, rdi
	test	r14, r14
	je	.label_167
	xor	ebx, ebx
	lea	r15, [rsp]
	mov	ebp, 0xf000
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rdi, qword ptr [r12]
	mov	rsi, r15
	call	lstat
	test	eax, eax
	jne	.label_169
	mov	ecx, dword ptr [rsp + 0x18]
	and	ecx, ebp
	mov	al, 1
	cmp	ecx, 0xa000
	je	.label_168
.label_169:
	inc	rbx
	add	r12, 0x60
	cmp	rbx, r14
	jb	.label_170
.label_167:
	xor	eax, eax
.label_168:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402f50

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	test	rsi, rsi
	je	.label_171
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_172:
	cmp	dword ptr [rdi], 0
	js	.label_173
	movzx	edx, word ptr [rdi - 8]
	and	edx, 0xf000
	cmp	edx, 0x1000
	je	.label_173
	mov	al, 1
	movzx	edx, dx
	cmp	edx, 0x8000
	jne	.label_174
.label_173:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_172
.label_171:
	xor	eax, eax
.label_174:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402fa0

	.globl tail_forever_inotify
	.type tail_forever_inotify, @function
tail_forever_inotify:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	movsd	qword ptr [rsp + 0x28], xmm0
	mov	r12, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	dword ptr [rsp + 0xc], edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, r12
	call	hash_initialize
	mov	qword ptr [rsp + 0x10], rax
	test	rax, rax
	je	.label_216
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	eax, 0xc06
	mov	r13d, 2
	cmove	r13d, eax
	test	r12, r12
	mov	dword ptr [rsp + 0x4c], r13d
	je	.label_245
	mov	rbp, qword ptr [rsp + 0x38]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	xor	r15d, r15d
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_231:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_184
	mov	rdi, qword ptr [rbp]
	call	strlen
	cmp	r15, rax
	cmovb	r15, rax
	mov	dword ptr [rbp + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_187
	mov	qword ptr [rsp + 0x40], r15
	mov	r13, r12
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	movzx	r12d, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:label_199
	je	.label_200
	mov	rsi, qword ptr [rbp]
.label_200:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 0xc]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r12b
	cmp	dword ptr [rbp + 0x48], 0
	mov	r12, r13
	mov	r13d, dword ptr [rsp + 0x4c]
	mov	r15, qword ptr [rsp + 0x40]
	js	.label_209
.label_187:
	mov	rsi, qword ptr [rbp]
	mov	edi, dword ptr [rsp + 0xc]
	mov	edx, r13d
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	test	eax, eax
	js	.label_213
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	hash_insert
	mov	cl, 1
	mov	qword ptr [rsp + 0x18], rcx
	test	rax, rax
	jne	.label_184
	jmp	.label_216
.label_213:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_217
	mov	al, 1
	mov	qword ptr [rsp + 0x30], rax
.label_217:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	eax, ebx
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_219
	cmp	ebx, dword ptr [rbp + 0x3c]
	je	.label_184
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x40], r15
	mov	r15, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x40]
	call	error
	nop	word ptr cs:[rax + rax]
.label_184:
	inc	r14
	add	rbp, 0x60
	cmp	r14, r12
	jb	.label_231
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	mov	rcx, qword ptr [rsp + 0x30]
	test	cl, 1
	je	.label_233
	cmp	eax, 2
	mov	rcx, qword ptr [rsp + 0x18]
	je	.label_198
	jmp	.label_235
.label_245:
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	xor	ecx, ecx
	xor	r15d, r15d
	jmp	.label_235
.label_233:
	mov	rcx, qword ptr [rsp + 0x18]
.label_235:
	test	cl, 1
	jne	.label_240
	cmp	eax, 2
	jne	.label_240
	xor	ebx, ebx
	jmp	.label_220
.label_240:
	mov	r14, r15
	lea	rax, [r12 + r12*2]
	shl	rax, 5
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rax, [rcx + rax - 0x60]
	mov	qword ptr [rsp + 0x68], rax
	test	r12, r12
	je	.label_241
	xor	ebx, ebx
	lea	r15, [rsp + 0x68]
	mov	rbp, qword ptr [rsp + 0x38]
	nop	word ptr cs:[rax + rax]
.label_195:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_175
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_177
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
	jmp	.label_180
.label_177:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_180
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsp + 0xb8]
	call	stat
	test	eax, eax
	jne	.label_180
	mov	rax, qword ptr [rbp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb8]
	jne	.label_186
	mov	rax, qword ptr [rbp + 0x28]
	cmp	rax, qword ptr [rsp + 0xc0]
	jne	.label_186
	nop	word ptr [rax + rax]
.label_180:
	mov	rdi, rbp
	mov	rsi, r15
	call	check_fspec
.label_175:
	inc	rbx
	add	rbp, 0x60
	cmp	rbx, r12
	jb	.label_195
.label_241:
	mov	rdi, r14
	add	rdi, 0x11
	mov	qword ptr [rsp + 0x40], rdi
	call	xmalloc
	mov	r15, rax
	mov	edx, dword ptr [rsp + 0xc]
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, edx
	and	eax, 0xc0
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0xb0], rax
	movsxd	rax, edx
	mov	qword ptr [rsp + 0xa8], rax
	test	edx, edx
	mov	eax, 1
	cmovg	eax, edx
	inc	eax
	mov	dword ptr [rsp + 0x5c], eax
	movsd	xmm1, qword ptr [rsp + 0x28]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0x90], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_202]]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x38]
	lea	rcx, [rax + 0x48]
	mov	qword ptr [rsp + 0xa0], rcx
	lea	rax, [rax + 0x50]
	mov	qword ptr [rsp + 0x98], rax
	mov	ebp, 3
	mov	eax, 0
	mov	qword ptr [rsp + 0x50], rax
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_192
.label_209:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x1c
	jne	.label_223
.label_219:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_198
.label_223:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_229
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
.label_198:
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	jmp	.label_236
.label_186:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_238
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rdi, rbp
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_224
.label_207:
	xor	esi, esi
	mov	rdi, r14
	call	recheck
	nop	dword ptr [rax + rax]
.label_192:
	mov	qword ptr [rsp + 0x28], rbx
	mov	ebx, ebp
	jmp	.label_178
.label_204:
	mov	rsi, qword ptr [rsp + 0x40]
	add	rsi, rsi
	mov	rdi, r15
	mov	qword ptr [rsp + 0x40], rsi
	call	xrealloc
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	nop	
.label_178:
	mov	ebp, ebx
	mov	qword ptr [rsp + 0x60], r15
.label_208:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_188
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	test	al, al
	jne	.label_188
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_get_n_entries
	test	rax, rax
	je	.label_193
.label_188:
	mov	qword ptr [rsp + 0x30], rbp
	mov	rbp, qword ptr [rsp + 0x50]
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rbp, rbx
	lea	r14, [rsp + 0xb8]
	ja	.label_196
.label_226:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_203
	test	r13b, 1
	jne	.label_205
	xor	r13d, r13d
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_210
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	r13b
	je	.label_210
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0x70], xmm0
	jmp	.label_203
	nop	dword ptr [rax]
.label_210:
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 0x70], rax
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x78], rax
.label_203:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, r14
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0xa8]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0xb0]
	or	qword ptr [rsp + rax*8 + 0xb8], rcx
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_218
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0xb8], 2
.label_218:
	cmp	dword ptr [dword ptr [rip + pid]],  0
	mov	r8d, 0
	lea	rax, [rsp + 0x70]
	cmovne	r8, rax
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x5c]
	mov	rsi, r14
	call	select
	test	eax, eax
	jne	.label_225
	cmp	rbp, rbx
	jbe	.label_226
	jmp	.label_196
	nop	dword ptr [rax + rax]
.label_225:
	cmp	eax, -1
	je	.label_212
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0xb8], 2
	jne	.label_234
	cmp	rbp, rbx
	ja	.label_196
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	call	safe_read
	mov	rbp, rax
	test	rbp, rbp
	je	.label_237
	cmp	rbp, -1
	jne	.label_239
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_190
.label_237:
	mov	rax, qword ptr [rsp + 0x30]
	lea	ebx, [rax - 1]
	test	eax, eax
	jne	.label_204
	mov	eax, ebx
	mov	qword ptr [rsp + 0x30], rax
.label_239:
	mov	rax, rbp
	inc	rax
	cmp	rax, 1
	mov	ebx, 0
	jbe	.label_190
.label_196:
	lea	rax, [r15 + rbx]
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, dword ptr [r15 + rbx + 0xc]
	test	byte ptr [r15 + rbx + 5], 4
	je	.label_176
	test	eax, eax
	jne	.label_176
	test	r12, r12
	je	.label_176
	mov	rcx, qword ptr [rsp + 0x18]
	mov	ecx, dword ptr [rcx]
	mov	rdx, qword ptr [rsp + 0xa0]
	xor	esi, esi
	nop	
.label_183:
	cmp	ecx, dword ptr [rdx]
	je	.label_182
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, r12
	jb	.label_183
.label_176:
	mov	qword ptr [rsp + 0x50], rbp
	lea	rbx, [rbx + rax + 0x10]
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0xc], 0
	je	.label_243
	mov	qword ptr [rsp + 0x28], rbx
	mov	dword ptr [rsp + 0x24], r13d
	test	r12, r12
	mov	ebx, 0
	je	.label_189
	mov	rax, qword ptr [rsp + 0x18]
	lea	r14, [rax + 0x10]
	mov	ebp, dword ptr [rax]
	mov	r15, qword ptr [rsp + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_206:
	cmp	dword ptr [r15 - 8], ebp
	jne	.label_201
	mov	rsi, qword ptr [r15 - 0x50]
	add	rsi, qword ptr [r15]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_189
.label_201:
	inc	rbx
	add	r15, 0x60
	cmp	rbx, r12
	jb	.label_206
.label_189:
	cmp	rbx, r12
	mov	r15, qword ptr [rsp + 0x60]
	mov	r13d, dword ptr [rsp + 0x24]
	mov	rbp, qword ptr [rsp + 0x30]
	je	.label_208
	lea	r13, [rbx + rbx*2]
	shl	r13, 5
	mov	rax, qword ptr [rsp + 0x38]
	lea	r14, [rax + r13]
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rax + 4]
	mov	eax, 0x200
	and	ebx, eax
	jne	.label_197
	mov	rsi, qword ptr [r14]
	mov	edi, dword ptr [rsp + 0xc]
	mov	edx, dword ptr [rsp + 0x4c]
	call	inotify_add_watch
	mov	ecx, eax
	test	ebx, ebx
	sete	al
	test	ecx, ecx
	jns	.label_215
	test	al, al
	je	.label_215
	mov	dword ptr [rsp + 0x58], ecx
	mov	rbx, r14
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	eax, r14d
	or	eax, 0x10
	xor	edi, edi
	cmp	eax, 0x1c
	je	.label_191
	mov	esi, OFFSET FLAT:label_222
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rbx]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14, rbx
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x58]
.label_215:
	mov	rax, qword ptr [rsp + 0x38]
	mov	esi, dword ptr [rax + r13 + 0x44]
	test	esi, esi
	js	.label_230
	cmp	ecx, esi
	je	.label_197
.label_230:
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rax + r13 + 0x44]
	test	esi, esi
	js	.label_232
	mov	edi, dword ptr [rsp + 0xc]
	mov	r13d, ecx
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_delete
	mov	ecx, r13d
.label_232:
	mov	dword ptr [rbx], ecx
	cmp	ecx, -1
	mov	r13d, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x28]
	je	.label_192
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_242
	cmp	rbx, r14
	je	.label_242
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_244
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
.label_244:
	mov	dword ptr [rbx + 0x44], 0xffffffff
	mov	r13d, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r13d
	mov	rsi, rax
	call	close_fd
.label_242:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_insert
	test	rax, rax
	je	.label_179
.label_197:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_181
	xor	esi, esi
	mov	rdi, r14
	call	recheck
.label_181:
	mov	r13d, dword ptr [rsp + 0x24]
	mov	rbx, qword ptr [rsp + 0x28]
	jmp	.label_185
.label_243:
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0xfc], eax
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_lookup
	mov	r14, rax
	mov	rbp, qword ptr [rsp + 0x30]
.label_185:
	test	r14, r14
	je	.label_192
	mov	rax, qword ptr [rsp + 0x18]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_194
	test	ah, 4
	je	.label_207
	mov	esi, dword ptr [r14 + 0x44]
	mov	edi, dword ptr [rsp + 0xc]
	call	inotify_rm_watch
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	hash_delete
	jmp	.label_207
.label_194:
	mov	rdi, r14
	lea	rsi, [rsp + 0x68]
	call	check_fspec
	jmp	.label_192
.label_182:
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_211
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_236:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_224:
	mov	bl, 1
.label_220:
	mov	eax, ebx
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_193:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_220
.label_191:
	mov	esi, OFFSET FLAT:label_221
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	rdi, qword ptr [rsp + 0x10]
	call	hash_free
	mov	dword ptr [rbp], 0
	jmp	.label_224
.label_216:
	call	xalloc_die
.label_212:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_227
	jmp	.label_228
.label_205:
	xor	edi, edi
	call	exit
.label_234:
	call	die_pipe
.label_190:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_214
.label_228:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_179:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4039b0

	.globl tail_forever
	.type tail_forever, @function
tail_forever:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	movsd	qword ptr [rsp + 0x30], xmm0
	mov	r13, rsi
	mov	rbx, rdi
	xor	eax, eax
	cmp	r13, 1
	jne	.label_273
	mov	ecx,  dword ptr [dword ptr [rip + pid]]
	test	ecx, ecx
	jne	.label_273
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_273
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_278
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_273
.label_278:
	xor	eax, eax
.label_273:
	lea	rcx, [r13 - 1]
	mov	qword ptr [rsp + 0x18], rcx
	movzx	eax, al
	xor	ecx, ecx
	mov	dword ptr [rsp + 0xc], eax
	test	al, al
	sete	cl
	shl	ecx, 0xb
	mov	dword ptr [rsp + 0x2c], ecx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x20], r13
.label_264:
	mov	dword ptr [rsp + 0x28], ebp
.label_260:
	test	r13, r13
	je	.label_256
	xor	r15d, r15d
	mov	rbp, rbx
	xor	r12d, r12d
	jmp	.label_257
.label_256:
	xor	r12d, r12d
	jmp	.label_259
.label_276:
	mov	rax,  qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	ja	.label_252
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_252
	xor	esi, esi
	cmp	dword ptr [rbp + 0x40], 0
	setne	sil
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_252
.label_257:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_252
	mov	ebx, dword ptr [rbp + 0x38]
	mov	rdi, rbp
	test	ebx, ebx
	js	.label_271
	call	pretty_name
	mov	r14d, dword ptr [rbp + 0x30]
	mov	ecx, dword ptr [rbp + 0x40]
	cmp	ecx, dword ptr [rsp + 0xc]
	je	.label_272
	mov	r13, rax
	mov	esi, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	test	eax, eax
	js	.label_274
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x2c]
	cmp	edx, eax
	je	.label_275
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_274
.label_275:
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rbp + 0x40], eax
	mov	ecx, eax
	jmp	.label_249
.label_271:
	mov	esi, dword ptr [rsp + 0xc]
	call	recheck
	jmp	.label_252
.label_274:
	mov	eax, dword ptr [rbp + 0x30]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_248
	call	__errno_location
	cmp	dword ptr [rax], 1
	jne	.label_248
	mov	ecx, dword ptr [rbp + 0x40]
.label_249:
	mov	rax, r13
	mov	r13, qword ptr [rsp + 0x20]
.label_272:
	test	ecx, ecx
	jne	.label_255
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, ebx
	lea	rsi, [rsp + 0x48]
	call	fstat
	test	eax, eax
	je	.label_261
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	edi, ebx
	call	close
	jmp	.label_252
.label_261:
	mov	eax, dword ptr [rsp + 0x60]
	cmp	dword ptr [rbp + 0x30], eax
	jne	.label_267
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_270
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rsp + 0x78]
	jne	.label_267
.label_270:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	je	.label_276
.label_267:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	qword ptr [rbp + 0x10], rax
	mov	qword ptr [rbp + 0x18], rdx
	mov	eax, dword ptr [rsp + 0x60]
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, r14d
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_247
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_247
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x38], rax
	xor	edi, edi
	mov	esi, 3
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x38]
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	mov	rcx, r13
	mov	r13, qword ptr [rsp + 0x20]
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_247:
	cmp	r15, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x10]
	je	.label_255
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_255
	mov	rdi, rax
	call	write_header
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], r15
.label_255:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_266
	and	r14d, 0xf000
	mov	rcx, -1
	cmp	r14d, 0x8000
	jne	.label_266
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_266
	mov	rcx, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [rbp + 8]
.label_266:
	xor	edi, edi
	mov	rsi, rax
	mov	edx, ebx
	call	dump_remainder
	test	rax, rax
	setne	cl
	and	r12b, 1
	or	r12b, cl
	add	qword ptr [rbp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_252:
	inc	r15
	add	rbp, 0x60
	cmp	r15, r13
	jb	.label_257
.label_259:
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r13
	call	any_live_files
	test	al, al
	je	.label_250
	and	r12b, 1
	sete	al
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_253
	test	al, al
	je	.label_254
.label_253:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_258
.label_254:
	call	check_output_alive
	test	r12b, r12b
	jne	.label_260
	mov	eax, dword ptr [rsp + 0x28]
	test	al, 1
	jne	.label_262
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	xor	ebp, ebp
	test	edi, edi
	je	.label_263
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_263
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bpl
	jne	.label_264
.label_263:
	movsd	xmm0, qword ptr [rsp + 0x30]
	call	xnanosleep
	test	eax, eax
	je	.label_264
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_268
	jmp	.label_269
.label_250:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_246
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_262:
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_248:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_258:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
.label_269:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e50

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	mov	rax, qword ptr [rdi]
	cmp	byte ptr [rax], 0x2d
	jne	.label_279
	cmp	byte ptr [rax + 1], 0
	je	.label_280
.label_279:
	mov	rax, qword ptr [rdi]
	ret	
.label_280:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_281
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e80

	.globl write_header
	.type write_header, @function
write_header:
	push	rax
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	mov	esi, OFFSET FLAT:label_282
	mov	edx, OFFSET FLAT:label_38
	test	al, al
	cmovne	rdx, rsi
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_283
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ec0

	.globl tail
	.type tail, @function
tail:
	push	rax
	mov	qword ptr [rcx], 0
	cmp	byte ptr [byte ptr [rip + count_lines]],  0
	je	.label_284
	call	tail_lines
	pop	rcx
	ret	
.label_284:
	call	tail_bytes
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ee0

	.globl close_fd
	.type close_fd, @function
close_fd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	lea	eax, [rbx + 1]
	cmp	eax, 2
	jb	.label_285
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_285
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	r8d, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
.label_285:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f60

	.globl record_open_fd
	.type record_open_fd, @function
record_open_fd:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, r8d
	mov	rbx, rcx
	mov	rbp, rdi
	mov	dword ptr [rbp + 0x38], esi
	mov	qword ptr [rbp + 8], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp + 0x10], rax
	mov	qword ptr [rbp + 0x18], rdx
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbp + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rbp + 0x28], rax
	mov	eax, dword ptr [rbx + 0x18]
	mov	dword ptr [rbp + 0x30], eax
	mov	dword ptr [rbp + 0x40], r14d
	mov	qword ptr [rbp + 0x58], 0
	mov	byte ptr [rbp + 0x34], 0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fb0

	.globl fremote
	.type fremote, @function
fremote:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x78
	mov	r14, rsi
	lea	rsi, [rsp]
	call	fstatfs
	test	eax, eax
	je	.label_287
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_288
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_288
.label_287:
	mov	rdi, qword ptr [rsp]
	call	is_local_fs_type
	inc	eax
	cmp	eax, 3
	jae	.label_292
	and	al, 7
	mov	bl, 3
	mov	ecx, eax
	shr	bl, cl
	and	bl, 1
.label_288:
	mov	eax, ebx
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_292:
	mov	edi, OFFSET FLAT:label_289
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 0x3c9
	mov	ecx, OFFSET FLAT:label_291
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404050

	.globl tail_lines
	.type tail_lines, @function
tail_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rcx
	mov	r15, rdx
	mov	ebp, esi
	mov	r12, rdi
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	je	.label_299
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
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
	call	error
.label_296:
	mov	eax, ebx
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_299:
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_297
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	start_lines
	mov	ebx, eax
	test	ebx, ebx
	je	.label_298
	shr	ebx, 0x1f
	jmp	.label_296
.label_297:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	test	al, al
	jne	.label_295
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_295
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	call	lseek
	mov	r13, rax
	cmp	r13, -1
	je	.label_295
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	cmp	r13, rax
	jge	.label_300
	mov	qword ptr [r14], rax
	mov	bl, 1
	test	rax, rax
	je	.label_296
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rax
	mov	r9, r14
	call	file_lines
	test	al, al
	jne	.label_296
	xor	ebx, ebx
	jmp	.label_296
.label_298:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, r12
	mov	edx, ebp
	call	dump_remainder
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_296
.label_300:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r13
	mov	rcx, r12
	call	xlseek
.label_295:
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	pipe_lines
	mov	bl, al
	jmp	.label_296
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041c0

	.globl tail_bytes
	.type tail_bytes, @function
tail_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rcx
	mov	r12, rdx
	mov	ebp, esi
	mov	r15, rdi
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	je	.label_310
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_294
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_303
.label_310:
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	xor	cl, 1
	test	r12, r12
	setns	al
	and	al, cl
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_311
	test	al, al
	je	.label_302
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_305
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, r12
	mov	rcx, r15
	call	xlseek
	test	rax, rax
	jns	.label_313
.label_305:
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, r12
	call	lseek
	cmp	rax, -1
	je	.label_302
.label_313:
	add	qword ptr [r14], r12
	mov	r12, -1
	jmp	.label_306
.label_302:
	mov	rdi, r15
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r14
	call	start_bytes
	mov	ebx, eax
	test	ebx, ebx
	mov	r12, -1
	je	.label_306
	shr	ebx, 0x1f
	jmp	.label_303
.label_311:
	mov	rbx, -1
	test	al, al
	je	.label_301
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_307
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_309
.label_301:
	mov	r13, -1
	jmp	.label_309
.label_307:
	mov	rsi, r12
	neg	rsi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	mov	rbx, rax
	lea	r13, [rbx + r12]
	cmp	rbx, -1
	cmove	r13, rbx
.label_309:
	mov	rax, qword ptr [rsp + 0x40]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	cmp	r13, rdx
	jle	.label_304
	cmp	rbx, -1
	jne	.label_312
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	mov	rcx, r15
	call	xlseek
	mov	rbx, rax
.label_312:
	mov	rax, r13
	sub	rax, rbx
	jle	.label_308
	cmp	rax, r12
	jbe	.label_308
	sub	r13, r12
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r13
	mov	rcx, r15
	call	xlseek
	mov	rbx, r13
.label_308:
	mov	qword ptr [r14], rbx
.label_306:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebp
	mov	rcx, r12
	call	dump_remainder
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_303
.label_304:
	mov	rdi, r15
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r14
	call	pipe_bytes
	mov	bl, al
.label_303:
	mov	eax, ebx
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
	#Procedure 0x4043c0

	.globl start_lines
	.type start_lines, @function
start_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	r13, rcx
	mov	rbx, rdx
	mov	ebp, esi
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_314
	mov	qword ptr [rsp + 0x10], rdi
	lea	r14, [rsp + 0x20]
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_316
	nop	word ptr [rax + rax]
.label_315:
	mov	r13, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp + 0xc]
.label_316:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	r15, r14
	mov	rsi, r14
	call	safe_read
	mov	r14d, 0xffffffff
	test	rax, rax
	je	.label_314
	cmp	rax, -1
	je	.label_317
	lea	r12, [rsp + rax + 0x20]
	add	qword ptr [r13], rax
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	ebp, 0
	mov	eax, 0xa
	cmovne	ebp, eax
	mov	r14, r15
	mov	rax, r14
.label_318:
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_315
	inc	rax
	dec	rbx
	jne	.label_318
	xor	r14d, r14d
	cmp	rax, r12
	jae	.label_314
	sub	r12, rax
	mov	rdi, rax
	mov	rsi, r12
	call	xwrite_stdout
.label_314:
	mov	eax, r14d
	add	rsp, 0x2028
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_317:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
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
	call	error
	mov	r14d, 1
	jmp	.label_314
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4044e0

	.globl dump_remainder
	.type dump_remainder, @function
dump_remainder:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	r12, rcx
	mov	dword ptr [rsp + 4], edx
	mov	qword ptr [rsp + 8], rsi
	mov	ebp, edi
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	nop	dword ptr [rax]
.label_319:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_320
	cmp	r14, -1
	je	.label_322
	test	bpl, 1
	je	.label_323
	mov	rdi, qword ptr [rsp + 8]
	call	write_header
	xor	ebp, ebp
.label_323:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	cmp	r12, -1
	je	.label_319
	cmp	r12, -2
	je	.label_320
	sub	r15, r14
	jne	.label_319
	jmp	.label_320
.label_322:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_321
.label_320:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_321:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045d0

	.globl file_lines
	.type file_lines, @function
file_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2038
	mov	qword ptr [rsp + 0x10], r9
	mov	r14, rdx
	mov	r15d, esi
	mov	rbp, rdi
	mov	bl, 1
	test	r14, r14
	je	.label_328
	mov	rax, r8
	mov	qword ptr [rsp + 0x18], rcx
	sub	rax, rcx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	mov	qword ptr [rsp + 0x20], r8
	mov	r12, r8
	sub	r12, rbx
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	mov	qword ptr [rsp + 8], rbp
	mov	rcx, rbp
	call	xlseek
	lea	r13, [rsp + 0x30]
	mov	edi, r15d
	mov	rsi, r13
	mov	rdx, rbx
	call	safe_read
	cmp	rax, -1
	je	.label_331
	mov	dword ptr [rsp + 4], r15d
	lea	rcx, [rax + r12]
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rdx], rcx
	xor	r15d, r15d
	test	rax, rax
	mov	rbp, r12
	je	.label_333
	movsx	ecx, byte ptr [rsp + rax + 0x2f]
	mov	dl,  byte ptr [byte ptr [rip + line_end]]
	test	dl, dl
	mov	edx, 0xa
	cmove	edx, r15d
	xor	esi, esi
	cmp	ecx, edx
	setne	sil
	sub	r14, rsi
	mov	r15, rax
	nop	word ptr cs:[rax + rax]
.label_333:
	lea	r12, [r15 - 1]
	mov	rbx, qword ptr [rsp + 0x20]
	sub	rbx, r15
	mov	qword ptr [rsp + 0x28], rbp
	sub	rbx, rbp
	mov	rbp, r15
	nop	word ptr [rax + rax]
.label_326:
	test	rbp, rbp
	je	.label_332
	movzx	eax,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	mov	rdi, r13
	mov	rdx, rbp
	call	memrchr
	mov	ecx, 5
	test	rax, rax
	je	.label_324
	mov	rbp, rax
	sub	rbp, r13
	xor	ecx, ecx
	test	r14, r14
	lea	r14, [r14 - 1]
	jne	.label_324
	cmp	rbp, r12
	je	.label_334
	inc	rax
	mov	rsi, r12
	sub	rsi, rbp
	mov	rdi, rax
	call	xwrite_stdout
.label_334:
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rsp + 4]
	mov	rcx, rbx
	call	dump_remainder
	mov	rcx, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
	mov	ecx, 1
.label_324:
	mov	eax, ecx
	and	al, 7
	je	.label_326
	cmp	al, 5
	jne	.label_327
.label_332:
	mov	r15, qword ptr [rsp + 8]
	mov	r12, qword ptr [rsp + 0x18]
	mov	ebx, dword ptr [rsp + 4]
	mov	rbp, qword ptr [rsp + 0x28]
	cmp	rbp, r12
	je	.label_329
	add	rbp, -0x2000
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, rbp
	mov	rcx, r15
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, r13
	call	safe_read
	mov	r15, rax
	cmp	r15, -1
	je	.label_330
	mov	rax, r15
	add	rax, rbp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_336
	nop	
.label_327:
	test	ecx, ecx
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_325
.label_336:
	test	r15, r15
	jne	.label_333
	jmp	.label_325
.label_331:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	jmp	.label_335
.label_329:
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r12
	mov	rcx, r15
	call	xlseek
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebx
	mov	rcx, qword ptr [rsp + 0x20]
	call	dump_remainder
	add	rax, r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
.label_325:
	mov	bl, 1
	jmp	.label_328
.label_330:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
.label_335:
	call	error
.label_328:
	mov	eax, ebx
	add	rsp, 0x2038
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
	#Procedure 0x404890

	.globl xlseek
	.type xlseek, @function
xlseek:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	rbx, rsi
	call	lseek
	test	rax, rax
	js	.label_339
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_339:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_338
	cmp	ebp, 1
	je	.label_342
	test	ebp, ebp
	jne	.label_337
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
	jmp	.label_341
.label_338:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	jmp	.label_341
.label_342:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
.label_341:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	mov	r8, r14
	call	error
	mov	edi, 1
	call	exit
.label_337:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404950

	.globl pipe_lines
	.type pipe_lines, @function
pipe_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x18], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	rbp, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0x2000], xmm0
	mov	qword ptr [rbp + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	ecx, ecx
	mov	r15d, 0xa
	mov	qword ptr [rsp], rbp
	jmp	.label_349
.label_365:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp], rdx
	nop	dword ptr [rax]
.label_349:
	mov	r14, rcx
	jmp	.label_356
	nop	word ptr cs:[rax + rax]
.label_355:
	mov	edi, 0x2018
	call	xmalloc
.label_356:
	mov	r13, rbp
	mov	rbp, rax
	lea	rbx, [rbp + 0x2008]
	jmp	.label_359
	nop	dword ptr [rax]
.label_345:
	add	rdi, r13
	mov	rsi, rbp
	call	memcpy
	mov	rax, qword ptr [rbp + 0x2000]
	add	qword ptr [r13 + 0x2000], rax
	mov	rax, qword ptr [rbp + 0x2008]
	add	qword ptr [r13 + 0x2008], rax
.label_359:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	safe_read
	mov	r12, rax
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_366
	mov	qword ptr [rbp + 0x2000], r12
	mov	rax, qword ptr [rsp + 0x20]
	add	qword ptr [rax], r12
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdi, rbp
	mov	rdx, r12
	call	memchr
	test	rax, rax
	je	.label_363
	add	r12, rbp
	nop	word ptr cs:[rax + rax]
.label_350:
	inc	rax
	inc	qword ptr [rbx]
	movzx	ecx,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_350
.label_363:
	add	r14, qword ptr [rbp + 0x2008]
	mov	rdx, qword ptr [rbp + 0x2000]
	mov	rdi, qword ptr [r13 + 0x2000]
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	jbe	.label_345
	mov	qword ptr [r13 + 0x2010], rbp
	mov	rcx, r14
	mov	rdx, qword ptr [rsp]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 0x10]
	jbe	.label_355
	jmp	.label_365
.label_366:
	mov	rdi, rbp
	call	free
	cmp	r12, -1
	je	.label_368
	mov	rsi, qword ptr [rsp + 0x10]
	test	rsi, rsi
	mov	r15b, 1
	je	.label_347
	mov	rax, qword ptr [r13 + 0x2000]
	test	rax, rax
	je	.label_347
	movsx	eax, byte ptr [r13 + rax - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	test	cl, cl
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	je	.label_352
	inc	qword ptr [r13 + 0x2008]
	inc	r14
.label_352:
	mov	rax, r14
	mov	r13, qword ptr [rsp]
	sub	rax, qword ptr [r13 + 0x2008]
	cmp	rax, rsi
	mov	rbx, r13
	jbe	.label_357
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_361:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	sub	rax, qword ptr [rbx + 0x2008]
	cmp	rax, rsi
	ja	.label_361
.label_357:
	mov	r15, qword ptr [rbx + 0x2000]
	add	r15, rbx
	cmp	r14, rsi
	mov	rax, rbx
	jbe	.label_346
	mov	rax, rbx
	je	.label_346
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	xor	ecx, ecx
	test	al, al
	mov	r12d, 0xa
	cmove	r12d, ecx
	sub	rsi, r14
	mov	rax, rbx
	nop	word ptr [rax + rax]
.label_360:
	mov	rbp, rsi
	mov	rdx, r15
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r12d
	call	memchr
	test	rax, rax
	je	.label_358
	inc	rax
	mov	rsi, rbp
	inc	rsi
	jne	.label_360
.label_346:
	sub	r15, rax
	mov	rdi, rax
	mov	rsi, r15
	call	xwrite_stdout
	mov	rbp, qword ptr [rbx + 0x2010]
	mov	r15b, 1
	jmp	.label_367
	nop	word ptr cs:[rax + rax]
.label_362:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2010]
.label_367:
	test	rbp, rbp
	jne	.label_362
	jmp	.label_364
.label_368:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x18]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_347:
	mov	r13, qword ptr [rsp]
.label_364:
	test	r13, r13
	je	.label_351
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	rbx, qword ptr [r13 + 0x2010]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_348
.label_351:
	mov	eax, r15d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_358:
	mov	edi, OFFSET FLAT:label_353
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:label_354
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_369
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_371
.label_369:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_371:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_73
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d50

	.globl start_bytes
	.type start_bytes, @function
start_bytes:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x2000
	mov	r15, rcx
	mov	rbx, rdx
	mov	ebp, esi
	mov	r14, rdi
	test	rbx, rbx
	je	.label_374
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_372:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, r12
	call	safe_read
	mov	ecx, 0xffffffff
	test	rax, rax
	je	.label_373
	cmp	rax, -1
	je	.label_375
	add	qword ptr [r15], rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_376
	mov	rbx, rcx
	jne	.label_372
	jmp	.label_374
.label_376:
	sub	rax, rbx
	je	.label_374
	lea	rdi, [rsp + rbx]
	mov	rsi, rax
	call	xwrite_stdout
.label_374:
	xor	ecx, ecx
.label_373:
	mov	eax, ecx
	add	rsp, 0x2000
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_375:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
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
	mov	ecx, 1
	jmp	.label_373
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_377
	mov	al, 1
	ret	
.label_377:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e40

	.globl pipe_bytes
	.type pipe_bytes, @function
pipe_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp], rdx
	mov	ebx, esi
	mov	qword ptr [rsp + 8], rdi
	mov	edi, 0x2010
	call	xmalloc
	mov	rbp, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	ecx, ecx
	mov	r13, rbp
	jmp	.label_390
.label_379:
	mov	rax, r13
	mov	r13, qword ptr [r13 + 0x2008]
.label_390:
	mov	r12, rbp
	mov	rbp, rax
	mov	r14, rcx
	jmp	.label_383
	nop	dword ptr [rax + rax]
.label_384:
	add	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbp + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_383:
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, rbp
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_381
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rax], r15
	mov	qword ptr [rbp + 0x2000], r15
	mov	qword ptr [rbp + 0x2008], 0
	add	r14, r15
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_384
	mov	qword ptr [r12 + 0x2008], rbp
	mov	rcx, r14
	sub	rcx, qword ptr [r13 + 0x2000]
	cmp	rcx, qword ptr [rsp]
	ja	.label_379
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, rbp
	mov	rbp, rax
	jmp	.label_383
.label_381:
	mov	rdi, rbp
	call	free
	cmp	r15, -1
	je	.label_378
	mov	rsi, qword ptr [r13 + 0x2000]
	mov	rax, r14
	sub	rax, rsi
	mov	rcx, qword ptr [rsp]
	cmp	rax, rcx
	mov	rbx, r13
	jbe	.label_385
	mov	rbx, r13
	nop	dword ptr [rax + rax]
.label_388:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	rsi, qword ptr [rbx + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_388
.label_385:
	xor	eax, eax
	sub	r14, rcx
	cmova	rax, r14
	lea	rdi, [rbx + rax]
	sub	rsi, rax
	call	xwrite_stdout
	mov	rbp, qword ptr [rbx + 0x2008]
	mov	r14b, 1
	jmp	.label_386
	nop	word ptr [rax + rax]
.label_389:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2008]
.label_386:
	test	rbp, rbp
	jne	.label_389
	jmp	.label_380
.label_378:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_380:
	test	r13, r13
	je	.label_382
	nop	word ptr cs:[rax + rax]
.label_387:
	mov	rbx, qword ptr [r13 + 0x2008]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_387
.label_382:
	mov	eax, r14d
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
	#Procedure 0x405050

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	mov	eax, 1
	cmp	rdi, 0x2fc12fc0
	jg	.label_400
	cmp	rdi, 0xadfe
	jle	.label_402
	cmp	rdi, 0x13111a7
	jg	.label_425
	cmp	rdi, 0x1021993
	jg	.label_406
	cmp	rdi, 0x11953
	jle	.label_408
	cmp	rdi, 0x414a52
	jle	.label_409
	cmp	rdi, 0x414a53
	je	.label_393
	cmp	rdi, 0xc0ffee
	je	.label_393
	cmp	rdi, 0xc36400
	je	.label_394
	jmp	.label_392
.label_400:
	cmp	rdi, 0x65735542
	jle	.label_415
	mov	ecx, 0x858458f5
	cmp	rdi, rcx
	jle	.label_416
	mov	ecx, 0xc97e8167
	cmp	rdi, rcx
	jg	.label_418
	mov	ecx, 0xaad7aae9
	cmp	rdi, rcx
	jg	.label_420
	mov	ecx, 0x958458f5
	cmp	rdi, rcx
	jg	.label_423
	mov	ecx, 0x858458f6
	cmp	rdi, rcx
	je	.label_393
	mov	ecx, 0x9123683e
	jmp	.label_421
.label_402:
	cmp	rdi, 0x482a
	jg	.label_427
	cmp	rdi, 0x2467
	jg	.label_430
	cmp	rdi, 0x1372
	jle	.label_431
	lea	rcx, [rdi - 0x1373]
	cmp	rcx, 0x1c
	ja	.label_432
	mov	edx, 0x10001401
	bt	rdx, rcx
	jb	.label_393
.label_432:
	cmp	rdi, 0x1cd1
	je	.label_393
	jmp	.label_392
.label_415:
	cmp	rdi, 0x541900ff
	jg	.label_436
	cmp	rdi, 0x47504652
	jle	.label_438
	cmp	rdi, 0x5346414e
	jg	.label_439
	cmp	rdi, 0x52654972
	jg	.label_441
	cmp	rdi, 0x47504653
	je	.label_394
	cmp	rdi, 0x50495045
	je	.label_394
	jmp	.label_392
.label_416:
	cmp	rdi, 0x73636672
	jle	.label_443
	cmp	rdi, 0x7461636e
	jg	.label_445
	cmp	rdi, 0x73727278
	jg	.label_446
	cmp	rdi, 0x73636673
	je	.label_393
	cmp	rdi, 0x73717368
	je	.label_393
	jmp	.label_392
.label_427:
	cmp	rdi, 0x6968
	jle	.label_396
	cmp	rdi, 0x965f
	jg	.label_397
	cmp	rdi, 0x6969
	je	.label_394
	cmp	rdi, 0x7275
	je	.label_393
	cmp	rdi, 0x72b6
	je	.label_393
	jmp	.label_392
.label_436:
	cmp	rdi, 0x6165676b
	jle	.label_401
	cmp	rdi, 0x62656571
	jg	.label_403
	cmp	rdi, 0x62646575
	jg	.label_405
	cmp	rdi, 0x6165676c
	je	.label_393
	cmp	rdi, 0x61756673
	je	.label_394
	jmp	.label_392
.label_425:
	cmp	rdi, 0x15013345
	jg	.label_410
	cmp	rdi, 0xbad1de9
	jle	.label_413
	cmp	rdi, 0x11307853
	jg	.label_414
	cmp	rdi, 0xbad1dea
	je	.label_393
	cmp	rdi, 0xbd00bd0
	je	.label_394
	jmp	.label_392
.label_406:
	cmp	rdi, 0x12fd16c
	jg	.label_419
	cmp	rdi, 0x1021994
	je	.label_393
	cmp	rdi, 0x1021997
	je	.label_393
	cmp	rdi, 0x1161970
	je	.label_394
	jmp	.label_392
.label_418:
	mov	ecx, 0xf97cff8b
	cmp	rdi, rcx
	jg	.label_426
	mov	ecx, 0xde5e81e3
	cmp	rdi, rcx
	jg	.label_429
	mov	ecx, 0xc97e8168
	cmp	rdi, rcx
	je	.label_393
	mov	ecx, 0xcafe4a11
	jmp	.label_421
.label_430:
	cmp	rdi, 0x3fff
	jle	.label_433
	lea	rcx, [rdi - 0x4000]
	cmp	rcx, 6
	ja	.label_435
	mov	edx, 0x51
	bt	rdx, rcx
	jb	.label_393
.label_435:
	cmp	rdi, 0x4244
	je	.label_393
	jmp	.label_392
.label_438:
	cmp	rdi, 0x42494e4c
	jle	.label_434
	cmp	rdi, 0x453dcd27
	jg	.label_440
	cmp	rdi, 0x42494e4d
	je	.label_393
	cmp	rdi, 0x43415d53
	je	.label_393
	jmp	.label_392
.label_443:
	cmp	rdi, 0x68191121
	jle	.label_442
	cmp	rdi, 0x6e667363
	jg	.label_424
	cmp	rdi, 0x68191122
	je	.label_393
	cmp	rdi, 0x6b414653
	je	.label_394
	jmp	.label_392
.label_396:
	cmp	rdi, 0x4d59
	jle	.label_391
	cmp	rdi, 0x564b
	jg	.label_395
	cmp	rdi, 0x4d5a
	je	.label_393
	cmp	rdi, 0x517b
	je	.label_394
	jmp	.label_392
.label_401:
	cmp	rdi, 0x58465341
	jle	.label_398
	cmp	rdi, 0x5dca2df4
	jg	.label_399
	cmp	rdi, 0x58465342
	je	.label_393
	cmp	rdi, 0x5a3c69f0
	je	.label_393
	jmp	.label_392
.label_410:
	cmp	rdi, 0x1badfacd
	jle	.label_404
	cmp	rdi, 0x28cd3d44
	jg	.label_407
	cmp	rdi, 0x1badface
	je	.label_393
	cmp	rdi, 0x24051905
	je	.label_393
	jmp	.label_392
.label_408:
	cmp	rdi, 0xef52
	jg	.label_411
	cmp	rdi, 0xadff
	je	.label_393
	cmp	rdi, 0xef51
	je	.label_393
	jmp	.label_392
.label_420:
	mov	ecx, 0xbacbacbb
	cmp	rdi, rcx
	jg	.label_417
	mov	ecx, 0xaad7aaea
	cmp	rdi, rcx
	je	.label_394
	mov	ecx, 0xabba1974
	jmp	.label_421
.label_439:
	cmp	rdi, 0x5346544d
	jg	.label_422
	cmp	rdi, 0x5346414f
	je	.label_394
	cmp	rdi, 0x53464846
	je	.label_393
	jmp	.label_392
.label_445:
	cmp	rdi, 0x794c762f
	jg	.label_428
	cmp	rdi, 0x7461636f
	je	.label_394
	cmp	rdi, 0x74726163
	je	.label_393
	jmp	.label_392
.label_397:
	lea	rcx, [rdi - 0x9fa0]
	cmp	rcx, 3
	jb	.label_393
	cmp	rdi, 0x9660
	je	.label_393
	cmp	rdi, 0xadf5
	je	.label_393
	jmp	.label_392
.label_403:
	cmp	rdi, 0x6462671f
	jg	.label_437
	cmp	rdi, 0x62656572
	je	.label_393
	cmp	rdi, 0x63677270
	je	.label_393
	jmp	.label_392
.label_419:
	lea	rcx, [rdi - 0x12ff7b4]
	cmp	rcx, 4
	jb	.label_393
	cmp	rdi, 0x12fd16d
	je	.label_393
	jmp	.label_392
.label_426:
	mov	ecx, 0xfe534d41
	cmp	rdi, rcx
	jg	.label_444
	mov	ecx, 0xf97cff8c
	cmp	rdi, rcx
	je	.label_393
	mov	ecx, 0xf995e849
	jmp	.label_421
.label_431:
	cmp	rdi, 0x2f
	je	.label_393
	cmp	rdi, 0x187
	je	.label_393
	cmp	rdi, 0x7c0
	je	.label_393
	jmp	.label_392
.label_413:
	cmp	rdi, 0x13111a8
	je	.label_394
	cmp	rdi, 0x7655821
	je	.label_393
	cmp	rdi, 0x9041934
	je	.label_393
	jmp	.label_392
.label_433:
	cmp	rdi, 0x2468
	je	.label_393
	cmp	rdi, 0x2478
	je	.label_393
	cmp	rdi, 0x3434
	je	.label_393
	jmp	.label_392
.label_434:
	cmp	rdi, 0x2fc12fc1
	je	.label_393
	cmp	rdi, 0x3153464a
	je	.label_393
	cmp	rdi, 0x42465331
	je	.label_393
	jmp	.label_392
.label_442:
	cmp	rdi, 0x65735543
	je	.label_394
	cmp	rdi, 0x65735546
	je	.label_394
	cmp	rdi, 0x67596969
	je	.label_393
	jmp	.label_392
.label_391:
	cmp	rdi, 0x482b
	je	.label_393
	cmp	rdi, 0x4858
	je	.label_393
	cmp	rdi, 0x4d44
	je	.label_393
	jmp	.label_392
.label_398:
	cmp	rdi, 0x54190100
	je	.label_393
	cmp	rdi, 0x565a4653
	je	.label_393
	cmp	rdi, 0x58295829
	je	.label_393
	jmp	.label_392
.label_404:
	cmp	rdi, 0x15013346
	je	.label_393
	cmp	rdi, 0x19800202
	je	.label_393
	cmp	rdi, 0x19830326
	je	.label_394
	jmp	.label_392
.label_409:
	cmp	rdi, 0x11954
	je	.label_393
	cmp	rdi, 0x27e0eb
	je	.label_393
	jmp	.label_392
.label_423:
	mov	ecx, 0x958458f6
	cmp	rdi, rcx
	je	.label_393
	mov	eax, 0xa501fcf5
	jmp	.label_412
.label_441:
	cmp	rdi, 0x52654973
	je	.label_393
	cmp	rdi, 0x5346314d
	je	.label_393
	jmp	.label_392
.label_446:
	cmp	rdi, 0x73727279
	je	.label_393
	cmp	rdi, 0x73757245
	je	.label_394
	jmp	.label_392
.label_405:
	cmp	rdi, 0x62646576
	je	.label_393
	cmp	rdi, 0x62656570
	je	.label_393
	jmp	.label_392
.label_414:
	cmp	rdi, 0x11307854
	je	.label_393
	cmp	rdi, 0x13661366
	je	.label_393
	jmp	.label_392
.label_429:
	mov	ecx, 0xde5e81e4
	cmp	rdi, rcx
	je	.label_393
	mov	ecx, 0xf2f52010
.label_421:
	cmp	rdi, rcx
	jne	.label_392
.label_393:
	ret	
.label_440:
	cmp	rdi, 0x453dcd28
	je	.label_393
	cmp	rdi, 0x45584653
	je	.label_393
	jmp	.label_392
.label_424:
	cmp	rdi, 0x6e667364
	je	.label_394
	cmp	rdi, 0x6e736673
	je	.label_393
	jmp	.label_392
.label_395:
	cmp	rdi, 0x564c
	je	.label_394
	cmp	rdi, 0x5df5
	je	.label_393
	jmp	.label_392
.label_399:
	cmp	rdi, 0x5dca2df5
	je	.label_393
	cmp	rdi, 0x61636673
	je	.label_394
	jmp	.label_392
.label_407:
	cmp	rdi, 0x28cd3d45
	je	.label_393
	cmp	rdi, 0x2bad1dea
	je	.label_393
	jmp	.label_392
.label_411:
	cmp	rdi, 0xef53
	je	.label_393
	cmp	rdi, 0xf15f
	je	.label_393
	jmp	.label_392
.label_417:
	mov	eax, 0xbacbacbc
	cmp	rdi, rax
	je	.label_394
	mov	eax, 0xbeefdead
	jmp	.label_412
.label_422:
	cmp	rdi, 0x5346544e
	je	.label_393
	cmp	rdi, 0x534f434b
	je	.label_393
	jmp	.label_392
.label_428:
	cmp	rdi, 0x794c7630
	je	.label_394
	cmp	rdi, 0x7c7c6673
	je	.label_394
	jmp	.label_392
.label_437:
	cmp	rdi, 0x64626720
	je	.label_393
	cmp	rdi, 0x64646178
	je	.label_393
	jmp	.label_392
.label_444:
	mov	eax, 0xfe534d42
	cmp	rdi, rax
	je	.label_394
	mov	eax, 0xff534d42
.label_412:
	cmp	rdi, rax
	jne	.label_392
.label_394:
	xor	eax, eax
	ret	
.label_392:
	mov	eax, 0xffffffff
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405920

	.globl wd_hasher
	.type wd_hasher, @function
wd_hasher:
	movsxd	rax, dword ptr [rdi + 0x44]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405940

	.globl recheck
	.type recheck, @function
recheck:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebp, esi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	byte ptr [rax], 0x2d
	jne	.label_454
	lea	r14, [rbx + 0x36]
	lea	r12, [rbx + 0x3c]
	cmp	byte ptr [rax + 1], 0
	mov	al, byte ptr [rbx + 0x36]
	mov	byte ptr [rsp + 3], al
	mov	r13d, dword ptr [rbx + 0x3c]
	jne	.label_458
	xor	r15d, r15d
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_471
.label_454:
	lea	r14, [rbx + 0x36]
	mov	al, byte ptr [rbx + 0x36]
	mov	byte ptr [rsp + 3], al
	lea	r12, [rbx + 0x3c]
	mov	r13d, dword ptr [rbx + 0x3c]
.label_458:
	mov	rdi, qword ptr [rbx]
	xor	esi, esi
	test	bpl, bpl
	sete	sil
	shl	esi, 0xb
	mov	dword ptr [rsp + 4], 0
	xor	eax, eax
	call	open_safer
	mov	r15d, eax
.label_471:
	mov	rdi, rbx
	call	valid_file_spec
	test	al, al
	je	.label_470
	cmp	r15d, -1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [r14], al
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	jne	.label_465
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	jne	.label_465
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	jne	.label_465
	mov	dword ptr [r12], 0xffffffff
	mov	byte ptr [rbx + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_447
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	jmp	.label_449
.label_465:
	cmp	r15d, -1
	je	.label_459
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	js	.label_459
	movzx	eax, word ptr [rsp + 0x20]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jg	.label_461
	cmp	eax, 0x8000
	je	.label_451
	cmp	eax, 0xc000
	je	.label_451
	jmp	.label_455
.label_459:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r12], ebp
	cmp	byte ptr [r14], 0
	je	.label_466
	mov	ebp, dword ptr [rax]
	cmp	r13d, ebp
	je	.label_449
	mov	rdi, rbx
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_449
.label_466:
	cmp	byte ptr [rsp + 3], 0
	je	.label_449
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_478
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_449
.label_461:
	cmp	eax, 0x1000
	je	.label_451
	cmp	eax, 0x2000
	jne	.label_455
.label_451:
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	test	al, al
	je	.label_456
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	test	al, al
	je	.label_457
.label_456:
	mov	dword ptr [r12], 0
	or	r13d, 2
	cmp	r13d, 2
	jne	.label_462
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_463
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_464
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_464
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	jmp	.label_452
.label_455:
	mov	dword ptr [r12], 0xffffffff
	mov	byte ptr [r14], 0
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	cmp	byte ptr [rsp + 3], 0
	jne	.label_469
	cmp	r13d, dword ptr [r12]
	je	.label_449
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_477
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:label_38
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_450
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_147
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_450:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	jmp	.label_449
.label_457:
	mov	dword ptr [r12], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_448
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	word ptr [rbx + 0x34], 0x101
.label_449:
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	mov	ebp, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, ebp
	mov	rsi, rax
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
.label_452:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_462:
	cmp	dword ptr [rbx + 0x38], -1
	jne	.label_473
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_474
	jmp	.label_475
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_476
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	mov	r14d, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r14d
	mov	rsi, rax
	call	close_fd
	jmp	.label_460
.label_463:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_453
.label_475:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
.label_460:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	mov	r8d, 0xffffffff
	cmove	r8d, eax
	lea	rcx, [rsp + 8]
	xor	edx, edx
	mov	rdi, rbx
	mov	esi, r15d
	call	record_open_fd
	mov	rdi, rbx
	call	pretty_name
	xor	esi, esi
	xor	edx, edx
	mov	edi, r15d
	mov	rcx, rax
	call	xlseek
	jmp	.label_452
.label_470:
	mov	edi, OFFSET FLAT:label_467
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:label_468
	call	__assert_fail
.label_473:
	mov	edi, OFFSET FLAT:label_472
	mov	esi, OFFSET FLAT:label_290
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:label_468
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405df0

	.globl check_fspec
	.type check_fspec, @function
check_fspec:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_482
	mov	rdi, rbx
	call	pretty_name
	mov	r15, rax
	mov	edi, dword ptr [rbx + 0x38]
	lea	rsi, [rsp + 8]
	call	fstat
	test	eax, eax
	je	.label_483
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	edi, dword ptr [rbx + 0x38]
	mov	rsi, r15
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_482
.label_483:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbx + 0x30]
	and	ecx, eax
	cmp	ecx, 0x8000
	jne	.label_479
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rcx, qword ptr [rbx + 8]
	jge	.label_479
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_251
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	call	error
	mov	edi, dword ptr [rbx + 0x38]
	xor	esi, esi
	xor	edx, edx
	mov	rcx, r15
	call	xlseek
	mov	qword ptr [rbx + 8], 0
	jmp	.label_480
.label_479:
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_480
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_480
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	je	.label_482
.label_480:
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	jne	.label_484
	cmp	qword ptr [r14], rbx
	setne	al
	jmp	.label_485
.label_484:
	xor	eax, eax
.label_485:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r15
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_482
	mov	qword ptr [r14], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_481
.label_482:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_481:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f70

	.globl die_pipe
	.type die_pipe, @function
die_pipe:
	push	rax
	mov	edi, 0xd
	call	raise
	mov	edi, 1
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f90

	.globl valid_file_spec
	.type valid_file_spec, @function
valid_file_spec:
	cmp	dword ptr [rdi + 0x38], -1
	sete	cl
	cmp	dword ptr [rdi + 0x3c], 0
	sete	al
	xor	al, cl
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fb0

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	mov	al, 1
	cmp	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jne	.label_486
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_488
.label_486:
	test	rsi, rsi
	je	.label_487
	mov	r8b,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	r8b, 1
	add	rdi, 0x38
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_489:
	cmp	dword ptr [rdi], 0
	jns	.label_488
	cmp	byte ptr [rdi - 4], 0
	setne	cl
	or	cl, r8b
	test	cl, 1
	je	.label_488
	inc	rdx
	add	rdi, 0x60
	cmp	rdx, rsi
	jb	.label_489
.label_487:
	xor	eax, eax
.label_488:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbx
	sub	rsp, 0x90
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_490
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp], xmm0
	lea	rbx, [rsp + 0x10]
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0x10], 2
	lea	r8, [rsp]
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	select
	cmp	eax, 1
	je	.label_491
.label_490:
	add	rsp, 0x90
	pop	rbx
	ret	
.label_491:
	call	die_pipe
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406080

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406090

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
	mov	rbp, rsi
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_495
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_492:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_493
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_497
	cmp	qword ptr [rsp + 8], -1
	je	.label_498
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_494
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_493
.label_494:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_493
.label_498:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_493:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_492
	jmp	.label_496
.label_495:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_496:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_497:
	mov	rax, rbp
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
	#Procedure 0x406190

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
	je	.label_499
	mov	esi, OFFSET FLAT:label_500
	jmp	.label_501
.label_499:
	mov	esi, OFFSET FLAT:label_502
.label_501:
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
	.align	16
	#Procedure 0x406200

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
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_509
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_505:
	test	rbp, rbp
	je	.label_507
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_504
.label_507:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_510
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_506
	nop	word ptr cs:[rax + rax]
.label_504:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_508
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_506:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_505
.label_509:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	putc_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x406300

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r12
	mov	rcx, r15
	call	argmatch
	test	rax, rax
	jns	.label_511
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	call	argmatch_valid
	call	r14
	mov	rax, -1
.label_511:
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
	#Procedure 0x406370
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
	je	.label_512
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_513:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_512
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_513
.label_512:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0

	.globl cl_strtod
	.type cl_strtod, @function
cl_strtod:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	strtod
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax], 0
	je	.label_515
	movsd	qword ptr [rsp + 8], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rsp], rax
	jae	.label_514
	mov	qword ptr [rsp], rax
	jmp	.label_515
.label_514:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp + 8]
.label_515:
	test	r14, r14
	je	.label_516
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14], rax
.label_516:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406460
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406470
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406480

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_519
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_517
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_517
.label_519:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_520
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_517:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_41
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_518
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_520:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_518:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406540

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
.label_522:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_521
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_522
.label_521:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406580
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	sete	al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_523
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_524
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_524:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_523:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065e0

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_525:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_525
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_529
	nop	word ptr cs:[rax + rax]
.label_527:
	inc	rax
	mov	sil, dl
.label_529:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_527
	test	cl, cl
	je	.label_528
	mov	edx, esi
	and	dl, 1
	je	.label_526
	xor	esi, esi
.label_526:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_527
.label_528:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406640
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_531:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_530
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_531
.label_530:
	pop	rbx
	ret	
	nop	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406670

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_532
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_532:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_534
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_535
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_533
.label_535:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_533:
	mov	edx, dword ptr [rax]
.label_534:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406740

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406750

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406770

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_536
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_538:
	cmp	qword ptr [rcx], 0
	je	.label_537
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_539:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_539
	cmp	rsi, rax
	cmova	rax, rsi
.label_537:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_538
.label_536:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067c0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_540
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_545:
	cmp	qword ptr [rsi], 0
	je	.label_542
	mov	rax, rsi
	nop	dword ptr [rax]
.label_541:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_541
	inc	rdx
.label_542:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_545
.label_540:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_543
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_544
.label_543:
	xor	eax, eax
.label_544:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406820
	.globl hash_print_statistics
	.type hash_print_statistics, @function
hash_print_statistics:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rsi
	mov	rbx, rdi
	call	hash_get_n_entries
	mov	rbp, rax
	mov	rdi, rbx
	call	hash_get_n_buckets
	mov	r12, rax
	mov	rdi, rbx
	call	hash_get_n_buckets_used
	mov	r15, rax
	mov	rdi, rbx
	call	hash_get_max_bucket_length
	mov	r14, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_546
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_552
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_547]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_548]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_549]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_550
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_551
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	__fprintf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406910

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
	call	safe_hasher
	mov	rbx, rax
	xor	r15d, r15d
	cmp	qword ptr [rbx], 0
	je	.label_554
	test	rbx, rbx
	je	.label_554
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_555:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_553
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_553
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_555
	jmp	.label_554
.label_553:
	mov	r15, qword ptr [rbx]
.label_554:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x406970

	.globl safe_hasher
	.type safe_hasher, @function
safe_hasher:
	push	rbx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, rsi
	mov	rsi, rax
	call	qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x10]
	jae	.label_556
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_556:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_557
	mov	rcx, qword ptr [rdi]
	jmp	.label_559
	nop	
.label_560:
	add	rcx, 0x10
.label_559:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_558
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_560
.label_557:
	ret	
.label_558:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069d0
	.globl hash_get_next
	.type hash_get_next, @function
hash_get_next:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rcx, rax
	nop	word ptr cs:[rax + rax]
.label_565:
	cmp	qword ptr [rcx], rbx
	jne	.label_561
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_563
.label_561:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_565
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_564:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_562
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_564
	jmp	.label_562
.label_563:
	mov	rcx, qword ptr [rdx]
.label_562:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a40
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_566
	xor	eax, eax
.label_569:
	cmp	qword ptr [r8], 0
	je	.label_567
	test	r8, r8
	je	.label_567
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_568:
	cmp	rax, rdx
	jae	.label_566
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_568
.label_567:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_569
.label_566:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a90
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
	xor	ebx, ebx
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_570
	xor	ebx, ebx
.label_572:
	cmp	qword ptr [r13], 0
	je	.label_571
	test	r13, r13
	je	.label_571
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_573:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_570
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_573
.label_571:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_572
.label_570:
	mov	rax, rbx
	add	rsp, 8
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
	#Procedure 0x406b10
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_574
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_575:
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
	jne	.label_575
.label_574:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b50
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_576]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406b70

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
	mov	rbx, r8
	mov	r12, rsi
	mov	r15, rdi
	test	rdx, rdx
	mov	ebp, OFFSET FLAT:raw_hasher
	cmovne	rbp, rdx
	test	rcx, rcx
	mov	r14d, OFFSET FLAT:raw_comparator
	cmovne	r14, rcx
	mov	edi, 0x50
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_578
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_577
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_577
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_577
	mov	rcx, qword ptr [r13 + 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [r13 + 8], rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x18], xmm0
	mov	qword ptr [r13 + 0x30], rbp
	mov	qword ptr [r13 + 0x38], r14
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r13 + 0x40], rax
	mov	qword ptr [r13 + 0x48], 0
	mov	rax, r13
	jmp	.label_578
.label_577:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_578:
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
	#Procedure 0x406c50

	.globl raw_hasher
	.type raw_hasher, @function
raw_hasher:
	push	rbx
	mov	rbx, rsi
	mov	esi, 3
	call	rotr_sz
	xor	edx, edx
	div	rbx
	mov	rax, rdx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c70

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c80

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_579
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_580]]
	jbe	.label_581
	movss	xmm1,  dword ptr [dword ptr [rip + label_584]]
	ucomiss	xmm1, xmm0
	jbe	.label_581
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_583]]
	jbe	.label_581
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_581
	addss	xmm1,  dword ptr [dword ptr [rip + label_580]]
	ucomiss	xmm0, xmm1
	jbe	.label_581
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_582]]
	ucomiss	xmm2, xmm0
	jb	.label_581
	ucomiss	xmm0, xmm1
	ja	.label_579
.label_581:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_579:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d00

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_585
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_590
	cvtsi2ss	xmm0, rdi
	jmp	.label_586
.label_590:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_586:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_587]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_588]]
	jae	.label_589
.label_585:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_589:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406d80
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_591
	nop	dword ptr [rax]
.label_596:
	add	r14, 0x10
.label_591:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_595
	cmp	qword ptr [r14], 0
	je	.label_596
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_592
	nop	word ptr cs:[rax + rax]
.label_597:
	test	cl, 1
	je	.label_593
	mov	rdi, qword ptr [rbx]
	call	rax
.label_593:
	mov	qword ptr [rbx], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rax, qword ptr [r15 + 0x48]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [r15 + 0x48], rbx
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rdx, rdx
	mov	rbx, rdx
	jne	.label_597
.label_592:
	test	cl, cl
	je	.label_594
	mov	rdi, qword ptr [r14]
	call	rax
.label_594:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_596
.label_595:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406e20

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_602
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_602
	mov	r14, qword ptr [r15]
	jmp	.label_607
	nop	dword ptr [rax + rax]
.label_601:
	add	r14, 0x10
.label_607:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_602
	cmp	qword ptr [r14], 0
	je	.label_601
	test	r14, r14
	je	.label_601
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_603:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_603
	jmp	.label_601
.label_602:
	mov	r14, qword ptr [r15]
	jmp	.label_605
	nop	word ptr [rax + rax]
.label_600:
	add	r14, 0x10
.label_605:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_598
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_600
	nop	word ptr cs:[rax + rax]
.label_604:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_604
	jmp	.label_600
.label_598:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_606
	nop	dword ptr [rax]
.label_599:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_599
.label_606:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ef0

	.globl hash_rehash
	.type hash_rehash, @function
hash_rehash:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x50
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, rsi
	mov	rsi, rax
	call	compute_bucket_size
	mov	rbp, rax
	test	rbp, rbp
	je	.label_608
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_609
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_608
	mov	qword ptr [rsp + 0x10], rbp
	shl	rbp, 4
	add	rbp, qword ptr [rsp]
	mov	qword ptr [rsp + 8], rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsp + 0x18], xmm0
	mov	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rbx + 0x38]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rbx + 0x48]
	mov	qword ptr [rsp + 0x48], rax
	lea	rdi, [rsp]
	xor	edx, edx
	mov	rsi, rbx
	call	transfer_entries
	test	al, al
	je	.label_610
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 0x10], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_609
.label_610:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_611
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_611
	mov	rdi, qword ptr [rsp]
	call	free
.label_608:
	xor	r14d, r14d
.label_609:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_611:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407020

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
	mov	r12d, edx
	mov	rbp, rsi
	mov	r14, rdi
	mov	r15, qword ptr [rbp]
	mov	al, 1
	cmp	r15, qword ptr [rbp + 8]
	jae	.label_617
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_614:
	cmp	qword ptr [r15], 0
	je	.label_613
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_616
	nop	word ptr cs:[rax + rax]
.label_620:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_621
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_612
	nop	word ptr cs:[rax + rax]
.label_621:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_612:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_620
.label_616:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_613
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_615
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_618
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_619
.label_615:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_619:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_613:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_614
	mov	al, 1
.label_617:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_618:
	xor	eax, eax
	jmp	.label_617
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407140

	.globl hash_insert_if_absent
	.type hash_insert_if_absent, @function
hash_insert_if_absent:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	test	r14, r14
	je	.label_622
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_633
	test	rbx, rbx
	je	.label_624
	mov	qword ptr [rbx], rax
	jmp	.label_624
.label_633:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_623
	cvtsi2ss	xmm0, rcx
	jmp	.label_628
.label_623:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_628:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_631
	cvtsi2ss	xmm1, rax
	jmp	.label_636
.label_631:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_636:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_626
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_630
	cvtsi2ss	xmm2, rcx
	jmp	.label_634
.label_630:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_634:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_625
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_629
.label_625:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_629:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_626
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_632
	mulss	xmm0, xmm1
.label_632:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_588]]
	jae	.label_624
	movss	xmm1,  dword ptr [dword ptr [rip + label_587]]
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
	je	.label_624
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_622
.label_626:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_635
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_624
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_627
.label_635:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_627:
	mov	ebp, 1
.label_624:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_622:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407320

	.globl hash_find_entry
	.type hash_find_entry, @function
hash_find_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12d, ecx
	mov	rbp, rdx
	mov	r13, rsi
	mov	r14, rdi
	call	safe_hasher
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rsi, qword ptr [rbx]
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_638
	cmp	rsi, r13
	je	.label_641
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_643
.label_641:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_638
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_640
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_642
.label_643:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_638
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_639:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_637
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_637
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_639
	jmp	.label_638
.label_640:
	mov	qword ptr [rbx], 0
	jmp	.label_638
.label_637:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_638
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_642:
	mov	rdi, r14
	call	free_entry
.label_638:
	mov	rax, r15
	add	rsp, 8
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
	#Procedure 0x4073f0

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_644
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_644:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407420

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
	je	.label_645
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_645:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407450

	.globl hash_delete
	.type hash_delete, @function
hash_delete:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rdi
	lea	rdx, [rsp + 8]
	mov	ecx, 1
	call	hash_find_entry
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_656
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_652
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_649
	cvtsi2ss	xmm0, rax
	jmp	.label_654
.label_649:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_654:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_648
	cvtsi2ss	xmm1, rcx
	jmp	.label_647
.label_648:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_647:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_652
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_658
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_646
.label_658:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_646:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_655
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_657
.label_655:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_657:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_652
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_653
	mulss	xmm0, dword ptr [rcx + 8]
.label_653:
	movss	xmm1,  dword ptr [dword ptr [rip + label_587]]
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
	jne	.label_652
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_650
	nop	dword ptr [rax + rax]
.label_651:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_651
.label_650:
	mov	qword ptr [r15 + 0x48], 0
.label_652:
	mov	rax, r14
.label_656:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075e0

	.globl next_prime
	.type next_prime, @function
next_prime:
	push	r14
	push	rbx
	push	rax
	cmp	rdi, 0xa
	mov	ebx, 0xa
	cmovae	rbx, rdi
	or	rbx, 1
	mov	r14, -1
	jmp	.label_659
	nop	
.label_660:
	add	rbx, 2
.label_659:
	cmp	rbx, -1
	je	.label_661
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_660
	mov	r14, rbx
.label_661:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407630

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_662
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_663:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_662
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_663
.label_662:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407680

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4076a0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_664
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_665:
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
	ja	.label_665
	jmp	.label_666
.label_664:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_667:
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
	ja	.label_667
	mov	byte ptr [rsi], 0x2d
.label_666:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407760

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:label_668
	call	getenv
	mov	ecx, 0x31069
	test	rax, rax
	je	.label_669
	mov	ecx, 0x31069
	cmp	byte ptr [rax], 0
	je	.label_669
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rax
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	mov	ecx, 0x31069
	cmove	rcx, rax
.label_669:
	cmp	rcx, 0x7fffffff
	mov	edx, 0x7fffffff
	cmovl	edx, ecx
	cmp	rcx, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, edx
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077c0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_670
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_672
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_674
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_672
	mov	esi, OFFSET FLAT:label_673
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_675
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_675:
	mov	rbx, r14
.label_672:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_670:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_671
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407870
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
	#Procedure 0x4078b0
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
	#Procedure 0x4078c0
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
	#Procedure 0x4078d0

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
	#Procedure 0x407910
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
	#Procedure 0x407930

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_676
	test	rdx, rdx
	je	.label_676
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_676:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407960
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
	#Procedure 0x4079e0

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
.label_710:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_717
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_722]]
.label_1163:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_725
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_730
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1164:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_736
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_736
	xor	r14d, r14d
.label_748:
	cmp	r14, r11
	jae	.label_745
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_745:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_748
.label_736:
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
	jmp	.label_760
.label_1156:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_760
.label_1159:
	mov	al, 1
.label_1157:
	mov	r12b, 1
.label_1160:
	test	r12b, 1
	mov	cl, 1
	je	.label_764
	mov	ecx, eax
.label_764:
	mov	al, cl
.label_1158:
	test	r12b, 1
	jne	.label_767
	test	r11, r11
	je	.label_755
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_755:
	mov	r14d, 1
	jmp	.label_773
.label_767:
	xor	r14d, r14d
.label_773:
	mov	ecx, OFFSET FLAT:label_730
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_760
.label_1161:
	test	r12b, 1
	jne	.label_780
	test	r11, r11
	je	.label_788
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_788:
	mov	r14d, 1
	jmp	.label_783
.label_1162:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_680
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_760
.label_780:
	xor	r14d, r14d
.label_783:
	mov	eax, OFFSET FLAT:label_680
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_760:
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
	jmp	.label_750
	nop	dword ptr [rax]
.label_714:
	inc	rsi
.label_750:
	cmp	rbp, -1
	je	.label_729
	cmp	rsi, rbp
	jne	.label_732
	jmp	.label_690
	nop	word ptr cs:[rax + rax]
.label_729:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_690
.label_732:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_739
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_743
	cmp	rbp, -1
	jne	.label_743
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
.label_743:
	cmp	rbx, rbp
	jbe	.label_752
.label_739:
	xor	r8d, r8d
.label_728:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_753
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_758]]
.label_995:
	test	rsi, rsi
	jne	.label_723
	jmp	.label_679
	nop	
.label_752:
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
	jne	.label_771
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_728
	jmp	.label_692
.label_771:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_728
.label_999:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_787
	test	rsi, rsi
	jne	.label_790
	cmp	rbp, 1
	je	.label_679
	xor	r13d, r13d
	jmp	.label_682
.label_988:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_685
	cmp	byte ptr [rsp + 7], 0
	jne	.label_688
	cmp	r12d, 2
	jne	.label_689
	mov	eax, r9d
	and	al, 1
	jne	.label_689
	cmp	r14, r11
	jae	.label_757
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_757:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_698
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_698:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_703
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_703:
	add	r14, 3
	mov	r9b, 1
.label_689:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_709
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_709:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_716
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_716
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_716
	cmp	r14, r11
	jae	.label_726
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_726:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_713
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_713:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_682
.label_989:
	mov	bl, 0x62
	jmp	.label_734
.label_990:
	mov	cl, 0x74
	jmp	.label_738
.label_991:
	mov	bl, 0x76
	jmp	.label_734
.label_992:
	mov	bl, 0x66
	jmp	.label_734
.label_993:
	mov	cl, 0x72
	jmp	.label_738
.label_996:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_744
	cmp	byte ptr [rsp + 7], 0
	jne	.label_688
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
	jae	.label_751
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_751:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_759
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_759:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_761
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_761:
	add	r14, 3
	xor	r9d, r9d
.label_744:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_682
.label_997:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_770
	cmp	r12d, 2
	jne	.label_723
	cmp	byte ptr [rsp + 7], 0
	je	.label_723
	jmp	.label_688
.label_998:
	cmp	r12d, 2
	jne	.label_778
	cmp	byte ptr [rsp + 7], 0
	jne	.label_688
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_735
.label_753:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_691
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
.label_681:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_704
	test	r8b, r8b
	je	.label_704
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_682
.label_787:
	test	rsi, rsi
	jne	.label_711
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_711
.label_679:
	mov	dl, 1
.label_994:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_688
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_682:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_724
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_786
	jmp	.label_719
	nop	word ptr cs:[rax + rax]
.label_724:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_719
.label_786:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_731
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_735
	jmp	.label_678
	nop	dword ptr [rax]
.label_719:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_678
	jmp	.label_735
.label_731:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_678
.label_685:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_714
	xor	r15d, r15d
	jmp	.label_723
.label_778:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_738
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_735
.label_738:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_688
.label_734:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_682
	nop	word ptr cs:[rax + rax]
.label_678:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_688
	cmp	r12d, 2
	jne	.label_765
	mov	eax, r9d
	and	al, 1
	jne	.label_765
	cmp	r14, r11
	jae	.label_768
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_768:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_741
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_741:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_789
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_789:
	add	r14, 3
	mov	r9b, 1
.label_765:
	cmp	r14, r11
	jae	.label_779
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_779:
	inc	r14
	jmp	.label_781
.label_691:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_784
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_784:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_701:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_696
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_700
	cmp	rbp, -2
	je	.label_742
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_706
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_697:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_707
	bt	rsi, rdx
	jb	.label_692
.label_707:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_697
.label_706:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_733
	xor	r13d, r13d
.label_733:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_701
	jmp	.label_681
.label_716:
	xor	r13d, r13d
	jmp	.label_682
.label_711:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_682
.label_770:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_723
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_723
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_723
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_774
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_785
	cmp	byte ptr [rsp + 7], 0
	jne	.label_688
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_762
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_762:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_746
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_746:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_772
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_772:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_775
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_775:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_682
.label_723:
	xor	eax, eax
.label_790:
	xor	r13d, r13d
	jmp	.label_682
.label_704:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_782
	nop	word ptr cs:[rax + rax]
.label_747:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_782:
	test	r8b, r8b
	je	.label_791
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_677
	cmp	r14, r11
	jae	.label_683
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_683:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_677
	nop	dword ptr [rax]
.label_791:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_692
	cmp	r12d, 2
	jne	.label_695
	mov	eax, r9d
	and	al, 1
	jne	.label_695
	cmp	r14, r11
	jae	.label_699
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_699:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_702
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_702:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_708
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_708:
	add	r14, 3
	mov	r9b, 1
.label_695:
	cmp	r14, r11
	jae	.label_749
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_749:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_720
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_720:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_693
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_693:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_677:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_735
	test	r9b, 1
	je	.label_737
	mov	ebx, eax
	and	bl, 1
	jne	.label_737
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_740
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_740:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_776
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_776:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_737:
	cmp	r14, r11
	jae	.label_747
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_747
	nop	word ptr cs:[rax + rax]
.label_735:
	test	r9b, 1
	je	.label_754
	and	al, 1
	jne	.label_754
	cmp	r14, r11
	jae	.label_756
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_756:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_686
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_686:
	add	r14, 2
	xor	r9d, r9d
.label_754:
	mov	ebx, r15d
.label_781:
	cmp	r14, r11
	jae	.label_763
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_763:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_714
.label_700:
	xor	r13d, r13d
.label_696:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_681
.label_742:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_777
	mov	rsi, qword ptr [rsp + 0x50]
.label_687:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_712
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_687
	xor	r13d, r13d
	jmp	.label_681
.label_777:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_681
.label_712:
	xor	r13d, r13d
	jmp	.label_681
.label_774:
	xor	r13d, r13d
	jmp	.label_682
.label_785:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_682
	nop	dword ptr [rax + rax]
.label_690:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_684
	or	dl, al
	je	.label_692
.label_684:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_694
	or	dl, al
	jne	.label_694
	test	r10b, 1
	jne	.label_705
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_694
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_710
.label_694:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_718
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_721
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_721
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_727:
	cmp	r14, r11
	jae	.label_715
	mov	byte ptr [rcx + r14], al
.label_715:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_727
	jmp	.label_721
.label_688:
	mov	qword ptr [rsp + 0x20], rbp
.label_692:
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
.label_766:
	mov	r14, rax
.label_769:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_705:
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
	jmp	.label_766
.label_718:
	mov	rcx, qword ptr [rsp + 8]
.label_721:
	cmp	r14, r11
	jae	.label_769
	mov	byte ptr [rcx + r14], 0
	jmp	.label_769
.label_717:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4087a0
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
	#Procedure 0x4087b0

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
	je	.label_792
	mov	qword ptr [rax], rbx
.label_792:
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
	#Procedure 0x4088a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_793
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_795:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_795
.label_793:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_797
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_796]], OFFSET FLAT:slot0
.label_797:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_794
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_794:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408940

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x408950

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
	js	.label_801
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_804
	cmp	r12d, 0x7fffffff
	je	.label_799
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
	jne	.label_802
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_802:
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
.label_804:
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
	jbe	.label_800
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_803
.label_800:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_798
	mov	rdi, r14
	call	free
.label_798:
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
.label_803:
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
.label_801:
	call	abort
.label_799:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408b10

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b20
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
	#Procedure 0x408b30
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
	#Procedure 0x408b40

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
	#Procedure 0x408b80

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
	je	.label_805
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
.label_805:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408be0

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
	#Procedure 0x408c20

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
	#Procedure 0x408c40
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
	#Procedure 0x408c60

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
	mov	rcx,  qword ptr [word ptr [rip + label_806]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_807]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_808]]
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
	#Procedure 0x408cd0

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
	#Procedure 0x408ce0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408cf0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d00

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
	#Procedure 0x408d50

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408d60

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
	mov	rax,  qword ptr [word ptr [rip + label_806]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_807]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_808]]
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
	#Procedure 0x408dd0
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
	#Procedure 0x408df0
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
	#Procedure 0x408e10

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408e20
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
	#Procedure 0x408e30

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408e40

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
	#Procedure 0x408e50

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
	jne	.label_813
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
	je	.label_809
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_814
	mov	eax, OFFSET FLAT:label_815
	jmp	.label_812
.label_809:
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
	je	.label_816
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_810
	mov	eax, OFFSET FLAT:label_811
	jmp	.label_812
.label_816:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_680
	mov	eax, OFFSET FLAT:label_730
.label_812:
	cmove	rax, rcx
.label_813:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f10

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
	je	.label_817
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_819
	jmp	.label_818
.label_817:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_818
.label_819:
	mov	eax, 1
	test	bpl, bpl
	je	.label_818
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
.label_818:
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
	#Procedure 0x408f90

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
	je	.label_822
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_820
	jmp	.label_821
.label_822:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_821
.label_820:
	mov	eax, 1
	test	bpl, bpl
	je	.label_821
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
.label_821:
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
	#Procedure 0x409020

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
	je	.label_823
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_825
	jmp	.label_824
.label_823:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_824
.label_825:
	mov	eax, 1
	test	bpl, bpl
	je	.label_824
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
.label_824:
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
	#Procedure 0x4090a0

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
	je	.label_828
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_827
	jmp	.label_826
.label_828:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_826
.label_827:
	mov	eax, 1
	test	bpl, bpl
	je	.label_826
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
.label_826:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409110

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
	je	.label_831
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_829
	jmp	.label_830
.label_831:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_830
.label_829:
	mov	eax, 1
	test	bpl, bpl
	je	.label_830
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_830:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409170

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
	je	.label_832
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_834
	jmp	.label_833
.label_832:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_833
.label_834:
	mov	eax, 1
	test	bpl, bpl
	je	.label_833
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_833:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4091c0

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
	je	.label_837
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_836
	jmp	.label_835
.label_837:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_835
.label_836:
	mov	eax, 1
	test	bpl, bpl
	je	.label_835
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_835:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409210

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_840
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_839
	jmp	.label_838
.label_840:
	mov	eax, 1
	test	cl, cl
	je	.label_838
.label_839:
	xor	eax, eax
.label_838:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409240

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_842:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_841
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_842
	cmp	eax, 0x16
	sete	cl
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rcx, rbx
	cmovne	rcx, r12
	test	dl, dl
	cmovne	rbp, r13
	cmp	rbx, 0x7ff00001
	jb	.label_841
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_842
.label_841:
	mov	rax, rbp
	add	rsp, 8
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
	#Procedure 0x4092d0
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092e0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4092f0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409300
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409310
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409320
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409330

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409340
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409350
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409360

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409370

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_843
	mov	eax, 1
	jg	.label_843
	sub	esi, ecx
	mov	eax, esi
.label_843:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409390
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	xor	ecx, ecx
	or	rsi, rdi
	setne	cl
	test	rdi, rdi
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093b0
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_844]]
	addsd	xmm0, xmm1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093d0

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
	ja	.label_845
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
	jmp	.label_846
.label_845:
	mov	eax, ebx
.label_846:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409420

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
	je	.label_859
	mov	edx, OFFSET FLAT:label_850
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_856
.label_859:
	mov	edx, OFFSET FLAT:label_857
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_856:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_861
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
	mov	esi, OFFSET FLAT:label_858
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_862
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_863]]
.label_1116:
	add	rsp, 8
	jmp	.label_849
.label_862:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_853
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
	jmp	.label_849
.label_1117:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_848
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
.label_1118:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_854
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
.label_1119:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_851
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
.label_1120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_865
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
	jmp	.label_849
.label_1121:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_864
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
	jmp	.label_849
.label_1122:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_847
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
	jmp	.label_849
.label_1123:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_852
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
	jmp	.label_849
.label_1125:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_855
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
	jmp	.label_849
.label_1124:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_860
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
.label_849:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409780
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_866:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_866
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097b0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_868:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_867
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_869
	nop	dword ptr [rax]
.label_867:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_869:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_870
	inc	r9
	cmp	r9, 0xa
	jb	.label_868
.label_870:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409810

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_871
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_871:
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
	#Procedure 0x4098a0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_872
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_873
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_875
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_28
	mov	ecx, OFFSET FLAT:label_29
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_874
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409920

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_876
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_876:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409950

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_877
	test	rax, rax
	je	.label_878
.label_877:
	pop	rbx
	ret	
.label_878:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_879
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_879:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099a0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_880
	test	rbx, rbx
	jne	.label_880
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_880:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_882
	test	rax, rax
	je	.label_881
.label_882:
	pop	rbx
	ret	
.label_881:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4099d0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_883
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_886
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_884
.label_883:
	test	rcx, rcx
	jne	.label_887
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_887:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_885
.label_884:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_886:
	call	xalloc_die
.label_885:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409a50

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a60
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409a70
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
	#Procedure 0x409aa0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_888
	call	rpl_calloc
	test	rax, rax
	je	.label_888
	pop	rcx
	ret	
.label_888:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ad0

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
	#Procedure 0x409b00
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
	#Procedure 0x409b20

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_889
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_265
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x409b50
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b60

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409b70

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r15, rcx
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_893
	cmp	eax, 1
	je	.label_895
	test	eax, eax
	jne	.label_890
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_891
	cmp	rbx, r15
	jbe	.label_892
.label_891:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_894
	mov	dword ptr [rax], 0x4b
	jmp	.label_890
.label_893:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_890
.label_895:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_890
.label_894:
	mov	dword ptr [rax], 0x22
.label_890:
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	mov	edx, OFFSET FLAT:label_87
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_892:
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
	#Procedure 0x409c40

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	mov	rax, rcx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	esi, 0xa
	mov	r8, rax
	mov	r9, r10
	call	xnumtoumax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c70

	.globl xnanosleep
	.type xnanosleep, @function
xnanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	call	dtotimespec
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdx
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	lea	rdi, [rsp]
	xor	esi, esi
	call	rpl_nanosleep
	test	eax, eax
	je	.label_896
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_897:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_896
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_897
.label_896:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409cf0

	.globl xstrtod
	.type xstrtod, @function
xstrtod:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r13, rcx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	r13
	mov	rax, qword ptr [rsp + 8]
	cmp	rax, rbx
	je	.label_898
	test	r15, r15
	jne	.label_899
	cmp	byte ptr [rax], 0
	je	.label_899
	xor	eax, eax
	jmp	.label_901
.label_899:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_902
	jnp	.label_900
.label_902:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_900
.label_898:
	xor	eax, eax
.label_900:
	test	r15, r15
	je	.label_901
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_901:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
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
	jae	.label_903
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_919:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_919
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_914
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_905
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_912
	cmp	eax, 0x22
	jne	.label_914
	mov	r12d, 1
.label_912:
	test	rbp, rbp
	jne	.label_916
	jmp	.label_918
.label_905:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_914
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_914
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_914
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_916:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_918
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_910
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_911
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_911
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_917
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_920
	cmp	ecx, 0x44
	je	.label_920
	cmp	ecx, 0x69
	jne	.label_917
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_917
.label_920:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_917
.label_911:
	mov	rsi, r14
.label_917:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_910
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_913]]
.label_1027:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_904
.label_910:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_915
.label_1028:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_904
.label_1029:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_904
.label_1031:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_904
.label_1025:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_906
.label_1026:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_904
.label_1030:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_904
.label_1032:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_904
.label_1033:
	lea	rdi, [rsp]
	mov	edx, 7
.label_904:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_906:
	mov	rsi, r14
.label_1035:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_918:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_915:
	mov	r15d, r12d
.label_914:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1034:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_906
.label_1036:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_906
.label_903:
	mov	edi, OFFSET FLAT:label_907
	mov	esi, OFFSET FLAT:label_908
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_909
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a030

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
	#Procedure 0x40a060

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
	je	.label_921
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_922:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_922
.label_921:
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
	#Procedure 0x40a0a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_923
	test	rsi, rsi
	mov	ecx, 1
	je	.label_924
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_924
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_923:
	mov	ecx, 1
.label_924:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
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
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	cmp	esi, 0xb
	ja	.label_925
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_935
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_933
	test	esi, esi
	jne	.label_925
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_936
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_928
.label_925:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_926
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_933
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_938
.label_935:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_933:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_929
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_932
.label_929:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_932:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_938:
	cmp	eax, 6
	jne	.label_926
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_927
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_930
.label_926:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_934
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_937
.label_936:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_928:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_927:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_930:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_934:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_937:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2b0

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	mov	ecx, esi
	xor	esi, esi
	xor	eax, eax
	mov	edx, ecx
	jmp	fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a2c0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_939
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_941
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_941
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_942
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_943
.label_941:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_943
.label_939:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_943:
	test	ebx, ebx
	js	.label_942
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_942
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_940
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_942
.label_940:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_942:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a390

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
	je	.label_944
	cmp	r15, -2
	jb	.label_944
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_944
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_944:
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
	#Procedure 0x40a3f0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_945
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_947
.label_945:
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_948:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_946
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_948
	test	r15, r15
	je	.label_947
	add	qword ptr [r15], rbx
	jmp	.label_947
.label_946:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_947:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a490
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4a0
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4b0

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4c0
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4d0
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a4e0
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	ecx, esi
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a4f0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	ecx, esi
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a500
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	ecx, esi
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a510

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	ecx, esi
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a520
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a540
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a560
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	ecx, esi
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a580
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	ecx, esi
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5a0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_949
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_949
.label_950:
	ret	
.label_949:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_950
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a5d0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_951
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_951:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a5f0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a600
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
	#Procedure 0x40a610
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_952
.label_953:
	ret	
.label_952:
	cmp	edi, 0x7f
	je	.label_953
	xor	eax, eax
	jmp	.label_953
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a630
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
	#Procedure 0x40a640
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
	#Procedure 0x40a650
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
	#Procedure 0x40a660
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
	#Procedure 0x40a670
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_954
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_955]]
.label_956:
	ret	
.label_954:
	xor	eax, eax
	jmp	.label_956
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a690
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_957
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_957:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a6b0

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
	#Procedure 0x40a6c0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_958
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_958:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a6e0
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
	#Procedure 0x40a6f0
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
	#Procedure 0x40a700

	.globl c_strtod
	.type c_strtod, @function
c_strtod:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_960
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_960:
	test	rbx, rbx
	je	.label_959
	mov	qword ptr [rbx], r14
.label_959:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a740

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_961
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:label_962
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_961:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a770

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
	je	.label_964
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_963
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_963
.label_964:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_963
	test	cl, cl
	jne	.label_963
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_963:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a7e0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_965]]
	jbe	.label_966
	movsd	xmm1,  qword ptr [word ptr [rip + label_968]]
	ucomisd	xmm1, xmm0
	jbe	.label_969
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_844]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	xor	ecx, ecx
	ucomisd	xmm0, xmm1
	seta	cl
	add	rcx, rax
	movabs	rdx, 0x112e0be826d694b3
	mov	rax, rcx
	imul	rdx
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 0x1a
	add	rdx, rax
	imul	rax, rdx, 0x3b9aca00
	mov	rsi, rcx
	sub	rsi, rax
	add	rsi, 0x3b9aca00
	sub	rcx, rax
	cmovns	rsi, rcx
	add	rdi, rdx
	sar	rcx, 0x3f
	add	rcx, rdi
	mov	rdi, rcx
	jmp	.label_967
.label_966:
	inc	rdi
	xor	esi, esi
	jmp	.label_967
.label_969:
	mov	esi, 0x3b9ac9ff
.label_967:
	call	make_timespec
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8a0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_971
	cmp	byte ptr [rax], 0x43
	jne	.label_973
	cmp	byte ptr [rax + 1], 0
	je	.label_970
.label_973:
	mov	esi, OFFSET FLAT:label_972
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_971
.label_970:
	xor	ebx, ebx
.label_971:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a8e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_38
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_974
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a910

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a920

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_976
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_975
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_976
.label_975:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_976
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_977
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_977:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_976:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_978
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_978
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_978:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_979
	ret	
.label_979:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9f0

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
	jne	.label_980
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_980
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_981
.label_980:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_981:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_982
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_982:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40aa60

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
	.section	.text
	.align	16
	#Procedure 0x40ab30

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x40ab40

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
