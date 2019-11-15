	.section	.text
	.align	16
	#Procedure 0x401670

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_20
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_23
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
	mov	esi, OFFSET FLAT:label_16
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
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_19
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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	mov	rcx, rdx
	call	__printf_chk
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_20:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	#Procedure 0x401880

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_24
	nop	
.label_37:
	mov	edi, OFFSET FLAT:label_28
	call	strcmp
	test	eax, eax
	je	.label_35
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_37
.label_35:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_28
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_25
	mov	esi, OFFSET FLAT:label_34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_25
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_28
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_27
	mov	ecx, OFFSET FLAT:label_28
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_36
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_31
	mov	ecx, OFFSET FLAT:label_32
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
	#Procedure 0x4019a0

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_32
	call	setlocale
	mov	edi, OFFSET FLAT:label_54
	mov	esi, OFFSET FLAT:label_55
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_54
	call	textdomain
	mov	edi, 3
	call	hard_locale
	mov	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  al
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + only_file_1]],  1
	mov	byte ptr [byte ptr [rip + only_file_2]],  1
	mov	byte ptr [byte ptr [rip + both]],  1
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  0
	mov	byte ptr [byte ptr [rip + label_58]],  0
	mov	byte ptr [byte ptr [rip + issued_disorder_warning]],  0
	mov	dword ptr [dword ptr [rip + check_input_order]],  0
	mov	byte ptr [byte ptr [rip + total_option]],  0
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	byte ptr [byte ptr [rip + only_file_1]],  0
.label_44:
	mov	edx, OFFSET FLAT:label_56
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x31
	jle	.label_52
	lea	ecx, [rax - 0x7a]
	cmp	ecx, 9
	ja	.label_66
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_64]]
.label_433:
	mov	byte ptr [byte ptr [rip + delim]],  1
	jmp	.label_44
	nop	dword ptr [rax + rax]
.label_52:
	cmp	eax, 0x30
	jle	.label_38
	jmp	.label_42
.label_66:
	cmp	eax, 0x32
	je	.label_43
	cmp	eax, 0x33
	jne	.label_41
	mov	byte ptr [byte ptr [rip + both]],  0
	jmp	.label_44
.label_434:
	mov	dword ptr [dword ptr [rip + check_input_order]],  1
	jmp	.label_44
.label_435:
	mov	dword ptr [dword ptr [rip + check_input_order]],  2
	jmp	.label_44
.label_436:
	cmp	qword ptr [word ptr [rip + col_sep_len]],  0
	je	.label_67
	mov	rdi,  qword ptr [word ptr [rip + col_sep]]
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	call	strcmp
	test	eax, eax
	jne	.label_61
.label_67:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + col_sep]],  rdi
	cmp	byte ptr [rdi], 0
	mov	eax, 1
	je	.label_62
	call	strlen
.label_62:
	mov	qword ptr [word ptr [rip + col_sep_len]],  rax
	jmp	.label_44
.label_437:
	mov	byte ptr [byte ptr [rip + total_option]],  1
	jmp	.label_44
.label_43:
	mov	byte ptr [byte ptr [rip + only_file_2]],  0
	jmp	.label_44
.label_38:
	cmp	eax, -1
	jne	.label_48
	cmp	qword ptr [word ptr [rip + col_sep_len]],  0
	jne	.label_49
	mov	qword ptr [word ptr [rip + col_sep_len]],  1
.label_49:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ecx, ebp
	sub	ecx, eax
	cmp	ecx, 1
	jle	.label_53
	cmp	ecx, 2
	jne	.label_57
	lea	rdi, [rbx + rax*8]
	call	compare_files
	mov	al,  byte ptr [byte ptr [rip + label_58]]
	or	al,  byte ptr [byte ptr [rip + issued_disorder_warning]]
	jne	.label_59
	xor	eax, eax
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_48:
	cmp	eax, 0xffffff7d
	je	.label_39
	cmp	eax, 0xffffff7e
	jne	.label_41
	xor	edi, edi
	call	usage
.label_39:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_28
	mov	edx, OFFSET FLAT:label_26
	mov	r8d, OFFSET FLAT:label_45
	mov	r9d, OFFSET FLAT:label_46
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_41:
	mov	edi, 1
	call	usage
.label_53:
	xor	edi, edi
	cmp	eax, ebp
	jge	.label_60
	mov	esi, OFFSET FLAT:label_63
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
.label_57:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_47
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [rbx + rax*8 + 0x10]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_65
.label_51:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_60:
	mov	esi, OFFSET FLAT:label_40
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
.label_61:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_50
	jmp	.label_51
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cc0

	.globl compare_files
	.type compare_files, @function
compare_files:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1c8
	mov	qword ptr [rsp + 8], rdi
	lea	r14, [rsp + 0x100]
	lea	r13, [rsp + 0x80]
	xor	r12d, r12d
	jmp	.label_87
.label_90:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	jmp	.label_102
	nop	word ptr cs:[rax + rax]
.label_87:
	mov	ebx, 4
	mov	r15, r13
	mov	rbp, r14
	nop	dword ptr [rax + rax]
.label_74:
	mov	rdi, rbp
	call	initbuffer
	mov	qword ptr [r15], rbp
	add	rbp, 0x18
	add	r15, 8
	dec	rbx
	jne	.label_74
	lea	rbp, [r12 + r12*2]
	mov	qword ptr [rsp + rbp*4 + 0x60], 0
	mov	dword ptr [rsp + rbp*4 + 0x68], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + r12*8]
	cmp	byte ptr [rax], 0x2d
	jne	.label_80
	cmp	byte ptr [rax + 1], 0
	je	.label_90
.label_80:
	mov	rax, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rax + r12*8]
	mov	esi, OFFSET FLAT:label_91
	call	fopen_safer
	mov	rdi, rax
.label_102:
	mov	qword ptr [rsp + r12*8 + 0x40], rdi
	test	rdi, rdi
	je	.label_89
	lea	rbx, [rsp + rbp*4 + 0x60]
	mov	esi, 2
	call	fadvise
	movsxd	rax, dword ptr [rbx]
	mov	rcx, r12
	shl	rcx, 5
	lea	rcx, [rsp + rcx + 0x80]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, qword ptr [rsp + r12*8 + 0x40]
	mov	al,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	jne	.label_68
	mov	al, 0xa
	jmp	.label_81
	nop	dword ptr [rax]
.label_68:
	xor	eax, eax
.label_81:
	movzx	edx, al
	mov	rsi, rbp
	call	readlinebuffer_delim
	mov	qword ptr [rsp + r12*8 + 0x10], rax
	mov	rdi, rbp
	call	ferror_unlocked
	test	eax, eax
	jne	.label_89
	inc	r12
	add	r14, 0x60
	add	r13, 0x20
	cmp	r12, 1
	jle	.label_87
	mov	rax, qword ptr [rsp + 0x10]
	xor	r12d, r12d
	or	rax, qword ptr [rsp + 0x18]
	mov	r15d, 0
	mov	r13d, 0
	je	.label_97
	xor	r13d, r13d
	xor	r15d, r15d
	xor	r12d, r12d
	jmp	.label_69
.label_100:
	mov	al, cl
	jmp	.label_72
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	word ptr [rsp + 0x20], 0
	mov	rcx, qword ptr [rsp + 0x10]
	test	rcx, rcx
	je	.label_77
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_84
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_86
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, qword ptr [rcx + 0x10]
	dec	rsi
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, qword ptr [rax + 0x10]
	dec	rcx
	call	xmemcoll
.label_72:
	test	eax, eax
	jne	.label_96
	inc	r13
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 3
	call	writeline
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_103
	nop	word ptr [rax + rax]
.label_77:
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jmp	.label_95
.label_86:
	mov	rbx, qword ptr [rcx + 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	rbp, qword ptr [rax + 8]
	mov	rsi, qword ptr [rax + 0x10]
	cmp	rbx, rbp
	mov	rdx, rbp
	cmovb	rdx, rbx
	dec	rdx
	call	memcmp
	test	eax, eax
	je	.label_85
.label_96:
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
	test	eax, eax
	jle	.label_104
.label_95:
	inc	r15
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 2
	call	writeline
	mov	byte ptr [rsp + 0x21], 1
	jmp	.label_92
.label_85:
	xor	eax, eax
	cmp	rbx, rbp
	setne	cl
	jae	.label_100
	nop	dword ptr [rax + rax]
.label_84:
	mov	byte ptr [byte ptr [rip + seen_unpairable]],  1
.label_104:
	inc	r12
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	call	writeline
.label_103:
	mov	byte ptr [rsp + 0x20], 1
.label_92:
	lea	rbp, [rsp + 0x68]
	xor	ebx, ebx
	xor	r14d, r14d
	nop	
.label_98:
	cmp	byte ptr [rsp + r14 + 0x20], 0
	je	.label_78
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp], eax
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
	inc	eax
	and	eax, 3
	mov	dword ptr [rbp - 8], eax
	lea	rax, [rsp + rax*8 + 0x80]
	mov	rdi, qword ptr [rax + rbx*4]
	mov	rsi, qword ptr [rsp + rbx + 0x40]
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	jne	.label_99
	mov	al, 0xa
	jmp	.label_101
.label_99:
	xor	eax, eax
.label_101:
	movzx	edx, al
	call	readlinebuffer_delim
	mov	qword ptr [rsp + rbx + 0x10], rax
	test	rax, rax
	je	.label_94
	movsxd	rcx, dword ptr [rbp - 4]
	lea	rcx, [rsp + rcx*8 + 0x80]
	mov	rdi, qword ptr [rcx + rbx*4]
	lea	edx, [r14 + 1]
	mov	rsi, rax
	jmp	.label_73
	nop	dword ptr [rax]
.label_94:
	movsxd	rax, dword ptr [rbp]
	lea	rax, [rsp + rax*8 + 0x80]
	mov	rdi, qword ptr [rax + rbx*4]
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_88
	movsxd	rax, dword ptr [rbp - 4]
	lea	rax, [rsp + rax*8 + 0x80]
	mov	rsi, qword ptr [rax + rbx*4]
	lea	edx, [r14 + 1]
.label_73:
	call	check_order
.label_88:
	mov	rdi, qword ptr [rsp + rbx + 0x40]
	call	ferror_unlocked
	test	eax, eax
	jne	.label_93
	mov	byte ptr [rsp + r14 + 0x20], 0
.label_78:
	inc	r14
	add	rbx, 8
	add	rbp, 0xc
	cmp	r14, 2
	jl	.label_98
	mov	rax, qword ptr [rsp + 0x10]
	or	rax, qword ptr [rsp + 0x18]
	jne	.label_69
.label_97:
	xor	ebx, ebx
	nop	
.label_79:
	mov	rdi, qword ptr [rsp + rbx*8 + 0x40]
	call	rpl_fclose
	test	eax, eax
	jne	.label_75
	inc	rbx
	cmp	rbx, 1
	jle	.label_79
	cmp	byte ptr [byte ptr [rip + total_option]],  1
	jne	.label_83
	lea	rsi, [rsp + 0x20]
	mov	rdi, r12
	call	umaxtostr
	mov	qword ptr [rsp + 8], rax
	mov	rax,  qword ptr [word ptr [rip + col_sep]]
	mov	qword ptr [rsp + 0x58], rax
	lea	rsi, [rsp + 0xe0]
	mov	rdi, r15
	call	umaxtostr
	mov	r15, rax
	mov	r12,  qword ptr [word ptr [rip + col_sep]]
	lea	rsi, [rsp + 0xc0]
	mov	rdi, r13
	call	umaxtostr
	mov	r14, rax
	mov	r13,  qword ptr [word ptr [rip + col_sep]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	al,  byte ptr [byte ptr [rip + delim]]
	test	al, al
	mov	ebx, 0xa
	mov	eax, 0
	cmovne	ebx, eax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_76
	mov	eax, 0
	mov	rdx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r15
	mov	r9, r12
	push	rbx
	push	rbp
	push	r13
	push	r14
	call	__printf_chk
	add	rsp, 0x20
.label_83:
	add	rsp, 0x1c8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_93:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + rbx]
.label_82:
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_71
	xor	eax, eax
	mov	esi, ebp
	call	error
.label_89:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + r12*8]
	jmp	.label_82
.label_75:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax + rbx*8]
	jmp	.label_82
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402150

	.globl writeline
	.type writeline, @function
writeline:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	edx, 3
	je	.label_108
	cmp	edx, 2
	je	.label_110
	cmp	edx, 1
	jne	.label_106
	mov	al,  byte ptr [byte ptr [rip + only_file_1]]
	test	al, al
	jne	.label_106
	jmp	.label_107
.label_110:
	cmp	byte ptr [byte ptr [rip + only_file_2]],  1
	jne	.label_107
	cmp	byte ptr [byte ptr [rip + only_file_1]],  1
	je	.label_105
	jmp	.label_106
.label_108:
	cmp	byte ptr [byte ptr [rip + both]],  1
	jne	.label_107
	cmp	byte ptr [byte ptr [rip + only_file_1]],  1
	jne	.label_109
	mov	rdi,  qword ptr [word ptr [rip + col_sep]]
	mov	rdx,  qword ptr [word ptr [rip + col_sep_len]]
	mov	esi, 1
	mov	rcx, r14
	call	fwrite_unlocked
.label_109:
	cmp	byte ptr [byte ptr [rip + only_file_2]],  1
	jne	.label_106
.label_105:
	mov	rdi,  qword ptr [word ptr [rip + col_sep]]
	mov	rdx,  qword ptr [word ptr [rip + col_sep_len]]
	mov	esi, 1
	mov	rcx, r14
	call	fwrite_unlocked
.label_106:
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	esi, 1
	mov	rcx, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	fwrite_unlocked
.label_107:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402210

	.globl check_order
	.type check_order, @function
check_order:
	push	rbp
	push	rbx
	push	rax
	mov	eax,  dword ptr [dword ptr [rip + check_input_order]]
	cmp	eax, 1
	je	.label_113
	cmp	eax, 2
	je	.label_111
	cmp	byte ptr [byte ptr [rip + seen_unpairable]],  1
	jne	.label_111
.label_113:
	movsxd	rbx, edx
	cmp	byte ptr [byte ptr [rbx + seen_unpairable]],  0
	jne	.label_111
	mov	rax, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rdi + 0x10]
	dec	rax
	mov	rcx, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	dec	rcx
	cmp	byte ptr [byte ptr [rip + hard_LC_COLLATE]],  0
	je	.label_115
	mov	rsi, rax
	call	xmemcoll
	jmp	.label_112
.label_115:
	mov	rsi, rax
	call	memcmp2
.label_112:
	test	eax, eax
	jle	.label_111
	xor	ebp, ebp
	cmp	dword ptr [dword ptr [rip + check_input_order]],  1
	sete	bpl
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_114
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, ebp
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
	mov	byte ptr [byte ptr [rbx + seen_unpairable]],  1
.label_111:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4022b0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022c0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

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
	mov	edx, OFFSET FLAT:label_71
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
	#Procedure 0x402390

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023a0

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_122
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_122:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023c0

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
	je	.label_123
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_127
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_124
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_125
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_123
.label_125:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_126
.label_127:
	mov	rax, rbx
	jmp	.label_123
.label_124:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_126:
	xor	eax, eax
.label_123:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402450

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_129
	cmp	byte ptr [rax], 0x43
	jne	.label_131
	cmp	byte ptr [rax + 1], 0
	je	.label_128
.label_131:
	mov	esi, OFFSET FLAT:label_130
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_129
.label_128:
	xor	ebx, ebx
.label_129:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402490

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_132:
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
	ja	.label_132
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4024e0

	.globl initbuffer
	.type initbuffer, @function
initbuffer:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi], xmm0
	mov	qword ptr [rdi + 0x10], 0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4024f0
	.globl readlinebuffer
	.type readlinebuffer, @function
readlinebuffer:

	mov	edx, 0xa
	jmp	readlinebuffer_delim
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402500

	.globl readlinebuffer_delim
	.type readlinebuffer_delim, @function
readlinebuffer_delim:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 8], edx
	mov	r13, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	r15, qword ptr [r14 + 0x10]
	mov	rdi, r13
	call	feof_unlocked
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x10], rcx
	test	eax, eax
	jne	.label_135
	add	rbx, r15
	mov	eax, dword ptr [rsp + 8]
	movsx	eax, al
	mov	dword ptr [rsp + 0xc], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, r15
	nop	
.label_134:
	mov	rdi, r13
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_136
	cmp	r12, r15
	je	.label_135
	mov	rdi, r13
	call	ferror_unlocked
	test	eax, eax
	jne	.label_135
	mov	eax, dword ptr [rsp + 8]
	cmp	byte ptr [r12 - 1], al
	mov	ebp, dword ptr [rsp + 0xc]
	je	.label_133
.label_136:
	cmp	r12, rbx
	jne	.label_137
	mov	r12, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, r14
	call	x2realloc
	mov	r15, rax
	add	r12, r15
	mov	qword ptr [r14 + 0x10], r15
	mov	rbx, r15
	add	rbx, qword ptr [r14]
.label_137:
	mov	byte ptr [r12], bpl
	inc	r12
	cmp	ebp, dword ptr [rsp + 0xc]
	jne	.label_134
.label_133:
	sub	r12, r15
	mov	qword ptr [r14 + 8], r12
	mov	qword ptr [rsp + 0x10], r14
.label_135:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4025d0
	.globl freebuffer
	.type freebuffer, @function
freebuffer:

	mov	rdi, qword ptr [rdi + 0x10]
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025e0

	.globl memcmp2
	.type memcmp2, @function
memcmp2:
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	rbx, rsi
	cmp	rbx, r14
	mov	rax, r14
	cmovbe	rax, rbx
	mov	rsi, rdx
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	mov	ecx, eax
	jne	.label_139
	mov	ecx, 0xffffffff
	cmp	rbx, r14
	jae	.label_138
.label_139:
	mov	eax, ecx
	jmp	.label_140
.label_138:
	mov	ecx, 1
	cmova	eax, ecx
.label_140:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402630

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_144
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_143
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_141
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_143
	mov	esi, OFFSET FLAT:label_146
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_142
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_142:
	mov	rbx, r14
.label_143:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_144:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_145
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4026e0
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
	#Procedure 0x402720
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
	#Procedure 0x402730
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
	#Procedure 0x402740

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
	#Procedure 0x402780
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
	#Procedure 0x4027a0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_147
	test	rdx, rdx
	je	.label_147
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_147:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4027d0
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
	#Procedure 0x402850

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
.label_203:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_208
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_213]]
.label_516:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_218
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_154
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_517:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_229
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_229
	xor	r14d, r14d
.label_240:
	cmp	r14, r11
	jae	.label_237
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_237:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_240
.label_229:
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
	jmp	.label_155
.label_509:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_155
.label_512:
	mov	al, 1
.label_510:
	mov	r12b, 1
.label_513:
	test	r12b, 1
	mov	cl, 1
	je	.label_255
	mov	ecx, eax
.label_255:
	mov	al, cl
.label_511:
	test	r12b, 1
	jne	.label_258
	test	r11, r11
	je	.label_261
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_261:
	mov	r14d, 1
	jmp	.label_151
.label_258:
	xor	r14d, r14d
.label_151:
	mov	ecx, OFFSET FLAT:label_154
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_155
.label_514:
	test	r12b, 1
	jne	.label_164
	test	r11, r11
	je	.label_166
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_166:
	mov	r14d, 1
	jmp	.label_170
.label_515:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_155
.label_164:
	xor	r14d, r14d
.label_170:
	mov	eax, OFFSET FLAT:label_172
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_155:
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
	jmp	.label_185
	nop	dword ptr [rax]
.label_238:
	inc	rsi
.label_185:
	cmp	rbp, -1
	je	.label_221
	cmp	rsi, rbp
	jne	.label_223
	jmp	.label_225
	nop	word ptr cs:[rax + rax]
.label_221:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_225
.label_223:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_232
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_186
	cmp	rbp, -1
	jne	.label_186
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
.label_186:
	cmp	rbx, rbp
	jbe	.label_242
.label_232:
	xor	r8d, r8d
.label_153:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_244
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_249]]
.label_486:
	test	rsi, rsi
	jne	.label_152
	jmp	.label_178
	nop	
.label_242:
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
	jne	.label_149
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_153
	jmp	.label_165
.label_149:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_153
.label_490:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_174
	test	rsi, rsi
	jne	.label_175
	cmp	rbp, 1
	je	.label_178
	xor	r13d, r13d
	jmp	.label_167
.label_479:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_182
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
	cmp	r12d, 2
	jne	.label_184
	mov	eax, r9d
	and	al, 1
	jne	.label_184
	cmp	r14, r11
	jae	.label_210
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_210:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_191
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_191:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_197
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_197:
	add	r14, 3
	mov	r9b, 1
.label_184:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_226
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_226:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_207
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_207
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_207
	cmp	r14, r11
	jae	.label_196
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_196:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_214
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_214:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_167
.label_480:
	mov	bl, 0x62
	jmp	.label_228
.label_481:
	mov	cl, 0x74
	jmp	.label_231
.label_482:
	mov	bl, 0x76
	jmp	.label_228
.label_483:
	mov	bl, 0x66
	jmp	.label_228
.label_484:
	mov	cl, 0x72
	jmp	.label_231
.label_487:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_236
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
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
	jae	.label_241
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_241:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_250
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_250:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_253
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	add	r14, 3
	xor	r9d, r9d
.label_236:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_167
.label_488:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_262
	cmp	r12d, 2
	jne	.label_152
	cmp	byte ptr [rsp + 7], 0
	je	.label_152
	jmp	.label_159
.label_489:
	cmp	r12d, 2
	jne	.label_161
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_173
.label_244:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_251
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
.label_171:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_183
	test	r8b, r8b
	je	.label_183
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_167
.label_174:
	test	rsi, rsi
	jne	.label_202
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_202
.label_178:
	mov	dl, 1
.label_485:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_159
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_167:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_215
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_216
	jmp	.label_219
	nop	word ptr cs:[rax + rax]
.label_215:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_219
.label_216:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_222
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_173
	jmp	.label_206
	nop	dword ptr [rax]
.label_219:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_206
	jmp	.label_173
.label_222:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_206
.label_182:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_238
	xor	r15d, r15d
	jmp	.label_152
.label_161:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_231
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_173
.label_231:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_159
.label_228:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_167
	nop	word ptr cs:[rax + rax]
.label_206:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
	cmp	r12d, 2
	jne	.label_256
	mov	eax, r9d
	and	al, 1
	jne	.label_256
	cmp	r14, r11
	jae	.label_259
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_259:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_162
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_162:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_157
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_157:
	add	r14, 3
	mov	r9b, 1
.label_256:
	cmp	r14, r11
	jae	.label_163
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_163:
	inc	r14
	jmp	.label_168
.label_251:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_246
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_246:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_260:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_190
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_194
	cmp	rbp, -2
	je	.label_198
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_200
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_204:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_235
	bt	rsi, rdx
	jb	.label_165
.label_235:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_204
.label_200:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_224
	xor	r13d, r13d
.label_224:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_260
	jmp	.label_171
.label_207:
	xor	r13d, r13d
	jmp	.label_167
.label_202:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_167
.label_262:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_152
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_152
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_152
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_160
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_179
	cmp	byte ptr [rsp + 7], 0
	jne	.label_159
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_247
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_247:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_150
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_150:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_156
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_156:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_167
.label_152:
	xor	eax, eax
.label_175:
	xor	r13d, r13d
	jmp	.label_167
.label_183:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_239:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_169:
	test	r8b, r8b
	je	.label_176
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_177
	cmp	r14, r11
	jae	.label_180
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_180:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_177
	nop	dword ptr [rax]
.label_176:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_165
	cmp	r12d, 2
	jne	.label_189
	mov	eax, r9d
	and	al, 1
	jne	.label_189
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_205:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_201
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_201:
	add	r14, 3
	mov	r9b, 1
.label_189:
	cmp	r14, r11
	jae	.label_243
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_243:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_211
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_211:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_187
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_187:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_177:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_173
	test	r9b, 1
	je	.label_220
	mov	ebx, eax
	and	bl, 1
	jne	.label_220
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_233
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_233:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_195
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_195:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_220:
	cmp	r14, r11
	jae	.label_239
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_239
	nop	word ptr cs:[rax + rax]
.label_173:
	test	r9b, 1
	je	.label_245
	and	al, 1
	jne	.label_245
	cmp	r14, r11
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_192:
	add	r14, 2
	xor	r9d, r9d
.label_245:
	mov	ebx, r15d
.label_168:
	cmp	r14, r11
	jae	.label_254
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_254:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_238
.label_194:
	xor	r13d, r13d
.label_190:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_171
.label_198:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_158
	mov	rsi, qword ptr [rsp + 0x50]
.label_234:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_217
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_234
	xor	r13d, r13d
	jmp	.label_171
.label_158:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_171
.label_217:
	xor	r13d, r13d
	jmp	.label_171
.label_160:
	xor	r13d, r13d
	jmp	.label_167
.label_179:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_167
	nop	dword ptr [rax + rax]
.label_225:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_181
	or	dl, al
	je	.label_165
.label_181:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_188
	or	dl, al
	jne	.label_188
	test	r10b, 1
	jne	.label_199
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_188
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_203
.label_188:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_209
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_212
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_212
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_230:
	cmp	r14, r11
	jae	.label_227
	mov	byte ptr [rcx + r14], al
.label_227:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_230
	jmp	.label_212
.label_159:
	mov	qword ptr [rsp + 0x20], rbp
.label_165:
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
.label_257:
	mov	r14, rax
.label_148:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_199:
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
	jmp	.label_257
.label_209:
	mov	rcx, qword ptr [rsp + 8]
.label_212:
	cmp	r14, r11
	jae	.label_148
	mov	byte ptr [rcx + r14], 0
	jmp	.label_148
.label_208:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403610
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
	#Procedure 0x403620

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
	je	.label_263
	mov	qword ptr [rax], rbx
.label_263:
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
	#Procedure 0x403710
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_264
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_267:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_267
.label_264:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_268
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_265]], OFFSET FLAT:slot0
.label_268:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_266
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_266:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4037c0

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
	js	.label_269
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_272
	cmp	r12d, 0x7fffffff
	je	.label_274
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
	jne	.label_270
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_270:
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
.label_272:
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
	jbe	.label_275
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_271
.label_275:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_273
	mov	rdi, r14
	call	free
.label_273:
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
.label_271:
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
.label_269:
	call	abort
.label_274:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403980

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403990
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
	#Procedure 0x4039a0
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
	#Procedure 0x4039b0

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
	#Procedure 0x4039f0

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
	je	.label_276
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
.label_276:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a50

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
	#Procedure 0x403a90
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
	#Procedure 0x403ab0
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
	#Procedure 0x403ad0

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
	mov	rcx,  qword ptr [word ptr [rip + label_277]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_279]]
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
	#Procedure 0x403b40

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
	#Procedure 0x403b50

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b60
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b70

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
	#Procedure 0x403bc0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403bd0

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
	mov	rax,  qword ptr [word ptr [rip + label_277]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_278]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_279]]
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
	#Procedure 0x403c40
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
	#Procedure 0x403c60
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
	#Procedure 0x403c80

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c90
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
	#Procedure 0x403ca0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0

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
	#Procedure 0x403cc0

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
	jne	.label_285
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
	je	.label_281
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_286
	mov	eax, OFFSET FLAT:label_287
	jmp	.label_284
.label_281:
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
	je	.label_280
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_282
	mov	eax, OFFSET FLAT:label_283
	jmp	.label_284
.label_280:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_172
	mov	eax, OFFSET FLAT:label_154
.label_284:
	cmove	rax, rcx
.label_285:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403d80

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
	je	.label_288
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_290
	jmp	.label_289
.label_288:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_289
.label_290:
	mov	eax, 1
	test	bpl, bpl
	je	.label_289
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
.label_289:
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
	#Procedure 0x403e00

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
	je	.label_293
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_291
	jmp	.label_292
.label_293:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_292
.label_291:
	mov	eax, 1
	test	bpl, bpl
	je	.label_292
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
.label_292:
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
	#Procedure 0x403e90

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
	je	.label_294
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_296
	jmp	.label_295
.label_294:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_295
.label_296:
	mov	eax, 1
	test	bpl, bpl
	je	.label_295
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
.label_295:
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
	#Procedure 0x403f10

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
	je	.label_299
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_298
	jmp	.label_297
.label_299:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_297
.label_298:
	mov	eax, 1
	test	bpl, bpl
	je	.label_297
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
.label_297:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403f80

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
	je	.label_302
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_300
	jmp	.label_301
.label_302:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_301
.label_300:
	mov	eax, 1
	test	bpl, bpl
	je	.label_301
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_301:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403fe0

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
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_305
	jmp	.label_304
.label_303:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_304
.label_305:
	mov	eax, 1
	test	bpl, bpl
	je	.label_304
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_304:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404030

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
	je	.label_308
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_307
	jmp	.label_306
.label_308:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_306
.label_307:
	mov	eax, 1
	test	bpl, bpl
	je	.label_306
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_306:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404080

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_311
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_310
	jmp	.label_309
.label_311:
	mov	eax, 1
	test	cl, cl
	je	.label_309
.label_310:
	xor	eax, eax
.label_309:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4040b0

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
	#Procedure 0x4040c0

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
	je	.label_312
	mov	edx, OFFSET FLAT:label_322
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_328
.label_312:
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_328:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
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
	mov	esi, OFFSET FLAT:label_330
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_317
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_318]]
.label_467:
	add	rsp, 8
	jmp	.label_316
.label_317:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_325
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
	jmp	.label_316
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
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
.label_469:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
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
.label_471:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_320
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
	jmp	.label_316
.label_472:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_319
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
	jmp	.label_316
.label_473:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
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
	jmp	.label_316
.label_474:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_324
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
	jmp	.label_316
.label_476:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
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
	jmp	.label_316
.label_475:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
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
.label_316:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404420
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_331:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_331
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_333:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_332
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_334
	nop	dword ptr [rax]
.label_332:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_334:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_335
	inc	r9
	cmp	r9, 0xa
	jb	.label_333
.label_335:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4044b0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_336
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_336:
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
	#Procedure 0x404540
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_338
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_26
	mov	ecx, OFFSET FLAT:label_27
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045c0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_341
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_341:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_342
	test	rax, rax
	je	.label_343
.label_342:
	pop	rbx
	ret	
.label_343:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404610
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_344
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_344:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404640

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_345
	test	rbx, rbx
	jne	.label_345
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_345:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_347
	test	rax, rax
	je	.label_346
.label_347:
	pop	rbx
	ret	
.label_346:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x404670

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_348
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_351
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_349
.label_348:
	test	rcx, rcx
	jne	.label_352
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_352:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_350
.label_349:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_351:
	call	xalloc_die
.label_350:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404700

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710
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
	#Procedure 0x404740
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_353
	call	rpl_calloc
	test	rax, rax
	je	.label_353
	pop	rcx
	ret	
.label_353:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404770

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
	#Procedure 0x4047a0
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
	#Procedure 0x4047c0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_71
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4047f0

	.globl xmemcoll
	.type xmemcoll, @function
xmemcoll:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	call	memcoll
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_355
	mov	rsi, rbx
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, r14
	call	collate_error
.label_355:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404840

	.globl collate_error
	.type collate_error, @function
collate_error:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	qword ptr [rsp], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	ebp, edi
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_356
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_357
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	xor	edi, edi
	mov	esi, 8
	mov	rdx, r13
	mov	rcx, r12
	call	quotearg_n_style_mem
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 8
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp]
	call	quotearg_n_style_mem
	mov	rbx, rax
	xor	esi, esi
	xor	eax, eax
	mov	edi, r14d
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	error
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404910
	.globl xmemcoll0
	.type xmemcoll0, @function
xmemcoll0:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	call	memcoll0
	mov	ebp, eax
	call	__errno_location
	mov	edi, dword ptr [rax]
	test	edi, edi
	je	.label_359
	dec	rbx
	dec	r15
	mov	rsi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	r8, r15
	call	collate_error
.label_359:
	mov	eax, ebp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404960

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_360
	test	rsi, rsi
	mov	ecx, 1
	je	.label_361
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_361
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_360:
	mov	ecx, 1
.label_361:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4049b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_362
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_364
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_362
.label_364:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_362
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_363
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_363:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_362:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a30

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_371
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_371:
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
	ja	.label_365
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_375
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_373
	test	esi, esi
	jne	.label_365
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_376
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_368
.label_365:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_366
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_373
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_378
.label_375:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_373:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_369
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_372
.label_369:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_372:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_378:
	cmp	eax, 6
	jne	.label_366
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_367
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_370
.label_366:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_374
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_377
.label_376:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_368:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_367:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_370:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_374:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_377:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bf0

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
	#Procedure 0x404c00

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_379
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_381
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_381
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_382
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_383
.label_381:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_383
.label_379:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_383:
	test	ebx, ebx
	js	.label_382
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_382
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_380
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_382
.label_380:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_382:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_384
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_384
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_384:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d00

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_385
	ret	
.label_385:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

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
	jne	.label_386
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_386
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_387
.label_386:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_387:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_388
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_388:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	je	.label_389
	cmp	r15, -2
	jb	.label_389
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_389
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_389:
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
	#Procedure 0x404df0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_390
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_390
.label_391:
	ret	
.label_390:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_391
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e20
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_392
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_392:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404e40
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e50
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
	#Procedure 0x404e60
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_393
.label_394:
	ret	
.label_393:
	cmp	edi, 0x7f
	je	.label_394
	xor	eax, eax
	jmp	.label_394
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e80
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
	#Procedure 0x404e90
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
	#Procedure 0x404ea0
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
	#Procedure 0x404eb0
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
	#Procedure 0x404ec0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_395
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_396]]
.label_397:
	ret	
.label_395:
	xor	eax, eax
	jmp	.label_397
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ee0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_398
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_398:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f00

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
	#Procedure 0x404f10
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_399
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_399:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404f30
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
	#Procedure 0x404f40
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
	#Procedure 0x404f50

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
	je	.label_401
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_400
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_400
.label_401:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_400
	test	cl, cl
	jne	.label_400
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_400:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404fc0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_32
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_402
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404ff0

	.globl memcoll
	.type memcoll, @function
memcoll:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_403
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_405
.label_403:
	mov	bpl, byte ptr [r12 + rbx]
	mov	r13b, byte ptr [r14 + r15]
	mov	byte ptr [r12 + rbx], 0
	mov	byte ptr [r14 + r15], 0
	lea	rsi, [rbx + 1]
	lea	rcx, [r15 + 1]
	mov	rdi, r12
	mov	rdx, r14
	call	strcoll_loop
	mov	byte ptr [r12 + rbx], bpl
	mov	byte ptr [r14 + r15], r13b
	jmp	.label_404
.label_405:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
.label_404:
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
	#Procedure 0x405070

	.globl strcoll_loop
	.type strcoll_loop, @function
strcoll_loop:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rcx
	mov	r12, rdx
	mov	r15, rsi
	mov	rbx, rdi
	call	__errno_location
	mov	r13, rax
	nop	
.label_407:
	mov	dword ptr [r13], 0
	mov	rdi, rbx
	mov	rsi, r12
	call	strcoll
	test	eax, eax
	jne	.label_406
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	mov	rdi, r12
	call	strlen
	inc	rax
	sub	r14, rax
	sub	r15, rbp
	je	.label_408
	add	r12, rax
	add	rbx, rbp
	mov	eax, 1
	test	r14, r14
	jne	.label_407
	jmp	.label_406
.label_408:
	neg	r14
	sbb	eax, eax
.label_406:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4050f0

	.globl memcoll0
	.type memcoll0, @function
memcoll0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r12, rdi
	cmp	rbx, r15
	jne	.label_409
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbx
	call	memcmp
	test	eax, eax
	je	.label_410
.label_409:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	strcoll_loop
.label_410:
	call	__errno_location
	mov	dword ptr [rax], 0
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section .text
	.align	16
	#Procedure 0x405150

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
