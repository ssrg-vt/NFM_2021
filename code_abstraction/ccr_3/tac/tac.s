	.section	.text
	.align	32
	#Procedure 0x401ba0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx, qword ptr [rip + program_name]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_10
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_12
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
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx, qword ptr [rip + stderr]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
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
	.align	32
	#Procedure 0x401cb0

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ce0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401d10

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
	mov	edi, OFFSET FLAT:label_18
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
	mov	ebx, OFFSET FLAT:label_18
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_28
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
	je	.label_19
	mov	esi, OFFSET FLAT:label_20
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_19
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_27
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	call	fputs_unlocked
.label_19:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_29
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:label_18
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_22
	mov	ecx, OFFSET FLAT:label_18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_24
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:label_30
	mov	ecx, OFFSET FLAT:label_31
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
	.align	32
	#Procedure 0x401e30

	.globl main
	.type main, @function
main:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	rbx, rsi
	mov	r14d, edi
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_31
	call	setlocale
	mov	edi, OFFSET FLAT:label_51
	mov	esi, OFFSET FLAT:label_52
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_51
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rip + separator], OFFSET FLAT:label_61
	mov	qword ptr [rip + sentinel_length],  1
	mov	byte ptr [rip + separator_ends_record],  1
	jmp	.label_56
.label_48:
	mov	rax, qword ptr [rip + optarg]
	mov	qword ptr [rip + separator],  rax
	nop	word ptr cs:[rax + rax]
.label_56:
	mov	edx, OFFSET FLAT:label_39
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_46
	cmp	eax, 0x73
	je	.label_48
	cmp	eax, 0x72
	je	.label_50
	cmp	eax, 0x62
	jne	.label_53
	mov	byte ptr [rip + separator_ends_record],  0
	jmp	.label_56
.label_50:
	mov	qword ptr [rip + sentinel_length],  0
	jmp	.label_56
.label_46:
	cmp	eax, -1
	jne	.label_59
	mov	rdi, qword ptr [rip + separator]
	mov	cl, byte ptr [rdi]
	cmp	qword ptr [rip + sentinel_length],  0
	je	.label_62
	mov	eax, 1
	test	cl, cl
	je	.label_35
	call	strlen
.label_35:
	mov	qword ptr [rip + sentinel_length],  rax
	mov	qword ptr [rip + match_length],  rax
	jmp	.label_38
.label_62:
	test	cl, cl
	je	.label_40
	xorps	xmm0, xmm0
	movups	xmmword ptr [rip + compiled_separator],  xmm0
	mov	qword ptr [rip + label_43], OFFSET FLAT:compiled_separator_fastmap
	mov	qword ptr [rip + label_44],  0
	mov	rbp, qword ptr [rip + separator]
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:compiled_separator
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_60
	mov	rax, qword ptr [rip + sentinel_length]
.label_38:
	mov	qword ptr [rip + read_size],  0x2000
	mov	ecx, 0x2001
	cmp	rax, 0x1000
	jb	.label_33
	mov	rax, qword ptr [rip + sentinel_length]
	mov	edx, 0x2000
	movabs	rsi, 0x7ffffffffffffffe
	nop	dword ptr [rax + rax]
.label_42:
	test	rdx, rdx
	js	.label_45
	lea	rcx, [rdx + rdx]
	mov	qword ptr [rip + read_size],  rcx
	and	rdx, rsi
	cmp	rax, rdx
	mov	rdx, rcx
	jae	.label_42
	or	rcx, 1
.label_33:
	add	rcx, rax
	lea	rdi, [rcx + rcx]
	mov	qword ptr [rip + G_buffer_size],  rdi
	cmp	rcx, rdi
	jae	.label_45
	cmp	qword ptr [rip + read_size],  rcx
	jae	.label_45
	call	xmalloc
	mov	qword ptr [rip + G_buffer],  rax
	mov	rdx, qword ptr [rip + sentinel_length]
	test	rdx, rdx
	je	.label_34
	mov	rsi, qword ptr [rip + separator]
	inc	rdx
	mov	rdi, rax
	call	memcpy
	mov	rax, qword ptr [rip + G_buffer]
	add	rax, qword ptr [rip + sentinel_length]
	jmp	.label_41
.label_34:
	inc	rax
.label_41:
	mov	qword ptr [rip + G_buffer],  rax
	movsxd	rax, dword ptr [rip + optind]
	cmp	eax, r14d
	lea	rax, [rbx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	edi, 1
	xor	esi, esi
	call	xset_binary_mode
	mov	rdi, qword ptr [rbp]
	mov	bl, 1
	test	rdi, rdi
	je	.label_36
	add	rbp, 8
	mov	bl, 1
	nop	
.label_32:
	call	tac_file
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	jne	.label_32
.label_36:
	xor	edi, edi
	xor	esi, esi
	call	output
	mov	al, byte ptr [rip + have_read_stdin]
	test	al, al
	je	.label_37
	xor	edi, edi
	call	close
	test	eax, eax
	jns	.label_37
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_47
	xor	eax, eax
	call	error
.label_37:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_45:
	call	xalloc_die
.label_59:
	cmp	eax, 0xffffff7d
	je	.label_55
	cmp	eax, 0xffffff7e
	jne	.label_53
	xor	edi, edi
	call	usage
.label_55:
	mov	rdi, qword ptr [rip + stdout]
	mov	rcx, qword ptr [rip + Version]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:label_18
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_57
	mov	r9d, OFFSET FLAT:label_58
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_53:
	mov	edi, 1
	call	usage
.label_40:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_49
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_60:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	call	error
	.section	.text
	.align	32
	#Procedure 0x402170

	.globl tac_file
	.type tac_file, @function
tac_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	cmp	byte ptr [r14], 0x2d
	jne	.label_72
	cmp	byte ptr [r14 + 1], 0
	je	.label_63
.label_72:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_66
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_69
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
	jmp	.label_67
.label_63:
	mov	byte ptr [rip + have_read_stdin],  1
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_68
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	xor	esi, esi
	call	xset_binary_mode
	mov	bpl, 1
.label_66:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebx
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_65
	mov	edi, ebx
	call	isatty
	test	eax, eax
	je	.label_70
.label_65:
	mov	edi, ebx
	mov	rsi, r14
	call	tac_nonseekable
	jmp	.label_73
.label_70:
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r15
	call	tac_seekable
.label_73:
	mov	r15b, al
	test	bpl, bpl
	jne	.label_64
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_64
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_64:
	test	r15b, r15b
	setne	bl
.label_67:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl output
	.type output, @function
output:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	mov	rdx, qword ptr [rip + output.bytes_in_buffer]
	mov	ebx, 0x2000
	test	r12, r12
	je	.label_76
	sub	r14, r12
	sub	rbx, rdx
	mov	edi, OFFSET FLAT:output.buffer
	add	rdi, qword ptr [rip + output.bytes_in_buffer]
	cmp	r14, rbx
	jae	.label_78
	mov	r15, rdi
	jmp	.label_75
.label_76:
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	call	fwrite_unlocked
	xor	r14d, r14d
	jmp	.label_74
.label_78:
	mov	r15d, OFFSET FLAT:output.buffer
	nop	dword ptr [rax]
.label_77:
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	sub	r14, rbx
	add	r12, rbx
	mov	rcx, qword ptr [rip + stdout]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [rip + output.bytes_in_buffer],  0
	cmp	r14, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	ja	.label_77
.label_75:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	add	r14, qword ptr [rip + output.bytes_in_buffer]
.label_74:
	mov	qword ptr [rip + output.bytes_in_buffer],  r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402390

	.globl tac_nonseekable
	.type tac_nonseekable, @function
tac_nonseekable:
	push	rbx
	sub	rsp, 0x10
	mov	rax, rsi
	mov	ecx, edi
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	mov	edx, ecx
	mov	rcx, rax
	call	copy_to_temp
	mov	rbx, rax
	test	rbx, rbx
	js	.label_80
	mov	rdi, qword ptr [rsp + 8]
	call	fileno
	mov	rsi, qword ptr [rsp]
	mov	edi, eax
	mov	rdx, rbx
	call	tac_seekable
	jmp	.label_79
.label_80:
	xor	eax, eax
.label_79:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4023e0

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	r12, rsi
	mov	r14d, edi
	mov	rax, qword ptr [rip + separator]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, byte ptr [rax]
	mov	rax, qword ptr [rip + match_length]
	mov	qword ptr [rsp + 0x18], rax
	xor	edx, edx
	mov	rax, r13
	div	qword ptr [rip + read_size]
	test	rdx, rdx
	mov	dword ptr [rsp], r14d
	je	.label_100
	sub	r13, rdx
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	jns	.label_100
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14d, dword ptr [rsp]
	mov	rdx, rbx
	call	error
.label_100:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, r14d
	call	safe_read
	mov	rbx, rax
	test	r13, r13
	je	.label_88
	nop	
.label_92:
	test	rbx, rbx
	jne	.label_88
	mov	rsi, qword ptr [rip + read_size]
	neg	rsi
	mov	edx, 1
	mov	edi, r14d
	call	lseek
	test	rax, rax
	jns	.label_101
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	r14d, dword ptr [rsp]
	mov	rdx, rbx
	call	error
.label_101:
	mov	rbp, qword ptr [rip + read_size]
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, r14d
	mov	rdx, rbp
	call	safe_read
	mov	rbx, rax
	sub	r13, rbp
	jne	.label_92
.label_88:
	mov	qword ptr [rsp + 0x10], r12
	mov	rdx, qword ptr [rip + read_size]
	cmp	rbx, rdx
	jne	.label_98
	nop	dword ptr [rax]
.label_109:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	edi, r14d
	call	safe_read
	mov	r12, rax
	cmp	r12, -1
	je	.label_106
	test	r12, r12
	je	.label_98
	add	r13, r12
	mov	rdx, qword ptr [rip + read_size]
	cmp	r12, rdx
	mov	rbx, r12
	je	.label_109
	jmp	.label_111
.label_98:
	cmp	rbx, -1
	mov	r12, rbx
	je	.label_106
.label_111:
	add	r12, qword ptr [rip + G_buffer]
	xor	eax, eax
	cmp	qword ptr [rip + sentinel_length],  0
	je	.label_115
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x18]
	add	rbx, r12
	mov	al, 1
	mov	dword ptr [rsp + 4], eax
	jmp	.label_84
.label_115:
	mov	cl, 1
	mov	dword ptr [rsp + 4], ecx
	mov	rbx, r12
	jmp	.label_95
.label_106:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_97:
	mov	eax, ebx
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_84:
	mov	rax, qword ptr [rip + sentinel_length]
.label_95:
	mov	qword ptr [rsp + 8], r13
	mov	rcx, qword ptr [rsp + 0x20]
	lea	r13, [rcx + 1]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rbp, [rcx - 1]
	nop	dword ptr [rax]
.label_107:
	test	rax, rax
	je	.label_93
	nop	word ptr cs:[rax + rax]
.label_99:
	dec	rbx
	cmp	byte ptr [rbx], r15b
	jne	.label_99
	test	rbp, rbp
	je	.label_87
	lea	rdi, [rbx + 1]
	mov	rsi, r13
	mov	rdx, rbp
	call	strncmp
	test	eax, eax
	jne	.label_99
	jmp	.label_87
	nop	dword ptr [rax]
.label_93:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rax, rbx
	sub	rax, rsi
	sub	rbx, rsi
	js	.label_114
	test	rbx, rbx
	je	.label_91
	mov	r8d, 1
	sub	r8, rax
	mov	rcx, rbx
	dec	rcx
	mov	edi, OFFSET FLAT:compiled_separator
	mov	r9d, OFFSET FLAT:regs
	mov	rdx, rbx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_91
	cmp	rax, -2
	je	.label_96
	mov	rax, qword ptr [rip + label_85]
	mov	rax, qword ptr [rax]
	mov	rbx, qword ptr [rip + G_buffer]
	add	rbx, rax
	mov	rcx, qword ptr [rip + label_86]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	mov	qword ptr [rip + match_length],  rcx
	jmp	.label_87
	nop	word ptr [rax + rax]
.label_91:
	mov	rbx, qword ptr [rip + G_buffer]
	dec	rbx
.label_87:
	mov	rdi, qword ptr [rip + G_buffer]
	cmp	rbx, rdi
	jb	.label_108
	cmp	byte ptr [rip + separator_ends_record],  1
	jne	.label_83
	mov	r14, qword ptr [rip + match_length]
	add	r14, rbx
	mov	eax, dword ptr [rsp + 4]
	test	al, 1
	je	.label_81
	cmp	r14, r12
	je	.label_89
.label_81:
	mov	rdi, r14
	mov	rsi, r12
	call	output
.label_89:
	mov	dword ptr [rsp + 4], 0
	mov	r12, r14
	mov	r14d, dword ptr [rsp]
	jmp	.label_110
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	rdi, rbx
	mov	rsi, r12
	call	output
	mov	r12, rbx
.label_110:
	cmp	qword ptr [rip + sentinel_length],  0
	mov	eax, 0
	je	.label_107
	mov	eax, 1
	sub	rax, qword ptr [rip + match_length]
	add	rbx, rax
	mov	r13, qword ptr [rsp + 8]
	jmp	.label_84
.label_108:
	mov	rbp, qword ptr [rsp + 8]
	test	rbp, rbp
	je	.label_104
	sub	r12, rdi
	mov	rax, qword ptr [rip + read_size]
	cmp	r12, rax
	jbe	.label_82
	mov	rcx, qword ptr [rip + sentinel_length]
	test	rcx, rcx
	mov	ebx, 1
	cmovne	rbx, rcx
	mov	rcx, qword ptr [rip + G_buffer_size]
	lea	rdx, [rax + rax]
	mov	qword ptr [rip + read_size],  rdx
	lea	rsi, [rax*4 + 2]
	add	rsi, qword ptr [rip + sentinel_length]
	mov	qword ptr [rip + G_buffer_size],  rsi
	cmp	rsi, rcx
	jb	.label_90
	mov	rdi, qword ptr [rip + G_buffer]
	sub	rdi, rbx
	call	xrealloc
	add	rax, rbx
	mov	qword ptr [rip + G_buffer],  rax
.label_82:
	mov	r13, rbp
	sub	r13, qword ptr [rip + read_size]
	jae	.label_112
	mov	qword ptr [rip + read_size],  rbp
	xor	r13d, r13d
.label_112:
	xor	edx, edx
	mov	edi, r14d
	mov	rsi, r13
	call	lseek
	test	rax, rax
	jns	.label_113
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_94
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_113:
	mov	rbp, qword ptr [rip + G_buffer]
	mov	rax, qword ptr [rip + read_size]
	mov	qword ptr [rsp + 8], rax
	lea	rbx, [rbp + rax]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r12
	call	memmove
	add	r12, rbx
	cmp	qword ptr [rip + sentinel_length],  0
	cmove	rbx, r12
	mov	r14d, dword ptr [rsp]
	mov	edi, r14d
	mov	rsi, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	safe_read
	cmp	rax, qword ptr [rip + read_size]
	jne	.label_106
	jmp	.label_84
.label_104:
	mov	rsi, r12
	call	output
	mov	bl, 1
	jmp	.label_97
.label_114:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_102
	jmp	.label_103
.label_96:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_105
.label_103:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_90:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl copy_to_temp
	.type copy_to_temp, @function
copy_to_temp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rcx
	mov	ebp, edx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rsp + 8]
	lea	rsi, [rsp]
	call	temp_stream
	mov	r15, -1
	test	al, al
	je	.label_118
	mov	qword ptr [rsp + 0x10], rbx
	mov	rbx, qword ptr [rsp + 8]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_123:
	mov	rsi, qword ptr [rip + G_buffer]
	mov	rdx, qword ptr [rip + read_size]
	mov	edi, ebp
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_119
	cmp	r14, -1
	je	.label_121
	mov	rdi, qword ptr [rip + G_buffer]
	mov	esi, 1
	mov	rdx, r14
	mov	rcx, rbx
	call	fwrite_unlocked
	add	r15, r14
	cmp	rax, r14
	je	.label_123
	jmp	.label_116
.label_119:
	mov	rdi, qword ptr [rsp + 8]
	call	fflush_unlocked
	test	eax, eax
	je	.label_117
.label_116:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_120
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [rsp]
	xor	edi, edi
	mov	esi, 3
	jmp	.label_122
.label_121:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_71
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x10]
.label_122:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, -1
.label_118:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_117:
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r13], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r12], rax
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a40

	.globl temp_stream
	.type temp_stream, @function
temp_stream:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	cmp	qword ptr [rip + temp_stream.tempfile],  0
	je	.label_124
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	clearerr_unlocked
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	xor	esi, esi
	xor	edx, edx
	call	rpl_fseeko
	test	eax, eax
	js	.label_138
	mov	rdi, qword ptr [rip + temp_stream.tmp_fp]
	call	fileno
	xor	esi, esi
	mov	edi, eax
	call	ftruncate
	test	eax, eax
	jns	.label_128
.label_138:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_131
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_126
.label_124:
	mov	edi, OFFSET FLAT:label_132
	call	getenv
	test	rax, rax
	mov	ebp, OFFSET FLAT:label_135
	cmovne	rbp, rax
	mov	esi, OFFSET FLAT:label_136
	xor	edx, edx
	mov	rdi, rbp
	call	mfile_name_concat
	mov	qword ptr [rip + temp_stream.tempfile],  rax
	test	rbp, rbp
	je	.label_125
	mov	rdi, rax
	call	mkstemp_safer
	mov	r15d, eax
	test	r15d, r15d
	js	.label_130
	mov	esi, OFFSET FLAT:label_133
	mov	edi, r15d
	call	fdopen
	mov	qword ptr [rip + temp_stream.tmp_fp],  rax
	test	rax, rax
	je	.label_137
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	record_or_unlink_tempfile
.label_128:
	mov	rax, qword ptr [rip + temp_stream.tmp_fp]
	mov	qword ptr [rbx], rax
	mov	rax, qword ptr [rip + temp_stream.tempfile]
	mov	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_126
.label_125:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_126
.label_130:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_129
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
	mov	rdx, rbx
	call	error
	jmp	.label_139
.label_137:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_127
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi, qword ptr [rip + temp_stream.tempfile]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	edi, r15d
	call	close
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	unlink
.label_139:
	mov	rdi, qword ptr [rip + temp_stream.tempfile]
	call	free
	mov	qword ptr [rip + temp_stream.tempfile],  0
	xor	ebx, ebx
.label_126:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402c40

	.globl record_or_unlink_tempfile
	.type record_or_unlink_tempfile, @function
record_or_unlink_tempfile:
	jmp	unlink
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c50
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [rip + file_name],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c60
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [rip + ignore_EPIPE],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c70

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi, qword ptr [rip + stdout]
	call	close_stream
	test	eax, eax
	je	.label_140
	cmp	byte ptr [rip + ignore_EPIPE],  0
	je	.label_142
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_142
.label_140:
	mov	rdi, qword ptr [rip + stderr]
	call	close_stream
	test	eax, eax
	jne	.label_141
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_142:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_144
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx, qword ptr [rip + file_name]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_143
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_141:
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
.label_143:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_145
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi, dword ptr [rip + exit_failure]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d30

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
	je	.label_150
	cmp	byte ptr [r13 + rbx - 1], 0x2f
	je	.label_149
	cmp	byte ptr [r15], 0x2f
	je	.label_149
	mov	r12b, 0x2f
	jmp	.label_146
.label_150:
	cmp	byte ptr [r15], 0x2f
	mov	r12b, 0x2e
	je	.label_146
.label_149:
	xor	r12d, r12d
.label_146:
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
	je	.label_148
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_147
	mov	qword ptr [rax], rbp
.label_147:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_148:
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
	.align	32
	#Procedure 0x402e10

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_154
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_153
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_151
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_153
	mov	esi, OFFSET FLAT:label_156
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_152
	add	r14, 3
	mov	qword ptr [rip + __progname],  r14
.label_152:
	mov	rbx, r14
.label_153:
	mov	qword ptr [rip + program_name],  rbx
	mov	qword ptr [rip + __progname_full],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_154:
	mov	rcx, qword ptr [rip + stderr]
	mov	edi, OFFSET FLAT:label_155
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0
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
	.align	32
	#Procedure 0x402f00
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
	.align	32
	#Procedure 0x402f10
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
	.align	32
	#Procedure 0x402f20

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
	.align	32
	#Procedure 0x402f60
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
	.align	32
	#Procedure 0x402f80

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_157
	test	rdx, rdx
	je	.label_157
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_157:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fb0
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
	.align	32
	#Procedure 0x403030

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
.label_207:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_210
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [(rcx * 8) + label_214]
.label_1802:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_224
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_228
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_1803:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_236
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_236
	xor	r14d, r14d
.label_247:
	cmp	r14, r11
	jae	.label_244
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_244:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_247
.label_236:
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
	jmp	.label_172
.label_1795:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_172
.label_1798:
	mov	al, 1
.label_1796:
	mov	r12b, 1
.label_1799:
	test	r12b, 1
	mov	cl, 1
	je	.label_259
	mov	ecx, eax
.label_259:
	mov	al, cl
.label_1797:
	test	r12b, 1
	jne	.label_223
	test	r11, r11
	je	.label_263
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_263:
	mov	r14d, 1
	jmp	.label_267
.label_223:
	xor	r14d, r14d
.label_267:
	mov	ecx, OFFSET FLAT:label_228
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_172
.label_1800:
	test	r12b, 1
	jne	.label_162
	test	r11, r11
	je	.label_164
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_164:
	mov	r14d, 1
	jmp	.label_215
.label_1801:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_171
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_172
.label_162:
	xor	r14d, r14d
.label_215:
	mov	eax, OFFSET FLAT:label_171
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_172:
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
	jmp	.label_225
	nop	dword ptr [rax]
.label_218:
	inc	rsi
.label_225:
	cmp	rbp, -1
	je	.label_227
	cmp	rsi, rbp
	jne	.label_230
	jmp	.label_232
	nop	word ptr cs:[rax + rax]
.label_227:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_232
.label_230:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_238
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_241
	cmp	rbp, -1
	jne	.label_241
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
.label_241:
	cmp	rbx, rbp
	jbe	.label_249
.label_238:
	xor	r8d, r8d
.label_196:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_250
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [(r15 * 8) + label_253]
.label_1777:
	test	rsi, rsi
	jne	.label_186
	jmp	.label_179
	nop	
.label_249:
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
	jne	.label_265
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_196
	jmp	.label_163
.label_265:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_196
.label_1781:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_174
	test	rsi, rsi
	jne	.label_176
	cmp	rbp, 1
	je	.label_179
	xor	r13d, r13d
	jmp	.label_165
.label_1770:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_183
	cmp	byte ptr [rsp + 7], 0
	jne	.label_158
	cmp	r12d, 2
	jne	.label_185
	mov	eax, r9d
	and	al, 1
	jne	.label_185
	cmp	r14, r11
	jae	.label_188
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_188:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_192
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_192:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_200
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	add	r14, 3
	mov	r9b, 1
.label_185:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_206
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_206:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_209
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_209
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_209
	cmp	r14, r11
	jae	.label_160
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_160:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_254
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_254:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_165
.label_1771:
	mov	bl, 0x62
	jmp	.label_235
.label_1772:
	mov	cl, 0x74
	jmp	.label_213
.label_1773:
	mov	bl, 0x76
	jmp	.label_235
.label_1774:
	mov	bl, 0x66
	jmp	.label_235
.label_1775:
	mov	cl, 0x72
	jmp	.label_213
.label_1778:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_243
	cmp	byte ptr [rsp + 7], 0
	jne	.label_158
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
	jae	.label_248
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_248:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_255
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_255:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_256
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_256:
	add	r14, 3
	xor	r9d, r9d
.label_243:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_165
.label_1779:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_264
	cmp	r12d, 2
	jne	.label_186
	cmp	byte ptr [rsp + 7], 0
	je	.label_186
	jmp	.label_158
.label_1780:
	cmp	r12d, 2
	jne	.label_159
	cmp	byte ptr [rsp + 7], 0
	jne	.label_158
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_189
.label_250:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_168
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
.label_169:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_201
	test	r8b, r8b
	je	.label_201
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_165
.label_174:
	test	rsi, rsi
	jne	.label_208
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_208
.label_179:
	mov	dl, 1
.label_1776:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_158
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_165:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_217
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_220
	jmp	.label_226
	nop	word ptr cs:[rax + rax]
.label_217:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_226
.label_220:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_229
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_189
	jmp	.label_198
	nop	dword ptr [rax]
.label_226:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_198
	jmp	.label_189
.label_229:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_198
.label_183:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_218
	xor	r15d, r15d
	jmp	.label_186
.label_159:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_213
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_189
.label_213:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_158
.label_235:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_165
	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_158
	cmp	r12d, 2
	jne	.label_260
	mov	eax, r9d
	and	al, 1
	jne	.label_260
	cmp	r14, r11
	jae	.label_262
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_262:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_175
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_175:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_271
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_271:
	add	r14, 3
	mov	r9b, 1
.label_260:
	cmp	r14, r11
	jae	.label_161
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_161:
	inc	r14
	jmp	.label_166
.label_168:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_170
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_170:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_237:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_191
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_195
	cmp	rbp, -2
	je	.label_202
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_204
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_187:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_268
	bt	rsi, rdx
	jb	.label_163
.label_268:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_187
.label_204:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_231
	xor	r13d, r13d
.label_231:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_237
	jmp	.label_169
.label_209:
	xor	r13d, r13d
	jmp	.label_165
.label_208:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_165
.label_264:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_186
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_186
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_186
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_251
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_184
	cmp	byte ptr [rsp + 7], 0
	jne	.label_158
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_257
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_257:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_221
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_221:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_266
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_266:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_270
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_270:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_165
.label_186:
	xor	eax, eax
.label_176:
	xor	r13d, r13d
	jmp	.label_165
.label_201:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_167
	nop	word ptr cs:[rax + rax]
.label_246:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_167:
	test	r8b, r8b
	je	.label_177
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_178
	cmp	r14, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_181:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_178
	nop	dword ptr [rax]
.label_177:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_163
	cmp	r12d, 2
	jne	.label_190
	mov	eax, r9d
	and	al, 1
	jne	.label_190
	cmp	r14, r11
	jae	.label_194
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_194:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_199
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_199:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_205
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_205:
	add	r14, 3
	mov	r9b, 1
.label_190:
	cmp	r14, r11
	jae	.label_216
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_216:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_242
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_242:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_222
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_222:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_178:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_189
	test	r9b, 1
	je	.label_234
	mov	ebx, eax
	and	bl, 1
	jne	.label_234
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_239
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_239:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_240
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_240:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_234:
	cmp	r14, r11
	jae	.label_246
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_246
	nop	word ptr cs:[rax + rax]
.label_189:
	test	r9b, 1
	je	.label_245
	and	al, 1
	jne	.label_245
	cmp	r14, r11
	jae	.label_252
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_252:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_269
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_269:
	add	r14, 2
	xor	r9d, r9d
.label_245:
	mov	ebx, r15d
.label_166:
	cmp	r14, r11
	jae	.label_258
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_258:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_218
.label_195:
	xor	r13d, r13d
.label_191:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_169
.label_202:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_272
	mov	rsi, qword ptr [rsp + 0x50]
.label_197:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_180
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_197
	xor	r13d, r13d
	jmp	.label_169
.label_272:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_169
.label_180:
	xor	r13d, r13d
	jmp	.label_169
.label_251:
	xor	r13d, r13d
	jmp	.label_165
.label_184:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_165
	nop	dword ptr [rax + rax]
.label_232:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_182
	or	dl, al
	je	.label_163
.label_182:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_173
	or	dl, al
	jne	.label_173
	test	r10b, 1
	jne	.label_203
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_173
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_207
.label_173:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_211
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_219
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_219
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_193:
	cmp	r14, r11
	jae	.label_261
	mov	byte ptr [rcx + r14], al
.label_261:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_193
	jmp	.label_219
.label_158:
	mov	qword ptr [rsp + 0x20], rbp
.label_163:
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
.label_212:
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
.label_203:
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
	jmp	.label_212
.label_211:
	mov	rcx, qword ptr [rsp + 8]
.label_219:
	cmp	r14, r11
	jae	.label_233
	mov	byte ptr [rcx + r14], 0
	jmp	.label_233
.label_210:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403df0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	mov	rax, rdx
	xor	edx, edx
	mov	rcx, rax
	jmp	quotearg_alloc_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00

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
	je	.label_273
	mov	qword ptr [rax], rbx
.label_273:
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
	.align	32
	#Procedure 0x403ef0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  2
	jl	.label_274
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_277:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax, dword ptr [rip + nslots]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_277
.label_274:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_278
	call	free
	mov	qword ptr [rip + slotvec0],  0x100
	mov	qword ptr [rip + label_275], OFFSET FLAT:slot0
.label_278:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_276
	mov	rdi, r14
	call	free
	mov	qword ptr [rip + slotvec], OFFSET FLAT:slotvec0
.label_276:
	mov	dword ptr [rip + nslots],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f90

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x403fa0

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
	js	.label_279
	mov	eax, dword ptr [r13]
	mov	rbp, qword ptr [rip + slotvec]
	cmp	dword ptr [rip + nslots],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_282
	cmp	r12d, 0x7fffffff
	je	.label_284
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
	jne	.label_280
	movups	xmm0, xmmword ptr [rip + slotvec0]
	movups	xmmword ptr [r14], xmm0
.label_280:
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
.label_282:
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
	jbe	.label_285
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_281
.label_285:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_283
	mov	rdi, r14
	call	free
.label_283:
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
.label_281:
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
.label_279:
	call	abort
.label_284:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404160

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404170
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quotearg_n
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404180
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
	.align	32
	#Procedure 0x404190

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
	.align	32
	#Procedure 0x4041d0

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
	je	.label_286
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
.label_286:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404230

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
	.align	32
	#Procedure 0x404270

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
	.align	32
	#Procedure 0x404290
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
	.align	32
	#Procedure 0x4042b0

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
	mov	rcx, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x404320

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	mov	rsi, -1
	mov	edx, eax
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404330

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404340
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404350

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
	.align	32
	#Procedure 0x4043a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4043b0

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
	mov	rax, qword ptr [rip + label_287]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0, xmmword ptr [rip + label_288]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0, xmmword ptr [rip + label_289]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0, xmmword ptr [rip + default_quoting_options]
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
	.align	32
	#Procedure 0x404420
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
	.align	32
	#Procedure 0x404440
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
	.align	32
	#Procedure 0x404460

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404470
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
	.align	32
	#Procedure 0x404480

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404490
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rsi, rax
	jmp	quote_n
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4044a0

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
	jne	.label_295
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
	je	.label_291
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_296
	mov	eax, OFFSET FLAT:label_297
	jmp	.label_294
.label_291:
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
	je	.label_290
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_292
	mov	eax, OFFSET FLAT:label_293
	jmp	.label_294
.label_290:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_171
	mov	eax, OFFSET FLAT:label_228
.label_294:
	cmove	rax, rcx
.label_295:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404560

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
	je	.label_298
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_300
	jmp	.label_299
.label_298:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_299
.label_300:
	mov	eax, 1
	test	bpl, bpl
	je	.label_299
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
.label_299:
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
	.align	32
	#Procedure 0x4045e0

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
	je	.label_303
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_301
	jmp	.label_302
.label_303:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_302
.label_301:
	mov	eax, 1
	test	bpl, bpl
	je	.label_302
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
.label_302:
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
	.align	32
	#Procedure 0x404670

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
	je	.label_304
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_306
	jmp	.label_305
.label_304:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_305
.label_306:
	mov	eax, 1
	test	bpl, bpl
	je	.label_305
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
.label_305:
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
	.align	32
	#Procedure 0x4046f0

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
	je	.label_309
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_308
	jmp	.label_307
.label_309:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_307
.label_308:
	mov	eax, 1
	test	bpl, bpl
	je	.label_307
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
.label_307:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404760

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
	je	.label_312
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_310
	jmp	.label_311
.label_312:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_311
.label_310:
	mov	eax, 1
	test	bpl, bpl
	je	.label_311
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_311:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047c0

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
	je	.label_313
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_315
	jmp	.label_314
.label_313:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_314
.label_315:
	mov	eax, 1
	test	bpl, bpl
	je	.label_314
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_314:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404810

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
	je	.label_318
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_317
	jmp	.label_316
.label_318:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_316
.label_317:
	mov	eax, 1
	test	bpl, bpl
	je	.label_316
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_316:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_321
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_320
	jmp	.label_319
.label_321:
	mov	eax, 1
	test	cl, cl
	je	.label_319
.label_320:
	xor	eax, eax
.label_319:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404890

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
.label_323:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_322
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_323
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
	jb	.label_322
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_323
.label_322:
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
	.align	32
	#Procedure 0x404920

	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:
	push	rax
	call	mkstemp
	mov	edi, eax
	pop	rax
	jmp	fd_safer
	nop	
	.section	.text
	.align	32
	#Procedure 0x404930
	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:

	push	rbx
	mov	ebx, esi
	call	mkostemp
	mov	edi, eax
	mov	esi, ebx
	pop	rbx
	jmp	fd_safer_flag
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404950

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
	ja	.label_324
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
	jmp	.label_325
.label_324:
	mov	eax, ebx
.label_325:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049a0

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
	je	.label_338
	mov	edx, OFFSET FLAT:label_329
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_335
.label_338:
	mov	edx, OFFSET FLAT:label_336
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_335:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_340
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
	mov	esi, OFFSET FLAT:label_337
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_341
	jmp	qword ptr [(r12 * 8) + label_342]
.label_1813:
	add	rsp, 8
	jmp	.label_328
.label_341:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_332
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
	jmp	.label_328
.label_1814:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_327
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
.label_1815:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_333
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
.label_1816:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_330
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
.label_1817:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_344
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
	jmp	.label_328
.label_1818:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_343
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
	jmp	.label_328
.label_1819:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_326
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
	jmp	.label_328
.label_1820:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_331
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
	jmp	.label_328
.label_1822:
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
	push	qword ptr [r15 + 0x40]
	push	qword ptr [r15 + 0x38]
	push	qword ptr [r15 + 0x30]
	push	qword ptr [r15 + 0x28]
	push	qword ptr [r15 + 0x20]
	push	qword ptr [r15 + 0x18]
	call	__fprintf_chk
	add	rsp, 0x38
	jmp	.label_328
.label_1821:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_339
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
.label_328:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_345:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_345
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_348:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_346
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_347
	nop	dword ptr [rax]
.label_346:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_347:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_349
	inc	r9
	cmp	r9, 0xa
	jb	.label_348
.label_349:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_350
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_350:
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
	.align	32
	#Procedure 0x404e20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_351
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_352
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_354
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_353
	mov	edx, 5
	call	dcgettext
	mov	rsi, qword ptr [rip + stdout]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ea0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_355
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_355:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ed0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_356
	test	rax, rax
	je	.label_357
.label_356:
	pop	rbx
	ret	
.label_357:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ef0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_358
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_358:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404f20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_359
	test	rbx, rbx
	jne	.label_359
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_359:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_361
	test	rax, rax
	je	.label_360
.label_361:
	pop	rbx
	ret	
.label_360:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404f50

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_362
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_365
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_363
.label_362:
	test	rcx, rcx
	jne	.label_366
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_366:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_364
.label_363:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_365:
	call	xalloc_die
.label_364:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404fd0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fe0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ff0
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
	.align	32
	#Procedure 0x405020
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_367
	call	rpl_calloc
	test	rax, rax
	je	.label_367
	pop	rcx
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405050

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
	.align	32
	#Procedure 0x405080
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
	.align	32
	#Procedure 0x4050a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx, dword ptr [rip + exit_failure]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_134
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_54
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4050d0
	.globl xset_binary_mode_error
	.type xset_binary_mode_error, @function
xset_binary_mode_error:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050e0

	.globl xset_binary_mode
	.type xset_binary_mode, @function
xset_binary_mode:
	jmp	set_binary_mode
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_368
	test	rsi, rsi
	mov	ecx, 1
	je	.label_369
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_369
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_368:
	mov	ecx, 1
.label_369:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405140

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
	jne	.label_370
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_370
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_371
.label_370:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_371:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_372
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_372:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4051b0

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
	je	.label_373
	cmp	r15, -2
	jb	.label_373
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_373
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_373:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405210

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx, qword ptr [rip + rpl_re_syntax_options]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_374
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_374:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405270

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	dword ptr [rsp + 0xc], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_380
.label_379:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_378
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_375
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 0x10]
	lea	rcx, [rsp + 0xc]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_375
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_375
	test	rbp, rbp
	jne	.label_376
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_376
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_376
	mov	rdi, r14
	call	optimize_utf8
.label_376:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xc], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_378
.label_381:
	mov	eax, dword ptr [rsp + 0xc]
.label_377:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_375:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 0x10]
	call	re_string_destruct
.label_378:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_381
.label_380:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_377
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_379
	.section	.text
	.align	32
	#Procedure 0x4053f0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax, qword ptr [rip + rpl_re_syntax_options]
	mov	qword ptr [rip + rpl_re_syntax_options],  rdi
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405400

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xf0], xmm0
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_382
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_382:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_383
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_383:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_384
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_384:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x148
	mov	qword ptr [rsp], rdx
	mov	r15, qword ptr [rdi]
	cmp	dword ptr [r15 + 0xb4], 1
	mov	qword ptr [rsp + 0x10], rdi
	jne	.label_400
	mov	r14b, byte ptr [rdi + 0x1a]
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_406
.label_400:
	xor	r14d, r14d
.label_406:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_385
	xor	edx, edx
	mov	qword ptr [rsp + 0x20], rsi
	mov	qword ptr [rsp + 0x30], r15
	nop	
.label_392:
	mov	rax, qword ptr [rsi + 0x18]
	mov	rbx, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [r15]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	add	rcx, rbp
	cmp	al, 1
	mov	qword ptr [rsp + 0x28], rdx
	je	.label_404
	cmp	al, 6
	je	.label_397
	cmp	al, 3
	jne	.label_399
	xor	r13d, r13d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], rbp
	nop	word ptr cs:[rax + rax]
.label_396:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + rbp]
	mov	rbp, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp]
	lea	r12, [rax + rbx]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_393:
	bt	rbp, r15
	jae	.label_388
	mov	byte ptr [r12 + r15], 1
	test	r14b, r14b
	je	.label_388
	lea	edi, [rbx + r15]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_388:
	inc	r15
	cmp	r15, 0x40
	jne	.label_393
	inc	r13
	add	rbx, 0x40
	cmp	r13, 4
	mov	r15, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x38]
	jne	.label_396
	jmp	.label_387
	nop	dword ptr [rax + rax]
.label_404:
	movzx	edi, byte ptr [rcx]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_405
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_405:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_387
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_387
	mov	rax, qword ptr [r15]
	mov	al, byte ptr [rax + rbp]
	mov	byte ptr [rsp + 0x40], al
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x10]
	lea	r13, [rsp + 0x41]
	jae	.label_389
	add	rbp, 0x18
	lea	r13, [rsp + 0x41]
	nop	dword ptr [rax]
.label_401:
	mov	rax, qword ptr [r15]
	mov	ecx, dword ptr [rax + rbp]
	mov	edx, 0x2000ff
	and	ecx, edx
	cmp	ecx, 0x200001
	jne	.label_389
	movzx	eax, byte ptr [rax + rbp - 8]
	mov	byte ptr [r13], al
	inc	r13
	inc	rbx
	add	rbp, 0x10
	cmp	rbx, qword ptr [r15 + 0x10]
	jb	.label_401
.label_389:
	mov	qword ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	sub	r13, rbx
	lea	rdi, [rsp + 0x1c]
	mov	rsi, rbx
	mov	rdx, r13
	lea	rbp, [rsp + 8]
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, r13
	jne	.label_387
	mov	edi, dword ptr [rsp + 0x1c]
	call	towlower
	mov	rdi, rbx
	mov	esi, eax
	mov	rdx, rbp
	call	wcrtomb
	cmp	rax, -1
	je	.label_387
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_387
	nop	word ptr cs:[rax + rax]
.label_397:
	mov	r12, qword ptr [rcx]
	cmp	dword ptr [r15 + 0xb4], 1
	jle	.label_386
	cmp	qword ptr [r12 + 0x48], 0
	jne	.label_403
	test	byte ptr [r12 + 0x20], 1
	jne	.label_403
	cmp	qword ptr [r12 + 0x40], 0
	je	.label_386
.label_403:
	mov	byte ptr [rsp + 8], 0
	lea	rbx, [rsp + 0x40]
	lea	rbp, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_398:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, rbp
	mov	rcx, rbx
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_395
	movzx	eax, byte ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_395:
	inc	byte ptr [rsp + 8]
	jne	.label_398
	jmp	.label_387
	nop	dword ptr [rax]
.label_399:
	cmp	al, 7
	ja	.label_387
	movzx	ecx, al
	mov	edx, 0xa4
	bt	edx, ecx
	jae	.label_387
	jmp	.label_407
.label_386:
	cmp	qword ptr [r12 + 0x28], 0
	jle	.label_387
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_394:
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r12]
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rsp + 0x40]
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_391
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_391
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
.label_391:
	mov	rax, qword ptr [rsp + 0x10]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_390
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_390
	mov	rax, qword ptr [r12]
	mov	edi, dword ptr [rax + rbp*4]
	call	towlower
	lea	rdi, [rsp + 0x40]
	mov	esi, eax
	lea	rdx, [rsp + 8]
	call	wcrtomb
	cmp	rax, -1
	je	.label_390
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp]
	mov	byte ptr [rcx + rax], 1
	nop	dword ptr [rax + rax]
.label_390:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 0x28]
	jl	.label_394
	nop	
.label_387:
	mov	rdx, qword ptr [rsp + 0x28]
	inc	rdx
	mov	rsi, qword ptr [rsp + 0x20]
	cmp	rdx, qword ptr [rsi + 0x10]
	jl	.label_392
.label_385:
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_407:
	movaps	xmm0, xmmword ptr [rip + label_402]
	mov	rcx, qword ptr [rsp]
	movups	xmmword ptr [rcx + 0xf0], xmm0
	movups	xmmword ptr [rcx + 0xe0], xmm0
	movups	xmmword ptr [rcx + 0xd0], xmm0
	movups	xmmword ptr [rcx + 0xc0], xmm0
	movups	xmmword ptr [rcx + 0xb0], xmm0
	movups	xmmword ptr [rcx + 0xa0], xmm0
	movups	xmmword ptr [rcx + 0x90], xmm0
	movups	xmmword ptr [rcx + 0x80], xmm0
	movups	xmmword ptr [rcx + 0x70], xmm0
	movups	xmmword ptr [rcx + 0x60], xmm0
	movups	xmmword ptr [rcx + 0x50], xmm0
	movups	xmmword ptr [rcx + 0x40], xmm0
	movups	xmmword ptr [rcx + 0x30], xmm0
	movups	xmmword ptr [rcx + 0x20], xmm0
	movups	xmmword ptr [rcx + 0x10], xmm0
	movups	xmmword ptr [rcx], xmm0
	cmp	eax, 2
	jne	.label_385
	mov	rax, qword ptr [rsp + 0x10]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_385
	nop	
	.section	.text
	.align	32
	#Procedure 0x4058d0
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	call	malloc
	mov	qword ptr [r15 + 0x20], rax
	mov	ebx, 0xc
	test	rax, rax
	je	.label_410
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_408
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_409
.label_408:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_409:
	mov	al, byte ptr [r15 + 0x38]
	add	bpl, bpl
	and	bpl, 0x10
	and	al, 0xef
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	call	strlen
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, rbx
	call	re_compile_internal
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	jne	.label_411
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_410:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_411:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_410
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4059c0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_412
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi, qword ptr [(rax * 8) + __re_error_msgid_idx]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_414
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_415
.label_413:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_414:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_415:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_413
.label_412:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a40
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_416
	call	free_dfa_content
.label_416:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rdi, qword ptr [rbx + 0x20]
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405a80

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	je	.label_417
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_417
	xor	r15d, r15d
	xor	ebx, ebx
	nop	
.label_419:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_419
.label_417:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_418
	xor	r15d, r15d
	mov	ebx, 0x10
.label_420:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_421
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_421:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_423
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_423:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_425
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_425:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_420
.label_418:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_426
	xor	r15d, r15d
.label_428:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_427
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_424:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_424
.label_427:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_428
.label_426:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_422
	call	free
.label_422:
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405bd0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	ebx, r8d
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	eax, 2
	cmp	ebx, 7
	ja	.label_431
	test	bl, 4
	jne	.label_432
	mov	rdi, r12
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_433
.label_432:
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
.label_433:
	test	byte ptr [r13 + 0x38], 0x10
	jne	.label_429
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	r15
	push	r14
	call	re_search_internal
	add	rsp, 0x20
	jmp	.label_430
.label_429:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, r12
	mov	r8, rdx
	mov	r9, rdx
	push	rbx
	push	0
	push	0
	call	re_search_internal
	add	rsp, 0x20
.label_430:
	mov	ecx, eax
	xor	eax, eax
	test	ecx, ecx
	setne	al
.label_431:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405c70

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x188
	mov	r12, rdi
	mov	rdi, qword ptr [rsp + 0x1c0]
	mov	r10, qword ptr [r12]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	movaps	xmmword ptr [rsp + 0x140], xmm0
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	qword ptr [rsp + 0x118], r10
	mov	rax, qword ptr [r12 + 0x20]
	xor	r14d, r14d
	test	rax, rax
	je	.label_465
	mov	bl, byte ptr [r12 + 0x38]
	and	bl, 9
	xor	ebp, ebp
	cmp	bl, 8
	cmovne	rax, rbp
	cmp	rcx, r8
	cmove	rax, rbp
	mov	r14, rax
.label_465:
	mov	rax, qword ptr [r12 + 0x30]
	lea	r15, [rdi - 1]
	mov	rbp, r15
	sub	rbp, rax
	xor	ebx, ebx
	cmp	rax, rdi
	cmovb	rbx, rbp
	mov	r13d, 1
	cmp	qword ptr [r12 + 0x10], 0
	je	.label_453
	mov	rax, qword ptr [r10 + 0x48]
	test	rax, rax
	je	.label_453
	mov	r11, qword ptr [r10 + 0x50]
	test	r11, r11
	je	.label_453
	mov	qword ptr [rsp + 0x38], r9
	mov	r9, qword ptr [r10 + 0x58]
	test	r9, r9
	je	.label_453
	mov	qword ptr [rsp + 0x30], rcx
	cmp	qword ptr [r10 + 0x60], 0
	je	.label_453
	mov	rcx, qword ptr [r12 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_475
	cmp	qword ptr [r11 + 0x10], 0
	jne	.label_475
	cmp	qword ptr [r9 + 0x10], 0
	je	.label_478
	cmp	byte ptr [r12 + 0x38], 0
	js	.label_475
.label_478:
	xor	ebp, ebp
	cmp	qword ptr [rsp + 0x30], 0
	je	.label_482
	test	r8, r8
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
	jne	.label_453
	jmp	.label_451
.label_475:
	mov	rbp, r8
.label_451:
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x50], r15
	mov	qword ptr [rsp + 0x68], rbx
	sub	rdi, rbx
	mov	qword ptr [rsp + 0x28], rdi
	mov	byte ptr [rsp + 0x17], 1
	jne	.label_489
	cmp	qword ptr [r10 + 0x98], 0
	setne	byte ptr [rsp + 0x17]
.label_489:
	mov	rcx, qword ptr [r10 + 0x10]
	inc	rcx
	mov	r8, qword ptr [r12 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r12 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp + 0x20], r10
	mov	qword ptr [rsp], r10
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x58], rsi
	mov	qword ptr [rsp + 0x60], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_438
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r12 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_438
	cmp	qword ptr [rsp + 0x28], 1
	ja	.label_476
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_476
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_483
.label_476:
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_438
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_438
.label_483:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], rdi
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, rbp
	cmp	rax, rdi
	mov	r9d, 0xffffffff
	mov	ecx, 1
	cmovge	r9d, ecx
	mov	r13, rdi
	cmovle	r13, rax
	mov	r15, rax
	cmovl	r15, rdi
	mov	rcx, qword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rcx + 0xb4]
	mov	dword ptr [rsp + 0x38], ecx
	mov	edx, 8
	test	r14, r14
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	je	.label_444
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_467
	mov	edx, 0x400000
	xor	ecx, ecx
	test	rbx, rbx
	jne	.label_470
	and	rdx, qword ptr [r12 + 0x18]
	jne	.label_470
.label_467:
	mov	ecx, 4
.label_470:
	xor	edx, edx
	cmp	rdi, rax
	setle	dl
	xor	esi, esi
	test	rbx, rbx
	setne	sil
	lea	edx, [rsi + rdx*2]
	or	edx, ecx
.label_444:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_477
	cmp	r15, rcx
	jl	.label_477
	xor	ecx, ecx
	cmp	rdi, rax
	lea	rsi, [rsp + 0x18]
	cmovg	rsi, rcx
	mov	qword ptr [rsp + 0x30], rsi
	movsxd	rdi, r9d
	add	edx, -4
	mov	qword ptr [rsp + 0x48], r13
	mov	qword ptr [rsp + 0x78], rdx
	mov	qword ptr [rsp + 0x70], rdi
.label_471:
	cmp	edx, 4
	ja	.label_466
	jmp	qword ptr [(rdx * 8) + label_436]
.label_1864:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r13
	jl	.label_439
	nop	word ptr cs:[rax + rax]
.label_464:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_446
	movzx	eax, byte ptr [rbp + rcx]
.label_446:
	test	rbx, rbx
	je	.label_449
	movzx	eax, byte ptr [rbx + rax]
.label_449:
	cmp	byte ptr [r14 + rax], 0
	jne	.label_439
	mov	rax, qword ptr [rsp + 0x18]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x18], rcx
	cmp	rax, r13
	jg	.label_464
.label_439:
	cmp	qword ptr [rsp + 0x18], r13
	jge	.label_437
	jmp	.label_458
	nop	
.label_490:
	mov	rax, qword ptr [rsp + 0x18]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_460
	cmp	rax, r15
	jle	.label_466
	jmp	.label_460
.label_480:
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_438
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x60]
	mov	r13, qword ptr [rsp + 0x48]
	mov	rdi, qword ptr [rsp + 0x70]
	jmp	.label_473
	nop	
.label_466:
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_480
.label_473:
	cmp	qword ptr [rsp + 0x18], r8
	mov	ecx, 0
	jge	.label_485
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_485:
	cmp	byte ptr [r14 + rcx], 0
	je	.label_490
	jmp	.label_437
.label_1865:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_492
	nop	word ptr cs:[rax + rax]
.label_445:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_492:
	cmp	rax, r15
	jge	.label_443
	movzx	ecx, byte ptr [rbp + rax]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_445
	jmp	.label_443
.label_1866:
	mov	rax, qword ptr [rsp + 0x18]
	jmp	.label_448
	nop	word ptr cs:[rax + rax]
.label_457:
	inc	rax
	mov	qword ptr [rsp + 0x18], rax
.label_448:
	cmp	rax, r15
	jge	.label_443
	movzx	ecx, byte ptr [rbp + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [r14 + rcx], 0
	je	.label_457
.label_443:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	rcx, r15
	je	.label_459
.label_437:
	mov	rsi, qword ptr [rsp + 0x18]
	lea	rbx, [rsp + 0x80]
	mov	rdi, rbx
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_440
	cmp	dword ptr [rsp + 0x38], 1
	je	.label_462
	mov	rax, qword ptr [rsp + 0xb0]
	test	rax, rax
	je	.label_462
	mov	rax, qword ptr [rsp + 0x90]
	cmp	dword ptr [rax], -1
	je	.label_474
.label_462:
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x17]
	mov	rdi, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	call	check_matching
	cmp	rax, -1
	je	.label_486
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_438
	mov	qword ptr [rsp + 0x128], rax
	mov	rdx, qword ptr [rsp + 0x28]
	cmp	rdx, 2
	jb	.label_487
	mov	cl, byte ptr [r12 + 0x38]
	and	cl, 0x10
	je	.label_441
.label_487:
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_472
.label_441:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdi, rbx
	mov	rdx, rax
	call	check_halt_state_context
	mov	rdx, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x130], rax
.label_472:
	cmp	rdx, 2
	jb	.label_455
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_455
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_456
.label_455:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_463
.label_456:
	mov	rdi, rbx
	call	prune_impossible_nodes
	mov	r13d, eax
	xor	ebp, ebp
	test	r13d, r13d
	je	.label_463
	cmp	r13d, 1
	jne	.label_438
.label_486:
	mov	rdi, rbx
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x48]
.label_474:
	mov	rax, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x70]
	add	rax, rdi
	mov	qword ptr [rsp + 0x18], rax
	cmp	rax, r13
	jl	.label_458
	cmp	r15, rax
	mov	r8, qword ptr [rsp + 0x60]
	mov	rbp, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x78]
	jge	.label_471
	jmp	.label_458
.label_459:
	xor	eax, eax
	cmp	rcx, r8
	jge	.label_488
	mov	rax, qword ptr [rsp + 0x58]
	movzx	eax, byte ptr [rax + rcx]
.label_488:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_491
	mov	rcx, qword ptr [rsp + 0x40]
	movzx	eax, byte ptr [rcx + rax]
.label_491:
	cmp	byte ptr [r14 + rax], 0
	mov	r13, qword ptr [rsp + 0x48]
	jne	.label_437
	mov	r13d, 1
	jmp	.label_438
.label_477:
	mov	r13d, 1
	jmp	.label_438
.label_463:
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	je	.label_440
	cmp	rcx, 1
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_452
	lea	rdi, [r14 + 0x10]
	cmp	rcx, 2
	mov	edx, 2
	cmova	rdx, rcx
	shl	rdx, 4
	add	rdx, -0x10
	mov	esi, 0xff
	call	memset
	mov	rcx, qword ptr [rsp + 0x28]
.label_452:
	mov	qword ptr [r14], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [r14 + 8], rax
	cmp	rcx, 2
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	jb	.label_469
	mov	al, byte ptr [r12 + 0x38]
	and	al, 0x10
	jne	.label_469
	test	byte ptr [r8 + 0xb0], 1
	jne	.label_481
	xor	eax, eax
	jmp	.label_461
.label_460:
	mov	r13d, 1
	jmp	.label_438
.label_458:
	mov	r13d, 1
	jmp	.label_438
.label_481:
	cmp	qword ptr [r8 + 0x98], 0
	setg	al
.label_461:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r12
	mov	rdx, rcx
	mov	rcx, r14
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_438
	xor	ebp, ebp
	mov	rcx, qword ptr [rsp + 0x28]
	test	rcx, rcx
	mov	r8, qword ptr [rsp + 0x20]
	mov	r10, qword ptr [rsp + 0x50]
	mov	r14, qword ptr [rsp + 0x1c8]
	je	.label_479
.label_469:
	mov	al, byte ptr [rsp + 0x10c]
	lea	r9, [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rsi, [r14 + 8]
	mov	rdi, rcx
	jmp	.label_442
.label_482:
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_451
.label_468:
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi - 8], rbx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	lea	rbx, [rdx + rbx*8]
	cmove	rbx, r9
	mov	rbx, qword ptr [rbx]
	mov	qword ptr [rsi], rbx
	jmp	.label_447
	nop	word ptr cs:[rax + rax]
.label_442:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_435
	test	al, al
	jne	.label_468
.label_447:
	mov	rbx, qword ptr [rsp + 0x18]
	add	qword ptr [rsi - 8], rbx
	add	qword ptr [rsi], rbx
.label_435:
	add	rsi, 0x10
	dec	rdi
	jne	.label_442
.label_479:
	mov	rdx, qword ptr [rsp + 0x68]
	test	rdx, rdx
	jle	.label_484
	mov	rdi, rcx
	shl	rdi, 4
	add	rdi, r14
	shl	rdx, 4
	mov	esi, 0xff
	call	memset
	mov	rdx, qword ptr [rsp + 0x68]
	mov	r10, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x20]
.label_484:
	cmp	qword ptr [r8 + 0xe0], 0
	je	.label_440
	cmp	rcx, 2
	jb	.label_440
	mov	rax, qword ptr [r8 + 0xe0]
	sub	r10, rdx
	lea	rcx, [r14 + 0x18]
	xor	edx, edx
	nop	dword ptr [rax]
.label_450:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_434
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [r8 + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [r14 + rsi + 0x18]
	mov	qword ptr [rcx], rsi
.label_434:
	inc	rdx
	add	rcx, 0x10
	cmp	r10, rdx
	jne	.label_450
.label_440:
	mov	r13d, ebp
.label_438:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_454
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_454:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_453:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406590
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	push	rax
	mov	rax, r8
	mov	r8d, 0
	mov	r9, rdx
	push	1
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, rdx
	test	rcx, rcx
	mov	r14, -1
	js	.label_497
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], r9
	cmp	rcx, rbx
	jg	.label_497
	xor	ebp, ebp
	add	r8, rcx
	js	.label_500
	mov	rbp, r8
.label_500:
	mov	r14, qword ptr [rsp + 0x60]
	cmp	r8, rbx
	cmovg	rbp, rbx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp], rdi
	jle	.label_496
	test	r12b, 8
	jne	.label_496
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_496
	mov	rdi, qword ptr [rsp]
	call	rpl_re_compile_fastmap
	mov	rdi, qword ptr [rsp]
.label_496:
	xor	edx, edx
	test	r14, r14
	mov	r13d, 1
	je	.label_498
	mov	al, byte ptr [rdi + 0x38]
	mov	ecx, eax
	and	cl, 0x10
	jne	.label_498
	and	al, 6
	cmp	al, 4
	jne	.label_493
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_501
.label_493:
	mov	r13, qword ptr [rdi + 0x30]
	inc	r13
	mov	rdx, r14
.label_498:
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, r13
	shl	rdi, 4
	call	malloc
	mov	rdx, qword ptr [rsp]
	mov	r15, rax
	mov	r14, -2
	test	r15, r15
	mov	rcx, qword ptr [rsp + 8]
	je	.label_497
	mov	eax, r12d
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	sub	rsp, 8
	mov	rdi, rdx
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, rbx
	mov	r8, rbp
	mov	r9, qword ptr [rsp + 0x28]
	push	r12
	push	r15
	push	r13
	call	re_search_internal
	add	rsp, 0x20
	test	eax, eax
	je	.label_505
	xor	r14d, r14d
	cmp	eax, 1
	sete	r14b
	or	r14, 0xfffffffffffffffe
.label_494:
	mov	rdi, r15
	call	free
.label_497:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_505:
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_499
	mov	rbx, qword ptr [rsp]
	mov	al, byte ptr [rbx + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r15
	mov	rdx, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbx + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	edx, eax
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbx + 0x38], dl
	mov	r14, -2
	je	.label_494
.label_499:
	mov	al, byte ptr [rsp + 0x68]
	mov	r14, qword ptr [r15]
	test	al, al
	je	.label_494
	mov	rax, qword ptr [rsp + 8]
	cmp	r14, rax
	jne	.label_506
	mov	r14, qword ptr [r15 + 8]
	sub	r14, rax
	jmp	.label_494
.label_501:
	xor	edx, edx
	test	rax, rax
	jle	.label_495
	mov	rdx, r14
.label_495:
	mov	r13d, 1
	test	rax, rax
	jle	.label_498
	mov	r13, rax
	jmp	.label_498
.label_506:
	mov	edi, OFFSET FLAT:label_502
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:label_504
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406790

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	push	rax
	mov	rax, r9
	mov	r9, rdx
	push	0
	push	rax
	call	re_search_stub
	add	rsp, 0x10
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067b0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rax
	push	1
	push	qword ptr [rsp + 0x20]
	push	qword ptr [rsp + 0x20]
	push	0
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067d0

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	or	rax, r14
	or	rax, rbp
	js	.label_507
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_512
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_507
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_510
	xor	r12d, r12d
	test	r14, r14
	jle	.label_509
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x20], r9
	call	malloc
	mov	r12, rax
	test	r12, r12
	je	.label_507
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r9, qword ptr [rsp + 0x20]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_510
.label_512:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_511
.label_507:
	mov	rax, -2
	jmp	.label_508
.label_511:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_510
.label_509:
	mov	r13, r15
.label_510:
	mov	rax, qword ptr [rsp + 0x68]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsi, r13
	mov	rcx, r9
	mov	r9, rbp
	call	re_search_stub
	mov	rbx, rax
	mov	rdi, r12
	call	free
	mov	rax, rbx
.label_508:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4068e0
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rax
	push	0
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	push	qword ptr [rsp + 0x28]
	call	re_search_2_stub
	add	rsp, 0x20
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406900
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_513
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_513:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406930

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_514
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_514:
	cmp	eax, 3
	jne	.label_515
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_515:
	ret	
	.section	.text
	.align	32
	#Procedure 0x406950

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	cmp	rax, rcx
	je	.label_516
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_516:
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rdi, qword ptr [rbx + 0x58]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4069b0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	free
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, rbx
	pop	rbx
	jmp	free
	.section	.text
	.align	32
	#Procedure 0x4069e0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0xd0], xmm0
	movups	xmmword ptr [r15 + 0xc0], xmm0
	movups	xmmword ptr [r15 + 0xb0], xmm0
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	movups	xmmword ptr [r15 + 0x70], xmm0
	movups	xmmword ptr [r15 + 0x60], xmm0
	movups	xmmword ptr [r15 + 0x50], xmm0
	movups	xmmword ptr [r15 + 0x40], xmm0
	movups	xmmword ptr [r15 + 0x30], xmm0
	movups	xmmword ptr [r15 + 0x20], xmm0
	movups	xmmword ptr [r15 + 0x10], xmm0
	movups	xmmword ptr [r15], xmm0
	mov	qword ptr [r15 + 0xe0], 0
	mov	dword ptr [r15 + 0x80], 0xf
	mov	r14d, 0xc
	movabs	rax, 0x555555555555554
	cmp	rbp, rax
	ja	.label_518
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_523:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_523
	mov	edi, 0x18
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	dec	rbx
	mov	qword ptr [r15 + 0x88], rbx
	call	__ctype_get_mb_cur_max
	mov	dword ptr [r15 + 0xb4], eax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	cl, byte ptr [rax]
	or	cl, 0x20
	cmp	cl, 0x75
	jne	.label_520
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	cmp	cl, 0x74
	jne	.label_520
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	cmp	cl, 0x66
	jne	.label_520
	xor	ecx, ecx
	cmp	byte ptr [rax + 3], 0x2d
	sete	cl
	cmp	byte ptr [rax + rcx + 3], 0x38
	jne	.label_520
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_520
	or	byte ptr [r15 + 0xb0], 4
.label_520:
	mov	al, byte ptr [r15 + 0xb0]
	mov	ecx, eax
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_519
	test	al, 4
	jne	.label_522
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	test	rax, rax
	je	.label_518
	xor	r14d, r14d
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_526:
	xor	ebp, ebp
	mov	ebx, r12d
	nop	word ptr cs:[rax + rax]
.label_525:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_524
	mov	edx, 1
	mov	ecx, ebp
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r14*8], rdx
.label_524:
	cmp	ebx, 0x7f
	ja	.label_521
	cmp	ebx, eax
	je	.label_521
	or	byte ptr [r15 + 0xb0], 8
.label_521:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_525
	add	r12d, 0x40
	inc	r14
	cmp	r14, 4
	jne	.label_526
	jmp	.label_519
.label_522:
	mov	qword ptr [r15 + 120], OFFSET FLAT:utf8_sb_map
.label_519:
	cmp	qword ptr [r15], 0
	je	.label_517
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_518
.label_517:
	mov	r14d, 0xc
.label_518:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406bf0

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	r13d, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	rbp, rsi
	mov	rbx, rdi
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
	mov	qword ptr [rbx + 0x90], 0
	movzx	r8d, r13b
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, rbx
	call	re_string_construct_common
	test	r15, r15
	jle	.label_530
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_528
.label_530:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_533
	mov	rbp, qword ptr [rbx + 8]
.label_533:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_535
	cmp	eax, 2
	jl	.label_529
	nop	
.label_527:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_528
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_528
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_528
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_527
	jmp	.label_528
.label_535:
	cmp	eax, 2
	jl	.label_534
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_531
.label_529:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_531
.label_534:
	test	r12, r12
	je	.label_532
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_531
.label_532:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_531:
	xor	eax, eax
.label_528:
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
	.align	32
	#Procedure 0x406d10

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_536
.label_537:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_537
.label_536:
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	mov	qword ptr [r14 + 0x68], 0
	mov	rdi, qword ptr [r14 + 0x20]
	call	free
	mov	qword ptr [r14 + 0x20], 0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d70

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_538
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_538:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406da0

	.globl parse
	.type parse, @function
parse:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	xor	r8d, r8d
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	mov	rcx, rbx
	mov	r9, r14
	call	parse_reg_exp
	mov	r13, rax
	test	r13, r13
	jne	.label_543
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_541
.label_543:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	rbx, rax
	test	r13, r13
	je	.label_539
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbx
	call	create_tree
	mov	r12, rax
	jmp	.label_542
.label_539:
	mov	r12, rbx
.label_542:
	test	rbx, rbx
	je	.label_540
	test	r12, r12
	je	.label_540
.label_541:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_540:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_541
	.section	.text
	.align	32
	#Procedure 0x406e60

	.globl analyze
	.type analyze, @function
analyze:
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rdi, qword ptr [rbx + 8]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x20], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	cmp	qword ptr [rbx + 0x18], 0
	je	.label_547
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_547
	test	rcx, rcx
	je	.label_547
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_547
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_550
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_545
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_544:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_544
.label_545:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_548
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_549:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_548
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_549
.label_548:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_550
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_550:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_547
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_547
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_547
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_547
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_546
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_546
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_551
.label_546:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_547
.label_551:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_547
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_547:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407040

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_562
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_580:
	mov	rsi, rax
	shl	rsi, 4
	mov	cl, byte ptr [r11 + rsi + 8]
	dec	cl
	movzx	ecx, cl
	cmp	cl, 0xb
	ja	.label_566
	lea	rdx, [r11 + rsi]
	jmp	qword ptr [(rcx * 8) + label_567]
.label_1931:
	cmp	byte ptr [rdx], 0
	mov	cl, 1
	js	.label_568
	mov	ecx, r10d
.label_568:
	mov	r10b, cl
	jmp	.label_569
.label_1932:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	ecx, 2
.label_575:
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_574
	inc	rcx
	cmp	rcx, 3
	jle	.label_575
	jmp	.label_569
.label_1933:
	mov	r9b, 1
	jmp	.label_569
.label_1934:
	mov	ecx, dword ptr [rdx]
	lea	edx, [rcx - 0x10]
	cmp	edx, 0x30
	ja	.label_577
	bt	r8, rdx
	jb	.label_569
.label_577:
	cmp	ecx, 0x80
	jne	.label_574
	nop	word ptr [rax + rax]
.label_569:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_580
	jmp	.label_581
.label_562:
	xor	r10d, r10d
	xor	r9d, r9d
.label_581:
	mov	r8d, r9d
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_585
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_585
	xor	eax, eax
	mov	ecx, 8
	nop	word ptr cs:[rax + rax]
.label_600:
	mov	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + rcx]
	cmp	dl, 1
	jne	.label_589
	cmp	byte ptr [rsi + rcx - 8], 0
	js	.label_593
.label_589:
	mov	rdx, qword ptr [rdi]
	mov	esi, dword ptr [rdx + rcx]
	cmp	sil, 5
	jne	.label_594
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [rdx + rcx], esi
	jmp	.label_594
.label_593:
	and	edx, 0xffdfffff
	mov	dword ptr [rsi + rcx], edx
	nop	word ptr cs:[rax + rax]
.label_594:
	inc	rax
	add	rcx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_600
.label_585:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_574:
	ret	
.label_566:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4071a0

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp + 8]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_620
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_626
	cmp	qword ptr [rsp + 0x10], 0
	jle	.label_626
	xor	r13d, r13d
	lea	r14, [rsp + 8]
	nop	word ptr [rax + rax]
.label_625:
	mov	rax, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	rdx, r8
	shl	rdx, 4
	movzx	r9d, byte ptr [rax + rdx + 8]
	cmp	r9d, 4
	jne	.label_621
	cmp	qword ptr [rsp + 0x10], 0
	mov	esi, 0
	jle	.label_623
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsp + 0x18]
	add	rdx, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_627:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	cmp	byte ptr [rdi + rbx + 8], 9
	jne	.label_619
	mov	rbx, qword ptr [rdi + rbx]
	cmp	rbx, qword ptr [rdx]
	je	.label_623
.label_619:
	inc	rsi
	cmp	rsi, rax
	jl	.label_627
.label_623:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 0x10]
	je	.label_621
	test	al, al
	jne	.label_621
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_621
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_620
	nop	word ptr cs:[rax + rax]
.label_621:
	inc	r13
	cmp	r13, qword ptr [rsp + 0x10]
	jl	.label_625
.label_626:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 8]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_618
	cmp	byte ptr [rax + 0x68], 0
	js	.label_622
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_624
.label_622:
	lea	rbx, [rsp + 4]
	lea	r14, [rsp + 8]
	mov	ecx, 1
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x58], rax
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_618
	test	rax, rax
	je	.label_618
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_618
.label_624:
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	xor	eax, eax
.label_620:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_618:
	mov	eax, dword ptr [rsp + 4]
	jmp	.label_620
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073b0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	byte ptr [rdx + 0x88], r8b
	test	rcx, rcx
	setne	al
	or	al, r8b
	mov	byte ptr [rdx + 0x8b], al
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 2
	and	al, 1
	mov	byte ptr [rdx + 0x89], al
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	and	al, 1
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407420

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_628
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_629
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_629
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_628
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_629
	mov	qword ptr [rbx + 0x18], rax
.label_628:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_630
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_629
	mov	qword ptr [rbx + 8], rax
.label_630:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_629:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4074b0

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x30]
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	cmp	byte ptr [rbx + 0x8a], 0
	jne	.label_646
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_646
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_671
.label_646:
	mov	rdi, qword ptr [rbx + 0x38]
	jmp	.label_638
.label_671:
	cmp	r13, r15
	jle	.label_675
	lea	r14, [rbx + 0x20]
	mov	qword ptr [rsp + 0x10], r13
	jmp	.label_652
.label_632:
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_633
	cmp	r12, -2
	jne	.label_637
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_637
.label_633:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r15], al
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r12, -1
	jne	.label_634
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
	jmp	.label_634
	nop	
.label_652:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r15
	mov	rcx, qword ptr [rbx]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_650
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_650
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	movzx	eax, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	movzx	eax, byte ptr [rax + r15]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
.label_634:
	mov	rax, r15
	jmp	.label_658
	nop	
.label_650:
	mov	rdx, r13
	sub	rdx, r15
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	lea	rdi, [rsp + 0xc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	r12, rax
	lea	rax, [r12 - 1]
	cmp	rax, -4
	ja	.label_632
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	mov	r13d, eax
	cmp	r13d, dword ptr [rsp + 0xc]
	lea	rbp, [rsp + 0x30]
	jne	.label_674
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r15
	jmp	.label_631
	nop	word ptr cs:[rax + rax]
.label_674:
	mov	rdi, rbp
	mov	esi, r13d
	lea	rdx, [rsp + 0x18]
	call	wcrtomb
	cmp	r12, rax
	jne	.label_640
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_631:
	mov	rdx, r12
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	mov	dword ptr [rax + r15*4], r13d
	lea	rbp, [r12 + r15]
	lea	rax, [r15 + 1]
	cmp	rax, rbp
	mov	r13, qword ptr [rsp + 0x10]
	jge	.label_658
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rax + r15*4 + 4]
	lea	rdx, [r12*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_658:
	cmp	r13, rax
	mov	r15, rax
	jg	.label_652
	jmp	.label_654
.label_640:
	mov	rdi, r15
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_655
.label_637:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r14], rax
.label_675:
	mov	rax, r15
.label_654:
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_657
.label_638:
	cmp	r15, r13
	jge	.label_660
.label_655:
	mov	rdx, r13
	sub	rdx, r15
	lea	r12, [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	cmp	qword ptr [rbx + 0x78], 0
	mov	qword ptr [rsp + 0x10], r13
	mov	qword ptr [rsp + 0x28], rdi
	jne	.label_662
	mov	rbp, qword ptr [rbx]
	add	rbp, qword ptr [rbx + 0x28]
	add	rbp, rdi
.label_647:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rcx, r12
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r13, [r14 - 1]
	cmp	r13, -4
	ja	.label_664
	mov	edi, dword ptr [rsp + 0xc]
	call	towupper
	cmp	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0x24], eax
	je	.label_635
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x18]
	mov	esi, eax
	call	wcrtomb
	mov	rcx, rax
	sub	rax, r14
	jne	.label_639
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	jmp	.label_641
.label_662:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [rbx + 0x90], 0
	jle	.label_647
	xor	eax, eax
.label_663:
	cmp	rax, rdx
	jge	.label_647
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, rdi
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	byte ptr [rsp + rax + 0x30], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_663
	jmp	.label_647
.label_664:
	mov	rsi, r12
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_649
	cmp	r14, -2
	jne	.label_656
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_656
.label_649:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdi, qword ptr [rsp + 0x28]
	add	rax, rdi
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_661
.label_669:
	movzx	eax, al
	mov	rcx, qword ptr [rbx + 8]
	mov	byte ptr [rcx + r15], al
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	jne	.label_667
.label_672:
	inc	rdi
	mov	rcx, qword ptr [rbx + 0x10]
	mov	dword ptr [rcx + r15*4], eax
	inc	r15
	cmp	r14, -1
	je	.label_673
	mov	r12, r15
	jmp	.label_638
.label_639:
	cmp	rcx, -1
	je	.label_635
	mov	rsi, r12
	lea	r12, [rcx + r15]
	mov	rdi, qword ptr [rbx + 0x40]
	cmp	r12, rdi
	jbe	.label_642
.label_656:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	rdi, qword ptr [rsp + 0x28]
.label_660:
	mov	qword ptr [rbx + 0x30], r15
	mov	qword ptr [rbx + 0x38], rdi
.label_657:
	xor	eax, eax
.label_668:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_635:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	mov	rsi, rbp
.label_641:
	mov	rdx, r14
	call	memcpy
	cmp	byte ptr [rbx + 0x8c], 0
	mov	r13, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x28]
	jne	.label_645
.label_644:
	add	rdi, r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	lea	r12, [r14 + r15]
	inc	r15
	cmp	r15, r12
	jge	.label_651
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbp, rdi
	lea	rdi, [rax + r15*4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rdi, rbp
	mov	r15, r12
	jmp	.label_638
.label_651:
	mov	r12, r15
	jmp	.label_638
.label_645:
	lea	rax, [r15*8]
	add	rax, qword ptr [rbx + 0x18]
	mov	rcx, rdi
	mov	rdx, r14
.label_666:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_666
	jmp	.label_644
.label_642:
	mov	qword ptr [rsp + 0x10], rax
	cmp	qword ptr [rbx + 0x18], 0
	jne	.label_670
	shl	rdi, 3
	mov	rbp, rcx
	call	malloc
	mov	rcx, rbp
	mov	qword ptr [rbx + 0x18], rax
	test	rax, rax
	je	.label_676
.label_670:
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_643
	mov	rdx, rcx
	test	r15, r15
	je	.label_636
	mov	rax, qword ptr [rbx + 0x18]
	xor	ecx, ecx
.label_665:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r15, rcx
	jne	.label_665
.label_636:
	mov	byte ptr [rbx + 0x8c], 1
	mov	rcx, rdx
.label_643:
	mov	rdi, qword ptr [rbx + 8]
	add	rdi, r15
	lea	rsi, [rsp + 0x30]
	mov	rdx, rcx
	mov	rbp, rcx
	call	memcpy
	mov	rsi, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	ecx, dword ptr [rsp + 0x24]
	mov	dword ptr [rax + r15*4], ecx
	mov	rax, qword ptr [rbx + 0x18]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	qword ptr [rax + r15*8], rdi
	cmp	rsi, 2
	jb	.label_648
	lea	rax, [r15*4]
	add	rax, qword ptr [rbx + 0x10]
	shl	r15, 3
	add	r15, qword ptr [rbx + 0x18]
	mov	ecx, 1
.label_653:
	cmp	rcx, r14
	mov	rdx, r13
	cmovb	rdx, rcx
	add	rdx, rdi
	mov	qword ptr [r15 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rsi, rcx
	jne	.label_653
.label_648:
	mov	rbp, qword ptr [rsp + 0x10]
	add	qword ptr [rbx + 0x58], rbp
	cmp	qword ptr [rbx + 0x60], rdi
	jle	.label_659
	add	qword ptr [rbx + 0x68], rbp
.label_659:
	mov	r13, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r13, rax
	cmovg	r13, rax
	add	rdi, r14
	mov	r15, r12
	jmp	.label_638
.label_676:
	mov	eax, 0xc
	jmp	.label_668
.label_661:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_669
.label_667:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + r15*8], rdi
	jmp	.label_672
.label_673:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi], rax
	mov	r12, r15
	jmp	.label_638
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407a10

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	cmp	r15, rax
	cmovg	r15, rax
	cmp	rbx, r15
	jl	.label_677
	jmp	.label_678
.label_680:
	movzx	ecx, byte ptr [rax + rdx]
	jmp	.label_679
	nop	dword ptr [rax + rax]
.label_677:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	movzx	ecx, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_680
.label_679:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_677
	mov	rbx, r15
.label_678:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407a80

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r13, rdi
	mov	rbx, qword ptr [r13 + 0x30]
	mov	r12, qword ptr [r13 + 0x40]
	mov	rax, qword ptr [r13 + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, rbx
	jle	.label_681
	lea	r14, [r13 + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_688
	nop	dword ptr [rax + rax]
.label_685:
	mov	rax, qword ptr [r13 + 0x28]
	add	rax, rbx
	mov	rcx, qword ptr [r13]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [r13 + 0x78]
	test	rcx, rcx
	jne	.label_687
.label_691:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_682:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [r13 + 0x10]
	mov	dword ptr [rdx + rbx*4], ecx
	lea	rbp, [rax + rbx]
	lea	rcx, [rbx + 1]
	cmp	rcx, rbp
	jge	.label_690
	mov	rcx, qword ptr [r13 + 0x10]
	lea	rdi, [rcx + rbx*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_690:
	cmp	r12, rcx
	mov	rbx, rcx
	jg	.label_688
	jmp	.label_689
.label_686:
	cmp	dword ptr [r13 + 0x90], 0
	lea	rsi, [rsp + 0x10]
	jle	.label_684
	xor	eax, eax
.label_683:
	cmp	rax, rdx
	jge	.label_692
	mov	rcx, qword ptr [r13]
	mov	rsi, qword ptr [r13 + 0x78]
	add	rcx, qword ptr [r13 + 0x28]
	add	rcx, rbx
	movzx	ecx, byte ptr [rax + rcx]
	movzx	ecx, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [r13 + 8]
	add	rsi, rbx
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [r13 + 0x90]
	cmp	rax, rcx
	jl	.label_683
	lea	rsi, [rsp + 0x10]
	jmp	.label_684
.label_687:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_691
.label_692:
	lea	rsi, [rsp + 0x10]
	jmp	.label_684
.label_688:
	mov	rdx, r12
	sub	rdx, rbx
	mov	rbp, qword ptr [r13 + 0x20]
	cmp	qword ptr [r13 + 0x78], 0
	jne	.label_686
	mov	rsi, qword ptr [r13]
	add	rsi, qword ptr [r13 + 0x28]
	add	rsi, rbx
.label_684:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_685
	cmp	rax, -2
	jne	.label_682
	mov	rax, qword ptr [r13 + 0x40]
	cmp	rax, qword ptr [r13 + 0x58]
	jge	.label_685
	mov	qword ptr [r14], rbp
.label_681:
	mov	rcx, rbx
.label_689:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c00

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_693
	nop	dword ptr [rax + rax]
.label_694:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	movzx	ecx, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_694
	mov	rax, r8
.label_693:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c50

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	call	peek_token
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c70

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13, rdx
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp], rcx
	mov	qword ptr [rsp + 8], r8
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_700
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_699
.label_700:
	mov	r14, qword ptr [rsp]
	or	r14, 0x800000
	nop	dword ptr [rax + rax]
.label_698:
	cmp	byte ptr [r13 + 8], 0xa
	jne	.label_701
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	mov	edx, 0
	je	.label_696
	cmp	qword ptr [rsp + 8], 0
	je	.label_702
	cmp	eax, 9
	mov	edx, 0
	je	.label_696
.label_702:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x20], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp]
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_695
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_697
.label_695:
	mov	rax, qword ptr [rsp + 0x20]
	or	qword ptr [rbp + 0xa8], rax
	nop	
.label_696:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_698
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_699
.label_701:
	mov	r14, rbx
.label_699:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_697:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_699
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_699
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dc0

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407de0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbp, rsi
	mov	r12, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_746
	mov	qword ptr [rsp], rdx
	mov	rcx, qword ptr [rbp + 8]
	mov	bl, byte ptr [rcx + rax]
	mov	byte ptr [r12], bl
	mov	eax, dword ptr [r12 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r12 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_703
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_703
	mov	rdx, qword ptr [rbp + 0x10]
	cmp	dword ptr [rdx + rcx*4], -1
	je	.label_714
.label_703:
	cmp	bl, 0x5c
	jne	.label_752
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_715
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r15d, eax
	mov	byte ptr [r12], r15b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r12 + 8]
	or	ebx, 1
	mov	dword ptr [r12 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_722
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r12 + 8]
	jmp	.label_742
.label_746:
	mov	byte ptr [r12 + 8], 2
	xor	r14d, r14d
.label_553:
	mov	eax, r14d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_752:
	mov	r15d, 0xffffff00
	and	r15d, dword ptr [r12 + 8]
	or	r15d, 1
	mov	dword ptr [r12 + 8], r15d
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_747
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	r14d, eax
	mov	edi, r14d
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	r14d, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	r15d, 0xffbfffff
	and	r15d, dword ptr [r12 + 8]
	jmp	.label_707
.label_715:
	mov	byte ptr [r12 + 8], 0x24
	mov	r14d, 1
	jmp	.label_553
.label_747:
	movzx	r14d, byte ptr [r12]
	xor	r13d, r13d
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	shr	eax, 3
	and	eax, 1
	or	eax, r13d
	shl	eax, 0x16
	and	r15d, 0xffbfff01
.label_707:
	or	r15d, eax
	mov	dword ptr [r12 + 8], r15d
	mov	r14d, 1
	add	bl, 0xf6
	movzx	eax, bl
	cmp	al, 0x73
	ja	.label_553
	jmp	qword ptr [(rax * 8) + label_731]
.label_1872:
	mov	rax, qword ptr [rsp]
	test	ah, 8
	je	.label_553
	jmp	.label_612
.label_722:
	movzx	ebp, r15b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	xor	ecx, ecx
	cmp	r15b, 0x5f
	sete	cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_742:
	or	ebx, eax
	mov	dword ptr [r12 + 8], ebx
	movzx	eax, r15b
	mov	r14d, 2
	add	r15b, 0xd9
	movzx	ecx, r15b
	cmp	cl, 0x56
	ja	.label_553
	jmp	qword ptr [(rcx * 8) + label_754]
.label_1901:
	mov	rcx, qword ptr [rsp]
	test	ch, 0x40
	jne	.label_553
	mov	byte ptr [r12 + 8], 4
	add	rax, -0x31
	mov	qword ptr [r12], rax
	jmp	.label_553
.label_714:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r12 + 8], eax
	mov	r14d, 1
	jmp	.label_553
.label_1873:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_560
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_560
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_553
.label_560:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x20
	jmp	.label_553
.label_1874:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_553
	and	r15d, 0xffffff00
	or	r15d, 8
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1875:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	je	.label_553
	and	r15d, 0xffffff00
	or	r15d, 9
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1876:
	and	r15d, 0xffffff00
	or	r15d, 0xb
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1877:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_553
	and	r15d, 0xffffff00
	or	r15d, 0x12
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1878:
	and	r15d, 0xffffff00
	or	r15d, 5
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1879:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_553
	and	r15d, 0xffffff00
	or	r15d, 0x13
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1880:
	and	r15d, 0xffffff00
	or	r15d, 0x14
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1881:
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_598
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_598
	test	ch, 8
	je	.label_553
	mov	rcx, qword ptr [rbp + 8]
	cmp	byte ptr [rcx + rax - 1], 0xa
	jne	.label_553
.label_598:
	mov	byte ptr [r12 + 8], 0xc
	mov	dword ptr [r12], 0x10
	jmp	.label_553
.label_1882:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_553
	and	r15d, 0xffffff00
	or	r15d, 0x17
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1883:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_553
	test	ax, ax
	jns	.label_553
.label_612:
	and	r15d, 0xffffff00
	or	r15d, 0xa
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1884:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	jne	.label_553
	and	r15d, 0xffffff00
	or	r15d, 0x18
	mov	dword ptr [r12 + 8], r15d
	jmp	.label_553
.label_1897:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x80
	jmp	.label_553
.label_1898:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1899:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1900:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1902:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 6
	jmp	.label_553
.label_1903:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 9
	jmp	.label_553
.label_1904:
	mov	rax, qword ptr [rsp]
	and	eax, 0x402
	cmp	rax, 2
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1905:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x200
	jmp	.label_553
.label_1906:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1907:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1908:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x40
	jmp	.label_553
.label_1909:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r12 + 8], ebx
	mov	dword ptr [r12], 0x100
	jmp	.label_553
.label_1910:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1911:
	mov	rax, qword ptr [rsp]
	test	eax, 0x80000
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1912:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1913:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_553
	test	ax, ax
	js	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
.label_1914:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x200
	jne	.label_553
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r12 + 8], ebx
	jmp	.label_553
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_756
.label_757:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rax + rcx + 1]
.label_760:
	ret	
.label_756:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_759
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_757
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_759
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_757
.label_759:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_761
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_758
.label_761:
	inc	rax
.label_758:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_760
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	jne	.label_757
	jmp	.label_760
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408520

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_762
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_762:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408540

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	r13, rdx
	mov	rbp, rsi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp + 0x10], rcx
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_764
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_764
	jmp	.label_763
	nop	word ptr cs:[rax + rax]
.label_768:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_764:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	cl, 8
	cmp	cl, 0xa
	je	.label_766
	test	r12, r12
	je	.label_769
	cmp	eax, 9
	je	.label_766
.label_769:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_765
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_767
.label_765:
	test	rbx, rbx
	je	.label_768
	test	r15, r15
	je	.label_768
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_764
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	jmp	.label_763
.label_766:
	mov	r15, rbx
.label_763:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_767:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_763
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_763
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408670

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_772
	nop	dword ptr [rax]
.label_770:
	mov	rdi, qword ptr [rbx + 0x10]
.label_772:
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_772
	cmp	qword ptr [rbx + 0x10], 0
	je	.label_771
	mov	rdi, qword ptr [rbx + 8]
	test	rdi, rdi
	jne	.label_772
	jmp	.label_770
	nop	word ptr cs:[rax + rax]
.label_771:
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_773
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_773
	mov	rdi, qword ptr [rcx + 0x10]
	cmp	rdi, rbx
	mov	rbx, rcx
	je	.label_771
	test	rdi, rdi
	mov	rbx, rcx
	je	.label_771
	jmp	.label_772
.label_773:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rax
	lea	rdi, [rsi + 0x28]
	call	free_token
	xor	eax, eax
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	r13, rdx
	mov	r12, rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	r15d, ecx
	and	r15d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	rax, rcx
	mov	qword ptr [rsp + 0x18], rax
	mov	ebp, ecx
	and	ebp, 0x10
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_774
	nop	word ptr [rax + rax]
.label_605:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_774:
	movzx	eax, byte ptr [r13 + 8]
	dec	al
	movzx	eax, al
	cmp	al, 0x23
	ja	.label_557
	mov	r14, qword ptr [r12]
	jmp	qword ptr [(rax * 8) + label_739]
.label_1927:
	test	r15, r15
	jne	.label_603
.label_1924:
	test	rbx, rbx
	jne	.label_603
	test	rbp, rbp
	jne	.label_605
.label_1923:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_599
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_599
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_582
.label_603:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
	jmp	.label_582
.label_599:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_555
	jmp	.label_564
.label_1928:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x21
	sete	r8b
	mov	edx, OFFSET FLAT:label_613
	mov	ecx, OFFSET FLAT:label_614
	jmp	.label_615
.label_1929:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	xor	r8d, r8d
	cmp	byte ptr [r13 + 8], 0x23
	sete	r8b
	mov	edx, OFFSET FLAT:label_554
	mov	ecx, OFFSET FLAT:label_31
.label_615:
	mov	rdi, r14
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_561
.label_1919:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_564
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_555
	mov	r15, qword ptr [rsp + 0x10]
.label_584:
	mov	rax, qword ptr [r15 + 0x48]
	cmp	qword ptr [r15 + 0x68], rax
	jle	.label_555
	cmp	rax, qword ptr [r15 + 0x30]
	je	.label_555
	mov	rcx, qword ptr [r15 + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_555
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	ecx, 0x10
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	rbp, rax
	test	rbx, rbx
	je	.label_564
	test	rbp, rbp
	jne	.label_584
	jmp	.label_564
.label_1920:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r14 + 0xa8], rax
	je	.label_579
	or	qword ptr [r14 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_564
	inc	qword ptr [r14 + 0x98]
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_555
.label_1921:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_564
	cmp	dword ptr [r14 + 0xb4], 2
	jl	.label_555
	or	byte ptr [r14 + 0xb0], 2
	jmp	.label_555
.label_1922:
	mov	r8, qword ptr [rsp + 0x20]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
	jmp	.label_561
.label_1925:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	mov	r15, qword ptr [rsp + 0x10]
	je	.label_606
	test	byte ptr [r14 + 0xb0], 0x10
	jne	.label_607
	mov	rdi, r14
	call	init_word_char
.label_607:
	mov	eax, dword ptr [r13]
.label_606:
	cmp	eax, 0x200
	je	.label_608
	cmp	eax, 0x100
	jne	.label_609
.label_608:
	cmp	dword ptr [r13], 0x100
	jne	.label_610
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_602
.label_1926:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
.label_561:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_555
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_557
.label_555:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	r15d, ebx
	and	r15d, 0x1000000
	mov	r12d, 0x8c0800
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_573:
	movzx	eax, byte ptr [r13 + 8]
	cmp	rax, 0x17
	ja	.label_563
	bt	r12, rax
	jae	.label_563
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdx, r14
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x18]
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_596
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_570
.label_596:
	test	r15, r15
	mov	rbp, rax
	je	.label_573
	movzx	ecx, byte ptr [r13 + 8]
	cmp	cl, 0x17
	je	.label_611
	cmp	cl, 0xb
	mov	rbp, rax
	jne	.label_573
.label_611:
	test	rax, rax
	je	.label_576
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_576:
	mov	dword ptr [rbx], 0xd
.label_582:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	jmp	.label_557
.label_563:
	mov	qword ptr [rsp], rbp
.label_557:
	mov	rax, qword ptr [rsp]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1930:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_582
.label_609:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	jmp	.label_587
.label_610:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_602:
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r14
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_564
	test	rbp, rbp
	je	.label_564
.label_587:
	test	rax, rax
	je	.label_564
	mov	qword ptr [rsp], rax
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_557
.label_570:
	xor	eax, eax
	mov	qword ptr [rsp], rax
	test	rbp, rbp
	je	.label_557
	xor	eax, eax
	mov	qword ptr [rsp], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbp
	call	postorder
	jmp	.label_557
.label_564:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_582
.label_579:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_582
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bd0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	je	.label_775
.label_777:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	movups	xmm0, xmmword ptr [r15]
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	je	.label_778
	mov	qword ptr [r12], rax
.label_778:
	test	r14, r14
	je	.label_776
	mov	qword ptr [r14], rax
.label_776:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_775:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_776
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_777
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c90

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	mov	r12, qword ptr [r14 + 0x30]
	lea	rax, [r12 + 1]
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	mov	rdi, rbx
	mov	rsi, r15
	call	fetch_token
	xor	r8d, r8d
	cmp	byte ptr [rbx + 8], 9
	je	.label_783
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_779
	cmp	byte ptr [rbx + 8], 9
	jne	.label_781
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_779
.label_783:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_782
	mov	eax, 1
	mov	ecx, r12d
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_782:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_780
	mov	qword ptr [rax + 0x28], r12
.label_779:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_780:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_779
.label_781:
	test	r8, r8
	je	.label_784
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_784:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_779
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408d90

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xc8
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x28], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x88], 0
	mov	qword ptr [rsp + 0x48], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_791
	test	r14, r14
	je	.label_791
	mov	rsi, rbp
	mov	rdi, r12
	mov	qword ptr [rsp + 0x40], rsi
	mov	rbx, qword ptr [rsp + 0x28]
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	mov	al, byte ptr [r12 + 8]
	cmp	al, 0x19
	je	.label_786
	cmp	al, 2
	je	.label_788
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_789
.label_786:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_790
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_790:
	movsxd	rax, ebp
	mov	rsi, qword ptr [rsp + 0x40]
	add	qword ptr [rsi + 0x48], rax
	mov	rdi, r12
	mov	rdx, qword ptr [rsp + 0x28]
	call	peek_token_bracket
	mov	ebp, eax
	cmp	byte ptr [r12 + 8], 2
	je	.label_788
	mov	al, 1
	mov	dword ptr [rsp + 0x24], eax
.label_789:
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x38], r13
	mov	eax, dword ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_785
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_785:
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	lea	rdi, [rsp + 8]
	mov	r9d, 1
	mov	r13, qword ptr [rsp + 0x40]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbx, qword ptr [rsp + 0x28]
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_592
	xor	eax, eax
	mov	qword ptr [rsp + 0x30], rax
	lea	rbp, [rsp + 0x48]
	jmp	.label_590
	nop	word ptr cs:[rax + rax]
.label_588:
	cmp	al, 2
	je	.label_583
	lea	rax, [rsp + 0x50]
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 8], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_590
	jmp	.label_592
.label_572:
	lea	rax, [rbx + rbx]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_604
	lea	rcx, [rbx + rbx + 1]
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_597
	nop	dword ptr [rax]
.label_590:
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 8]
	cmp	eax, 2
	je	.label_728
	cmp	eax, 4
	je	.label_728
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x16
	je	.label_730
	cmp	al, 2
	jne	.label_732
	jmp	.label_583
.label_730:
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	lea	rdi, [rsp + 0x90]
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x98]
	cmp	cl, 0x15
	je	.label_738
	cmp	cl, 2
	lea	rdx, [rsp + 0x78]
	je	.label_583
	lea	rcx, [rsp + 0xa0]
	mov	qword ptr [rsp + 0x80], rcx
	mov	dword ptr [rsp + 0x78], 3
	mov	r9d, 1
	mov	rdi, rdx
	mov	rsi, r13
	lea	rdx, [rsp + 0x90]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_592
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	mov	edx, 0
	cmovg	rdx, qword ptr [rsp + 0x18]
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0x88]
	lea	r8, [rsp + 8]
	lea	r9, [rsp + 0x78]
	call	build_range_exp
	jmp	.label_578
.label_738:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [r13 + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_732:
	mov	eax, dword ptr [rsp + 8]
.label_728:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_724
	jmp	qword ptr [(rcx * 8) + label_729]
.label_1825:
	movzx	esi, byte ptr [rsp + 0x10]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_571
.label_1826:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 0x30], rbx
	je	.label_572
.label_597:
	mov	eax, dword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rbx, qword ptr [rsp + 0x28]
	lea	rbp, [rsp + 0x48]
	jmp	.label_571
.label_1827:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_578
.label_1828:
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_578
.label_1829:
	mov	rdi, qword ptr [r13 + 0x78]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, rbp
	mov	r9, rbx
	call	build_charclass
.label_578:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	test	eax, eax
	jne	.label_586
.label_571:
	movzx	eax, byte ptr [r12 + 8]
	cmp	al, 0x15
	jne	.label_588
	movsxd	rax, r14d
	add	qword ptr [r13 + 0x48], rax
	mov	eax, dword ptr [rsp + 0x24]
	test	al, al
	je	.label_591
	mov	rdi, r15
	call	bitset_not
.label_591:
	mov	rbx, qword ptr [rsp + 0x38]
	cmp	dword ptr [rbx + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x18]
	jl	.label_595
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_595:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_559
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_559
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_559
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_559
	cmp	dword ptr [rbx + 0xb4], 2
	jl	.label_601
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_559
	test	byte ptr [r14 + 0x20], 1
	jne	.label_559
.label_601:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	jmp	.label_556
.label_559:
	or	byte ptr [rbx + 0xb0], 2
	mov	byte ptr [rsp + 0x58], 6
	mov	qword ptr [rsp + 0x50], r14
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_558
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_617:
	cmp	qword ptr [r15 + rax*8], 0
	jne	.label_616
	inc	rax
	cmp	rax, 3
	jle	.label_617
	mov	rdi, r15
	call	free
	jmp	.label_552
.label_616:
	mov	byte ptr [rsp + 0x58], 3
	mov	qword ptr [rsp + 0x50], r15
	lea	rcx, [rsp + 0x50]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, rbx
	call	create_token_tree
	test	rax, rax
	je	.label_558
	mov	ecx, 0xa
	mov	rdi, rbx
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_556:
	mov	rbp, rax
	test	rbp, rbp
	je	.label_558
.label_552:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_583:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 7
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_565
.label_592:
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
.label_586:
	mov	r14, qword ptr [rsp + 0x18]
	jmp	.label_565
.label_788:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 2
	jmp	.label_565
.label_791:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_787
.label_724:
	mov	edi, OFFSET FLAT:label_734
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:label_735
	call	__assert_fail
.label_604:
	mov	r14, rbp
.label_558:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
.label_565:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_787:
	xor	ebp, ebp
	jmp	.label_552
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092f0

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	al, byte ptr [rbx + 0xb0]
	mov	ecx, eax
	or	cl, 0x10
	mov	byte ptr [rbx + 0xb0], cl
	xor	r14d, r14d
	test	al, 8
	mov	r15d, 0
	jne	.label_794
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [rbx + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [rbx + 0xc0], rax
	mov	r15d, 2
	mov	r14d, 0x80
	test	byte ptr [rbx + 0xb0], 4
	je	.label_794
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0xc8], xmm0
.label_795:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_794:
	call	__ctype_b_loc
	lea	rdx, [r14 + r14]
	add	rdx, qword ptr [rax]
.label_793:
	mov	rax, rdx
	xor	ecx, ecx
	nop	
.label_796:
	lea	esi, [r14 + rcx]
	cmp	esi, 0x5f
	je	.label_792
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_797
.label_792:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [rbx + r15*8 + 0xb8], rsi
.label_797:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_796
	inc	r15
	add	r14, 0x40
	sub	rdx, -0x80
	cmp	r15d, 4
	jne	.label_793
	jmp	.label_795
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4093c0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	r13d, r8d
	mov	rbp, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_808
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_805
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	or	al, r13b
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, qword ptr [rsp + 0x18]
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_802
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_806
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_809:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	movzx	eax, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_809
.label_806:
	test	r13b, r13b
	je	.label_801
	mov	rdi, rbx
	call	bitset_not
.label_801:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_804
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_804:
	mov	byte ptr [rsp + 0x10], 3
	mov	qword ptr [rsp + 8], rbx
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_800
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_807
	mov	byte ptr [rsp + 0x10], 6
	mov	qword ptr [rsp + 8], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_800
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_803
.label_807:
	mov	rdi, r12
	call	free_charset
.label_803:
	mov	rax, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_800:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_798
.label_808:
	mov	dword ptr [r12], 0xc
	jmp	.label_799
.label_805:
	mov	rdi, rbx
	call	free
.label_798:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_799
.label_802:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_799:
	xor	ebp, ebp
	jmp	.label_803
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409580

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, r8
	mov	r14, rcx
	mov	r15, rdx
	mov	r12, rdi
	mov	rcx, qword ptr [rsi + 0x48]
	movups	xmm0, xmmword ptr [r14]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r14 + 8]
	cmp	eax, 0x17
	mov	qword ptr [rsp], r9
	jne	.label_810
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdi, rsi
	mov	rsi, r14
	mov	rax, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rdx, rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_824
	cmp	byte ptr [r14 + 8], 1
	mov	rsi, qword ptr [rsp + 0x10]
	jne	.label_818
	xor	ebx, ebx
	cmp	byte ptr [r14], 0x2c
	je	.label_828
	jmp	.label_818
.label_810:
	xor	ebx, ebx
	cmp	eax, 0x12
	sete	bl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_827:
	mov	rdi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_813
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_819
	test	rbx, rbx
	jg	.label_822
.label_825:
	cmp	byte ptr [r12 + 0x30], 0x11
	jne	.label_823
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_823:
	xor	ecx, ecx
	cmp	r13, -1
	sete	cl
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_811
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_812
	inc	rbx
	nop	dword ptr [rax + rax]
.label_821:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, r12
	call	create_tree
	test	r12, r12
	je	.label_811
	test	rax, rax
	je	.label_811
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_811
	inc	rbx
	cmp	rbx, r13
	jl	.label_821
.label_812:
	test	r14, r14
	je	.label_829
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_813
.label_824:
	cmp	rbx, -2
	mov	rsi, qword ptr [rsp + 0x10]
	je	.label_815
.label_828:
	mov	al, byte ptr [r14 + 8]
	cmp	al, 0x18
	mov	r13, rbx
	je	.label_816
	cmp	al, 1
	jne	.label_815
	cmp	byte ptr [r14], 0x2c
	jne	.label_815
	mov	rdi, rsi
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	rsi, qword ptr [rsp + 0x10]
	mov	r13, rax
	cmp	r13, -2
	je	.label_815
.label_816:
	cmp	r13, -1
	je	.label_826
	cmp	rbx, r13
	jg	.label_818
.label_826:
	cmp	byte ptr [r14 + 8], 0x18
	jne	.label_818
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_827
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_813
.label_818:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_813
.label_829:
	mov	r14, rbp
	jmp	.label_813
.label_815:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_817
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsi + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r14], xmm0
	mov	byte ptr [r14 + 8], 1
	mov	r14, r12
.label_813:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_819:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_813
.label_822:
	cmp	rbx, 1
	jne	.label_830
	mov	r14, r12
	jmp	.label_814
.label_830:
	mov	ebp, 1
	mov	r14, r12
.label_820:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r12
	call	create_tree
	mov	r14, rax
	test	r12, r12
	je	.label_811
	test	r14, r14
	je	.label_811
	inc	rbp
	cmp	rbp, rbx
	jl	.label_820
.label_814:
	cmp	rbx, r13
	je	.label_813
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_825
.label_811:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
	jmp	.label_813
.label_817:
	xor	eax, eax
	cmp	byte ptr [r14 + 8], 2
	setne	al
	add	eax, 9
	mov	rcx, qword ptr [rsp]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_813
	nop	
	.section	.text
	.align	32
	#Procedure 0x409890

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_835
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_833
	mov	r8, qword ptr [rsi + 0x48]
	cmp	r8, qword ptr [rsi + 0x30]
	je	.label_833
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + r8*4], -1
	je	.label_837
.label_833:
	test	dl, 1
	je	.label_831
	cmp	al, 0x5c
	jne	.label_831
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_831
	mov	qword ptr [rsi + 0x48], rcx
	mov	rax, qword ptr [rsi + 8]
	mov	al, byte ptr [rax + rcx]
	mov	byte ptr [rdi], al
	jmp	.label_837
.label_835:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_831:
	cmp	al, 0x5c
	jg	.label_839
	cmp	al, 0x2d
	je	.label_840
	cmp	al, 0x5b
	jne	.label_837
	mov	rcx, qword ptr [rsi + 0x48]
	inc	rcx
	cmp	rcx, qword ptr [rsi + 0x58]
	jge	.label_841
	mov	rsi, qword ptr [rsi + 8]
	mov	cl, byte ptr [rsi + rcx]
	mov	byte ptr [rdi], cl
	cmp	cl, 0x3d
	je	.label_832
	cmp	cl, 0x3a
	je	.label_836
	cmp	cl, 0x2e
	jne	.label_834
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_839:
	cmp	al, 0x5d
	je	.label_838
	cmp	al, 0x5e
	jne	.label_837
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_837:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_840:
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_838:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_841:
	mov	byte ptr [rdi], 0
.label_834:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], al
	mov	eax, 1
	ret	
.label_832:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_836:
	test	dl, 4
	je	.label_834
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	.section	.text
	.align	32
	#Procedure 0x409980

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	ecx, esi
	shl	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4099b0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0xc], r9d
	mov	qword ptr [rsp + 0x10], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	r13, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	jl	.label_843
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
.label_727:
	xor	eax, eax
.label_723:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_843:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	mov	al, byte ptr [r14 + 8]
	add	al, 0xea
	movzx	eax, al
	cmp	al, 8
	ja	.label_717
	jmp	qword ptr [(rax * 8) + label_842]
.label_1842:
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_1841:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	jne	.label_717
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x10]
	call	peek_token_bracket
	mov	eax, 0xb
	cmp	byte ptr [rsp + 0x20], 0x15
	jne	.label_723
.label_717:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
	jmp	.label_727
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409a90

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	je	.label_845
	cmp	ecx, 4
	je	.label_845
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_845
	cmp	edx, 4
	je	.label_845
	cmp	ecx, 3
	jne	.label_860
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_845
.label_860:
	cmp	dword ptr [rbx], 3
	jne	.label_865
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_845
.label_865:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_847
	test	eax, eax
	jne	.label_849
	mov	al, byte ptr [rbp + 8]
	jmp	.label_850
.label_847:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_850
.label_849:
	xor	eax, eax
.label_850:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_853
	test	ecx, ecx
	jne	.label_855
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_856
.label_853:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_856
.label_855:
	xor	edx, edx
.label_856:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_858
	test	ecx, ecx
	jne	.label_859
.label_858:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_862
.label_859:
	mov	ebp, dword ptr [rbp + 8]
.label_862:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_854
	test	eax, eax
	jne	.label_864
.label_854:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_846
.label_864:
	mov	ebx, dword ptr [rbx + 8]
.label_846:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_845
	cmp	ebx, -1
	je	.label_845
	test	r12d, 0x10000
	je	.label_848
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_845
.label_848:
	test	r14, r14
	je	.label_851
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_852
.label_861:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_851:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_844:
	cmp	rbp, rbx
	ja	.label_863
	cmp	rbx, r14
	ja	.label_863
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_863:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_844
.label_845:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_852:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 8], rsi
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 8]
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rdi, rax
	test	rax, rax
	je	.label_857
	cmp	qword ptr [rsp + 8], 0
	je	.label_857
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r15], rax
	jmp	.label_861
.label_857:
	call	free
	mov	rdi, qword ptr [rsp + 8]
	call	free
	mov	eax, 0xc
	jmp	.label_845
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409ca0

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_866
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_866:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ce0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_867
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_867:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409d20

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	test	r9d, 0x400000
	je	.label_881
	mov	esi, OFFSET FLAT:label_886
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_900
	mov	esi, OFFSET FLAT:label_902
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_881
.label_900:
	mov	r12d, OFFSET FLAT:label_907
.label_881:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_915
.label_926:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:label_613
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_921
	mov	esi, OFFSET FLAT:label_923
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_927
	mov	esi, OFFSET FLAT:label_902
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_931
	mov	esi, OFFSET FLAT:label_554
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_932
	mov	esi, OFFSET FLAT:label_907
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_939
	mov	esi, OFFSET FLAT:label_941
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_871
	mov	esi, OFFSET FLAT:label_940
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_928
	mov	esi, OFFSET FLAT:label_886
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_892
	mov	esi, OFFSET FLAT:label_909
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_897
	mov	esi, OFFSET FLAT:label_901
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_905
	mov	esi, OFFSET FLAT:label_908
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_913
	mov	esi, OFFSET FLAT:label_914
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_872
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_919
.label_917:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_868
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_868:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_917
	jmp	.label_872
.label_921:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_875
	nop	word ptr [rax + rax]
.label_869:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_920
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_920:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_869
	jmp	.label_872
.label_927:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_878
	nop	dword ptr [rax + rax]
.label_894:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_889
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_889:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_894
	jmp	.label_872
.label_931:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_935
	nop	dword ptr [rax + rax]
.label_916:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_910
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_910:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_916
	jmp	.label_872
.label_932:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_885
	nop	dword ptr [rax]
.label_929:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_925
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_925:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_929
	jmp	.label_872
.label_939:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_899
	nop	dword ptr [rax]
.label_870:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_937
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_937:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_870
	jmp	.label_872
.label_871:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_879
	nop	dword ptr [rax]
.label_895:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_882
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_882:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_895
	jmp	.label_872
.label_928:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_904
	nop	dword ptr [rax]
.label_884:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_887
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_887:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_884
	jmp	.label_872
.label_892:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_918
	nop	dword ptr [rax]
.label_893:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_924
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_924:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_893
	jmp	.label_872
.label_897:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_874
	nop	dword ptr [rax]
.label_880:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_888
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_888:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_880
	jmp	.label_872
.label_875:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_876
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_876:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_875
	jmp	.label_872
.label_905:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_883
.label_912:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_903
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_903:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_912
	jmp	.label_872
.label_878:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_933
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_933:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_878
	jmp	.label_872
.label_913:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_890
.label_930:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_896
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_896:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_930
.label_872:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_935:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_936
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_936:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_935
	jmp	.label_872
.label_885:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_873
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_873:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_885
	jmp	.label_872
.label_899:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_891
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_891:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_899
	jmp	.label_872
.label_879:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_906
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_906:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_879
	jmp	.label_872
.label_915:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_872
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_926
.label_904:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_922
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_922:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_904
	jmp	.label_872
.label_918:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_938
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_938:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_918
	jmp	.label_872
.label_874:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_877
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_877:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_874
	jmp	.label_872
.label_883:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_934
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_934:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_883
	jmp	.label_872
.label_890:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_911
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_911:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_890
	jmp	.label_872
.label_919:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_898
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_898:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_919
	jmp	.label_872
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a3d0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_942:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_942
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a3f0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_943:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_943
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a420

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_944
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_944
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_945:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_944
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_945
.label_944:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r12, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_709
	mov	r13b, byte ptr [r12]
	mov	rbp, -1
	nop	
.label_750:
	cmp	byte ptr [r12 + 8], 0x1e
	jne	.label_733
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_737
	nop	word ptr cs:[rax + rax]
.label_733:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	eax, byte ptr [rcx + rax]
.label_737:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_709
	cmp	al, r13b
	jne	.label_745
	mov	rdx, qword ptr [rbx + 8]
	cmp	byte ptr [rdx + rcx], 0x5d
	je	.label_748
.label_745:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_750
.label_709:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_748:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	al, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	al, 0x1e
	je	.label_705
	cmp	al, 0x1c
	je	.label_744
	cmp	al, 0x1a
	jne	.label_709
	mov	dword ptr [r15], 3
	jmp	.label_709
.label_705:
	mov	dword ptr [r15], 4
	jmp	.label_709
.label_744:
	mov	dword ptr [r15], 2
	jmp	.label_709
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a550

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_949
	mov	rax, qword ptr [rbx + 0x48]
.label_948:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_947:
	mov	bpl, byte ptr [rcx + rax]
.label_950:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_949:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_952
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_946
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_948
.label_946:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_951
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_950
.label_952:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_947
.label_951:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_950
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a600

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_953
	jmp	btowc
.label_953:
	mov	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a610

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rcx, -1
	mov	r13d, 0x8000
	jmp	.label_954
.label_957:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_954:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	dl, 0x18
	je	.label_955
	cmp	dl, 2
	je	.label_956
	cmp	al, 0x2c
	je	.label_955
	cmp	al, 0x30
	mov	rcx, -2
	jb	.label_954
	cmp	edx, 1
	jne	.label_954
	cmp	rbx, -2
	je	.label_954
	cmp	al, 0x39
	ja	.label_954
	cmp	rbx, -1
	jne	.label_957
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_954
.label_956:
	mov	rbx, -2
.label_955:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a6c0

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx]
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_708
	lea	r13, [rsp]
	xor	r14d, r14d
.label_725:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_962
	lea	r13, [r12 + 8]
	jmp	.label_961
	nop	dword ptr [rax]
.label_962:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_958:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_960
	test	rbp, rbp
	jne	.label_963
.label_960:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_958
	jmp	.label_959
	nop	word ptr cs:[rax + rax]
.label_963:
	lea	r13, [r12 + 0x10]
.label_961:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_725
	jmp	.label_708
.label_959:
	mov	r14, qword ptr [rsp]
.label_708:
	mov	rax, r14
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
	.align	32
	#Procedure 0x408700

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	cmp	al, 0x11
	jne	.label_704
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_704
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_704:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a7c0

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_966
	nop	
.label_968:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	jne	.label_965
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_964:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_967
	test	r12, r12
	jne	.label_965
.label_967:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_964
	jmp	.label_966
.label_965:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_968
.label_966:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_711
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_711
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_711:
	cmp	byte ptr [rsi + 0x30], 0x11
	jne	.label_721
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_721
	cmp	byte ptr [rax + 0x30], 0x11
	jne	.label_721
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_726
	mov	qword ptr [rdx], rsi
.label_726:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_721
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_721:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	test	rdx, rdx
	je	.label_710
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_710
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_710
	mov	qword ptr [rax], rbx
.label_710:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_706
	cmp	byte ptr [rdx + 0x30], 0x11
	jne	.label_706
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_706
	mov	qword ptr [rax], rbx
.label_706:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	cmp	byte ptr [rbx + 0x30], 0x10
	jne	.label_751
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_713
.label_751:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_713
	xor	eax, eax
	cmp	byte ptr [rbx + 0x30], 0xc
	jne	.label_713
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_713:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl calc_next
	.type calc_next, @function
calc_next:
	mov	al, byte ptr [rsi + 0x30]
	cmp	al, 0x10
	je	.label_743
	cmp	al, 0xb
	jne	.label_736
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_743:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_741
.label_736:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_749
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_749:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_755
.label_741:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_755:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa20

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	mov	eax, dword ptr [rsi + 0x30]
	mov	edx, eax
	add	dl, 0xfe
	movzx	edx, dl
	cmp	dl, 0xe
	ja	.label_969
	jmp	qword ptr [(rdx * 8) + label_970]
.label_1859:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_753:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
sub_40aa5d:
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	mov	rdx, qword ptr [rsi + 0x10]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	js	.label_972
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_973
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_1857:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_712
	mov	edi, OFFSET FLAT:label_740
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:label_720
	call	__assert_fail
.label_1858:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	byte ptr [rsi + 0x30], 4
	jne	.label_712
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_753
.label_969:
	test	al, 8
	jne	.label_716
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_712:
	xor	eax, eax
	pop	rcx
	ret	
.label_972:
	mov	edi, OFFSET FLAT:label_974
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:label_720
	call	__assert_fail
.label_973:
	mov	edi, OFFSET FLAT:label_971
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:label_720
	call	__assert_fail
.label_716:
	mov	edi, OFFSET FLAT:label_718
	mov	esi, OFFSET FLAT:label_719
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:label_720
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40ab70

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	xor	r12d, r12d
	jmp	.label_977
	nop	dword ptr [rax]
.label_975:
	inc	rbx
.label_977:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_978
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_979
.label_978:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_975
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_976
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_975
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_975
.label_976:
	mov	ebx, eax
.label_979:
	mov	eax, ebx
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac00

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 0x10], 0
	je	.label_980
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_982:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_982
	xor	eax, eax
	test	rdx, rdx
	je	.label_980
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_981:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_983
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_984:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_980
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_984
.label_983:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_981
.label_980:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40acc0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_985
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_985
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_987
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_987
.label_985:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r12
	call	create_tree
	mov	r13, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r12
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_988
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_988:
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_986
	test	r13, r13
	je	.label_986
	test	r14, r14
	je	.label_986
	test	rax, rax
	je	.label_986
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r13 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r13 + 0x30]
	or	edx, ecx
	mov	dword ptr [r13 + 0x30], edx
	jmp	.label_989
.label_987:
	mov	rax, qword ptr [r15 + 8]
.label_989:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_986:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_989
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40add0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	jae	.label_991
.label_992:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	shl	rcx, 4
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	jne	.label_995
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_994
.label_995:
	cmp	eax, 6
	sete	cl
.label_994:
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rax, [rax + rax*2]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x10], rax
.label_993:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_991:
	lea	rcx, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	rcx, rax
	ja	.label_993
	mov	qword ptr [rsp + 0x10], rcx
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_993
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_990
	test	rbp, rbp
	je	.label_990
	test	r13, r13
	je	.label_990
	test	rax, rax
	je	.label_990
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_992
.label_990:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_993
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40afa0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_999
	cmp	r14, r15
	jne	.label_996
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_997
.label_996:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_998
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_997
.label_998:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_997:
	xor	eax, eax
.label_999:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b020

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 1
	mov	qword ptr [rbx + 8], 1
	mov	edi, 8
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_1001
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1000:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1001:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_1000
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b070

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r12, rdx
	mov	rbp, rsi
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r12 + r12*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 8]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_1004
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r12
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_1008
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_1008
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_1008
	mov	rdi, rbp
	mov	rsi, r12
	mov	rdx, r12
	mov	rcx, r12
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_1004
.label_1008:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	mov	qword ptr [rsp + 0x28], r15
	mov	qword ptr [rsp + 0x20], r12
	je	.label_1006
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_1006
	xor	r15d, r15d
	lea	rbx, [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1010:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r12*8]
	lea	r13, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r13*8 + 8]
	cmp	rcx, -1
	je	.label_1007
	test	rcx, rcx
	jne	.label_1012
	xor	ecx, ecx
	mov	rdi, rbx
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_1003
	jmp	.label_1004
	nop	dword ptr [rax + rax]
.label_1012:
	mov	rcx, qword ptr [rax + r13*8 + 0x10]
	mov	qword ptr [rsp + 0x40], rcx
	movups	xmm0, xmmword ptr [rax + r13*8]
	movaps	xmmword ptr [rsp + 0x30], xmm0
.label_1003:
	lea	rdi, [rsp + 8]
	mov	rsi, rbx
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1004
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_1002
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
.label_1007:
	mov	r15b, 1
.label_1002:
	inc	r12
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r12, qword ptr [rax + r14*8 + 8]
	jl	.label_1010
	jmp	.label_1011
.label_1006:
	xor	r15d, r15d
.label_1011:
	lea	rdi, [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x20]
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	mov	rdx, qword ptr [rsp + 0x28]
	je	.label_1004
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_1005
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_1005
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_1009
.label_1005:
	mov	rcx, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_1009:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rdx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 8]
	movups	xmmword ptr [rdx], xmm0
	xor	eax, eax
.label_1004:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b260

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1013
	xor	eax, eax
.label_1013:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b2a0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	dword ptr [rsp + 0xc], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	jmp	.label_1016
	nop	word ptr cs:[rax + rax]
.label_1015:
	mov	rsi, qword ptr [rcx + r13*8 + 0x10]
	mov	rbp, qword ptr [rsi]
	lea	rsi, [rbx + rbx*2]
	mov	r12, rsi
	mov	qword ptr [rcx + rsi*8 + 8], 0
	cmp	rdx, 1
	je	.label_1023
	mov	rdi, r15
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_1024
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_1021
	jmp	.label_1018
.label_1024:
	mov	rdi, r15
	mov	rbx, rbp
	mov	rsi, rbp
	mov	edx, dword ptr [rsp + 0xc]
	call	duplicate_node
	mov	r14, rax
	mov	ebp, 0xc
	cmp	r14, -1
	je	.label_1018
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	je	.label_1018
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8d, dword ptr [rsp + 0xc]
	call	duplicate_node_closure
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1018
.label_1021:
	mov	rax, qword ptr [r15 + 0x28]
	mov	rax, qword ptr [rax + r13*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, r15
	mov	rsi, r14
	mov	edx, dword ptr [rsp + 0xc]
.label_1022:
	call	duplicate_node
	mov	ebp, 0xc
	cmp	rax, -1
	je	.label_1018
	mov	rcx, qword ptr [r15 + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	mov	rbx, rax
	call	re_node_set_insert
	test	al, al
	jne	.label_1016
	jmp	.label_1018
.label_1023:
	cmp	r14, qword ptr [rsp + 0x10]
	jne	.label_1019
	cmp	rbx, r14
	jne	.label_1020
.label_1019:
	mov	rcx, qword ptr [r15]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	edx, dword ptr [rsp + 0xc]
	or	edx, eax
	mov	rdi, r15
	mov	r14, rbp
	mov	rsi, rbp
	mov	dword ptr [rsp + 0xc], edx
	jmp	.label_1022
	nop	
.label_1016:
	mov	rcx, qword ptr [r15]
	mov	rax, r14
	shl	rax, 4
	cmp	byte ptr [rcx + rax + 8], 4
	jne	.label_1014
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [r15 + 0x28]
	mov	rbp, qword ptr [rax + r14*8]
	lea	r12, [rbx + rbx*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbp
	mov	r13, r15
	mov	edx, dword ptr [rsp + 0xc]
	mov	r15, rbx
	call	duplicate_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1025
	mov	rax, qword ptr [r13 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r15*8], rcx
	mov	rax, qword ptr [r13 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbx
	call	re_node_set_insert
	test	al, al
	mov	r14, rbp
	mov	r15, r13
	mov	ebp, 0xc
	jne	.label_1016
	jmp	.label_1018
	nop	dword ptr [rax]
.label_1014:
	mov	rcx, qword ptr [r15 + 0x28]
	lea	r13, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r13*8 + 8]
	test	rdx, rdx
	jne	.label_1015
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + rbx*8], rcx
.label_1017:
	xor	ebp, ebp
.label_1018:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1020:
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	ebp, 0xc
	test	al, al
	jne	.label_1017
	jmp	.label_1018
.label_1025:
	mov	ebp, 0xc
	jmp	.label_1018
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b4e0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	r14, rdi
	test	r15, r15
	je	.label_1029
	mov	rax, qword ptr [r15 + 8]
	test	rax, rax
	je	.label_1029
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rdx, [rcx + rax*2]
	cmp	rbx, rdx
	jge	.label_1027
	add	rbx, rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1035
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_1027:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1028
	lea	r12, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_1031
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_1032
.label_1026:
	dec	rax
.label_1039:
	dec	rcx
	jmp	.label_1037
	nop	word ptr [rax + rax]
.label_1032:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_1026
	jge	.label_1039
	dec	rax
	mov	qword ptr [rdx + r12*8 - 8], rdi
	dec	r12
.label_1037:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_1032
.label_1031:
	test	rax, rax
	js	.label_1034
	lea	rcx, [rax + 1]
	sub	r12, rcx
	lea	rdi, [r12*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_1034:
	mov	r9, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rcx, [r9 + rax*2 - 1]
	mov	rsi, rcx
	sub	rsi, r12
	inc	rsi
	je	.label_1029
	lea	rax, [rsi + r9]
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
.label_1036:
	lea	r8, [r9 - 1]
	lea	rdx, [rsi*8]
	nop	dword ptr [rax + rax]
.label_1030:
	mov	rax, qword ptr [rdi + rcx*8]
	mov	rbx, qword ptr [rdi + r9*8 - 8]
	cmp	rax, rbx
	jle	.label_1038
	dec	rcx
	lea	rbx, [rdi + rdx]
	add	rdx, -8
	dec	rsi
	mov	qword ptr [rbx + r9*8 - 8], rax
	jne	.label_1030
	jmp	.label_1029
	nop	word ptr cs:[rax + rax]
.label_1038:
	lea	rax, [rdi + rdx]
	mov	qword ptr [rax + r9*8 - 8], rbx
	cmp	r9, 1
	mov	r9, r8
	jg	.label_1036
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r12*8]
.label_1033:
	call	memcpy
.label_1029:
	xor	eax, eax
.label_1035:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1028:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	jmp	.label_1033
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b680

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx]
	test	rsi, rsi
	je	.label_1040
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_1046
	cmp	rsi, rax
	jne	.label_1042
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1047
	mov	qword ptr [rbx + 0x10], rax
.label_1042:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1048
	test	rax, rax
	jle	.label_1045
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1049:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1049
	jmp	.label_1045
.label_1040:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_1041
.label_1046:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1043
.label_1048:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_1045
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1044:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1044
.label_1045:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1043:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_1041:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1047:
	xor	eax, eax
	jmp	.label_1041
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b760

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rbp, r14
	shl	rbp, 4
	mov	rsi, qword ptr [rax + rbp]
	mov	rdx, qword ptr [rax + rbp + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1050
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	r15d, 8
	and	r15d, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, r15d
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + rbp + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_1050:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b7f0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1051
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_1051
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_1054:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1052
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_1053
.label_1052:
	dec	r10
	test	r10, r10
	jle	.label_1051
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_1054
	jmp	.label_1051
.label_1053:
	mov	rax, r10
.label_1051:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b870

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1055
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1056
	mov	qword ptr [rbx + 0x10], rax
.label_1055:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1057:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1056:
	xor	eax, eax
	jmp	.label_1057
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b8d0

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rdi
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1058
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1060
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1059
.label_1058:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1059:
	xor	eax, eax
.label_1061:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1060:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1061
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b940

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1062
	xor	edx, edx
	dec	r9
	je	.label_1064
	mov	r8, qword ptr [rdi + 0x10]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1063:
	lea	rax, [r9 + rdx]
	shr	rax, 1
	cmp	qword ptr [r8 + rax*8], rsi
	lea	rcx, [rax + 1]
	cmovl	rdx, rcx
	cmovge	r9, rax
	cmp	rdx, r9
	jb	.label_1063
.label_1064:
	mov	rcx, qword ptr [rdi + 0x10]
	xor	eax, eax
	cmp	qword ptr [rcx + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmove	rax, rcx
.label_1062:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b990

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	cmp	qword ptr [rdx + 8], 0
	je	.label_1066
	mov	qword ptr [rsp + 8], rdi
	mov	qword ptr [rsp], rdx
	mov	rdi, rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rcx, qword ptr [rbp + 0x88]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1065
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_1069:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1068
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1068
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp]
	call	re_node_set_compare
	test	al, al
	jne	.label_1067
.label_1068:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1069
.label_1065:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1067
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_1070
.label_1066:
	mov	dword ptr [rdi], 0
.label_1070:
	xor	ebp, ebp
.label_1067:
	mov	rax, rbp
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
	.align	32
	#Procedure 0x40ba70

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1071
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1072:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1072
.label_1071:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40baa0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1073
	test	rsi, rsi
	je	.label_1073
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1074
	nop	word ptr cs:[rax + rax]
.label_1075:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1073
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1075
.label_1074:
	xor	eax, eax
.label_1073:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40baf0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x28], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x18], rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	test	r15, r15
	je	.label_1086
	mov	rbx, r15
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1077
	mov	al, byte ptr [r15 + 0x68]
	mov	ecx, r14d
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [r15 + 0x50], rbx
	cmp	qword ptr [rbp + 8], 0
	mov	rdi, qword ptr [rsp + 0x18]
	jle	.label_1080
	mov	ebx, r14d
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x14], eax
	mov	eax, ebx
	and	eax, 2
	mov	dword ptr [rsp + 0x24], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x20], ebx
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	xor	r14d, r14d
	xor	r12d, r12d
	nop	
.label_1088:
	mov	rax, qword ptr [rdi]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	ecx, dword ptr [rax + rcx + 8]
	mov	r13d, ecx
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	cl, 1
	jne	.label_1087
	test	eax, eax
	je	.label_1079
.label_1087:
	mov	esi, ecx
	shr	esi, 0x14
	movzx	ebx, byte ptr [r15 + 0x68]
	mov	edx, ebx
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	cl, 4
	je	.label_1082
	cmp	cl, 2
	jne	.label_1091
	or	bl, 0x10
	jmp	.label_1092
.label_1082:
	or	bl, 0x40
.label_1092:
	mov	byte ptr [r15 + 0x68], bl
.label_1091:
	test	eax, eax
	je	.label_1079
	mov	rbx, qword ptr [rsp + 0x30]
	cmp	qword ptr [r15 + 0x50], rbx
	jne	.label_1083
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_1076
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1086
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1083:
	cmp	dword ptr [rsp + 0x14], 0
	jne	.label_1081
	mov	eax, r13d
	and	eax, 1
	jne	.label_1078
.label_1081:
	cmp	dword ptr [rsp + 0x14], 0
	je	.label_1085
	mov	eax, r13d
	and	eax, 2
	jne	.label_1078
.label_1085:
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1090
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1078
.label_1090:
	cmp	dword ptr [rsp + 0x20], 0
	jne	.label_1084
	and	r13d, 0x40
	je	.label_1084
	nop	word ptr [rax + rax]
.label_1078:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, rbx
	call	re_node_set_remove_at
	inc	r12
.label_1084:
	mov	rdi, qword ptr [rsp + 0x18]
.label_1079:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1088
.label_1080:
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x28]
	call	register_state
	test	eax, eax
	mov	rax, r15
	mov	qword ptr [rsp + 8], rax
	jne	.label_1076
.label_1086:
	mov	rax, qword ptr [rsp + 8]
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1076:
	mov	rdi, r15
	call	free_state
	jmp	.label_1089
.label_1077:
	mov	rdi, r15
	call	free
.label_1089:
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_1086
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd00

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_1093
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1093
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_1093
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_1094:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_1094
.label_1093:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40bd40

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	r14d, 0xc
	test	eax, eax
	jne	.label_1096
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1100
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1097:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_1095
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_1096
.label_1095:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1097
.label_1100:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1098
.label_1099:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1096:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1098:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1096
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	mov	qword ptr [rcx + 8], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_1099
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40be30

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	cmp	ecx, 2
	je	.label_1108
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1104
	test	ecx, ecx
	jne	.label_1107
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1109
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1103
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1102
.label_1108:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_1102
	mov	edi, OFFSET FLAT:label_1113
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:label_1112
	call	__assert_fail
.label_1104:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_1101
.label_1102:
	xor	eax, eax
	test	r14, r14
	jle	.label_1105
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1115:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1115
	mov	rax, r14
.label_1105:
	cmp	rax, qword ptr [r15]
	jae	.label_1106
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1110:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1110
.label_1106:
	mov	ebp, r12d
.label_1109:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1101:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], rax
	test	rax, rax
	je	.label_1109
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1114
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1102
.label_1103:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1109
.label_1107:
	mov	edi, OFFSET FLAT:label_1111
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:label_1112
	call	__assert_fail
.label_1114:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1109
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40bfd0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	r15, qword ptr [rsp + 0x30]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, r8
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1116
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1118
	mov	r12, qword ptr [r13 + 8]
.label_1118:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1117
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	cmovg	r14, rcx
	mov	rcx, r14
.label_1117:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1116:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c0a0

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1119
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1120
	lea	r12, [r14*8]
	lea	rdi, [r12 + r12*4]
	call	malloc
	mov	rbp, rax
	mov	qword ptr [rbx + 0xd8], rbp
	mov	rdi, r12
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rbp, rbp
	je	.label_1120
	test	rax, rax
	je	.label_1120
.label_1119:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1120:
	mov	eax, r15d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40c140

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, r14
	jle	.label_1135
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1142
	mov	qword ptr [rbx + 0x20], 0
.label_1142:
	mov	rcx, qword ptr [rbx + 0x50]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	jne	.label_1146
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1146:
	test	r13, r13
	je	.label_1131
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1156
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1158
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1163
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1163:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1124
.label_1138:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1143:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1131
	add	qword ptr [rbx + 8], r13
.label_1131:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1132
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1137
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1140
	jmp	.label_1133
.label_1132:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1141
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1133
.label_1137:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1133:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1140:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1135:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1146
.label_1156:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1153
.label_1126:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1155
	mov	qword ptr [rsp + 0x18], rdx
	mov	dword ptr [rsp + 8], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1157
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, rcx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rax, r13
	sub	rax, rsi
	add	rax, rdx
	cmp	rax, rcx
	cmovb	rax, rcx
	lea	r12, [rdx + r13]
	mov	rbp, r12
.label_1125:
	dec	rbp
	cmp	rbp, rax
	jb	.label_1122
	movzx	ecx, byte ptr [rbp]
	and	cl, 0xc0
	cmp	cl, 0x80
	je	.label_1125
	add	rdx, qword ptr [rbx + 0x58]
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1154
.label_1121:
	mov	qword ptr [rsp + 0x20], 0
	lea	rdi, [rsp + 0xc]
	lea	rcx, [rsp + 0x20]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_1122
	cmp	rax, -3
	ja	.label_1122
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 8], eax
.label_1122:
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	jne	.label_1144
.label_1157:
	lea	rdx, [rsp + 8]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 8]
	cmp	edi, -1
	je	.label_1148
.label_1144:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1151
	mov	ecx, dword ptr [rsp + 8]
.label_1152:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1150
	xor	eax, eax
	cmp	byte ptr [rbx + 0x8d], 0
	setne	al
	add	eax, eax
	jmp	.label_1150
.label_1158:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
.label_1166:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1159
	jge	.label_1164
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1159:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1166
.label_1164:
	mov	rax, qword ptr [rbx + 0x18]
	xor	edx, edx
	cmp	qword ptr [rax + rcx*8], r13
	setl	dl
	lea	rbp, [rdx + rcx]
	lea	rsi, [rdx + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1129
	cmp	rbp, r13
	jne	.label_1129
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1129
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	test	rax, rax
	jle	.label_1143
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
.label_1136:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1136
	jmp	.label_1143
.label_1124:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1138
.label_1129:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
.label_1161:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1160
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1161
.label_1160:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1165
	mov	rcx, qword ptr [rbx + 0x10]
.label_1128:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1165
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1128
.label_1165:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1123
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1149
.label_1141:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1130
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1133
.label_1155:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	bpl, byte ptr [rcx + rax - 1]
	movzx	eax, bpl
	mov	qword ptr [rbx + 0x38], 0
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	je	.label_1134
	mov	bpl, byte ptr [rcx + rax]
.label_1134:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	esi, bpl
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1145
	xor	ecx, ecx
	cmp	bpl, 0xa
	jne	.label_1145
	xor	ecx, ecx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	cl
	add	ecx, ecx
.label_1145:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1143
.label_1123:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1149
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1147
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1147:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1149
.label_1130:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1133
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1133
.label_1148:
	mov	rsi, qword ptr [rsp + 0x18]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1150:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_1127
.label_1149:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1143
.label_1153:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1126
.label_1127:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1139
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1139:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1147
	jmp	.label_1149
.label_1151:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1150
	mov	ecx, dword ptr [rsp + 8]
	cmp	ecx, 0x5f
	jne	.label_1152
	jmp	.label_1150
.label_1154:
	lea	rsi, [rsp + 0x12]
	cmp	rdx, 7
	mov	eax, 6
	cmovl	rax, rdx
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1121
	movsxd	r10, eax
	lea	r8, [rsp + r10 + 0x11]
	lea	r9, [rbp + r10 - 1]
	xor	ecx, ecx
.label_1162:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	movzx	eax, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1162
	jmp	.label_1121
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40c710

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rdx
	mov	dword ptr [rsp + 8], esi
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0xc], eax
	mov	dword ptr [rsp + 4], 0
	mov	r14, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r14 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1169
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_1196
	test	eax, eax
	je	.label_1169
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_1170
	test	sil, sil
	jne	.label_1170
	mov	rbx, qword ptr [r14 + 0x60]
	jmp	.label_1169
.label_1196:
	mov	rbx, qword ptr [r14 + 0x50]
.label_1169:
	test	rbx, rbx
	je	.label_1173
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_1190
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r15 + 0x98], 0
	jne	.label_1178
.label_1190:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_1187
.label_1167:
	mov	qword ptr [rsp + 0x18], rdx
	mov	qword ptr [rsp + 0x20], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 4]
.label_1179:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1171
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 8]
	or	r12b, al
	mov	r14, rbx
	nop	word ptr cs:[rax + rax]
.label_1189:
	lea	r15, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r15, rax
	jge	.label_1193
.label_1192:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r15, rax
	jge	.label_1176
.label_1188:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1186
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_1186:
	test	rbx, rbx
	jne	.label_1175
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0
	jne	.label_1168
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	cmp	al, 1
	jne	.label_1171
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1171
.label_1175:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_1182
.label_1183:
	movzx	eax, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_1194
	test	al, al
	jns	.label_1172
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1172
.label_1194:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r14, rbx
	jg	.label_1189
	jmp	.label_1171
.label_1193:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1192
	jmp	.label_1195
.label_1176:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1188
.label_1195:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 4], ecx
	test	ecx, ecx
	jne	.label_1197
	jmp	.label_1188
.label_1182:
	cmp	r14, rbx
	je	.label_1174
	mov	dword ptr [rsp + 0xc], 0
.label_1174:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1183
.label_1172:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, rdx
	jne	.label_1179
	jmp	.label_1168
.label_1171:
	mov	rcx, qword ptr [rsp + 0x20]
	test	rcx, rcx
	je	.label_1191
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_1191:
	mov	rax, qword ptr [rsp + 0x18]
.label_1168:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1170:
	test	edx, edx
	jne	.label_1180
	test	ecx, ecx
	je	.label_1169
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_1169
.label_1180:
	mov	rbx, qword ptr [r14 + 0x58]
	jmp	.label_1169
.label_1197:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_1168
	mov	edi, OFFSET FLAT:label_1184
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:label_1185
	call	__assert_fail
.label_1173:
	mov	rax, -2
	cmp	dword ptr [rsp + 4], 0xc
	je	.label_1168
	mov	edi, OFFSET FLAT:label_1184
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:label_1185
	call	__assert_fail
.label_1187:
	test	al, al
	js	.label_1198
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	mov	rdx, r12
	jne	.label_1167
	mov	rax, r12
	jmp	.label_1168
.label_1178:
	lea	r14, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r14
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1177
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1181
	mov	rdi, rbp
	mov	rsi, r14
	call	transit_state_bkref
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1177
.label_1181:
	mov	dword ptr [rsp + 0xc], 0
	jmp	.label_1190
.label_1198:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	xor	ecx, ecx
	test	rax, rax
	setne	cl
	je	.label_1167
	mov	eax, dword ptr [rsp + 8]
	test	al, al
	jne	.label_1167
	mov	rax, r12
	jmp	.label_1168
.label_1177:
	cdqe	
	jmp	.label_1168
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40caa0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	edx, eax
	call	re_string_context_at
	mov	r15d, eax
	xor	ebp, ebp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1199
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1200:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1199
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_1200
.label_1199:
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
	.align	32
	#Procedure 0x40cb20

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	rbx, qword ptr [rdi + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_1207
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb0]
	mov	qword ptr [rsp + 8], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r13d, 0xc
	xor	r15d, r15d
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_1211
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1204
	mov	qword ptr [rsp + 0x18], r14
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	test	r15, r15
	je	.label_1209
	lea	rbp, [rsp + 0x20]
	mov	r13, qword ptr [rsp + 8]
	mov	r14, qword ptr [rsp]
	jmp	.label_1210
.label_1204:
	xor	r15d, r15d
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1203
	xor	r15d, r15d
	cmp	qword ptr [r12], 0
	jne	.label_1202
	mov	r13d, 1
	jmp	.label_1203
	nop	
.label_1206:
	mov	rdi, rbp
	mov	rdx, rbx
	call	check_halt_state_context
	lea	rbp, [rsp + 0x20]
	mov	r14, qword ptr [rsp]
	mov	r13, rax
.label_1210:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	r12, r13
	mov	rcx, r13
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1212
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [r14], 0
	jne	.label_1201
	cmp	qword ptr [r15], 0
	jne	.label_1201
	mov	r13d, 1
	test	rbx, rbx
	jle	.label_1211
	mov	rax, qword ptr [rbp + 0xb8]
	dec	rbx
	nop	dword ptr [rax]
.label_1205:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_1208
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1206
.label_1208:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_1205
	mov	r12, qword ptr [rsp]
	jmp	.label_1203
.label_1201:
	mov	qword ptr [rsp + 8], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r12, qword ptr [rsp]
	mov	rsi, r12
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	jne	.label_1203
.label_1202:
	mov	rdi, qword ptr [rbp + 0xb8]
	call	free
	mov	qword ptr [rbp + 0xb8], r12
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rbp + 0xb0], rax
	mov	qword ptr [rbp + 0xa8], rbx
	xor	r13d, r13d
	xor	r12d, r12d
	xor	r15d, r15d
.label_1203:
	mov	rdi, r12
	call	free
	mov	rdi, r15
	call	free
.label_1207:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1211:
	mov	r12, qword ptr [rsp]
	jmp	.label_1203
.label_1212:
	mov	r12, r14
	jmp	.label_1203
.label_1209:
	mov	r12, qword ptr [rsp]
	jmp	.label_1203
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40cd70

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdi
	cmp	qword ptr [r14 + 0xe8], 0
	jle	.label_1215
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1217:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	jle	.label_1213
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1214:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1214
.label_1213:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1216
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1216:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1217
.label_1215:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ce30

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, qword ptr [rdi]
	mov	rax, qword ptr [rip + label_1229]
	mov	qword ptr [rbp - 0x70], rax
	movups	xmm0, xmmword ptr [rip + label_1230]
	movaps	xmmword ptr [rbp - 0x80], xmm0
	xor	eax, eax
	test	r8b, r8b
	je	.label_1231
	mov	rax, qword ptr [rbp - 0x78]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x70], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1233
	lea	rax, [rbp - 0x80]
.label_1231:
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x68], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x60], xmm0
	mov	qword ptr [rbp - 0x50], 0
	mov	r14, rbx
	shl	r14, 4
	cmp	r14, 0xfbf
	ja	.label_1222
	mov	rdi, rsp
	lea	rax, [r14 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x2c], 0
	jmp	.label_1234
.label_1222:
	mov	rdi, r14
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1223
	mov	al, 1
	mov	dword ptr [rbp - 0x2c], eax
.label_1234:
	mov	qword ptr [rbp - 0x38], rdi
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x48], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1218
	lea	r14, [r12 + 8]
	jmp	.label_1221
.label_1240:
	cmp	r15, -2
	je	.label_1224
	mov	rdi, qword ptr [rbp - 0x40]
	test	rdi, rdi
	je	.label_1227
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_1235
	nop	
.label_1221:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1236
	cmp	r15, qword ptr [r13 + 0xb0]
	jne	.label_1236
	mov	r15, qword ptr [rbp - 0x40]
	test	r15, r15
	je	.label_1239
	test	rbx, rbx
	mov	eax, 0
	je	.label_1220
	mov	rcx, r14
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1228:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1225
	cmp	qword ptr [rcx], -1
	je	.label_1220
.label_1225:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1228
.label_1220:
	cmp	rax, rbx
	je	.label_1232
	mov	rdi, r15
	lea	rsi, [rbp - 0x48]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x60]
	call	pop_fail_stack
	mov	r15, rax
.label_1236:
	sub	rsp, 8
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x48]
	mov	r8, r15
	lea	r9, [rbp - 0x60]
	push	qword ptr [rbp - 0x40]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_1240
.label_1235:
	mov	r8, qword ptr [rbp - 0x48]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1221
.label_1218:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1226
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1226:
	mov	rdi, qword ptr [rbp - 0x40]
.label_1238:
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_1233
.label_1239:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	xor	r14d, r14d
.label_1219:
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1233
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	jmp	.label_1233
.label_1232:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1237
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1237:
	mov	rdi, r15
	jmp	.label_1238
.label_1227:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	r14d, 1
	jmp	.label_1219
.label_1224:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free
	mov	eax, dword ptr [rbp - 0x2c]
	test	al, al
	je	.label_1223
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
.label_1223:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_1233:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d0d0

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbx
	mov	rbx, rdi
	call	match_ctx_clean
	mov	rdi, qword ptr [rbx + 0xf8]
	call	free
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d100

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1241
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1249
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1248
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1247:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1244
	dec	rsi
	test	rsi, rsi
	jg	.label_1247
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1243
.label_1248:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	mov	bpl, byte ptr [rax + rsi]
	movzx	esi, bpl
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_1243
	xor	edx, edx
	cmp	bpl, 0xa
	je	.label_1242
	jmp	.label_1243
.label_1244:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1245
.label_1246:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1243
.label_1242:
	xor	edx, edx
	cmp	byte ptr [rbx + 0x8d], 0
	setne	dl
	add	edx, edx
.label_1243:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1241:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1243
.label_1249:
	and	edx, 2
	xor	edx, 0xa
	jmp	.label_1243
.label_1245:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1243
	test	eax, eax
	je	.label_1246
	jmp	.label_1243
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40d1c0

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], rdx
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_1250
	lea	r13, [r12 + 0x20]
	jmp	.label_1251
.label_1252:
	xor	ecx, ecx
	test	r14, r14
	je	.label_1254
	test	rax, rax
	je	.label_1254
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_1254:
	mov	qword ptr [r13], rbp
	mov	eax, 1
	jmp	.label_1253
	nop	word ptr cs:[rax + rax]
.label_1251:
	mov	rbp, qword ptr [r12 + 0x20]
	mov	r14, qword ptr [r12 + 0x50]
	sub	r14, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0xc]
	mov	rdx, r14
	mov	rcx, r13
	call	rpl_mbrtowc
	lea	rcx, [rax - 1]
	cmp	rcx, -3
	jae	.label_1252
	mov	ecx, dword ptr [rsp + 0xc]
.label_1253:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1251
.label_1250:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], ecx
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
	.align	32
	#Procedure 0x40d280

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rax, rsi
	sar	rax, 0x3f
	shr	rax, 0x3a
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40d2a0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1255
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1257:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	cmp	byte ptr [rax + rcx + 8], 8
	jne	.label_1256
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_1256
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1256
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_1255
	nop	word ptr cs:[rax + rax]
.label_1256:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1257
.label_1255:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d340

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r13, rsi
	mov	r14, rdi
	cmp	qword ptr [r13 + 8], 0
	jle	.label_1266
	mov	r8, qword ptr [r14 + 0x98]
	mov	rax, qword ptr [r14 + 0x48]
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 8], r8
	nop	dword ptr [rax + rax]
.label_1265:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	eax, dword ptr [rax + rcx + 8]
	mov	r15d, eax
	cmp	al, 4
	jne	.label_1258
	mov	eax, r15d
	mov	ebp, eax
	shr	ebp, 8
	test	bp, 0x3ff
	mov	qword ptr [rsp + 0x18], rsi
	je	.label_1260
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_string_context_at
	mov	r8, qword ptr [rsp + 8]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1268
	test	ecx, ecx
	je	.label_1258
.label_1268:
	mov	edx, r15d
	test	dh, 8
	je	.label_1271
	test	ecx, ecx
	jne	.label_1258
.label_1271:
	mov	ecx, r15d
	test	ch, 0x20
	je	.label_1272
	mov	ecx, eax
	and	ecx, 2
	je	.label_1258
.label_1272:
	test	bpl, bpl
	jns	.label_1260
	and	eax, 8
	je	.label_1258
	nop	word ptr cs:[rax + rax]
.label_1260:
	mov	r12, qword ptr [r14 + 0xc8]
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	call	get_subexp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1261
	cmp	r12, qword ptr [r14 + 0xc8]
	jge	.label_1258
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	mov	qword ptr [rsp + 0x30], rbx
	nop	dword ptr [rax]
.label_1270:
	mov	rax, qword ptr [r14 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rsi
	jne	.label_1259
	mov	rcx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1259
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rdi, qword ptr [rax + rbp]
	mov	rbx, qword ptr [r8 + 0x30]
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x48], rcx
	mov	qword ptr [rsp + 0x40], rdi
	cmp	rdi, rcx
	jne	.label_1267
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rsi + rsi*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_1264
.label_1267:
	lea	rcx, [rsi*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_1264:
	mov	rcx, qword ptr [rcx]
	lea	rbx, [rcx + rcx*2]
	mov	r13, qword ptr [rax + rbp]
	mov	r15, qword ptr [rsp + 0x10]
	add	r13, r15
	sub	r13, qword ptr [rax + rbp - 8]
	lea	rsi, [r13 - 1]
	mov	edx, dword ptr [r14 + 0xa0]
	mov	rdi, r14
	call	re_string_context_at
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	rsi, qword ptr [rcx + r13*8]
	mov	rcx, qword ptr [rcx + r15*8]
	test	rcx, rcx
	mov	edx, 0
	je	.label_1274
	mov	rdx, qword ptr [rcx + 0x10]
.label_1274:
	mov	qword ptr [rsp + 0x38], rdx
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rcx, [rcx + rbx*8]
	test	rsi, rsi
	mov	rbx, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rcx
	je	.label_1262
	mov	r15d, eax
	mov	rsi, qword ptr [rsi + 0x50]
	lea	rbx, [rsp + 0x50]
	mov	rdi, rbx
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1269
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	ecx, r15d
	call	re_acquire_state_context
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	jne	.label_1273
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1261
.label_1273:
	mov	r13, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x30]
	jmp	.label_1263
.label_1262:
	lea	rdi, [rsp + 4]
	mov	r15, qword ptr [rsp + 8]
	mov	rsi, r15
	mov	rdx, rcx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, r15
	mov	rcx, qword ptr [r14 + 0xb8]
	mov	qword ptr [rcx + r13*8], rax
	mov	rax, qword ptr [r14 + 0xb8]
	cmp	qword ptr [rax + r13*8], 0
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rsp + 0x18]
	jne	.label_1263
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1261
	nop	dword ptr [rax]
.label_1263:
	mov	rax, qword ptr [rsp + 0x40]
	cmp	rax, qword ptr [rsp + 0x48]
	jne	.label_1259
	mov	rax, qword ptr [r14 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1259
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x10]
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1261
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	call	transit_state_bkref
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1261
.label_1259:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r14 + 0xc8]
	jl	.label_1270
	nop	word ptr cs:[rax + rax]
.label_1258:
	inc	rbx
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1265
.label_1266:
	mov	dword ptr [rsp + 4], 0
.label_1261:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1269:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	jmp	.label_1261
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d6c0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbx
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1275
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	add	rsi, rsi
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1275
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1276
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1275
	mov	qword ptr [rbx + 0xb8], rcx
.label_1276:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1279
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_1277
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1278
	jmp	.label_1275
.label_1279:
	cmp	eax, 2
	jl	.label_1280
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1278
.label_1277:
	call	build_upper_buffer
	jmp	.label_1278
.label_1280:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1278
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_1278:
	xor	eax, eax
.label_1275:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d790

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1284
.label_1282:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1286:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1285
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1283
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1286
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1281
.label_1285:
	mov	rax, qword ptr [rax + r12*8]
.label_1281:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1284:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1282
	jmp	.label_1281
.label_1283:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1281
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40d840

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	r14, qword ptr [r13 + 0x48]
	mov	r12, qword ptr [r13 + 0x98]
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1287
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1292
.label_1287:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_1288
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_1290
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1293
	xor	eax, eax
	jmp	.label_1289
.label_1288:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1292
.label_1290:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_1293:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	lea	rdx, [rsp]
	mov	rdi, r15
	mov	rsi, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1292
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1292:
	test	rbx, rbx
	je	.label_1291
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1291
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1289
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1289
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1289
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1289
.label_1291:
	mov	rax, rbx
.label_1289:
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
	.align	32
	#Procedure 0x40d990

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_1295:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_1296:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_1294
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_1296
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1294
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_1295
.label_1294:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40da00

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	je	.label_1297
.label_1299:
	mov	edi, 1
	mov	esi, 0x30
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbx + 0xe8]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1298
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1298:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1297:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1298
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1299
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40dad0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x38], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	r8, rbx
	cmp	rax, -1
	je	.label_1304
	lea	rax, [rax + rax*4]
	shl	rax, 3
	add	rax, qword ptr [r8 + 0xd8]
.label_1319:
	mov	dword ptr [rsp + 0xc], 0
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax], rcx
	je	.label_1320
	cmp	byte ptr [rax + 0x20], 0
	lea	rax, [rax + 0x28]
	jne	.label_1319
.label_1304:
	mov	dword ptr [rsp + 0xc], 0
	cmp	qword ptr [r8 + 0xe8], 0
	jle	.label_1320
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x30]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x50], rax
	xor	eax, eax
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x40], rcx
	mov	qword ptr [rsp + 0x18], r8
	nop	
.label_1333:
	mov	rcx, qword ptr [r8 + 0xf8]
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rcx + rdx*8]
	mov	rcx, qword ptr [rbp + 8]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rdx]
	shl	rcx, 4
	mov	rsi, qword ptr [rsp + 0x50]
	cmp	qword ptr [rdx + rcx], rsi
	jne	.label_1300
	mov	r13, qword ptr [rbp]
	cmp	qword ptr [rbp + 0x20], 0
	mov	qword ptr [rsp + 0x10], rbp
	jle	.label_1316
	mov	dword ptr [rsp + 0xc], eax
	mov	rdx, qword ptr [rsp + 0x20]
	xor	r15d, r15d
	jmp	.label_1303
	nop	dword ptr [rax]
.label_1300:
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1312
.label_1316:
	xor	r15d, r15d
	mov	rdx, qword ptr [rsp + 0x20]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1308
.label_1330:
	mov	edi, 7
	cmp	rsi, qword ptr [r8 + 0x58]
	jle	.label_1331
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1318
.label_1331:
	mov	qword ptr [rsp + 0x48], rdx
	mov	rdi, r8
	mov	rbx, rdi
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_1306
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_1307
.label_1332:
	mov	edi, 1
	mov	r13, r12
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_1314
.label_1306:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbx
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x48]
	jmp	.label_1318
	nop	
.label_1303:
	mov	rax, qword ptr [rbp + 0x28]
	mov	r14, qword ptr [rax + r15*8]
	mov	r12, qword ptr [r14 + 8]
	mov	rbp, r12
	sub	rbp, r13
	jle	.label_1305
	lea	rsi, [rbp + rdx]
	cmp	rsi, qword ptr [r8 + 0x30]
	jg	.label_1330
.label_1307:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rdi, [rax + rdx]
	lea	rsi, [rax + r13]
	mov	rbx, rdx
	mov	rdx, rbp
	call	memcmp
	mov	rdx, rbx
	mov	edi, 7
	test	eax, eax
	mov	r8, qword ptr [rsp + 0x18]
	je	.label_1305
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1318
	nop	word ptr cs:[rax + rax]
.label_1305:
	add	rdx, rbp
	mov	rbx, rdx
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, qword ptr [rsp + 0x18]
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	mov	edi, 9
	cmp	eax, 1
	je	.label_1327
	test	eax, eax
	jne	.label_1332
	xor	edi, edi
.label_1327:
	mov	r13, r12
.label_1314:
	mov	rdx, rbx
.label_1318:
	mov	eax, edi
	and	al, 0xf
	je	.label_1337
	cmp	al, 9
	jne	.label_1302
.label_1337:
	inc	r15
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_1303
	jmp	.label_1308
.label_1302:
	cmp	al, 7
	jne	.label_1309
	nop	
.label_1308:
	cmp	r15, qword ptr [rbp + 0x20]
	jl	.label_1312
	xor	eax, eax
	test	r15, r15
	setg	al
	add	r13, rax
	cmp	r13, qword ptr [rsp + 0x20]
	jle	.label_1315
	jmp	.label_1312
.label_1326:
	test	eax, eax
	jne	.label_1323
	mov	r14, qword ptr [rsp + 0x10]
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, r13
	call	match_ctx_add_sublast
	mov	edi, 1
	test	rax, rax
	je	.label_1329
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	mov	rcx, qword ptr [rsp + 0x30]
	mov	r8, qword ptr [rsp + 0x20]
	call	get_subexp_sub
	mov	r8, rbp
	mov	rcx, qword ptr [r8 + 8]
	mov	qword ptr [rsp + 0x28], rcx
	cmp	eax, 1
	jne	.label_1321
	mov	edi, 0xc
.label_1311:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	jmp	.label_1301
.label_1321:
	test	eax, eax
	mov	rdx, r12
	jne	.label_1317
	xor	edi, edi
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_1301
.label_1335:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	edi, 1
	mov	r8, qword ptr [rsp + 0x18]
	mov	rdx, r12
	jmp	.label_1301
.label_1334:
	mov	edi, 0xa
	cmp	rdx, qword ptr [r8 + 0x58]
	jge	.label_1301
	mov	rbx, rdx
	lea	esi, [rdx + 1]
	mov	rbp, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_1336
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x28], rax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_1324
.label_1323:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, qword ptr [rsp + 0x18]
	jmp	.label_1311
.label_1329:
	mov	dword ptr [rsp + 0xc], 0xc
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, r14
	mov	rdx, r12
	jmp	.label_1301
.label_1317:
	mov	dword ptr [rsp + 0xc], eax
	mov	rbp, qword ptr [rsp + 0x10]
	mov	edi, 1
	jmp	.label_1301
.label_1336:
	mov	edi, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r8, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	jmp	.label_1301
.label_1315:
	cmp	r13, qword ptr [rbp]
	jle	.label_1313
	cmp	rdx, qword ptr [r8 + 0x30]
	jge	.label_1334
.label_1324:
	mov	rcx, qword ptr [rsp + 0x28]
	movzx	eax, byte ptr [rcx + rdx]
	inc	rdx
	mov	edi, 0xa
	cmp	al, byte ptr [rcx + r13 - 1]
	jne	.label_1301
.label_1313:
	mov	rax, qword ptr [r8 + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	mov	edi, 0xc
	test	rsi, rsi
	je	.label_1301
	mov	r12, rdx
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x50]
	call	find_subexp_node
	mov	r15, rax
	cmp	r15, -1
	je	.label_1328
	mov	rbp, qword ptr [rsp + 0x10]
	cmp	qword ptr [rbp + 0x10], 0
	jne	.label_1310
	mov	rsi, r13
	sub	rsi, qword ptr [rbp]
	inc	rsi
	mov	edi, 0x18
	call	rpl_calloc
	mov	qword ptr [rbp + 0x10], rax
	test	rax, rax
	je	.label_1335
.label_1310:
	mov	rsi, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp]
	mov	rdx, qword ptr [rbp + 8]
	mov	dword ptr [rsp], 9
	mov	rdi, qword ptr [rsp + 0x18]
	mov	r8, r15
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	jne	.label_1326
.label_1328:
	mov	r8, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdx, r12
	mov	edi, 0xc
.label_1301:
	mov	eax, edi
	and	al, 0xf
	je	.label_1322
	cmp	al, 0xc
	jne	.label_1325
.label_1322:
	cmp	r13, qword ptr [rsp + 0x20]
	lea	r13, [r13 + 1]
	jl	.label_1315
	jmp	.label_1312
.label_1325:
	cmp	al, 0xa
	je	.label_1312
.label_1309:
	cmp	edi, 6
	je	.label_1312
	test	edi, edi
	jne	.label_1320
	nop	dword ptr [rax]
.label_1312:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, rax
	inc	rcx
	mov	rax, rcx
	mov	qword ptr [rsp + 0x40], rax
	cmp	rcx, qword ptr [r8 + 0xe8]
	mov	eax, dword ptr [rsp + 0xc]
	mov	dword ptr [rsp + 0xc], 0
	jl	.label_1333
.label_1320:
	mov	eax, dword ptr [rsp + 0xc]
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40dfb0

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	test	r12, r12
	je	.label_1347
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1343
	test	rax, rax
	jle	.label_1343
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1348
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1338
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebp, 0
	mov	ebx, 0
	jle	.label_1341
	xor	esi, esi
	xor	edx, edx
	xor	r13d, r13d
.label_1350:
	mov	rbx, rsi
	mov	rbp, rdx
	nop	word ptr [rax + rax]
.label_1345:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1341
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1340
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1345
	jmp	.label_1341
.label_1340:
	sete	dl
	movzx	edx, dl
	add	rdx, rbp
	inc	r13
	lea	rsi, [rbx + 1]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	qword ptr [rdi + rbx*8], rcx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1350
	xor	edx, edx
	cmp	rcx, rax
	sete	dl
	inc	rbx
	add	rbp, rdx
.label_1341:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1339
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1342
.label_1348:
	mov	rax, qword ptr [r12 + 8]
.label_1343:
	test	rax, rax
	jle	.label_1347
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1346
.label_1347:
	test	r15, r15
	je	.label_1349
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1349
	mov	rdi, r14
	mov	rsi, r15
.label_1346:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1349:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1344
.label_1339:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1342
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1342:
	mov	qword ptr [r14 + 8], rbx
.label_1344:
	xor	eax, eax
.label_1338:
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
	.align	32
	#Procedure 0x40e170

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1351
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1352:
	lea	r10, [rax + r11]
	mov	rdx, r10
	shr	rdx, 0x3f
	add	rdx, r10
	sar	rdx, 1
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmp	rax, r11
	jl	.label_1352
.label_1351:
	cmp	rax, r8
	jge	.label_1354
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1353
.label_1354:
	mov	rax, -1
.label_1353:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e1e0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0x40]
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1355
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1358
.label_1355:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1356
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1356
.label_1358:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1357
.label_1356:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_1357
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_1357:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e260

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	r13, rcx
	mov	rbx, rdx
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1359
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1359
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, r12
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1359:
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40e2f0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1360
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_1362:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_1361
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1363
.label_1361:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_1362
.label_1360:
	mov	rax, -1
.label_1363:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40e340

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	qword ptr [rsp + 0x48], r8
	mov	r13, rcx
	mov	r14, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	dword ptr [rsp + 4], 0
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x38], rax
	mov	rbp, qword ptr [rsi + 8]
	mov	qword ptr [rsp + 8], rdi
	movsxd	rax, dword ptr [rdi + 0xe0]
	mov	qword ptr [rsp + 0x28], r9
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	mov	qword ptr [rsp + 0x40], rsi
	jle	.label_1373
.label_1378:
	mov	rbx, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	rbx, rbx
	cmove	rbx, r13
	mov	rdi, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x58], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x50], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], rbx
	lea	rsi, [rbx - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	call	re_string_context_at
	mov	ebp, eax
	cmp	rbx, r13
	jne	.label_1379
	lea	rdi, [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_1364
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0xa0]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_1369
	jmp	.label_1365
.label_1379:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	test	r14, r14
	je	.label_1371
	test	byte ptr [r14 + 0x68], 0x40
	jne	.label_1374
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	jmp	.label_1377
.label_1371:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	xor	r14d, r14d
	jmp	.label_1367
.label_1374:
	lea	rsi, [r14 + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 4], r15d
	test	r15d, r15d
	jne	.label_1364
.label_1377:
	test	byte ptr [r14 + 0x68], 0x40
	je	.label_1367
.label_1369:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_1368
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r8d, dword ptr [rsp + 0xa0]
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
.label_1368:
	lea	rdi, [rsp + 4]
	lea	rdx, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	ecx, ebp
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_1380
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1365
.label_1380:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + rbx*8], r14
.label_1367:
	cmp	rbx, qword ptr [rsp + 0x28]
	jge	.label_1366
	inc	rbx
	lea	r12, [rsp + 0x10]
	mov	r15, rbx
	xor	r13d, r13d
	mov	rbp, qword ptr [rsp + 0x38]
	nop	
.label_1372:
	lea	rbx, [r15 - 1]
	mov	rax, qword ptr [rsp + 8]
	movsxd	rax, dword ptr [rax + 0xe0]
	cmp	r13, rax
	jg	.label_1366
	mov	qword ptr [rsp + 0x18], 0
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rsi, qword ptr [rax + r15*8]
	test	rsi, rsi
	je	.label_1376
	add	rsi, 8
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
.label_1376:
	test	r14, r14
	je	.label_1382
	add	r14, 0x20
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbx
	mov	rdx, r14
	mov	rcx, r12
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
.label_1382:
	cmp	qword ptr [rsp + 0x18], 0
	je	.label_1375
	mov	qword ptr [rsp + 0x60], rbx
	mov	r14, qword ptr [rsp + 8]
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, r12
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xa0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1365
	mov	rdi, r14
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	mov	rbx, qword ptr [rsp + 0x60]
	jne	.label_1365
.label_1375:
	mov	rdi, qword ptr [rsp + 8]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rsi, rbx
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r12
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r14, rax
	test	r14, r14
	jne	.label_1370
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1365
.label_1370:
	inc	r13
	test	r14, r14
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rax + r15*8], r14
	mov	eax, 0
	cmovne	r13, rax
	cmp	r15, qword ptr [rsp + 0x28]
	lea	r15, [r15 + 1]
	jl	.label_1372
	dec	r15
	mov	rbx, r15
.label_1366:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	rdx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rax], rbx
	mov	rax, qword ptr [rsp + 0x50]
	mov	qword ptr [rdx + 0xb8], rax
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rdx + 0x48], rax
	je	.label_1381
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 0x48]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1364
.label_1381:
	mov	r15d, 1
.label_1364:
	mov	eax, r15d
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1365:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	r15d, dword ptr [rsp + 4]
	jmp	.label_1364
.label_1373:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_1364
	mov	rcx, qword ptr [rsp + 0x28]
	lea	r12, [rax + rcx + 1]
	lea	rbx, [r12 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1364
	mov	rdi, qword ptr [rsi + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_1364
	mov	r15, qword ptr [rsp + 0x40]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r12, 3
	xor	esi, esi
	mov	rdx, r12
	call	memset
	mov	rsi, r15
	jmp	.label_1378
	nop	
	.section	.text
	.align	32
	#Procedure 0x40e760

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	r12, qword ptr [rbx + 0x18]
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1383
.label_1384:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1385
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1385:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1383:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1385
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1384
	.section	.text
	.align	32
	#Procedure 0x40e7e0

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	jl	.label_1386
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1387
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1386:
	test	rax, rax
	jle	.label_1388
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_1388
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1388:
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	xor	eax, eax
	sub	r14, r15
	mov	cx, 0xffff
	cmovne	cx, ax
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rsi, qword ptr [rbx + 0xd8]
	lea	rdx, [rdx + rdx*4]
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	jge	.label_1389
	mov	dword ptr [rbx + 0xe0], r14d
.label_1389:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1387:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_1389
	.section	.text
	.align	32
	#Procedure 0x40e960

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14d, ecx
	mov	rbp, rdx
	mov	rbx, rsi
	mov	r13, rdi
	mov	rsi, qword ptr [rbx + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1392
	mov	dword ptr [rsp + 0xc], r14d
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1394
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x28], rbx
	nop	word ptr cs:[rax + rax]
.label_1390:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rbx, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [rbx + rbx*2]
	lea	r12, [rax + rcx*8]
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, rbp
	mov	r15d, dword ptr [rsp + 0xc]
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1393
	mov	rdi, r13
	lea	rsi, [rsp + 0x10]
	mov	rdx, rbx
	mov	rcx, rbp
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1391
	nop	dword ptr [rax + rax]
.label_1393:
	lea	rdi, [rsp + 0x10]
	mov	rsi, r12
	call	re_node_set_merge
.label_1391:
	mov	r15d, eax
	test	r15d, r15d
	jne	.label_1395
	inc	r14
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	r14, qword ptr [rbx + 8]
	mov	rbp, qword ptr [rsp + 0x30]
	jl	.label_1390
.label_1394:
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbx], xmm0
	xor	r15d, r15d
.label_1392:
	mov	eax, r15d
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1395:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1392
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ea80

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	dword ptr [rsp + 0x2c], r8d
	mov	qword ptr [rsp + 0x38], rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsi, r12
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_1397
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 0x10], r14
	mov	qword ptr [rsp + 0x18], r13
	mov	qword ptr [rsp + 0x30], rcx
.label_1396:
	mov	dword ptr [rsp + 0xc], eax
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1409:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1406
	mov	rbp, qword ptr [r15 - 8]
	add	rbp, r12
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, r12
	jne	.label_1399
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	mov	rbp, r14
	jne	.label_1410
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	r14d, eax
	mov	dword ptr [rsp + 8], r14d
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	ecx, dword ptr [rsp + 0x2c]
	call	check_arrival_expand_ecl
	mov	ebx, eax
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	mov	r13, qword ptr [rsp + 0x18]
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	eax, ebp
	or	eax, ebx
	mov	ecx, 2
	or	eax, r14d
	jne	.label_1405
.label_1410:
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1402
	nop	dword ptr [rax]
.label_1399:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_1408
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1404
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1402
.label_1408:
	lea	rbx, [rsp + 0x40]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 8], eax
	test	eax, eax
	je	.label_1398
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], eax
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1402
.label_1404:
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 8], ebx
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbx, r13
	mov	r13, qword ptr [rsp + 0x18]
	jne	.label_1403
	xor	al, 1
	jne	.label_1403
.label_1398:
	lea	rdi, [rsp + 8]
	mov	r14, qword ptr [rsp + 0x10]
	mov	rsi, r14
	mov	rdx, rbx
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	dl
	mov	eax, dword ptr [rsp + 8]
	test	eax, eax
	setne	cl
	and	cl, dl
	jne	.label_1400
	mov	eax, dword ptr [rsp + 0xc]
.label_1400:
	movzx	ecx, cl
	mov	dword ptr [rsp + 0xc], eax
.label_1402:
	test	ecx, ecx
	je	.label_1406
	cmp	ecx, 4
	jne	.label_1407
.label_1406:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_1409
	jmp	.label_1397
.label_1405:
	test	ebx, ebx
	cmovne	ebp, ebx
	test	r14d, r14d
	cmovne	ebp, r14d
	mov	dword ptr [rsp + 8], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0xc], ebp
	jmp	.label_1410
.label_1403:
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	ecx, dword ptr [rsp + 8]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0xc], ecx
	mov	dword ptr [rsp + 8], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x10]
	jmp	.label_1402
	nop	word ptr cs:[rax + rax]
.label_1407:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 0x30]
	mov	eax, dword ptr [rsp + 0xc]
	je	.label_1396
	jmp	.label_1401
.label_1397:
	xor	eax, eax
.label_1401:
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
	.align	32
	#Procedure 0x40ed50

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], rcx
	mov	rbp, rdx
	mov	rcx, rsi
	mov	r12, rdi
	mov	r13, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1414
	xor	r14d, r14d
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x38], r13
	mov	qword ptr [rsp + 0x28], rbp
	nop	word ptr [rax + rax]
.label_1415:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r15, qword ptr [rax + r14*8]
	mov	rax, qword ptr [r13]
	mov	rbx, r15
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_1419
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r12
	mov	rbp, r12
	mov	r12, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1417
	mov	rcx, qword ptr [r13 + 0x18]
	mov	r13, qword ptr [rcx + r15*8]
	movsxd	rbx, eax
	add	rbx, r12
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x18], 0
	test	rsi, rsi
	mov	r12, rbp
	lea	rbp, [rsp + 0x10]
	je	.label_1418
	add	rsi, 8
	mov	rdi, rbp
	call	re_node_set_merge
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1411
.label_1418:
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	je	.label_1413
	lea	rdi, [rsp + 0xc]
	mov	r13, qword ptr [rsp + 0x38]
	mov	rsi, r13
	mov	rdx, rbp
	call	re_acquire_state
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_1416
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1416
	jmp	.label_1411
	nop	word ptr [rax + rax]
.label_1417:
	test	eax, eax
	mov	rcx, r12
	mov	r12, rbp
	mov	rbp, qword ptr [rsp + 0x28]
	jne	.label_1416
	nop	
.label_1419:
	add	rbx, qword ptr [r13]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	call	check_node_accept
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_1420
.label_1416:
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rdi, qword ptr [rsp + 0x40]
	call	re_node_set_insert
	mov	rcx, qword ptr [rsp + 0x30]
	test	al, al
	je	.label_1413
.label_1420:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1415
.label_1414:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	eax, eax
.label_1412:
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1413:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, 0xc
	jmp	.label_1412
.label_1411:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	jmp	.label_1412
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ef20

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r15d, r8d
	mov	r14, rcx
	mov	rbx, rdx
	mov	r12, rsi
	mov	rbp, rdi
	jmp	.label_1421
	nop	dword ptr [rax]
.label_1423:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_1421:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1425
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1422
	cmp	qword ptr [rax + rcx], r14
	je	.label_1427
.label_1422:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1424
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_1426
	test	rcx, rcx
	jne	.label_1423
	jmp	.label_1425
	nop	dword ptr [rax + rax]
.label_1426:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_1423
	jmp	.label_1424
.label_1427:
	cmp	r15d, 9
	jne	.label_1425
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	ecx, eax
	mov	eax, 0xc
	test	cl, cl
	je	.label_1424
.label_1425:
	xor	eax, eax
.label_1424:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f000

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	cmp	qword ptr [r12 + 8], 0
	je	.label_1428
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	mov	qword ptr [rsp + 0x10], rbx
	and	rcx, qword ptr [rbx + 0x88]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1431
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1434:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_1429
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_1433
.label_1429:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1434
.label_1431:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1432
.label_1433:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1428:
	mov	dword ptr [rdi], 0
	jmp	.label_1430
.label_1432:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1430:
	xor	ebx, ebx
	jmp	.label_1433
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f0d0

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	xor	eax, eax
	test	r12, r12
	je	.label_1440
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1439
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1441
	xor	eax, eax
.label_1443:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	esi, dword ptr [r8 + rbp + 8]
	mov	edi, esi
	and	edi, 0x3ffff
	cmp	edi, 1
	je	.label_1437
	mov	edi, esi
	shr	edi, 0x14
	movzx	ecx, byte ptr [r12 + 0x68]
	mov	ebx, ecx
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	sil, 0xc
	je	.label_1438
	cmp	sil, 4
	je	.label_1444
	cmp	sil, 2
	jne	.label_1435
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1437
.label_1444:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1437
.label_1435:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1437
.label_1438:
	or	byte ptr [r12 + 0x68], 0x80
.label_1437:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_1443
.label_1441:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_1436
.label_1440:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1439:
	mov	rdi, r12
	call	free
	jmp	.label_1442
.label_1436:
	mov	rdi, r12
	call	free_state
.label_1442:
	xor	eax, eax
	jmp	.label_1440
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f200

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	movzx	r15d, byte ptr [r14 + rbx + 8]
	cmp	r15d, 7
	je	.label_1445
	mov	rdi, r13
	mov	r12, rcx
	mov	rsi, rcx
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1462
	xor	eax, eax
	cmp	esi, 2
	jl	.label_1448
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_1465
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0xa
	je	.label_1448
.label_1465:
	cmp	byte ptr [rbp + 0xd8], 0
	js	.label_1467
	mov	eax, esi
	jmp	.label_1448
.label_1462:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_1448
	test	cl, cl
	je	.label_1448
	mov	rbx, qword ptr [r14 + rbx]
	cmp	qword ptr [rbx + 0x40], 0
	jne	.label_1452
	cmp	qword ptr [rbx + 0x48], 0
	jne	.label_1452
	xor	r14d, r14d
	cmp	qword ptr [rbx + 0x28], 0
	je	.label_1470
.label_1452:
	mov	rdi, r13
	mov	ebp, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebp
	mov	r14d, eax
.label_1470:
	cmp	qword ptr [rbx + 0x28], 0
	jle	.label_1463
	mov	rax, qword ptr [rbx]
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1459:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1458
	inc	rcx
	cmp	rcx, qword ptr [rbx + 0x28]
	jl	.label_1459
.label_1463:
	mov	r15d, esi
	cmp	qword ptr [rbx + 0x48], 0
	jle	.label_1464
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_1453:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_1446
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x48]
	jl	.label_1453
.label_1464:
	xor	ecx, ecx
	cmp	qword ptr [rbx + 0x40], 0
	mov	esi, r15d
	jle	.label_1451
	mov	rax, qword ptr [rbx + 8]
	xor	edx, edx
	nop	
.label_1457:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1456
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_1458
.label_1456:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbx + 0x40]
	jl	.label_1457
	jmp	.label_1451
.label_1467:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_1448
	mov	eax, esi
	jmp	.label_1448
.label_1446:
	mov	esi, r15d
.label_1458:
	mov	ecx, esi
.label_1451:
	test	byte ptr [rbx + 0x20], 1
	jne	.label_1468
	mov	eax, ecx
	jmp	.label_1448
.label_1468:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_1448
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_1448:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1445:
	mov	rsi, qword ptr [r13 + 8]
	mov	dl, byte ptr [rsi + rcx]
	xor	eax, eax
	cmp	dl, 0xc2
	jb	.label_1448
	mov	rdi, rcx
	lea	rcx, [rcx + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1450
	xor	eax, eax
	jmp	.label_1448
.label_1450:
	mov	cl, byte ptr [rsi + rdi + 1]
	cmp	dl, 0xdf
	ja	.label_1454
	cmp	cl, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_1448
.label_1454:
	cmp	dl, 0xef
	ja	.label_1461
	mov	eax, 3
	cmp	dl, 0xe0
	jne	.label_1449
	cmp	cl, 0xa0
	jae	.label_1449
	xor	eax, eax
	jmp	.label_1448
.label_1461:
	cmp	dl, 0xf7
	ja	.label_1466
	mov	eax, 4
	cmp	dl, 0xf0
	jne	.label_1449
	cmp	cl, 0x90
	jae	.label_1449
	xor	eax, eax
	jmp	.label_1448
.label_1466:
	cmp	dl, 0xfb
	ja	.label_1469
	mov	eax, 5
	cmp	dl, 0xf8
	jne	.label_1449
	cmp	cl, 0x88
	jae	.label_1449
	xor	eax, eax
	jmp	.label_1448
.label_1469:
	cmp	dl, 0xfd
	ja	.label_1447
	mov	eax, 6
	cmp	dl, 0xfc
	jne	.label_1449
	cmp	cl, 0x84
	jae	.label_1449
	xor	eax, eax
	jmp	.label_1448
.label_1449:
	mov	ecx, eax
	lea	rdx, [rcx + rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_1455
	xor	eax, eax
	jmp	.label_1448
.label_1455:
	add	rdi, qword ptr [r13 + 8]
	mov	edx, 1
.label_1460:
	movzx	ebx, byte ptr [rdi + rdx]
	test	bl, bl
	jns	.label_1447
	cmp	bl, 0xbf
	ja	.label_1447
	inc	rdx
	cmp	rdx, rcx
	jl	.label_1460
	jmp	.label_1448
.label_1447:
	xor	eax, eax
	jmp	.label_1448
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40f460

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	mov	cl, byte ptr [rbx + 8]
	xor	eax, eax
	dec	cl
	movzx	ecx, cl
	cmp	cl, 6
	ja	.label_1475
	jmp	qword ptr [(rcx * 8) + label_1473]
.label_1889:
	cmp	byte ptr [rbx], sil
	je	.label_1471
	xor	eax, eax
	jmp	.label_1475
.label_1890:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_1471
	xor	eax, eax
	jmp	.label_1475
.label_1892:
	test	sil, sil
	js	.label_1479
.label_1891:
	test	sil, sil
	je	.label_1474
	cmp	sil, 0xa
	jne	.label_1471
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1471
	xor	eax, eax
	jmp	.label_1475
.label_1474:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1476
.label_1471:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_1475
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_1472
	test	ecx, ecx
	jne	.label_1472
	xor	eax, eax
	jmp	.label_1475
.label_1472:
	mov	edx, ebp
	test	dh, 8
	je	.label_1477
	test	ecx, ecx
	je	.label_1477
.label_1479:
	xor	eax, eax
	jmp	.label_1475
.label_1477:
	test	dh, 0x20
	je	.label_1478
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1478
.label_1476:
	xor	eax, eax
	jmp	.label_1475
.label_1478:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1475:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f560
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40f570

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1481
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1487:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1480
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1486
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1488
	test	ecx, ecx
	je	.label_1480
.label_1488:
	test	bh, 8
	je	.label_1483
	test	ecx, ecx
	jne	.label_1480
.label_1483:
	test	bh, 0x20
	je	.label_1485
	mov	ecx, eax
	and	ecx, 2
	je	.label_1480
.label_1485:
	test	bpl, bpl
	jns	.label_1486
	and	eax, 8
	je	.label_1480
	nop	word ptr cs:[rax + rax]
.label_1486:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1480
	mov	rbp, r12
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	mov	ecx, dword ptr [r15 + 0xe0]
	cmp	ecx, eax
	cmovl	ecx, eax
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	mov	rsi, r12
	call	clean_state_log_if_needed
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1481
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1484
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	je	.label_1482
	jmp	.label_1481
.label_1484:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1482:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 4]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1489
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1489:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1480
	mov	eax, dword ptr [rsp + 4]
	test	eax, eax
	jne	.label_1481
	nop	word ptr cs:[rax + rax]
.label_1480:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1487
.label_1481:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40f770

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r15, rsi
	mov	rbx, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r14, rax
	test	r14, r14
	je	.label_1517
	lea	r12, [r14 + 0x1800]
	lea	r13, [r15 + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x58], xmm0
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x90], r15
	mov	rsi, r15
	mov	rdx, r14
	mov	rcx, r12
	call	group_nodes_into_DFAstates
	mov	r15, rax
	test	r15, r15
	jle	.label_1525
	lea	rsi, [r15 + 1]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r15, rcx
	ja	.label_1502
	test	eax, eax
	jne	.label_1502
	lea	rax, [r15*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	mov	qword ptr [rbp - 0x98], r13
	ja	.label_1491
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0x44], 0
	jmp	.label_1529
.label_1491:
	call	malloc
	test	rax, rax
	je	.label_1502
	mov	cl, 1
	mov	dword ptr [rbp - 0x44], ecx
.label_1529:
	mov	qword ptr [rbp - 0x40], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x58], r15
	mov	qword ptr [rbp - 0x38], rax
	lea	rax, [rax + r15*8]
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rbp - 0xc0]
	call	bitset_empty
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], r14
	mov	qword ptr [rbp - 0x68], r12
	nop	word ptr [rax + rax]
.label_1527:
	mov	qword ptr [rbp - 0x80], 0
	lea	rax, [r15 + r15*2]
	cmp	qword ptr [r14 + rax*8 + 8], 0
	jle	.label_1506
	mov	rcx, qword ptr [rbp - 0x60]
	lea	r12, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1530:
	mov	rax, qword ptr [r13 + r14*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_1524
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x88]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_1496
.label_1524:
	inc	r14
	cmp	r14, qword ptr [r12]
	jl	.label_1530
.label_1506:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1494
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1496
.label_1494:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1497
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + r15*8]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	jmp	.label_1498
	nop	
.label_1497:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1508
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1496
.label_1508:
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	qword ptr [rcx + r15*8], rax
	je	.label_1512
	cmp	dword ptr [rbx + 0xb4], 1
	mov	al, 1
	jg	.label_1515
	mov	rax, qword ptr [rbp - 0x50]
.label_1515:
	mov	qword ptr [rbp - 0x50], rax
.label_1512:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x88]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rcx + r15*8], rax
	test	rax, rax
	jne	.label_1498
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	jne	.label_1496
	nop	dword ptr [rax]
.label_1498:
	mov	rsi, r15
	shl	rsi, 5
	mov	r12, qword ptr [rbp - 0x68]
	add	rsi, r12
	lea	rdi, [rbp - 0xc0]
	call	bitset_merge
	inc	r15
	cmp	r15, qword ptr [rbp - 0x58]
	mov	r14, qword ptr [rbp - 0x60]
	jl	.label_1527
	mov	rax, qword ptr [rbp - 0x50]
	and	al, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	edi, 8
	jne	.label_1531
	mov	esi, 0x100
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_1496
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	r14d, r14d
	mov	r12, qword ptr [rbp - 0x68]
	mov	r9, r12
	xor	r13d, r13d
	mov	r15, qword ptr [rbp - 0x58]
	nop	dword ptr [rax]
.label_1522:
	mov	rdi, qword ptr [rbp + r13*8 - 0xc0]
	test	rdi, rdi
	je	.label_1526
	mov	rcx, r14
	mov	edx, 1
	jmp	.label_1505
.label_1519:
	mov	r11, r9
	mov	r10, r8
	nop	dword ptr [rax]
.label_1509:
	add	r10, 8
	test	qword ptr [r11], rdx
	lea	r11, [r11 + 0x20]
	je	.label_1509
	test	qword ptr [rbx + r13*8 + 0xb8], rdx
	je	.label_1511
	mov	rax, qword ptr [r10 + r15*8]
	jmp	.label_1514
.label_1511:
	mov	rax, qword ptr [r10]
.label_1514:
	mov	rsi, qword ptr [rbp - 0x38]
	mov	qword ptr [rsi + rcx*8], rax
	jmp	.label_1523
	nop	word ptr [rax + rax]
.label_1505:
	test	dil, 1
	jne	.label_1519
.label_1523:
	add	rdx, rdx
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_1505
.label_1526:
	inc	r13
	add	r14, 0x40
	add	r9, 8
	cmp	r13, 4
	jne	.label_1522
.label_1507:
	lea	rdi, [rbp - 0xc0]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	je	.label_1493
	test	r15, r15
	jle	.label_1493
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1490:
	mov	esi, 0xa
	mov	rdi, r12
	call	bitset_contain
	test	al, al
	jne	.label_1513
	inc	rbx
	add	r12, 0x20
	cmp	rbx, r15
	jl	.label_1490
	jmp	.label_1493
.label_1513:
	mov	rax, r15
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	qword ptr [rdx + 0x50], rcx
	je	.label_1493
	mov	rax, qword ptr [rax + rbx*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x850], rax
.label_1493:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	je	.label_1499
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
.label_1499:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_1504
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1510:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1510
.label_1504:
	mov	rdi, r14
	call	free
	mov	al, 1
.label_1518:
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1517:
	xor	eax, eax
	jmp	.label_1518
.label_1525:
	mov	rdi, r14
	call	free
	test	r15, r15
	je	.label_1520
	xor	eax, eax
	jmp	.label_1518
.label_1531:
	mov	esi, 0x200
	call	rpl_calloc
	mov	rcx, rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rax + 0x60], rcx
	mov	qword ptr [rbp - 0x38], rcx
	test	rcx, rcx
	je	.label_1496
	mov	rax, qword ptr [rbp - 0x40]
	lea	r8, [rax - 8]
	xor	ebx, ebx
	mov	r12, qword ptr [rbp - 0x68]
	mov	r11, r12
	xor	esi, esi
	mov	r15, qword ptr [rbp - 0x58]
.label_1503:
	mov	rdi, qword ptr [rbp + rsi*8 - 0xc0]
	test	rdi, rdi
	je	.label_1528
	mov	rcx, rbx
	mov	eax, 1
	jmp	.label_1501
.label_1500:
	mov	r10, r11
	mov	r9, r8
.label_1492:
	add	r9, 8
	test	qword ptr [r10], rax
	lea	r10, [r10 + 0x20]
	je	.label_1492
	mov	rdx, qword ptr [r9]
	mov	r10, qword ptr [rbp - 0x38]
	mov	qword ptr [r10 + rcx*8], rdx
	mov	rdx, qword ptr [r9 + r15*8]
	mov	qword ptr [r10 + rcx*8 + 0x800], rdx
	jmp	.label_1495
	nop	word ptr cs:[rax + rax]
.label_1501:
	test	dil, 1
	jne	.label_1500
.label_1495:
	add	rax, rax
	shr	rdi, 1
	inc	rcx
	test	rdi, rdi
	jne	.label_1501
.label_1528:
	inc	rsi
	add	rbx, 0x40
	add	r11, 8
	cmp	rsi, 4
	jne	.label_1503
	jmp	.label_1507
.label_1496:
	mov	eax, dword ptr [rbp - 0x44]
	test	al, al
	mov	r14, qword ptr [rbp - 0x60]
	mov	r15, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x40]
	je	.label_1502
	call	free
.label_1502:
	mov	rdi, qword ptr [rbp - 0x78]
	call	free
	test	r15, r15
	jle	.label_1516
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr [rax + rax]
.label_1521:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r15
	jne	.label_1521
.label_1516:
	mov	rdi, r14
	call	free
	xor	eax, eax
	jmp	.label_1518
.label_1520:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1518
	nop	
	.section	.text
	.align	32
	#Procedure 0x40fce0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xa8
	mov	qword ptr [rsp + 0x50], rcx
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rdi
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
	xor	r12d, r12d
	cmp	qword ptr [r13 + 0x10], 0
	jle	.label_1534
	xor	r15d, r15d
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x58], r13
	nop	dword ptr [rax + rax]
.label_1576:
	mov	rax, qword ptr [r13 + 0x18]
	mov	qword ptr [rsp + 8], r15
	mov	rbx, qword ptr [rax + r15*8]
	mov	r14, qword ptr [rbp]
	shl	rbx, 4
	lea	rbp, [r14 + rbx]
	mov	r15d, dword ptr [r14 + rbx + 8]
	movzx	eax, r15b
	mov	dword ptr [rsp + 0x14], eax
	cmp	eax, 1
	mov	qword ptr [rsp + 0x18], rbp
	jne	.label_1543
	movzx	esi, byte ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_set
.label_1535:
	shr	r15d, 8
	mov	eax, r15d
	and	eax, 0x3ff
	je	.label_1549
	test	r15b, 0x20
	je	.label_1561
	mov	esi, 0xa
	lea	rbp, [rsp + 0x20]
	mov	rdi, rbp
	call	bitset_contain
	mov	r13d, eax
	mov	rdi, rbp
	call	bitset_empty
	test	r13b, r13b
	je	.label_1567
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	r13, qword ptr [rsp + 0x58]
	mov	rbp, qword ptr [rsp + 0x18]
.label_1561:
	test	r15b, r15b
	js	.label_1557
	lea	rax, [r14 + rbx + 8]
	test	r15b, 4
	je	.label_1575
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_1574
	test	byte ptr [rax + 2], 0x40
	je	.label_1557
.label_1574:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 1
	jle	.label_1577
	mov	rdx, qword ptr [rbp + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	dword ptr [rax]
.label_1536:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [rbp + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x20]
	mov	qword ptr [rsp + rsi*8 + 0x20], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_1536
	jmp	.label_1544
	nop	word ptr [rax + rax]
.label_1543:
	cmp	r15b, 7
	je	.label_1546
	cmp	r15b, 5
	je	.label_1548
	cmp	r15b, 3
	jne	.label_1545
	mov	rsi, qword ptr [rbp]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_1535
.label_1567:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	mov	r13, qword ptr [rsp + 0x58]
	jmp	.label_1556
.label_1546:
	pcmpeqd	xmm0, xmm0
	movdqa	xmmword ptr [rsp + 0x20], xmm0
	mov	rax, qword ptr [rsp]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1559
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_1559:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	jns	.label_1535
	jmp	.label_1568
.label_1548:
	mov	rbp, qword ptr [rsp]
	cmp	dword ptr [rbp + 0xb4], 2
	jl	.label_1569
	mov	rsi, qword ptr [rbp + 0x78]
	lea	rdi, [rsp + 0x20]
	call	bitset_merge
	jmp	.label_1552
.label_1569:
	lea	rdi, [rsp + 0x20]
	call	bitset_set_all
.label_1552:
	test	byte ptr [rbp + 0xd8], 0x40
	jne	.label_1573
	mov	esi, 0xa
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
.label_1573:
	mov	rax, qword ptr [rsp]
	cmp	byte ptr [rax + 0xd8], 0
	mov	rbp, qword ptr [rsp + 0x18]
	jns	.label_1535
.label_1568:
	xor	esi, esi
	lea	rdi, [rsp + 0x20]
	call	bitset_clear
	jmp	.label_1535
.label_1577:
	xor	ecx, ecx
	xor	edx, edx
	nop	
.label_1539:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x20]
	and	rsi, qword ptr [rbp + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1539
.label_1544:
	test	rcx, rcx
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_1545
.label_1575:
	test	r15b, 8
	je	.label_1549
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_1551
	test	byte ptr [rax + 2], 0x40
	jne	.label_1557
.label_1551:
	mov	rdi, qword ptr [rsp]
	cmp	dword ptr [rdi + 0xb4], 1
	jle	.label_1554
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1560:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x20], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1560
	jmp	.label_1566
	nop	word ptr [rax + rax]
.label_1557:
	lea	rdi, [rsp + 0x20]
	call	bitset_empty
.label_1545:
	mov	rbp, qword ptr [rsp]
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1556
.label_1554:
	xor	eax, eax
	xor	ecx, ecx
	nop	dword ptr [rax]
.label_1572:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1572
.label_1566:
	test	rax, rax
	je	.label_1545
	nop	word ptr cs:[rax + rax]
.label_1549:
	test	r12, r12
	jle	.label_1532
	mov	rbx, qword ptr [rsp + 0x50]
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1533
.label_1532:
	xor	r14d, r14d
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1537
.label_1570:
	mov	r15, qword ptr [rsp + 8]
	jmp	.label_1541
	nop	dword ptr [rax + rax]
.label_1533:
	cmp	dword ptr [rsp + 0x14], 1
	jne	.label_1540
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	movzx	esi, byte ptr [rbp]
	call	bitset_contain
	mov	ecx, 0x13
	test	al, al
	je	.label_1550
.label_1540:
	mov	rcx, rbx
	xor	eax, eax
	xor	edx, edx
.label_1555:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x20]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_1555
	mov	ecx, 0x13
	test	rax, rax
	je	.label_1550
	xor	ebp, ebp
	xor	eax, eax
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1565:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x20]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x60], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x20]
	mov	qword ptr [rsp + rcx*8 + 0x20], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_1565
	test	rax, rax
	je	.label_1553
	mov	rdi, r12
	shl	rdi, 5
	mov	r15, qword ptr [rsp + 0x50]
	add	rdi, r15
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	mov	rdi, r14
	shl	rdi, 5
	add	rdi, r15
	lea	rsi, [rsp + 0x80]
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	lea	rax, [r14 + r14*2]
	lea	rsi, [rcx + rax*8]
	call	re_node_set_init_copy
	mov	ecx, 0x1a
	test	eax, eax
	jne	.label_1570
	inc	r12
	mov	r15, qword ptr [rsp + 8]
.label_1553:
	lea	rax, [r14 + r14*2]
	mov	rcx, qword ptr [rsp + 0x48]
	lea	rdi, [rcx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_insert
	mov	ecx, 0x1a
	test	al, al
	je	.label_1541
	test	rbp, rbp
	mov	ecx, 0
	mov	eax, 0x11
	cmove	ecx, eax
.label_1541:
	mov	rbp, qword ptr [rsp + 0x18]
.label_1550:
	mov	eax, ecx
	and	al, 0x1f
	je	.label_1563
	cmp	al, 0x13
	jne	.label_1558
.label_1563:
	inc	r14
	add	rbx, 0x20
	cmp	r14, r12
	jl	.label_1533
	jmp	.label_1537
.label_1558:
	cmp	al, 0x11
	jne	.label_1562
	nop	dword ptr [rax]
.label_1537:
	cmp	r14, r12
	jne	.label_1564
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x50]
	lea	rbx, [rsp + 0x20]
	mov	r14, rbx
	mov	rsi, r14
	call	bitset_copy
	lea	rax, [r12 + r12*2]
	mov	rbx, qword ptr [rsp + 0x48]
	lea	rdi, [rbx + rax*8]
	mov	rax, qword ptr [r13 + 0x18]
	mov	rsi, qword ptr [rax + r15*8]
	call	re_node_set_init_1
	test	eax, eax
	mov	rbp, qword ptr [rsp]
	jne	.label_1571
	inc	r12
	mov	rdi, r14
	call	bitset_empty
	jmp	.label_1556
.label_1562:
	and	cl, 0x1f
	jne	.label_1547
.label_1564:
	mov	rbp, qword ptr [rsp]
.label_1556:
	inc	r15
	cmp	r15, qword ptr [r13 + 0x10]
	jl	.label_1576
.label_1534:
	mov	rax, r12
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1547:
	cmp	cl, 0x1a
	mov	rbx, qword ptr [rsp + 0x48]
	jne	.label_1534
.label_1571:
	test	r12, r12
	jle	.label_1538
	add	rbx, 0x10
	nop	
.label_1542:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1542
.label_1538:
	mov	r12, -1
	jmp	.label_1534
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410240

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410250

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1578:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1578
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410280

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	pcmpeqd	xmm0, xmm0
	movdqu	xmmword ptr [rdi + 0x10], xmm0
	movdqu	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410290

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	ecx, esi
	rol	rax, cl
	mov	rcx, rsi
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	add	rcx, rsi
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4102c0

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4102d0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	cmp	cl, 2
	jne	.label_1579
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_1583
	mov	eax, edx
	and	eax, 1
	jne	.label_1582
	mov	esi, ecx
	and	esi, 4
	jne	.label_1579
.label_1582:
	test	eax, eax
	je	.label_1581
	mov	eax, ecx
	and	eax, 8
	jne	.label_1579
.label_1581:
	test	dl, 2
	jne	.label_1580
	mov	eax, ecx
	and	eax, 0x20
	je	.label_1580
.label_1579:
	xor	eax, eax
.label_1583:
	ret	
.label_1580:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	eax, edx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x410330

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	qword ptr [rdi], rsi
	mov	qword ptr [rdi + 8], rdx
	mov	qword ptr [rdi + 0x10], rcx
	mov	qword ptr [rdi + 0x18], r8
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	qword ptr [rdi + 0x30], 0
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410350

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	call	re_node_set_init_1
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1587
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1585
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1588:
	test	rbx, rbx
	jle	.label_1584
	mov	rdi, qword ptr [r14]
	inc	r13d
	cmp	qword ptr [rdi + rbx*8], 0
	mov	eax, 0
	cmovne	r13d, eax
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1589
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_1586
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1585
.label_1586:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1588
	jmp	.label_1585
.label_1584:
	xor	ebp, ebp
	jmp	.label_1585
.label_1589:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1585:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1587:
	mov	eax, ebp
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
	.align	32
	#Procedure 0x410450

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, rcx
	mov	r15, rdx
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	test	r14, r14
	jle	.label_1593
	xor	ebp, ebp
	lea	r13, [rsp + 0x10]
	nop	dword ptr [rax + rax]
.label_1592:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_1590
	test	rax, rax
	je	.label_1591
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1593
	lea	rdi, [rsp + 0xc]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1591
	jmp	.label_1593
	nop	dword ptr [rax + rax]
.label_1590:
	mov	qword ptr [rbx + rbp*8], rax
.label_1591:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_1592
.label_1593:
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
	.align	32
	#Procedure 0x410500

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	mov	r15, rdx
	mov	rbx, rdi
	mov	rbp, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0xc], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_1594
	test	r14, r14
	mov	qword ptr [rsp + 0x10], rsi
	je	.label_1595
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1596
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1595
	lea	rcx, [rcx + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1596
.label_1595:
	lea	rdi, [rsp + 0xc]
	mov	rsi, rbp
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0xc]
	test	eax, eax
	je	.label_1597
	jmp	.label_1596
.label_1594:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_1597:
	test	r14, r14
	je	.label_1598
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1598
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0xc], eax
	test	eax, eax
	jne	.label_1596
.label_1598:
	xor	eax, eax
.label_1596:
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
	.align	32
	#Procedure 0x410610

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1604
	mov	rax, qword ptr [rsp + 0x10]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1602:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_1599
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_1600
.label_1599:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_1603
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_1603
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_1603
.label_1600:
	mov	rcx, qword ptr [rsp + 8]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1605
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	mov	ecx, 4
	test	al, al
	jne	.label_1601
.label_1605:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	call	re_node_set_insert
	movzx	ecx, al
	xor	ecx, 1
.label_1601:
	or	cl, 4
	mov	eax, 0xc
	and	cl, 7
	cmp	cl, 4
	jne	.label_1604
.label_1603:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_1602
.label_1604:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x410770

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	mov	dword ptr [rsp + 4], 0
	lea	rdi, [rsp + 4]
	mov	rsi, r15
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	jne	.label_1606
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1608
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1606
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1608
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1607:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	dword ptr [rsp + 4], eax
	test	eax, eax
	jne	.label_1606
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1607
.label_1608:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1606:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410830

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x18], r9
	mov	qword ptr [rsp + 0x10], r8
	mov	qword ptr [rsp], rdx
	mov	r12, rsi
	mov	r13, rdi
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rcx
	cmp	qword ptr [rcx + 8], 0
	jle	.label_1615
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1609:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 0x10], rcx
	jge	.label_1616
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + rax*8 + 8], rcx
	jl	.label_1616
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [rsi + rax*8]
	mov	rdx, qword ptr [r13]
	shl	rcx, 4
	mov	r14, qword ptr [rdx + rcx]
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsi + rax*8 + 0x18], rcx
	jne	.label_1611
	cmp	qword ptr [r12 + 8], 0
	jle	.label_1616
	mov	r8, qword ptr [r12 + 8]
	mov	rcx, qword ptr [r12 + 0x10]
	mov	rdx, qword ptr [r13]
	mov	r9, -1
	xor	edi, edi
	mov	rsi, -1
	nop	word ptr [rax + rax]
.label_1623:
	mov	rbx, qword ptr [rcx + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rdx + rbp + 8]
	cmp	al, 9
	je	.label_1610
	cmp	al, 8
	jne	.label_1618
	cmp	r14, qword ptr [rdx + rbp]
	cmove	rsi, rbx
	jmp	.label_1618
	nop	word ptr cs:[rax + rax]
.label_1610:
	mov	rax, qword ptr [r13]
	cmp	r14, qword ptr [rax + rbp]
	cmove	r9, rbx
.label_1618:
	inc	rdi
	cmp	rdi, r8
	jl	.label_1623
	test	rsi, rsi
	js	.label_1612
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	mov	rbx, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbx
	test	eax, eax
	jne	.label_1615
.label_1612:
	test	r9, r9
	js	.label_1616
	cmp	qword ptr [r12 + 8], 0
	jle	.label_1616
	xor	ebp, ebp
	mov	qword ptr [rsp + 8], r12
	jmp	.label_1622
.label_1611:
	cmp	qword ptr [r12 + 8], 0
	jle	.label_1616
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1619:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edx, dword ptr [rax + rcx + 8]
	mov	edi, 0xfe
	and	edx, edi
	or	edx, 1
	cmp	edx, 9
	jne	.label_1613
	cmp	r14, qword ptr [rax + rcx]
	jne	.label_1613
	mov	rdi, r13
	mov	rdx, r12
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	jne	.label_1615
.label_1613:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_1619
	jmp	.label_1616
.label_1617:
	mov	rdi, r12
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 8]
	mov	rdx, r14
	mov	rcx, qword ptr [rsp]
	call	sub_epsilon_src_nodes
	test	eax, eax
	mov	r9, rbx
	mov	r13, r12
	mov	r12, r14
	jne	.label_1615
	dec	rbp
	jmp	.label_1620
.label_1622:
	mov	rax, qword ptr [r12 + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r9
	mov	r12, r13
	mov	r13, r9
	call	re_node_set_contains
	test	rax, rax
	je	.label_1621
	mov	r9, r13
	jmp	.label_1614
	nop	dword ptr [rax]
.label_1621:
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rbx, r13
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1617
	mov	r9, rbx
.label_1614:
	mov	r13, r12
	mov	r12, qword ptr [rsp + 8]
.label_1620:
	inc	rbp
	cmp	rbp, qword ptr [r12 + 8]
	jl	.label_1622
	nop	
.label_1616:
	inc	r15
	xor	eax, eax
	mov	rcx, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rcx + 8]
	jl	.label_1609
.label_1615:
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
	.align	32
	#Procedure 0x410ab0

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	rbx, rcx
	mov	qword ptr [rsp + 8], rsi
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	qword ptr [rsp + 0x18], rdi
	mov	rax, rdx
	mov	qword ptr [rsp + 0x10], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	xor	r12d, r12d
	mov	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
	cmp	rax, -1
	je	.label_1630
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1630
	mov	rax, qword ptr [rsp + 8]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 0x38], rax
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x80], rax
	mov	rax, qword ptr [rsp + 0x30]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x90], rbx
	nop	word ptr [rax + rax]
.label_1633:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	mov	rdx, qword ptr [rsp + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1632
	cmp	eax, 4
	jne	.label_1624
	mov	rax, qword ptr [rsp + 0x10]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1636
	jmp	.label_1624
	nop	word ptr cs:[rax + rax]
.label_1632:
	cmp	eax, 4
	jne	.label_1624
.label_1636:
	mov	r14, qword ptr [rsp + 0x30]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x18]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x88]
	nop	word ptr [rax + rax]
.label_1631:
	cmp	qword ptr [rbp], r15
	jne	.label_1634
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rbx, rax
	sub	rbx, rcx
	add	rbx, qword ptr [rsp + 0x10]
	cmp	rax, rcx
	je	.label_1635
	lea	rax, [r15*8]
	mov	rcx, qword ptr [rsp + 0x20]
	add	rax, qword ptr [rcx + 0x18]
	jmp	.label_1625
.label_1635:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
.label_1625:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1634
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1634
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1629
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_1634
	cmp	qword ptr [rsp + 0x40], 0
	jne	.label_1626
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x70], rax
	movups	xmm0, xmmword ptr [rcx]
	movups	xmm1, xmmword ptr [rcx + 0x10]
	movups	xmm2, xmmword ptr [rcx + 0x20]
	movaps	xmmword ptr [rsp + 0x60], xmm2
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	lea	rdi, [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x38]
	call	re_node_set_init_copy
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1628
.label_1626:
	mov	qword ptr [rsp + 0x50], r15
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x58], rax
	lea	rdi, [rsp + 0x60]
	mov	rsi, r14
	call	re_node_set_insert
	mov	r12d, 0xc
	test	al, al
	je	.label_1628
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x18]
	lea	rsi, [rsp + 0x40]
	call	sift_states_backward
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1628
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax + 8]
	test	rsi, rsi
	je	.label_1627
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x80]
	call	merge_state_array
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1628
.label_1627:
	mov	rax, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbx, [rsp + 0x60]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
.label_1629:
	mov	rdx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_1634:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_1631
.label_1624:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x90]
	mov	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	cmp	rcx, qword ptr [rbx + 8]
	jl	.label_1633
.label_1628:
	cmp	qword ptr [rsp + 0x40], 0
	je	.label_1630
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_1630:
	mov	eax, r12d
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
	.align	32
	#Procedure 0x410e00

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	r12, rsi
	mov	r14, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1637
	mov	rcx, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_1637
	add	rcx, rdx
	mov	rax, qword ptr [r14 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r14]
	cmp	rax, rbx
	jle	.label_1648
	add	rbx, rcx
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1637
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
.label_1648:
	mov	rcx, qword ptr [r14 + 8]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsi, qword ptr [r12 + 0x10]
	lea	r9, [rdx + rcx]
	mov	r10, qword ptr [r15 + 8]
	mov	r8, qword ptr [r15 + 0x10]
	add	r9, r10
	dec	rcx
.label_1652:
	dec	rdx
	mov	rdi, r10
.label_1653:
	lea	r10, [rdi - 1]
	mov	rbx, qword ptr [r8 + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_1647:
	cmp	qword ptr [rsi + rdx*8], rbx
	je	.label_1644
	jl	.label_1646
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1647
	jmp	.label_1640
	nop	word ptr cs:[rax + rax]
.label_1646:
	cmp	rdi, 2
	mov	rdi, r10
	jge	.label_1653
	jmp	.label_1640
	nop	dword ptr [rax + rax]
.label_1644:
	test	rcx, rcx
	js	.label_1642
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1651:
	cmp	qword ptr [rbx + rcx*8], rax
	jle	.label_1649
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1651
	jmp	.label_1642
.label_1649:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rbx, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rbx + rdx*8]
	je	.label_1639
	nop	word ptr cs:[rax + rax]
.label_1642:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	qword ptr [rbx + r9*8 - 8], rax
	dec	r9
.label_1639:
	test	rdx, rdx
	jle	.label_1640
	cmp	rdi, 2
	jge	.label_1652
.label_1640:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	add	rdx, rax
	lea	r10, [rcx + rdx - 1]
	mov	rcx, r10
	sub	rcx, r9
	lea	r8, [rcx + 1]
	lea	rdx, [rcx + rax + 1]
	mov	qword ptr [r14 + 8], rdx
	test	rax, rax
	jle	.label_1638
	test	rcx, rcx
	js	.label_1638
	dec	rax
	mov	rdi, qword ptr [r14 + 0x10]
	xor	edx, edx
.label_1650:
	lea	rcx, [rax + r8]
	lea	rbx, [rdi + rcx*8]
	nop	word ptr [rax + rax]
.label_1643:
	mov	rcx, qword ptr [rdi + r10*8]
	mov	rsi, qword ptr [rdi + rax*8]
	cmp	rcx, rsi
	jg	.label_1645
	mov	qword ptr [rbx], rsi
	add	rbx, -8
	test	rax, rax
	lea	rax, [rax - 1]
	jg	.label_1643
	jmp	.label_1638
	nop	
.label_1645:
	dec	r10
	dec	r8
	mov	qword ptr [rbx], rcx
	jne	.label_1650
	jmp	.label_1641
.label_1638:
	mov	rdx, r8
.label_1641:
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + r9*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1637:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rbx + rbx*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	qword ptr [rsp + 0x20], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1660
	mov	qword ptr [rsp], rdx
	lea	r12, [rax + rcx*8]
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_1654:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + r14*8]
	cmp	rax, rbx
	je	.label_1655
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1655
	mov	rcx, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	r13, [rax + rax*2]
	mov	rax, qword ptr [rcx + r13*8 + 0x10]
	mov	r15, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + r13*8 + 8], 2
	jl	.label_1662
	mov	rbp, qword ptr [rax + 8]
.label_1662:
	mov	rdi, r12
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1658
	mov	rdi, qword ptr [rsp]
	mov	rsi, r15
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1657
.label_1658:
	test	rbp, rbp
	jle	.label_1655
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1655
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_1655
.label_1657:
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + r13*8]
	lea	rdi, [rsp + 0x10]
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1663
	nop	word ptr cs:[rax + rax]
.label_1655:
	inc	r14
	mov	rax, qword ptr [r12 + 8]
	cmp	r14, rax
	jl	.label_1654
	test	rax, rax
	mov	r14, qword ptr [rsp]
	jle	.label_1660
	xor	ebx, ebx
	lea	r15, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1656:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r15
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1661
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r14
	call	re_node_set_remove_at
.label_1661:
	inc	rbx
	cmp	rbx, qword ptr [r12 + 8]
	jl	.label_1656
.label_1660:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	xor	ebp, ebp
.label_1659:
	mov	eax, ebp
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1663:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	jmp	.label_1659
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4111a0

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	qword ptr [rsp + 0x30], r14
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1664
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1666:
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	mov	rdi, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	al, 1
	jne	.label_1665
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_1666
.label_1664:
	xor	eax, eax
.label_1665:
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
	.align	32
	#Procedure 0x411290

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_1667
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_1667
	push	rbx
	xor	ebx, ebx
	cmp	r11, r8
	sete	bl
	xor	esi, esi
	cmp	r10, r8
	sete	sil
	add	esi, esi
	xor	eax, eax
	or	esi, ebx
	pop	rbx
	je	.label_1667
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1667:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4112e0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r15, rcx
	mov	dword ptr [rsp + 0xc], esi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r10, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [r10 + 0x30]
	lea	rcx, [r15 + r15*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1674
	lea	r11, [rax + rcx*8 + 8]
	mov	esi, 1
	mov	ecx, edx
	shl	rsi, cl
	mov	eax, dword ptr [rsp + 0xc]
	mov	ecx, eax
	shl	ecx, 0x1f
	sar	ecx, 0x1f
	mov	dword ptr [rsp + 0x1c], ecx
	mov	qword ptr [rsp + 0x50], rsi
	xor	rsi, 0xffff
	mov	qword ptr [rsp + 0x28], rsi
	mov	ecx, eax
	and	ecx, 2
	mov	dword ptr [rsp + 0x10], ecx
	shr	ecx, 1
	cmp	rdx, 0x3f
	setg	bl
	mov	dword ptr [rsp + 0x14], ecx
	or	bl, cl
	mov	byte ptr [rsp + 0xb], bl
	and	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x38], r10
	mov	qword ptr [rsp + 0x30], rdx
	nop	word ptr cs:[rax + rax]
.label_1672:
	mov	rax, qword ptr [r11 + 8]
	mov	r14, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r10]
	mov	rsi, r14
	shl	rsi, 4
	lea	rdi, [rax + rsi]
	mov	al, byte ptr [rax + rsi + 8]
	cmp	al, 9
	je	.label_1668
	cmp	al, 8
	je	.label_1675
	cmp	al, 4
	jne	.label_1673
	cmp	r8, -1
	je	.label_1673
	lea	r13, [r8 + r8*4]
	shl	r13, 3
	mov	rax, qword ptr [rsp + 0x20]
	add	r13, qword ptr [rax + 0xd8]
	mov	r12d, ecx
	mov	qword ptr [rsp + 0x48], rbx
	mov	qword ptr [rsp + 0x40], r14
	nop	dword ptr [rax]
.label_1683:
	mov	ebp, 7
	cmp	qword ptr [r13], r14
	jne	.label_1681
	cmp	rdx, 0x3f
	jg	.label_1679
	movzx	eax, word ptr [r13 + 0x22]
	test	qword ptr [rsp + 0x50], rax
	je	.label_1681
.label_1679:
	mov	rax, qword ptr [r10 + 0x28]
	lea	rcx, [r14 + r14*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	mov	ebp, 1
	cmp	rcx, r15
	jne	.label_1671
	mov	ecx, dword ptr [rsp + 0x1c]
	jmp	.label_1670
	nop	dword ptr [rax + rax]
.label_1671:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	esi, dword ptr [rsp + 0xc]
	mov	rbx, r8
	mov	r14, r11
	call	check_dst_limits_calc_pos_1
	mov	r11, r14
	mov	r14, qword ptr [rsp + 0x40]
	mov	r10, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r8, rbx
	mov	rbx, qword ptr [rsp + 0x48]
	mov	ecx, 0xffffffff
	cmp	eax, -1
	je	.label_1670
	test	eax, eax
	jne	.label_1677
	cmp	dword ptr [rsp + 0x10], 0
	mov	ecx, r12d
	mov	eax, 0
	cmovne	ecx, eax
	cmp	byte ptr [rsp + 0xb], 0
	mov	ebp, dword ptr [rsp + 0x14]
	je	.label_1678
	jmp	.label_1670
.label_1677:
	xor	ebp, ebp
	cmp	rdx, 0x3f
	jg	.label_1681
.label_1678:
	movzx	eax, word ptr [r13 + 0x22]
	mov	rcx, qword ptr [rsp + 0x28]
	and	eax, ecx
	mov	word ptr [r13 + 0x22], ax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1681:
	mov	ecx, r12d
.label_1670:
	mov	eax, ebp
	and	al, 7
	cmp	al, 7
	je	.label_1680
	test	al, al
	jne	.label_1682
.label_1680:
	cmp	byte ptr [r13 + 0x20], 0
	lea	r13, [r13 + 0x28]
	mov	r12d, ecx
	jne	.label_1683
	jmp	.label_1673
	nop	word ptr cs:[rax + rax]
.label_1668:
	cmp	dword ptr [rsp + 0x10], 0
	je	.label_1673
	xor	eax, eax
	jmp	.label_1676
	nop	dword ptr [rax + rax]
.label_1675:
	cmp	dword ptr [rsp + 0x18], 0
	je	.label_1673
	mov	eax, 0xffffffff
.label_1676:
	cmp	qword ptr [rdi], rdx
	jne	.label_1673
	jmp	.label_1669
.label_1682:
	test	ebp, ebp
	mov	eax, ecx
	jne	.label_1669
	nop	dword ptr [rax]
.label_1673:
	inc	rbx
	cmp	rbx, qword ptr [r11]
	jl	.label_1672
.label_1674:
	mov	eax, dword ptr [rsp + 0xc]
	shr	eax, 1
	and	eax, 1
.label_1669:
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
	.align	32
	#Procedure 0x411540

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r13, r8
	mov	rbp, rcx
	mov	r14, rdx
	mov	r12, rsi
	mov	rax, rdi
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rax
	call	check_node_accept_bytes
	mov	ebx, eax
	test	ebx, ebx
	jle	.label_1685
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_1685
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_1684
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1685
.label_1684:
	xor	ebx, ebx
.label_1685:
	mov	eax, ebx
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
	.align	32
	#Procedure 0x4115c0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_1686
	cmp	qword ptr [r14], 0
	jle	.label_1688
	xor	ebx, ebx
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1687:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1687
.label_1688:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_1686:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x411620

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	cmp	cl, 9
	je	.label_1689
	cmp	cl, 8
	jne	.label_1692
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1692
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1689:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1692
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1690
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1690:
	test	ecx, 0x80000
	je	.label_1691
	cmp	qword ptr [rdx + rax], -1
	je	.label_1691
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1691:
	mov	qword ptr [rsi + rax + 8], r8
.label_1692:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4116b0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	push	rbx
	mov	r14, r8
	mov	r15, rdi
	mov	rdi, qword ptr [r15]
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	test	rdi, rdi
	jle	.label_1693
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rdi, rcx
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	mov	qword ptr [r14 + 0x10], rcx
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_1693:
	mov	edi, OFFSET FLAT:label_1694
	mov	esi, OFFSET FLAT:label_503
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:label_1695
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411750

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, rbx
	shl	r14, 4
	mov	edi, dword ptr [rax + r14 + 8]
	test	dil, 8
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], rcx
	jne	.label_1706
	test	edi, 0x100000
	jne	.label_1697
	movzx	ecx, dil
	cmp	ecx, 4
	jne	.label_1698
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rdx + rax + 0x10]
	mov	rax, qword ptr [rdx + rax + 0x18]
	mov	r12, rax
	sub	r12, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1702
	cmp	rax, -1
	mov	r13, -1
	je	.label_1696
	cmp	rdi, -1
	je	.label_1696
	test	r12, r12
	je	.label_1707
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, r12
	jl	.label_1696
	mov	rax, qword ptr [rbp + 8]
	add	rdi, rax
	add	rsi, rax
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.label_1696
	jmp	.label_1700
.label_1706:
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdx
	mov	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbp, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_1696
	lea	rax, [rbx + rbx*2]
	mov	r13, -1
	cmp	qword ptr [rbp + rax*8 + 8], 0
	jle	.label_1696
	add	r14, 8
	lea	r15, [rbp + rax*8 + 8]
	mov	r12, qword ptr [rbp + rax*8 + 0x10]
	mov	r13, -1
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1703:
	mov	rbx, qword ptr [r12 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1699
	cmp	r13, -1
	jne	.label_1701
	mov	r13, rbx
.label_1699:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_1703
	jmp	.label_1696
.label_1697:
	mov	rcx, qword ptr [rcx]
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, rbp
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1698
	movsxd	r12, eax
	jmp	.label_1700
.label_1701:
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, rbp
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1704
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1696
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, rbp
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	jne	.label_1704
	jmp	.label_1696
.label_1702:
	test	r12, r12
	jne	.label_1700
.label_1707:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	r13, -2
	test	al, al
	je	.label_1696
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [rbx + rbx*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r13, qword ptr [rax]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1696
.label_1698:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r13, -1
	mov	r12d, 1
	test	al, al
	je	.label_1696
.label_1700:
	mov	rax, qword ptr [r15 + 0x18]
	mov	rbx, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [rsp + 8]
	add	r12, qword ptr [rax]
	mov	qword ptr [rax], r12
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1705
	mov	r13, -1
	cmp	r12, qword ptr [rbp + 0xa8]
	jg	.label_1696
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + r12*8]
	test	rdi, rdi
	je	.label_1696
	add	rdi, 8
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1696
.label_1705:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], 0
.label_1704:
	mov	r13, rbx
.label_1696:
	mov	rax, r13
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
	.align	32
	#Procedure 0x411a30

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	mov	r15, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	cmp	rcx, rax
	jne	.label_1708
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_1709
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_1708:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, r14
	shl	rcx, 4
	lea	r12, [rcx + rcx*2]
	mov	qword ptr [rax + r12], rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + r12 + 8], r13
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rax, qword ptr [rbx + 0x10]
	mov	rdi, qword ptr [rax + r12 + 0x10]
	test	rdi, rdi
	je	.label_1709
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1709:
	mov	eax, 0xc
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
	.align	32
	#Procedure 0x411b10
	.globl __gl_setmode
	.type __gl_setmode, @function
__gl_setmode:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b20
	.globl __gl_setmode_check
	.type __gl_setmode_check, @function
__gl_setmode_check:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b30

	.globl set_binary_mode
	.type set_binary_mode, @function
set_binary_mode:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b40
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1710
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1710
.label_1711:
	ret	
.label_1710:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1711
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411b70
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1712
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1712:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411b90
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411ba0
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
	.align	32
	#Procedure 0x411bb0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1713
.label_1714:
	ret	
.label_1713:
	cmp	edi, 0x7f
	je	.label_1714
	xor	eax, eax
	jmp	.label_1714
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bd0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	add	edi, -0x30
	cmp	edi, 0xa
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411be0
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	add	edi, -0x21
	cmp	edi, 0x5e
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411bf0
	.globl c_islower
	.type c_islower, @function
c_islower:

	add	edi, -0x61
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c00
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	add	edi, -0x20
	cmp	edi, 0x5f
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c10
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_1715
	mov	al, 1
	jmp	qword ptr [(rdi * 8) + label_1716]
.label_1717:
	ret	
.label_1715:
	xor	eax, eax
	jmp	.label_1717
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c30
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1718
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_1718:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c50

	.globl c_isupper
	.type c_isupper, @function
c_isupper:
	add	edi, -0x41
	cmp	edi, 0x1a
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411c60
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1719
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_1719:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x411c80
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
	.align	32
	#Procedure 0x411c90
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
	.align	32
	#Procedure 0x411ca0

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
	je	.label_1720
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1721
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1721
.label_1720:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1721
	test	cl, cl
	jne	.label_1721
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1721:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411d10

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1722:
	cmp	byte ptr [rdi + 1], 0x2f
	lea	rdi, [rdi + 1]
	je	.label_1722
	xor	esi, esi
	mov	rax, rdi
	jmp	.label_1726
	nop	word ptr cs:[rax + rax]
.label_1724:
	inc	rax
	mov	sil, dl
.label_1726:
	movzx	ecx, byte ptr [rax]
	mov	dl, 1
	cmp	cl, 0x2f
	je	.label_1724
	test	cl, cl
	je	.label_1725
	mov	edx, esi
	and	dl, 1
	je	.label_1723
	xor	esi, esi
.label_1723:
	test	dl, dl
	cmovne	rdi, rax
	mov	edx, esi
	jmp	.label_1724
.label_1725:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411d70

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_1728:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_1727
	lea	rcx, [rax - 1]
	cmp	byte ptr [rbx + rax - 1], 0x2f
	je	.label_1728
.label_1727:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411da0

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebx, edi
	cmp	ebx, 2
	ja	.label_1729
	mov	edi, ebx
	call	dup_safer_flag
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	jmp	.label_1730
.label_1729:
	mov	eax, ebx
.label_1730:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411df0

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1732
	cmp	byte ptr [rax], 0x43
	jne	.label_1734
	cmp	byte ptr [rax + 1], 0
	je	.label_1731
.label_1734:
	mov	esi, OFFSET FLAT:label_1733
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1732
.label_1731:
	xor	ebx, ebx
.label_1732:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e50

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:label_31
	cmovne	rcx, rax
	cmp	byte ptr [rcx], 0
	mov	eax, OFFSET FLAT:label_1735
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411e80

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	mov	edx, 3
	xor	eax, eax
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	32
	#Procedure 0x411e90

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1736
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1738
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1736
.label_1738:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1736
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1737
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1737:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1736:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x411f10

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xd8
	test	al, al
	je	.label_1748
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_1748:
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
	ja	.label_1749
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1744
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1745
	test	esi, esi
	jne	.label_1749
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1751
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1742
.label_1749:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1741
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1745
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1747
.label_1744:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1745:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1752
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1740
.label_1752:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1740:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
.label_1747:
	cmp	eax, 6
	jne	.label_1741
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1750
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1739
.label_1741:
	movsxd	rcx, dword ptr [rsp]
	cmp	rcx, 0x28
	ja	.label_1743
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0x10]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp], ecx
	jmp	.label_1746
.label_1751:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1742:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xd8
	ret	
.label_1750:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1739:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xd8
	ret	
.label_1743:
	mov	rax, qword ptr [rsp + 8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 8], rcx
.label_1746:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xd8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4120d0

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
	.align	32
	#Procedure 0x4120e0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0
	js	.label_1753
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1755
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1755
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1756
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  0xffffffff
	jmp	.label_1757
.label_1755:
	mov	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  1
	jmp	.label_1757
.label_1753:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1757:
	test	ebx, ebx
	js	.label_1756
	cmp	dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec],  -1
	jne	.label_1756
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1754
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1756
.label_1754:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1756:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4121b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1758
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1758
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1758:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4121e0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1759
	ret	
.label_1759:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x412200

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
