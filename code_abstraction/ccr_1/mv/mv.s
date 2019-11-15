	.section	.text
	.align	16
	#Procedure 0x402990

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
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_9
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
	mov	esi, OFFSET FLAT:label_15
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
	call	emit_backup_suffix_note
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_11:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	#Procedure 0x402ae0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b10

	.globl emit_backup_suffix_note
	.type emit_backup_suffix_note, @function
emit_backup_suffix_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_21
	nop	
.label_34:
	mov	edi, OFFSET FLAT:label_25
	call	strcmp
	test	eax, eax
	je	.label_32
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_34
.label_32:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_25
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_26
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
	je	.label_22
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_25
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
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
	#Procedure 0x402c80

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	rbx, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_30
	call	setlocale
	mov	edi, OFFSET FLAT:label_72
	mov	esi, OFFSET FLAT:label_73
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_72
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdin
	call	atexit
	lea	rdi, [rsp + 0x18]
	call	cp_option_init
	call	priv_set_remove_linkdir
	xor	r13d, r13d
	mov	r14d, 0xf000
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r12d, r12d
	xor	ecx, ecx
	jmp	.label_58
.label_51:
	mov	cl, r15b
.label_58:
	mov	r15d, ecx
	mov	edx, OFFSET FLAT:label_35
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x52
	jle	.label_43
	add	eax, -0x53
	cmp	eax, 0x2d
	ja	.label_45
	mov	cl, 1
	jmp	qword ptr [word ptr [+ (rax * 8) + label_47]]
.label_1814:
	mov	r13b, 1
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_51
.label_1815:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	r13b, 1
	mov	cl, r15b
	jmp	.label_58
.label_1816:
	mov	dword ptr [rsp + 0x20], 1
	mov	cl, r15b
	jmp	.label_58
.label_1817:
	mov	dword ptr [rsp + 0x20], 3
	mov	cl, r15b
	jmp	.label_58
.label_1819:
	test	r12, r12
	jne	.label_65
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsp + 0x68]
	call	stat
	test	eax, eax
	jne	.label_69
	mov	eax, dword ptr [rsp + 0x80]
	and	eax, r14d
	cmp	eax, 0x4000
	jne	.label_70
	mov	r12,  qword ptr [word ptr [rip + optarg]]
	mov	cl, r15b
	jmp	.label_58
.label_1820:
	mov	byte ptr [rsp + 0x45], 1
	mov	cl, r15b
	jmp	.label_58
.label_1821:
	mov	byte ptr [rsp + 0x46], 1
	mov	cl, r15b
	jmp	.label_58
.label_1822:
	mov	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	mov	cl, r15b
	jmp	.label_58
.label_1818:
	mov	dword ptr [rsp + 0x20], 2
	mov	cl, r15b
	jmp	.label_58
.label_43:
	cmp	eax, -1
	jne	.label_37
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	movsxd	rbp, ebp
	sub	rbp, rax
	lea	r14, [rbx + rax*8]
	xor	eax, eax
	test	r12, r12
	sete	al
	cmp	ebp, eax
	jle	.label_39
	test	r15b, r15b
	je	.label_44
	test	r12, r12
	jne	.label_50
	xor	r12d, r12d
	cmp	ebp, 3
	jl	.label_46
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_53
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x10]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_44:
	test	r12, r12
	jne	.label_46
	cmp	ebp, 1
	jle	.label_66
	cmp	ebp, 2
	jne	.label_67
	mov	rsi, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	call	renameatu
	xor	ecx, ecx
	test	eax, eax
	je	.label_74
	call	__errno_location
	mov	ecx, dword ptr [rax]
.label_74:
	mov	dword ptr [rsp + 0x4c], ecx
.label_67:
	cmp	dword ptr [rsp + 0x4c], 0
	je	.label_76
	mov	rdi, qword ptr [r14 + rbp*8 - 8]
	call	target_directory_operand
	test	al, al
	je	.label_76
	mov	dword ptr [rsp + 0x4c], 0xffffffff
	mov	r12, qword ptr [r14 + rbp*8 - 8]
	dec	rbp
	jmp	.label_46
.label_76:
	cmp	ebp, 3
	jge	.label_82
.label_46:
	cmp	dword ptr [rsp + 0x20], 2
	jne	.label_83
	mov	byte ptr [rsp + 0x45], 0
.label_83:
	test	r13b, r13b
	je	.label_36
	cmp	dword ptr [rsp + 0x20], 2
	je	.label_38
.label_36:
	xor	eax, eax
	test	r13b, r13b
	je	.label_40
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_42
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, qword ptr [rsp + 8]
	call	xget_version
.label_40:
	mov	dword ptr [rsp + 0x18], eax
	mov	rdi, qword ptr [rsp + 0x10]
	call	set_simple_backup_suffix
	call	hash_init
	test	r12, r12
	je	.label_54
	cmp	ebp, 2
	jl	.label_55
	lea	rdi, [rsp + 0x18]
	call	dest_info_init
	jmp	.label_57
.label_54:
	mov	byte ptr [rsp + 0x49], 1
	mov	rdi, qword ptr [r14]
	mov	rsi, qword ptr [r14 + 8]
	lea	rcx, [rsp + 0x18]
	xor	edx, edx
	call	movefile
	mov	ebx, eax
	jmp	.label_63
.label_55:
	mov	bl, 1
	cmp	ebp, 1
	jne	.label_63
.label_57:
	mov	ebp, ebp
	mov	bl, 1
	lea	r15, [rsp + 0x18]
	nop	dword ptr [rax]
.label_71:
	cmp	rbp, 1
	sete	byte ptr [rsp + 0x49]
	mov	rdi, qword ptr [r14]
	mov	edx, 1
	mov	rsi, r12
	mov	rcx, r15
	call	movefile
	and	bl, al
	add	r14, 8
	dec	rbp
	test	ebp, ebp
	jne	.label_71
.label_63:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_37:
	cmp	eax, 0xffffff7d
	je	.label_77
	cmp	eax, 0xffffff7e
	jne	.label_45
	xor	edi, edi
	call	usage
.label_77:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_25
	mov	edx, OFFSET FLAT:label_23
	mov	r8d, OFFSET FLAT:label_79
	mov	r9d, OFFSET FLAT:label_80
	mov	eax, 0
	push	0
	push	OFFSET FLAT:label_81
	call	version_etc
	add	rsp, 0x10
	xor	edi, edi
	call	exit
.label_45:
	mov	edi, 1
	call	usage
.label_65:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_48
	jmp	.label_49
.label_69:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_70:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
.label_68:
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_39:
	xor	edi, edi
	test	ebp, ebp
	jg	.label_75
	mov	esi, OFFSET FLAT:label_59
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
.label_38:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_78
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
	mov	esi, OFFSET FLAT:label_41
.label_49:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_75:
	mov	esi, OFFSET FLAT:label_56
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_66:
	mov	edi, OFFSET FLAT:label_60
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 0x1c9
	mov	ecx, OFFSET FLAT:label_62
	call	__assert_fail
.label_82:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_64
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax, ebp
	mov	rsi, qword ptr [r14 + rax*8 - 8]
	jmp	.label_68
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031b0

	.globl cp_option_init
	.type cp_option_init, @function
cp_option_init:
	push	rbx
	mov	rbx, rdi
	call	cp_options_default
	mov	byte ptr [rbx + 0x14], 0
	mov	dword ptr [rbx + 0x38], 1
	mov	dword ptr [rbx + 4], 2
	mov	byte ptr [rbx + 0x15], 0
	mov	byte ptr [rbx + 0x16], 0
	mov	byte ptr [rbx + 0x17], 0
	mov	dword ptr [rbx + 8], 4
	mov	byte ptr [rbx + 0x18], 1
	mov	byte ptr [rbx + 0x19], 0
	mov	byte ptr [rbx + 0x1c], 0
	mov	byte ptr [rbx + 0x1d], 1
	mov	byte ptr [rbx + 0x22], 1
	mov	byte ptr [rbx + 0x1e], 1
	mov	byte ptr [rbx + 0x1f], 1
	mov	byte ptr [rbx + 0x20], 0
	mov	byte ptr [rbx + 0x25], 0
	mov	byte ptr [rbx + 0x21], 0
	mov	byte ptr [rbx + 0x29], 0
	mov	byte ptr [rbx + 0x23], 1
	mov	byte ptr [rbx + 0x24], 0
	mov	byte ptr [rbx + 0x26], 0
	mov	byte ptr [rbx + 0x27], 1
	mov	byte ptr [rbx + 0x28], 0
	mov	byte ptr [rbx + 0x2a], 1
	mov	dword ptr [rbx + 0xc], 2
	mov	byte ptr [rbx + 0x2c], 0
	mov	byte ptr [rbx + 0x2b], 0
	mov	dword ptr [rbx + 0x10], 0
	xor	edi, edi
	call	isatty
	test	eax, eax
	setne	byte ptr [rbx + 0x2f]
	mov	byte ptr [rbx + 0x30], 0
	mov	byte ptr [rbx + 0x2d], 0
	mov	byte ptr [rbx + 0x2e], 0
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260

	.globl target_directory_operand
	.type target_directory_operand, @function
target_directory_operand:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	call	stat
	test	eax, eax
	je	.label_87
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 2
	je	.label_84
	test	ebp, ebp
	jne	.label_85
.label_87:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x4000
	sete	al
	jmp	.label_86
.label_84:
	xor	eax, eax
.label_86:
	add	rsp, 0x90
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_52
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl movefile
	.type movefile, @function
movefile:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [byte ptr [rip + remove_trailing_slashes]],  1
	jne	.label_89
	mov	rdi, rbx
	call	strip_trailing_slashes
.label_89:
	test	bpl, bpl
	je	.label_90
	mov	rdi, rbx
	call	last_component
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, rax
	call	file_name_concat
	mov	rbp, rax
	mov	rdi, rbp
	call	strip_trailing_slashes
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r14
	call	do_move
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	jmp	.label_88
.label_90:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	do_move
	mov	ebx, eax
.label_88:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403370

	.globl do_move
	.type do_move, @function
do_move:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r15, rdx
	mov	r14, rdi
	lea	r8, [rsp + 0xf]
	lea	r9, [rsp + 0xe]
	xor	edx, edx
	mov	rcx, r15
	call	copy
	mov	bl, al
	test	bl, bl
	je	.label_91
	cmp	byte ptr [rsp + 0xf], 0
	jne	.label_95
	test	r14, r14
	je	.label_91
	mov	al, byte ptr [rsp + 0xe]
	test	al, al
	jne	.label_91
	lea	r12, [rsp + 0x28]
	mov	rdi, r12
	call	rm_option_init
	mov	al, byte ptr [r15 + 0x2e]
	mov	byte ptr [rsp + 0x42], al
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	rm
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jb	.label_91
	cmp	eax, 4
	jne	.label_92
.label_95:
	xor	ebx, ebx
.label_91:
	mov	eax, ebx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_92:
	mov	edi, OFFSET FLAT:label_93
	mov	esi, OFFSET FLAT:label_61
	mov	edx, 0xef
	mov	ecx, OFFSET FLAT:label_94
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403420

	.globl rm_option_init
	.type rm_option_init, @function
rm_option_init:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	byte ptr [rbx], 0
	mov	byte ptr [rbx + 0xa], 1
	mov	byte ptr [rbx + 9], 1
	mov	byte ptr [rbx + 8], 0
	mov	dword ptr [rbx + 4], 5
	mov	word ptr [rbx + 0x19], 0
	mov	byte ptr [rbx + 0x1b], 1
	mov	edi, OFFSET FLAT:rm_option_init.dev_ino_buf
	call	get_root_dev_ino
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_96
	mov	byte ptr [rbx + 0x18], 0
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_96:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_97
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_98
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
	#Procedure 0x4034b0

	.globl rm
	.type rm, @function
rm:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	ebp, 2
	cmp	qword ptr [rdi], 0
	je	.label_99
	cmp	byte ptr [r14 + 8], 0
	mov	eax, 0x218
	mov	esi, 0x258
	cmove	esi, eax
	xor	edx, edx
	call	xfts_open
	mov	rbx, rax
	mov	eax, 2
	nop	word ptr [rax + rax]
.label_106:
	mov	ebp, eax
.label_101:
	mov	rdi, rbx
	call	rpl_fts_read
	test	rax, rax
	je	.label_104
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, r14
	call	rm_fts
	lea	ecx, [rax - 2]
	cmp	ecx, 2
	jae	.label_100
	cmp	ebp, 2
	jne	.label_101
	cmp	eax, 3
	jne	.label_101
	jmp	.label_106
	nop	word ptr cs:[rax + rax]
.label_100:
	cmp	eax, 4
	mov	eax, 4
	je	.label_106
	mov	edi, OFFSET FLAT:label_107
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 0x261
	mov	ecx, OFFSET FLAT:label_109
	call	__assert_fail
.label_104:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	r14d, r14d
	je	.label_102
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_102:
	mov	rdi, rbx
	call	rpl_fts_close
	test	eax, eax
	je	.label_99
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_103
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	mov	ebp, 4
.label_99:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035d0

	.globl rm_fts
	.type rm_fts, @function
rm_fts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r12, rdx
	mov	r15, rsi
	mov	r14, rdi
	movzx	eax, word ptr [r15 + 0x70]
	dec	eax
	movzx	eax, ax
	cmp	eax, 0xc
	ja	.label_144
	jmp	qword ptr [word ptr [+ (rax * 8) + label_145]]
.label_1735:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_110
	cmp	byte ptr [r12 + 0xa], 0
	je	.label_113
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	call	is_empty_dir
	test	al, al
	je	.label_113
.label_110:
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_119
	mov	rdi, qword ptr [r15 + 0x30]
	call	last_component
	mov	rdi, rax
	call	dot_or_dotdot
	test	al, al
	je	.label_123
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_124
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp], rax
	mov	ebp, 4
	xor	edi, edi
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_128
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_137
	call	quotearg_n_style
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	mov	edi, 2
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp]
	mov	rcx, r13
	mov	r8, r12
	mov	r9, rbx
	call	error
	jmp	.label_139
.label_1736:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_142
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_133
.label_1737:
	cmp	byte ptr [r12 + 8], 0
	je	.label_111
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_111
	mov	rax, qword ptr [r15 + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_114
.label_111:
	movzx	ebx, word ptr [r15 + 0x70]
	or	ebx, 2
	xor	edx, edx
	cmp	ebx, 6
	sete	dl
	mov	r8d, 3
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_122
	movzx	eax, bx
	xor	ecx, ecx
	cmp	eax, 6
	sete	cl
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	excise
.label_1738:
	mov	ebx, dword ptr [r15 + 0x40]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_143
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_133:
	call	error
.label_120:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
	mov	ebp, 4
	jmp	.label_122
.label_113:
	cmp	byte ptr [r12 + 0xa], 0
	mov	eax, 0x27
	mov	ebx, 0x15
	cmovne	ebx, eax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r12
	call	error
	jmp	.label_115
.label_114:
	mov	rdi, r15
	call	mark_ancestor_dirs
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	ebp, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_122
.label_123:
	mov	rax, qword ptr [r12 + 0x10]
	test	rax, rax
	je	.label_127
	mov	rcx, qword ptr [r15 + 0x80]
	cmp	rcx, qword ptr [rax]
	jne	.label_127
	mov	rcx, qword ptr [r15 + 0x78]
	cmp	rcx, qword ptr [rax + 8]
	jne	.label_127
	mov	rax, qword ptr [r15 + 0x38]
	cmp	byte ptr [rax], 0x2f
	jne	.label_130
	cmp	byte ptr [rax + 1], 0
	je	.label_131
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	rbp, rax
	mov	edi, 1
	mov	esi, 4
	mov	edx, OFFSET FLAT:label_98
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_125
	jmp	.label_126
.label_127:
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_119
	mov	rdi, qword ptr [r15 + 0x30]
	mov	esi, OFFSET FLAT:label_137
	xor	edx, edx
	call	file_name_concat
	mov	rbp, rax
	test	rbp, rbp
	je	.label_112
	lea	rsi, [rsp + 8]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_117
.label_112:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_118
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbp
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx, qword ptr [r15 + 0x30]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rdi, rbp
	call	free
	jmp	.label_120
.label_117:
	mov	rdi, rbp
	call	free
	mov	rax, qword ptr [r14 + 0x18]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_132
.label_119:
	lea	r9, [rsp + 8]
	mov	edx, 1
	mov	r8d, 2
	mov	rdi, r14
	mov	rsi, r15
	mov	rcx, r12
	call	prompt
	mov	ebp, eax
	cmp	ebp, 2
	jne	.label_138
	cmp	dword ptr [rsp + 8], 4
	jne	.label_138
	mov	ecx, 1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r12
	call	excise
	mov	ebp, eax
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_138:
	cmp	ebp, 2
	je	.label_122
.label_115:
	mov	rdi, r15
	call	mark_ancestor_dirs
.label_139:
	mov	rdi, r14
	mov	rsi, r15
	call	fts_skip_tree
.label_122:
	mov	eax, ebp
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_116
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_121
.label_126:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_120
.label_131:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r15 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	jmp	.label_135
.label_144:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_136
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	movzx	ebp, word ptr [r15 + 0x70]
	mov	rdx, qword ptr [r15 + 0x38]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	r9d, OFFSET FLAT:label_141
	xor	eax, eax
	mov	rdx, r14
	mov	ecx, ebp
	mov	r8, rbx
	call	error
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl is_empty_dir
	.type is_empty_dir, @function
is_empty_dir:
	push	rbp
	push	r14
	push	rbx
	xor	ebx, ebx
	mov	edx, 0x30900
	xor	eax, eax
	call	openat
	mov	ebp, eax
	test	ebp, ebp
	js	.label_146
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_147
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, rbx
	call	readdir_ignoring_dot_and_dotdot
	mov	r14, rax
	mov	ebp, dword ptr [rbp]
	mov	rdi, rbx
	call	closedir
	test	r14, r14
	je	.label_148
	xor	ebx, ebx
	jmp	.label_146
.label_147:
	mov	edi, ebp
	call	close
	xor	ebx, ebx
	jmp	.label_146
.label_148:
	test	ebp, ebp
	sete	bl
.label_146:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403b60

	.globl mark_ancestor_dirs
	.type mark_ancestor_dirs, @function
mark_ancestor_dirs:
	mov	rax, qword ptr [rdi + 8]
	jmp	.label_149
	nop	word ptr cs:[rax + rax]
.label_150:
	mov	qword ptr [rax + 0x20], 1
	mov	rax, qword ptr [rax + 8]
.label_149:
	cmp	qword ptr [rax + 0x58], 0
	js	.label_151
	cmp	qword ptr [rax + 0x20], 0
	je	.label_150
.label_151:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl fts_skip_tree
	.type fts_skip_tree, @function
fts_skip_tree:
	push	rbx
	mov	rbx, rdi
	mov	edx, 4
	call	rpl_fts_set
	mov	rdi, rbx
	pop	rbx
	jmp	rpl_fts_read
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403bb0

	.globl dot_or_dotdot
	.type dot_or_dotdot, @function
dot_or_dotdot:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_152
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
.label_152:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403be0

	.globl prompt
	.type prompt, @function
prompt:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xb8
	mov	r13, r9
	mov	dword ptr [rsp + 0x1c], r8d
	mov	r12, rcx
	mov	r15d, edx
	mov	r14, rsi
	mov	ebp, dword ptr [rdi + 0x2c]
	mov	rbx, qword ptr [r14 + 0x30]
	mov	rax, qword ptr [r14 + 0x38]
	mov	qword ptr [rsp + 0x20], rax
	test	r13, r13
	je	.label_172
	mov	dword ptr [r13], 2
.label_172:
	lea	rdi, [rsp + 0x28]
	call	cache_stat_init
	test	r13, r13
	mov	dword ptr [rsp + 0xc], ebp
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_159
	mov	edi, ebp
	mov	rsi, rbx
	call	is_empty_dir
	mov	bl, al
	movzx	eax, bl
	add	eax, 3
	mov	dword ptr [r13], eax
	jmp	.label_166
.label_159:
	xor	ebx, ebx
.label_166:
	mov	ebp, 3
	cmp	qword ptr [r14 + 0x20], 0
	jne	.label_163
	mov	eax, dword ptr [r12 + 4]
	cmp	eax, 5
	je	.label_158
	xor	r14d, r14d
	cmp	byte ptr [r12], 0
	jne	.label_173
	cmp	eax, 3
	je	.label_176
	cmp	byte ptr [r12 + 0x19], 0
	je	.label_173
.label_176:
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	write_protected_non_symlink
	mov	ebp, eax
	call	__errno_location
	mov	r14d, dword ptr [rax]
	test	ebp, ebp
	jne	.label_156
.label_173:
	cmp	dword ptr [r12 + 4], 3
	mov	ebp, 0
	jne	.label_158
.label_156:
	movzx	r13d, r15b
	shl	r13d, 2
	test	ebp, ebp
	js	.label_164
	xor	r15b, 1
	je	.label_164
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_170
	call	__errno_location
	mov	r15d, dword ptr [rax]
	jmp	.label_160
.label_164:
	mov	r15d, r14d
.label_174:
	mov	r14d, r13d
.label_155:
	mov	r13d, ebp
	test	ebp, ebp
	mov	ebp, 3
	js	.label_160
	mov	eax, r14d
	and	al, 0xf
	cmp	al, 4
	je	.label_153
	cmp	al, 0xa
	jne	.label_154
	cmp	dword ptr [r12 + 4], 3
	je	.label_154
	jmp	.label_158
.label_170:
	mov	r15d, r14d
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	mov	r14d, 0xa
	cmp	eax, 0xa000
	je	.label_155
	cmp	eax, 0x4000
	mov	eax, 4
	cmove	r13d, eax
	jmp	.label_174
.label_153:
	cmp	byte ptr [r12 + 9], 0
	jne	.label_154
	cmp	byte ptr [r12 + 0xa], 0
	mov	r15d, 0x15
	je	.label_160
	mov	eax, ebx
	xor	al, 1
	jne	.label_160
.label_154:
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	r15, rax
	cmp	r14d, 4
	setne	al
	cmp	dword ptr [rsp + 0x1c], 2
	setne	cl
	or	cl, al
	or	bl, cl
	je	.label_175
	lea	rdx, [rsp + 0x28]
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0x10]
	call	cache_fstatat
	test	eax, eax
	je	.label_171
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r15
	call	error
	mov	ebp, 4
	jmp	.label_163
.label_160:
	mov	ebp, 4
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	mov	rcx, rbx
	call	error
	jmp	.label_163
.label_175:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_157
	mov	esi, OFFSET FLAT:label_161
	jmp	.label_162
.label_171:
	mov	r14,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	test	r13d, r13d
	je	.label_167
	mov	esi, OFFSET FLAT:label_168
	jmp	.label_169
.label_157:
	mov	esi, OFFSET FLAT:label_165
.label_162:
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	r8, r15
	call	__fprintf_chk
	jmp	.label_177
.label_167:
	mov	esi, OFFSET FLAT:label_178
.label_169:
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	r12,  qword ptr [word ptr [rip + program_name]]
	lea	rdi, [rsp + 0x28]
	call	file_type
	mov	rbx, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r13
	mov	rcx, r12
	mov	r8, rbx
	mov	r9, r15
	call	__fprintf_chk
.label_177:
	call	yesno
	test	al, al
	je	.label_163
.label_158:
	mov	ebp, 2
.label_163:
	mov	eax, ebp
	add	rsp, 0xb8
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
	#Procedure 0x403ee0

	.globl excise
	.type excise, @function
excise:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, ecx
	mov	r12, rdx
	mov	r14, rsi
	mov	rbp, rdi
	movzx	edx, bl
	shl	edx, 9
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	call	unlinkat
	test	eax, eax
	je	.label_181
	call	__errno_location
	mov	r13, rax
	mov	ebx, dword ptr [r13]
	cmp	ebx, 0x1e
	jne	.label_184
	mov	edi, dword ptr [rbp + 0x2c]
	mov	rsi, qword ptr [r14 + 0x30]
	lea	rdx, [rsp + 8]
	call	lstatat
	test	eax, eax
	je	.label_186
	cmp	dword ptr [r13], 2
	je	.label_189
.label_186:
	mov	dword ptr [r13], 0x1e
.label_189:
	mov	ebx, dword ptr [r13]
.label_184:
	mov	rdi, r12
	mov	esi, ebx
	call	ignorable_missing
	mov	r15d, 2
	test	al, al
	jne	.label_183
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	jne	.label_182
	mov	eax, ebx
	cmp	ebx, 0x27
	ja	.label_182
	movabs	rcx, 0x8000320000
	bt	rcx, rax
	jae	.label_182
	mov	eax, dword ptr [r14 + 0x40]
	cmp	eax, 0xd
	je	.label_180
	cmp	eax, 1
	jne	.label_182
.label_180:
	mov	eax, dword ptr [r14 + 0x40]
	mov	dword ptr [r13], eax
.label_182:
	mov	ebx, dword ptr [r13]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	r15d, 4
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	rdi, r14
	call	mark_ancestor_dirs
	jmp	.label_183
.label_181:
	mov	r15d, 2
	cmp	byte ptr [r12 + 0x1a], 0
	je	.label_183
	xor	edi, edi
	test	bl, bl
	je	.label_185
	mov	esi, OFFSET FLAT:label_187
	jmp	.label_188
.label_185:
	mov	esi, OFFSET FLAT:label_179
.label_188:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi, qword ptr [r14 + 0x38]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_183:
	mov	eax, r15d
	add	rsp, 0x98
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
	#Procedure 0x404050

	.globl readdir_ignoring_dot_and_dotdot
	.type readdir_ignoring_dot_and_dotdot, @function
readdir_ignoring_dot_and_dotdot:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_190:
	mov	rdi, r14
	call	readdir
	mov	rbx, rax
	test	rbx, rbx
	mov	eax, 0
	je	.label_191
	mov	rdi, rbx
	add	rdi, 0x13
	call	dot_or_dotdot
	test	al, al
	mov	rax, rbx
	jne	.label_190
.label_191:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	.section	.text
	.align	16
	#Procedure 0x404090

	.globl cache_stat_init
	.type cache_stat_init, @function
cache_stat_init:
	mov	qword ptr [rdi + 0x30], -1
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040a0

	.globl write_protected_non_symlink
	.type write_protected_non_symlink, @function
write_protected_non_symlink:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdx
	mov	r14, rsi
	mov	ebp, edi
	call	can_write_any_file
	test	al, al
	je	.label_194
	xor	eax, eax
	jmp	.label_192
.label_194:
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, rbx
	call	cache_fstatat
	mov	ecx, eax
	mov	eax, 0xffffffff
	test	ecx, ecx
	jne	.label_192
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_193
	xor	eax, eax
	jmp	.label_192
.label_193:
	mov	edx, 2
	mov	ecx, 0x200
	mov	edi, ebp
	mov	rsi, r14
	call	faccessat
	test	eax, eax
	mov	eax, 0
	je	.label_192
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	ecx, 1
	mov	eax, 0xffffffff
	cmove	eax, ecx
.label_192:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404120

	.globl cache_fstatat
	.type cache_fstatat, @function
cache_fstatat:
	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rbx + 0x30]
	cmp	rcx, -1
	jne	.label_195
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_197
	mov	qword ptr [rbx + 0x30], -2
	call	__errno_location
	movsxd	rax, dword ptr [rax]
	mov	qword ptr [rbx + 8], rax
.label_197:
	mov	rcx, qword ptr [rbx + 0x30]
.label_195:
	xor	eax, eax
	test	rcx, rcx
	jns	.label_196
	mov	ebx, dword ptr [rbx + 8]
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_196:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404170

	.globl ignorable_missing
	.type ignorable_missing, @function
ignorable_missing:
	cmp	byte ptr [rdi], 0
	je	.label_198
	push	rax
	mov	edi, esi
	call	nonexistent_file_errno
	add	rsp, 8
	ret	
.label_198:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404190

	.globl nonexistent_file_errno
	.type nonexistent_file_errno, @function
nonexistent_file_errno:
	mov	al, 1
	cmp	edi, 0x16
	ja	.label_199
	mov	ecx, 0x500004
	bt	ecx, edi
	jb	.label_201
.label_199:
	cmp	edi, 0x54
	jne	.label_200
.label_201:
	ret	
.label_200:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041b0

	.globl set_process_security_ctx
	.type set_process_security_ctx, @function
set_process_security_ctx:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, r8
	mov	r15, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x25], 0
	je	.label_208
	mov	bpl, 1
	cmp	byte ptr [rbx + 0x23], 0
	je	.label_211
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_212
	xor	r15d, r15d
	jmp	.label_210
.label_208:
	cmp	byte ptr [rbx + 0x21], 0
	mov	bl, 1
	je	.label_202
	xor	cl, 1
	jne	.label_202
	call	defaultcon
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	ignorable_ctx_err
	test	al, al
	jne	.label_202
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_204
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r14
	call	error
	jmp	.label_202
.label_211:
	xor	r15d, r15d
	jmp	.label_210
.label_212:
	cmp	byte ptr [rbx + 0x29], 0
	sete	r15b
	xor	ebp, ebp
.label_210:
	lea	rsi, [rsp]
	mov	rdi, r14
	call	lgetfilecon
	test	eax, eax
	js	.label_207
	mov	rdi, qword ptr [rsp]
	call	setfscreatecon
	test	eax, eax
	jns	.label_209
	test	bpl, bpl
	jne	.label_215
	test	r15b, r15b
	je	.label_203
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_203
.label_215:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_205
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rsp]
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_203:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_209
	mov	rdi, qword ptr [rsp]
	call	freecon
	xor	ebx, ebx
	jmp	.label_202
.label_209:
	mov	rdi, qword ptr [rsp]
	call	freecon
	jmp	.label_206
.label_207:
	test	bpl, bpl
	jne	.label_213
	test	r15b, r15b
	je	.label_214
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	jne	.label_214
.label_213:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_216
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
	call	error
.label_214:
	cmp	byte ptr [rbx + 0x26], 0
	je	.label_206
	xor	ebx, ebx
	jmp	.label_202
.label_206:
	mov	bl, 1
.label_202:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl errno_unsupported
	.type errno_unsupported, @function
errno_unsupported:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl defaultcon
	.type defaultcon, @function
defaultcon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404370

	.globl ignorable_ctx_err
	.type ignorable_ctx_err, @function
ignorable_ctx_err:
	cmp	edi, 0x5f
	sete	cl
	cmp	edi, 0x3d
	sete	al
	or	al, cl
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404380

	.globl set_file_security_ctx
	.type set_file_security_ctx, @function
set_file_security_ctx:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rdi
	cmp	byte ptr [rcx + 0x23], 0
	je	.label_217
	cmp	byte ptr [rcx + 0x26], 0
	je	.label_219
.label_217:
	call	restorecon
.label_221:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_220
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
.label_218:
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_219:
	mov	bl, byte ptr [rcx + 0x29]
	call	restorecon
	cmp	bl, 0
	jne	.label_218
	call	__errno_location
	mov	edi, dword ptr [rax]
	call	errno_unsupported
	test	al, al
	je	.label_221
	jmp	.label_218
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404400

	.globl restorecon
	.type restorecon, @function
restorecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	pop	rax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404410

	.globl dest_info_init
	.type dest_info_init, @function
dest_info_init:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x40], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404440
	.globl src_info_init
	.type src_info_init, @function
src_info_init:

	push	rbx
	mov	rbx, rdi
	mov	edi, 0x3d
	xor	esi, esi
	mov	edx, OFFSET FLAT:triple_hash_no_name
	mov	ecx, OFFSET FLAT:triple_compare
	mov	r8d, OFFSET FLAT:triple_free
	call	hash_initialize
	mov	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404470

	.globl copy
	.type copy, @function
copy:
	push	rbx
	sub	rsp, 0x10
	mov	r11, r9
	mov	r10, r8
	mov	rax, rcx
	mov	qword ptr [word ptr [rip + top_level_src_name]],  rdi
	mov	qword ptr [word ptr [rip + top_level_dst_name]],  rsi
	mov	byte ptr [rsp + 0xf], 0
	lea	rbx, [rsp + 0xf]
	movzx	edx, dl
	mov	ecx, 0
	mov	r8d, 0
	mov	r9, rax
	push	r11
	push	r10
	push	rbx
	push	1
	call	copy_internal
	add	rsp, 0x30
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4044c0
	.globl valid_options
	.type valid_options, @function
valid_options:

	push	rax
	test	rdi, rdi
	je	.label_222
	cmp	dword ptr [rdi], 4
	jae	.label_228
	mov	eax, dword ptr [rdi + 0xc]
	dec	eax
	cmp	eax, 3
	jae	.label_227
	cmp	dword ptr [rdi + 0x38], 3
	jae	.label_226
	cmp	byte ptr [rdi + 0x17], 0
	je	.label_236
	cmp	byte ptr [rdi + 0x2c], 0
	jne	.label_230
.label_236:
	cmp	dword ptr [rdi + 0x38], 2
	jne	.label_237
	cmp	dword ptr [rdi + 0xc], 2
	jne	.label_231
.label_237:
	pop	rax
	ret	
.label_222:
	mov	edi, OFFSET FLAT:label_234
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0xb86
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
.label_228:
	mov	edi, OFFSET FLAT:label_232
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0xb87
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
.label_227:
	mov	edi, OFFSET FLAT:label_229
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0xb88
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
.label_226:
	mov	edi, OFFSET FLAT:label_223
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0xb89
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
.label_230:
	mov	edi, OFFSET FLAT:label_235
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0xb8a
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
.label_231:
	mov	edi, OFFSET FLAT:label_233
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0xb8d
	mov	ecx, OFFSET FLAT:label_225
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404590

	.globl copy_internal
	.type copy_internal, @function
copy_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x298
	mov	r15, r9
	mov	rbx, r8
	mov	r12, rcx
	mov	qword ptr [rbp - 0x38], rsi
	mov	r14, rdi
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rbp - 0x29], dl
	mov	byte ptr [rax], 0
	mov	r13d, dword ptr [r15 + 0x34]
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_332
	test	r13d, r13d
	jns	.label_345
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r14
	mov	rcx, qword ptr [rbp - 0x38]
	call	renameatu
	mov	rcx, qword ptr [rbp + 0x28]
	xor	r13d, r13d
	test	eax, eax
	je	.label_345
	call	__errno_location
	mov	rcx, qword ptr [rbp + 0x28]
	mov	r13d, dword ptr [rax]
.label_345:
	test	r13d, r13d
	sete	al
	sete	byte ptr [rbp - 0x29]
	test	rcx, rcx
	je	.label_332
	mov	byte ptr [rcx], al
.label_332:
	mov	qword ptr [rbp - 0x68], rbx
	test	r13d, r13d
	je	.label_359
	cmp	r13d, 0x11
	jne	.label_361
	cmp	dword ptr [r15 + 8], 2
	jne	.label_361
	jmp	.label_364
.label_359:
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_364
.label_361:
	test	r13d, r13d
	mov	rbx, r14
	cmove	rbx, qword ptr [rbp - 0x38]
	cmp	dword ptr [r15 + 4], 2
	jne	.label_367
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	lstat
	jmp	.label_375
.label_367:
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	call	stat
.label_375:
	test	eax, eax
	je	.label_379
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
.label_404:
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
.label_324:
	call	error
.label_258:
	mov	eax, r12d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_379:
	mov	ebx, dword ptr [rbp - 0xf0]
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	jne	.label_364
	cmp	byte ptr [r15 + 0x2a], 0
	je	.label_396
.label_364:
	mov	al, byte ptr [rbp + 0x10]
	test	al, al
	je	.label_351
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_351
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_405
	cmp	dword ptr [r15], 0
	jne	.label_405
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	seen_file
	test	al, al
	je	.label_405
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	jmp	.label_258
.label_405:
	mov	rdi, qword ptr [r15 + 0x48]
	lea	rdx, [rbp - 0x108]
	mov	rsi, r14
	call	record_file
	mov	al, byte ptr [rbp + 0x10]
.label_351:
	mov	qword ptr [rbp - 0x48], r14
	movzx	esi, al
	mov	rdi, r15
	call	should_dereference
	mov	byte ptr [rbp - 0x3c], al
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	r14d, r14d
	cmp	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x4c], ebx
	jne	.label_253
	cmp	r13d, 0x11
	jne	.label_434
	cmp	dword ptr [r15 + 8], 2
	jne	.label_434
	xor	r14d, r14d
	jmp	.label_244
.label_434:
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	je	.label_438
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x14], 0
	je	.label_439
	cmp	eax, 0xa000
	je	.label_439
	movzx	eax, ax
	cmp	eax, 0x4000
	je	.label_439
.label_438:
	mov	r14b, 1
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_439
	cmp	byte ptr [r15 + 0x2c], 0
	jne	.label_439
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_439
	cmp	dword ptr [r15], 0
	jne	.label_439
	cmp	byte ptr [r15 + 0x15], 0
	setne	r14b
.label_439:
	movzx	ecx, r14b
	shl	ecx, 8
	lea	rdx, [rbp - 0x198]
	mov	edi, 0xffffff9c
	mov	rsi, qword ptr [rbp - 0x38]
	call	fstatat
	test	eax, eax
	je	.label_244
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x28
	jne	.label_247
	cmp	byte ptr [r15 + 0x16], 0
	jne	.label_248
	mov	ebx, dword ptr [rax]
.label_247:
	cmp	ebx, 2
	jne	.label_300
	mov	byte ptr [rbp - 0x29], 1
.label_248:
	xor	r14d, r14d
	cmp	r13d, 0x11
	mov	eax, 0
	mov	qword ptr [rbp - 0x58], rax
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_253
.label_244:
	mov	byte ptr [rbp - 0x230], 0
	cmp	dword ptr [r15 + 8], 2
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_262
	lea	rsi, [rbp - 0x108]
	lea	rcx, [rbp - 0x198]
	lea	r9, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, r13
	mov	r8, r15
	call	same_file_ok
	test	al, al
	je	.label_272
.label_262:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	je	.label_273
	mov	al, byte ptr [r15 + 0x2d]
	test	al, al
	je	.label_273
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_279
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_260
	mov	rax, qword ptr [rbp - 0x198]
	cmp	rax, qword ptr [rbp - 0x108]
	sete	al
	jmp	.label_283
.label_396:
	cmp	byte ptr [r15 + 0x19], 0
	je	.label_286
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_315
	jmp	.label_316
.label_272:
	mov	rbx, r13
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_293
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
.label_304:
	call	quotearg_n_style
.label_342:
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_258
.label_300:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
.label_391:
	mov	rdx, r14
	jmp	.label_324
.label_279:
	xor	eax, eax
	jmp	.label_327
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_328
.label_316:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	r12d, r12d
.label_319:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_441:
	mov	rdx, rbx
	jmp	.label_324
.label_260:
	xor	eax, eax
.label_283:
	xor	al, 1
.label_327:
	movzx	ecx, al
	lea	rsi, [rbp - 0x198]
	lea	rdx, [rbp - 0x108]
	mov	rdi, r13
	call	utimecmp
	test	eax, eax
	js	.label_273
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_350
	mov	byte ptr [rax], 1
.label_350:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, r13
	call	remember_copied
	mov	rbx, rax
	test	rbx, rbx
	je	.label_356
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, rbx
	mov	rsi, r13
	call	create_hard_link
	test	al, al
	je	.label_360
.label_356:
	mov	r12b, 1
	jmp	.label_258
.label_273:
	mov	r13, r12
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_365
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	abandon_move
	test	al, al
	mov	rax, qword ptr [rbp + 0x28]
	je	.label_369
	mov	r12b, 1
	test	rax, rax
	je	.label_258
	mov	byte ptr [rax], 1
	jmp	.label_258
.label_365:
	cmp	ebx, 0x4000
	je	.label_369
	mov	eax, dword ptr [r15 + 8]
	mov	r12b, 1
	cmp	eax, 2
	je	.label_258
	cmp	eax, 3
	jne	.label_369
	lea	rdx, [rbp - 0x198]
	mov	rdi, r15
	mov	rsi, qword ptr [rbp - 0x38]
	call	overwrite_ok
	test	al, al
	je	.label_258
	mov	al, byte ptr [rbp - 0x230]
	test	al, al
	je	.label_388
	jmp	.label_258
.label_369:
	mov	r12b, 1
	cmp	byte ptr [rbp - 0x230], 0
	jne	.label_258
.label_388:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	mov	r12, r13
	je	.label_335
	cmp	ebx, 0x4000
	jne	.label_394
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_398
	cmp	dword ptr [r15], 0
	je	.label_398
.label_394:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_335
	cmp	dword ptr [r15], 3
	je	.label_335
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x38]
	call	seen_file
	test	al, al
	je	.label_335
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_411
	jmp	.label_412
.label_335:
	cmp	ebx, 0x4000
	je	.label_270
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_270
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_419
	cmp	dword ptr [r15], 0
	je	.label_419
.label_270:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_423
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp - 0xf0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_423
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	je	.label_423
	cmp	dword ptr [r15], 0
	je	.label_428
.label_423:
	cmp	dword ptr [r15], 0
	je	.label_431
	mov	rdi, qword ptr [rbp - 0x48]
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	dot_or_dotdot_0
	test	al, al
	jne	.label_431
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_436
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_436
.label_431:
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x4000
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_241
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_241
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_239
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_449
	cmp	qword ptr [rbp - 0x188], 1
	ja	.label_239
.label_449:
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	dword ptr [r15 + 4], 2
	jne	.label_241
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0xf0]
	xor	ecx, ecx
	mov	qword ptr [rbp - 0x58], rcx
	cmp	eax, 0x8000
	je	.label_241
.label_239:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
	test	eax, eax
	je	.label_257
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_341
.label_257:
	mov	byte ptr [rbp - 0x29], 1
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_241
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	ebx, dword ptr [rbp - 0x4c]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_241
.label_360:
	mov	qword ptr [rbp - 0x70], rbx
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_242
.label_436:
	cmp	dword ptr [r15], 3
	mov	r13, qword ptr [rbp - 0x38]
	je	.label_289
	lea	rsi, [rbp - 0x108]
	mov	rdi, rbx
	mov	rdx, r13
	call	source_is_dst_backup
	test	al, al
	je	.label_289
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_292
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_295
	jmp	.label_296
.label_398:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_297
.label_412:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
.label_442:
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	jmp	.label_304
.label_419:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_310
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	jmp	.label_319
.label_289:
	mov	edx, dword ptr [r15]
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	backup_file_rename
	mov	rbx, rax
	test	rbx, rbx
	je	.label_325
	mov	rdi, rbx
	call	strlen
	mov	rdi, rsp
	lea	rdx, [rax + 1]
	add	rax, 0x10
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	rax, rdi
	mov	qword ptr [rbp - 0x58], rax
	mov	rsi, rbx
	call	memcpy
	mov	rdi, rbx
	call	free
	mov	ebx, dword ptr [rbp - 0x4c]
	jmp	.label_374
.label_325:
	call	__errno_location
	mov	r13d, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x58], rax
	cmp	r13d, 2
	mov	ebx, dword ptr [rbp - 0x4c]
	jne	.label_276
.label_374:
	mov	byte ptr [rbp - 0x29], 1
.label_241:
	mov	r13d, 0x11
.label_253:
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_352
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_352
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_352
	cmp	dword ptr [r15], 0
	jne	.label_352
	test	r14b, r14b
	jne	.label_357
	lea	rbx, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	jne	.label_288
	jmp	.label_363
.label_357:
	lea	rbx, [rbp - 0x198]
.label_363:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_288
	mov	rdi, qword ptr [r15 + 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	seen_file
	test	al, al
	je	.label_288
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_373
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	jmp	.label_304
.label_288:
	mov	ebx, dword ptr [rbp - 0x4c]
.label_352:
	mov	qword ptr [rbp - 0x78], r12
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_387
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x4000
	je	.label_387
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	jne	.label_387
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_387:
	xor	r12d, r12d
	test	r13d, r13d
	je	.label_392
	mov	ebx, dword ptr [rbp - 0x4c]
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_294
	mov	al, byte ptr [r15 + 0x2a]
	test	al, al
	je	.label_294
	mov	rax, qword ptr [rbp - 0x108]
	mov	rcx, qword ptr [rbp - 0x100]
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_401
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rcx
	mov	rdx, rax
	jmp	.label_408
.label_294:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_376
	cmp	qword ptr [rbp - 0xf8], 1
	jne	.label_376
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	jmp	.label_414
.label_376:
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x22], 0
	je	.label_392
	xor	r12d, r12d
	cmp	byte ptr [r15 + 0x17], 0
	jne	.label_392
	cmp	qword ptr [rbp - 0xf8], 1
	ja	.label_421
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_424
	cmp	dword ptr [r15 + 4], 3
	je	.label_421
.label_424:
	xor	r12d, r12d
	cmp	dword ptr [r15 + 4], 4
	jne	.label_392
.label_421:
	mov	rdx, qword ptr [rbp - 0x108]
	mov	rsi, qword ptr [rbp - 0x100]
	mov	rdi, qword ptr [rbp - 0x38]
.label_408:
	call	remember_copied
	jmp	.label_432
.label_401:
	mov	rdi, rcx
	mov	rsi, rax
.label_414:
	call	src_to_dest_lookup
.label_432:
	mov	r14, rax
	xor	r12d, r12d
	test	r14, r14
	je	.label_392
	cmp	ebx, 0x4000
	jne	.label_437
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_440
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r13, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_242
.label_437:
	movzx	ecx, byte ptr [r15 + 0x2e]
	movzx	r8d, byte ptr [rbp - 0x3c]
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	mov	r12b, 1
	test	al, al
	mov	qword ptr [rbp - 0x70], r14
	jne	.label_258
	jmp	.label_242
.label_440:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, r14
	call	same_name
	test	al, al
	je	.label_371
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rsi,  qword ptr [word ptr [rip + top_level_src_name]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	r12b, 1
	mov	rcx, qword ptr [rbp + 0x28]
	test	rcx, rcx
	je	.label_258
	mov	al, byte ptr [r15 + 0x18]
	test	al, al
	je	.label_258
	mov	byte ptr [rcx], 1
	jmp	.label_258
.label_371:
	mov	ecx, dword ptr [r15 + 4]
	cmp	ecx, 3
	sete	al
	cmp	ecx, 4
	je	.label_282
	and	al, byte ptr [rbp + 0x10]
	jne	.label_282
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_285
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r13, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, rbx
	call	error
	mov	qword ptr [rbp - 0x70], r14
	jmp	.label_242
.label_282:
	mov	r12, r14
.label_392:
	cmp	byte ptr [r15 + 0x18], 0
	mov	ebx, dword ptr [rbp - 0x4c]
	je	.label_306
	cmp	r13d, 0x11
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_309
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	call	rename
	test	eax, eax
	je	.label_317
	call	__errno_location
	mov	r13d, dword ptr [rax]
.label_309:
	cmp	r13d, 0x16
	je	.label_318
	cmp	r13d, 0x12
	je	.label_320
	test	r13d, r13d
	jne	.label_322
.label_317:
	cmp	byte ptr [r15 + 0x2e], 0
	mov	rbx, qword ptr [rbp - 0x38]
	je	.label_326
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_308
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_326:
	cmp	byte ptr [r15 + 0x21], 0
	je	.label_339
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	mov	rcx, r15
	call	set_file_security_ctx
.label_339:
	mov	rsi, rbx
	mov	rax, qword ptr [rbp + 0x28]
	test	rax, rax
	je	.label_349
	mov	byte ptr [rax], 1
.label_349:
	mov	r12b, 1
	cmp	byte ptr [rbp + 0x10], 0
	je	.label_258
	cmp	byte ptr [r15 + 0x31], 0
	jne	.label_258
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x108]
	call	record_file
	jmp	.label_258
.label_318:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_358
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_src_name]]
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	rdx,  qword ptr [word ptr [rip + top_level_dst_name]]
	mov	edi, 1
	mov	esi, 4
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	call	error
	mov	rax, qword ptr [rbp + 0x20]
	mov	byte ptr [rax], 1
	mov	r12b, 1
	jmp	.label_258
.label_320:
	and	ebx, 0xf000
	cmp	ebx, 0x4000
	jne	.label_380
	mov	rdi, qword ptr [rbp - 0x38]
	call	rmdir
	jmp	.label_385
.label_322:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_386
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, rbx
	jmp	.label_393
.label_380:
	mov	rdi, qword ptr [rbp - 0x38]
	call	unlink
.label_385:
	test	eax, eax
	je	.label_329
	call	__errno_location
	mov	r13d, dword ptr [rax]
	cmp	r13d, 2
	jne	.label_340
.label_329:
	cmp	ebx, 0x4000
	je	.label_407
	mov	al, byte ptr [r15 + 0x2e]
	test	al, al
	je	.label_407
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_410
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	mov	rdi, r14
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x58]
	call	emit_verbose
.label_407:
	mov	byte ptr [rbp - 0x29], 1
	mov	ebx, dword ptr [rbp - 0x4c]
.label_306:
	cmp	byte ptr [r15 + 0x2b], 0
	mov	r14d, ebx
	je	.label_420
	mov	r14d, dword ptr [r15 + 0x10]
.label_420:
	mov	r13d, 0x3f
	cmp	byte ptr [r15 + 0x1d], 0
	mov	rsi, qword ptr [rbp - 0x38]
	jne	.label_425
	mov	eax, ebx
	and	eax, 0xf000
	xor	ecx, ecx
	cmp	eax, 0x4000
	mov	r13d, 0x12
	cmovne	r13d, ecx
.label_425:
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	r8, r15
	call	set_process_security_ctx
	test	al, al
	je	.label_433
	mov	qword ptr [rbp - 0x70], r12
	and	r13d, r14d
	mov	r12d, ebx
	and	r12d, 0xf000
	cmp	r12d, 0x4000
	jne	.label_372
	lea	rdi, [rbp - 0x108]
	mov	rbx, qword ptr [rbp - 0x68]
	mov	rsi, rbx
	call	is_ancestor
	test	al, al
	je	.label_435
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_443
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	call	quotearg_style
.label_354:
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	jmp	.label_448
.label_433:
	xor	r12d, r12d
	jmp	.label_258
.label_372:
	cmp	byte ptr [r15 + 0x2c], 0
	mov	dword ptr [rbp - 0x50], r13d
	je	.label_240
	mov	r14, qword ptr [rbp - 0x48]
	cmp	byte ptr [r14], 0x2f
	je	.label_243
	mov	rdi, qword ptr [rbp - 0x38]
	call	dir_name
	mov	rbx, rax
	cmp	byte ptr [rbx], 0x2e
	jne	.label_249
	cmp	byte ptr [rbx + 1], 0
	je	.label_252
.label_249:
	lea	rsi, [rbp - 0x230]
	mov	edi, OFFSET FLAT:label_128
	call	stat
	test	eax, eax
	jne	.label_252
	lea	rsi, [rbp - 0x2c0]
	mov	rdi, rbx
	call	stat
	test	eax, eax
	je	.label_263
.label_252:
	mov	rdi, rbx
	call	free
.label_243:
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r14
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdx, rbx
	call	force_symlinkat
	mov	r13d, eax
	test	r13d, r13d
	jle	.label_271
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_275
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rbp - 0x48], rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	r12, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r14
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, r12
	call	error
	jmp	.label_242
.label_435:
	mov	rax, rsp
	mov	rcx, rbx
	lea	rbx, [rax - 0x20]
	mov	rsp, rbx
	mov	qword ptr [rax - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x100]
	mov	qword ptr [rax - 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x108]
	mov	qword ptr [rax - 0x10], rcx
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_290
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0x4000
	jne	.label_290
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_303
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_305
.label_303:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	cmp	byte ptr [r15 + 0x26], 0
	mov	r13, qword ptr [rbp - 0x48]
	jne	.label_242
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_284
.label_290:
	mov	qword ptr [rbp - 0x68], rbx
	and	r14d, 0xfff
	mov	esi, r13d
	not	esi
	and	esi, r14d
	mov	r14d, r13d
	mov	r13, qword ptr [rbp - 0x38]
	mov	rdi, r13
	call	mkdir
	test	eax, eax
	je	.label_331
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
	jmp	.label_334
.label_240:
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_337
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x16], 0
	mov	al, 1
	jne	.label_338
	cmp	dword ptr [r15 + 8], 3
	sete	al
.label_338:
	movzx	edx, al
	movzx	r8d, byte ptr [rbp - 0x3c]
	xor	r14d, r14d
	xor	ecx, ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	call	create_hard_link
	test	al, al
	je	.label_242
	jmp	.label_274
.label_340:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rdx, r14
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style
	mov	r8, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, r14
	mov	rcx, r15
.label_393:
	call	error
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
	jmp	.label_258
.label_331:
	lea	rsi, [rbp - 0x198]
	mov	rdi, r13
	call	lstat
	test	eax, eax
	je	.label_346
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
.label_334:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r13
.label_269:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
.label_448:
	mov	rdx, rbx
.label_259:
	call	error
.label_242:
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_389
	call	restore_default_fscreatecon_or_die
.label_389:
	cmp	qword ptr [rbp - 0x70], 0
	mov	r12, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbp - 0x58]
	jne	.label_390
	mov	rsi, qword ptr [rbp - 0x108]
	mov	rdi, qword ptr [rbp - 0x100]
	call	forget_created
.label_390:
	test	rbx, rbx
	je	.label_397
	mov	rdi, rbx
	mov	rsi, r12
	call	rename
	test	eax, eax
	je	.label_399
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rbx, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_403
	jmp	.label_404
.label_397:
	xor	r12d, r12d
	jmp	.label_258
.label_399:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_409
	mov	r15, r12
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_417
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r14
	mov	rdx, rbx
	call	__printf_chk
	jmp	.label_258
.label_409:
	xor	r12d, r12d
	jmp	.label_258
.label_337:
	cmp	r12d, 0x8000
	je	.label_426
	cmp	r12d, 0xa000
	je	.label_312
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	je	.label_312
.label_426:
	and	r14d, 0x1ff
	sub	rsp, 8
	lea	rax, [rbp - 0x108]
	lea	r9, [rbp - 0x29]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, r15
	mov	ecx, r14d
	mov	r8d, r13d
	push	rax
	call	copy_reg
	add	rsp, 0x10
	test	al, al
	je	.label_242
	mov	bl, 1
	xor	r14d, r14d
	jmp	.label_444
.label_346:
	mov	ecx, dword ptr [rbp - 0x180]
	mov	eax, ecx
	and	eax, 0x1c0
	cmp	eax, 0x1c0
	mov	dword ptr [rbp - 0x3c], ecx
	jne	.label_445
	xor	ebx, ebx
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_302
.label_263:
	mov	rax, qword ptr [rbp - 0x228]
	cmp	rax, qword ptr [rbp - 0x2b8]
	jne	.label_238
	mov	rax, qword ptr [rbp - 0x230]
	mov	qword ptr [rbp - 0x68], rax
	mov	r13, qword ptr [rbp - 0x2c0]
	mov	rdi, rbx
	call	free
	cmp	qword ptr [rbp - 0x68], r13
	mov	r14, qword ptr [rbp - 0x48]
	je	.label_243
	jmp	.label_254
.label_312:
	movsx	eax, r12w
	cmp	eax, 0xfff
	jle	.label_256
	movzx	eax, r12w
	cmp	eax, 0x6000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_261
	cmp	eax, 0x2000
	je	.label_261
	cmp	eax, 0x1000
	jne	.label_268
	mov	ebx, r13d
	not	ebx
	and	ebx, dword ptr [rbp - 0x4c]
	xor	r14d, r14d
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mknod
	mov	r13b, 1
	test	eax, eax
	je	.label_274
	and	ebx, 0xffffefff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	esi, ebx
	call	mkfifo
	test	eax, eax
	je	.label_278
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_280
	jmp	.label_281
.label_274:
	xor	ebx, ebx
	jmp	.label_264
.label_445:
	mov	esi, ecx
	or	esi, 0x1c0
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	mov	bl, 1
	test	eax, eax
	mov	r13, qword ptr [rbp - 0x48]
	je	.label_302
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
.label_281:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	jmp	.label_269
.label_302:
	mov	rax, qword ptr [rbp + 0x18]
	cmp	byte ptr [rax], 0
	jne	.label_299
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsi, qword ptr [rbp - 0x190]
	mov	rdi, qword ptr [rbp - 0x38]
	call	remember_copied
	mov	rax, qword ptr [rbp + 0x18]
	mov	byte ptr [rax], 1
.label_299:
	cmp	byte ptr [r15 + 0x2e], 0
	je	.label_284
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_430
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_314
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	r13, qword ptr [rbp - 0x48]
	mov	rdx, rcx
	call	__printf_chk
	jmp	.label_284
.label_428:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x48]
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_342
.label_238:
	mov	rdi, rbx
	call	free
.label_254:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_321
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rbp - 0x38]
	call	quotearg_n_style_colon
	jmp	.label_354
.label_256:
	movzx	eax, r12w
	cmp	eax, 0xa000
	mov	rbx, qword ptr [rbp - 0x48]
	je	.label_355
	cmp	eax, 0xc000
	jne	.label_268
.label_261:
	mov	esi, r13d
	not	esi
	and	esi, dword ptr [rbp - 0x4c]
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rdi, rbx
	call	mknod
	test	eax, eax
	je	.label_366
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r12
	jmp	.label_259
.label_305:
	mov	qword ptr [rbp - 0x68], rbx
	xor	ebx, ebx
	xor	r14d, r14d
	mov	dword ptr [rbp - 0x3c], eax
	mov	r13, qword ptr [rbp - 0x48]
	jmp	.label_284
.label_276:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_383
	jmp	.label_384
.label_341:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
.label_384:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	jmp	.label_391
.label_430:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	call	emit_verbose
.label_284:
	mov	qword ptr [rbp - 0x60], rbx
	mov	dword ptr [rbp - 0x50], r14d
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_347
	mov	al, byte ptr [r15 + 0x1c]
	test	al, al
	je	.label_347
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x108]
	jne	.label_402
.label_347:
	movzx	edx, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	mov	rdi, r13
	mov	rsi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x68]
	mov	r9, r15
	push	qword ptr [rbp + 0x20]
	push	qword ptr [rbp + 0x18]
	call	copy_dir
	add	rsp, 0x10
	mov	r13d, eax
	jmp	.label_415
.label_402:
	mov	r13b, 1
.label_415:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_416
.label_292:
	mov	rbx, r13
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_418
.label_296:
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rbx
	jmp	.label_442
.label_366:
	mov	r13b, 1
.label_278:
	xor	r14d, r14d
	xor	ebx, ebx
	jmp	.label_264
.label_355:
	mov	rsi, qword ptr [rbp - 0xd8]
	mov	rdi, rbx
	call	areadlink_with_size
	mov	r13, rax
	test	r13, r13
	je	.label_429
	movzx	ecx, byte ptr [r15 + 0x16]
	mov	esi, 0xffffff9c
	mov	r8d, 0xffffffff
	mov	rdi, r13
	mov	rdx, qword ptr [rbp - 0x38]
	call	force_symlinkat
	mov	r14d, eax
	test	r14d, r14d
	jle	.label_277
	cmp	byte ptr [r15 + 0x2d], 0
	je	.label_362
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	jne	.label_362
	mov	eax, 0xf000
	and	eax, dword ptr [rbp - 0x180]
	cmp	eax, 0xa000
	jne	.label_362
	mov	rbx, qword ptr [rbp - 0x168]
	mov	rdi, r13
	call	strlen
	cmp	rbx, rax
	jne	.label_362
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, rbx
	call	areadlink_with_size
	mov	rbx, rax
	test	rbx, rbx
	je	.label_362
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	mov	dword ptr [rbp - 0x68], eax
	mov	rdi, rbx
	call	free
	cmp	dword ptr [rbp - 0x68], 0
	je	.label_277
.label_362:
	mov	rdi, r13
	call	free
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_370
	jmp	.label_281
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_250
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	jmp	.label_259
.label_429:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_406
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x48]
	jmp	.label_269
.label_277:
	mov	rdi, r13
	call	free
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_422
	call	restore_default_fscreatecon_or_die
.label_422:
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_271
	mov	esi, dword ptr [rbp - 0xec]
	mov	edx, dword ptr [rbp - 0xe8]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lchown
	test	eax, eax
	je	.label_271
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	je	.label_330
.label_271:
	mov	r14b, 1
	xor	ebx, ebx
.label_444:
	mov	r13b, 1
.label_264:
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
.label_378:
	mov	dword ptr [rbp - 0x3c], eax
.label_416:
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [rbp - 0x29], 0
	jne	.label_287
	cmp	r12d, 0x4000
	je	.label_287
	mov	al, byte ptr [r15 + 0x14]
	test	al, al
	mov	al, byte ptr [rbp + 0x10]
	jne	.label_287
	cmp	byte ptr [r15 + 0x21], 0
	jne	.label_344
	cmp	byte ptr [r15 + 0x25], 0
	je	.label_287
.label_344:
	movzx	esi, byte ptr [r15 + 0x25]
	xor	edx, edx
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, r15
	call	set_file_security_ctx
	mov	al, byte ptr [rbp + 0x10]
	cmp	byte ptr [r15 + 0x26], 0
	jne	.label_242
.label_287:
	test	al, al
	je	.label_311
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_311
	lea	rsi, [rbp - 0x230]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	jne	.label_311
	mov	rdi, qword ptr [r15 + 0x40]
	lea	rdx, [rbp - 0x230]
	mov	rsi, qword ptr [rbp - 0x38]
	call	record_file
.label_311:
	cmp	r12d, 0x4000
	je	.label_246
	mov	al, byte ptr [r15 + 0x17]
	test	al, al
	jne	.label_255
.label_246:
	test	bl, bl
	jne	.label_255
	cmp	byte ptr [r15 + 0x1f], 0
	je	.label_265
	lea	rbx, [rbp - 0x108]
	mov	rdi, rbx
	call	get_stat_atime
	mov	qword ptr [rbp - 0x230], rax
	mov	qword ptr [rbp - 0x228], rdx
	mov	rdi, rbx
	call	get_stat_mtime
	mov	qword ptr [rbp - 0x220], rax
	mov	qword ptr [rbp - 0x218], rdx
	test	r14b, r14b
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rbp - 0x230]
	je	.label_336
	call	utimens_symlink
	jmp	.label_343
.label_336:
	call	utimens
.label_343:
	test	eax, eax
	je	.label_265
	call	__errno_location
	mov	r12d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_265
	xor	r12d, r12d
	jmp	.label_258
.label_265:
	test	r14b, r14b
	mov	rbx, qword ptr [rbp - 0x38]
	jne	.label_255
	cmp	byte ptr [r15 + 0x1d], 0
	je	.label_298
	cmp	byte ptr [rbp - 0x29], 0
	mov	r14, qword ptr [rbp - 0x48]
	jne	.label_307
	mov	eax, dword ptr [rbp - 0xec]
	cmp	eax, dword ptr [rbp - 0x17c]
	jne	.label_307
	mov	eax, dword ptr [rbp - 0xe8]
	cmp	eax, dword ptr [rbp - 0x178]
	je	.label_381
.label_307:
	movzx	r8d, byte ptr [rbp - 0x29]
	lea	rcx, [rbp - 0x108]
	lea	r9, [rbp - 0x198]
	mov	edx, 0xffffffff
	mov	rdi, r15
	mov	rsi, rbx
	call	set_owner
	cmp	eax, -1
	je	.label_400
	test	eax, eax
	jne	.label_381
	and	dword ptr [rbp - 0x4c], 0xfffff1ff
	jmp	.label_381
.label_298:
	mov	r14, qword ptr [rbp - 0x48]
.label_381:
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_245
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_291
.label_245:
	mov	esi, 0xffffffff
	mov	ecx, 0xffffffff
	mov	rdi, r14
	mov	rdx, rbx
	mov	r8d, dword ptr [rbp - 0x4c]
	call	copy_acl
	test	eax, eax
	je	.label_255
	cmp	byte ptr [r15 + 0x24], 0
	je	.label_255
.label_400:
	xor	r12d, r12d
	jmp	.label_258
.label_291:
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_395
	mov	edx, dword ptr [r15 + 0x10]
	mov	esi, 0xffffffff
	mov	rdi, rbx
	call	set_acl
	test	eax, eax
	je	.label_255
	xor	r12d, r12d
	jmp	.label_258
.label_395:
	cmp	byte ptr [r15 + 0x20], 0
	je	.label_348
	mov	al, byte ptr [rbp - 0x29]
	test	al, al
	je	.label_348
	mov	eax, dword ptr [rbp - 0x4c]
	and	eax, 0x7000
	or	eax, 0x8000
	cmp	eax, 0xc000
	mov	eax, 0x1ff
	mov	ebx, 0x1b6
	cmove	ebx, eax
	call	cached_umask
	not	eax
	and	ebx, eax
	mov	esi, 0xffffffff
	mov	rdi, qword ptr [rbp - 0x38]
	mov	edx, ebx
	call	set_acl
	test	eax, eax
	je	.label_255
	xor	r12d, r12d
	jmp	.label_258
.label_348:
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_447
	call	cached_umask
	not	eax
	and	dword ptr [rbp - 0x50], eax
	mov	rax, qword ptr [rbp - 0x60]
	test	al, al
	jne	.label_251
	cmp	dword ptr [rbp - 0x50], 0
	je	.label_251
	cmp	byte ptr [rbp - 0x29], 0
	je	.label_427
	lea	rsi, [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x38]
	call	lstat
	test	eax, eax
	je	.label_427
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_313
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_441
.label_447:
	mov	dword ptr [rbp - 0x50], 0
	jmp	.label_251
.label_330:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	mov	qword ptr [rbp - 0x60], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x38]
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_242
	mov	r14b, 1
	xor	ebx, ebx
	mov	r13b, 1
	jmp	.label_378
.label_427:
	mov	eax, dword ptr [rbp - 0x180]
	mov	dword ptr [rbp - 0x3c], eax
	not	eax
	test	dword ptr [rbp - 0x50], eax
	je	.label_251
	mov	al, 1
	mov	qword ptr [rbp - 0x60], rax
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	test	al, 1
	je	.label_255
	mov	esi, dword ptr [rbp - 0x3c]
	or	esi, dword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x38]
	call	chmod
	test	eax, eax
	je	.label_255
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rbp - 0x38]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_258
.label_255:
	test	r13b, r13b
	setne	r12b
	jmp	.label_258
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060c0

	.globl cp_options_default
	.type cp_options_default, @function
cp_options_default:
	push	rbx
	mov	rbx, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	call	geteuid
	test	eax, eax
	sete	byte ptr [rbx + 0x1b]
	sete	byte ptr [rbx + 0x1a]
	mov	dword ptr [rbx + 0x34], 0xffffffff
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406100

	.globl chown_failure_ok
	.type chown_failure_ok, @function
chown_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_452
	cmp	eax, 1
	jne	.label_450
.label_452:
	cmp	byte ptr [rbx + 0x1a], 0
	sete	al
	jmp	.label_451
.label_450:
	xor	eax, eax
.label_451:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406130

	.globl cached_umask
	.type cached_umask, @function
cached_umask:
	cmp	dword ptr [dword ptr [rip + cached_umask.mask]],  -1
	jne	.label_453
	push	rax
	xor	edi, edi
	call	umask
	mov	dword ptr [dword ptr [rip + cached_umask.mask]],  eax
	mov	edi, eax
	call	umask
	add	rsp, 8
.label_453:
	mov	eax,  dword ptr [dword ptr [rip + cached_umask.mask]]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406160

	.globl should_dereference
	.type should_dereference, @function
should_dereference:
	mov	ecx, dword ptr [rdi + 4]
	mov	al, 1
	cmp	ecx, 4
	je	.label_454
	cmp	ecx, 3
	sete	al
	and	al, sil
.label_454:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406180

	.globl same_file_ok
	.type same_file_ok, @function
same_file_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r14, r9
	mov	r15, r8
	mov	rbx, rcx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_455
	mov	rax, qword ptr [rbp]
	cmp	rax, qword ptr [rbx]
	mov	byte ptr [r14], 0
	jne	.label_464
	mov	r13b, 1
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_469
	mov	byte ptr [r14], 1
	mov	r12b, 1
	jmp	.label_456
.label_455:
	mov	byte ptr [r14], 0
.label_464:
	xor	r13d, r13d
.label_469:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_472
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbp + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_474
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	mov	rsi, rbp
	jne	.label_460
	mov	rsi, rdx
	call	same_name
	test	al, al
	jne	.label_457
	mov	r12b, 1
	cmp	dword ptr [r15], 0
	jne	.label_456
	test	r13b, r13b
	je	.label_457
	mov	byte ptr [r14], 1
	jmp	.label_463
.label_472:
	mov	r12b, 1
	test	r13b, r13b
	je	.label_456
	mov	qword ptr [rsp + 8], rdi
	lea	rbx, [rsp + 0xa8]
	mov	rdi, rdx
	mov	rsi, rbx
	mov	r13, rdx
	call	lstat
	test	eax, eax
	jne	.label_456
	mov	qword ptr [rsp + 0x10], r13
	lea	r13, [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r13
	call	lstat
	test	eax, eax
	jne	.label_456
	mov	rcx, r13
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_478
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	sete	r13b
	jmp	.label_461
.label_474:
	mov	rsi, rbp
.label_460:
	cmp	dword ptr [r15], 0
	je	.label_465
	test	r13b, r13b
	je	.label_468
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	jmp	.label_456
.label_465:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_471
	cmp	byte ptr [r15 + 0x15], 0
	je	.label_473
.label_471:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_456
	test	r13b, r13b
	je	.label_473
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_473
	mov	r13, rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, rdx
	mov	r12, rdx
	call	same_name
	mov	rsi, qword ptr [rsp + 8]
	mov	rdi, r13
	mov	rdx, r12
	test	al, al
	je	.label_463
.label_473:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	je	.label_462
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	je	.label_462
	mov	rax, qword ptr [rsi + 8]
	mov	r12b, 1
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_456
	mov	rax, qword ptr [rsi]
	cmp	rax, qword ptr [rbx]
	jne	.label_456
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_462
	mov	byte ptr [r14], 1
	jmp	.label_456
.label_468:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_476
	cmp	dword ptr [r15 + 4], 2
	je	.label_476
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsi + 0x18]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_476
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_459
.label_476:
	mov	r12b, 1
	jmp	.label_456
.label_457:
	xor	al, 1
	mov	r12b, al
	jmp	.label_456
.label_462:
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_466
	mov	eax, 0xf000
	and	eax, dword ptr [rbp + 0x18]
	cmp	eax, 0xa000
	jne	.label_466
	cmp	qword ptr [rbx + 0x10], 2
	jb	.label_466
	mov	rbp, rdi
	mov	r12, rdx
	mov	r13, rsi
	call	canonicalize_file_name
	mov	rsi, r13
	mov	rdi, rbp
	mov	rdx, r12
	mov	rbp, rax
	test	rbp, rbp
	je	.label_466
	mov	rdi, rbp
	mov	rsi, rdx
	call	same_name
	mov	r12b, al
	xor	r12b, 1
	mov	rdi, rbp
	call	free
	jmp	.label_456
.label_466:
	cmp	byte ptr [r15 + 0x2c], 0
	je	.label_458
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	mov	r12b, 1
	cmp	eax, 0xa000
	je	.label_456
.label_458:
	cmp	dword ptr [r15 + 4], 2
	jne	.label_459
	mov	rbp, rdx
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0xa000
	jne	.label_467
	lea	rsi, [rsp + 0x18]
	call	stat
	mov	r12b, 1
	test	eax, eax
	mov	rdi, rbp
	jne	.label_456
	jmp	.label_475
.label_463:
	cmp	byte ptr [r15 + 0x18], 0
	sete	r12b
	jmp	.label_456
.label_478:
	xor	r13d, r13d
.label_461:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rcx
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x30]
	and	ecx, eax
	cmp	ecx, 0xa000
	jne	.label_460
	and	eax, dword ptr [rsp + 0xc0]
	cmp	eax, 0xa000
	jne	.label_460
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_456
	jmp	.label_460
.label_467:
	lea	rdi, [rsp + 0x18]
	mov	edx, 0x90
	call	memcpy
	mov	rdi, rbp
.label_475:
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	jne	.label_470
	lea	rsi, [rsp + 0xa8]
	call	stat
	mov	r12b, 1
	test	eax, eax
	jne	.label_456
	jmp	.label_477
.label_470:
	lea	rdi, [rsp + 0xa8]
	mov	edx, 0x90
	mov	rsi, rbx
	call	memcpy
.label_477:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12b, 1
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_456
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0xa8]
	jne	.label_456
	cmp	byte ptr [r15 + 0x17], 0
	je	.label_459
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x18]
	cmp	eax, 0xa000
	setne	byte ptr [r14]
	jmp	.label_456
.label_459:
	xor	r12d, r12d
.label_456:
	mov	eax, r12d
	add	rsp, 0x138
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
	#Procedure 0x406560

	.globl create_hard_link
	.type create_hard_link, @function
create_hard_link:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12d, ecx
	mov	r15, rsi
	mov	rbx, rdi
	movzx	r8d, r8b
	shl	r8d, 0xa
	mov	dword ptr [rsp], 0xffffffff
	movzx	r9d, dl
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rbx
	mov	rcx, r15
	call	force_linkat
	mov	ebp, eax
	test	ebp, ebp
	jle	.label_481
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_479
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, r15
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r15
	mov	r8, rbx
	call	error
	jmp	.label_480
.label_481:
	test	ebp, ebp
	mov	r14b, 1
	je	.label_480
	xor	r12b, 1
	jne	.label_480
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_480:
	mov	eax, r14d
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl abandon_move
	.type abandon_move, @function
abandon_move:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x18], 0
	je	.label_486
	mov	ecx, dword ptr [rbx + 8]
	mov	al, 1
	cmp	ecx, 2
	je	.label_482
	cmp	ecx, 3
	je	.label_485
	cmp	ecx, 4
	jne	.label_487
	cmp	byte ptr [rbx + 0x2f], 0
	je	.label_487
	mov	esi, dword ptr [r14 + 0x18]
	mov	rdi, r15
	call	writable_destination
	test	al, al
	je	.label_485
.label_487:
	xor	eax, eax
	jmp	.label_482
.label_485:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	overwrite_ok
	xor	al, 1
.label_482:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_486:
	mov	edi, OFFSET FLAT:label_483
	mov	esi, OFFSET FLAT:label_224
	mov	edx, 0x6d2
	mov	ecx, OFFSET FLAT:label_484
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066d0

	.globl overwrite_ok
	.type overwrite_ok, @function
overwrite_ok:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	esi, dword ptr [r13 + 0x18]
	mov	rdi, r14
	call	writable_destination
	test	al, al
	je	.label_491
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_493
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbx
	mov	r8, rbp
	call	__fprintf_chk
	jmp	.label_488
.label_491:
	mov	edi, dword ptr [r13 + 0x18]
	lea	rsi, [rsp + 0xc]
	call	strmode
	mov	byte ptr [rsp + 0x16], 0
	mov	r15,  qword ptr [word ptr [rip + stderr]]
	cmp	byte ptr [rbx + 0x18], 0
	jne	.label_492
	cmp	byte ptr [rbx + 0x15], 0
	jne	.label_492
	cmp	byte ptr [rbx + 0x16], 0
	je	.label_489
.label_492:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_490
.label_495:
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rbp,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbx, rax
	mov	r9d, dword ptr [r13 + 0x18]
	and	r9d, 0xfff
	lea	rax, [rsp + 0xd]
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r15
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8, rbx
	call	__fprintf_chk
.label_488:
	call	yesno
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_489:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_494
	jmp	.label_495
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4067f0

	.globl dot_or_dotdot_0
	.type dot_or_dotdot_0, @function
dot_or_dotdot_0:
	cmp	byte ptr [rdi], 0x2e
	jne	.label_496
	xor	eax, eax
	cmp	byte ptr [rdi + 1], 0x2e
	sete	al
	mov	al, byte ptr [rdi + rax + 1]
	test	al, al
	sete	cl
	cmp	al, 0x2f
	sete	al
	or	al, cl
	ret	
.label_496:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406820

	.globl source_is_dst_backup
	.type source_is_dst_backup, @function
source_is_dst_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	rbp, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbx, rdi
	call	strlen
	mov	r15, rax
	mov	qword ptr [rsp + 0x10], rbp
	mov	rdi, rbp
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	strlen
	mov	rbp, rax
	mov	r13,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, r13
	call	strlen
	mov	r12, rax
	lea	rax, [r12 + rbp]
	cmp	r15, rax
	jne	.label_497
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, rbp
	call	memcmp
	test	eax, eax
	jne	.label_497
	add	rbx, rbp
	mov	rdi, rbx
	mov	rsi, r13
	call	strcmp
	test	eax, eax
	jne	.label_497
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	call	strlen
	mov	rbx, rax
	lea	rdi, [r12 + rbx + 1]
	call	xmalloc
	mov	rbp, rax
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdi, rax
	call	strcpy
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbp
	call	stat
	mov	ebx, eax
	mov	rdi, rbp
	call	free
	test	ebx, ebx
	jne	.label_497
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_497
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	al
	jmp	.label_498
.label_497:
	xor	eax, eax
.label_498:
	add	rsp, 0xa8
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
	#Procedure 0x406940

	.globl emit_verbose
	.type emit_verbose, @function
emit_verbose:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rax, rdi
	xor	edi, edi
	mov	esi, 4
	mov	rdx, rax
	call	quotearg_n_style
	mov	r15, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, rbx
	call	quotearg_n_style
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_499
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
	test	r14, r14
	je	.label_500
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_501
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	rdx, rcx
	call	__printf_chk
.label_500:
	mov	edi, 0xa
	pop	rbx
	pop	r14
	pop	r15
	jmp	putchar_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069e0

	.globl is_ancestor
	.type is_ancestor, @function
is_ancestor:
	test	rsi, rsi
	je	.label_502
	mov	rcx, qword ptr [rdi + 8]
	nop	dword ptr [rax]
.label_505:
	cmp	qword ptr [rsi + 8], rcx
	jne	.label_503
	mov	rdx, qword ptr [rsi + 0x10]
	mov	al, 1
	cmp	rdx, qword ptr [rdi]
	je	.label_504
.label_503:
	mov	rsi, qword ptr [rsi]
	test	rsi, rsi
	jne	.label_505
.label_502:
	xor	eax, eax
.label_504:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406a10

	.globl copy_dir
	.type copy_dir, @function
copy_dir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbp, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15d, edx
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbx, rdi
	movups	xmm0, xmmword ptr [rbp + 0x40]
	movaps	xmmword ptr [rsp + 0x70], xmm0
	movups	xmm0, xmmword ptr [rbp]
	movups	xmm1, xmmword ptr [rbp + 0x10]
	movups	xmm2, xmmword ptr [rbp + 0x20]
	movups	xmm3, xmmword ptr [rbp + 0x30]
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	esi, 2
	call	savedir
	test	rax, rax
	je	.label_512
	cmp	dword ptr [rbp + 4], 3
	jne	.label_508
	mov	dword ptr [rsp + 0x34], 2
.label_508:
	cmp	byte ptr [rax], 0
	mov	qword ptr [rsp + 8], rax
	mov	r14b, 1
	je	.label_507
	xor	ebp, ebp
	movzx	ecx, r15b
	mov	dword ptr [rsp + 4], ecx
	mov	r13, rax
	mov	qword ptr [rsp + 0x10], rbx
	nop	word ptr [rax + rax]
.label_506:
	mov	byte ptr [rsp + 2], r14b
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r13
	call	file_name_concat
	mov	r15, rax
	xor	edx, edx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	file_name_concat
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xc0]
	movzx	eax, byte ptr [rax]
	mov	byte ptr [rsp + 1], al
	mov	rdi, r15
	mov	rsi, r12
	mov	edx, dword ptr [rsp + 4]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x28]
	lea	r9, [rsp + 0x30]
	push	0
	lea	rax, [rsp + 0xb]
	push	rax
	lea	rax, [rsp + 0x11]
	push	rax
	push	0
	call	copy_internal
	add	rsp, 0x20
	mov	r14d, eax
	and	r14b, byte ptr [rsp + 2]
	movzx	ebx, byte ptr [rsp + 3]
	mov	rax, qword ptr [rsp + 0xc8]
	or	byte ptr [rax], bl
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
	test	bl, bl
	jne	.label_510
	or	bpl, byte ptr [rsp + 1]
	mov	rdi, r13
	call	strlen
	cmp	byte ptr [r13 + rax + 1], 0
	lea	r13, [r13 + rax + 1]
	mov	rbx, qword ptr [rsp + 0x10]
	jne	.label_506
	jmp	.label_510
.label_512:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_511
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
	jmp	.label_509
.label_507:
	xor	ebp, ebp
.label_510:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	rax, qword ptr [rsp + 0xc0]
	mov	byte ptr [rax], bpl
	test	r14b, r14b
	setne	bpl
.label_509:
	mov	eax, ebp
	add	rsp, 0x88
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
	#Procedure 0x406be0

	.globl copy_reg
	.type copy_reg, @function
copy_reg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x198
	mov	qword ptr [rsp + 0x28], r9
	mov	r14d, r8d
	mov	r13d, ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rax + 0x18]
	mov	dword ptr [rsp + 0x44], eax
	mov	al, byte ptr [r12 + 0x23]
	mov	byte ptr [rsp + 0x18], al
	xor	esi, esi
	cmp	dword ptr [r12 + 4], 2
	sete	sil
	shl	esi, 0x11
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_520
	mov	qword ptr [rsp + 0x30], r15
	lea	rsi, [rsp + 0x108]
	mov	edi, ebx
	call	fstat
	test	eax, eax
	mov	dword ptr [rsp + 0x14], ebx
	je	.label_528
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	jmp	.label_535
.label_520:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_536
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_522
.label_528:
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rcx + 8]
	cmp	rax, qword ptr [rsp + 0x110]
	jne	.label_544
	mov	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rsp + 0x108]
	jne	.label_544
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_546
	mov	dword ptr [rsp + 0x38], r13d
	cmp	byte ptr [r12 + 0x23], 0
	mov	eax, 0x201
	mov	esi, 1
	cmovne	esi, eax
	xor	eax, eax
	mov	qword ptr [rsp], rbp
	mov	rdi, rbp
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	mov	dword ptr [rsp + 0x10], eax
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_554
	test	r15d, r15d
	jns	.label_566
	jmp	.label_571
.label_544:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_559
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
.label_515:
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_534:
	mov	rdx, rbx
.label_535:
	call	error
	xor	ebp, ebp
.label_543:
	mov	edi, dword ptr [rsp + 0x14]
	call	close
	test	eax, eax
	jns	.label_564
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
	mov	edx, 5
	call	dcgettext
	mov	rbx, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x30]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	mov	rbp, rbx
	call	error
.label_564:
	mov	rdi, rbp
	call	free
	and	r13b, 1
.label_522:
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x198
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_554:
	test	r15d, r15d
	js	.label_513
	mov	al, byte ptr [r12 + 0x25]
	test	al, al
	je	.label_513
.label_566:
	movzx	esi, byte ptr [r12 + 0x25]
	xor	ebp, ebp
	xor	edx, edx
	mov	rdi, qword ptr [rsp]
	mov	rcx, r12
	call	set_file_security_ctx
	xor	r13d, r13d
	cmp	byte ptr [r12 + 0x26], 0
	jne	.label_514
.label_513:
	test	r15d, r15d
	jns	.label_523
.label_571:
	cmp	byte ptr [r12 + 0x16], 0
	je	.label_523
	mov	rbp, qword ptr [rsp]
	mov	rdi, rbp
	call	unlink
	test	eax, eax
	je	.label_518
	mov	r14d, dword ptr [rbx]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_140
	jmp	.label_532
.label_518:
	cmp	byte ptr [r12 + 0x2e], 0
	je	.label_533
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_179
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, r13
	mov	rdx, rcx
	call	__printf_chk
.label_533:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	cmp	byte ptr [r12 + 0x21], 0
	je	.label_538
	mov	ecx, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp]
	mov	r8, r12
	call	set_process_security_ctx
	xor	r13d, r13d
	test	al, al
	mov	ebp, 0
	je	.label_543
.label_523:
	xor	ecx, ecx
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rsp + 0x10]
	jne	.label_546
	jmp	.label_550
.label_538:
	mov	rbp, qword ptr [rsp]
	mov	r13d, dword ptr [rsp + 0x38]
.label_546:
	mov	rdi, rbp
	mov	eax, r13d
	mov	edx, r14d
	not	edx
	and	edx, eax
	mov	esi, 0xc1
	xor	eax, eax
	mov	dword ptr [rsp], edx
	call	open_safer
	mov	r15d, eax
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ebx, dword ptr [rax]
	test	r15d, r15d
	mov	dword ptr [rsp + 0xc], r15d
	jns	.label_557
	cmp	ebx, 0x11
	jne	.label_557
	cmp	byte ptr [r12 + 0x18], 0
	jne	.label_557
	lea	rsi, [rsp + 0x78]
	mov	rdi, rbp
	call	lstat
	test	eax, eax
	je	.label_560
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_557
.label_560:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x90]
	cmp	eax, 0xa000
	mov	r15d, dword ptr [rsp + 0xc]
	jne	.label_557
	cmp	byte ptr [r12 + 0x30], 0
	je	.label_562
	mov	esi, 0x41
	xor	eax, eax
	mov	rdi, rbp
	mov	edx, dword ptr [rsp]
	call	open_safer
	mov	r15d, eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	ebx, dword ptr [rax]
.label_557:
	cmp	ebx, 0x15
	jne	.label_525
	test	r15d, r15d
	jns	.label_525
	cmp	byte ptr [rbp], 0
	je	.label_525
	mov	rdi, rbp
	call	strlen
	cmp	byte ptr [rbp + rax - 1], 0x2f
	mov	eax, 0x14
	cmove	ebx, eax
.label_525:
	mov	ecx, r14d
.label_550:
	test	r15d, r15d
	js	.label_569
	mov	dword ptr [rsp + 0x10], ecx
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsp + 0x78]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	je	.label_572
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_531
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_514
.label_569:
	cmp	ebx, 2
	jne	.label_521
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	jne	.label_521
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_526
.label_521:
	xor	r13d, r13d
	xor	edi, edi
	mov	r14d, ebx
	mov	esi, OFFSET FLAT:label_529
.label_532:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_534
.label_572:
	mov	dword ptr [rsp + 0x38], r13d
	mov	r13b, 1
	xor	ebp, ebp
	cmp	byte ptr [rsp + 0x18], 0
	je	.label_524
	cmp	dword ptr [r12 + 0x38], 0
	je	.label_537
	mov	edi, r15d
	mov	esi, dword ptr [rsp + 0x14]
	call	clone_file
	xor	ebp, ebp
	test	eax, eax
	je	.label_524
	cmp	dword ptr [r12 + 0x38], 2
	jne	.label_537
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rsp + 0x28], eax
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_542
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, 4
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 4
	mov	rdx, qword ptr [rsp + 0x30]
	call	quotearg_n_style
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x28]
	mov	rdx, r14
	mov	rcx, rbx
	mov	r8, rbp
	call	error
	xor	ebp, ebp
	jmp	.label_514
.label_537:
	call	getpagesize
	cdqe	
	mov	qword ptr [rsp + 0x48], rax
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x108]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	r14, rax
	mov	rax, qword ptr [rsp + 0xb0]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	qword ptr [rsp + 0x70], rdx
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x14]
	call	fdadvise
	lea	rdi, [rsp + 0x108]
	call	is_probably_sparse
	mov	r13d, 0xf000
	mov	ecx, dword ptr [rsp + 0x90]
	and	ecx, r13d
	cmp	ecx, 0x8000
	mov	dword ptr [rsp + 0xc], r15d
	mov	byte ptr [rsp + 0x26], al
	jne	.label_567
	mov	ecx, dword ptr [r12 + 0xc]
	cmp	ecx, 2
	sete	dl
	cmp	ecx, 3
	mov	cl, 1
	mov	dword ptr [rsp + 0x40], ecx
	je	.label_570
	and	dl, al
	jne	.label_570
.label_567:
	movabs	rbp, 0x7fffffffffffffff
	sub	rbp, qword ptr [rsp + 0x48]
	sub	rsp, 0x90
	lea	rsi, [rsp + 0x198]
	mov	ecx, 0x12
	mov	rdi, rsp
	rep movsq	qword ptr [rdi], qword ptr [rsi]
	call	io_blksize
	add	rsp, 0x90
	mov	rdi, rax
	mov	rsi, r14
	mov	rdx, rbp
	call	buffer_lcm
	mov	rcx, rax
	and	r13d, dword ptr [rsp + 0x120]
	cmp	r13d, 0x8000
	jne	.label_558
	mov	rax, qword ptr [rsp + 0x138]
	cmp	rax, r14
	lea	rax, [rax + 1]
	cmovb	r14, rax
.label_558:
	lea	r14, [rcx + r14 - 1]
	xor	edx, edx
	mov	rax, r14
	div	rcx
	sub	r14, rdx
	lea	rax, [r14 - 1]
	cmp	rax, rbp
	cmovae	r14, rcx
	mov	dword ptr [rsp + 0x40], 0
.label_570:
	mov	r13, qword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x14]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rbx]
	call	xmalloc
	mov	qword ptr [rsp + 0x18], rax
	mov	rdi, rax
	mov	rsi, rbx
	call	ptr_align
	cmp	byte ptr [rsp + 0x26], 0
	mov	edi, ebp
	mov	ebx, dword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0x70]
	je	.label_573
	mov	r11d, 1
	mov	r9, qword ptr [rsp + 0x138]
	test	bl, bl
	je	.label_540
	mov	r11d, dword ptr [r12 + 0xc]
.label_540:
	lea	r10, [rsp + 0x50]
	mov	esi, dword ptr [rsp + 0xc]
	mov	qword ptr [rsp + 0x48], rax
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	r10
	mov	r15, r13
	push	r13
	push	qword ptr [rsp + 0x40]
	push	r11
	call	extent_copy
	add	rsp, 0x20
	test	al, al
	je	.label_549
	mov	r13b, 1
	mov	ecx, 5
	jmp	.label_551
.label_526:
	mov	rax, qword ptr [rsp + 0x28]
	mov	byte ptr [rax], 1
	mov	r14d, ecx
	jmp	.label_546
.label_549:
	cmp	byte ptr [rsp + 0x50], 0
	je	.label_553
	mov	r13, r15
	mov	rax, qword ptr [rsp + 0x48]
	mov	edi, dword ptr [rsp + 0x14]
.label_573:
	xor	ecx, ecx
	test	bl, bl
	cmove	rbp, rcx
	xor	r9d, r9d
	cmp	dword ptr [r12 + 0xc], 3
	sete	r9b
	sub	rsp, 8
	lea	rbx, [rsp + 0x2f]
	lea	r10, [rsp + 0x58]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, rax
	mov	rcx, r14
	mov	r8, rbp
	push	rbx
	push	r10
	push	-1
	push	r13
	push	qword ptr [rsp + 0x58]
	call	sparse_copy
	add	rsp, 0x30
	mov	ecx, 3
	test	al, al
	je	.label_561
	mov	r13b, 1
	cmp	byte ptr [rsp + 0x27], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_563
	mov	rsi, qword ptr [rsp + 0x50]
	mov	r15d, dword ptr [rsp + 0xc]
	mov	edi, r15d
	call	ftruncate
	test	eax, eax
	mov	ecx, 0
	jns	.label_541
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	mov	ecx, 3
	jmp	.label_541
.label_562:
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_575
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	jmp	.label_515
.label_563:
	xor	ecx, ecx
	mov	r15d, dword ptr [rsp + 0xc]
	jmp	.label_541
.label_553:
	mov	ecx, 3
.label_561:
	xor	r13d, r13d
.label_551:
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rbp, qword ptr [rsp + 0x18]
.label_541:
	cmp	ecx, 5
	je	.label_524
	cmp	ecx, 3
	je	.label_514
	test	ecx, ecx
	jne	.label_522
.label_524:
	mov	qword ptr [rsp + 0x18], rbp
	cmp	byte ptr [r12 + 0x1f], 0
	je	.label_530
	mov	rbp, qword ptr [rsp + 0x1d0]
	mov	rdi, rbp
	call	get_stat_atime
	mov	qword ptr [rsp + 0x50], rax
	mov	qword ptr [rsp + 0x58], rdx
	mov	rdi, rbp
	call	get_stat_mtime
	mov	qword ptr [rsp + 0x60], rax
	mov	qword ptr [rsp + 0x68], rdx
	lea	rdx, [rsp + 0x50]
	mov	edi, r15d
	mov	rbp, qword ptr [rsp]
	mov	rsi, rbp
	call	fdutimens
	test	eax, eax
	je	.label_530
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	jne	.label_545
.label_530:
	cmp	byte ptr [r12 + 0x1d], 0
	je	.label_547
	mov	rcx, qword ptr [rsp + 0x1d0]
	mov	eax, dword ptr [rcx + 0x1c]
	cmp	eax, dword ptr [rsp + 0x94]
	mov	rbp, qword ptr [rsp + 0x30]
	jne	.label_548
	mov	eax, dword ptr [rcx + 0x20]
	cmp	eax, dword ptr [rsp + 0x98]
	je	.label_552
.label_548:
	mov	rax, qword ptr [rsp + 0x28]
	movzx	r8d, byte ptr [rax]
	lea	r9, [rsp + 0x78]
	mov	rdi, r12
	mov	rsi, qword ptr [rsp]
	mov	edx, r15d
	call	set_owner
	cmp	eax, -1
	je	.label_545
	test	eax, eax
	mov	ecx, dword ptr [rsp + 0x10]
	jne	.label_555
	and	dword ptr [rsp + 0x44], 0xfffff1ff
	jmp	.label_555
.label_545:
	xor	r13d, r13d
	jmp	.label_527
.label_547:
	mov	rbp, qword ptr [rsp + 0x30]
.label_552:
	mov	ecx, dword ptr [rsp + 0x10]
.label_555:
	cmp	byte ptr [r12 + 0x27], 0
	je	.label_516
	cmp	byte ptr [rsp + 0x90], 0
	js	.label_516
	call	geteuid
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	je	.label_516
	mov	edx, 0x180
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
	test	eax, eax
	jne	.label_516
	mov	edx, ecx
	not	edx
	and	edx, dword ptr [rsp + 0x38]
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	call	fchmod_or_lchmod
	mov	ecx, dword ptr [rsp + 0x10]
.label_516:
	cmp	byte ptr [r12 + 0x1e], 0
	jne	.label_565
	cmp	byte ptr [r12 + 0x18], 0
	je	.label_519
.label_565:
	mov	rdi, rbp
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp]
	mov	ecx, r15d
	mov	r8d, dword ptr [rsp + 0x44]
	call	copy_acl
	test	eax, eax
	je	.label_527
	cmp	byte ptr [r12 + 0x24], 0
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_514
	xor	r13d, r13d
	jmp	.label_514
.label_519:
	cmp	byte ptr [r12 + 0x2b], 0
	je	.label_574
	mov	edx, dword ptr [r12 + 0x10]
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	call	set_acl
	test	eax, eax
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_514
	xor	r13d, r13d
	jmp	.label_514
.label_574:
	cmp	byte ptr [r12 + 0x20], 0
	je	.label_517
	mov	rax, qword ptr [rsp + 0x28]
	cmp	byte ptr [rax], 0
	je	.label_517
	call	cached_umask
	not	eax
	and	eax, 0x1b6
	mov	rdi, qword ptr [rsp]
	mov	esi, r15d
	mov	edx, eax
	call	set_acl
	test	eax, eax
	je	.label_527
	xor	r13d, r13d
	jmp	.label_527
.label_517:
	test	ecx, ecx
	mov	ebp, ecx
	je	.label_527
	call	cached_umask
	not	eax
	test	ebp, eax
	je	.label_527
	mov	ebp, r15d
	mov	edi, r15d
	mov	rsi, qword ptr [rsp]
	mov	edx, dword ptr [rsp + 0x38]
	call	fchmod_or_lchmod
	test	eax, eax
	je	.label_539
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r14
	call	error
	cmp	byte ptr [r12 + 0x24], 0
	je	.label_539
	xor	r13d, r13d
.label_539:
	mov	r15d, ebp
.label_527:
	mov	rbp, qword ptr [rsp + 0x18]
.label_514:
	mov	edi, r15d
	call	close
	test	eax, eax
	jns	.label_543
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_556
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	call	error
	jmp	.label_543
	nop	
	.section	.text
	.align	16
	#Procedure 0x407720

	.globl restore_default_fscreatecon_or_die
	.type restore_default_fscreatecon_or_die, @function
restore_default_fscreatecon_or_die:
	push	rbx
	xor	edi, edi
	call	setfscreatecon
	test	eax, eax
	jne	.label_577
	pop	rbx
	ret	
.label_577:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_576
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
	#Procedure 0x407760

	.globl utimens_symlink
	.type utimens_symlink, @function
utimens_symlink:
	push	rbx
	call	lutimens
	mov	ebx, eax
	test	ebx, ebx
	je	.label_578
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0x26
	cmove	ebx, ecx
	mov	eax, ebx
	pop	rbx
	ret	
.label_578:
	xor	eax, eax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407790

	.globl set_owner
	.type set_owner, @function
set_owner:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	ebx, edx
	mov	r14, rsi
	mov	r15, rdi
	mov	ebp, dword ptr [rcx + 0x1c]
	mov	r12d, dword ptr [rcx + 0x20]
	test	r8b, r8b
	jne	.label_582
	cmp	byte ptr [r15 + 0x1e], 0
	je	.label_592
	mov	edx, dword ptr [r9 + 0x18]
	jmp	.label_583
.label_592:
	cmp	byte ptr [r15 + 0x18], 0
	jne	.label_579
	cmp	byte ptr [r15 + 0x2b], 0
	je	.label_582
.label_579:
	mov	edx, dword ptr [r9 + 0x18]
	cmp	byte ptr [r15 + 0x1e], 0
	jne	.label_583
	cmp	byte ptr [r15 + 0x18], 0
	je	.label_587
.label_583:
	add	rcx, 0x18
.label_586:
	mov	eax, dword ptr [rcx]
	mov	ecx, eax
	or	ecx, 0xe00
	xor	ecx, 0x1ff
	and	ecx, edx
	test	cx, 0xfff
	je	.label_582
	and	edx, eax
	and	edx, 0x1c0
	mov	rdi, r14
	mov	esi, ebx
	call	qset_acl
	test	eax, eax
	je	.label_582
	mov	rdi, r15
	call	owner_failure_ok
	test	al, al
	jne	.label_589
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_591
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
.label_589:
	movzx	eax, byte ptr [r15 + 0x24]
	neg	eax
	jmp	.label_581
.label_582:
	cmp	ebx, -1
	je	.label_590
	mov	edi, ebx
	mov	esi, ebp
	mov	edx, r12d
	call	fchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_581
	call	__errno_location
	mov	rbp, rax
	mov	eax, dword ptr [rbp]
	cmp	eax, 0x16
	je	.label_584
	cmp	eax, 1
	jne	.label_588
.label_584:
	mov	r13d, dword ptr [rbp]
	mov	esi, 0xffffffff
	mov	edi, ebx
	mov	edx, r12d
	call	fchown
	mov	dword ptr [rbp], r13d
	jmp	.label_588
.label_590:
	mov	rdi, r14
	mov	esi, ebp
	mov	edx, r12d
	call	lchown
	mov	ecx, eax
	mov	eax, 1
	test	ecx, ecx
	je	.label_581
	call	__errno_location
	mov	rbx, rax
	mov	eax, dword ptr [rbx]
	cmp	eax, 0x16
	je	.label_585
	cmp	eax, 1
	jne	.label_588
.label_585:
	mov	ebp, dword ptr [rbx]
	mov	esi, 0xffffffff
	mov	rdi, r14
	mov	edx, r12d
	call	lchown
	mov	dword ptr [rbx], ebp
.label_588:
	mov	rdi, r15
	call	chown_failure_ok
	test	al, al
	jne	.label_580
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_446
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
	mov	eax, 0xffffffff
	cmp	byte ptr [r15 + 0x24], 0
	jne	.label_581
.label_580:
	xor	eax, eax
.label_581:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_587:
	lea	rcx, [r15 + 0x10]
	jmp	.label_586
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407970

	.globl writable_destination
	.type writable_destination, @function
writable_destination:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	and	esi, 0xf000
	mov	bl, 1
	cmp	esi, 0xa000
	je	.label_593
	call	can_write_any_file
	test	al, al
	jne	.label_593
	mov	esi, 2
	mov	rdi, r14
	call	euidaccess
	test	eax, eax
	sete	bl
.label_593:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4079b0

	.globl clone_file
	.type clone_file, @function
clone_file:
	mov	ecx, esi
	mov	esi, 0x40049409
	xor	eax, eax
	mov	edx, ecx
	jmp	ioctl
	.section	.text
	.align	16
	#Procedure 0x4079c0

	.globl io_blksize
	.type io_blksize, @function
io_blksize:
	mov	rcx, qword ptr [rsp + 0x40]
	test	rcx, rcx
	setle	al
	movabs	rdx, 0x2000000000000000
	cmp	rcx, rdx
	seta	dl
	cmp	rcx, 0x20000
	jl	.label_594
	or	al, dl
	jne	.label_594
	movabs	rax, 0x2000000000000001
	cmp	rcx, rax
	mov	edx, 0x200
	mov	eax, 0x200
	cmovb	rax, rcx
	test	rcx, rcx
	cmovle	rax, rdx
	ret	
.label_594:
	mov	eax, 0x20000
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a20

	.globl is_probably_sparse
	.type is_probably_sparse, @function
is_probably_sparse:
	mov	eax, 0xf000
	and	eax, dword ptr [rdi + 0x18]
	cmp	eax, 0x8000
	jne	.label_595
	mov	rax, qword ptr [rdi + 0x30]
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x37
	add	rcx, rax
	sar	rcx, 9
	cmp	qword ptr [rdi + 0x40], rcx
	setl	al
	ret	
.label_595:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a50

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407a70

	.globl extent_copy
	.type extent_copy, @function
extent_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x20], r9
	mov	rbp, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	dword ptr [rsp + 0xc], esi
	mov	rbx, qword ptr [rsp + 0xc8]
	lea	r14, [rsp + 0x48]
	mov	dword ptr [rsp + 0x14], edi
	mov	rsi, r14
	call	extent_scan_init
	mov	byte ptr [rbx], 0
	xor	r12d, r12d
	cmp	dword ptr [rsp + 0xb0], 3
	cmovne	rbp, r12
	mov	qword ptr [rsp + 0x38], rbp
	mov	al, 1
	mov	dword ptr [rsp + 0x10], eax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r13d, r13d
.label_613:
	mov	rdi, r14
	call	extent_scan_read
	test	al, al
	je	.label_614
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_617
	mov	r14d, 1
	xor	ecx, ecx
	mov	rsi, qword ptr [rsp + 0x20]
	nop	dword ptr [rax]
.label_624:
	mov	rax, qword ptr [rsp + 0x70]
	lea	rcx, [rcx + rcx*2]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [rax + rcx*8 + 8]
	lea	rax, [rbx + r15]
	cmp	rax, rsi
	jle	.label_596
	cmp	r15, rsi
	cmovg	r15, rsi
	mov	rbx, rsi
	sub	rbx, r15
.label_596:
	mov	rbp, r15
	sub	rbp, r13
	sub	rbp, r12
	je	.label_604
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, r15
	call	lseek
	test	rax, rax
	js	.label_609
	mov	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 1
	jne	.label_611
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rbp
	call	write_zeros
	test	al, al
	je	.label_615
.label_604:
	xor	ebp, ebp
	jmp	.label_625
	nop	
.label_611:
	xor	edx, edx
	cmp	eax, 3
	sete	dl
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, qword ptr [rsp + 0xc0]
	mov	rcx, rbp
	call	create_hole
	mov	bpl, 1
	test	al, al
	je	.label_601
.label_625:
	sub	rsp, 8
	mov	r9d, 1
	mov	edi, dword ptr [rsp + 0x1c]
	mov	esi, dword ptr [rsp + 0x14]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x40]
	lea	rax, [rsp + 0x13]
	push	rax
	lea	rax, [rsp + 0x50]
	push	rax
	push	rbx
	push	qword ptr [rsp + 0xe0]
	push	qword ptr [rsp + 0xe0]
	call	sparse_copy
	add	rsp, 0x30
	test	al, al
	je	.label_601
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdx + r15]
	movzx	eax, byte ptr [rsp + 0xb]
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdi, rsi
	je	.label_612
	mov	dword ptr [rsp + 0x10], ebp
	mov	ecx, r14d
	inc	r14d
	cmp	rcx, qword ptr [rsp + 0x60]
	mov	r13, r15
	mov	r12, rbx
	jb	.label_624
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	lea	r14, [rsp + 0x48]
	je	.label_600
	mov	dword ptr [rsp + 0x10], eax
	jmp	.label_600
	nop	dword ptr [rax]
.label_617:
	mov	r15, r13
	mov	rbx, r12
	jmp	.label_600
.label_612:
	mov	qword ptr [rsp + 0x18], rdi
	test	rdx, rdx
	je	.label_605
	mov	bpl, al
.label_605:
	mov	dword ptr [rsp + 0x10], ebp
	mov	byte ptr [rsp + 0x69], 1
	lea	r14, [rsp + 0x48]
.label_600:
	mov	rdi, r14
	call	extent_scan_free
	cmp	byte ptr [rsp + 0x69], 0
	mov	r12, rbx
	mov	r13, r15
	je	.label_613
	jmp	.label_619
.label_609:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xb8]
	call	quotearg_style
	jmp	.label_620
.label_615:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_603
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xc0]
	call	quotearg_n_style_colon
.label_620:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_601:
	lea	rdi, [rsp + 0x48]
	call	extent_scan_free
.label_607:
	xor	r14d, r14d
.label_597:
	mov	eax, r14d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_614:
	cmp	byte ptr [rsp + 0x69], 0
	je	.label_623
.label_619:
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x18]
	cmp	rsi, rcx
	jl	.label_598
	mov	eax, dword ptr [rsp + 0x10]
	and	al, 1
	je	.label_616
.label_598:
	cmp	dword ptr [rsp + 0xb0], 1
	jne	.label_602
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	write_zeros
	mov	r14b, 1
	test	al, al
	jne	.label_597
	jmp	.label_621
.label_623:
	cmp	byte ptr [rsp + 0x68], 0
	je	.label_608
	mov	rax, qword ptr [rsp + 0xc8]
	mov	byte ptr [rax], 1
	jmp	.label_607
.label_602:
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, rcx
	call	ftruncate
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [rsp + 0x20]
	test	eax, eax
	je	.label_616
.label_621:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_568
	jmp	.label_622
.label_616:
	cmp	dword ptr [rsp + 0xb0], 3
	mov	r14b, 1
	jne	.label_597
	cmp	rsi, rcx
	jge	.label_597
	sub	rcx, rsi
	mov	edi, dword ptr [rsp + 0xc]
	mov	rdx, rcx
	call	punch_hole
	test	eax, eax
	jns	.label_597
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
.label_622:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0xc0]
	call	quotearg_style
	jmp	.label_618
.label_608:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_599
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0xb8]
	call	quotearg_n_style_colon
.label_618:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	jmp	.label_597
	nop	
	.section	.text
	.align	16
	#Procedure 0x407e30

	.globl sparse_copy
	.type sparse_copy, @function
sparse_copy:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x1c], r9d
	mov	r15, r8
	mov	r13, rdx
	mov	dword ptr [rsp + 4], esi
	mov	dword ptr [rsp + 0x3c], edi
	mov	rax, qword ptr [rsp + 0xb0]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	r14, qword ptr [rsp + 0x90]
	mov	byte ptr [rax], 0
	mov	qword ptr [rdx], 0
	test	r15, r15
	mov	rax, rcx
	cmovne	rax, r15
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_636
.label_634:
	mov	qword ptr [rsp + 8], rbp
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [rsp + 0xb0]
	mov	byte ptr [rax], r14b
	mov	r14, qword ptr [rsp + 0x90]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	nop	dword ptr [rax + rax]
.label_636:
	cmp	rsi, rcx
	mov	r12, rcx
	cmovb	r12, rsi
	mov	qword ptr [rsp + 0x30], rsi
	nop	
.label_626:
	test	rsi, rsi
	je	.label_633
	mov	edi, dword ptr [rsp + 0x3c]
	mov	rsi, r13
	mov	rdx, r12
	call	read
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_648
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 4
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_626
	jmp	.label_629
	nop	word ptr cs:[rax + rax]
.label_648:
	je	.label_633
	sub	qword ptr [rsp + 0x30], rbx
	mov	rax, qword ptr [rsp + 0xa8]
	add	qword ptr [rax], rbx
	mov	r8, qword ptr [rsp + 0x10]
	mov	r14d, r8d
	and	r14b, 1
	mov	qword ptr [rsp + 0x20], r13
	mov	rdi, r13
	mov	r12, qword ptr [rsp + 0x50]
	mov	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x40], r15
	nop	dword ptr [rax]
.label_632:
	mov	r9d, r14d
	cmp	r12, rbx
	cmovae	r12, rbx
	test	r15, r15
	je	.label_644
	test	r12, r12
	je	.label_644
	mov	rsi, r12
	mov	r14, rdi
	mov	r13d, r9d
	call	is_nul
	mov	r9d, r13d
	mov	rdi, r14
	mov	r8b, al
.label_644:
	mov	r14d, r8d
	and	r14b, 1
	cmp	r14b, r9b
	setne	al
	mov	rsi, rbp
	test	rbp, rbp
	setne	r13b
	cmp	rbx, r12
	sete	cl
	test	r14b, r14b
	sete	dl
	and	dl, cl
	test	r12, r12
	sete	bpl
	or	bpl, dl
	and	r13b, al
	jne	.label_628
	test	bpl, bpl
	jne	.label_628
	movabs	rax, 0x7fffffffffffffff
	sub	rax, r12
	mov	rbp, rsi
	cmp	rbp, rax
	mov	r13, qword ptr [rsp + 0x28]
	ja	.label_638
	add	rbp, r12
	jmp	.label_646
	nop	word ptr [rax + rax]
.label_628:
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], r8
	test	r13b, 1
	mov	r15, r12
	mov	eax, 0
	cmovne	r15, rax
	add	r15, rsi
	test	r9b, r9b
	je	.label_647
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, r15
	call	create_hole
	test	al, al
	jne	.label_635
	jmp	.label_637
.label_647:
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r15
	call	full_write
	cmp	rax, r15
	jne	.label_639
.label_635:
	test	bpl, bpl
	je	.label_645
	test	r12, r12
	cmove	rbx, r12
	and	r13b, 1
	mov	rax, r12
	mov	ecx, 0
	cmovne	rax, rcx
	test	r13b, r13b
	cmove	r12, rcx
	mov	rbp, r12
	mov	r12, rax
	jmp	.label_649
	nop	dword ptr [rax + rax]
.label_645:
	mov	rbp, r12
.label_649:
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rdi
	mov	r15, qword ptr [rsp + 0x40]
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x10]
.label_646:
	add	rdi, r12
	sub	rbx, r12
	jne	.label_632
	jmp	.label_634
.label_633:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	je	.label_640
	mov	eax, dword ptr [rsp + 0x1c]
	movzx	edx, al
	mov	edi, dword ptr [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rcx, qword ptr [rsp + 8]
	call	create_hole
	test	al, al
	je	.label_641
.label_640:
	mov	r14b, 1
	jmp	.label_630
.label_629:
	mov	rbx, r14
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_643
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	jmp	.label_627
.label_641:
	xor	r14d, r14d
	jmp	.label_630
.label_638:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_631
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x90]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	jmp	.label_627
.label_637:
	xor	r14d, r14d
	jmp	.label_630
.label_639:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_642
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x98]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
.label_627:
	call	error
.label_630:
	mov	eax, r14d
	add	rsp, 0x58
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
	#Procedure 0x4081b0

	.globl fchmod_or_lchmod
	.type fchmod_or_lchmod, @function
fchmod_or_lchmod:
	test	edi, edi
	js	.label_650
	mov	esi, edx
	jmp	fchmod
.label_650:
	mov	rdi, rsi
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4081d0

	.globl extent_scan_free
	.type extent_scan_free, @function
extent_scan_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	qword ptr [rbx + 0x18], 0
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4081f0

	.globl create_hole
	.type create_hole, @function
create_hole:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	ebp, edi
	mov	edx, 1
	mov	rsi, rbx
	call	lseek
	test	rax, rax
	js	.label_651
	mov	r15b, 1
	test	r12b, r12b
	je	.label_652
	sub	rax, rbx
	mov	edi, ebp
	mov	rsi, rax
	mov	rdx, rbx
	call	punch_hole
	test	eax, eax
	jns	.label_652
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_606
	jmp	.label_653
.label_651:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_610
.label_653:
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
.label_652:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408290

	.globl write_zeros
	.type write_zeros, @function
write_zeros:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14d, edi
	cmp	qword ptr [word ptr [rip + write_zeros.zeros]],  0
	jne	.label_654
	mov	al,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	eax, 0x400
	mov	edi, 0x20000
	cmovne	rdi, rax
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [word ptr [rip + write_zeros.zeros]],  rax
	test	rax, rax
	jne	.label_654
	mov	qword ptr [word ptr [rip + write_zeros.zeros]], OFFSET FLAT:write_zeros.fallback
	mov	byte ptr [byte ptr [rip + write_zeros.nz]],  1
.label_654:
	mov	r15d, 0x400
	nop	dword ptr [rax + rax]
.label_656:
	mov	al, 1
	test	rbx, rbx
	je	.label_655
	movzx	eax,  byte ptr [byte ptr [rip + write_zeros.nz]]
	test	al, al
	mov	ebp, 0x20000
	cmovne	rbp, r15
	cmp	rbp, rbx
	cmovae	rbp, rbx
	mov	rsi,  qword ptr [word ptr [rip + write_zeros.zeros]]
	mov	edi, r14d
	mov	rdx, rbp
	call	full_write
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, rbp
	mov	edx, 0
	cmove	rdx, rbp
	sub	rbx, rdx
	cmp	rcx, rbp
	je	.label_656
.label_655:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408350

	.globl punch_hole
	.type punch_hole, @function
punch_hole:
	push	rbp
	push	rbx
	push	rax
	mov	rax, rdx
	mov	rcx, rsi
	mov	esi, 3
	mov	rdx, rcx
	mov	rcx, rax
	call	fallocate
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_657
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	edi, ebp
	call	is_ENOTSUP
	xor	ecx, ecx
	cmp	ebp, 0x26
	cmove	ebx, ecx
	test	al, al
	cmovne	ebx, ecx
.label_657:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083a0

	.globl is_ENOTSUP
	.type is_ENOTSUP, @function
is_ENOTSUP:
	cmp	edi, 0x5f
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4083b0

	.globl is_nul
	.type is_nul, @function
is_nul:
	mov	rcx, rsi
	mov	al, 1
	test	rcx, rcx
	je	.label_658
	dec	rcx
	mov	rsi, rdi
.label_660:
	cmp	byte ptr [rsi], 0
	jne	.label_659
	test	rcx, rcx
	je	.label_658
	inc	rsi
	mov	edx, ecx
	dec	rcx
	test	dl, 0xf
	jne	.label_660
	push	rax
	inc	rcx
	mov	rdx, rcx
	call	memcmp
	test	eax, eax
	sete	al
	add	rsp, 8
.label_658:
	ret	
.label_659:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x4083f0

	.globl owner_failure_ok
	.type owner_failure_ok, @function
owner_failure_ok:
	push	rbx
	mov	rbx, rdi
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 0x16
	je	.label_663
	cmp	eax, 1
	jne	.label_662
.label_663:
	cmp	byte ptr [rbx + 0x1b], 0
	sete	al
	jmp	.label_661
.label_662:
	xor	eax, eax
.label_661:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408420

	.globl forget_created
	.type forget_created, @function
forget_created:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], 0
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_664
	mov	rdi, rax
	call	src_to_dest_free
.label_664:
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408460

	.globl src_to_dest_free
	.type src_to_dest_free, @function
src_to_dest_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408480

	.globl src_to_dest_lookup
	.type src_to_dest_lookup, @function
src_to_dest_lookup:
	sub	rsp, 0x18
	mov	qword ptr [rsp], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	lea	rsi, [rsp]
	call	hash_lookup
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_665
	mov	rax, qword ptr [rcx + 0x10]
.label_665:
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x4084b0

	.globl remember_copied
	.type remember_copied, @function
remember_copied:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx], r15
	mov	qword ptr [rbx + 8], r14
	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	mov	rsi, rbx
	call	hash_insert
	mov	r14, rax
	test	r14, r14
	je	.label_666
	xor	eax, eax
	cmp	r14, rbx
	je	.label_667
	mov	rdi, rbx
	call	src_to_dest_free
	mov	rax, qword ptr [r14 + 0x10]
.label_667:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_666:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408520

	.globl hash_init
	.type hash_init, @function
hash_init:
	push	rax
	mov	edi, 0x67
	xor	esi, esi
	mov	edx, OFFSET FLAT:src_to_dest_hash
	mov	ecx, OFFSET FLAT:src_to_dest_compare
	mov	r8d, OFFSET FLAT:src_to_dest_free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + src_to_dest]],  rax
	test	rax, rax
	je	.label_668
	pop	rax
	ret	
.label_668:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x408550

	.globl src_to_dest_hash
	.type src_to_dest_hash, @function
src_to_dest_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408560

	.globl src_to_dest_compare
	.type src_to_dest_compare, @function
src_to_dest_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	jne	.label_669
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	sete	al
	ret	
.label_669:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408580
	.globl forget_all
	.type forget_all, @function
forget_all:

	mov	rdi,  qword ptr [word ptr [rip + src_to_dest]]
	jmp	hash_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408590

	.globl extent_scan_init
	.type extent_scan_init, @function
extent_scan_init:
	mov	dword ptr [rsi], edi
	mov	qword ptr [rsi + 0x18], 0
	mov	qword ptr [rsi + 0x28], 0
	mov	qword ptr [rsi + 8], 0
	mov	byte ptr [rsi + 0x20], 0
	mov	byte ptr [rsi + 0x21], 0
	mov	dword ptr [rsi + 0x10], 1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4085c0

	.globl extent_scan_read
	.type extent_scan_read, @function
extent_scan_read:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r13, rdi
	mov	r15, qword ptr [r13 + 0x28]
	movabs	r12, 0x7fffffffffffffff
	xor	r14d, r14d
.label_688:
	xor	esi, esi
	mov	edx, 0xff0
	lea	rdi, [rsp + 0x18]
	call	memset
	mov	rax, qword ptr [r13 + 8]
	mov	qword ptr [rsp + 8], rax
	mov	ecx, dword ptr [r13 + 0x10]
	mov	dword ptr [rsp + 0x18], ecx
	mov	dword ptr [rsp + 0x20], 0x48
	not	rax
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, dword ptr [r13]
	mov	esi, 0xc020660b
	xor	eax, eax
	lea	rdx, [rsp + 8]
	call	ioctl
	test	eax, eax
	js	.label_680
	mov	eax, dword ptr [rsp + 0x1c]
	test	rax, rax
	je	.label_690
	mov	rsi, qword ptr [r13 + 0x18]
	mov	rcx, rax
	not	rcx
	cmp	rsi, rcx
	ja	.label_670
	add	rsi, rax
	mov	qword ptr [r13 + 0x18], rsi
	mov	rdi, qword ptr [r13 + 0x28]
	sub	r15, rdi
	mov	edx, 0x18
	call	xnrealloc
	mov	qword ptr [r13 + 0x28], rax
	add	r15, rax
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_687
	xor	eax, eax
	mov	r8d, dword ptr [rsp + 0x1c]
	nop	word ptr cs:[rax + rax]
.label_686:
	mov	ecx, eax
	imul	rsi, rcx, 0x38
	mov	rcx, qword ptr [rsp + rsi + 0x28]
	mov	rdi, qword ptr [rsp + rsi + 0x38]
	mov	rdx, r12
	sub	rdx, rdi
	cmp	rcx, rdx
	ja	.label_678
	lea	rdx, [rsp + rsi + 0x28]
	test	r14d, r14d
	je	.label_689
	mov	ebp, dword ptr [rsp + rsi + 0x50]
	and	ebp, 0xfffffffe
	cmp	dword ptr [r15 + 0x10], ebp
	jne	.label_672
	mov	rbp, qword ptr [r15 + 8]
	mov	rbx, qword ptr [r15]
	add	rbx, rbp
	cmp	rbx, rcx
	jne	.label_672
	lea	rcx, [rsp + rsi + 0x50]
	add	rbp, rdi
	mov	qword ptr [r15 + 8], rbp
	mov	ecx, dword ptr [rcx]
	mov	dword ptr [r15 + 0x10], ecx
	jmp	.label_677
	nop	dword ptr [rax]
.label_672:
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_682
	mov	rcx, qword ptr [r15 + 8]
	add	rcx, qword ptr [r15]
	jmp	.label_685
	nop	word ptr cs:[rax + rax]
.label_689:
	mov	rcx, qword ptr [r13 + 8]
	cmp	rcx, qword ptr [rdx]
	jbe	.label_682
	mov	rcx, qword ptr [r13 + 8]
.label_685:
	mov	rsi, rcx
	sub	rsi, qword ptr [rdx]
	cmp	rsi, qword ptr [rdx + 0x10]
	jb	.label_684
	mov	qword ptr [rdx], rcx
	sub	qword ptr [rdx + 0x10], rsi
	dec	eax
	jmp	.label_677
	nop	dword ptr [rax + rax]
.label_682:
	mov	rcx, qword ptr [r13 + 0x28]
	mov	edi, r14d
	lea	rdi, [rdi + rdi*2]
	lea	r15, [rcx + rdi*8]
	mov	rbp, qword ptr [rdx]
	mov	qword ptr [rcx + rdi*8], rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + rdi*8 + 8], rdx
	mov	edx, dword ptr [rsp + rsi + 0x50]
	mov	dword ptr [rcx + rdi*8 + 0x10], edx
	inc	r14d
.label_677:
	inc	eax
	cmp	eax, r8d
	jb	.label_686
.label_687:
	test	byte ptr [r15 + 0x10], 1
	je	.label_691
	mov	byte ptr [r13 + 0x21], 1
.label_691:
	cmp	r14d, 0x49
	jb	.label_673
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_673
	mov	rax, qword ptr [r13 + 0x28]
	dec	r14d
	lea	rcx, [r14 + r14*2]
	lea	r15, [rax + rcx*8 - 0x18]
	nop	
.label_673:
	mov	eax, r14d
	mov	qword ptr [r13 + 0x18], rax
	cmp	byte ptr [r13 + 0x21], 0
	jne	.label_681
	mov	rax, qword ptr [r15 + 8]
	add	rax, qword ptr [r15]
	mov	qword ptr [r13 + 8], rax
	mov	al, 1
	cmp	r14d, 0x48
	jb	.label_688
	jmp	.label_671
.label_684:
	cmp	qword ptr [r13 + 8], 0
	je	.label_679
	xor	eax, eax
	jmp	.label_671
.label_680:
	cmp	qword ptr [r13 + 8], 0
	je	.label_679
	xor	eax, eax
	jmp	.label_671
.label_679:
	mov	byte ptr [r13 + 0x20], 1
	xor	eax, eax
	jmp	.label_671
.label_690:
	mov	byte ptr [r13 + 0x21], 1
	cmp	qword ptr [r13 + 8], 0
	setne	al
	jmp	.label_671
.label_681:
	mov	al, 1
.label_671:
	add	rsp, 0x1008
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_678:
	mov	edi, OFFSET FLAT:label_674
	mov	esi, OFFSET FLAT:label_675
	mov	edx, 0x8d
	mov	ecx, OFFSET FLAT:label_676
	call	__assert_fail
.label_670:
	mov	edi, OFFSET FLAT:label_683
	mov	esi, OFFSET FLAT:label_675
	mov	edx, 0x7e
	mov	ecx, OFFSET FLAT:label_676
	call	__assert_fail
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408840

	.globl force_linkat
	.type force_linkat, @function
force_linkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	ebx, r9d
	mov	r13d, edx
	mov	r14, rsi
	mov	r15d, edi
	mov	ebp, dword ptr [rsp + 0x160]
	test	ebp, ebp
	jns	.label_692
	mov	edi, r15d
	mov	rsi, r14
	mov	edx, r13d
	mov	r12, rcx
	mov	dword ptr [rsp + 4], r8d
	call	linkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_693
	call	__errno_location
	mov	rcx, r12
	mov	ebp, dword ptr [rax]
	mov	r8d, dword ptr [rsp + 4]
.label_692:
	cmp	ebp, 0x11
	jne	.label_693
	mov	r12d, r8d
	xor	bl, 1
	jne	.label_693
	lea	rsi, [rsp + 0x20]
	mov	rbp, rcx
	mov	rdi, rcx
	call	samedir_template
	mov	rbx, rax
	test	rbx, rbx
	je	.label_697
	mov	dword ptr [rsp + 8], r15d
	mov	qword ptr [rsp + 0x10], r14
	mov	dword ptr [rsp + 0x18], r13d
	mov	dword ptr [rsp + 0x1c], r12d
	lea	rdx, [rsp + 8]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_link
	mov	r8d, 6
	mov	rdi, rbx
	call	try_tempname_len
	test	eax, eax
	je	.label_695
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_696
.label_697:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_693
.label_695:
	mov	edi, r13d
	mov	rsi, rbx
	mov	edx, r13d
	mov	rcx, rbp
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_694
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_694:
	xor	edx, edx
	mov	edi, r13d
	mov	rsi, rbx
	call	unlinkat
.label_696:
	lea	rax, [rsp + 0x20]
	cmp	rbx, rax
	je	.label_693
	mov	rdi, rbx
	call	free
.label_693:
	mov	eax, ebp
	add	rsp, 0x128
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
	#Procedure 0x408960

	.globl samedir_template
	.type samedir_template, @function
samedir_template:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	call	last_component
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rbx + 9]
	cmp	rdi, 0x101
	jb	.label_698
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_699
.label_698:
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	__mempcpy_chk
	movabs	rcx, 0x5858585858587543
	mov	qword ptr [rax], rcx
	mov	byte ptr [rax + 8], 0
	mov	rax, r14
.label_699:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089d0

	.globl try_link
	.type try_link, @function
try_link:
	mov	rax, rdi
	mov	edi, dword ptr [rsi]
	mov	rcx, qword ptr [rsi + 8]
	mov	edx, dword ptr [rsi + 0x10]
	mov	r8d, dword ptr [rsi + 0x14]
	mov	rsi, rcx
	mov	rcx, rax
	jmp	linkat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0

	.globl force_symlinkat
	.type force_symlinkat, @function
force_symlinkat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x118
	mov	ebp, r8d
	mov	ebx, ecx
	mov	r13, rdx
	mov	r15d, esi
	mov	r14, rdi
	test	ebp, ebp
	jns	.label_703
	mov	rdi, r14
	mov	esi, r15d
	mov	rdx, r13
	call	symlinkat
	xor	ebp, ebp
	test	eax, eax
	je	.label_701
	call	__errno_location
	mov	ebp, dword ptr [rax]
.label_703:
	cmp	ebp, 0x11
	jne	.label_701
	xor	bl, 1
	jne	.label_701
	lea	rbx, [rsp + 0x10]
	mov	rdi, r13
	mov	rsi, rbx
	call	samedir_template
	mov	r12, rax
	test	r12, r12
	je	.label_702
	mov	qword ptr [rsp], r14
	mov	dword ptr [rsp + 8], r15d
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:try_symlink
	mov	r8d, 6
	mov	rdi, r12
	call	try_tempname_len
	test	eax, eax
	je	.label_704
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_700
.label_702:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	jmp	.label_701
.label_704:
	mov	edi, r15d
	mov	rsi, r12
	mov	edx, r15d
	mov	rcx, r13
	call	renameat
	mov	ebp, 0xffffffff
	test	eax, eax
	je	.label_700
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edx, edx
	mov	edi, r15d
	mov	rsi, r12
	call	unlinkat
.label_700:
	cmp	r12, rbx
	je	.label_701
	mov	rdi, r12
	call	free
.label_701:
	mov	eax, ebp
	add	rsp, 0x118
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
	#Procedure 0x408af0

	.globl try_symlink
	.type try_symlink, @function
try_symlink:
	mov	rax, rdi
	mov	rdi, qword ptr [rsi]
	mov	esi, dword ptr [rsi + 8]
	mov	rdx, rax
	jmp	symlinkat
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408b10

	.globl copy_acl
	.type copy_acl, @function
copy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	call	qcopy_acl
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_705
	cmp	ebp, -2
	jne	.label_706
	call	__errno_location
	mov	r14d, dword ptr [rax]
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	esi, r14d
	jmp	.label_708
.label_705:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_368
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
.label_708:
	call	error
.label_706:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408ba0

	.globl set_acl
	.type set_acl, @function
set_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	qset_acl
	mov	ebx, eax
	test	ebx, ebx
	je	.label_709
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_323
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r14
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_709:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408c00

	.globl areadlink_with_size
	.type areadlink_with_size, @function
areadlink_with_size:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	cmp	rsi, 0x401
	lea	rax, [rsi + 1]
	mov	r12d, 0x401
	cmovb	r12, rax
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbx, rbx
	je	.label_710
	xor	eax, eax
	mov	qword ptr [rsp], rax
	nop	word ptr cs:[rax + rax]
.label_718:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r12
	call	readlink
	mov	r13, rax
	test	r13, r13
	jns	.label_715
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	cmp	r14d, 0x22
	jne	.label_711
.label_715:
	cmp	r13, r12
	jb	.label_717
	mov	rdi, rbx
	call	free
	mov	rax, r12
	shr	rax, 0x3e
	jne	.label_712
	add	r12, r12
	jmp	.label_713
	nop	word ptr cs:[rax + rax]
.label_712:
	movabs	rax, 0x7fffffffffffffff
	cmp	r12, rax
	mov	r12, rax
	jae	.label_716
.label_713:
	mov	rdi, r12
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_718
	jmp	.label_710
.label_717:
	mov	byte ptr [rbx + r13], 0
	mov	qword ptr [rsp], rbx
	jmp	.label_710
.label_716:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_714
.label_711:
	mov	rdi, rbx
	call	free
	mov	dword ptr [rbp], r14d
.label_714:
	xor	eax, eax
	mov	qword ptr [rsp], rax
.label_710:
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
	#Procedure 0x408d10

	.globl set_simple_backup_suffix
	.type set_simple_backup_suffix, @function
set_simple_backup_suffix:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	jne	.label_719
	mov	edi, OFFSET FLAT:label_722
	call	getenv
	mov	rbx, rax
	mov	eax, OFFSET FLAT:label_720
	test	rbx, rbx
	je	.label_721
.label_719:
	mov	eax, OFFSET FLAT:label_720
	cmp	byte ptr [rbx], 0
	je	.label_721
	mov	rdi, rbx
	call	last_component
	cmp	rbx, rax
	mov	eax, OFFSET FLAT:label_720
	cmove	rax, rbx
.label_721:
	mov	qword ptr [word ptr [rip + simple_backup_suffix]],  rax
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d60

	.globl backupfile_internal
	.type backupfile_internal, @function
backupfile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 0x24], ecx
	mov	ebx, edx
	mov	r13, rsi
	mov	dword ptr [rsp + 0x20], edi
	mov	rdi, r13
	call	last_component
	mov	rbp, rax
	sub	rbp, r13
	mov	rdi, rax
	call	strlen
	mov	r12, rax
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + simple_backup_suffix]],  0
	jne	.label_729
	xor	edi, edi
	call	set_simple_backup_suffix
.label_729:
	mov	rdi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	call	strlen
	inc	rax
	cmp	rax, 9
	mov	ecx, 9
	mov	qword ptr [rsp + 0x28], rax
	cmovae	rcx, rax
	lea	rdi, [r12 + rcx + 1]
	mov	qword ptr [rsp + 0x30], rdi
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	xor	eax, eax
	test	rcx, rcx
	je	.label_725
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rsp + 0xc], 0xffffffff
	mov	qword ptr [rsp + 0x40], 0
	lea	rax, [r12 + 1]
	mov	qword ptr [rsp + 0x38], rax
	nop	
.label_726:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	call	memcpy
	cmp	ebx, 1
	jne	.label_730
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
	jmp	.label_723
	nop	word ptr [rax + rax]
.label_730:
	lea	rax, [rsp + 0xc]
	mov	qword ptr [rsp], rax
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rcx, r12
	mov	r8, rbp
	lea	r9, [rsp + 0x18]
	call	numbered_backup
	cmp	eax, 1
	je	.label_727
	cmp	eax, 2
	je	.label_735
	cmp	eax, 3
	jne	.label_723
	jmp	.label_731
.label_735:
	cmp	ebx, 2
	jne	.label_727
	mov	rdi, qword ptr [rsp + 0x10]
	add	rdi, r12
	mov	rsi,  qword ptr [word ptr [rip + simple_backup_suffix]]
	mov	rdx, qword ptr [rsp + 0x28]
	call	memcpy
	mov	ebx, 1
.label_727:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	edx, dword ptr [rsp + 0xc]
	mov	rsi, r12
	lea	rcx, [rsp + 0x40]
	call	check_extension
.label_723:
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_724
	cmp	dword ptr [rsp + 0xc], 0
	jns	.label_728
	mov	dword ptr [rsp + 0xc], 0xffffff9c
	xor	ebp, ebp
.label_728:
	xor	r8d, r8d
	cmp	ebx, 1
	setne	r8b
	mov	edx, dword ptr [rsp + 0xc]
	mov	rcx, qword ptr [rsp + 0x10]
	add	rcx, rbp
	mov	edi, 0xffffff9c
	mov	rsi, r13
	call	renameatu
	test	eax, eax
	je	.label_724
	call	__errno_location
	mov	r15, rax
	mov	r14d, dword ptr [r15]
	cmp	r14d, 0x11
	je	.label_726
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_732
	call	closedir
.label_732:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [r15], r14d
	jmp	.label_734
.label_724:
	mov	rdi, qword ptr [rsp + 0x18]
	test	rdi, rdi
	je	.label_733
	call	closedir
.label_733:
	mov	rax, qword ptr [rsp + 0x10]
	jmp	.label_725
.label_731:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0xc
.label_734:
	xor	eax, eax
.label_725:
	add	rsp, 0x48
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
	#Procedure 0x408f80

	.globl numbered_backup
	.type numbered_backup, @function
numbered_backup:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, r9
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x20], rdx
	mov	ebx, edi
	mov	r12, qword ptr [r15]
	mov	qword ptr [rsp + 0x28], rsi
	mov	r14, qword ptr [rsi]
	mov	qword ptr [rsp + 0x48], r8
	lea	rbp, [r14 + r8]
	mov	rdi, rbp
	call	base_len
	mov	r13, rax
	test	r12, r12
	mov	qword ptr [rsp], r13
	je	.label_746
	mov	rdi, r12
	call	rewinddir
	jmp	.label_748
.label_746:
	mov	rcx, qword ptr [rsp + 0x90]
	movzx	r13d, word ptr [rbp]
	mov	word ptr [rbp], 0x2e
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r14
	call	opendirat
	mov	r12, rax
	test	r12, r12
	je	.label_753
	mov	word ptr [rbp], r13w
	mov	r13, qword ptr [rsp]
	mov	byte ptr [rbp + r13 + 4], 0
	mov	dword ptr [rbp + r13], 0x7e317e2e
	mov	qword ptr [r15], r12
.label_748:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	je	.label_742
	lea	rax, [r13 + 4]
	mov	qword ptr [rsp + 0x50], rax
	lea	rax, [r13 + 2]
	mov	qword ptr [rsp + 0x40], rax
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 4]
	mov	qword ptr [rsp + 0x30], rax
	lea	rax, [r13 + 0x17]
	mov	qword ptr [rsp + 0x38], rax
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_738
.label_743:
	mov	r13d, 1
.label_755:
	cmp	al, 0x7e
	jne	.label_737
	mov	rax, qword ptr [rsp]
	lea	rbp, [rbp + rax + 0x15]
	cmp	byte ptr [rbp + r13 + 1], 0
	jne	.label_737
	cmp	qword ptr [rsp + 0x18], r13
	jb	.label_736
	jne	.label_737
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [r14 + rax + 2]
	mov	rsi, rbp
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	jle	.label_736
.label_737:
	mov	r15, r14
	mov	r13, qword ptr [rsp]
	jmp	.label_740
.label_736:
	movzx	edx, bl
	lea	rcx, [rdx + r13]
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rcx
	lea	rsi, [rax + rcx]
	mov	rbx, qword ptr [rsp + 0x20]
	cmp	rbx, rsi
	jae	.label_744
	mov	rax, rsi
	shr	rax, 0x3e
	sete	cl
	shl	rsi, cl
	mov	rdi, r14
	mov	rbx, rsi
	mov	r15, rdx
	call	realloc
	mov	rdx, r15
	mov	r15, rax
	test	r15, r15
	jne	.label_754
	jmp	.label_747
.label_744:
	mov	r15, r14
.label_754:
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [r15 + rcx]
	mov	byte ptr [r15 + rcx], 0x2e
	lea	rbx, [rax + rdx]
	mov	word ptr [r15 + rcx + 1], 0x307e
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdx + rax + 2]
	lea	rdx, [r13 + 2]
	mov	rsi, rbp
	call	memcpy
	lea	rax, [r13 + rbx + 1]
	mov	cl, byte ptr [r13 + rbx + 1]
	cmp	cl, 0x39
	jne	.label_745
	mov	r13, qword ptr [rsp]
	nop	dword ptr [rax]
.label_749:
	mov	byte ptr [rax], 0x30
	movzx	ecx, byte ptr [rax - 1]
	dec	rax
	cmp	cl, 0x39
	je	.label_749
	jmp	.label_751
.label_745:
	mov	r13, qword ptr [rsp]
.label_751:
	inc	cl
	mov	byte ptr [rax], cl
	jmp	.label_740
	nop	
.label_738:
	lea	rbx, [rbp + 0x13]
	mov	rdi, rbx
	call	strlen
	cmp	rax, qword ptr [rsp + 0x50]
	jb	.label_739
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [r14 + rax]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x40]
	call	memcmp
	test	eax, eax
	jne	.label_739
	mov	al, byte ptr [rbp + r13 + 0x15]
	mov	ecx, eax
	add	cl, 0xcf
	cmp	cl, 8
	ja	.label_739
	lea	rcx, [rbp + r13 + 0x13]
	cmp	al, 0x39
	sete	bl
	movsx	eax, byte ptr [rcx + 3]
	mov	ecx, eax
	add	ecx, -0x30
	cmp	ecx, 9
	ja	.label_743
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rcx, [rbp + rcx]
	xor	r13d, r13d
	nop	dword ptr [rax]
.label_752:
	cmp	al, 0x39
	sete	al
	and	bl, al
	movsx	eax, byte ptr [rcx + r13]
	mov	edx, eax
	add	edx, -0x30
	inc	r13
	cmp	edx, 0xa
	jb	.label_752
	inc	r13
	jmp	.label_755
	nop	word ptr cs:[rax + rax]
.label_739:
	mov	r15, r14
.label_740:
	mov	rdi, r12
	call	readdir
	mov	rbp, rax
	test	rbp, rbp
	mov	r14, r15
	jne	.label_738
	jmp	.label_741
.label_742:
	mov	eax, 2
	mov	qword ptr [rsp + 0x10], rax
	mov	r15, r14
.label_741:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r15
	mov	rcx, qword ptr [rsp + 0x10]
.label_750:
	mov	eax, ecx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_753:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 0xc
	sete	cl
	or	ecx, 2
	mov	word ptr [rbp], r13w
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rbp + rax + 4], 0
	mov	dword ptr [rbp + rax], 0x7e317e2e
	jmp	.label_750
.label_747:
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], r14
	mov	ecx, 3
	jmp	.label_750
	nop	
	.section	.text
	.align	16
	#Procedure 0x409290

	.globl check_extension
	.type check_extension, @function
check_extension:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rcx
	mov	ebp, edx
	mov	r15, rsi
	mov	rbx, rdi
	call	last_component
	mov	r14, rax
	mov	rdi, r14
	call	base_len
	mov	r13, rax
	mov	eax, 0xff
	cmp	r13, 0xf
	jb	.label_759
	cmp	qword ptr [r12], 0
	jne	.label_757
	test	ebp, ebp
	js	.label_758
	call	__errno_location
	mov	qword ptr [rsp], rax
	mov	dword ptr [rax], 0
	mov	esi, 3
	mov	edi, ebp
	call	fpathconf
	mov	rcx, qword ptr [rsp]
	cmp	dword ptr [rcx], 1
	sbb	rax, 0
	jmp	.label_756
.label_758:
	movzx	eax, word ptr [r14]
	mov	word ptr [rsp], ax
	mov	word ptr [r14], 0x2e
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	esi, 3
	mov	rdi, rbx
	call	pathconf
	cmp	dword ptr [rbp], 1
	sbb	rax, 0
	movzx	ecx, word ptr [rsp]
	mov	word ptr [r14], cx
.label_756:
	cmp	rax, -1
	mov	ecx, 0xe
	mov	rdx, -1
	cmovl	rdx, rcx
	test	rax, rax
	cmovns	rdx, rax
	mov	qword ptr [r12], rdx
.label_757:
	mov	rax, qword ptr [r12]
.label_759:
	cmp	rax, r13
	jae	.label_760
	add	rbx, r15
	sub	rbx, r14
	cmp	rax, rbx
	lea	rax, [rax - 1]
	cmova	rax, rbx
	mov	word ptr [r14 + rax], 0x7e
.label_760:
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
	#Procedure 0x409390

	.globl backup_file_rename
	.type backup_file_rename, @function
backup_file_rename:
	mov	ecx, 1
	jmp	backupfile_internal
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093a0
	.globl find_backup_file_name
	.type find_backup_file_name, @function
find_backup_file_name:

	push	rax
	xor	ecx, ecx
	call	backupfile_internal
	test	rax, rax
	je	.label_761
	pop	rcx
	ret	
.label_761:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4093c0

	.globl get_version
	.type get_version, @function
get_version:
	mov	eax, 2
	test	rsi, rsi
	je	.label_762
	cmp	byte ptr [rsi], 0
	je	.label_762
	push	rax
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edx, OFFSET FLAT:backup_args
	mov	ecx, OFFSET FLAT:backup_types
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + backup_types]]
	add	rsp, 8
.label_762:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409400

	.globl xget_version
	.type xget_version, @function
xget_version:
	test	rsi, rsi
	je	.label_763
	cmp	byte ptr [rsi], 0
	je	.label_763
	jmp	get_version
.label_763:
	push	rax
	mov	edi, OFFSET FLAT:label_764
	call	getenv
	mov	edi, OFFSET FLAT:label_765
	mov	rsi, rax
	pop	rax
	jmp	get_version
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409430

	.globl buffer_lcm
	.type buffer_lcm, @function
buffer_lcm:
	mov	r8, rdx
	test	rdi, rdi
	je	.label_766
	test	rsi, rsi
	je	.label_769
	mov	rax, rdi
	mov	rdx, rsi
	nop	word ptr cs:[rax + rax]
.label_767:
	mov	rcx, rdx
	xor	edx, edx
	div	rcx
	test	rdx, rdx
	mov	rax, rcx
	jne	.label_767
	xor	edx, edx
	mov	rax, rdi
	div	rcx
	mov	r9, rax
	mov	rcx, r9
	imul	rcx, rsi
	cmp	rcx, r8
	ja	.label_769
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	cmp	rax, r9
	jne	.label_769
	jmp	.label_768
.label_766:
	test	rsi, rsi
	mov	edi, 0x2000
	cmovne	rdi, rsi
.label_769:
	cmp	rdi, r8
	cmovbe	r8, rdi
	mov	rcx, r8
.label_768:
	mov	rax, rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094a0
	.globl close_stdin_set_file_name
	.type close_stdin_set_file_name, @function
close_stdin_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4094b0

	.globl close_stdin
	.type close_stdin, @function
close_stdin:
	push	rbp
	push	r14
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
	mov	rdi, rbx
	call	freadahead
	xor	ebp, ebp
	test	rax, rax
	je	.label_771
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
	test	eax, eax
	jne	.label_771
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fflush
	test	eax, eax
	setne	bpl
.label_771:
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	close_stream
	test	bpl, bpl
	jne	.label_770
	test	eax, eax
	jne	.label_770
	pop	rbx
	pop	r14
	pop	rbp
	jmp	close_stdout
.label_770:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_773
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_775
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	jmp	.label_772
.label_775:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_774
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
.label_772:
	call	close_stdout
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409580
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name_0]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409590
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4095a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_778
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_776
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_776
.label_778:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_779
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_776:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_780
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name_0]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_777
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_779:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_777:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_774
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409660

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_781
	pop	rcx
	ret	
.label_781:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409680

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
.label_783:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_782
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_783
.label_782:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4096c0

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
	je	.label_784
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_785
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_785:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_784:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409720

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_786:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_786
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_789
	nop	word ptr cs:[rax + rax]
.label_788:
	inc	rax
	mov	sil, dl
.label_789:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_788
	test	cl, cl
	je	.label_790
	mov	edx, esi
	and	dl, 1
	je	.label_787
	xor	esi, esi
.label_787:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_788
.label_790:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409780

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_792:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_791
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_792
.label_791:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097b0

	.globl strip_trailing_slashes
	.type strip_trailing_slashes, @function
strip_trailing_slashes:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	call	last_component
	mov	rbx, rax
	cmp	byte ptr [rbx], 0
	cmove	rbx, r14
	mov	rdi, rbx
	call	base_len
	cmp	byte ptr [rbx + rax], 0
	setne	cl
	mov	byte ptr [rbx + rax], 0
	mov	eax, ecx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4097f0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409800
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_793
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_793:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409820

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_794
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_794:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	mov	qword ptr [rsp + 0x30], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_795
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x10
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_797
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_796
.label_797:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_796:
	mov	edx, dword ptr [rax]
.label_795:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098f0

	.globl record_file
	.type record_file, @function
record_file:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	je	.label_798
	mov	edi, 0x18
	call	xmalloc
	mov	rbx, rax
	mov	rdi, r12
	call	xstrdup
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	mov	rsi, rbx
	call	hash_insert
	test	rax, rax
	je	.label_799
	cmp	rax, rbx
	je	.label_798
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	triple_free
.label_798:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_799:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970

	.globl seen_file
	.type seen_file, @function
seen_file:
	test	rdi, rdi
	je	.label_800
	sub	rsp, 0x18
	mov	qword ptr [rsp], rsi
	mov	rax, qword ptr [rdx + 8]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rdx]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsp]
	call	hash_lookup
	test	rax, rax
	setne	al
	add	rsp, 0x18
	ret	
.label_800:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4099b0

	.globl file_type
	.type file_type, @function
file_type:
	movzx	eax, word ptr [rdi + 0x18]
	and	eax, 0xf000
	movsx	ecx, ax
	movzx	eax, ax
	cmp	ecx, 0xfff
	jle	.label_810
	cmp	ecx, 0x3fff
	jg	.label_806
	cmp	eax, 0x1000
	je	.label_809
	cmp	eax, 0x2000
	jne	.label_801
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_805
	mov	edx, 5
	jmp	dcgettext
.label_810:
	cmp	eax, 0x8000
	je	.label_812
	cmp	eax, 0xa000
	je	.label_816
	cmp	eax, 0xc000
	jne	.label_801
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_808
	mov	edx, 5
	jmp	dcgettext
.label_806:
	cmp	eax, 0x4000
	je	.label_815
	cmp	eax, 0x6000
	jne	.label_801
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_804
	mov	edx, 5
	jmp	dcgettext
.label_809:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_814
	mov	edx, 5
	jmp	dcgettext
.label_812:
	cmp	qword ptr [rdi + 0x30], 0
	je	.label_807
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_817
	mov	edx, 5
	jmp	dcgettext
.label_816:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_802
	mov	edx, 5
	jmp	dcgettext
.label_815:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_811
	mov	edx, 5
	jmp	dcgettext
.label_801:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_803
	mov	edx, 5
	jmp	dcgettext
.label_807:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_813
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409ab0

	.globl strmode
	.type strmode, @function
strmode:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	ebx, edi
	call	ftypelet
	mov	byte ptr [r14], al
	mov	al, bh
	test	al, 1
	mov	sil, 0x72
	mov	cl, 0x72
	jne	.label_828
	mov	cl, 0x2d
.label_828:
	mov	byte ptr [r14 + 1], cl
	mov	ecx, ebx
	sar	cl, 7
	and	cl, 0x4a
	add	cl, 0x2d
	mov	byte ptr [r14 + 2], cl
	mov	ecx, ebx
	and	ecx, 0x40
	mov	edx, ecx
	shr	edx, 1
	or	edx, 0x53
	test	ecx, ecx
	mov	r8b, 0x78
	mov	cl, 0x78
	jne	.label_821
	mov	cl, 0x2d
.label_821:
	test	al, 8
	jne	.label_827
	mov	dl, cl
.label_827:
	mov	byte ptr [r14 + 3], dl
	test	bl, 0x20
	mov	cl, 0x72
	jne	.label_825
	mov	cl, 0x2d
.label_825:
	mov	byte ptr [r14 + 4], cl
	test	bl, 0x10
	mov	dl, 0x77
	mov	cl, 0x77
	jne	.label_819
	mov	cl, 0x2d
.label_819:
	mov	byte ptr [r14 + 5], cl
	mov	ecx, ebx
	and	ecx, 8
	lea	edi, [rcx*4 + 0x53]
	mov	cl, 0x78
	jne	.label_822
	mov	cl, 0x2d
.label_822:
	test	al, 4
	jne	.label_824
	mov	dil, cl
.label_824:
	mov	byte ptr [r14 + 6], dil
	test	bl, 4
	jne	.label_826
	mov	sil, 0x2d
.label_826:
	mov	byte ptr [r14 + 7], sil
	test	bl, 2
	jne	.label_818
	mov	dl, 0x2d
.label_818:
	mov	byte ptr [r14 + 8], dl
	and	ebx, 1
	jne	.label_820
	mov	r8b, 0x2d
.label_820:
	test	al, 2
	je	.label_823
	shl	ebx, 5
	or	ebx, 0x54
	mov	r8d, ebx
.label_823:
	mov	byte ptr [r14 + 9], r8b
	mov	byte ptr [r14 + 0xa], 0x20
	mov	byte ptr [r14 + 0xb], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409b80

	.globl ftypelet
	.type ftypelet, @function
ftypelet:
	and	edi, 0xfffff000
	movsx	eax, di
	cmp	eax, 0xfff
	jle	.label_829
	cmp	eax, 0x3fff
	jg	.label_833
	movzx	eax, di
	cmp	eax, 0x1000
	je	.label_834
	cmp	eax, 0x2000
	jne	.label_830
	mov	al, 0x63
	ret	
.label_829:
	mov	al, 0x2d
	movzx	ecx, di
	cmp	ecx, 0x8000
	je	.label_831
	cmp	ecx, 0xa000
	je	.label_835
	cmp	ecx, 0xc000
	jne	.label_830
	mov	al, 0x73
	ret	
.label_833:
	movzx	eax, di
	cmp	eax, 0x6000
	je	.label_832
	cmp	eax, 0x4000
	jne	.label_830
	mov	al, 0x64
	ret	
.label_834:
	mov	al, 0x70
	ret	
.label_832:
	mov	al, 0x62
	ret	
.label_830:
	mov	al, 0x3f
.label_831:
	ret	
.label_835:
	mov	al, 0x6c
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409bf0
	.globl filemodestring
	.type filemodestring, @function
filemodestring:

	mov	edi, dword ptr [rdi + 0x18]
	jmp	strmode
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c00

	.globl file_name_concat
	.type file_name_concat, @function
file_name_concat:
	push	rax
	call	mfile_name_concat
	test	rax, rax
	je	.label_836
	pop	rcx
	ret	
.label_836:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409c20

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r15
	call	strlen
	test	rbp, rbp
	je	.label_841
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_837
	cmp	byte ptr [r15], 0x2f
	je	.label_837
	mov	r12b, 0x2f
	jmp	.label_838
.label_841:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_838
.label_837:
	xor	r12d, r12d
.label_838:
	xor	ebp, ebp
	test	r12b, r12b
	setne	bpl
	mov	qword ptr [rsp + 8], rax
	lea	rax, [rax + rbx]
	lea	rdi, [rbp + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_840
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_839
	mov	qword ptr [rax], rbp
.label_839:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_840:
	add	rsp, 0x18
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
	#Procedure 0x409d00

	.globl full_write
	.type full_write, @function
full_write:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	ebp, edi
	xor	r14d, r14d
	test	r15, r15
	je	.label_842
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_844:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_write
	cmp	rax, -1
	je	.label_842
	test	rax, rax
	je	.label_843
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_844
	jmp	.label_842
.label_843:
	call	__errno_location
	mov	dword ptr [rax], 0x1c
.label_842:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x409d60

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d70

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d80

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409d90

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_845
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_847:
	cmp	qword ptr [rcx], 0
	je	.label_846
	xor	esi, esi
	mov	rdi, rcx
	nop	dword ptr [rax + rax]
.label_848:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_848
	cmp	rsi, rax
	cmova	rax, rsi
.label_846:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_847
.label_845:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409de0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	edx, edx
	cmp	rsi, qword ptr [rdi + 8]
	mov	ecx, 0
	jae	.label_849
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_854:
	cmp	qword ptr [rsi], 0
	je	.label_851
	mov	rax, rsi
	nop	dword ptr [rax]
.label_850:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_850
	inc	rdx
.label_851:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_854
.label_849:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_852
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_853
.label_852:
	xor	eax, eax
.label_853:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409e40
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
	mov	edx, OFFSET FLAT:label_855
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_856
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_858]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_859]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_860]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_861
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_857
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
	#Procedure 0x409f30

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
	je	.label_862
	test	rbx, rbx
	je	.label_862
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_863:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_864
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_864
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_863
	jmp	.label_862
.label_864:
	mov	r15, qword ptr [rbx]
.label_862:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	16
	#Procedure 0x409f90

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
	jae	.label_865
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_865:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409fc0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_866
	mov	rcx, qword ptr [rdi]
	jmp	.label_868
	nop	
.label_869:
	add	rcx, 0x10
.label_868:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_867
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_869
.label_866:
	ret	
.label_867:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409ff0
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
.label_874:
	cmp	qword ptr [rcx], rbx
	jne	.label_870
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_871
.label_870:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_874
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_873:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_872
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_873
	jmp	.label_872
.label_871:
	mov	rcx, qword ptr [rdx]
.label_872:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a060
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_875
	xor	eax, eax
.label_878:
	cmp	qword ptr [r8], 0
	je	.label_876
	test	r8, r8
	je	.label_876
	mov	r9, r8
	nop	dword ptr [rax + rax]
.label_877:
	cmp	rax, rdx
	jae	.label_875
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_877
.label_876:
	add	r8, 0x10
	cmp	r8, qword ptr [rdi + 8]
	jb	.label_878
.label_875:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0b0
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
	jae	.label_879
	xor	ebx, ebx
.label_881:
	cmp	qword ptr [r13], 0
	je	.label_880
	test	r13, r13
	je	.label_880
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_879
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_882
.label_880:
	add	r13, 0x10
	cmp	r13, qword ptr [r12 + 8]
	jb	.label_881
.label_879:
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
	#Procedure 0x40a130
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_883
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_884:
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
	jne	.label_884
.label_883:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a170
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_885]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a190

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
	je	.label_887
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_886
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_886
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_886
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
	jmp	.label_887
.label_886:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_887:
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
	#Procedure 0x40a270

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
	#Procedure 0x40a290

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2a0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_888
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_889]]
	jbe	.label_890
	movss	xmm1,  dword ptr [dword ptr [rip + label_893]]
	ucomiss	xmm1, xmm0
	jbe	.label_890
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_892]]
	jbe	.label_890
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_890
	addss	xmm1,  dword ptr [dword ptr [rip + label_889]]
	ucomiss	xmm0, xmm1
	jbe	.label_890
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_891]]
	ucomiss	xmm2, xmm0
	jb	.label_890
	ucomiss	xmm0, xmm1
	ja	.label_888
.label_890:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_888:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a320

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_894
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_899
	cvtsi2ss	xmm0, rdi
	jmp	.label_895
.label_899:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_895:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_896]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_897]]
	jae	.label_898
.label_894:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_898:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a3a0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_900
	nop	dword ptr [rax]
.label_906:
	add	r14, 0x10
.label_900:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_905
	cmp	qword ptr [r14], 0
	je	.label_906
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_901
	nop	word ptr cs:[rax + rax]
.label_903:
	test	cl, 1
	je	.label_902
	mov	rdi, qword ptr [rbx]
	call	rax
.label_902:
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
	jne	.label_903
.label_901:
	test	cl, cl
	je	.label_904
	mov	rdi, qword ptr [r14]
	call	rax
.label_904:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_906
.label_905:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a440

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_907
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_907
	mov	r14, qword ptr [r15]
	jmp	.label_914
	nop	dword ptr [rax + rax]
.label_910:
	add	r14, 0x10
.label_914:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_907
	cmp	qword ptr [r14], 0
	je	.label_910
	test	r14, r14
	je	.label_910
	mov	rbx, r14
	nop	dword ptr [rax + rax]
.label_908:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_908
	jmp	.label_910
.label_907:
	mov	r14, qword ptr [r15]
	jmp	.label_912
	nop	word ptr [rax + rax]
.label_911:
	add	r14, 0x10
.label_912:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_915
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_911
	nop	word ptr cs:[rax + rax]
.label_909:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_909
	jmp	.label_911
.label_915:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_913
	nop	dword ptr [rax]
.label_916:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_916
.label_913:
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
	#Procedure 0x40a510

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
	je	.label_917
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_918
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_917
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
	je	.label_919
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
	jmp	.label_918
.label_919:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_920
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_920
	mov	rdi, qword ptr [rsp]
	call	free
.label_917:
	xor	r14d, r14d
.label_918:
	mov	eax, r14d
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_920:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a640

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
	jae	.label_921
	mov	qword ptr [rsp], rbp
	nop	dword ptr [rax + rax]
.label_928:
	cmp	qword ptr [r15], 0
	je	.label_925
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_930
	nop	word ptr cs:[rax + rax]
.label_924:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_926
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_927
	nop	word ptr cs:[rax + rax]
.label_926:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_927:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_924
.label_930:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	test	r12b, r12b
	mov	rbp, qword ptr [rsp]
	jne	.label_925
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_929
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_922
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_923
.label_929:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_923:
	mov	qword ptr [r15], 0
	dec	qword ptr [rbp + 0x18]
.label_925:
	add	r15, 0x10
	cmp	r15, qword ptr [rbp + 8]
	jb	.label_928
	mov	al, 1
.label_921:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_922:
	xor	eax, eax
	jmp	.label_921
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a760

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
	je	.label_935
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_933
	test	rbx, rbx
	je	.label_934
	mov	qword ptr [rbx], rax
	jmp	.label_934
.label_933:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_939
	cvtsi2ss	xmm0, rcx
	jmp	.label_944
.label_939:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_944:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_932
	cvtsi2ss	xmm1, rax
	jmp	.label_938
.label_932:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_938:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_940
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_931
	cvtsi2ss	xmm2, rcx
	jmp	.label_936
.label_931:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_936:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_942
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_945
.label_942:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_945:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_940
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_941
	mulss	xmm0, xmm1
.label_941:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_897]]
	jae	.label_934
	movss	xmm1,  dword ptr [dword ptr [rip + label_896]]
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
	je	.label_934
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_935
.label_940:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_937
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_934
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_943
.label_937:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_943:
	mov	ebp, 1
.label_934:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_935:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a940

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
	je	.label_947
	cmp	rsi, r13
	je	.label_950
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_952
.label_950:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_947
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_948
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_951
.label_952:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_947
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_949:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_946
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_946
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_949
	jmp	.label_947
.label_948:
	mov	qword ptr [rbx], 0
	jmp	.label_947
.label_946:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_947
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_951:
	mov	rdi, r14
	call	free_entry
.label_947:
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
	#Procedure 0x40aa10

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_953
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_953:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa40

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
	je	.label_954
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_954:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aa70

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
	je	.label_958
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_963
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_957
	cvtsi2ss	xmm0, rax
	jmp	.label_955
.label_957:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_955:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_962
	cvtsi2ss	xmm1, rcx
	jmp	.label_966
.label_962:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_966:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_963
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_961
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_965
.label_961:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_965:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_956
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	jmp	.label_959
.label_956:
	shr	rax, 1
	or	rdx, rax
	xorps	xmm0, xmm0
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_959:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_963
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_967
	mulss	xmm0, dword ptr [rcx + 8]
.label_967:
	movss	xmm1,  dword ptr [dword ptr [rip + label_896]]
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
	jne	.label_963
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_964
	nop	dword ptr [rax + rax]
.label_960:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_960
.label_964:
	mov	qword ptr [r15 + 0x48], 0
.label_963:
	mov	rax, r14
.label_958:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac00

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
	jmp	.label_968
	nop	
.label_969:
	add	rbx, 2
.label_968:
	cmp	rbx, -1
	je	.label_970
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_969
	mov	r14, rbx
.label_970:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac50

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	cmp	r8, 0xa
	jb	.label_971
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	nop	dword ptr [rax]
.label_972:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_971
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_972
.label_971:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40aca0

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
	#Procedure 0x40acc0

	.globl triple_hash
	.type triple_hash, @function
triple_hash:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	hash_pjw
	xor	rax, qword ptr [rbx + 8]
	xor	edx, edx
	div	r14
	mov	rax, rdx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40acf0

	.globl triple_hash_no_name
	.type triple_hash_no_name, @function
triple_hash_no_name:
	mov	rax, qword ptr [rdi + 8]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ad00

	.globl triple_compare
	.type triple_compare, @function
triple_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_973
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_974
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	same_name
	add	rsp, 8
	ret	
.label_973:
	xor	eax, eax
	ret	
.label_974:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad30
	.globl triple_compare_ino_str
	.type triple_compare_ino_str, @function
triple_compare_ino_str:

	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_975
	mov	rax, qword ptr [rdi + 0x10]
	cmp	rax, qword ptr [rsi + 0x10]
	jne	.label_976
	push	rax
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	call	strcmp
	test	eax, eax
	sete	al
	add	rsp, 8
	ret	
.label_975:
	xor	eax, eax
	ret	
.label_976:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40ad60

	.globl triple_free
	.type triple_free, @function
triple_free:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ad80

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
	js	.label_978
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	test	rbx, rbx
	je	.label_977
	mov	dword ptr [r14], ebp
	jmp	.label_978
.label_977:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	xor	ebx, ebx
.label_978:
	mov	rax, rbx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40add0

	.globl priv_set_remove_linkdir
	.type priv_set_remove_linkdir, @function
priv_set_remove_linkdir:
	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ade0
	.globl priv_set_restore_linkdir
	.type priv_set_restore_linkdir, @function
priv_set_restore_linkdir:

	mov	eax, 0xffffffff
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40adf0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_982
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_981
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_979
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_981
	mov	esi, OFFSET FLAT:label_984
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_980
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_980:
	mov	rbx, r14
.label_981:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_982:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_983
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aea0

	.globl qcopy_acl
	.type qcopy_acl, @function
qcopy_acl:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14d, ecx
	mov	rbx, rdx
	lea	rcx, [rsp]
	mov	edx, r8d
	call	get_permissions
	mov	ebp, 0xfffffffe
	test	eax, eax
	jne	.label_985
	lea	r15, [rsp]
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, r14d
	call	set_permissions
	mov	ebp, eax
	mov	rdi, r15
	call	free_permission_context
.label_985:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aef0

	.globl qset_acl
	.type qset_acl, @function
qset_acl:
	push	rbp
	push	rbx
	push	rax
	mov	eax, esi
	mov	rcx, rdi
	mov	dword ptr [rsp], edx
	lea	rbx, [rsp]
	mov	rdi, rbx
	mov	rsi, rcx
	mov	edx, eax
	call	set_permissions
	mov	ebp, eax
	mov	rdi, rbx
	call	free_permission_context
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40af20
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
	#Procedure 0x40af60
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
	#Procedure 0x40af70
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
	#Procedure 0x40af80

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
	#Procedure 0x40afc0
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
	#Procedure 0x40afe0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_986
	test	rdx, rdx
	je	.label_986
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_986:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b010
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
	#Procedure 0x40b090

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
.label_1056:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_1065
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1064]]
.label_1865:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_1069
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_1011
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1866:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_1080
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_1080
	xor	r14d, r14d
.label_1090:
	cmp	r14, r11
	jae	.label_1088
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_1088:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_1090
.label_1080:
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
	jmp	.label_991
.label_1858:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_991
.label_1861:
	mov	al, 1
.label_1859:
	mov	r12b, 1
.label_1862:
	test	r12b, 1
	mov	cl, 1
	je	.label_998
	mov	ecx, eax
.label_998:
	mov	al, cl
.label_1860:
	test	r12b, 1
	jne	.label_1001
	test	r11, r11
	je	.label_1004
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_1004:
	mov	r14d, 1
	jmp	.label_1008
.label_1001:
	xor	r14d, r14d
.label_1008:
	mov	ecx, OFFSET FLAT:label_1011
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_991
.label_1863:
	test	r12b, 1
	jne	.label_1017
	test	r11, r11
	je	.label_1040
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_1040:
	mov	r14d, 1
	jmp	.label_1057
.label_1864:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_1026
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_991
.label_1017:
	xor	r14d, r14d
.label_1057:
	mov	eax, OFFSET FLAT:label_1026
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_991:
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
	jmp	.label_1092
	nop	dword ptr [rax]
.label_1061:
	inc	rsi
.label_1092:
	cmp	rbp, -1
	je	.label_1074
	cmp	rsi, rbp
	jne	.label_1076
	jmp	.label_1070
	nop	word ptr cs:[rax + rax]
.label_1074:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_1070
.label_1076:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_1082
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_996
	cmp	rbp, -1
	jne	.label_996
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
.label_996:
	cmp	rbx, rbp
	jbe	.label_1093
.label_1082:
	xor	r8d, r8d
.label_1009:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_1094
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_1101]]
.label_1893:
	test	rsi, rsi
	jne	.label_990
	jmp	.label_993
	nop	
.label_1093:
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
	jne	.label_1006
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_1009
	jmp	.label_1018
.label_1006:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1009
.label_1897:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_1027
	test	rsi, rsi
	jne	.label_1030
	cmp	rbp, 1
	je	.label_993
	xor	r13d, r13d
	jmp	.label_989
.label_1886:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_1034
	cmp	byte ptr [rsp + 7], 0
	jne	.label_992
	cmp	r12d, 2
	jne	.label_1039
	mov	eax, r9d
	and	al, 1
	jne	.label_1039
	cmp	r14, r11
	jae	.label_1042
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1042:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1045
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_1045:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1049
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1049:
	add	r14, 3
	mov	r9b, 1
.label_1039:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_1035
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_1035:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_1060
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_1060
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_1060
	cmp	r14, r11
	jae	.label_1051
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_1051:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_1036
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_1036:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_989
.label_1887:
	mov	bl, 0x62
	jmp	.label_1079
.label_1888:
	mov	cl, 0x74
	jmp	.label_1081
.label_1889:
	mov	bl, 0x76
	jmp	.label_1079
.label_1890:
	mov	bl, 0x66
	jmp	.label_1079
.label_1891:
	mov	cl, 0x72
	jmp	.label_1081
.label_1894:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_1086
	cmp	byte ptr [rsp + 7], 0
	jne	.label_992
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
	jae	.label_1091
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1091:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_988
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_988:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_995
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_995:
	add	r14, 3
	xor	r9d, r9d
.label_1086:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_989
.label_1895:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_1005
	cmp	r12d, 2
	jne	.label_990
	cmp	byte ptr [rsp + 7], 0
	je	.label_990
	jmp	.label_992
.label_1896:
	cmp	r12d, 2
	jne	.label_1015
	cmp	byte ptr [rsp + 7], 0
	jne	.label_992
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_1019
.label_1094:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_1023
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
.label_1024:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_1038
	test	r8b, r8b
	je	.label_1038
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_989
.label_1027:
	test	rsi, rsi
	jne	.label_1055
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_1055
.label_993:
	mov	dl, 1
.label_1892:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_992
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_989:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_1066
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_1067
	jmp	.label_1028
	nop	word ptr cs:[rax + rax]
.label_1066:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_1028
.label_1067:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_1075
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_1019
	jmp	.label_1085
	nop	dword ptr [rax]
.label_1028:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_1085
	jmp	.label_1019
.label_1075:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_1085
.label_1034:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_1061
	xor	r15d, r15d
	jmp	.label_990
.label_1015:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_1081
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_1019
.label_1081:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_992
.label_1079:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_989
	nop	word ptr cs:[rax + rax]
.label_1085:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_992
	cmp	r12d, 2
	jne	.label_999
	mov	eax, r9d
	and	al, 1
	jne	.label_999
	cmp	r14, r11
	jae	.label_1003
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1003:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_994
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_994:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1013
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1013:
	add	r14, 3
	mov	r9b, 1
.label_999:
	cmp	r14, r11
	jae	.label_1016
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1016:
	inc	r14
	jmp	.label_1020
.label_1023:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_1025
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_1025:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_1029:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1044
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_1047
	cmp	rbp, -2
	je	.label_1010
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_1053
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_1084:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_1059
	bt	rsi, rdx
	jb	.label_1018
.label_1059:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_1084
.label_1053:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_1077
	xor	r13d, r13d
.label_1077:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_1029
	jmp	.label_1024
.label_1060:
	xor	r13d, r13d
	jmp	.label_989
.label_1055:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_989
.label_1005:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_990
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_990
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_990
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_1098
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_1100
	cmp	byte ptr [rsp + 7], 0
	jne	.label_992
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_1087
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_1087:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1095
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1095:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1007
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_1007:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_1012
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_1012:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_989
.label_990:
	xor	eax, eax
.label_1030:
	xor	r13d, r13d
	jmp	.label_989
.label_1038:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_1022
	nop	word ptr cs:[rax + rax]
.label_1089:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_1022:
	test	r8b, r8b
	je	.label_1031
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_1032
	cmp	r14, r11
	jae	.label_987
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_987:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_1032
	nop	dword ptr [rax]
.label_1031:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_1018
	cmp	r12d, 2
	jne	.label_1043
	mov	eax, r9d
	and	al, 1
	jne	.label_1043
	cmp	r14, r11
	jae	.label_1046
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1046:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1048
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_1048:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1054
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_1054:
	add	r14, 3
	mov	r9b, 1
.label_1043:
	cmp	r14, r11
	jae	.label_1058
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_1058:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1078
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1078:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_1068
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_1068:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_1032:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_1019
	test	r9b, 1
	je	.label_1072
	mov	ebx, eax
	and	bl, 1
	jne	.label_1072
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_1083
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_1083:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_1021
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_1021:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_1072:
	cmp	r14, r11
	jae	.label_1089
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_1089
	nop	word ptr cs:[rax + rax]
.label_1019:
	test	r9b, 1
	je	.label_1096
	and	al, 1
	jne	.label_1096
	cmp	r14, r11
	jae	.label_1099
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_1099:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_1002
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_1002:
	add	r14, 2
	xor	r9d, r9d
.label_1096:
	mov	ebx, r15d
.label_1020:
	cmp	r14, r11
	jae	.label_997
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_997:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_1061
.label_1047:
	xor	r13d, r13d
.label_1044:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1024
.label_1010:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_1014
	mov	rsi, qword ptr [rsp + 0x50]
.label_1041:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_1097
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_1041
	xor	r13d, r13d
	jmp	.label_1024
.label_1014:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_1024
.label_1097:
	xor	r13d, r13d
	jmp	.label_1024
.label_1098:
	xor	r13d, r13d
	jmp	.label_989
.label_1100:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_989
	nop	dword ptr [rax + rax]
.label_1070:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_1033
	or	dl, al
	je	.label_1018
.label_1033:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_1050
	or	dl, al
	jne	.label_1050
	test	r10b, 1
	jne	.label_1052
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1050
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_1056
.label_1050:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_1062
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_1063
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_1063
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_1037:
	cmp	r14, r11
	jae	.label_1073
	mov	byte ptr [rcx + r14], al
.label_1073:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_1037
	jmp	.label_1063
.label_992:
	mov	qword ptr [rsp + 0x20], rbp
.label_1018:
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
.label_1000:
	mov	r14, rax
.label_1071:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1052:
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
	jmp	.label_1000
.label_1062:
	mov	rcx, qword ptr [rsp + 8]
.label_1063:
	cmp	r14, r11
	jae	.label_1071
	mov	byte ptr [rcx + r14], 0
	jmp	.label_1071
.label_1065:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40be50
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
	#Procedure 0x40be60

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
	je	.label_1102
	mov	qword ptr [rax], rbx
.label_1102:
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
	#Procedure 0x40bf50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_1103
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_1106:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_1106
.label_1103:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_1107
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_1105]], OFFSET FLAT:slot0
.label_1107:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_1104
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_1104:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bff0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c000

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
	js	.label_1108
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_1111
	cmp	r12d, 0x7fffffff
	je	.label_1113
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
	jne	.label_1109
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_1109:
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
.label_1111:
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
	jbe	.label_1114
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_1110
.label_1114:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_1112
	mov	rdi, r14
	call	free
.label_1112:
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
.label_1110:
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
.label_1108:
	call	abort
.label_1113:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c1c0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c1d0
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
	#Procedure 0x40c1e0
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
	#Procedure 0x40c1f0

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
	#Procedure 0x40c230

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
	je	.label_1115
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
.label_1115:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c290

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
	#Procedure 0x40c2d0

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
	#Procedure 0x40c2f0
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
	#Procedure 0x40c310

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
	mov	rcx,  qword ptr [word ptr [rip + label_1116]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1117]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1118]]
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
	#Procedure 0x40c380

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
	#Procedure 0x40c390

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3a0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3b0

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
	#Procedure 0x40c400

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c410

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
	mov	rax,  qword ptr [word ptr [rip + label_1116]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1117]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1118]]
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
	#Procedure 0x40c480
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
	#Procedure 0x40c4a0
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
	#Procedure 0x40c4c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c4d0
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
	#Procedure 0x40c4e0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c4f0

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
	#Procedure 0x40c500

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
	jne	.label_1124
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
	je	.label_1120
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1125
	mov	eax, OFFSET FLAT:label_1126
	jmp	.label_1123
.label_1120:
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
	je	.label_1119
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_1121
	mov	eax, OFFSET FLAT:label_1122
	jmp	.label_1123
.label_1119:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_1026
	mov	eax, OFFSET FLAT:label_1011
.label_1123:
	cmove	rax, rcx
.label_1124:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c5c0

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
	je	.label_1127
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1129
	jmp	.label_1128
.label_1127:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1128
.label_1129:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1128
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
.label_1128:
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
	#Procedure 0x40c640

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
	je	.label_1132
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1130
	jmp	.label_1131
.label_1132:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1131
.label_1130:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1131
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
.label_1131:
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
	#Procedure 0x40c6d0

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
	je	.label_1133
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1135
	jmp	.label_1134
.label_1133:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1134
.label_1135:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1134
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
.label_1134:
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
	#Procedure 0x40c750

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
	je	.label_1138
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1137
	jmp	.label_1136
.label_1138:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1136
.label_1137:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1136
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
.label_1136:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c7c0

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
	je	.label_1141
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1139
	jmp	.label_1140
.label_1141:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1140
.label_1139:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1140
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_1140:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c820

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
	je	.label_1142
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1144
	jmp	.label_1143
.label_1142:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1143
.label_1144:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1143
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_1143:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c870

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
	je	.label_1147
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_1146
	jmp	.label_1145
.label_1147:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_1145
.label_1146:
	mov	eax, 1
	test	bpl, bpl
	je	.label_1145
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_1145:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c8c0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_1150
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_1149
	jmp	.label_1148
.label_1150:
	mov	eax, 1
	test	cl, cl
	je	.label_1148
.label_1149:
	xor	eax, eax
.label_1148:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c8f0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_1153
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_1152
	cmp	ecx, 0x5f
	je	.label_1152
	cmp	ecx, 0x26
	jne	.label_1153
.label_1152:
	test	r13d, r13d
	je	.label_1159
	cmp	r13d, 1
	jne	.label_1156
	mov	rbx, rax
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1162
	mov	rax, rbx
	mov	ecx, dword ptr [rax]
	mov	r13b, 1
	cmp	ecx, 2
	je	.label_1163
	mov	ebx, 0xffffffff
	cmp	ecx, 0x4b
	jne	.label_1153
.label_1162:
	mov	edi, 0x11
	jmp	.label_1155
.label_1159:
	xor	r13d, r13d
.label_1163:
	mov	qword ptr [rsp], rax
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_1151
	test	rax, rax
	je	.label_1151
	cmp	byte ptr [rbp + rbx - 1], 0x2f
	je	.label_1154
	cmp	byte ptr [r12 + rax - 1], 0x2f
	jne	.label_1151
.label_1154:
	lea	rdx, [rsp + 8]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1153
	test	r13b, r13b
	je	.label_1164
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1151
	mov	edi, 2
	jmp	.label_1157
.label_1156:
	mov	edi, 0x5f
.label_1155:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_1153
.label_1164:
	lea	rdx, [rsp + 0x98]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_1160
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_1153
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	je	.label_1151
	jmp	.label_1153
.label_1160:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0xb0]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_1158
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x4000
	jne	.label_1161
.label_1151:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_1153:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1158:
	mov	edi, 0x14
	jmp	.label_1157
.label_1161:
	mov	edi, 0x15
.label_1157:
	call	errno_fail
	jmp	.label_1153
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cac0

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cad0

	.globl get_root_dev_ino
	.type get_root_dev_ino, @function
get_root_dev_ino:
	push	rbx
	sub	rsp, 0x90
	mov	rbx, rdi
	lea	rsi, [rsp]
	mov	edi, OFFSET FLAT:label_98
	call	lstat
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1165
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	mov	rax, rbx
.label_1165:
	add	rsp, 0x90
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40cb10

	.globl safe_write
	.type safe_write, @function
safe_write:
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
.label_1167:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	write
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_1166
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_1167
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
	jb	.label_1166
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_1167
.label_1166:
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
	#Procedure 0x40cba0

	.globl same_name
	.type same_name, @function
same_name:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	rsi, rcx
	mov	rcx, rax
	jmp	same_nameat
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cbc0

	.globl same_nameat
	.type same_nameat, @function
same_nameat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x138
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], edx
	mov	r13, rsi
	mov	r12d, edi
	mov	rdi, r13
	call	last_component
	mov	rbx, rax
	mov	rdi, r15
	call	last_component
	mov	rbp, rax
	mov	rdi, rbx
	call	base_len
	mov	r14, rax
	mov	rdi, rbp
	call	base_len
	cmp	r14, rax
	jne	.label_1168
	mov	qword ptr [rsp + 0x10], r15
	mov	r15d, dword ptr [rsp + 0xc]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, rax
	call	memcmp
	test	eax, eax
	je	.label_1172
.label_1168:
	xor	ebp, ebp
.label_1173:
	mov	eax, ebp
	add	rsp, 0x138
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1172:
	mov	rdi, r13
	call	dir_name
	mov	rbp, rax
	lea	rdx, [rsp + 0xa8]
	mov	ecx, 0x100
	mov	edi, r12d
	mov	rsi, rbp
	call	fstatat
	test	eax, eax
	je	.label_1171
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	rcx, rbp
	call	error
.label_1171:
	mov	rdi, rbp
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	dir_name
	mov	rbx, rax
	lea	rdx, [rsp + 0x18]
	mov	ecx, 0x100
	mov	edi, r15d
	mov	rsi, rbx
	call	fstatat
	test	eax, eax
	je	.label_1174
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	rcx, rbx
	call	error
.label_1174:
	mov	rax, qword ptr [rsp + 0xb0]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1169
	mov	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0x18]
	sete	bpl
	jmp	.label_1170
.label_1169:
	xor	ebp, ebp
.label_1170:
	mov	rdi, rbx
	call	free
	jmp	.label_1173
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cd00

	.globl streamsavedir
	.type streamsavedir, @function
streamsavedir:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, rdi
	mov	ecx, esi
	xor	r15d, r15d
	test	r13, r13
	je	.label_1175
	mov	rax,  qword ptr [word ptr [+ (rcx * 8) + comparison_function_table]]
	mov	qword ptr [rsp + 0x30], rax
	dec	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	r14d, r14d
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	eax, eax
	mov	qword ptr [rsp], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1183
.label_1176:
	mov	rdi, rbx
	call	xstrdup
	mov	rcx, r12
	shl	rcx, 4
	mov	rdx, qword ptr [rsp]
	mov	qword ptr [rdx + rcx], rax
	mov	rax, qword ptr [r15]
	mov	qword ptr [rdx + rcx + 8], rax
	inc	r12
	add	r14, rbp
	nop	dword ptr [rax]
.label_1183:
	call	__errno_location
	mov	rbp, rax
	mov	dword ptr [rbp], 0
	mov	rdi, r13
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1180
	cmp	byte ptr [r15 + 0x13], 0x2e
	mov	eax, 0
	jne	.label_1184
	xor	eax, eax
	cmp	byte ptr [r15 + 0x14], 0x2e
	sete	al
	inc	rax
.label_1184:
	cmp	byte ptr [r15 + rax + 0x13], 0
	je	.label_1183
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	inc	rbp
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_1179
	mov	rax, qword ptr [rsp + 0x20]
	cmp	rax, r12
	jne	.label_1176
	mov	qword ptr [rsp + 8], rax
	mov	edx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1176
.label_1179:
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, r14
	cmp	rax, rbp
	mov	rax, qword ptr [rsp + 0x10]
	ja	.label_1181
	mov	rcx, rbp
	add	rcx, r14
	mov	qword ptr [rsp + 8], rcx
	jb	.label_1185
	mov	edx, 1
	mov	rdi, rax
	lea	rsi, [rsp + 8]
	call	x2nrealloc
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x18], rcx
.label_1181:
	mov	rcx, rax
	mov	qword ptr [rsp + 0x10], rcx
	lea	rdi, [rax + r14]
	mov	rsi, rbx
	mov	rdx, rbp
	call	memcpy
	add	r14, rbp
	jmp	.label_1183
.label_1180:
	mov	ebx, dword ptr [rbp]
	test	ebx, ebx
	je	.label_1187
	mov	rdi, qword ptr [rsp]
	call	free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	dword ptr [rbp], ebx
	xor	r15d, r15d
	jmp	.label_1175
.label_1187:
	cmp	qword ptr [rsp + 0x28], 1
	mov	r15, qword ptr [rsp + 0x10]
	mov	r13, qword ptr [rsp]
	ja	.label_1182
	test	r12, r12
	je	.label_1186
	mov	edx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 0x30]
	call	qsort
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
	mov	rbx, r13
	nop	dword ptr [rax]
.label_1188:
	lea	rbp, [r15 + r14]
	mov	rsi, qword ptr [rbx]
	mov	rdi, rbp
	call	stpcpy
	inc	r14
	sub	r14, rbp
	add	r14, rax
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x10
	dec	r12
	jne	.label_1188
	jmp	.label_1177
.label_1182:
	cmp	qword ptr [rsp + 0x18], r14
	jne	.label_1178
	lea	rsi, [r14 + 1]
	mov	rdi, r15
	call	xrealloc
	mov	r15, rax
	jmp	.label_1178
.label_1186:
	inc	r14
	mov	rdi, r14
	call	xmalloc
	mov	r15, rax
	xor	r14d, r14d
.label_1177:
	mov	rdi, r13
	call	free
.label_1178:
	mov	byte ptr [r15 + r14], 0
.label_1175:
	mov	rax, r15
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1185:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cf60

	.globl savedir
	.type savedir, @function
savedir:
	push	rbp
	push	r14
	push	rbx
	mov	ebp, esi
	call	opendir_safer
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_1189
	mov	rdi, rbx
	mov	esi, ebp
	call	streamsavedir
	mov	r14, rax
	mov	rdi, rbx
	call	closedir
	test	eax, eax
	je	.label_1189
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r14
	call	free
	mov	dword ptr [rbx], ebp
	xor	r14d, r14d
.label_1189:
	mov	rax, r14
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cfb0

	.globl direntry_cmp_name
	.type direntry_cmp_name, @function
direntry_cmp_name:
	mov	rdi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	jmp	strcmp
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cfc0

	.globl direntry_cmp_inode
	.type direntry_cmp_inode, @function
direntry_cmp_inode:
	mov	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	cmp	rax, qword ptr [rsi + 8]
	seta	cl
	mov	eax, 0xffffffff
	cmovae	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cfe0
	.globl getcon
	.type getcon, @function
getcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d000

	.globl freecon
	.type freecon, @function
freecon:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d010
	.globl getfscreatecon
	.type getfscreatecon, @function
getfscreatecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d030

	.globl setfscreatecon
	.type setfscreatecon, @function
setfscreatecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d050
	.globl matchpathcon
	.type matchpathcon, @function
matchpathcon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d070
	.globl getfilecon
	.type getfilecon, @function
getfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d090

	.globl lgetfilecon
	.type lgetfilecon, @function
lgetfilecon:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0b0
	.globl fgetfilecon
	.type fgetfilecon, @function
fgetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0d0
	.globl setfilecon
	.type setfilecon, @function
setfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0f0
	.globl lsetfilecon
	.type lsetfilecon, @function
lsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d110
	.globl fsetfilecon
	.type fsetfilecon, @function
fsetfilecon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d130
	.globl security_check_context
	.type security_check_context, @function
security_check_context:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d150
	.globl security_check_context_raw
	.type security_check_context_raw, @function
security_check_context_raw:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d170
	.globl setexeccon
	.type setexeccon, @function
setexeccon:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d190
	.globl security_compute_create
	.type security_compute_create, @function
security_compute_create:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1b0
	.globl string_to_security_class
	.type string_to_security_class, @function
string_to_security_class:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	xor	eax, eax
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x40d1c0
	.globl matchpathcon_init_prefix
	.type matchpathcon_init_prefix, @function
matchpathcon_init_prefix:

	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x5f
	mov	eax, 0xffffffff
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1e0

	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:
	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d1f0

	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:
	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d200

	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:
	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d210
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d220

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d230
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d240

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d250
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d260
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d270
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d280

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d290

	.globl try_tempname_len
	.type try_tempname_len, @function
try_tempname_len:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ebx, esi
	mov	r15, rdi
	call	__errno_location
	mov	qword ptr [rsp + 8], rax
	mov	r12d, dword ptr [rax]
	mov	rdi, r15
	call	strlen
	mov	rbp, rax
	movsxd	rbx, ebx
	lea	rax, [rbx + r14]
	mov	rdi, rbp
	sub	rdi, rax
	jb	.label_1194
	add	rdi, r15
	mov	rsi, r14
	call	check_x_suffix
	test	al, al
	je	.label_1194
	mov	dword ptr [rsp + 0x14], r12d
	mov	qword ptr [rsp + 0x18], r15
	xor	r13d, r13d
	xor	edi, edi
	mov	rsi, r14
	call	randint_all_new
	mov	r15, rax
	mov	r12d, 0xffffffff
	test	r15, r15
	je	.label_1191
	sub	rbp, rbx
	mov	r12, qword ptr [rsp + 0x18]
	add	rbp, r12
	mov	rax, r14
	neg	rax
	mov	qword ptr [rsp + 0x20], rax
	nop	dword ptr [rax]
.label_1190:
	test	r14, r14
	je	.label_1196
	mov	rbx, qword ptr [rsp + 0x20]
	nop	word ptr [rax + rax]
.label_1192:
	mov	esi, 0x3d
	mov	rdi, r15
	call	randint_genmax
	movzx	eax,  byte ptr [byte ptr [rax + letters]]
	mov	byte ptr [rbp + rbx], al
	inc	rbx
	jne	.label_1192
.label_1196:
	mov	rdi, r12
	mov	rsi, qword ptr [rsp + 0x28]
	call	qword ptr [rsp + 0x30]
	mov	r12d, eax
	test	r12d, r12d
	jns	.label_1195
	mov	rax, qword ptr [rsp + 8]
	cmp	dword ptr [rax], 0x11
	mov	r12d, 0xffffffff
	jne	.label_1197
	inc	r13d
	cmp	r13d, 0x3a2f7
	mov	r12, qword ptr [rsp + 0x18]
	jbe	.label_1190
	mov	rdi, r15
	call	randint_all_free
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x11
	jmp	.label_1193
.label_1194:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x16
.label_1193:
	mov	r12d, 0xffffffff
.label_1191:
	mov	eax, r12d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1195:
	mov	rax, qword ptr [rsp + 8]
	mov	ecx, dword ptr [rsp + 0x14]
	mov	dword ptr [rax], ecx
.label_1197:
	mov	rbp, qword ptr [rsp + 8]
	mov	ebx, dword ptr [rbp]
	mov	rdi, r15
	call	randint_all_free
	mov	dword ptr [rbp], ebx
	jmp	.label_1191
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d3f0

	.globl check_x_suffix
	.type check_x_suffix, @function
check_x_suffix:
	push	rbx
	mov	rbx, rsi
	mov	esi, 0x58
	call	__strspn_c1
	cmp	rax, rbx
	setae	al
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d410

	.globl gen_tempname_len
	.type gen_tempname_len, @function
gen_tempname_len:
	push	rax
	mov	dword ptr [rsp + 4], edx
	cmp	ecx, 3
	jae	.label_1198
	movsxd	rax, ecx
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1202]]
	lea	rdx, [rsp + 4]
	call	try_tempname_len
	pop	rcx
	ret	
.label_1198:
	mov	edi, OFFSET FLAT:label_1199
	mov	esi, OFFSET FLAT:label_1200
	mov	edx, 0x147
	mov	ecx, OFFSET FLAT:label_1201
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d450

	.globl try_file
	.type try_file, @function
try_file:
	mov	esi, dword ptr [rsi]
	and	esi, 0xffffff3c
	or	esi, 0xc2
	mov	edx, 0x180
	xor	eax, eax
	jmp	open
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d470

	.globl try_dir
	.type try_dir, @function
try_dir:
	mov	esi, 0x1c0
	jmp	mkdir
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d480

	.globl try_nocreate
	.type try_nocreate, @function
try_nocreate:
	sub	rsp, 0x98
	lea	rsi, [rsp + 8]
	call	lstat
	test	eax, eax
	je	.label_1203
	call	__errno_location
	cmp	dword ptr [rax], 0x4b
	jne	.label_1204
.label_1203:
	call	__errno_location
	mov	dword ptr [rax], 0x11
.label_1204:
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 2
	mov	eax, 0xffffffff
	cmove	eax, ecx
	add	rsp, 0x98
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4d0
	.globl gen_tempname
	.type gen_tempname, @function
gen_tempname:

	mov	r8d, 6
	jmp	gen_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4e0
	.globl try_tempname
	.type try_tempname, @function
try_tempname:

	mov	r8d, 6
	jmp	try_tempname_len
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d4f0

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
	ja	.label_1205
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
	jmp	.label_1206
.label_1205:
	mov	eax, ebx
.label_1206:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d540

	.globl utimecmp
	.type utimecmp, @function
utimecmp:
	mov	eax, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 0xffffff9c
	mov	r8d, eax
	jmp	utimecmpat
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d560

	.globl utimecmpat
	.type utimecmpat, @function
utimecmpat:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xf8
	mov	ebp, r8d
	mov	rbx, rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r14d, edi
	mov	r12, qword ptr [r13 + 0x58]
	mov	r15, qword ptr [rbx + 0x58]
	mov	rdi, r13
	call	get_stat_mtime_ns
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	get_stat_mtime_ns
	mov	rbx, rax
	test	bpl, 1
	je	.label_1214
	cmp	r12, r15
	jne	.label_1207
	xor	ecx, ecx
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	je	.label_1210
.label_1207:
	lea	rax, [r15 - 2]
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jle	.label_1210
	lea	rax, [r12 - 2]
	mov	ecx, 1
	cmp	r15, rax
	jle	.label_1210
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	jne	.label_1226
	mov	edi, 0x10
	xor	esi, esi
	mov	edx, OFFSET FLAT:dev_info_hash
	mov	ecx, OFFSET FLAT:dev_info_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [word ptr [rip + utimecmpat.ht]],  rax
	test	rax, rax
	je	.label_1209
.label_1226:
	cmp	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jne	.label_1213
	mov	edi, 0x10
	call	malloc
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  rax
	xor	ecx, ecx
	test	rax, rax
	je	.label_1217
	mov	dword ptr [rax + 8], 0x77359400
	mov	rax,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	byte ptr [rax + 0xc], 0
.label_1213:
	mov	rax, qword ptr [r13]
	mov	rsi,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	mov	qword ptr [rsi], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	call	hash_insert
	mov	rcx, rax
	test	rcx, rcx
	je	.label_1217
	cmp	rcx,  qword ptr [word ptr [rip + utimecmpat.new_dst_res]]
	jne	.label_1216
	mov	qword ptr [word ptr [rip + utimecmpat.new_dst_res]],  0
	jmp	.label_1216
.label_1217:
	cmp	qword ptr [word ptr [rip + utimecmpat.ht]],  0
	je	.label_1208
	mov	rax, qword ptr [r13]
	mov	qword ptr [rsp + 0x30], rax
	mov	rdi,  qword ptr [word ptr [rip + utimecmpat.ht]]
	lea	rsi, [rsp + 0x30]
	call	hash_lookup
	mov	rcx, rax
.label_1208:
	test	rcx, rcx
	jne	.label_1216
.label_1209:
	mov	dword ptr [rsp + 0x38], 0x77359400
	mov	byte ptr [rsp + 0x3c], 0
	lea	rcx, [rsp + 0x30]
.label_1216:
	cmp	byte ptr [rcx + 0xc], 0
	je	.label_1223
	mov	edi, dword ptr [rcx + 8]
	jmp	.label_1218
.label_1223:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, qword ptr [r13 + 0x48]
	mov	eax, dword ptr [r13 + 0x68]
	mov	dword ptr [rsp + 8], eax
	mov	rdi, r13
	call	get_stat_atime_ns
	mov	rbp, rax
	mov	rdi, r13
	call	get_stat_ctime_ns
	mov	r9, rbp
	mov	r8, rbx
	mov	ecx, r8d
	or	ecx, r12d
	or	ecx, dword ptr [rsp + 8]
	and	ecx, 1
	movsxd	rdx, r9d
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	sub	edx, esi
	movsxd	rsi, eax
	imul	rdi, rsi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	esi, edi
	mov	rbx, qword ptr [rsp]
	movsxd	rdi, ebx
	imul	rdi, rdi, 0x66666667
	mov	rbp, rdi
	shr	rbp, 0x3f
	sar	rdi, 0x22
	add	edi, ebp
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	mov	ebp, ebx
	sub	ebp, edi
	or	ebp, edx
	or	ebp, esi
	je	.label_1231
	mov	r10, qword ptr [rsp + 0x20]
	mov	dword ptr [r10 + 8], 1
	mov	edi, 1
.label_1219:
	mov	dword ptr [r10 + 8], edi
	mov	byte ptr [r10 + 0xc], 1
	mov	rbx, qword ptr [rsp + 0x18]
.label_1218:
	xor	eax, eax
	cmp	edi, 0x77359400
	sete	al
	not	rax
	and	r15, rax
	mov	eax, ebx
	cdq	
	idiv	edi
	sub	ebx, edx
.label_1214:
	mov	ecx, 0xffffffff
	cmp	r12, r15
	jl	.label_1210
	mov	ecx, 1
	jg	.label_1210
	mov	rax, qword ptr [rsp]
	cmp	eax, ebx
	mov	ecx, 0xffffffff
	jl	.label_1210
	setg	al
	movzx	ecx, al
.label_1210:
	mov	eax, ecx
	add	rsp, 0xf8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1231:
	mov	r10, qword ptr [rsp + 0x20]
	cmp	dword ptr [r10 + 8], 0xb
	jl	.label_1225
	mov	qword ptr [rsp + 8], r8
	mov	r13d, 0xa
	mov	qword ptr [rsp + 0x28], r9
	mov	edx, r9d
	mov	rsi, qword ptr [rsp]
	mov	r11d, esi
	mov	rsi, qword ptr [rsp + 0x10]
.label_1224:
	movsxd	rdi, r11d
	imul	r11, rdi, 0x66666667
	mov	rdi, r11
	shr	rdi, 0x3f
	sar	r11, 0x22
	add	r11d, edi
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdi, rax
	shr	rdi, 0x3f
	sar	rax, 0x22
	add	eax, edi
	movsxd	rdx, edx
	imul	rdx, rdx, 0x66666667
	mov	rdi, rdx
	shr	rdi, 0x3f
	sar	rdx, 0x22
	add	edx, edi
	movsxd	r8, edx
	imul	rdi, r8, 0x66666667
	mov	rbx, rdi
	shr	rbx, 0x3f
	sar	rdi, 0x22
	add	edi, ebx
	add	edi, edi
	lea	edi, [rdi + rdi*4]
	sub	r8d, edi
	movsxd	r9, eax
	imul	rbx, r9, 0x66666667
	mov	rbp, rbx
	shr	rbp, 0x3f
	sar	rbx, 0x22
	add	ebx, ebp
	add	ebx, ebx
	lea	ebp, [rbx + rbx*4]
	sub	r9d, ebp
	or	r9d, r8d
	movsxd	rbp, r11d
	imul	rbx, rbp, 0x66666667
	mov	rdi, rbx
	shr	rdi, 0x3f
	sar	rbx, 0x22
	add	ebx, edi
	add	ebx, ebx
	lea	edi, [rbx + rbx*4]
	sub	ebp, edi
	or	ebp, r9d
	jne	.label_1227
	cmp	r13d, 0x3b9aca00
	mov	ebx, r14d
	je	.label_1220
	add	r13d, r13d
	lea	r13d, [r13 + r13*4]
	cmp	r13d, dword ptr [r10 + 8]
	jl	.label_1224
.label_1227:
	mov	dword ptr [r10 + 8], r13d
	cmp	r13d, 2
	mov	edi, r13d
	mov	ebx, r14d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
	jl	.label_1219
	jmp	.label_1230
.label_1225:
	mov	dword ptr [r10 + 8], 0xa
	mov	r13d, 0xa
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ebx, r14d
	jmp	.label_1230
.label_1220:
	xor	ecx, 1
	shl	r13d, cl
	mov	dword ptr [r10 + 8], r13d
	mov	r8, qword ptr [rsp + 8]
	mov	r9, qword ptr [rsp + 0x28]
.label_1230:
	xor	edi, edi
	cmp	r13d, 0x77359400
	sete	dil
	mov	ecx, 1
	cmp	r15, r12
	jl	.label_1210
	cmp	r12, r15
	setne	al
	mov	rdx, qword ptr [rsp]
	mov	rbp, qword ptr [rsp + 0x18]
	cmp	ebp, edx
	jg	.label_1221
	test	al, al
	je	.label_1210
.label_1221:
	mov	rax, rdi
	not	rax
	and	rax, r15
	mov	ecx, 0xffffffff
	cmp	r12, rax
	jl	.label_1210
	jne	.label_1229
	mov	rbp, qword ptr [rsp + 0x18]
	mov	eax, ebp
	cdq	
	idiv	r13d
	mov	eax, ebp
	sub	eax, edx
	mov	rdx, qword ptr [rsp]
	cmp	edx, eax
	jl	.label_1210
.label_1229:
	mov	qword ptr [rsp + 0x40], r8
	movsxd	rax, r9d
	mov	qword ptr [rsp + 0x48], rax
	or	rdi, r12
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r13d
	imul	rax, rax, 0x38e38e39
	shr	rax, 0x21
	mov	rcx, qword ptr [rsp]
	add	eax, ecx
	cdqe	
	mov	qword ptr [rsp + 0x58], rax
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebx
	call	utimensat
	mov	rsi, qword ptr [rsp + 0x10]
	mov	ecx, 0xfffffffe
	test	eax, eax
	jne	.label_1210
	lea	rdx, [rsp + 0x68]
	mov	ecx, 0x100
	mov	edi, ebx
	call	fstatat
	mov	r14d, eax
	cdqe	
	mov	ebp, ebx
	mov	rbx, qword ptr [rsp + 0xc0]
	xor	rbx, r12
	or	rbx, rax
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	mov	rcx, qword ptr [rsp]
	movsxd	rcx, ecx
	xor	rax, rcx
	or	rax, rbx
	je	.label_1228
	mov	qword ptr [rsp + 0x50], r12
	mov	qword ptr [rsp + 0x58], rcx
	lea	rdx, [rsp + 0x40]
	mov	ecx, 0x100
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0x10]
	call	utimensat
.label_1228:
	test	r14d, r14d
	je	.label_1222
	mov	ecx, 0xfffffffe
	jmp	.label_1210
.label_1222:
	mov	ebx, dword ptr [rsp + 0xc0]
	and	ebx, 1
	neg	ebx
	and	ebx, 0x3b9aca00
	lea	rdi, [rsp + 0x68]
	call	get_stat_mtime_ns
	add	rax, rbx
	movsxd	rcx, eax
	imul	rdx, rcx, 0x66666667
	mov	rsi, rdx
	shr	rsi, 0x3f
	sar	rdx, 0x22
	add	edx, esi
	add	edx, edx
	lea	edx, [rdx + rdx*4]
	mov	edi, 1
	cmp	ecx, edx
	jne	.label_1211
	mov	ecx, 1
.label_1212:
	mov	edi, 0x77359400
	cmp	ecx, 0x3b9aca00
	je	.label_1211
	add	ecx, ecx
	lea	ecx, [rcx + rcx*4]
	cmp	ecx, r13d
	je	.label_1215
	cdqe	
	imul	rax, rax, 0x66666667
	mov	rdx, rax
	shr	rdx, 0x3f
	sar	rax, 0x22
	add	eax, edx
	movsxd	rdx, eax
	imul	rsi, rdx, 0x66666667
	mov	rdi, rsi
	shr	rdi, 0x3f
	sar	rsi, 0x22
	add	esi, edi
	add	esi, esi
	lea	esi, [rsi + rsi*4]
	cmp	edx, esi
	mov	edi, ecx
	je	.label_1212
.label_1211:
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1219
.label_1215:
	mov	edi, ecx
	mov	r10, qword ptr [rsp + 0x20]
	jmp	.label_1219
	nop	
	.section	.text
	.align	16
	#Procedure 0x40db00

	.globl dev_info_hash
	.type dev_info_hash, @function
dev_info_hash:
	mov	rax, qword ptr [rdi]
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40db10

	.globl dev_info_compare
	.type dev_info_compare, @function
dev_info_compare:
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db20
	.globl lutimensat
	.type lutimensat, @function
lutimensat:

	mov	ecx, 0x100
	jmp	utimensat
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40db30

	.globl fdutimens
	.type fdutimens, @function
fdutimens:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x100
	mov	r14, rsi
	mov	r15d, edi
	xor	ebp, ebp
	test	rdx, rdx
	lea	rax, [rsp + 0x50]
	cmove	rax, rdx
	mov	qword ptr [rsp + 8], rax
	je	.label_1244
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movups	xmm0, xmmword ptr [rdx + 0x10]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1233
.label_1244:
	test	r15d, r15d
	jns	.label_1232
	test	r14, r14
	jne	.label_1232
	call	__errno_location
	mov	dword ptr [rax], 9
	mov	ebx, 0xffffffff
.label_1233:
	mov	eax, ebx
	add	rsp, 0x100
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1232:
	cmp	dword ptr [dword ptr [rip + utimensat_works_really]],  0
	js	.label_1241
	cmp	ebp, 2
	jne	.label_1249
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_1243
	mov	edi, r15d
	call	fstat
	jmp	.label_1254
.label_1243:
	mov	rdi, r14
	call	stat
.label_1254:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1233
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1260
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1240
.label_1260:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1240
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1240:
	inc	ebp
.label_1249:
	test	r15d, r15d
	jns	.label_1255
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	xor	ecx, ecx
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1250
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1251
.label_1250:
	je	.label_1253
.label_1251:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1253
.label_1255:
	test	r15d, r15d
	js	.label_1241
	mov	rsi, qword ptr [rsp + 8]
	mov	edi, r15d
	call	futimens
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1256
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1257
.label_1253:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1233
.label_1256:
	je	.label_1237
.label_1257:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1237
.label_1241:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  0xffffffff
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1239
	cmp	ebp, 3
	je	.label_1245
	lea	rsi, [rsp + 0x70]
	test	r15d, r15d
	js	.label_1248
	mov	edi, r15d
	call	fstat
	jmp	.label_1252
.label_1237:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	jmp	.label_1233
.label_1248:
	mov	rdi, r14
	call	stat
.label_1252:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1233
.label_1245:
	cmp	qword ptr [rsp + 8], 0
	je	.label_1239
	lea	rdi, [rsp + 0x70]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	jne	.label_1233
.label_1239:
	mov	rax, qword ptr [rsp + 8]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1236
	mov	rax, qword ptr [rax]
	mov	qword ptr [rsp + 0x30], rax
	mov	rsi, qword ptr [rsp + 8]
	movabs	rcx, 0x20c49ba5e353f7cf
	mov	rax, rcx
	imul	qword ptr [rsi + 8]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x38], rdx
	mov	rax, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, rcx
	imul	qword ptr [rdx + 0x18]
	mov	rax, rdx
	shr	rax, 0x3f
	sar	rdx, 7
	add	rdx, rax
	mov	qword ptr [rsp + 0x48], rdx
	lea	rbp, [rsp + 0x30]
.label_1236:
	test	r15d, r15d
	js	.label_1259
	xor	ebx, ebx
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
	test	eax, eax
	je	.label_1246
	mov	ebx, 0xffffffff
	test	r14, r14
	je	.label_1233
	mov	rdi, r14
	mov	rsi, rbp
	call	utimes
	jmp	.label_1234
.label_1259:
	mov	edi, 0xffffff9c
	mov	rsi, r14
	mov	rdx, rbp
	call	futimesat
.label_1234:
	mov	ebx, eax
	jmp	.label_1233
.label_1246:
	test	rbp, rbp
	je	.label_1233
	mov	r12, qword ptr [rbp + 8]
	mov	r14, qword ptr [rbp + 0x18]
	cmp	r12, 0x7a11f
	setg	al
	cmp	r14, 0x7a11f
	setg	cl
	or	cl, al
	cmp	cl, 1
	jne	.label_1233
	lea	rsi, [rsp + 0x70]
	mov	edi, r15d
	call	fstat
	test	eax, eax
	jne	.label_1233
	lea	rcx, [rbp + 0x10]
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rbx, qword ptr [rsp + 0xc8]
	sub	rax, qword ptr [rbp]
	sub	rbx, qword ptr [rbp + 0x10]
	movups	xmm0, xmmword ptr [rbp]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rcx]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	xor	ebp, ebp
	cmp	r12, 0x7a120
	jl	.label_1238
	cmp	rax, 1
	jne	.label_1238
	lea	rdi, [rsp + 0x70]
	call	get_stat_atime_ns
	xor	ebp, ebp
	test	rax, rax
	jne	.label_1238
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x18], 0
.label_1238:
	cmp	r14, 0x7a120
	jl	.label_1247
	cmp	rbx, 1
	jne	.label_1247
	lea	rdi, [rsp + 0x70]
	call	get_stat_mtime_ns
	test	rax, rax
	je	.label_1258
.label_1247:
	test	rbp, rbp
	jne	.label_1235
	jmp	.label_1242
.label_1258:
	lea	rbp, [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], 0
.label_1235:
	xor	esi, esi
	mov	edi, r15d
	mov	rdx, rbp
	call	futimesat
.label_1242:
	xor	ebx, ebx
	jmp	.label_1233
	nop	
	.section	.text
	.align	16
	#Procedure 0x40deb0

	.globl validate_timespec
	.type validate_timespec, @function
validate_timespec:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, 0x3b9aca00
	jb	.label_1261
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_1265
.label_1261:
	mov	rax, qword ptr [rdi + 0x18]
	cmp	rax, 0x3b9aca00
	jb	.label_1263
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	je	.label_1263
.label_1265:
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	add	rsp, 8
	ret	
.label_1263:
	mov	rax, qword ptr [rdi + 8]
	and	rax, 0xfffffffffffffffe
	xor	edx, edx
	cmp	rax, 0x3ffffffe
	mov	ecx, 0
	jne	.label_1264
	mov	qword ptr [rdi], 0
	xor	ecx, ecx
	cmp	qword ptr [rdi + 8], 0x3ffffffe
	sete	cl
	mov	edx, 1
.label_1264:
	mov	rax, qword ptr [rdi + 0x18]
	and	rax, 0xfffffffffffffffe
	cmp	rax, 0x3ffffffe
	jne	.label_1262
	mov	qword ptr [rdi + 0x10], 0
	xor	eax, eax
	cmp	qword ptr [rdi + 0x18], 0x3ffffffe
	sete	al
	add	ecx, eax
	mov	edx, 1
.label_1262:
	xor	eax, eax
	cmp	ecx, 1
	sete	al
	add	eax, edx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40df60

	.globl update_timespec
	.type update_timespec, @function
update_timespec:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3ffffffe
	jne	.label_1266
	mov	al, 1
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	je	.label_1271
	mov	rax, qword ptr [rbx + 8]
.label_1266:
	cmp	rax, 0x3fffffff
	jne	.label_1268
	cmp	qword ptr [rbx + 0x18], 0x3fffffff
	jne	.label_1268
	mov	qword ptr [rsi], 0
	jmp	.label_1270
.label_1268:
	mov	rax, qword ptr [rbx + 8]
	cmp	rax, 0x3fffffff
	je	.label_1272
	cmp	rax, 0x3ffffffe
	jne	.label_1267
	mov	rdi, r14
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1267
.label_1272:
	mov	rdi, rbx
	call	gettime
.label_1267:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	rax, 0x3fffffff
	je	.label_1269
	cmp	rax, 0x3ffffffe
	jne	.label_1270
	mov	rdi, r14
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
	jmp	.label_1270
.label_1269:
	add	rbx, 0x10
	mov	rdi, rbx
	call	gettime
.label_1270:
	xor	eax, eax
.label_1271:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e010

	.globl utimens
	.type utimens, @function
utimens:
	mov	rax, rsi
	mov	rcx, rdi
	mov	edi, 0xffffffff
	mov	rsi, rcx
	mov	rdx, rax
	jmp	fdutimens
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e030

	.globl lutimens
	.type lutimens, @function
lutimens:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0xc0
	mov	r14, rdi
	xor	ebp, ebp
	test	rsi, rsi
	lea	rax, [rsp + 0x10]
	cmove	rax, rsi
	mov	qword ptr [rsp + 8], rax
	je	.label_1283
	movups	xmm0, xmmword ptr [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rsi + 0x10]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	mov	rdi, qword ptr [rsp + 8]
	call	validate_timespec
	mov	ebp, eax
	mov	ebx, 0xffffffff
	test	ebp, ebp
	js	.label_1278
.label_1283:
	cmp	dword ptr [dword ptr [rip + lutimensat_works_really]],  0
	js	.label_1285
	cmp	ebp, 2
	jne	.label_1276
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1278
	mov	rbx, qword ptr [rsp + 8]
	cmp	qword ptr [rbx + 8], 0x3ffffffe
	jne	.label_1284
	lea	rdi, [rsp + 0x30]
	call	get_stat_atime
	mov	qword ptr [rbx], rax
	mov	qword ptr [rbx + 8], rdx
	jmp	.label_1275
.label_1284:
	cmp	qword ptr [rbx + 0x18], 0x3ffffffe
	jne	.label_1275
	lea	rdi, [rsp + 0x30]
	call	get_stat_mtime
	mov	qword ptr [rbx + 0x10], rax
	mov	qword ptr [rbx + 0x18], rdx
.label_1275:
	inc	ebp
.label_1276:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffff9c
	mov	ecx, 0x100
	mov	rsi, r14
	call	utimensat
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1273
	call	__errno_location
	mov	dword ptr [rax], 0x26
	jmp	.label_1274
.label_1273:
	je	.label_1280
.label_1274:
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_1280
.label_1285:
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  0xffffffff
	test	ebp, ebp
	je	.label_1281
	cmp	ebp, 3
	je	.label_1282
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1278
.label_1282:
	cmp	qword ptr [rsp + 8], 0
	je	.label_1277
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 8]
	call	update_timespec
	xor	ebx, ebx
	test	al, al
	je	.label_1277
	jmp	.label_1278
.label_1280:
	mov	dword ptr [dword ptr [rip + utimensat_works_really]],  1
	mov	dword ptr [dword ptr [rip + lutimensat_works_really]],  1
	jmp	.label_1278
.label_1281:
	lea	rsi, [rsp + 0x30]
	mov	rdi, r14
	call	lstat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1278
.label_1277:
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x48]
	cmp	eax, 0xa000
	jne	.label_1279
	call	__errno_location
	mov	dword ptr [rax], 0x26
	mov	ebx, 0xffffffff
	jmp	.label_1278
.label_1279:
	mov	rdx, qword ptr [rsp + 8]
	mov	edi, 0xffffffff
	mov	rsi, r14
	call	fdutimens
	mov	ebx, eax
.label_1278:
	mov	eax, ebx
	add	rsp, 0xc0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e1e0

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
	je	.label_1298
	mov	edx, OFFSET FLAT:label_1289
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_1295
.label_1298:
	mov	edx, OFFSET FLAT:label_1296
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_1295:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1300
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
	mov	esi, OFFSET FLAT:label_1297
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_1301
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_1302]]
.label_1846:
	add	rsp, 8
	jmp	.label_1288
.label_1301:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1292
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
	jmp	.label_1288
.label_1847:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1287
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
.label_1848:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1293
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
.label_1849:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1290
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
.label_1850:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1304
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
	jmp	.label_1288
.label_1851:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1303
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
	jmp	.label_1288
.label_1852:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1286
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
	jmp	.label_1288
.label_1853:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1291
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
	jmp	.label_1288
.label_1855:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1294
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
	jmp	.label_1288
.label_1854:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1299
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
.label_1288:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e540
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_1305:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_1305
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e570

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1307:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_1306
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_1308
	nop	dword ptr [rax]
.label_1306:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_1308:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_1309
	inc	r9
	cmp	r9, 0xa
	jb	.label_1307
.label_1309:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e5d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1310
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1310:
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
	#Procedure 0x40e660
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1311
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_141
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1313
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_23
	mov	ecx, OFFSET FLAT:label_24
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1312
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e6e0

	.globl can_write_any_file
	.type can_write_any_file, @function
can_write_any_file:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.initialized]]
	test	al, al
	jne	.label_1314
	push	rax
	call	geteuid
	test	eax, eax
	sete	byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	mov	byte ptr [byte ptr [rip + can_write_any_file.initialized]],  1
	add	rsp, 8
.label_1314:
	mov	al,  byte ptr [byte ptr [rip + can_write_any_file.can_write]]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e710
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1315
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_1315:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e740

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_1316
	test	rax, rax
	je	.label_1317
.label_1316:
	pop	rbx
	ret	
.label_1317:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e760

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_1318
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_1318:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e790

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_1319
	test	rbx, rbx
	jne	.label_1319
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_1319:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_1321
	test	rax, rax
	je	.label_1320
.label_1321:
	pop	rbx
	ret	
.label_1320:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x40e7c0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_1322
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_1325
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_1323
.label_1322:
	test	rcx, rcx
	jne	.label_1326
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_1326:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_1324
.label_1323:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_1325:
	call	xalloc_die
.label_1324:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e840

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e850
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e860
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
	#Procedure 0x40e890
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_1327
	call	rpl_calloc
	test	rax, rax
	je	.label_1327
	pop	rcx
	ret	
.label_1327:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e8c0

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
	#Procedure 0x40e8f0

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
	#Procedure 0x40e910

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_1328
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_707
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x40e940

	.globl xfts_open
	.type xfts_open, @function
xfts_open:
	push	rax
	or	esi, 0x200
	call	rpl_fts_open
	test	rax, rax
	je	.label_1330
	pop	rcx
	ret	
.label_1330:
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1329
	mov	edi, OFFSET FLAT:label_1331
	mov	esi, OFFSET FLAT:label_1332
	mov	edx, 0x29
	mov	ecx, OFFSET FLAT:label_1333
	call	__assert_fail
.label_1329:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e980
	.globl cycle_warning_required
	.type cycle_warning_required, @function
cycle_warning_required:

	mov	ecx, dword ptr [rdi + 0x48]
	and	ecx, 0x11
	mov	al, 1
	cmp	ecx, 0x10
	je	.label_1334
	cmp	ecx, 0x11
	jne	.label_1335
	cmp	qword ptr [rsi + 0x58], 0
	setne	al
.label_1334:
	ret	
.label_1335:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e9a0

	.globl yesno
	.type yesno, @function
yesno:
	push	rbx
	sub	rsp, 0x10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	rdx,  qword ptr [word ptr [rip + stdin]]
	lea	rdi, [rsp]
	lea	rsi, [rsp + 8]
	call	getline
	test	rax, rax
	jle	.label_1338
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_1336
	mov	byte ptr [rcx + rax - 1], 0
.label_1336:
	mov	rdi, qword ptr [rsp]
	call	rpmatch
	test	eax, eax
	setg	bl
	jmp	.label_1337
.label_1338:
	xor	ebx, ebx
.label_1337:
	mov	rdi, qword ptr [rsp]
	call	free
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea10

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_1339
	test	rsi, rsi
	mov	ecx, 1
	je	.label_1340
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_1340
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_1339:
	mov	ecx, 1
.label_1340:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1341
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1341
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1341:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ea90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1342
	ret	
.label_1342:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eab0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_1343
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_1344
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_1344:
	add	rax, rcx
.label_1343:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eae0

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
	jne	.label_1345
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_1345
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_1346
.label_1345:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_1346:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_1347
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_1347:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40eb50

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
	mov	rbp, rdx
	mov	r14d, esi
	mov	r15, rdi
	cmp	r14d, 0x1000
	jae	.label_1349
	mov	eax, r14d
	and	eax, 0x204
	cmp	eax, 0x204
	je	.label_1349
	test	r14b, 0x12
	je	.label_1349
	mov	edi, 0x80
	call	malloc
	mov	r13, rax
	xor	eax, eax
	test	r13, r13
	je	.label_1353
	xorps	xmm0, xmm0
	movups	xmmword ptr [r13 + 0x70], xmm0
	movups	xmmword ptr [r13 + 0x60], xmm0
	movups	xmmword ptr [r13 + 0x50], xmm0
	movups	xmmword ptr [r13 + 0x40], xmm0
	movups	xmmword ptr [r13 + 0x30], xmm0
	movups	xmmword ptr [r13 + 0x20], xmm0
	movups	xmmword ptr [r13 + 0x10], xmm0
	movups	xmmword ptr [r13], xmm0
	mov	qword ptr [r13 + 0x40], rbp
	mov	eax, r14d
	and	eax, 0xfffffdfb
	or	eax, 4
	test	r14b, 2
	cmove	eax, r14d
	mov	dword ptr [r13 + 0x48], eax
	mov	dword ptr [r13 + 0x2c], 0xffffff9c
	mov	rdi, r15
	call	fts_maxarglen
	cmp	rax, 0x1000
	mov	esi, 0x1000
	cmova	rsi, rax
	mov	rdi, r13
	call	fts_palloc
	test	al, al
	je	.label_1352
	xor	r12d, r12d
	cmp	qword ptr [r15], 0
	je	.label_1354
	mov	esi, OFFSET FLAT:label_30
	xor	edx, edx
	mov	rdi, r13
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1358
	mov	qword ptr [r12 + 0x58], -1
	mov	qword ptr [r12 + 0x68], -1
.label_1354:
	mov	byte ptr [rsp + 0xf], 1
	test	rbp, rbp
	je	.label_1364
	mov	al, byte ptr [r13 + 0x49]
	and	al, 4
	shr	al, 2
	mov	byte ptr [rsp + 0xf], al
.label_1364:
	mov	qword ptr [rsp + 0x28], r13
	mov	r13, qword ptr [r15]
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_1370
	mov	qword ptr [rsp + 0x18], r12
	mov	qword ptr [rsp + 0x30], rbp
	and	r14d, 0x800
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	jmp	.label_1348
.label_1349:
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_1361:
	xor	eax, eax
.label_1353:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
.label_1363:
	mov	qword ptr [rbp + 0x58], 0
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp + 8], rax
	mov	rax, rbp
	add	rax, 0x108
	mov	qword ptr [rbp + 0x30], rax
	mov	rbx, qword ptr [rsp + 0x10]
	test	rbx, rbx
	setne	al
	and	al, byte ptr [rsp + 0xf]
	cmp	al, 1
	jne	.label_1366
	mov	word ptr [rbp + 0x70], 0xb
	mov	esi, 1
	mov	rdi, rbp
	call	fts_set_stat_required
	jmp	.label_1351
.label_1366:
	xor	edx, edx
	mov	rdi, r13
	mov	rsi, rbp
	call	fts_stat
	mov	word ptr [rbp + 0x70], ax
.label_1351:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1362
	mov	qword ptr [rbp + 0x10], rbx
.label_1369:
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_1368
.label_1362:
	mov	qword ptr [rbp + 0x10], 0
	test	rbx, rbx
	je	.label_1359
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax + 0x10], rbp
	mov	qword ptr [rsp + 0x20], rbp
.label_1368:
	inc	r12
	mov	r13, qword ptr [r15 + 8]
	add	r15, 8
	test	r13, r13
	jne	.label_1348
	jmp	.label_1367
.label_1359:
	mov	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_1369
	nop	word ptr cs:[rax + rax]
.label_1348:
	mov	rdi, r13
	call	strlen
	test	r14d, r14d
	jne	.label_1350
	cmp	rax, 3
	jb	.label_1350
	cmp	byte ptr [r13 + rax - 1], 0x2f
	jne	.label_1350
	nop	dword ptr [rax + rax]
.label_1356:
	cmp	byte ptr [r13 + rax - 2], 0x2f
	jne	.label_1350
	dec	rax
	cmp	rax, 1
	ja	.label_1356
	nop	word ptr cs:[rax + rax]
.label_1350:
	mov	rsi, qword ptr [r15]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	mov	rdx, rax
	call	fts_alloc
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1363
	mov	r12, qword ptr [rsp + 0x18]
	jmp	.label_1355
.label_1367:
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_1360
	cmp	r12, 2
	jb	.label_1360
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r12
	call	fts_sort
	mov	qword ptr [rsp + 0x10], rax
.label_1360:
	mov	r12, qword ptr [rsp + 0x18]
.label_1370:
	mov	esi, OFFSET FLAT:label_30
	xor	edx, edx
	mov	r13, qword ptr [rsp + 0x28]
	mov	rdi, r13
	call	fts_alloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_1355
	mov	rbx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbx
	mov	rax, qword ptr [r13]
	mov	word ptr [rax + 0x70], 9
	mov	rax, qword ptr [r13]
	mov	qword ptr [rax + 0x58], 1
	mov	rdi, r13
	call	setup_dir
	test	al, al
	je	.label_1365
	movzx	eax, word ptr [r13 + 0x48]
	test	ax, 0x204
	jne	.label_1357
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, r13
	call	diropen
	mov	dword ptr [r13 + 0x28], eax
	test	eax, eax
	jns	.label_1357
	or	byte ptr [r13 + 0x48], 4
.label_1357:
	mov	rdi, r13
	add	rdi, 0x60
	mov	esi, 0xffffffff
	call	i_ring_init
	mov	rax, r13
	jmp	.label_1353
.label_1355:
	mov	rbx, qword ptr [rsp + 0x10]
.label_1365:
	mov	rdi, rbx
	call	fts_lfree
	mov	rdi, r12
	call	free
.label_1358:
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
.label_1352:
	mov	rdi, r13
	call	free
	jmp	.label_1361
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eed0

	.globl fts_maxarglen
	.type fts_maxarglen, @function
fts_maxarglen:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	mov	r14d, 1
	test	rdi, rdi
	je	.label_1371
	add	rbx, 8
	xor	r14d, r14d
	nop	dword ptr [rax]
.label_1372:
	call	strlen
	cmp	rax, r14
	cmova	r14, rax
	mov	rdi, qword ptr [rbx]
	add	rbx, 8
	test	rdi, rdi
	jne	.label_1372
	inc	r14
.label_1371:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ef20

	.globl fts_palloc
	.type fts_palloc, @function
fts_palloc:
	push	rbx
	mov	rbx, rdi
	add	rsi, 0x100
	add	rsi, qword ptr [rbx + 0x30]
	jae	.label_1373
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	call	__errno_location
	mov	dword ptr [rax], 0x24
	jmp	.label_1375
.label_1373:
	mov	qword ptr [rbx + 0x30], rsi
	mov	rdi, qword ptr [rbx + 0x20]
	call	realloc
	test	rax, rax
	je	.label_1376
	mov	qword ptr [rbx + 0x20], rax
	mov	al, 1
	jmp	.label_1374
.label_1376:
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
.label_1375:
	xor	eax, eax
.label_1374:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40ef80

	.globl fts_alloc
	.type fts_alloc, @function
fts_alloc:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	lea	rdi, [r15 + 0x110]
	and	rdi, 0xfffffffffffffff8
	call	malloc
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_1377
	mov	rdi, rbx
	add	rdi, 0x108
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15 + 0x108], 0
	mov	qword ptr [rbx + 0x60], r15
	mov	qword ptr [rbx + 0x50], r14
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [rbx + 0x38], rax
	mov	dword ptr [rbx + 0x40], 0
	mov	qword ptr [rbx + 0x18], 0
	mov	word ptr [rbx + 0x72], 0
	mov	word ptr [rbx + 0x74], 3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	mov	rax, rbx
.label_1377:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f010

	.globl fts_set_stat_required
	.type fts_set_stat_required, @function
fts_set_stat_required:
	movzx	eax, word ptr [rdi + 0x70]
	cmp	eax, 0xb
	jne	.label_1378
	movzx	eax, sil
	inc	rax
	mov	qword ptr [rdi + 0xa8], rax
	ret	
.label_1378:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f030

	.globl fts_stat
	.type fts_stat, @function
fts_stat:
	push	r15
	push	r14
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1380
	test	byte ptr [r14 + 0x48], 1
	je	.label_1380
	mov	dl, 1
.label_1380:
	lea	rbx, [r15 + 0x78]
	test	dl, dl
	jne	.label_1381
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 2
	jne	.label_1381
	mov	edi, dword ptr [r14 + 0x2c]
	mov	rsi, qword ptr [r15 + 0x30]
	mov	ecx, 0x100
	mov	rdx, rbx
	call	fstatat
	test	eax, eax
	je	.label_1382
	call	__errno_location
	mov	eax, dword ptr [rax]
	jmp	.label_1389
.label_1381:
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	stat
	test	eax, eax
	je	.label_1382
	call	__errno_location
	mov	r14, rax
	cmp	dword ptr [r14], 2
	jne	.label_1383
	mov	rdi, qword ptr [r15 + 0x30]
	mov	rsi, rbx
	call	lstat
	test	eax, eax
	je	.label_1386
.label_1383:
	mov	eax, dword ptr [r14]
.label_1389:
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
.label_1379:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1382:
	movzx	ecx, word ptr [r15 + 0x90]
	and	ecx, 0xf000
	cmp	ecx, 0x8000
	je	.label_1387
	mov	ax, 0xc
	movzx	ecx, cx
	cmp	ecx, 0xa000
	je	.label_1379
	cmp	ecx, 0x4000
	jne	.label_1388
	mov	rax, qword ptr [r15 + 0x88]
	mov	rcx, -1
	cmp	rax, 2
	jb	.label_1384
	cmp	qword ptr [r15 + 0x58], 0
	jle	.label_1384
	mov	ecx, dword ptr [r14 + 0x48]
	shr	ecx, 4
	not	ecx
	and	ecx, 2
	sub	rax, rcx
	mov	rcx, rax
.label_1384:
	mov	qword ptr [r15 + 0x68], rcx
	mov	ax, 1
	cmp	byte ptr [r15 + 0x108], 0x2e
	jne	.label_1379
	mov	cl, byte ptr [r15 + 0x109]
	test	cl, cl
	je	.label_1385
	cmp	cl, 0x2e
	jne	.label_1379
	cmp	byte ptr [r15 + 0x10a], 0
	jne	.label_1379
.label_1385:
	cmp	qword ptr [r15 + 0x58], 0
	mov	cx, 1
	mov	ax, 5
	cmove	ax, cx
	jmp	.label_1379
.label_1387:
	mov	ax, 8
	jmp	.label_1379
.label_1388:
	mov	ax, 3
	jmp	.label_1379
.label_1386:
	mov	dword ptr [r14], 0
	mov	ax, 0xd
	jmp	.label_1379
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1c0

	.globl fts_sort
	.type fts_sort, @function
fts_sort:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r12, qword ptr [r15 + 0x40]
	cmp	qword ptr [r15 + 0x38], r14
	jae	.label_1390
	lea	rsi, [r14 + 0x28]
	mov	qword ptr [r15 + 0x38], rsi
	mov	rax, rsi
	shr	rax, 0x3d
	jne	.label_1396
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rsi, 3
	call	realloc
	test	rax, rax
	je	.label_1396
	mov	qword ptr [r15 + 0x10], rax
.label_1390:
	test	rbx, rbx
	je	.label_1391
	mov	rax, qword ptr [r15 + 0x10]
	nop	
.label_1393:
	mov	qword ptr [rax], rbx
	add	rax, 8
	mov	rbx, qword ptr [rbx + 0x10]
	test	rbx, rbx
	jne	.label_1393
.label_1391:
	mov	rdi, qword ptr [r15 + 0x10]
	mov	edx, 8
	mov	rsi, r14
	mov	rcx, r12
	call	qsort
	mov	rax, qword ptr [r15 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	r8, r14
	dec	r8
	je	.label_1394
	mov	edx, 1
	sub	rdx, r14
	lea	rsi, [rax + 8]
	nop	
.label_1395:
	mov	rdi, qword ptr [rsi - 8]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rdi + 0x10], rcx
	add	rsi, 8
	inc	rdx
	jne	.label_1395
	lea	rax, [rax + r8*8]
.label_1394:
	mov	rax, qword ptr [rax]
	mov	qword ptr [rax + 0x10], 0
	jmp	.label_1392
.label_1396:
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
	mov	qword ptr [r15 + 0x10], 0
	mov	qword ptr [r15 + 0x38], 0
.label_1392:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f2a0

	.globl setup_dir
	.type setup_dir, @function
setup_dir:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, word ptr [rbx + 0x48]
	test	ax, 0x102
	je	.label_1397
	xor	r14d, r14d
	mov	edi, 0x1f
	xor	esi, esi
	mov	edx, OFFSET FLAT:AD_hash
	mov	ecx, OFFSET FLAT:AD_compare
	mov	r8d, OFFSET FLAT:free
	call	hash_initialize
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	jne	.label_1400
	jmp	.label_1398
.label_1397:
	mov	edi, 0x20
	call	malloc
	mov	qword ptr [rbx + 0x58], rax
	test	rax, rax
	je	.label_1399
	mov	rdi, rax
	call	cycle_check_init
.label_1400:
	mov	r14b, 1
.label_1398:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1399:
	xor	r14d, r14d
	jmp	.label_1398
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f310

	.globl diropen
	.type diropen, @function
diropen:
	mov	eax, dword ptr [rdi + 0x48]
	mov	edx, eax
	and	edx, 0x10
	shl	edx, 0xd
	or	edx, 0x90900
	test	ah, 2
	jne	.label_1401
	xor	eax, eax
	mov	rdi, rsi
	mov	esi, edx
	jmp	open_safer
.label_1401:
	mov	edi, dword ptr [rdi + 0x2c]
	xor	eax, eax
	jmp	openat_safer
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f340

	.globl fts_lfree
	.type fts_lfree, @function
fts_lfree:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1402
	nop	dword ptr [rax]
.label_1404:
	mov	r14, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_1403
	call	closedir
.label_1403:
	mov	rdi, rbx
	call	free
	test	r14, r14
	mov	rbx, r14
	jne	.label_1404
.label_1402:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f380

	.globl rpl_fts_close
	.type rpl_fts_close, @function
rpl_fts_close:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rdi, qword ptr [r14]
	test	rdi, rdi
	je	.label_1405
	cmp	qword ptr [rdi + 0x58], 0
	js	.label_1409
	nop	word ptr cs:[rax + rax]
.label_1416:
	mov	rbx, qword ptr [rdi + 0x10]
	test	rbx, rbx
	jne	.label_1412
	mov	rbx, qword ptr [rdi + 8]
.label_1412:
	call	free
	cmp	qword ptr [rbx + 0x58], 0
	mov	rdi, rbx
	jns	.label_1416
	jmp	.label_1415
.label_1409:
	mov	rbx, rdi
.label_1415:
	mov	rdi, rbx
	call	free
.label_1405:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1407
	call	fts_lfree
.label_1407:
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 2
	jne	.label_1414
	xor	ebx, ebx
	test	al, 4
	jne	.label_1410
	mov	edi, dword ptr [r14 + 0x28]
	call	fchdir
	xor	ebx, ebx
	test	eax, eax
	je	.label_1406
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1406:
	mov	edi, dword ptr [r14 + 0x28]
	call	close
	test	ebx, ebx
	je	.label_1408
	jmp	.label_1410
.label_1414:
	mov	edi, dword ptr [r14 + 0x2c]
	xor	ebx, ebx
	test	edi, edi
	js	.label_1410
	call	close
.label_1408:
	test	eax, eax
	je	.label_1410
	call	__errno_location
	mov	ebx, dword ptr [rax]
.label_1410:
	lea	rdi, [r14 + 0x60]
	call	fd_ring_clear
	mov	rdi, qword ptr [r14 + 0x50]
	test	rdi, rdi
	je	.label_1413
	call	hash_free
.label_1413:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	call	free
	xor	eax, eax
	test	ebx, ebx
	je	.label_1411
	call	__errno_location
	mov	dword ptr [rax], ebx
	mov	eax, 0xffffffff
.label_1411:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f480

	.globl fd_ring_clear
	.type fd_ring_clear, @function
fd_ring_clear:
	push	rbx
	mov	rbx, rdi
	jmp	.label_1417
	nop	word ptr cs:[rax + rax]
.label_1418:
	mov	edi, eax
	call	close
.label_1417:
	mov	rdi, rbx
	call	i_ring_empty
	test	al, al
	jne	.label_1419
	mov	rdi, rbx
	call	i_ring_pop
	test	eax, eax
	jns	.label_1418
	jmp	.label_1417
.label_1419:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4c0

	.globl free_dir
	.type free_dir, @function
free_dir:
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1420
	mov	rdi, qword ptr [rdi + 0x58]
	test	rdi, rdi
	je	.label_1421
	jmp	hash_free
.label_1420:
	mov	rdi, qword ptr [rdi + 0x58]
	jmp	free
.label_1421:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f4f0

	.globl rpl_fts_read
	.type rpl_fts_read, @function
rpl_fts_read:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_1422
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1422
	movzx	eax, word ptr [rbx + 0x74]
	mov	word ptr [rbx + 0x74], 3
	cmp	eax, 2
	je	.label_1427
	movzx	ecx, ax
	cmp	ecx, 1
	jne	.label_1430
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	mov	r15, rbx
	jmp	.label_1422
.label_1427:
	movzx	ecx, word ptr [rbx + 0x70]
	and	ecx, 0xfffe
	cmp	ecx, 0xc
	jne	.label_1430
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_stat
	mov	word ptr [rbx + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1442
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1442
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, r14
	call	diropen
	mov	dword ptr [rbx + 0x44], eax
	test	eax, eax
	js	.label_1452
	or	byte ptr [rbx + 0x72], 2
	mov	r15, rbx
	jmp	.label_1428
.label_1430:
	movzx	ecx, word ptr [rbx + 0x70]
	cmp	ecx, 1
	jne	.label_1451
	movzx	eax, ax
	cmp	eax, 4
	je	.label_1455
	test	byte ptr [r14 + 0x48], 0x40
	je	.label_1456
	mov	rax, qword ptr [rbx + 0x78]
	cmp	rax, qword ptr [r14 + 0x18]
	jne	.label_1455
.label_1456:
	cmp	qword ptr [r14 + 8], 0
	je	.label_1458
	mov	eax, dword ptr [r14 + 0x48]
	test	ah, 0x10
	jne	.label_1459
	cmp	qword ptr [r14 + 8], 0
	je	.label_1458
	mov	rcx, qword ptr [rbx + 0x30]
	mov	edx, 0xffffffff
	mov	rdi, r14
	mov	rsi, rbx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1424
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	or	byte ptr [rbx + 0x72], 1
	mov	rax, qword ptr [r14 + 8]
	jmp	.label_1429
	nop	word ptr [rax + rax]
.label_1451:
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	jne	.label_1431
	mov	rax, qword ptr [rbx + 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1439
	mov	r15, qword ptr [rbx + 0x10]
	test	r15, r15
	je	.label_1435
.label_1431:
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1441
	movzx	eax, word ptr [r15 + 0x74]
	cmp	eax, 4
	mov	rbx, r15
	je	.label_1451
	movzx	eax, ax
	cmp	eax, 2
	jne	.label_1448
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1453
	test	byte ptr [r14 + 0x48], 4
	jne	.label_1453
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, r14
	call	diropen
	mov	dword ptr [r15 + 0x44], eax
	test	eax, eax
	js	.label_1446
	or	byte ptr [r15 + 0x72], 2
	jmp	.label_1453
.label_1438:
	mov	rcx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 0x30], rcx
	mov	rax, qword ptr [rax + 0x10]
.label_1429:
	test	rax, rax
	jne	.label_1438
	jmp	.label_1424
.label_1455:
	test	byte ptr [rbx + 0x72], 2
	je	.label_1460
	mov	edi, dword ptr [rbx + 0x44]
	call	close
.label_1460:
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_1461
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1461:
	mov	word ptr [rbx + 0x70], 6
.label_1423:
	mov	rdi, r14
	mov	rsi, rbx
	call	leave_dir
	mov	r15, rbx
	jmp	.label_1422
.label_1442:
	mov	r15, rbx
	jmp	.label_1428
.label_1441:
	mov	rdi, r14
	call	restore_initial_cwd
	test	eax, eax
	je	.label_1432
	or	byte ptr [r14 + 0x49], 0x20
	xor	r15d, r15d
	jmp	.label_1422
.label_1439:
	mov	qword ptr [r14], rax
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	r15, rax
	test	r15, r15
	je	.label_1443
	mov	rdi, rbx
	call	free
	jmp	.label_1448
.label_1432:
	mov	rdi, r14
	call	free_dir
	mov	rdi, r14
	mov	rsi, r15
	call	fts_load
	mov	rdi, r14
	call	setup_dir
	jmp	.label_1428
.label_1459:
	and	eax, 0xffffefff
	mov	dword ptr [r14 + 0x48], eax
	mov	rdi, qword ptr [r14 + 8]
	call	fts_lfree
	mov	qword ptr [r14 + 8], 0
.label_1458:
	mov	esi, 3
	mov	rdi, r14
	call	fts_build
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_1457
.label_1424:
	mov	r15, qword ptr [r14 + 8]
	mov	qword ptr [r14 + 8], 0
	jmp	.label_1448
.label_1457:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1422
	cmp	dword ptr [rbx + 0x40], 0
	je	.label_1423
	movzx	eax, word ptr [rbx + 0x70]
	cmp	eax, 4
	je	.label_1423
	mov	word ptr [rbx + 0x70], 7
	jmp	.label_1423
.label_1452:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x40], eax
	mov	word ptr [rbx + 0x70], 7
	mov	r15, rbx
	jmp	.label_1428
.label_1443:
	xor	r15d, r15d
	test	byte ptr [r14 + 0x49], 0x20
	jne	.label_1422
.label_1435:
	mov	r15, qword ptr [rbx + 8]
	mov	qword ptr [r14], r15
	mov	rdi, rbx
	call	free
	cmp	qword ptr [r15 + 0x58], -1
	je	.label_1434
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	je	.label_1436
	mov	rax, qword ptr [r15 + 0x48]
	mov	rcx, qword ptr [r14 + 0x20]
	mov	byte ptr [rcx + rax], 0
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1440
	movzx	eax, word ptr [r15 + 0x72]
	test	al, 2
	jne	.label_1445
	test	al, 1
	jne	.label_1447
	mov	rsi, qword ptr [r15 + 8]
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_137
	mov	rdi, r14
	call	fts_safe_changedir
	jmp	.label_1433
.label_1434:
	mov	rdi, r15
	call	free
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	qword ptr [r14], 0
	xor	r15d, r15d
	jmp	.label_1422
.label_1440:
	mov	rdi, r14
	call	restore_initial_cwd
.label_1433:
	test	eax, eax
	je	.label_1447
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1447
.label_1445:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1425
	test	ah, 2
	mov	esi, dword ptr [r15 + 0x44]
	jne	.label_1449
	mov	edi, esi
	call	fchdir
	test	eax, eax
	je	.label_1425
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	or	byte ptr [r14 + 0x49], 0x20
	jmp	.label_1425
.label_1446:
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r15 + 0x40], eax
	mov	word ptr [r15 + 0x70], 7
.label_1453:
	mov	word ptr [r15 + 0x74], 3
.label_1448:
	mov	rax, qword ptr [r14 + 0x20]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [rcx + 0x38]
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rsi, [rcx - 1]
	cmp	byte ptr [rdx + rcx - 1], 0x2f
	cmovne	rsi, rcx
	lea	rdi, [rax + rsi + 1]
	mov	byte ptr [rax + rsi], 0x2f
	lea	rsi, [r15 + 0x108]
	mov	rdx, qword ptr [r15 + 0x60]
	inc	rdx
	call	memmove
.label_1428:
	mov	qword ptr [r14], r15
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 0xb
	jne	.label_1444
	mov	rax, qword ptr [r15 + 0xa8]
	cmp	rax, 1
	je	.label_1450
	cmp	rax, 2
	jne	.label_1436
	mov	rbx, qword ptr [r15 + 8]
	cmp	qword ptr [rbx + 0x68], 0
	jne	.label_1454
	mov	eax, dword ptr [r14 + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1454
	mov	esi, dword ptr [r14 + 0x2c]
	mov	rdi, rbx
	call	leaf_optimization
	cmp	eax, 2
	je	.label_1450
.label_1454:
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, r15
	call	fts_stat
	mov	word ptr [r15 + 0x70], ax
	mov	ecx, 0xf000
	and	ecx, dword ptr [r15 + 0x90]
	cmp	ecx, 0x4000
	jne	.label_1444
	cmp	qword ptr [r15 + 0x58], 0
	je	.label_1450
	mov	rax, qword ptr [rbx + 0x68]
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_1450
	dec	rax
	mov	qword ptr [rbx + 0x68], rax
.label_1450:
	mov	ax, word ptr [r15 + 0x70]
.label_1444:
	movzx	eax, ax
	cmp	eax, 1
	jne	.label_1422
	cmp	qword ptr [r15 + 0x58], 0
	jne	.label_1426
	mov	rax, qword ptr [r15 + 0x78]
	mov	qword ptr [r14 + 0x18], rax
.label_1426:
	mov	rdi, r14
	mov	rsi, r15
	call	enter_dir
	test	al, al
	jne	.label_1422
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	r15d, r15d
	jmp	.label_1422
.label_1449:
	mov	edx, 1
	mov	rdi, r14
	call	cwd_advance_fd
.label_1425:
	mov	edi, dword ptr [r15 + 0x44]
	call	close
.label_1447:
	movzx	eax, word ptr [r15 + 0x70]
	cmp	eax, 2
	je	.label_1437
	mov	eax, dword ptr [r15 + 0x40]
	xor	ecx, ecx
	cmp	eax, 0
	setne	cl
	or	ecx, 6
	cmp	eax, 0
	mov	word ptr [r15 + 0x70], cx
	jne	.label_1437
	mov	rdi, r14
	mov	rsi, r15
	call	leave_dir
.label_1437:
	xor	eax, eax
	test	byte ptr [r14 + 0x49], 0x20
	cmovne	r15, rax
.label_1422:
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1436:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40faa0

	.globl leave_dir
	.type leave_dir, @function
leave_dir:
	sub	rsp, 0x18
	movzx	eax, word ptr [rdi + 0x48]
	test	ax, 0x102
	je	.label_1462
	mov	rax, qword ptr [rsi + 0x78]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsi + 0x80]
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rdi + 0x58]
	lea	rsi, [rsp]
	call	hash_delete
	test	rax, rax
	je	.label_1464
	mov	rdi, rax
	call	free
	add	rsp, 0x18
	ret	
.label_1462:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_1463
	cmp	qword ptr [rax + 0x58], 0
	js	.label_1463
	mov	rcx, qword ptr [rdi + 0x58]
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_1464
	mov	rdx, qword ptr [rcx]
	cmp	rdx, qword ptr [rsi + 0x80]
	jne	.label_1463
	mov	rdx, qword ptr [rcx + 8]
	cmp	rdx, qword ptr [rsi + 0x78]
	jne	.label_1463
	mov	rdx, qword ptr [rax + 0x78]
	mov	qword ptr [rcx + 8], rdx
	mov	rax, qword ptr [rax + 0x80]
	mov	rcx, qword ptr [rdi + 0x58]
	mov	qword ptr [rcx], rax
.label_1463:
	add	rsp, 0x18
	ret	
.label_1464:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fb40

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
	mov	r14, rdi
	test	rbx, rbx
	je	.label_1465
	movzx	edx, byte ptr [rbx]
	mov	ecx, 0x2e
	mov	eax, 0x2e
	sub	eax, edx
	jne	.label_1475
	movzx	eax, byte ptr [rbx + 1]
	sub	ecx, eax
	mov	eax, ecx
	jne	.label_1475
	movzx	eax, byte ptr [rbx + 2]
	neg	eax
.label_1475:
	test	eax, eax
	sete	r15b
	jmp	.label_1466
.label_1465:
	xor	r15d, r15d
.label_1466:
	mov	eax, dword ptr [r14 + 0x48]
	test	al, 4
	jne	.label_1469
	test	r13d, r13d
	mov	qword ptr [rsp], rsi
	jns	.label_1471
	mov	ecx, r15d
	xor	cl, 1
	jne	.label_1471
	and	eax, 0x200
	je	.label_1471
	lea	rbp, [r14 + 0x60]
	mov	rdi, rbp
	call	i_ring_empty
	test	al, al
	jne	.label_1471
	mov	rdi, rbp
	call	i_ring_pop
	xor	ecx, ecx
	test	eax, eax
	cmovns	rbx, rcx
	cmovns	r13d, eax
	mov	r15b, 1
.label_1471:
	test	r13d, r13d
	mov	r12d, r13d
	jns	.label_1472
	mov	rdi, r14
	mov	rsi, rbx
	call	diropen
	mov	r12d, eax
	mov	ebp, 0xffffffff
	test	r12d, r12d
	js	.label_1470
.label_1472:
	test	byte ptr [r14 + 0x48], 2
	jne	.label_1473
	test	rbx, rbx
	je	.label_1467
	cmp	byte ptr [rbx], 0x2e
	jne	.label_1467
	cmp	byte ptr [rbx + 1], 0x2e
	jne	.label_1467
	cmp	byte ptr [rbx + 2], 0
	jne	.label_1467
.label_1473:
	lea	rsi, [rsp + 8]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_1474
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rcx + 0x78]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_1476
	mov	rax, qword ptr [rcx + 0x80]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_1476
.label_1467:
	test	byte ptr [r14 + 0x49], 2
	jne	.label_1468
	mov	edi, r12d
	call	fchdir
	mov	ebp, eax
	jmp	.label_1477
.label_1469:
	xor	ebp, ebp
	test	r13d, r13d
	js	.label_1470
	and	eax, 0x200
	je	.label_1470
	mov	edi, r13d
	call	close
	jmp	.label_1470
.label_1468:
	xor	edx, edx
	test	r15b, r15b
	sete	dl
	mov	rdi, r14
	mov	esi, r12d
	call	cwd_advance_fd
	xor	ebp, ebp
	jmp	.label_1470
.label_1476:
	call	__errno_location
	mov	dword ptr [rax], 2
.label_1474:
	mov	ebp, 0xffffffff
.label_1477:
	test	r13d, r13d
	jns	.label_1470
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, r12d
	call	close
	mov	dword ptr [rbx], r14d
.label_1470:
	mov	eax, ebp
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
	#Procedure 0x40fcd0

	.globl fts_build
	.type fts_build, @function
fts_build:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	ebp, esi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	r13, qword ptr [r14 + 0x18]
	test	r13, r13
	je	.label_1524
	mov	rdi, r13
	call	dirfd
	mov	dword ptr [rsp], eax
	test	eax, eax
	js	.label_1532
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1479
.label_1524:
	mov	eax, 0x204
	and	eax, dword ptr [rbx + 0x48]
	mov	edi, 0xffffff9c
	cmp	eax, 0x200
	jne	.label_1494
	mov	edi, dword ptr [rbx + 0x2c]
.label_1494:
	mov	rsi, qword ptr [r14 + 0x30]
	mov	eax, dword ptr [rbx + 0x48]
	xor	edx, edx
	test	al, 0x10
	je	.label_1501
	test	al, 1
	je	.label_1499
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1501
.label_1499:
	mov	edx, 0x20000
.label_1501:
	lea	rcx, [rsp]
	call	opendirat
	mov	qword ptr [r14 + 0x18], rax
	test	rax, rax
	je	.label_1512
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 0xb
	jne	.label_1505
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	word ptr [r14 + 0x70], ax
	jmp	.label_1513
.label_1532:
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
.label_1512:
	cmp	ebp, 3
	mov	ebp, 0
	jne	.label_1511
	mov	word ptr [r14 + 0x70], 4
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
	jmp	.label_1496
.label_1505:
	test	byte ptr [rbx + 0x49], 1
	je	.label_1513
	mov	rdi, rbx
	mov	rsi, r14
	call	leave_dir
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r14
	call	fts_stat
	mov	rdi, rbx
	mov	rsi, r14
	call	enter_dir
	test	al, al
	je	.label_1518
.label_1513:
	lea	rax, [rbx + 0x40]
	mov	qword ptr [rsp + 0x20], rax
	cmp	qword ptr [rbx + 0x40], 1
	sbb	rax, rax
	not	rax
	or	rax, 0x186a0
	mov	qword ptr [rsp + 0x58], rax
	test	r13, r13
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jne	.label_1479
	cmp	ebp, 2
	jne	.label_1490
	mov	r15, rbx
	xor	r12d, r12d
	jmp	.label_1491
.label_1490:
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x38
	cmp	eax, 0x18
	jne	.label_1495
	cmp	qword ptr [r14 + 0x88], 2
	jne	.label_1495
	mov	r15, rbx
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	leaf_optimization
	test	eax, eax
	setne	r12b
	jmp	.label_1531
.label_1518:
	call	__errno_location
	mov	dword ptr [rax], 0xc
	jmp	.label_1496
.label_1495:
	mov	r15, rbx
	xor	r12d, r12d
.label_1531:
	xor	r12b, 1
.label_1491:
	cmp	ebp, 3
	je	.label_1506
	test	r12b, r12b
	jne	.label_1506
	mov	dword ptr [rsp + 4], r12d
.label_1521:
	mov	rbx, r15
	jmp	.label_1479
.label_1506:
	test	byte ptr [r15 + 0x49], 2
	mov	ebx, dword ptr [rsp]
	je	.label_1514
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ebx
	call	rpl_fcntl
	mov	ebx, eax
	mov	dword ptr [rsp], ebx
.label_1514:
	test	ebx, ebx
	js	.label_1520
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, ebx
	call	fts_safe_changedir
	test	eax, eax
	je	.label_1521
.label_1520:
	cmp	ebp, 3
	jne	.label_1522
	test	r12b, r12b
	je	.label_1522
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [r14 + 0x40], eax
.label_1522:
	or	byte ptr [r14 + 0x72], 1
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r15
	mov	eax, dword ptr [rbx + 0x48]
	test	ah, 2
	je	.label_1528
	mov	edi, dword ptr [rsp]
	test	edi, edi
	js	.label_1528
	call	close
.label_1528:
	mov	qword ptr [r14 + 0x18], 0
	mov	dword ptr [rsp + 4], 0
.label_1479:
	mov	dword ptr [rsp + 0x4c], ebp
	mov	rax, qword ptr [r14 + 0x38]
	mov	rcx, qword ptr [r14 + 0x48]
	lea	rdx, [rcx - 1]
	cmp	byte ptr [rax + rcx - 1], 0x2f
	cmovne	rdx, rcx
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	test	byte ptr [rbx + 0x48], 4
	je	.label_1488
	mov	rax, qword ptr [rbx + 0x20]
	lea	rcx, [rax + rdx + 1]
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rax + rdx], 0x2f
.label_1488:
	lea	rax, [rdx + 1]
	mov	rcx, qword ptr [rbx + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	sub	rcx, rax
	mov	qword ptr [rsp + 0x68], rcx
	mov	rax, qword ptr [r14 + 0x58]
	inc	rax
	mov	qword ptr [rsp + 0x80], rax
	add	rdx, 2
	mov	qword ptr [rsp + 0x70], rdx
	xor	eax, eax
	mov	qword ptr [rsp + 0x60], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
	xor	edx, edx
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x40], rbx
	mov	qword ptr [rsp + 0x28], r14
	mov	qword ptr [rsp + 0x38], r13
.label_1509:
	cmp	qword ptr [r14 + 0x18], 0
	je	.label_1497
	mov	qword ptr [rsp + 0x10], rdx
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr cs:[rax + rax]
.label_1487:
	call	__errno_location
	mov	r13, rax
	mov	dword ptr [r13], 0
	mov	rdi, qword ptr [r14 + 0x18]
	call	readdir
	mov	r15, rax
	test	r15, r15
	je	.label_1526
	test	byte ptr [rbx + 0x48], 0x20
	jne	.label_1485
	cmp	byte ptr [r15 + 0x13], 0x2e
	jne	.label_1485
	movzx	eax, byte ptr [r15 + 0x14]
	cmp	al, 0x2e
	je	.label_1530
	test	al, al
	je	.label_1527
	jmp	.label_1485
	.section	.text
	.align	16
	#Procedure 0x410001

.label_1773:
	nop	word ptr cs:[rax + rax]
.label_1530:
	cmp	byte ptr [r15 + 0x15], 0
	jne	.label_1485
.label_1527:
	cmp	qword ptr [r14 + 0x18], 0
	jne	.label_1487
	jmp	.label_1489
	nop	word ptr cs:[rax + rax]
.label_1485:
	mov	qword ptr [rsp + 0x78], r12
	mov	r14, rbx
	mov	rbx, r15
	add	rbx, 0x13
	mov	rdi, rbx
	call	strlen
	mov	rbp, rax
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	fts_alloc
	mov	r12, rax
	test	r12, r12
	je	.label_1486
	cmp	rbp, qword ptr [rsp + 0x68]
	jae	.label_1503
	mov	rbx, qword ptr [rsp + 0x40]
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	jmp	.label_1504
	nop	dword ptr [rax]
.label_1503:
	mov	r14, qword ptr [rsp + 0x40]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rax, qword ptr [rsp + 0x70]
	lea	rsi, [rax + rbp]
	mov	rdi, r14
	call	fts_palloc
	test	al, al
	je	.label_1486
	mov	rax, qword ptr [r14 + 0x20]
	cmp	rbx, rax
	je	.label_1480
	mov	rdx, qword ptr [rsp + 0x30]
	add	rax, rdx
	test	byte ptr [r14 + 0x48], 4
	mov	rcx, qword ptr [rsp + 0x18]
	cmovne	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	mov	al, 1
	mov	qword ptr [rsp + 0x60], rax
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	jmp	.label_1517
.label_1480:
	mov	rbx, r14
	mov	r14, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
.label_1517:
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, rdx
	mov	qword ptr [rsp + 0x68], rax
.label_1504:
	add	rbp, rdx
	jb	.label_1529
	mov	rax, qword ptr [rsp + 0x80]
	mov	qword ptr [r12 + 0x58], rax
	mov	rax, qword ptr [rbx]
	mov	qword ptr [r12 + 8], rax
	mov	qword ptr [r12 + 0x48], rbp
	mov	rax, qword ptr [r15]
	mov	qword ptr [r12 + 0x80], rax
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1525
	lea	rax, [r12 + 0x108]
	mov	qword ptr [r12 + 0x30], rax
	jmp	.label_1515
	nop	word ptr cs:[rax + rax]
.label_1525:
	mov	rax, qword ptr [r12 + 0x38]
	mov	qword ptr [r12 + 0x30], rax
	lea	rsi, [r12 + 0x108]
	mov	rdx, qword ptr [r12 + 0x60]
	inc	rdx
	mov	rdi, qword ptr [rsp + 0x18]
	call	memmove
.label_1515:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	je	.label_1502
	test	byte ptr [rbx + 0x49], 4
	jne	.label_1502
	xor	edx, edx
	mov	rdi, rbx
	mov	rsi, r12
	call	fts_stat
	mov	word ptr [r12 + 0x70], ax
	jmp	.label_1508
	nop	word ptr cs:[rax + rax]
.label_1502:
	mov	rdi, r12
	add	rdi, 0x78
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 0x18
	cmp	eax, 0x18
	jne	.label_1516
	mov	al, byte ptr [r15 + 0x12]
	cmp	al, 4
	setne	cl
	test	al, al
	setne	bl
	and	bl, cl
	jmp	.label_1492
.label_1516:
	xor	ebx, ebx
.label_1492:
	mov	word ptr [r12 + 0x70], 0xb
	movzx	esi, byte ptr [r15 + 0x12]
	call	set_stat_type
	xor	bl, 1
	movzx	esi, bl
	mov	rdi, r12
	call	fts_set_stat_required
	mov	rbx, qword ptr [rsp + 0x40]
.label_1508:
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r12 + 0x10], 0
	test	rbp, rbp
	mov	rax, r12
	je	.label_1510
	mov	rax, qword ptr [rsp + 0x78]
	mov	qword ptr [rax + 0x10], r12
	mov	rax, rbp
.label_1510:
	mov	rbp, rax
	cmp	rdx, 0x2710
	jne	.label_1482
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax], 0
	jne	.label_1482
	mov	esi, dword ptr [rsp]
	mov	rdi, r14
	call	dirent_inode_sort_may_be_useful
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x50], rax
	nop	dword ptr [rax]
.label_1482:
	inc	rdx
	cmp	qword ptr [rsp + 0x58], rdx
	ja	.label_1509
	jmp	.label_1497
.label_1526:
	mov	eax, dword ptr [r13]
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x10]
	je	.label_1507
	mov	dword ptr [r14 + 0x40], eax
	mov	rax, r13
	or	rax, rdx
	mov	ax, 7
	mov	cx, 4
	cmovne	cx, ax
	mov	word ptr [r14 + 0x70], cx
.label_1507:
	mov	rdi, qword ptr [r14 + 0x18]
	test	rdi, rdi
	mov	rbp, qword ptr [rsp + 8]
	je	.label_1497
	call	closedir
	mov	rdx, qword ptr [rsp + 0x10]
	mov	qword ptr [r14 + 0x18], 0
	jmp	.label_1497
.label_1489:
	mov	r13, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
.label_1497:
	mov	rax, qword ptr [rsp + 0x60]
	test	al, 1
	mov	r15d, dword ptr [rsp + 0x4c]
	je	.label_1519
	mov	rdi, rbx
	mov	rsi, rbp
	mov	r12, rdx
	call	fts_padjust
	mov	rdx, r12
.label_1519:
	test	byte ptr [rbx + 0x48], 4
	je	.label_1523
	mov	rax, qword ptr [rsp + 0x18]
	mov	rcx, rax
	lea	rax, [rcx - 1]
	mov	rsi, qword ptr [rsp + 0x30]
	cmp	rsi, qword ptr [rbx + 0x30]
	cmove	rcx, rax
	test	rdx, rdx
	cmove	rcx, rax
	mov	byte ptr [rcx], 0
.label_1523:
	test	r13, r13
	jne	.label_1481
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	je	.label_1481
	cmp	r15d, 1
	je	.label_1478
	test	rdx, rdx
	jne	.label_1481
.label_1478:
	cmp	qword ptr [r14 + 0x58], 0
	je	.label_1483
	mov	rsi, qword ptr [r14 + 8]
	mov	r12, rdx
	mov	edx, 0xffffffff
	mov	ecx, OFFSET FLAT:label_137
	mov	rdi, rbx
	call	fts_safe_changedir
	jmp	.label_1493
.label_1483:
	mov	rdi, rbx
	mov	r12, rdx
	call	restore_initial_cwd
.label_1493:
	mov	rdx, r12
	test	eax, eax
	je	.label_1481
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	jmp	.label_1484
.label_1481:
	test	rdx, rdx
	je	.label_1498
	mov	rax, qword ptr [rsp + 0x50]
	test	al, 1
	je	.label_1500
	mov	r14, qword ptr [rsp + 0x20]
	mov	qword ptr [word ptr [r14]], OFFSET FLAT:fts_compare_ino
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rbp, rdx
	call	fts_sort
	mov	rdx, rbp
	mov	rbp, rax
	mov	qword ptr [r14], 0
.label_1500:
	cmp	rdx, 2
	jb	.label_1511
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	test	rax, rax
	je	.label_1511
	mov	rdi, rbx
	mov	rsi, rbp
	call	fts_sort
	mov	rbp, rax
	jmp	.label_1511
.label_1498:
	cmp	r15d, 3
	jne	.label_1484
	movzx	eax, word ptr [r14 + 0x70]
	cmp	eax, 4
	je	.label_1484
	movzx	eax, ax
	cmp	eax, 7
	je	.label_1484
	mov	word ptr [r14 + 0x70], 6
.label_1484:
	mov	rdi, rbp
	call	fts_lfree
.label_1496:
	xor	ebp, ebp
.label_1511:
	mov	rax, rbp
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1486:
	mov	ebx, dword ptr [r13]
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rbp + 0x18]
	call	closedir
	mov	qword ptr [rbp + 0x18], 0
	mov	word ptr [rbp + 0x70], 7
	or	byte ptr [r14 + 0x49], 0x20
	mov	dword ptr [r13], ebx
	jmp	.label_1496
.label_1529:
	mov	rdi, r12
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	fts_lfree
	mov	rdi, qword ptr [r14 + 0x18]
	call	closedir
	mov	qword ptr [r14 + 0x18], 0
	mov	word ptr [r14 + 0x70], 7
	or	byte ptr [rbx + 0x49], 0x20
	mov	dword ptr [r13], 0x24
	jmp	.label_1496
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410460

	.globl restore_initial_cwd
	.type restore_initial_cwd, @function
restore_initial_cwd:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0x48]
	test	al, 4
	jne	.label_1533
	test	ah, 2
	jne	.label_1535
	mov	edi, dword ptr [rbx + 0x28]
	call	fchdir
	test	eax, eax
	setne	al
	jmp	.label_1534
.label_1535:
	mov	esi, 0xffffff9c
	mov	edx, 1
	mov	rdi, rbx
	call	cwd_advance_fd
.label_1533:
	xor	eax, eax
.label_1534:
	movzx	ebp, al
	add	rbx, 0x60
	mov	rdi, rbx
	call	fd_ring_clear
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4104b0

	.globl fts_load
	.type fts_load, @function
fts_load:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 0x60]
	mov	qword ptr [r12 + 0x48], rdx
	mov	rdi, qword ptr [r14 + 0x20]
	lea	r15, [r12 + 0x108]
	inc	rdx
	mov	rsi, r15
	call	memmove
	mov	esi, 0x2f
	mov	rdi, r15
	call	strrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1537
	cmp	rbx, r15
	jne	.label_1536
	cmp	byte ptr [rbx + 1], 0
	je	.label_1537
.label_1536:
	inc	rbx
	mov	rdi, rbx
	call	strlen
	mov	r13, rax
	lea	rdx, [r13 + 1]
	mov	rdi, r15
	mov	rsi, rbx
	call	memmove
	mov	qword ptr [r12 + 0x60], r13
.label_1537:
	mov	rax, qword ptr [r14 + 0x20]
	mov	qword ptr [r12 + 0x38], rax
	mov	qword ptr [r12 + 0x30], rax
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410540

	.globl leaf_optimization
	.type leaf_optimization, @function
leaf_optimization:
	push	rax
	call	filesystem_type
	cmp	rax, 0x52654972
	jle	.label_1541
	mov	ecx, 2
	cmp	rax, 0x58465341
	jg	.label_1542
	cmp	rax, 0x52654973
	je	.label_1540
	cmp	rax, 0x5346414f
	je	.label_1539
	jmp	.label_1538
.label_1541:
	test	rax, rax
	je	.label_1539
	cmp	rax, 0x6969
	je	.label_1539
	cmp	rax, 0x9fa0
	je	.label_1539
	jmp	.label_1538
.label_1542:
	cmp	rax, 0x58465342
	je	.label_1540
	mov	ecx, 0xff534d42
	cmp	rax, rcx
	jne	.label_1538
.label_1539:
	xor	ecx, ecx
.label_1540:
	mov	eax, ecx
	pop	rcx
	ret	
.label_1538:
	mov	ecx, 1
	jmp	.label_1540
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4105b0

	.globl enter_dir
	.type enter_dir, @function
enter_dir:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbp, rdi
	movzx	eax, word ptr [rbp + 0x48]
	test	ax, 0x102
	je	.label_1545
	mov	edi, 0x18
	call	malloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1544
	mov	rax, qword ptr [r14 + 0x78]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [r14 + 0x80]
	mov	qword ptr [rbx + 8], rax
	mov	qword ptr [rbx + 0x10], r14
	mov	rdi, qword ptr [rbp + 0x58]
	mov	rsi, rbx
	call	hash_insert
	mov	r15, rax
	mov	bpl, 1
	cmp	r15, rbx
	je	.label_1543
	mov	rdi, rbx
	call	free
	test	r15, r15
	je	.label_1544
	mov	rax, qword ptr [r15 + 0x10]
	mov	qword ptr [r14], rax
	jmp	.label_1546
.label_1545:
	mov	rdi, qword ptr [rbp + 0x58]
	lea	rsi, [r14 + 0x78]
	call	cycle_check
	mov	bpl, 1
	test	al, al
	je	.label_1543
	mov	qword ptr [r14], r14
.label_1546:
	mov	word ptr [r14 + 0x70], 2
	jmp	.label_1543
.label_1544:
	xor	ebp, ebp
.label_1543:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410650

	.globl cwd_advance_fd
	.type cwd_advance_fd, @function
cwd_advance_fd:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	mov	esi, dword ptr [rbx + 0x2c]
	cmp	esi, ebp
	jne	.label_1548
	cmp	esi, -0x64
	jne	.label_1551
.label_1548:
	test	dl, dl
	je	.label_1547
	lea	rdi, [rbx + 0x60]
	call	i_ring_push
	test	eax, eax
	js	.label_1549
	mov	edi, eax
	jmp	.label_1550
.label_1547:
	test	esi, esi
	js	.label_1549
	mov	eax, dword ptr [rbx + 0x48]
	and	eax, 4
	jne	.label_1549
	mov	edi, esi
.label_1550:
	call	close
.label_1549:
	mov	dword ptr [rbx + 0x2c], ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1551:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106a0

	.globl rpl_fts_set
	.type rpl_fts_set, @function
rpl_fts_set:
	cmp	edx, 5
	jb	.label_1552
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 1
	add	rsp, 8
	ret	
.label_1552:
	mov	word ptr [rsi + 0x74], dx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4106d0
	.globl rpl_fts_children
	.type rpl_fts_children, @function
rpl_fts_children:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	ebp, esi
	mov	rbx, rdi
	mov	eax, ebp
	or	eax, 0x1000
	cmp	eax, 0x1000
	jne	.label_1557
	mov	r12, qword ptr [rbx]
	call	__errno_location
	mov	r14, rax
	mov	dword ptr [r14], 0
	xor	eax, eax
	test	byte ptr [rbx + 0x49], 0x20
	jne	.label_1556
	movzx	ecx, word ptr [r12 + 0x70]
	xor	eax, eax
	cmp	ecx, 1
	je	.label_1554
	movzx	ecx, cx
	cmp	ecx, 9
	jne	.label_1556
	mov	rax, qword ptr [r12 + 0x10]
	jmp	.label_1556
.label_1557:
	call	__errno_location
	mov	dword ptr [rax], 0x16
	xor	eax, eax
	jmp	.label_1556
.label_1554:
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	je	.label_1561
	call	fts_lfree
.label_1561:
	mov	r15d, 1
	cmp	ebp, 0x1000
	jne	.label_1555
	or	byte ptr [rbx + 0x49], 0x10
	mov	r15d, 2
.label_1555:
	cmp	qword ptr [r12 + 0x58], 0
	jne	.label_1559
	mov	rax, qword ptr [r12 + 0x30]
	cmp	byte ptr [rax], 0x2f
	je	.label_1559
	test	byte ptr [rbx + 0x48], 4
	jne	.label_1559
	mov	esi, OFFSET FLAT:label_128
	mov	rdi, rbx
	call	diropen
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1560
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
	test	byte ptr [rbx + 0x49], 2
	jne	.label_1558
	mov	edi, ebp
	call	fchdir
	test	eax, eax
	je	.label_1553
	mov	ebx, dword ptr [r14]
	mov	edi, ebp
	call	close
	mov	dword ptr [r14], ebx
	xor	eax, eax
	jmp	.label_1556
.label_1559:
	mov	rdi, rbx
	mov	esi, r15d
	call	fts_build
	mov	qword ptr [rbx + 8], rax
.label_1556:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1560:
	mov	qword ptr [rbx + 8], 0
	xor	eax, eax
	jmp	.label_1556
.label_1558:
	mov	edx, 1
	mov	rdi, rbx
	mov	esi, ebp
	call	cwd_advance_fd
	jmp	.label_1562
.label_1553:
	mov	edi, ebp
	call	close
.label_1562:
	mov	rax, qword ptr [rbx + 8]
	jmp	.label_1556
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410810

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
	#Procedure 0x410820

	.globl AD_compare
	.type AD_compare, @function
AD_compare:
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, qword ptr [rsi + 8]
	jne	.label_1563
	mov	rax, qword ptr [rdi]
	cmp	rax, qword ptr [rsi]
	sete	al
	ret	
.label_1563:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410840

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
	je	.label_1564
	mov	rbp, qword ptr [rbx + 0x50]
	test	rbp, rbp
	jne	.label_1566
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
	je	.label_1567
.label_1566:
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsp]
	mov	rdi, rbp
	call	hash_lookup
	test	rax, rax
	je	.label_1569
	mov	rax, qword ptr [rax + 8]
	jmp	.label_1564
.label_1569:
	mov	r12b, 1
	mov	r14, rbp
.label_1567:
	xor	eax, eax
	test	r15d, r15d
	js	.label_1564
	lea	rsi, [rsp]
	mov	edi, r15d
	call	fstatfs
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1564
	test	r12b, r12b
	je	.label_1565
	mov	edi, 0x10
	call	malloc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_1565
	mov	rax, qword ptr [r13 + 0x78]
	mov	qword ptr [rbp], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 8], rax
	mov	rdi, r14
	mov	rsi, rbp
	call	hash_insert
	test	rax, rax
	je	.label_1568
	cmp	rax, rbp
	je	.label_1565
	call	abort
.label_1568:
	mov	rdi, rbp
	call	free
.label_1565:
	mov	rax, qword ptr [rsp]
.label_1564:
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
	#Procedure 0x410940

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
	#Procedure 0x410950

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
	#Procedure 0x410960

	.globl set_stat_type
	.type set_stat_type, @function
set_stat_type:
	dec	esi
	xor	eax, eax
	cmp	esi, 0xb
	ja	.label_1570
	movsxd	rax, esi
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + label_1571]]
.label_1570:
	mov	dword ptr [rdi + 0x18], eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410980

	.globl dirent_inode_sort_may_be_useful
	.type dirent_inode_sort_may_be_useful, @function
dirent_inode_sort_may_be_useful:
	push	rax
	call	filesystem_type
	mov	rcx, rax
	xor	eax, eax
	cmp	rcx, 0x6969
	je	.label_1572
	cmp	rcx, 0x1021994
	je	.label_1572
	mov	edx, 0xff534d42
	cmp	rcx, rdx
	je	.label_1572
	mov	al, 1
.label_1572:
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4109b0

	.globl fts_padjust
	.type fts_padjust, @function
fts_padjust:
	mov	rcx, qword ptr [rdi + 8]
	mov	rax, qword ptr [rdi + 0x20]
	jmp	.label_1578
	nop	word ptr [rax + rax]
.label_1577:
	mov	qword ptr [rcx + 0x38], rax
	mov	rcx, qword ptr [rcx + 0x10]
.label_1578:
	test	rcx, rcx
	je	.label_1574
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rdi, [rcx + 0x108]
	cmp	rdx, rdi
	je	.label_1577
	sub	rdx, qword ptr [rcx + 0x38]
	add	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	jmp	.label_1577
.label_1574:
	cmp	qword ptr [rsi + 0x58], 0
	js	.label_1575
	nop	word ptr cs:[rax + rax]
.label_1576:
	mov	rcx, qword ptr [rsi + 0x30]
	lea	rdx, [rsi + 0x108]
	cmp	rcx, rdx
	je	.label_1573
	sub	rcx, qword ptr [rsi + 0x38]
	add	rcx, rax
	mov	qword ptr [rsi + 0x30], rcx
.label_1573:
	mov	qword ptr [rsi + 0x38], rax
	mov	rcx, qword ptr [rsi + 0x10]
	test	rcx, rcx
	jne	.label_1579
	mov	rcx, qword ptr [rsi + 8]
.label_1579:
	cmp	qword ptr [rcx + 0x58], 0
	mov	rsi, rcx
	jns	.label_1576
.label_1575:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410a40

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
	#Procedure 0x410a70
	.globl fts_compar
	.type fts_compar, @function
fts_compar:

	push	rax
	mov	rax, qword ptr [rdi]
	mov	rax, qword ptr [rax + 0x50]
	call	qword ptr [rax + 0x40]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x410a80

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
	je	.label_1580
	cmp	r15, -2
	jb	.label_1580
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_1580
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_1580:
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
	#Procedure 0x410ae0

	.globl free_permission_context
	.type free_permission_context, @function
free_permission_context:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410af0

	.globl get_permissions
	.type get_permissions, @function
get_permissions:
	mov	dword ptr [rcx], edx
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b00

	.globl chmod_or_fchmod
	.type chmod_or_fchmod, @function
chmod_or_fchmod:
	cmp	esi, -1
	je	.label_1581
	mov	edi, esi
	mov	esi, edx
	jmp	fchmod
.label_1581:
	mov	esi, edx
	jmp	chmod
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b20

	.globl set_permissions
	.type set_permissions, @function
set_permissions:
	push	rax
	mov	eax, dword ptr [rdi]
	mov	rdi, rsi
	mov	esi, edx
	mov	edx, eax
	call	chmod_or_fchmod
	neg	eax
	sbb	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b40

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410b50

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
	je	.label_1585
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], r14
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1582:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_1583
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_1587
	cmp	qword ptr [rsp + 8], -1
	je	.label_1588
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	je	.label_1584
	mov	rdi, qword ptr [rsp + 8]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_1583
.label_1584:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1583
.label_1588:
	mov	qword ptr [rsp + 8], rbp
	nop	word ptr [rax + rax]
.label_1583:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_1582
	jmp	.label_1586
.label_1585:
	mov	qword ptr [rsp + 8], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_1586:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 8]
.label_1587:
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
	#Procedure 0x410c50

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
	je	.label_1589
	mov	esi, OFFSET FLAT:label_1590
	jmp	.label_1591
.label_1589:
	mov	esi, OFFSET FLAT:label_1592
.label_1591:
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
	#Procedure 0x410cc0

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
	mov	esi, OFFSET FLAT:label_1593
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_1599
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1595:
	test	rbp, rbp
	je	.label_1597
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_1594
.label_1597:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1600
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_1596
	nop	word ptr cs:[rax + rax]
.label_1594:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:label_1598
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_1596:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_1595
.label_1599:
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
	#Procedure 0x410dc0

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
	jns	.label_1601
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
.label_1601:
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
	#Procedure 0x410e30
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
	je	.label_1602
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_1603:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_1602
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_1603
.label_1602:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410ea0
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
	#Procedure 0x410eb0
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
	#Procedure 0x410ec0
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
	#Procedure 0x410ed0
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
	#Procedure 0x410ee0
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
	#Procedure 0x410ef0

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
	#Procedure 0x410f00
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
	#Procedure 0x410f20
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
	#Procedure 0x410f40
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
	#Procedure 0x410f60
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
	#Procedure 0x410f80
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1604
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1604
.label_1605:
	ret	
.label_1604:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1605
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410fb0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1606
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1606:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x410fd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410fe0
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
	#Procedure 0x410ff0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1607
.label_1608:
	ret	
.label_1607:
	cmp	edi, 0x7f
	je	.label_1608
	xor	eax, eax
	jmp	.label_1608
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411010
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
	#Procedure 0x411020
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
	#Procedure 0x411030
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
	#Procedure 0x411040
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
	#Procedure 0x411050
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_1609
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_1610]]
.label_1611:
	ret	
.label_1609:
	xor	eax, eax
	jmp	.label_1611
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411070
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1612
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_1612:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411090

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
	#Procedure 0x4110a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1613
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1613:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4110c0
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
	#Procedure 0x4110d0
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
	#Procedure 0x4110e0

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
	je	.label_1614
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1615
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1615
.label_1614:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1615
	test	cl, cl
	jne	.label_1615
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1615:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411150

	.globl cycle_check_init
	.type cycle_check_init, @function
cycle_check_init:
	mov	qword ptr [rdi + 0x10], 0
	mov	dword ptr [rdi + 0x18], 0x95f616
	ret	
	.section	.text
	.align	16
	#Procedure 0x411160

	.globl cycle_check
	.type cycle_check, @function
cycle_check:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	cmp	dword ptr [r15 + 0x18], 0x95f616
	jne	.label_1616
	cmp	qword ptr [r15 + 0x10], 0
	je	.label_1621
	mov	rax, qword ptr [r14 + 8]
	cmp	rax, qword ptr [r15]
	jne	.label_1621
	mov	rcx, qword ptr [r14]
	mov	al, 1
	cmp	rcx, qword ptr [r15 + 8]
	je	.label_1622
.label_1621:
	mov	rbx, qword ptr [r15 + 0x10]
	inc	rbx
	mov	qword ptr [r15 + 0x10], rbx
	mov	rdi, rbx
	call	is_zero_or_power_of_two
	test	al, al
	je	.label_1617
	mov	al, 1
	test	rbx, rbx
	je	.label_1622
	mov	rax, qword ptr [r14]
	mov	qword ptr [r15 + 8], rax
	mov	rax, qword ptr [r14 + 8]
	mov	qword ptr [r15], rax
.label_1617:
	xor	eax, eax
.label_1622:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1616:
	mov	edi, OFFSET FLAT:label_1618
	mov	esi, OFFSET FLAT:label_1619
	mov	edx, 0x3c
	mov	ecx, OFFSET FLAT:label_1620
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4111e0

	.globl is_zero_or_power_of_two
	.type is_zero_or_power_of_two, @function
is_zero_or_power_of_two:
	lea	rax, [rdi - 1]
	test	rax, rdi
	sete	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4111f0

	.globl opendir_safer
	.type opendir_safer, @function
opendir_safer:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	call	opendir
	mov	r14, rax
	xor	ebx, ebx
	test	r14, r14
	je	.label_1625
	mov	rdi, r14
	call	dirfd
	mov	ecx, eax
	cmp	ecx, 2
	ja	.label_1626
	mov	esi, 0x406
	mov	edx, 3
	xor	eax, eax
	mov	edi, ecx
	call	rpl_fcntl
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1623
	mov	edi, ebp
	call	fdopendir
	mov	rbx, rax
	call	__errno_location
	mov	r15d, dword ptr [rax]
	test	rbx, rbx
	jne	.label_1627
	mov	edi, ebp
	call	close
	jmp	.label_1624
.label_1626:
	mov	rbx, r14
	jmp	.label_1625
.label_1623:
	call	__errno_location
	mov	r15d, dword ptr [rax]
.label_1624:
	xor	ebx, ebx
.label_1627:
	mov	rdi, r14
	call	closedir
	call	__errno_location
	mov	dword ptr [rax], r15d
.label_1625:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411280

	.globl gettime
	.type gettime, @function
gettime:
	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	clock_gettime
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411290
	.globl current_timespec
	.type current_timespec, @function
current_timespec:

	sub	rsp, 0x18
	lea	rdi, [rsp + 8]
	call	gettime
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4112b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1629
	cmp	byte ptr [rax], 0x43
	jne	.label_1631
	cmp	byte ptr [rax + 1], 0
	je	.label_1628
.label_1631:
	mov	esi, OFFSET FLAT:label_1630
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1629
.label_1628:
	xor	ebx, ebx
.label_1629:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4112f0

	.globl hash_pjw
	.type hash_pjw, @function
hash_pjw:
	mov	cl, byte ptr [rdi]
	xor	eax, eax
	test	cl, cl
	je	.label_1632
	inc	rdi
	xor	eax, eax
	nop	dword ptr [rax]
.label_1633:
	movsx	rcx, cl
	rol	rax, 9
	add	rax, rcx
	movzx	ecx, byte ptr [rdi]
	inc	rdi
	test	cl, cl
	jne	.label_1633
.label_1632:
	xor	edx, edx
	div	rsi
	mov	rax, rdx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x411320

	.globl i_ring_init
	.type i_ring_init, @function
i_ring_init:
	mov	byte ptr [rdi + 0x1c], 1
	mov	qword ptr [rdi + 0x14], 0
	xor	eax, eax
	nop	
.label_1634:
	mov	dword ptr [rdi + rax*4], esi
	inc	rax
	cmp	rax, 4
	jne	.label_1634
	mov	dword ptr [rdi + 0x10], esi
	ret	
	.section	.text
	.align	16
	#Procedure 0x411340

	.globl i_ring_empty
	.type i_ring_empty, @function
i_ring_empty:
	mov	al, byte ptr [rdi + 0x1c]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411350

	.globl i_ring_push
	.type i_ring_push, @function
i_ring_push:
	mov	al, byte ptr [rdi + 0x1c]
	xor	al, 1
	movzx	edx, al
	add	edx, dword ptr [rdi + 0x14]
	and	edx, 3
	mov	eax, dword ptr [rdi + rdx*4]
	mov	dword ptr [rdi + rdx*4], esi
	mov	dword ptr [rdi + 0x14], edx
	mov	ecx, dword ptr [rdi + 0x18]
	cmp	edx, ecx
	jne	.label_1635
	mov	dl, byte ptr [rdi + 0x1c]
	xor	dl, 1
	movzx	edx, dl
	add	edx, ecx
	and	edx, 3
	mov	dword ptr [rdi + 0x18], edx
.label_1635:
	mov	byte ptr [rdi + 0x1c], 0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411390

	.globl i_ring_pop
	.type i_ring_pop, @function
i_ring_pop:
	push	rbx
	mov	rbx, rdi
	call	i_ring_empty
	test	al, al
	jne	.label_1636
	mov	ecx, dword ptr [rbx + 0x10]
	mov	edx, dword ptr [rbx + 0x14]
	mov	eax, dword ptr [rbx + rdx*4]
	mov	dword ptr [rbx + rdx*4], ecx
	mov	ecx, dword ptr [rbx + 0x14]
	cmp	ecx, dword ptr [rbx + 0x18]
	jne	.label_1637
	mov	byte ptr [rbx + 0x1c], 1
	pop	rbx
	ret	
.label_1637:
	add	ecx, 3
	and	ecx, 3
	mov	dword ptr [rbx + 0x14], ecx
	pop	rbx
	ret	
.label_1636:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4113d0

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
	mov	eax, OFFSET FLAT:label_1638
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411400

	.globl openat_safer
	.type openat_safer, @function
openat_safer:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1639
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1639:
	mov	qword ptr [rsp + 0x48], r9
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x38], rcx
	xor	ecx, ecx
	test	dl, 0x40
	je	.label_1640
	lea	rax, [rsp + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	lea	rax, [rsp + 0xe0]
	mov	qword ptr [rsp + 8], rax
	mov	dword ptr [rsp + 4], 0x30
	mov	dword ptr [rsp], 0x18
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1641
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1642
.label_1641:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1642:
	mov	ecx, dword ptr [rax]
.label_1640:
	xor	eax, eax
	call	openat
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xd8
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4114c0

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4114e0

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_1643
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_1643:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411500
	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:

	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411510

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbx, qword ptr [rdi + 0x10]
	lea	r12, [r13 + 1]
	nop	word ptr cs:[rax + rax]
.label_1645:
	cmp	rbx, r13
	jae	.label_1644
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1646:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_1646
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rbp, [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r14
	call	randread
	nop	dword ptr [rax + rax]
.label_1648:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_1648
.label_1644:
	mov	rcx, r15
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_1649
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_1645
	xor	edx, edx
	mov	rax, rcx
	div	r12
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	r12
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_1647
.label_1649:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp + 8]
	movups	xmmword ptr [rax], xmm0
.label_1647:
	mov	rax, rcx
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
	#Procedure 0x411630

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411640

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411660

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4116a0

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_1650
	test	rbx, rbx
	je	.label_1652
	mov	esi, OFFSET FLAT:label_1653
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_1651
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_1651
.label_1650:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_1652:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_1651:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411750

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411780

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:label_1654
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1655
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_1655
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_1656
.label_1655:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1656
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1656
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_1656
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_1656
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_1656:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411920
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411930
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411940

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_1657
	jmp	readsource
.label_1657:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411960

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	jmp	.label_1659
	nop	
.label_1658:
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
.label_1659:
	sub	r13, rbx
	jne	.label_1658
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119e0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_1660
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_1662:
	cmp	r15, 0x800
	jb	.label_1661
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_1662
	jmp	.label_1663
.label_1661:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_1660:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_1663:
	mov	qword ptr [r14], r12
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
	#Procedure 0x411a90

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_1664
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_1664:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ad0

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1665
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_1668
	mov	esi, OFFSET FLAT:label_1666
	jmp	.label_1667
.label_1668:
	mov	esi, OFFSET FLAT:label_1669
.label_1667:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_1665:
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x411b30

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rcx, [r14 + 0x400]
	lea	rax, [r14 + 0x20]
	cmp	rcx, rax
	mov	qword ptr [rsp + 0x20], rcx
	cmova	rax, rcx
	mov	rcx, r14
	not	rcx
	add	rcx, rax
	shr	rcx, 5
	lea	rax, [rcx*4]
	mov	qword ptr [rsp + 0x18], rax
	shl	rcx, 5
	lea	rax, [rbp + rcx + 0x20]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r14
	mov	r15, qword ptr [rsp + 8]
	nop	
.label_1671:
	mov	qword ptr [rsp], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r14 + 0x400]
	mov	rbx, qword ptr [r14]
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r14], rax
	shr	rax, 8
	mov	rdi, r15
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r14 + 0x408]
	mov	r12, qword ptr [r14 + 8]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r14 + 8], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r14 + 0x410]
	mov	rbp, qword ptr [r14 + 0x10]
	mov	rdi, r15
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r14 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r15
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r14 + 0x418]
	mov	r12, qword ptr [r14 + 0x18]
	mov	rdi, r15
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r14 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r15
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r14, 0x20
	add	rbp, 0x20
	cmp	r14, qword ptr [rsp + 0x20]
	jb	.label_1671
	mov	rcx, qword ptr [rsp + 8]
	lea	rax, [rcx + 0x800]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rsp + 0x18]
	lea	r13, [rcx + rax*8 + 0x38]
	mov	r14, qword ptr [rsp + 8]
	nop	
.label_1670:
	mov	r15, rbx
	shl	r15, 0x15
	xor	r15, rbx
	not	r15
	add	r15, qword ptr [r13 - 0x418]
	mov	rbx, qword ptr [r13 - 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r15
	mov	qword ptr [r13 - 0x18], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	r12, rax
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x410]
	mov	r15, qword ptr [r13 - 0x10]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13 - 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 8], rbp
	mov	qword ptr [rsp + 0x10], r12
	mov	r15, rbx
	shl	r15, 0xc
	xor	r15, rbx
	add	r15, qword ptr [r13 - 0x408]
	mov	rbx, qword ptr [r13 - 8]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r15
	add	rbp, rax
	mov	qword ptr [r13 - 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r12 + 0x10], rbp
	mov	rdi, r15
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r15
	add	rbx, qword ptr [r13 - 0x400]
	mov	r15, qword ptr [r13]
	mov	rdi, r14
	mov	rsi, r15
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r13], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r15, rax
	mov	rdi, r15
	call	just
	mov	r12, rax
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx + 0x18], r12
	lea	rax, [r13 + 0x20]
	add	r13, 8
	add	rcx, 0x20
	mov	qword ptr [rsp + 0x10], rcx
	cmp	r13, qword ptr [rsp]
	mov	r13, rax
	jb	.label_1670
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax + 0x800], rbx
	mov	qword ptr [rax + 0x808], r12
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
	#Procedure 0x411ed0

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ee0

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411ef0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x28], rdi
	nop	word ptr cs:[rax + rax]
.label_1672:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 8], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp + 0x30], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x18]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp + 0x30]
	add	rbx, r13
	mov	qword ptr [rsp + 0x18], rbx
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	mov	qword ptr [rsp + 0x10], r13
	mov	r13, qword ptr [rsp + 8]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 0x10]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_1672
	xor	ecx, ecx
	nop	
.label_1673:
	mov	qword ptr [rsp + 0x20], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 8], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp]
	mov	qword ptr [rsp], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x18], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 8]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 0x10], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp + 8], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp]
	sub	rdi, r15
	mov	qword ptr [rsp], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 0x10]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x28]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_1673
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
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
	#Procedure 0x412210

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
	#Procedure 0x412220

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412230

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1674
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1676
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1674
.label_1676:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1674
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1675
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1675:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1674:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4122b0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1683
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1683:
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
	ja	.label_1677
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1687
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1685
	test	esi, esi
	jne	.label_1677
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1688
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1680
.label_1677:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1678
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1685
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1690
.label_1687:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1685:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1681
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1684
.label_1681:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1684:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1690:
	cmp	eax, 6
	jne	.label_1678
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1679
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1682
.label_1678:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1686
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1689
.label_1688:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1680:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_1679:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1682:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_1686:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1689:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412470

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
	#Procedure 0x412480

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1691
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1693
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1693
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1695
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1694
.label_1693:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1694
.label_1691:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1694:
	test	ebx, ebx
	js	.label_1695
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1695
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1692
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1695
.label_1692:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1695:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412550

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
	#Procedure 0x412570

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
	je	.label_1699
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_1698
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_1700
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_1696
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_1699
.label_1696:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_1697
.label_1698:
	mov	rax, rbx
	jmp	.label_1699
.label_1700:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_1697:
	xor	eax, eax
.label_1699:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4126b0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	16
	#Procedure 0x4126c0

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section	.text
	.align	16
	#Procedure 0x4126d0

	.globl lstat
	.type lstat, @function
lstat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__lxstat
	.section	.text
	.align	16
	#Procedure 0x4126e0

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	16
	#Procedure 0x412700

	.globl mknod
	.type mknod, @function
mknod:
	sub	rsp, 0x18
	lea	rcx, [rsp + 8]
	mov	qword ptr [rsp + 8], rdx
	mov	edx, esi
	mov	rsi, rdi
	xor	edi, edi
	call	__xmknod
	add	rsp, 0x18
	ret	
