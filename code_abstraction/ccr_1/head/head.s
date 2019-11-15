	.section	.text
	.align	16
	#Procedure 0x4016d0

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
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
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
	mov	esi, OFFSET FLAT:label_18
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	mov	esi, OFFSET FLAT:label_13
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
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_12:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_11
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
	#Procedure 0x401850

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401880

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
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
	#Procedure 0x4018b0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:label_29
	nop	
.label_28:
	mov	edi, OFFSET FLAT:label_21
	call	strcmp
	test	eax, eax
	je	.label_26
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_28
.label_26:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:label_21
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_31
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_22
	mov	esi, OFFSET FLAT:label_23
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_22
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_30
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_21
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_25
	mov	ecx, OFFSET FLAT:label_21
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_33
	mov	ecx, OFFSET FLAT:label_34
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
	#Procedure 0x4019d0

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
	mov	r12, rsi
	mov	ebx, edi
	mov	rdi, qword ptr [r12]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_34
	call	setlocale
	mov	edi, OFFSET FLAT:label_37
	mov	esi, OFFSET FLAT:label_67
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_37
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	mov	r15b, 1
	xor	r14d, r14d
	mov	r13d, 0xa
	mov	qword ptr [rsp + 0x18], rbx
	cmp	ebx, 2
	jl	.label_54
	mov	rax, qword ptr [r12 + 8]
	mov	r13d, 0xa
	cmp	byte ptr [rax], 0x2d
	jne	.label_54
	movsx	ecx, byte ptr [rax + 1]
	add	ecx, -0x30
	mov	r13d, 0xa
	cmp	ecx, 9
	ja	.label_54
	lea	rcx, [r12 + 8]
	mov	qword ptr [rsp + 0x10], rcx
	lea	rsi, [rax + 1]
	add	rax, 2
	nop	dword ptr [rax]
.label_39:
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x30
	inc	rax
	cmp	ecx, 0xa
	jb	.label_39
	mov	dl, byte ptr [rax - 1]
	test	dl, dl
	je	.label_48
	xor	ecx, ecx
	mov	r15b, 1
	mov	rbx, rax
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	r8d, r15d
	mov	edi, ecx
	movsx	edx, dl
	add	edx, -0x62
	cmp	edx, 0x18
	ja	.label_59
	xor	r15d, r15d
	xor	ecx, ecx
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_63]]
.label_585:
	mov	cl, byte ptr [rbx - 1]
	xor	r15d, r15d
	jmp	.label_47
.label_586:
	mov	r15b, 1
	jmp	.label_68
.label_587:
	mov	r14d, 2
	jmp	.label_69
.label_588:
	mov	r14d, 1
	jmp	.label_69
.label_589:
	mov	byte ptr [byte ptr [rip + line_end]],  0
.label_69:
	mov	r15b, r8b
.label_68:
	mov	cl, dil
.label_47:
	movzx	edx, byte ptr [rbx]
	inc	rbx
	test	dl, dl
	jne	.label_56
	mov	byte ptr [rax - 1], cl
	test	cl, cl
	je	.label_49
	mov	byte ptr [rax], 0
	jmp	.label_49
.label_54:
	mov	qword ptr [rsp + 0x10], r12
.label_71:
	xor	r12d, r12d
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_570:
	mov	r14d, 1
.label_53:
	mov	ebp, r14d
	jmp	.label_35
.label_571:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	nop	word ptr cs:[rax + rax]
.label_35:
	mov	edx, OFFSET FLAT:label_66
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	call	getopt_long
	mov	ebx, eax
	cmp	ebx, 0x62
	jle	.label_72
	lea	eax, [rbx - 0x63]
	cmp	eax, 0x1d
	ja	.label_36
	mov	r14d, 2
	jmp	qword ptr [word ptr [+ (rax * 8) + label_41]]
.label_568:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2d
	sete	r12b
	jne	.label_50
	inc	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_50:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	xor	r15d, r15d
	xor	edi, edi
	call	string_to_integer
	mov	r13, rax
	jmp	.label_35
.label_569:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0x2d
	sete	r12b
	jne	.label_61
	inc	rax
	mov	qword ptr [word ptr [rip + optarg]],  rax
.label_61:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	edi, 1
	call	string_to_integer
	mov	r13, rax
	mov	r15b, 1
	jmp	.label_35
.label_572:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_35
.label_72:
	cmp	ebx, -1
	jne	.label_40
	cmp	ebp, 1
	je	.label_45
	test	ebp, ebp
	jne	.label_51
	mov	rax, qword ptr [rsp + 0x18]
	lea	eax, [rax - 1]
	cmp	dword ptr [dword ptr [rip + optind]],  eax
	jge	.label_51
.label_45:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_51:
	and	r15b, 1
	jne	.label_52
	test	r13, r13
	jns	.label_52
	test	r12b, r12b
	jne	.label_46
.label_52:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	eax, ecx
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rax, [rcx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	rdi, qword ptr [rbp]
	mov	bl, 1
	test	rdi, rdi
	je	.label_62
	add	rbp, 8
	mov	bl, 1
	nop	dword ptr [rax]
.label_38:
	xor	ecx, ecx
	test	r12b, r12b
	setne	cl
	xor	edx, edx
	test	r15b, r15b
	setne	dl
	mov	rsi, r13
	call	head_file
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	jne	.label_38
.label_62:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_55
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_57
.label_55:
	movzx	eax, bl
	xor	eax, 1
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_48:
	mov	byte ptr [rax - 1], 0
	xor	r14d, r14d
	mov	r15b, 1
.label_49:
	mov	eax, r15d
	and	al, 1
	movzx	edi, al
	call	string_to_integer
	mov	r13, rax
	mov	rax, qword ptr [r12]
	mov	qword ptr [r12 + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	dec	eax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_71
.label_40:
	cmp	ebx, 0xffffff7d
	je	.label_43
	cmp	ebx, 0xffffff7e
	jne	.label_36
	xor	edi, edi
	call	usage
.label_59:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	movsx	ecx, byte ptr [rbx - 1]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	call	error
	mov	edi, 1
	call	usage
.label_43:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_21
	mov	edx, OFFSET FLAT:label_24
	mov	r8d, OFFSET FLAT:label_64
	mov	r9d, OFFSET FLAT:label_65
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_36:
	lea	eax, [rbx - 0x30]
	cmp	eax, 9
	ja	.label_42
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, ebx
	call	error
.label_42:
	mov	edi, 1
	call	usage
.label_46:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	lea	rsi, [rsp + 0x20]
	mov	rdi, r13
	call	umaxtostr
	mov	rdi, rax
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	esi, 0x4b
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	rcx, r14
	mov	r8, rbx
	call	error
.label_57:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_44
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401e30

	.globl string_to_integer
	.type string_to_integer, @function
string_to_integer:
	push	rbx
	mov	rbx, rsi
	test	dil, dil
	je	.label_73
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_74
	jmp	.label_75
.label_73:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_60
.label_75:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:label_76
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	pop	rbx
	jmp	xdectoumax
	.section	.text
	.align	16
	#Procedure 0x401e70

	.globl head_file
	.type head_file, @function
head_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, ecx
	mov	r12d, edx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_79
	cmp	byte ptr [rbx + 1], 0
	je	.label_78
.label_79:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_83
	movzx	ecx, r12b
	movzx	r8d, r15b
	mov	rdi, rbx
	mov	esi, ebp
	mov	rdx, r14
	call	head
	mov	r14b, al
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_82
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_80
	jmp	.label_81
.label_83:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_84
.label_81:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	jmp	.label_82
.label_78:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_77
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	movzx	ecx, r12b
	movzx	r8d, r15b
	xor	esi, esi
	mov	rdi, rbx
	mov	rdx, r14
	call	head
	mov	r14b, al
.label_82:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f70

	.globl head
	.type head, @function
head:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	ebx, r8d
	mov	r15d, ecx
	mov	r14, rdx
	mov	ebp, esi
	mov	r12, rdi
	cmp	byte ptr [byte ptr [rip + print_headers]],  1
	jne	.label_90
	mov	rdi, r12
	call	write_header
.label_90:
	test	bl, bl
	je	.label_89
	lea	rsi, [rsp + 8]
	mov	edi, ebp
	call	fstat
	test	eax, eax
	je	.label_91
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
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
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_85
.label_89:
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r14
	test	r15b, r15b
	je	.label_92
	call	head_lines
	jmp	.label_86
.label_92:
	call	head_bytes
	jmp	.label_86
.label_91:
	mov	r13, -1
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	test	al, al
	jne	.label_88
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_88
	xor	ebx, ebx
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	mov	rcx, r12
	call	elseek
	mov	r13, rax
	test	r13, r13
	js	.label_85
.label_88:
	lea	rcx, [rsp + 8]
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r14
	mov	r8, r13
	test	r15b, r15b
	je	.label_87
	call	elide_tail_lines_file
	jmp	.label_86
.label_87:
	call	elide_tail_bytes_file
.label_86:
	mov	bl, al
.label_85:
	mov	eax, ebx
	add	rsp, 0x98
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
	#Procedure 0x402080

	.globl write_header
	.type write_header, @function
write_header:
	push	rax
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	mov	esi, OFFSET FLAT:label_94
	mov	edx, OFFSET FLAT:label_34
	test	al, al
	cmovne	rdx, rsi
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_95
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020c0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	movzx	eax, word ptr [rdi + 0x18]
	or	eax, 0x2000
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_96
	mov	al, 1
	ret	
.label_96:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl elseek
	.type elseek, @function
elseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rcx
	mov	ebp, edx
	mov	r14, rsi
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jns	.label_99
	call	__errno_location
	mov	r12d, dword ptr [rax]
	test	ebp, ebp
	mov	eax, OFFSET FLAT:label_97
	mov	esi, OFFSET FLAT:label_98
	cmove	rsi, rax
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
	lea	rsi, [rsp]
	mov	rdi, r14
	call	offtostr
	mov	rbp, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r12d
	mov	rdx, r13
	mov	rcx, r15
	mov	r8, rbp
	call	error
.label_99:
	mov	rax, rbx
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
	#Procedure 0x402180

	.globl elide_tail_lines_file
	.type elide_tail_lines_file, @function
elide_tail_lines_file:
	push	rax
	test	r8, r8
	js	.label_100
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_100
	mov	r9, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	r10d, 0x200
	mov	ecx, 0x200
	cmovb	rcx, rax
	test	rax, rax
	cmovle	rcx, r10
	cmp	r9, rcx
	jle	.label_100
	mov	al, 1
	cmp	r9, r8
	jle	.label_101
	mov	rcx, r8
	mov	r8, r9
	call	elide_tail_lines_seekable
.label_101:
	pop	rcx
	ret	
.label_100:
	mov	rcx, r8
	call	elide_tail_lines_pipe
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4021e0

	.globl elide_tail_bytes_file
	.type elide_tail_bytes_file, @function
elide_tail_bytes_file:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	r8, r8
	js	.label_102
	test	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jne	.label_102
	mov	rdi, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rcx + 0x38]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	ebp, 0x200
	cmovb	rbp, rax
	test	rax, rax
	cmovle	rbp, rcx
	cmp	rdi, rbp
	jle	.label_102
	xor	eax, eax
	sub	rdi, r8
	cmovns	rax, rdi
	mov	bpl, 1
	sub	rax, rdx
	jbe	.label_103
	mov	edi, esi
	mov	rsi, rax
	call	copy_fd
	test	eax, eax
	je	.label_103
	mov	edi, eax
	mov	rsi, rbx
	call	diagnose_copy_fd_failure
	xor	ebp, ebp
	jmp	.label_103
.label_102:
	mov	rdi, rbx
	mov	rcx, r8
	call	elide_tail_bytes_pipe
	mov	bpl, al
.label_103:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402270

	.globl head_lines
	.type head_lines, @function
head_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20a8
	mov	rbp, rdx
	mov	r12d, esi
	mov	r15b, 1
	test	rbp, rbp
	je	.label_107
	mov	qword ptr [rsp + 8], rdi
	lea	r13, [rsp + 0xa0]
	mov	r14d, 0xa
	nop	word ptr cs:[rax + rax]
.label_111:
	mov	edx, 0x2000
	mov	edi, r12d
	mov	rsi, r13
	call	safe_read
	cmp	rax, -1
	je	.label_104
	test	rax, rax
	je	.label_107
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	ecx, 0
	cmovne	ecx, r14d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_105:
	cmp	rbx, rax
	jae	.label_112
	movsx	edx, byte ptr [rsp + rbx + 0xa0]
	inc	rbx
	cmp	edx, ecx
	jne	.label_105
	dec	rbp
	jne	.label_105
	jmp	.label_106
	nop	dword ptr [rax + rax]
.label_112:
	mov	rdi, r13
	mov	rsi, rbx
	call	xwrite_stdout
	test	rbp, rbp
	jne	.label_111
	jmp	.label_107
.label_106:
	mov	rbp, rbx
	sub	rbp, rax
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	call	lseek
	test	rax, rax
	jns	.label_110
	lea	rsi, [rsp + 0x10]
	mov	edi, r12d
	call	fstat
	test	eax, eax
	jne	.label_109
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x28]
	cmp	eax, 0x8000
	jne	.label_110
.label_109:
	mov	edx, 1
	mov	edi, r12d
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 8]
	call	elseek
.label_110:
	lea	rdi, [rsp + 0xa0]
	mov	rsi, rbx
	call	xwrite_stdout
	jmp	.label_107
.label_104:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_107:
	mov	eax, r15d
	add	rsp, 0x20a8
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
	#Procedure 0x4023e0

	.globl head_bytes
	.type head_bytes, @function
head_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	rbx, rdx
	mov	r12d, esi
	mov	r15b, 1
	test	rbx, rbx
	je	.label_113
	mov	qword ptr [rsp + 8], rdi
	mov	ebp, 0x2000
	lea	r13, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_114:
	cmp	rbx, rbp
	cmovb	rbp, rbx
	mov	edi, r12d
	mov	rsi, r13
	mov	rdx, rbp
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_113
	cmp	r14, -1
	je	.label_115
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	sub	rbx, r14
	jne	.label_114
	jmp	.label_113
.label_115:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 8]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_113:
	mov	eax, r15d
	add	rsp, 0x2018
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
	#Procedure 0x4024b0

	.globl elide_tail_lines_pipe
	.type elide_tail_lines_pipe, @function
elide_tail_lines_pipe:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbx, rcx
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x14], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	edi, 0x2018
	call	xmalloc
	mov	r14, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0x2000], xmm0
	mov	qword ptr [r14 + 0x2010], 0
	mov	edi, 0x2018
	call	xmalloc
	xor	r13d, r13d
	mov	r12, r14
	mov	qword ptr [rsp + 0x18], rbx
	jmp	.label_134
.label_126:
	mov	edi, 0x2018
	call	xmalloc
	nop	word ptr cs:[rax + rax]
.label_134:
	mov	r15, r14
	mov	r14, rax
	lea	rax, [r14 + 0x2008]
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_122
	nop	word ptr cs:[rax + rax]
.label_128:
	add	rbx, rbp
	mov	rdi, r14
	mov	rsi, rbp
	call	xwrite_stdout
.label_122:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, r14
	call	safe_read
	mov	rbp, rax
	lea	rax, [rbp + 1]
	cmp	rax, 2
	jb	.label_129
	cmp	qword ptr [rsp + 8], 0
	je	.label_128
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [r14 + 0x2000], rbp
	xorps	xmm0, xmm0
	mov	r15, qword ptr [rsp + 0x30]
	movups	xmmword ptr [r15], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	esi, 0
	mov	eax, 0xa
	cmovne	esi, eax
	mov	rdi, r14
	mov	rdx, rbp
	call	memchr
	test	rax, rax
	je	.label_124
	add	rbp, r14
	nop	dword ptr [rax + rax]
.label_132:
	inc	rax
	inc	qword ptr [r15]
	movzx	ecx,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	esi, 0
	mov	ecx, 0xa
	cmovne	esi, ecx
	mov	rdx, rbp
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_132
.label_124:
	add	r13, qword ptr [r14 + 0x2008]
	mov	rdx, qword ptr [r14 + 0x2000]
	mov	r15, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [r15 + 0x2000]
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	ja	.label_133
	add	rdi, r15
	mov	rsi, r14
	call	memcpy
	mov	rax, qword ptr [r14 + 0x2000]
	add	qword ptr [r15 + 0x2000], rax
	mov	rax, qword ptr [r14 + 0x2008]
	add	qword ptr [r15 + 0x2008], rax
	jmp	.label_122
.label_133:
	mov	qword ptr [r15 + 0x2010], r14
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	cmp	rax, qword ptr [rsp + 8]
	jbe	.label_126
	mov	rsi, qword ptr [r12 + 0x2000]
	add	rbx, rsi
	mov	rdi, r12
	call	xwrite_stdout
	sub	r13, qword ptr [r12 + 0x2008]
	mov	rax, r12
	mov	r12, qword ptr [r12 + 0x2010]
	jmp	.label_134
.label_129:
	mov	rdi, r14
	call	free
	cmp	rbp, -1
	je	.label_117
	mov	rax, qword ptr [r15 + 0x2000]
	test	rax, rax
	je	.label_120
	movsx	eax, byte ptr [r15 + rax - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	test	cl, cl
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	je	.label_120
	inc	qword ptr [r15 + 0x2008]
	inc	r13
.label_120:
	mov	r14, qword ptr [rsp + 8]
	lea	rbp, [r12 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r12 + 0x2008]
	mov	r15, r12
	jmp	.label_127
	nop	word ptr [rax + rax]
.label_121:
	mov	rsi, qword ptr [r15 + 0x2000]
	add	rbx, rsi
	mov	rdi, r15
	call	xwrite_stdout
	sub	r13, qword ptr [rbp]
	mov	r15, qword ptr [r15 + 0x2010]
	lea	rbp, [r15 + 0x2008]
	mov	rax, r13
	sub	rax, qword ptr [r15 + 0x2008]
.label_127:
	cmp	rax, r14
	ja	.label_121
	cmp	r13, r14
	jbe	.label_123
	mov	rsi, r15
	je	.label_125
	mov	r14, qword ptr [r15 + 0x2000]
	add	r14, r15
	sub	qword ptr [rsp + 8], r13
	mov	r13d, 0xa
	mov	rax, r15
	nop	word ptr cs:[rax + rax]
.label_135:
	movzx	ecx,  byte ptr [byte ptr [rip + line_end]]
	test	cl, cl
	mov	esi, 0
	cmovne	esi, r13d
	mov	rdx, r14
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	mov	esi, 0
	je	.label_125
	inc	rax
	inc	qword ptr [rbp]
	inc	qword ptr [rsp + 8]
	mov	rsi, rax
	jne	.label_135
.label_125:
	sub	rsi, r15
	add	rbx, rsi
	mov	rdi, r15
	call	xwrite_stdout
.label_123:
	mov	r14, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rsp + 0x18]
	mov	r13b, 1
	jmp	.label_119
.label_117:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r13d, r13d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	r15, qword ptr [rsp + 0x18]
.label_119:
	test	r12, r12
	je	.label_130
	nop	word ptr cs:[rax + rax]
.label_116:
	mov	rbp, qword ptr [r12 + 0x2010]
	mov	rdi, r12
	call	free
	test	rbp, rbp
	mov	r12, rbp
	jne	.label_116
.label_130:
	test	r15, r15
	js	.label_118
	xor	ebp, ebp
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x14]
	mov	rsi, rbx
	mov	rcx, r14
	call	elseek
	test	rax, rax
	js	.label_131
	mov	bpl, r13b
.label_131:
	mov	r13b, bpl
.label_118:
	and	r13b, 1
	mov	eax, r13d
	add	rsp, 0x38
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
	#Procedure 0x402860

	.globl elide_tail_lines_seekable
	.type elide_tail_lines_seekable, @function
elide_tail_lines_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2028
	mov	r13, rdx
	mov	r12d, esi
	mov	rbp, rdi
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
	sub	r8, rbx
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r12d
	mov	qword ptr [rsp + 0x10], r8
	mov	rsi, r8
	mov	qword ptr [rsp], rbp
	mov	rcx, rbp
	call	elseek
	test	rax, rax
	js	.label_137
	lea	r14, [rsp + 0x20]
	mov	edi, r12d
	mov	rsi, r14
	mov	rdx, rbx
	call	safe_read
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_140
	mov	dword ptr [rsp + 0xc], r12d
	test	r13, r13
	mov	r12, r13
	je	.label_143
	test	rbx, rbx
	mov	r12, r13
	je	.label_143
	movsx	eax, byte ptr [rsp + rbx + 0x1f]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	test	cl, cl
	mov	ecx, 0xa
	cmove	ecx, edx
	xor	edx, edx
	cmp	eax, ecx
	setne	dl
	mov	r12, r13
	sub	r12, rdx
.label_143:
	mov	ecx, 0xa
.label_142:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	test	al, al
	mov	ebp, 0
	cmovne	ebp, ecx
	neg	r12
	nop	
.label_145:
	test	rbx, rbx
	je	.label_136
	test	r13, r13
	je	.label_139
	mov	rdi, r14
	mov	esi, ebp
	mov	rdx, rbx
	call	memrchr
	mov	rbx, rax
	test	rbx, rbx
	je	.label_136
	sub	rbx, r14
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_139:
	dec	rbx
.label_144:
	inc	r12
	cmp	r12, 1
	jne	.label_145
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_136:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	rsi, qword ptr [rsp + 0x18]
	mov	r15b, 1
	je	.label_137
	add	rsi, -0x2000
	xor	r15d, r15d
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 0xc]
	mov	edi, ebx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rcx, qword ptr [rsp]
	call	elseek
	test	rax, rax
	js	.label_137
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, r14
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	mov	r15b, 1
	je	.label_137
	neg	r12
	cmp	rbx, -1
	mov	ecx, 0xa
	jne	.label_142
.label_140:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
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
	jmp	.label_137
.label_141:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	sub	rbp, rsi
	mov	r14d, dword ptr [rsp + 0xc]
	jle	.label_138
	xor	r15d, r15d
	xor	edx, edx
	mov	edi, r14d
	mov	rcx, qword ptr [rsp]
	call	elseek
	test	rax, rax
	js	.label_137
	mov	edi, r14d
	mov	rsi, rbp
	call	copy_fd
	test	eax, eax
	je	.label_138
	mov	edi, eax
	mov	rsi, qword ptr [rsp]
	call	diagnose_copy_fd_failure
	xor	r15d, r15d
	jmp	.label_137
.label_138:
	lea	rsi, [rbx + 1]
	lea	rdi, [rsp + 0x20]
	call	xwrite_stdout
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rax + rbx + 1]
	xor	edx, edx
	mov	edi, r14d
	mov	rcx, qword ptr [rsp]
	call	elseek
	test	rax, rax
	setns	r15b
.label_137:
	mov	eax, r15d
	add	rsp, 0x2028
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
	#Procedure 0x402ad0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_146
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_149
.label_146:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_149:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_148
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:label_147
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
	#Procedure 0x402b50

	.globl copy_fd
	.type copy_fd, @function
copy_fd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x2008
	mov	rbx, rsi
	mov	ebp, edi
	test	rbx, rbx
	je	.label_150
	mov	r15d, 0x2000
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_152:
	cmp	rbx, 0x2000
	mov	rdx, rbx
	cmova	rdx, r15
	mov	edi, ebp
	mov	rsi, r14
	call	safe_read
	mov	ecx, 1
	cmp	rax, -1
	je	.label_153
	sub	rbx, rax
	test	rax, rax
	jne	.label_151
	mov	ecx, 2
	test	rbx, rbx
	jne	.label_153
.label_151:
	mov	rdi, r14
	mov	rsi, rax
	call	xwrite_stdout
	test	rbx, rbx
	jne	.label_152
.label_150:
	xor	ecx, ecx
.label_153:
	mov	eax, ecx
	add	rsp, 0x2008
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402be0

	.globl diagnose_copy_fd_failure
	.type diagnose_copy_fd_failure, @function
diagnose_copy_fd_failure:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rsi
	cmp	edi, 2
	je	.label_154
	cmp	edi, 1
	jne	.label_157
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	jmp	.label_156
.label_154:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_155
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
.label_156:
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	pop	rbx
	pop	r14
	pop	rbp
	jmp	error
.label_157:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c70

	.globl elide_tail_bytes_pipe
	.type elide_tail_bytes_pipe, @function
elide_tail_bytes_pipe:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	rbx, rcx
	mov	dword ptr [rsp + 0x1c], esi
	mov	qword ptr [rsp + 0x28], rdi
	cmp	rdx, 0x100000
	mov	qword ptr [rsp + 0x70], rbx
	ja	.label_181
	mov	qword ptr [rsp + 0x20], rdx
	lea	r15, [rdx + 0x2000]
	mov	edi, 2
	mov	rsi, r15
	call	xnmalloc
	mov	qword ptr [rsp + 0x30], rax
	add	rax, r15
	mov	qword ptr [rsp + 0x38], rax
	mov	r12b, 1
	mov	qword ptr [rsp + 8], rbx
	xor	r13d, r13d
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_180:
	movzx	ebx, bl
	mov	rsi, qword ptr [rsp + rbx*8 + 0x30]
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rdx, r15
	call	full_read
	mov	rbp, rax
	cmp	rbp, r15
	mov	eax, 0
	mov	r14, qword ptr [rsp + 0x20]
	jae	.label_182
	call	__errno_location
	mov	r13d, dword ptr [rax]
	test	r13d, r13d
	jne	.label_162
	mov	rax, r14
	sub	rax, rbp
	mov	ecx, 0
	cmovb	rax, rcx
	test	r12b, r12b
	cmovne	rax, rcx
	mov	r13b, 1
.label_182:
	test	r12b, r12b
	jne	.label_168
	mov	rsi, r14
	sub	rsi, rax
	add	qword ptr [rsp + 8], rsi
	mov	rax, rbx
	xor	rax, 1
	mov	rdi, qword ptr [rsp + rax*8 + 0x30]
	add	rdi, 0x2000
	call	xwrite_stdout
.label_168:
	sub	rbp, r14
	jbe	.label_175
	add	qword ptr [rsp + 8], rbp
	mov	rdi, qword ptr [rsp + rbx*8 + 0x30]
	mov	rsi, rbp
	call	xwrite_stdout
.label_175:
	xor	bl, 1
	mov	r14b, 1
	xor	r12d, r12d
	test	r13b, 1
	je	.label_180
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_159
.label_181:
	mov	ecx, edx
	and	ecx, 0x1fff
	mov	eax, 0x2000
	mov	qword ptr [rsp + 0x60], rcx
	sub	rax, rcx
	mov	qword ptr [rsp + 0x68], rax
	add	rdx, rax
	shr	rdx, 0xd
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rdx + 1]
	cmp	rax, 0x10
	mov	ecx, 0x10
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x80], rcx
	mov	qword ptr [rsp + 0x40], rax
	shr	rax, 1
	mov	qword ptr [rsp + 0x78], rax
	xor	edx, edx
	mov	r12d, 1
	mov	qword ptr [rsp + 8], rbx
	mov	r13d, 0
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	nop	
.label_176:
	mov	qword ptr [rsp + 0x58], r12
	cmp	rdx, rbx
	jne	.label_158
	test	rdx, rdx
	mov	rbp, qword ptr [rsp + 0x80]
	mov	rdi, qword ptr [rsp + 0x10]
	je	.label_161
	cmp	rdx, qword ptr [rsp + 0x78]
	lea	rbp, [rdx + rdx]
	cmova	rbp, qword ptr [rsp + 0x40]
.label_161:
	mov	edx, 8
	mov	rsi, rbp
	call	xnrealloc
	mov	r12, rax
	mov	qword ptr [rsp + 0x50], rbp
	jmp	.label_174
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	qword ptr [rsp + 0x50], rdx
	mov	r12, qword ptr [rsp + 0x10]
.label_174:
	test	r14b, 1
	jne	.label_177
	mov	edi, 0x2000
	call	xmalloc
	mov	qword ptr [r12 + rbx*8], rax
	lea	r13, [rbx + 1]
.label_177:
	mov	rsi, qword ptr [r12 + rbx*8]
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x1c]
	call	full_read
	mov	r15, rax
	cmp	r15, 0x1fff
	ja	.label_160
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	al, 1
	mov	qword ptr [rsp + 0x48], rax
	test	ebp, ebp
	jne	.label_165
.label_160:
	cmp	rbx, qword ptr [rsp + 0x20]
	mov	bpl, 1
	je	.label_169
	mov	ebp, r14d
.label_169:
	test	bpl, 1
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x10], r12
	je	.label_171
	add	qword ptr [rsp + 8], r15
	mov	rdi, qword ptr [r12 + rcx*8]
	mov	rsi, r15
	call	xwrite_stdout
	mov	rcx, qword ptr [rsp + 0x58]
.label_171:
	lea	rax, [rcx + 1]
	xor	edx, edx
	div	qword ptr [rsp + 0x40]
	mov	r12, rdx
	mov	rax, qword ptr [rsp + 0x48]
	test	al, 1
	mov	rbx, rcx
	mov	r14b, bpl
	mov	rdx, qword ptr [rsp + 0x50]
	je	.label_176
	mov	r14b, 1
	mov	rax, qword ptr [rsp + 0x68]
	test	rax, rax
	je	.label_183
	test	bpl, 1
	jne	.label_178
	cmp	rcx, qword ptr [rsp + 0x20]
	jne	.label_166
	sub	r15, qword ptr [rsp + 0x60]
	add	qword ptr [rsp + 8], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rax + r12*8]
	mov	r12, rax
	mov	rsi, r15
	call	xwrite_stdout
	jmp	.label_164
.label_162:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r13d
	mov	rdx, rbp
	call	error
	mov	rdi, qword ptr [rsp + 0x30]
	jmp	.label_159
.label_165:
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_108
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x28]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r15
	call	error
	jmp	.label_164
.label_183:
	mov	r12, qword ptr [rsp + 0x10]
	jmp	.label_164
.label_178:
	mov	esi, 0x2000
	sub	rsi, r15
	add	qword ptr [rsp + 8], rax
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rbx + rcx*8]
	add	rdi, r15
	mov	rbp, rax
	sub	rbp, rsi
	jae	.label_173
	mov	rsi, rax
	jmp	.label_179
.label_166:
	mov	r12, qword ptr [rsp + 0x10]
	jmp	.label_164
.label_173:
	call	xwrite_stdout
	mov	rdi, qword ptr [rbx + r12*8]
	mov	rsi, rbp
.label_179:
	call	xwrite_stdout
	mov	r12, rbx
.label_164:
	test	r13, r13
	je	.label_167
	mov	rbx, r12
	nop	word ptr cs:[rax + rax]
.label_170:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 8
	dec	r13
	jne	.label_170
.label_167:
	mov	rdi, r12
.label_159:
	call	free
	cmp	qword ptr [rsp + 0x70], 0
	js	.label_172
	xor	ebx, ebx
	xor	edx, edx
	mov	edi, dword ptr [rsp + 0x1c]
	mov	rsi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x28]
	call	elseek
	test	rax, rax
	js	.label_163
	mov	bl, r14b
.label_163:
	mov	r14b, bl
.label_172:
	and	r14b, 1
	mov	eax, r14d
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
	je	.label_187
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_184
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_184
.label_187:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_188
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_184:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_189
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_186
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_188:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_186:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_58
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

	.globl full_read
	.type full_read, @function
full_read:
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
	je	.label_190
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_192:
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	safe_read
	cmp	rax, -1
	je	.label_190
	test	rax, rax
	je	.label_191
	add	r14, rax
	add	rbx, rax
	sub	r15, rax
	jne	.label_192
	jmp	.label_190
.label_191:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_190:
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
	#Procedure 0x4031c0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_193
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_194:
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
	ja	.label_194
	jmp	.label_196
.label_193:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_195:
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
	ja	.label_195
	mov	byte ptr [rsi], 0x2d
.label_196:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403280

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_197:
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
	ja	.label_197
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_201
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_199
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_198
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_199
	mov	esi, OFFSET FLAT:label_200
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_203
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_203:
	mov	rbx, r14
.label_199:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_201:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_202
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403380
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
	#Procedure 0x4033c0
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
	#Procedure 0x4033d0
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
	#Procedure 0x4033e0

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
	#Procedure 0x403420
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
	#Procedure 0x403440

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_204
	test	rdx, rdx
	je	.label_204
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_204:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403470
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
	#Procedure 0x4034f0

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
.label_296:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_300
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_304]]
.label_598:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_309
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_253
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_599:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_210
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_210
	xor	r14d, r14d
.label_217:
	cmp	r14, r11
	jae	.label_214
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_214:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_217
.label_210:
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
	jmp	.label_224
.label_591:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_224
.label_594:
	mov	al, 1
.label_592:
	mov	r12b, 1
.label_595:
	test	r12b, 1
	mov	cl, 1
	je	.label_239
	mov	ecx, eax
.label_239:
	mov	al, cl
.label_593:
	test	r12b, 1
	jne	.label_243
	test	r11, r11
	je	.label_245
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_245:
	mov	r14d, 1
	jmp	.label_251
.label_243:
	xor	r14d, r14d
.label_251:
	mov	ecx, OFFSET FLAT:label_253
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_224
.label_596:
	test	r12b, 1
	jne	.label_259
	test	r11, r11
	je	.label_279
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_279:
	mov	r14d, 1
	jmp	.label_264
.label_597:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_266
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_224
.label_259:
	xor	r14d, r14d
.label_264:
	mov	eax, OFFSET FLAT:label_266
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_224:
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
	jmp	.label_277
	nop	dword ptr [rax]
.label_261:
	inc	rsi
.label_277:
	cmp	rbp, -1
	je	.label_312
	cmp	rsi, rbp
	jne	.label_271
	jmp	.label_302
	nop	word ptr cs:[rax + rax]
.label_312:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_302
.label_271:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_318
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_205
	cmp	rbp, -1
	jne	.label_205
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
.label_205:
	cmp	rbx, rbp
	jbe	.label_223
.label_318:
	xor	r8d, r8d
.label_252:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_225
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_229]]
.label_511:
	test	rsi, rsi
	jne	.label_220
	jmp	.label_234
	nop	
.label_223:
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
	jne	.label_248
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_252
	jmp	.label_260
.label_248:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_252
.label_515:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_317
	test	rsi, rsi
	jne	.label_268
	cmp	rbp, 1
	je	.label_234
	xor	r13d, r13d
	jmp	.label_211
.label_504:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_275
	cmp	byte ptr [rsp + 7], 0
	jne	.label_215
	cmp	r12d, 2
	jne	.label_276
	mov	eax, r9d
	and	al, 1
	jne	.label_276
	cmp	r14, r11
	jae	.label_278
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_278:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_283
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_283:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_288
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_288:
	add	r14, 3
	mov	r9b, 1
.label_276:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_295
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_295:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_299
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_299
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_299
	cmp	r14, r11
	jae	.label_238
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_238:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_221
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_221:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_211
.label_505:
	mov	bl, 0x62
	jmp	.label_206
.label_506:
	mov	cl, 0x74
	jmp	.label_209
.label_507:
	mov	bl, 0x76
	jmp	.label_206
.label_508:
	mov	bl, 0x66
	jmp	.label_206
.label_509:
	mov	cl, 0x72
	jmp	.label_209
.label_512:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_212
	cmp	byte ptr [rsp + 7], 0
	jne	.label_215
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
	jae	.label_219
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_219:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_230
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_230:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_235
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_235:
	add	r14, 3
	xor	r9d, r9d
.label_212:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_211
.label_513:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_246
	cmp	r12d, 2
	jne	.label_220
	cmp	byte ptr [rsp + 7], 0
	je	.label_220
	jmp	.label_215
.label_514:
	cmp	r12d, 2
	jne	.label_257
	cmp	byte ptr [rsp + 7], 0
	jne	.label_215
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_213
.label_225:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_289
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
.label_207:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_282
	test	r8b, r8b
	je	.label_282
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_211
.label_317:
	test	rsi, rsi
	jne	.label_267
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_267
.label_234:
	mov	dl, 1
.label_510:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_215
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_211:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_305
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_306
	jmp	.label_262
	nop	word ptr cs:[rax + rax]
.label_305:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_262
.label_306:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_313
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_213
	jmp	.label_208
	nop	dword ptr [rax]
.label_262:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_208
	jmp	.label_213
.label_313:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_208
.label_275:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_261
	xor	r15d, r15d
	jmp	.label_220
.label_257:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_209
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_213
.label_209:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_215
.label_206:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_211
	nop	word ptr cs:[rax + rax]
.label_208:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_215
	cmp	r12d, 2
	jne	.label_240
	mov	eax, r9d
	and	al, 1
	jne	.label_240
	cmp	r14, r11
	jae	.label_244
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_244:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_294
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_294:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_255
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_255:
	add	r14, 3
	mov	r9b, 1
.label_240:
	cmp	r14, r11
	jae	.label_258
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_258:
	inc	r14
	jmp	.label_297
.label_289:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_265
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_265:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_307:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_281
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_285
	cmp	rbp, -2
	je	.label_241
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_292
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_249:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_287
	bt	rsi, rdx
	jb	.label_260
.label_287:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_249
.label_292:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_315
	xor	r13d, r13d
.label_315:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_307
	jmp	.label_207
.label_299:
	xor	r13d, r13d
	jmp	.label_211
.label_267:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_211
.label_246:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_220
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_220
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_220
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_316
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_228
	cmp	byte ptr [rsp + 7], 0
	jne	.label_215
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_236
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_236:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_293
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_293:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_250
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_250:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_254
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_254:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_211
.label_220:
	xor	eax, eax
.label_268:
	xor	r13d, r13d
	jmp	.label_211
.label_282:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_263
	nop	word ptr cs:[rax + rax]
.label_216:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_263:
	test	r8b, r8b
	je	.label_269
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_270
	cmp	r14, r11
	jae	.label_286
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_286:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_270
	nop	dword ptr [rax]
.label_269:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_260
	cmp	r12d, 2
	jne	.label_280
	mov	eax, r9d
	and	al, 1
	jne	.label_280
	cmp	r14, r11
	jae	.label_284
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_284:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_231
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_231:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_218
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_218:
	add	r14, 3
	mov	r9b, 1
.label_280:
	cmp	r14, r11
	jae	.label_272
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_272:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_310
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_310:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_308
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_308:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_270:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_213
	test	r9b, 1
	je	.label_222
	mov	ebx, eax
	and	bl, 1
	jne	.label_222
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_319
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_319:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_298
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_298:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_222:
	cmp	r14, r11
	jae	.label_216
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_216
	nop	word ptr cs:[rax + rax]
.label_213:
	test	r9b, 1
	je	.label_226
	and	al, 1
	jne	.label_226
	cmp	r14, r11
	jae	.label_227
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_227:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_233
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	add	r14, 2
	xor	r9d, r9d
.label_226:
	mov	ebx, r15d
.label_297:
	cmp	r14, r11
	jae	.label_237
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_237:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_261
.label_285:
	xor	r13d, r13d
.label_281:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_207
.label_241:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_256
	mov	rsi, qword ptr [rsp + 0x50]
.label_274:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_232
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_274
	xor	r13d, r13d
	jmp	.label_207
.label_256:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_207
.label_232:
	xor	r13d, r13d
	jmp	.label_207
.label_316:
	xor	r13d, r13d
	jmp	.label_211
.label_228:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_211
	nop	dword ptr [rax + rax]
.label_302:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_273
	or	dl, al
	je	.label_260
.label_273:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_290
	or	dl, al
	jne	.label_290
	test	r10b, 1
	jne	.label_291
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_290
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_296
.label_290:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_301
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_303
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_303
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_314:
	cmp	r14, r11
	jae	.label_311
	mov	byte ptr [rcx + r14], al
.label_311:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_314
	jmp	.label_303
.label_215:
	mov	qword ptr [rsp + 0x20], rbp
.label_260:
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
.label_242:
	mov	r14, rax
.label_247:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_291:
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
	jmp	.label_242
.label_301:
	mov	rcx, qword ptr [rsp + 8]
.label_303:
	cmp	r14, r11
	jae	.label_247
	mov	byte ptr [rcx + r14], 0
	jmp	.label_247
.label_300:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4042b0
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
	#Procedure 0x4042c0

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
	je	.label_320
	mov	qword ptr [rax], rbx
.label_320:
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
	#Procedure 0x4043b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_321
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_323:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_323
.label_321:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_325
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_324]], OFFSET FLAT:slot0
.label_325:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_322
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_322:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404450

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404460

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
	js	.label_326
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_329
	cmp	r12d, 0x7fffffff
	je	.label_331
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
	jne	.label_327
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_327:
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
.label_329:
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
	jbe	.label_332
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_328
.label_332:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_330
	mov	rdi, r14
	call	free
.label_330:
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
.label_328:
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
.label_326:
	call	abort
.label_331:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404620

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404630
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
	#Procedure 0x404640
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
	#Procedure 0x404650

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
	#Procedure 0x404690

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
	je	.label_333
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
.label_333:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4046f0

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
	#Procedure 0x404730

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
	#Procedure 0x404750
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
	#Procedure 0x404770

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
	mov	rcx,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x4047e0

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
	#Procedure 0x4047f0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404800
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404810

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
	#Procedure 0x404860

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404870

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
	mov	rax,  qword ptr [word ptr [rip + label_334]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_336]]
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
	#Procedure 0x4048e0
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
	#Procedure 0x404900
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
	#Procedure 0x404920

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404930
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
	#Procedure 0x404940

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950

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
	#Procedure 0x404960

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
	jne	.label_344
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
	je	.label_341
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_337
	mov	eax, OFFSET FLAT:label_338
	jmp	.label_339
.label_341:
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
	je	.label_340
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_342
	mov	eax, OFFSET FLAT:label_343
	jmp	.label_339
.label_340:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_266
	mov	eax, OFFSET FLAT:label_253
.label_339:
	cmove	rax, rcx
.label_344:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404a20

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
	je	.label_346
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_347
	jmp	.label_345
.label_346:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_345
.label_347:
	mov	eax, 1
	test	bpl, bpl
	je	.label_345
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
.label_345:
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
	#Procedure 0x404aa0

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
	je	.label_350
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_348
	jmp	.label_349
.label_350:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_349
.label_348:
	mov	eax, 1
	test	bpl, bpl
	je	.label_349
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
.label_349:
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
	#Procedure 0x404b30

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
	je	.label_351
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_353
	jmp	.label_352
.label_351:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_352
.label_353:
	mov	eax, 1
	test	bpl, bpl
	je	.label_352
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
.label_352:
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
	#Procedure 0x404bb0

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
	je	.label_356
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_355
	jmp	.label_354
.label_356:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_354
.label_355:
	mov	eax, 1
	test	bpl, bpl
	je	.label_354
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
.label_354:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c20

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
	je	.label_359
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_357
	jmp	.label_358
.label_359:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_358
.label_357:
	mov	eax, 1
	test	bpl, bpl
	je	.label_358
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_358:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c80

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
	je	.label_360
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_362
	jmp	.label_361
.label_360:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_361
.label_362:
	mov	eax, 1
	test	bpl, bpl
	je	.label_361
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_361:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404cd0

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
	je	.label_365
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_364
	jmp	.label_363
.label_365:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_363
.label_364:
	mov	eax, 1
	test	bpl, bpl
	je	.label_363
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_363:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d20

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_368
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_367
	jmp	.label_366
.label_368:
	mov	eax, 1
	test	cl, cl
	je	.label_366
.label_367:
	xor	eax, eax
.label_366:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d50

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
.label_370:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_369
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_370
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
	jb	.label_369
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_370
.label_369:
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
	#Procedure 0x404de0

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
	je	.label_383
	mov	edx, OFFSET FLAT:label_374
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_380
.label_383:
	mov	edx, OFFSET FLAT:label_381
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_385
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
	mov	esi, OFFSET FLAT:label_382
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_386
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_387]]
.label_557:
	add	rsp, 8
	jmp	.label_373
.label_386:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_377
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
	jmp	.label_373
.label_558:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_372
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
.label_559:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_378
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
.label_560:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_375
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
.label_561:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_389
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
	jmp	.label_373
.label_562:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_388
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
	jmp	.label_373
.label_563:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_371
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
	jmp	.label_373
.label_564:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_376
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
	jmp	.label_373
.label_566:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_379
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
	jmp	.label_373
.label_565:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_384
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
.label_373:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_390:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_390
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405170

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_392:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_391
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_393
	nop	dword ptr [rax]
.label_391:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_393:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_394
	inc	r9
	cmp	r9, 0xa
	jb	.label_392
.label_394:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4051d0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_395
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_395:
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
	#Procedure 0x405260
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_396
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_397
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_399
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_24
	mov	ecx, OFFSET FLAT:label_25
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_398
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_400
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_400:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405310

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_401
	test	rax, rax
	je	.label_402
.label_401:
	pop	rbx
	ret	
.label_402:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405330

	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:
	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_403
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_403:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405360

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_404
	test	rbx, rbx
	jne	.label_404
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_404:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_406
	test	rax, rax
	je	.label_405
.label_406:
	pop	rbx
	ret	
.label_405:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405390

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_407
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_410
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_408
.label_407:
	test	rcx, rcx
	jne	.label_411
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_411:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_409
.label_408:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_410:
	call	xalloc_die
.label_409:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405420
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430
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
	#Procedure 0x405460
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_412
	call	rpl_calloc
	test	rax, rax
	je	.label_412
	pop	rcx
	ret	
.label_412:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405490

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
	#Procedure 0x4054c0
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
	#Procedure 0x4054e0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_413
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_185
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405510
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405530

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
	je	.label_417
	cmp	eax, 1
	je	.label_419
	test	eax, eax
	jne	.label_414
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_415
	cmp	rbx, r15
	jbe	.label_416
.label_415:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_418
	mov	dword ptr [rax], 0x4b
	jmp	.label_414
.label_417:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_414
.label_419:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_414
.label_418:
	mov	dword ptr [rax], 0x22
.label_414:
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
	mov	edx, OFFSET FLAT:label_58
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_416:
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
	#Procedure 0x405600

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
	#Procedure 0x405630

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
	jae	.label_427
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_420:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_420
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_422
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_428
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_431
	cmp	eax, 0x22
	jne	.label_422
	mov	r12d, 1
.label_431:
	test	rbp, rbp
	jne	.label_437
	jmp	.label_425
.label_428:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_422
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_422
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_422
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_437:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_425
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_429
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_430
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_430
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_424
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_421
	cmp	ecx, 0x44
	je	.label_421
	cmp	ecx, 0x69
	jne	.label_424
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_424
.label_421:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_424
.label_430:
	mov	rsi, r14
.label_424:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_429
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_432]]
.label_538:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_423
.label_429:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_436
.label_539:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_423
.label_540:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_423
.label_542:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_423
.label_536:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_426
.label_537:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_423
.label_541:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_423
.label_543:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_423
.label_544:
	lea	rdi, [rsp]
	mov	edx, 7
.label_423:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_426:
	mov	rsi, r14
.label_546:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_425:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_436:
	mov	r15d, r12d
.label_422:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_545:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_426
.label_547:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_426
.label_427:
	mov	edi, OFFSET FLAT:label_433
	mov	esi, OFFSET FLAT:label_434
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_435
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

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
	#Procedure 0x405910

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
	je	.label_438
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_439:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_439
.label_438:
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
	#Procedure 0x405950

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_440
	test	rsi, rsi
	mov	ecx, 1
	je	.label_441
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_441
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_440:
	mov	ecx, 1
.label_441:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4059a0

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
	je	.label_442
	cmp	r15, -2
	jb	.label_442
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_442
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_442:
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
	#Procedure 0x405a00
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a10
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a20

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_443
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_443
.label_444:
	ret	
.label_443:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_444
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_445
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_445:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a80
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a90
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
	#Procedure 0x405aa0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_446
.label_447:
	ret	
.label_446:
	cmp	edi, 0x7f
	je	.label_447
	xor	eax, eax
	jmp	.label_447
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ac0
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
	#Procedure 0x405ad0
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
	#Procedure 0x405ae0
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
	#Procedure 0x405af0
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
	#Procedure 0x405b00
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_448
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_449]]
.label_450:
	ret	
.label_448:
	xor	eax, eax
	jmp	.label_450
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b20
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_451
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_451:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b40

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
	#Procedure 0x405b50
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_452
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_452:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b70
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
	#Procedure 0x405b80
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
	#Procedure 0x405b90

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
	je	.label_454
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_453
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_453
.label_454:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_453
	test	cl, cl
	jne	.label_453
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_453:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c00

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_456
	cmp	byte ptr [rax], 0x43
	jne	.label_458
	cmp	byte ptr [rax + 1], 0
	je	.label_455
.label_458:
	mov	esi, OFFSET FLAT:label_457
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_456
.label_455:
	xor	ebx, ebx
.label_456:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c40

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_34
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_459
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_460
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_462
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_460
.label_462:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_460
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_461
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_461:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_460:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_463
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_463
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_463:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d20

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_464
	ret	
.label_464:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

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
	jne	.label_465
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_465
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_466
.label_465:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_466:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_467
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_467:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405db0

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
	.section .text
	.align	16
	#Procedure 0x405e80

	.globl fstat
	.type fstat, @function
fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
