	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
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
	#Procedure 0x401c00

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c30

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.20
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.6
	call	strcmp
	test	eax, eax
	je	.label_9
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_10
.label_9:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.6
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_8
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.6
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.34
	mov	ecx, OFFSET FLAT:.str_0
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
	#Procedure 0x401d80

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
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + separator]], OFFSET FLAT:.str.11
	mov	qword ptr [word ptr [rip + sentinel_length]],  1
	mov	byte ptr [byte ptr [rip + separator_ends_record]],  1
	jmp	.label_22
.label_19:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator]],  rax
	nop	word ptr cs:[rax + rax]
.label_22:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	jle	.label_17
	cmp	eax, 0x73
	je	.label_19
	cmp	eax, 0x72
	je	.label_20
	cmp	eax, 0x62
	jne	.label_21
	mov	byte ptr [byte ptr [rip + separator_ends_record]],  0
	jmp	.label_22
.label_20:
	mov	qword ptr [word ptr [rip + sentinel_length]],  0
	jmp	.label_22
.label_17:
	cmp	eax, -1
	jne	.label_23
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	cl, byte ptr [rdi]
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	je	.label_25
	mov	eax, 1
	test	cl, cl
	je	.label_29
	call	strlen
.label_29:
	mov	qword ptr [word ptr [rip + sentinel_length]],  rax
	mov	qword ptr [word ptr [rip + match_length]],  rax
	jmp	.label_31
.label_25:
	test	cl, cl
	je	.label_32
	xorps	xmm0, xmm0
	movups	xmmword ptr [word ptr [rip + compiled_separator]],  xmm0
	mov	qword ptr [word ptr [rip + label_12]], OFFSET FLAT:compiled_separator_fastmap
	mov	qword ptr [word ptr [rip + label_13]],  0
	mov	rbp,  qword ptr [word ptr [rip + separator]]
	mov	rdi, rbp
	call	strlen
	mov	edx, OFFSET FLAT:compiled_separator
	mov	rdi, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_24
	mov	rax,  qword ptr [word ptr [rip + sentinel_length]]
.label_31:
	mov	qword ptr [word ptr [rip + read_size]],  0x2000
	mov	ecx, 0x2001
	cmp	rax, 0x1000
	jb	.label_27
	mov	rax,  qword ptr [word ptr [rip + sentinel_length]]
	mov	edx, 0x2000
	movabs	rsi, 0x7ffffffffffffffe
	nop	dword ptr [rax + rax]
.label_16:
	test	rdx, rdx
	js	.label_14
	lea	rcx, [rdx + rdx]
	mov	qword ptr [word ptr [rip + read_size]],  rcx
	and	rdx, rsi
	cmp	rax, rdx
	mov	rdx, rcx
	jae	.label_16
	or	rcx, 1
.label_27:
	add	rax, rcx
	lea	rdi, [rax + rax]
	mov	qword ptr [word ptr [rip + G_buffer_size]],  rdi
	cmp	rax, rdi
	jae	.label_14
	cmp	qword ptr [word ptr [rip + read_size]],  rax
	jae	.label_14
	call	xmalloc
	mov	qword ptr [word ptr [rip + G_buffer]],  rax
	mov	rdx,  qword ptr [word ptr [rip + sentinel_length]]
	test	rdx, rdx
	je	.label_28
	mov	rsi,  qword ptr [word ptr [rip + separator]]
	inc	rdx
	mov	rdi, rax
	call	memcpy
	mov	rax,  qword ptr [word ptr [rip + G_buffer]]
	add	rax,  qword ptr [word ptr [rip + sentinel_length]]
	jmp	.label_11
.label_28:
	inc	rax
.label_11:
	mov	qword ptr [word ptr [rip + G_buffer]],  rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r14d
	lea	rax, [rbx + rax*8]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	rdi, qword ptr [rbp]
	mov	bl, 1
	test	rdi, rdi
	je	.label_15
	add	rbp, 8
	mov	bl, 1
	nop	word ptr cs:[rax + rax]
.label_26:
	call	tac_file
	and	bl, al
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	test	rdi, rdi
	jne	.label_26
.label_15:
	xor	edi, edi
	xor	esi, esi
	call	output
	mov	al,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	al, 1
	je	.label_30
	xor	edi, edi
	call	close
	test	eax, eax
	jns	.label_30
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	error
.label_30:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_14:
	call	xalloc_die
.label_23:
	cmp	eax, 0xffffff7d
	je	.label_18
	cmp	eax, 0xffffff7e
	jne	.label_21
	xor	edi, edi
	call	usage
.label_18:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_21:
	mov	edi, 1
	call	usage
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_24:
	mov	edi, 1
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	.section	.text
	.align	16
	#Procedure 0x4020c0

	.globl tac_file
	.type tac_file, @function
tac_file:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdi
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_33
	cmp	byte ptr [r14 + 1], 0
	je	.label_34
.label_33:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	mov	rdi, r14
	call	open
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_37
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
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
	jmp	.label_38
.label_34:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	bpl, 1
.label_37:
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebx
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_36
	mov	edi, ebx
	call	isatty
	test	eax, eax
	je	.label_39
.label_36:
	mov	edi, ebx
	mov	rsi, r14
	call	tac_nonseekable
	jmp	.label_40
.label_39:
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r15
	call	tac_seekable
.label_40:
	mov	r15b, al
	test	bpl, bpl
	jne	.label_35
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_35
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
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
.label_35:
	test	r15b, r15b
	setne	bl
.label_38:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4021f0

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
	mov	rdx,  qword ptr [word ptr [rip + output.bytes_in_buffer]]
	mov	ebx, 0x2000
	test	r12, r12
	je	.label_44
	sub	r14, r12
	sub	rbx, rdx
	mov	edi, OFFSET FLAT:output.buffer
	add	rdi,  qword ptr [word ptr [rip + output.bytes_in_buffer]]
	cmp	r14, rbx
	jae	.label_42
	mov	r15, rdi
	jmp	.label_43
.label_44:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	call	fwrite_unlocked
	xor	r14d, r14d
	jmp	.label_41
.label_42:
	mov	r15d, OFFSET FLAT:output.buffer
	nop	dword ptr [rax]
.label_45:
	mov	rsi, r12
	mov	rdx, rbx
	call	memcpy
	sub	r14, rbx
	add	r12, rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	qword ptr [word ptr [rip + output.bytes_in_buffer]],  0
	cmp	r14, 0x1fff
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	ja	.label_45
.label_43:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, r14
	call	memcpy
	add	r14,  qword ptr [word ptr [rip + output.bytes_in_buffer]]
.label_41:
	mov	qword ptr [word ptr [rip + output.bytes_in_buffer]],  r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022d0

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
	js	.label_47
	mov	rdi, qword ptr [rsp + 8]
	call	fileno
	mov	rsi, qword ptr [rsp]
	mov	edi, eax
	mov	rdx, rbx
	call	tac_seekable
	jmp	.label_46
.label_47:
	xor	eax, eax
.label_46:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402320

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
	mov	ebx, edi
	mov	rax,  qword ptr [word ptr [rip + separator]]
	mov	qword ptr [rsp + 8], rax
	mov	r15b, byte ptr [rax]
	mov	rax,  qword ptr [word ptr [rip + match_length]]
	mov	qword ptr [rsp + 0x18], rax
	xor	edx, edx
	mov	rax, r13
	div	qword ptr [word ptr [rip + read_size]]
	test	rdx, rdx
	je	.label_52
	sub	r13, rdx
	xor	edx, edx
	mov	edi, ebx
	mov	rsi, r13
	call	lseek
	test	rax, rax
	jns	.label_52
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	ebp, ebx
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	mov	ebx, ebp
	call	error
.label_52:
	mov	dword ptr [rsp + 0x20], ebx
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	mov	edi, ebx
	call	safe_read
	mov	rbx, rax
	test	r13, r13
	je	.label_76
	nop	dword ptr [rax]
.label_56:
	test	rbx, rbx
	jne	.label_76
	mov	rsi,  qword ptr [word ptr [rip + read_size]]
	neg	rsi
	mov	edx, 1
	mov	ebx, dword ptr [rsp + 0x20]
	mov	edi, ebx
	call	lseek
	test	rax, rax
	jns	.label_49
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	ebp, ebx
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbx
	mov	ebx, ebp
	call	error
.label_49:
	mov	rbp,  qword ptr [word ptr [rip + read_size]]
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	edi, ebx
	mov	rdx, rbp
	call	safe_read
	mov	rbx, rax
	sub	r13, rbp
	jne	.label_56
.label_76:
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	cmp	rbx, rdx
	jne	.label_60
	mov	qword ptr [rsp], r12
	nop	dword ptr [rax]
.label_66:
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	edi, dword ptr [rsp + 0x20]
	call	safe_read
	mov	r12, rax
	cmp	r12, -1
	je	.label_63
	test	r12, r12
	je	.label_65
	add	r13, r12
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	cmp	r12, rdx
	mov	rbx, r12
	je	.label_66
	jmp	.label_53
.label_60:
	mov	qword ptr [rsp], r12
.label_65:
	cmp	rbx, -1
	mov	r12, rbx
	je	.label_63
.label_53:
	add	r12,  qword ptr [word ptr [rip + G_buffer]]
	xor	eax, eax
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	je	.label_72
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x18]
	add	rbx, r12
	mov	al, 1
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_69
.label_72:
	mov	cl, 1
	mov	dword ptr [rsp + 0x24], ecx
	mov	rbx, r12
	jmp	.label_78
.label_63:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
.label_50:
	mov	al, bl
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_69:
	mov	rax,  qword ptr [word ptr [rip + sentinel_length]]
.label_78:
	mov	qword ptr [rsp + 0x10], r13
	mov	rcx, qword ptr [rsp + 8]
	lea	r13, [rcx + 1]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rbp, [rcx - 1]
	nop	word ptr cs:[rax + rax]
.label_70:
	test	rax, rax
	je	.label_67
	nop	word ptr cs:[rax + rax]
.label_48:
	dec	rbx
	movzx	eax, r15b
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, eax
	jne	.label_48
	test	rbp, rbp
	je	.label_62
	lea	rdi, [rbx + 1]
	mov	rsi, r13
	mov	rdx, rbp
	call	strncmp
	test	eax, eax
	jne	.label_48
	jmp	.label_62
	nop	
.label_67:
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	rax, rbx
	sub	rax, rsi
	mov	r8d, 1
	sub	r8, rax
	sub	rbx, rsi
	js	.label_68
	je	.label_75
	mov	rcx, rbx
	dec	rcx
	mov	edi, OFFSET FLAT:compiled_separator
	mov	r9d, OFFSET FLAT:regs
	mov	rdx, rbx
	call	rpl_re_search
	cmp	rax, -1
	je	.label_75
	cmp	rax, -2
	je	.label_79
	mov	rax,  qword ptr [word ptr [rip + label_80]]
	mov	rax, qword ptr [rax]
	mov	rbx,  qword ptr [word ptr [rip + G_buffer]]
	add	rbx, rax
	mov	rcx,  qword ptr [word ptr [rip + label_81]]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	mov	qword ptr [word ptr [rip + match_length]],  rcx
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_75:
	mov	rbx,  qword ptr [word ptr [rip + G_buffer]]
	dec	rbx
.label_62:
	mov	rdi,  qword ptr [word ptr [rip + G_buffer]]
	cmp	rbx, rdi
	jb	.label_54
	movzx	eax,  byte ptr [byte ptr [rip + separator_ends_record]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_71
	mov	r14,  qword ptr [word ptr [rip + match_length]]
	add	r14, rbx
	mov	eax, dword ptr [rsp + 0x24]
	test	al, 1
	je	.label_57
	cmp	r14, r12
	je	.label_59
.label_57:
	mov	rdi, r14
	mov	rsi, r12
	call	output
.label_59:
	mov	dword ptr [rsp + 0x24], 0
	mov	r12, r14
	jmp	.label_61
	nop	dword ptr [rax + rax]
.label_71:
	mov	rdi, rbx
	mov	rsi, r12
	call	output
	mov	r12, rbx
.label_61:
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	mov	eax, 0
	je	.label_70
	mov	eax, 1
	sub	rax,  qword ptr [word ptr [rip + match_length]]
	add	rbx, rax
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_69
.label_54:
	mov	rbp, qword ptr [rsp + 0x10]
	test	rbp, rbp
	je	.label_73
	sub	r12, rdi
	mov	rax,  qword ptr [word ptr [rip + read_size]]
	cmp	r12, rax
	jbe	.label_77
	mov	rcx,  qword ptr [word ptr [rip + sentinel_length]]
	test	rcx, rcx
	mov	ebx, 1
	cmovne	rbx, rcx
	mov	rcx,  qword ptr [word ptr [rip + G_buffer_size]]
	lea	rdx, [rax + rax]
	mov	qword ptr [word ptr [rip + read_size]],  rdx
	lea	rsi, [rax*4 + 2]
	add	rsi,  qword ptr [word ptr [rip + sentinel_length]]
	mov	qword ptr [word ptr [rip + G_buffer_size]],  rsi
	cmp	rsi, rcx
	jb	.label_64
	mov	rdi,  qword ptr [word ptr [rip + G_buffer]]
	sub	rdi, rbx
	call	xrealloc
	add	rax, rbx
	mov	qword ptr [word ptr [rip + G_buffer]],  rax
.label_77:
	mov	r13, rbp
	sub	r13,  qword ptr [word ptr [rip + read_size]]
	mov	edi, dword ptr [rsp + 0x20]
	jae	.label_55
	mov	qword ptr [word ptr [rip + read_size]],  rbp
	xor	r13d, r13d
.label_55:
	xor	edx, edx
	mov	rsi, r13
	call	lseek
	test	rax, rax
	jns	.label_58
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_58:
	mov	r14,  qword ptr [word ptr [rip + G_buffer]]
	mov	rax,  qword ptr [word ptr [rip + read_size]]
	mov	qword ptr [rsp + 0x10], rax
	lea	rbp, [r14 + rax]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r12
	call	memmove
	add	r12, rbp
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	mov	rbx, r12
	je	.label_74
	mov	rbx, rbp
.label_74:
	mov	edi, dword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x10]
	call	safe_read
	cmp	rax,  qword ptr [word ptr [rip + read_size]]
	jne	.label_63
	jmp	.label_69
.label_73:
	mov	rsi, r12
	call	output
	mov	bl, 1
	jmp	.label_50
.label_68:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	jmp	.label_51
.label_79:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_51:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_64:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402850

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
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsp + 8]
	call	temp_stream
	mov	r15, -1
	test	al, al
	je	.label_86
	mov	qword ptr [rsp], rbx
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_83:
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	mov	edi, ebp
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_87
	cmp	r14, -1
	je	.label_88
	mov	rdi,  qword ptr [word ptr [rip + G_buffer]]
	mov	esi, 1
	mov	rdx, r14
	mov	rcx, rbx
	call	fwrite_unlocked
	add	r15, r14
	cmp	rax, r14
	je	.label_83
	jmp	.label_84
.label_87:
	mov	rdi, qword ptr [rsp + 0x10]
	call	fflush_unlocked
	test	eax, eax
	je	.label_85
.label_84:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdx, qword ptr [rsp + 8]
	xor	edi, edi
	mov	esi, 3
	jmp	.label_82
.label_88:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
.label_82:
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	mov	r15, -1
.label_86:
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_85:
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r13], rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [r12], rax
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402990

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
	cmp	qword ptr [word ptr [rip + temp_stream.tempfile]],  0
	je	.label_91
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	call	clearerr_unlocked
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	xor	esi, esi
	xor	edx, edx
	call	rpl_fseeko
	test	eax, eax
	js	.label_89
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	call	fileno
	xor	esi, esi
	mov	edi, eax
	call	ftruncate
	test	eax, eax
	jns	.label_94
.label_89:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_90
.label_91:
	mov	edi, OFFSET FLAT:.str.44
	call	getenv
	test	rax, rax
	mov	ebp, OFFSET FLAT:.str.45
	cmovne	rbp, rax
	mov	esi, OFFSET FLAT:.str.46
	xor	edx, edx
	mov	rdi, rbp
	call	mfile_name_concat
	mov	qword ptr [word ptr [rip + temp_stream.tempfile]],  rax
	test	rbp, rbp
	je	.label_92
	mov	rdi, rax
	call	mkstemp_safer
	mov	r15d, eax
	test	r15d, r15d
	js	.label_95
	mov	esi, OFFSET FLAT:.str.49
	mov	edi, r15d
	call	fdopen
	mov	qword ptr [word ptr [rip + temp_stream.tmp_fp]],  rax
	test	rax, rax
	je	.label_96
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	call	record_or_unlink_tempfile
.label_94:
	mov	rax,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	mov	qword ptr [rbx], rax
	mov	rax,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	mov	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_90
.label_92:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_90
.label_95:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
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
	jmp	.label_93
.label_96:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
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
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	call	unlink
.label_93:
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	call	free
	mov	qword ptr [word ptr [rip + temp_stream.tempfile]],  0
	xor	ebx, ebx
.label_90:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402b90

	.globl record_or_unlink_tempfile
	.type record_or_unlink_tempfile, @function
record_or_unlink_tempfile:
	jmp	unlink
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ba0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bb0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_99
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_97
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_97
.label_99:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_100
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_98
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_100:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_98:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
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
	#Procedure 0x402c80

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
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rbx, rax
	mov	rdi, rbx
	call	base_len
	mov	rbp, rax
	sub	rbx, r13
	add	rbx, rbp
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_108
	movzx	ecx, byte ptr [rbx + r13 - 1]
	cmp	ecx, 0x2f
	jne	.label_101
	mov	qword ptr [rsp + 8], r14
	xor	r12d, r12d
	jmp	.label_104
.label_108:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	cmp	ecx, 0x2f
	je	.label_105
	jmp	.label_102
.label_101:
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	jne	.label_103
.label_102:
	xor	r12d, r12d
	jmp	.label_105
.label_103:
	mov	r12b, 0x2f
.label_105:
	mov	qword ptr [rsp + 8], r14
.label_104:
	test	r12b, r12b
	setne	cl
	movzx	ebp, cl
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_107
	mov	rcx, -1
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, rbx
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	add	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_106
	mov	qword ptr [rax], rbp
.label_106:
	mov	rcx, -1
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	mov	rax, r14
.label_107:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d70

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_111
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_110
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_110
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_109
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_109:
	mov	rbx, r14
.label_110:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_111:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_3
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402e20
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
	#Procedure 0x402e60
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
	#Procedure 0x402e70
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
	#Procedure 0x402e80

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	mov	ecx, esi
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	cmovne	rsi, rdi
	mov	al, cl
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
	#Procedure 0x402ec0
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
	#Procedure 0x402ee0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_112
	test	rdx, rdx
	je	.label_112
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_112:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402f10
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rdx, [rbp + 8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
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
	#Procedure 0x402f90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x108
	mov	ebx, r9d
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x88], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	shr	r15b, 1
	and	r15b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	xor	r11d, r11d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_233:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_129
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_139]]
.label_1795:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_1796:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_128
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_128
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_187:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_176
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_176:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_187
.label_128:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rdi, rbx
	mov	r12, r10
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, rbp
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r11d, dword ptr [rsp + 0xb8]
	jmp	.label_130
.label_1788:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_130
.label_1791:
	mov	al, 1
.label_1789:
	mov	r15b, 1
.label_1792:
	test	r15b, 1
	mov	cl, 1
	je	.label_223
	mov	cl, al
.label_223:
	mov	al, cl
.label_1790:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_116
	test	r10, r10
	je	.label_137
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_221
.label_116:
	xor	ecx, ecx
	jmp	.label_221
.label_1793:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_226
	test	r10, r10
	je	.label_231
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_148
.label_1794:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_130
.label_137:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_221:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_130
.label_226:
	xor	eax, eax
	jmp	.label_148
.label_231:
	mov	eax, 1
.label_148:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_130:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	cmp	qword ptr [rsp + 0x140], 0
	setne	bl
	cmp	r14d, 2
	setne	r15b
	sete	dl
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	and	al, 1
	mov	byte ptr [rsp + 0xcf], al
	sete	cl
	and	dl, al
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	and	sil, dil
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	xor	esi, esi
	jmp	.label_142
	nop	dword ptr [rax + rax]
.label_115:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_142:
	cmp	rbp, -1
	je	.label_199
	cmp	rsi, rbp
	jne	.label_201
	jmp	.label_203
	nop	dword ptr [rax]
.label_199:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_203
.label_201:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_208
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_209
	cmp	rbp, -1
	jne	.label_209
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rdi, r9
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r14
	mov	r12, r9
	mov	r14, rsi
	call	strlen
	mov	rsi, r14
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	r14, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_209:
	cmp	rbx, rbp
	jbe	.label_229
.label_208:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_151:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_232
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_113]]
.label_1811:
	test	rsi, rsi
	jne	.label_120
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_229:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	mov	r13, r14
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rdx, qword ptr [rsp + 0xd0]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_146
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_151
	jmp	.label_140
.label_146:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_151
.label_1815:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_169
	test	rsi, rsi
	jne	.label_172
	cmp	rbp, 1
	je	.label_123
	xor	r15d, r15d
	jmp	.label_118
.label_1804:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_220
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_140
	cmp	edi, 2
	jne	.label_182
	mov	al, r11b
	and	al, 1
	jne	.label_186
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_189
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_211
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_200
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_126
.label_1805:
	mov	bl, 0x62
	jmp	.label_134
.label_1806:
	mov	cl, 0x74
	jmp	.label_215
.label_1807:
	mov	bl, 0x76
	jmp	.label_134
.label_1808:
	mov	bl, 0x66
	jmp	.label_134
.label_1809:
	mov	cl, 0x72
	jmp	.label_215
.label_1812:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_218
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_154
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_228:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_124
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_124:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_131
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_131:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_144
.label_1813:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_150
	cmp	r14d, 2
	jne	.label_153
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_154
.label_153:
	mov	rdi, r14
	jmp	.label_120
.label_1814:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_159
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_154
	mov	rdi, r14
	jmp	.label_163
.label_232:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_165
	mov	r14, r9
	mov	rbx, rsi
	call	__ctype_b_loc
	mov	rsi, rbx
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	shr	r15d, 0xe
	and	r15b, 1
	mov	ebx, 1
.label_188:
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r14, qword ptr [rsp + 0x38]
	mov	r11d, dword ptr [rsp + 0xb8]
	ja	.label_178
	test	dl, dl
	je	.label_178
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_118
.label_169:
	test	rsi, rsi
	jne	.label_197
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_197
.label_123:
	mov	dl, 1
.label_1810:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_140
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_118
.label_220:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_120
	mov	r14, rdi
	inc	rsi
	jmp	.label_142
.label_218:
	mov	rdi, r14
.label_144:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_118
.label_159:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_215
.label_163:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_152
.label_215:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_140
.label_134:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_118
	jmp	.label_161
.label_165:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_230
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_230:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_180:
	lea	rax, [rbx + rsi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_138
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_145
	cmp	rbp, -2
	je	.label_157
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_158
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_170:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_166
	bt	rsi, rdx
	jb	.label_168
.label_166:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_170
.label_158:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_192
	xor	r15d, r15d
.label_192:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_180
	jmp	.label_188
.label_197:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_118
.label_150:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_120
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_120
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_120
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_133
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_205
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_140
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_213
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_213:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_175
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_175:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_227
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_227:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_162
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_162:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_118
.label_120:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_118:
	test	r12b, r12b
	je	.label_207
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_127
	jmp	.label_136
	nop	word ptr cs:[rax + rax]
.label_207:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_136
.label_127:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_141
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_152
	jmp	.label_161
	nop	word ptr cs:[rax + rax]
.label_136:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_161
	jmp	.label_152
.label_141:
	mov	bl, r13b
	mov	rsi, r14
.label_161:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_140
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_167
	mov	al, r11b
	and	al, 1
	jne	.label_167
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_171
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_171:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_222
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_222:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_183
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_183:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_167:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_193
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_193:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_198
.label_172:
	xor	r15d, r15d
	jmp	.label_118
.label_178:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_202:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_204:
	test	dl, dl
	je	.label_214
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_216
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_121
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_121:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_216
	nop	word ptr [rax + rax]
.label_214:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_154
	cmp	r14d, 2
	jne	.label_114
	mov	al, r11b
	and	al, 1
	jne	.label_114
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_117
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_117:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_125
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_125:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_132
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_132:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_114:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_119
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_119:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_196
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_196:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_164
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_164:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_216:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_152
	test	r11b, 1
	je	.label_179
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_181
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_185:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_156
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_156:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_181
	nop	word ptr cs:[rax + rax]
.label_179:
	mov	r14, rdi
.label_181:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_202
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_202
.label_152:
	test	r11b, 1
	je	.label_217
	and	al, 1
	jne	.label_217
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_234
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_234:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_225
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_225:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_198
	nop	dword ptr [rax + rax]
.label_217:
	mov	bl, r13b
	mov	r14, rdi
.label_198:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_115
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_115
.label_182:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_126
.label_186:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_126:
	cmp	rcx, r10
	jae	.label_206
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_206:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_135
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_147
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_173
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_160
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_160:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_224
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_224:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_118
.label_135:
	xor	r15d, r15d
	jmp	.label_118
.label_147:
	xor	r15d, r15d
	jmp	.label_118
.label_173:
	xor	r15d, r15d
	jmp	.label_118
.label_138:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_174
.label_145:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_177
.label_157:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_184
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_194:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_190
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_194
	xor	r15d, r15d
	jmp	.label_174
.label_184:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_177:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_174:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_188
.label_190:
	xor	r15d, r15d
	jmp	.label_174
.label_133:
	xor	r15d, r15d
	jmp	.label_118
.label_205:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_118
	nop	dword ptr [rax + rax]
.label_203:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_212
	or	dl, al
	je	.label_154
.label_212:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_219
	or	dl, al
	jne	.label_219
	test	r8b, 1
	jne	.label_191
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_219
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_233
.label_219:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_122
	test	cl, cl
	jne	.label_122
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_122
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_143:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_210
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_210:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_143
.label_122:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_149
.label_140:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_155:
	test	r8b, 1
	mov	r8d, 4
	cmove	r8d, r14d
	cmp	r14d, 2
	cmovne	r8d, r14d
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rcx, rbp
.label_195:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_149:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_168:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_155
.label_154:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_155
.label_191:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x80]
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xc0]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_195
.label_129:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4041a0
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
	#Procedure 0x4041b0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x30], rbx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	cmovne	r12, rcx
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	sete	al
	movzx	ebp, al
	or	ebp, dword ptr [r12 + 4]
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	xor	edi, edi
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	lea	r15, [rbx + 1]
	mov	rdi, r15
	call	xcharalloc
	mov	r14, rax
	mov	r8d, dword ptr [r12]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rax, qword ptr [rsp + 0x30]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_235
	mov	qword ptr [rax], rbx
.label_235:
	mov	rax, r14
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
	#Procedure 0x4042b0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_236
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_239:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_239
.label_236:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_240
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_238]], OFFSET FLAT:slot0
.label_240:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_237
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_237:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404350

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	r12, rcx
	mov	r14, rdx
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_241
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_244
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_247
.label_244:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_243
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	lea	r15d, [rbx + 1]
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_242
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_242:
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
	mov	r14, qword ptr [rsp + 0x38]
.label_247:
	mov	qword ptr [rsp + 0x38], r14
	movsxd	r13, ebx
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	mov	rcx, r12
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	lea	rdx, [rcx + 8]
	mov	qword ptr [rsp + 0x18], rdx
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, r14
	mov	r9d, r12d
	call	quotearg_buffer_restyled
	mov	r14, rax
	cmp	r15, r14
	ja	.label_245
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_246
	mov	rdi, rbx
	call	free
.label_246:
	mov	rdi, r14
	call	xcharalloc
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rcx, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rcx]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	call	quotearg_buffer_restyled
.label_245:
	mov	rax, qword ptr [rsp + 0x30]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_241:
	call	abort
.label_243:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404530

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404540
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
	#Procedure 0x404550
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
	#Procedure 0x404560

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
	#Procedure 0x4045a0

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
	je	.label_248
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
.label_248:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404600

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
	#Procedure 0x404640

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
	#Procedure 0x404660
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
	#Procedure 0x404680

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
	mov	rcx,  qword ptr [word ptr [rip + label_249]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_250]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_251]]
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
	#Procedure 0x4046f0

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
	#Procedure 0x404700

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404710
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404720

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
	#Procedure 0x404770

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404780

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
	mov	rax,  qword ptr [word ptr [rip + label_249]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_250]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_251]]
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
	#Procedure 0x4047f0
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
	#Procedure 0x404810
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
	#Procedure 0x404830

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404840
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
	#Procedure 0x404850

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404860
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
	#Procedure 0x404870

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r14d, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_253
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rsp], 0
	mov	esi, 0x55
	mov	edx, 0x54
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_252
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_253
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_253
.label_252:
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	mov	esi, 0x47
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	r8d, 0x38
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	je	.label_254
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_253
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_253
.label_254:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_253:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404950

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
	je	.label_256
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_257
	jmp	.label_255
.label_256:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_255
.label_257:
	mov	eax, 1
	test	bpl, bpl
	je	.label_255
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
.label_255:
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
	#Procedure 0x4049e0

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
	je	.label_260
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_258
	jmp	.label_259
.label_260:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_259
.label_258:
	mov	eax, 1
	test	bpl, bpl
	je	.label_259
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
.label_259:
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
	#Procedure 0x404a70

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
	je	.label_261
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_263
	jmp	.label_262
.label_261:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_262
.label_263:
	mov	eax, 1
	test	bpl, bpl
	je	.label_262
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
.label_262:
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
	#Procedure 0x404af0

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
	je	.label_266
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_265
	jmp	.label_264
.label_266:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_264
.label_265:
	mov	eax, 1
	test	bpl, bpl
	je	.label_264
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
.label_264:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

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
	je	.label_269
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_267
	jmp	.label_268
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_268
.label_267:
	mov	eax, 1
	test	bpl, bpl
	je	.label_268
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_268:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0

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
	je	.label_270
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_272
	jmp	.label_271
.label_270:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_271
.label_272:
	mov	eax, 1
	test	bpl, bpl
	je	.label_271
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_271:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404c20

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_274
	jmp	.label_273
.label_275:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_273
.label_274:
	mov	eax, 1
	test	bpl, bpl
	je	.label_273
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_273:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c70

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_277
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_278
	jmp	.label_276
.label_277:
	mov	eax, 1
	test	cl, cl
	je	.label_276
.label_278:
	xor	eax, eax
.label_276:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x404ca0

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
.label_280:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_279
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_280
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
	jb	.label_279
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_280
.label_279:
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
	#Procedure 0x404d30

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
	.align	16
	#Procedure 0x404d40
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d60

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
	ja	.label_281
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
	jmp	.label_282
.label_281:
	mov	eax, ebx
.label_282:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404db0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_289
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_288
.label_289:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_288:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
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
	mov	esi, OFFSET FLAT:.str.3_0
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_284
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_285]]
.label_1734:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_284:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_283
.label_1735:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1736:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_1737:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_290
.label_1738:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_292
.label_1739:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_287
.label_1740:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_287:
	mov	qword ptr [rsp + 0x10], rdi
.label_292:
	mov	qword ptr [rsp + 8], rsi
.label_290:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_291
.label_1742:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_283:
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	r11, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_286
.label_1741:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rax
.label_286:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_291:
	call	__fprintf_chk
.label_1733:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050a0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_293:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_293
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050d0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_295:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_294
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_296
	nop	dword ptr [rax]
.label_294:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_296:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_297
	inc	r9
	cmp	r9, 0xa
	jb	.label_295
.label_297:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405130

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_298
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_298:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	call	version_etc_va
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405240
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_299
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_299:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_300
	test	rax, rax
	je	.label_301
.label_300:
	pop	rbx
	ret	
.label_301:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405290
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_302
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_302:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_303
	test	rbx, rbx
	jne	.label_303
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_303:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_305
	test	rax, rax
	je	.label_304
.label_305:
	pop	rbx
	ret	
.label_304:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x4052f0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_306
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_309
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_307
.label_306:
	test	rcx, rcx
	jne	.label_310
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_310:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_308
.label_307:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_309:
	call	xalloc_die
.label_308:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405370

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405380
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405390
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
	#Procedure 0x4053c0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_311
	call	rpl_calloc
	test	rax, rax
	je	.label_311
	pop	rcx
	ret	
.label_311:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0

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
	#Procedure 0x405420
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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405440

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x405470

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_312
	test	rsi, rsi
	mov	ecx, 1
	je	.label_313
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_313
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_312:
	mov	ecx, 1
.label_313:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4054c0

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
	jne	.label_314
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_314
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_315
.label_314:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_315:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_316
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_316:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405530

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
	je	.label_317
	cmp	r15, -2
	jb	.label_317
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_317
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_317:
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
	#Procedure 0x405590

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	and	cl, 0x10
	and	al, 0x6f
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rdi, rdx
	mov	rdx, r8
	call	re_compile_internal
	test	eax, eax
	je	.label_318
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	jmp	dcgettext
.label_318:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

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
	mov	dword ptr [rsp + 0xa4], 0
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	mov	qword ptr [rbx + 0x10], 0
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	r14, qword ptr [rbx]
	cmp	qword ptr [rbx + 8], 0xe7
	jbe	.label_325
.label_320:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_322
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	and	ebp, 0x400000
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_319
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_319
	mov	rdi, rbx
	call	analyze
	mov	dword ptr [rsp + 0xa4], eax
	test	eax, eax
	jne	.label_319
	test	rbp, rbp
	jne	.label_323
	mov	al, byte ptr [r14 + 0xb0]
	and	al, 4
	je	.label_323
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_323
	mov	rdi, r14
	call	optimize_utf8
.label_323:
	mov	rdi, r14
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	je	.label_321
	jmp	.label_322
.label_319:
	mov	rdi, rbx
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	call	re_string_destruct
.label_322:
	mov	rdi, r14
	call	free_dfa_content
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
.label_321:
	mov	eax, dword ptr [rsp + 0xa4]
.label_324:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_325:
	mov	esi, 0xe8
	mov	rdi, r14
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	test	r14, r14
	je	.label_324
	mov	qword ptr [rbx + 8], 0xe8
	mov	qword ptr [rbx], r14
	jmp	.label_320
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405790
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4057a0

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
	je	.label_326
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_326:
	mov	rsi, qword ptr [r15 + 0x58]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_327
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_327:
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	je	.label_328
	mov	rdi, r14
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_328:
	or	byte ptr [r14 + 0x38], 8
	xor	eax, eax
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405870

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x158
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_347
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	and	r14b, 0x40
	shr	r14b, 6
	jmp	.label_335
.label_347:
	mov	qword ptr [rsp + 0x20], rdi
	xor	r14d, r14d
.label_335:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_341
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_338:
	mov	rax, qword ptr [rsi + 0x18]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	movzx	r12d, byte ptr [rax + rbx + 8]
	add	rax, rbx
	cmp	r12d, 6
	je	.label_346
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	mov	ebp, 0
	mov	r15d, 0
	je	.label_350
	cmp	r12d, 1
	jne	.label_334
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_337
	mov	rbp, rdx
	call	tolower
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_337:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	je	.label_330
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_330
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	r12, [rsp + 0x40]
	mov	esi, 0x2000ff
	jae	.label_333
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_348:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	and	ecx, esi
	cmp	ecx, 0x200001
	jne	.label_333
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	inc	rbp
	inc	r13
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_348
.label_333:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	mov	rsi, r12
	mov	rdx, rbp
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	jne	.label_329
	mov	edi, dword ptr [rsp + 0x154]
	call	towlower
	mov	rdi, r12
	mov	esi, eax
	mov	rdx, r15
	call	wcrtomb
	cmp	rax, -1
	je	.label_329
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	jmp	.label_329
	nop	
.label_350:
	mov	rax, qword ptr [rdx]
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_349:
	bt	rbx, r12
	jae	.label_340
	mov	byte ptr [r13 + r12], 1
	test	r14b, r14b
	je	.label_340
	lea	edi, [r15 + r12]
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_340:
	inc	r12
	cmp	r12, 0x40
	jne	.label_349
	inc	rbp
	add	r15, 0x40
	cmp	rbp, 4
	mov	rdx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rsp + 0x30]
	jne	.label_350
	jmp	.label_330
	nop	word ptr [rax + rax]
.label_346:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_342
	cmp	qword ptr [r15 + 0x48], 0
	jne	.label_345
	test	byte ptr [r15 + 0x20], 1
	jne	.label_345
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_342
.label_345:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	lea	rbp, [rsp + 0x40]
	nop	dword ptr [rax]
.label_339:
	mov	qword ptr [rsp + 0x40], 0
	xor	edi, edi
	mov	edx, 1
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_331
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_331:
	inc	byte ptr [rsp + 0x148]
	jne	.label_339
.label_329:
	mov	rdx, rbx
	jmp	.label_330
	nop	word ptr cs:[rax + rax]
.label_334:
	cmp	r12d, 2
	je	.label_343
	mov	eax, r12d
	or	eax, 2
	cmp	eax, 7
	jne	.label_330
	jmp	.label_343
.label_342:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_330
	xor	ebp, ebp
.label_332:
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x148], 0
	mov	rax, qword ptr [r15]
	mov	esi, dword ptr [rax + rbp*4]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	lea	r12, [rsp + 0x148]
	mov	rdx, r12
	call	wcrtomb
	cmp	rax, -1
	je	.label_336
	movzx	edi, byte ptr [rsp + 0x40]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	je	.label_336
	call	tolower
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_336:
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rdx, rbx
	je	.label_344
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_344
	mov	rax, qword ptr [r15]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	call	towlower
	mov	rdi, r13
	mov	esi, eax
	mov	rdx, r12
	call	wcrtomb
	mov	rdx, rbx
	cmp	rax, -1
	je	.label_344
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	nop	
.label_344:
	inc	rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	jl	.label_332
	nop	dword ptr [rax]
.label_330:
	mov	rcx, qword ptr [rsp + 0x18]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	rcx, qword ptr [rsi + 0x10]
	jl	.label_338
.label_341:
	add	rsp, 0x158
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_343:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_341
	mov	rax, qword ptr [rsp + 0x20]
	or	byte ptr [rax + 0x38], 1
	jmp	.label_341
	nop	
	.section	.text
	.align	16
	#Procedure 0x405c70
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
	je	.label_353
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	cmovne	rcx, rax
	mov	ebx, ebp
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_351
	and	byte ptr [r15 + 0x38], 0x7f
	jmp	.label_352
.label_351:
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_352:
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
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
	jne	.label_354
	mov	rdi, r15
	call	rpl_re_compile_fastmap
	xor	ebx, ebx
.label_353:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_354:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_353
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d60
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
	jae	.label_355
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_358
	cmp	rbx, r15
	mov	rdx, rbx
	ja	.label_357
.label_356:
	mov	rdi, r14
	mov	rsi, r12
	call	memcpy
.label_358:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_357:
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	mov	rdx, r15
	jmp	.label_356
.label_355:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405de0
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	je	.label_359
	call	free_dfa_content
.label_359:
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
	.align	16
	#Procedure 0x405e20

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
	je	.label_367
	xor	r15d, r15d
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_367
	xor	ebx, ebx
	nop	
.label_362:
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	call	free_token
	inc	rbx
	add	r15, 0x10
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_362
.label_367:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_368
	xor	r15d, r15d
	mov	ebx, 0x10
.label_369:
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_370
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_370:
	mov	rax, qword ptr [r14 + 0x38]
	test	rax, rax
	je	.label_361
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_361:
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	je	.label_364
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_364:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_369
.label_368:
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_365
	xor	r15d, r15d
.label_366:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_360
	lea	r13, [rax + rcx*8]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_363:
	mov	rax, qword ptr [r12]
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_363
.label_360:
	mov	rdi, qword ptr [r12]
	call	free
	inc	r15
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_366
.label_365:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	je	.label_371
	call	free
.label_371:
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
	.align	16
	#Procedure 0x405f70
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, 2
	cmp	ebp, 7
	ja	.label_372
	test	bpl, 4
	jne	.label_374
	mov	rdi, r14
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_373
.label_374:
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_373:
	test	byte ptr [rbx + 0x38], 0x10
	jne	.label_376
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], r12
	mov	qword ptr [rsp], r15
	jmp	.label_375
.label_376:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [rsp], 0
.label_375:
	mov	rdi, rbx
	mov	rsi, r14
	mov	r8, rdx
	mov	r9, rdx
	call	re_search_internal
	test	eax, eax
	setne	al
	movzx	eax, al
.label_372:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406010

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
	mov	r15, rcx
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
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
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	test	rax, rax
	je	.label_387
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	movzx	ecx, cl
	xor	edi, edi
	cmp	ecx, 8
	cmovne	rax, rdi
	cmp	r15, r8
	cmove	rax, rdi
	mov	r10, rax
.label_387:
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	mov	rcx, rdi
	sub	rcx, rax
	xor	ebp, ebp
	cmp	rax, r12
	cmovb	rbp, rcx
	mov	r13d, 1
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_386
	mov	rax, qword ptr [rbx + 0x48]
	test	rax, rax
	je	.label_386
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	je	.label_386
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	je	.label_386
	cmp	qword ptr [rbx + 0x60], 0
	je	.label_386
	mov	qword ptr [rsp + 0x58], r9
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_398
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_405
.label_398:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_408
	mov	qword ptr [rsp + 0x50], r8
.label_405:
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	qword ptr [rsp + 0x18], rdi
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	jne	.label_413
	cmp	qword ptr [rbx + 0x98], 0
	setne	byte ptr [rsp + 0x67]
.label_413:
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	and	r9, qword ptr [r14 + 0x18]
	shr	r9, 0x16
	mov	qword ptr [rsp], rbx
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	mov	qword ptr [rsp + 0x68], rsi
	mov	qword ptr [rsp + 0x70], rdx
	call	re_string_allocate
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_383
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0xe8], rax
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	call	match_ctx_init
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_383
	mov	rax, r12
	sub	rax, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_392
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 2
	jne	.label_392
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	jmp	.label_399
.label_392:
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	movabs	rcx, 0x1ffffffffffffffe
	cmp	rax, rcx
	ja	.label_383
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	je	.label_383
.label_399:
	mov	qword ptr [rsp + 0x180], r15
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	dword ptr [rsp + 0xf0], eax
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	r11d, 0xffffffff
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	mov	rdi, qword ptr [rsp + 0x48]
	test	rdi, rdi
	mov	rbx, qword ptr [rsp + 0x30]
	je	.label_424
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_384
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	jne	.label_389
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_389
.label_384:
	mov	r9d, 4
.label_389:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	movzx	edx, dl
	lea	esi, [rcx + rdx*2]
	or	esi, r9d
.label_424:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	jl	.label_400
	cmp	rbp, rcx
	jl	.label_411
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	qword ptr [rsp + 0x50], rsi
.label_438:
	cmp	esi, 4
	ja	.label_418
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_423]]
.label_1770:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	jl	.label_431
	nop	dword ptr [rax]
.label_432:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_427
	movzx	eax, byte ptr [r9 + rcx]
.label_427:
	test	rbx, rbx
	je	.label_428
	movzx	eax, byte ptr [rbx + rax]
.label_428:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_431
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	cmp	rax, r13
	jg	.label_432
.label_431:
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_410
	jmp	.label_377
	nop	word ptr [rax + rax]
.label_434:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	jl	.label_377
	cmp	rax, rbp
	jle	.label_418
	jmp	.label_377
.label_425:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_383
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, rbp
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_414
	nop	word ptr cs:[rax + rax]
.label_418:
	mov	rsi, qword ptr [rsp + 0x180]
	mov	rax, rsi
	sub	rax, qword ptr [rsp + 0xa8]
	cmp	rax, qword ptr [rsp + 0xb8]
	jae	.label_425
.label_414:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	ecx, 0
	jge	.label_430
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_430:
	cmp	byte ptr [rdi + rcx], 0
	je	.label_434
	jmp	.label_410
.label_1771:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_437
	nop	word ptr cs:[rax + rax]
.label_385:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_437:
	cmp	rax, rbp
	jge	.label_390
	movzx	ecx, byte ptr [r9 + rax]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_385
	jmp	.label_390
.label_1772:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_391
	nop	word ptr [rax + rax]
.label_397:
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_391:
	cmp	rax, rbp
	jge	.label_390
	movzx	ecx, byte ptr [r9 + rax]
	movzx	ecx, byte ptr [rbx + rcx]
	cmp	byte ptr [rdi + rcx], 0
	je	.label_397
.label_390:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	je	.label_404
.label_410:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	jne	.label_417
	cmp	dword ptr [rsp + 0x58], 1
	je	.label_406
	mov	rcx, qword ptr [rsp + 0xb0]
	test	rcx, rcx
	je	.label_406
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	je	.label_426
.label_406:
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	call	check_matching
	cmp	rax, -1
	je	.label_436
	mov	r13d, 0xc
	cmp	rax, -2
	je	.label_383
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_435
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 0x10
	je	.label_382
.label_435:
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	je	.label_388
.label_382:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rsp + 0x80]
	mov	rdx, rax
	call	check_halt_state_context
	mov	qword ptr [rsp + 0x130], rax
.label_388:
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_401
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_401
	mov	rax, qword ptr [rsp + 0x78]
	test	byte ptr [rax + 0xb0], 1
	jne	.label_407
.label_401:
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_412
.label_407:
	lea	rdi, [rsp + 0x80]
	call	prune_impossible_nodes
	mov	r13d, eax
	mov	dword ptr [rsp + 0x30], 0
	test	r13d, r13d
	je	.label_412
	cmp	r13d, 1
	jne	.label_383
.label_436:
	lea	rdi, [rsp + 0x80]
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_426:
	mov	rax, qword ptr [rsp + 0x180]
	add	rax, r15
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_396
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_438
	jmp	.label_439
.label_404:
	xor	eax, eax
	cmp	rcx, rdx
	jge	.label_441
	movzx	eax, byte ptr [r9 + rcx]
.label_441:
	test	rbx, rbx
	je	.label_379
	movzx	eax, byte ptr [rbx + rax]
.label_379:
	cmp	byte ptr [rdi + rax], 0
	jne	.label_410
.label_377:
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_383
.label_400:
	mov	r13d, 1
	jmp	.label_383
.label_411:
	mov	r13d, 1
	jmp	.label_383
.label_412:
	mov	rdx, qword ptr [rsp + 0x10]
	cmp	rdx, r12
	je	.label_381
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_403
	mov	rax, qword ptr [rsp + 0x18]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_420:
	mov	qword ptr [rcx + 8], -1
	mov	qword ptr [rcx], -1
	add	rcx, 0x10
	dec	rax
	jne	.label_420
.label_403:
	mov	rbx, rdx
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	mov	rbp, rsi
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_380
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	jne	.label_380
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	test	byte ptr [rcx + 0xb0], 1
	mov	eax, 0
	je	.label_443
	cmp	qword ptr [rcx + 0x98], 0
	setg	al
.label_443:
	movzx	r8d, al
	lea	rsi, [rsp + 0x80]
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_383
.label_380:
	mov	rdx, rbx
	cmp	rdx, r12
	je	.label_440
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_378
.label_408:
	cmp	qword ptr [r11 + 0x10], 0
	je	.label_393
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_394
.label_393:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_395
	test	r8, r8
	mov	r15d, 0
	jne	.label_386
	jmp	.label_405
.label_417:
	mov	r13d, eax
	jmp	.label_383
.label_402:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_409
	lea	rcx, [r9 + rbx*8]
.label_409:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	je	.label_416
	lea	rcx, [r9 + rbx*8]
.label_416:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_421
.label_378:
	mov	rbx, qword ptr [rsi - 8]
	cmp	rbx, -1
	je	.label_422
	test	al, al
	jne	.label_402
.label_421:
	mov	rcx, qword ptr [rsp + 0x180]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_422:
	add	rsi, 0x10
	dec	rdi
	jne	.label_378
.label_440:
	test	rdx, rdx
	mov	rbx, qword ptr [rsp + 0x18]
	jle	.label_429
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	word ptr cs:[rax + rax]
.label_419:
	mov	qword ptr [r12 + 8], -1
	mov	qword ptr [r12], -1
	add	r12, 0x10
	dec	rax
	jne	.label_419
.label_429:
	mov	rdi, qword ptr [rsp + 0x78]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_381
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_381
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	lea	rcx, [rbp + 0x18]
	xor	edx, edx
.label_433:
	mov	rsi, qword ptr [rax + rdx*8]
	cmp	rdx, rsi
	je	.label_442
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_442:
	inc	rdx
	add	rcx, 0x10
	cmp	rbx, rdx
	jne	.label_433
.label_381:
	mov	r13d, dword ptr [rsp + 0x30]
.label_383:
	mov	rdi, qword ptr [rsp + 0x138]
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_415
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_415:
	lea	rdi, [rsp + 0x80]
	call	re_string_destruct
.label_386:
	mov	eax, r13d
	add	rsp, 0x188
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_394:
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_405
.label_395:
	xor	r15d, r15d
	jmp	.label_405
.label_396:
	mov	r13d, 1
	jmp	.label_383
.label_439:
	mov	r13d, 1
	jmp	.label_383
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4069d0
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069f0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_447
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], r9
	cmp	rcx, rdx
	jg	.label_447
	mov	r14, qword ptr [rsp + 0x80]
	xor	r15d, r15d
	add	r8, rcx
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_444
	test	r12b, 8
	jne	.label_444
	mov	rax, qword ptr [rdi + 0x20]
	test	rax, rax
	je	.label_444
	mov	rbp, rdi
	mov	r13, rcx
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_444:
	xor	esi, esi
	test	r14, r14
	mov	ebx, 1
	je	.label_451
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	jne	.label_453
	and	al, 6
	movzx	eax, al
	cmp	eax, 4
	jne	.label_446
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_448
.label_446:
	mov	rbx, qword ptr [rdi + 0x30]
	inc	rbx
.label_452:
	mov	rsi, r14
	jmp	.label_453
.label_451:
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
.label_453:
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbp, rdi
	mov	rdi, rbx
	shl	rdi, 4
	call	malloc
	mov	r13, rax
	mov	r14, -2
	test	r13, r13
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x38]
	je	.label_447
	mov	al, r12b
	shr	al, 5
	and	al, 1
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	mov	r14, rbx
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	r8, r15
	mov	r9, qword ptr [rsp + 0x30]
	call	re_search_internal
	test	eax, eax
	je	.label_450
	cmp	eax, 1
	sete	al
	movzx	r14d, al
	or	r14, 0xfffffffffffffffe
	jmp	.label_449
.label_450:
	mov	rdx, r14
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_454
	mov	al, byte ptr [rbp + 0x38]
	shr	al, 1
	and	al, 3
	movzx	ecx, al
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	dl, al
	and	dl, 6
	or	dl, cl
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	je	.label_449
.label_454:
	mov	al, byte ptr [rsp + 0x88]
	mov	r14, qword ptr [r13]
	test	al, al
	je	.label_449
	cmp	r14, rbx
	jne	.label_445
	mov	r14, qword ptr [r13 + 8]
	sub	r14, rbx
.label_449:
	mov	rdi, r13
	call	free
.label_447:
	mov	rax, r14
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_448:
	xor	ecx, ecx
	test	rax, rax
	cmovle	r14, rcx
	mov	ebx, 1
	cmovg	rbx, rax
	jmp	.label_452
.label_445:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406be0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	mov	r9, rdx
	call	re_search_stub
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c00
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rsp], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c40

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
	js	.label_455
	movabs	rax, 0x7fffffffffffffff
	test	rbx, rbx
	js	.label_458
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_455
	lea	rdx, [rbx + r14]
	xor	r12d, r12d
	test	rbx, rbx
	jle	.label_457
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	test	r14, r14
	jle	.label_460
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	call	malloc
	mov	r12, rax
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_455
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	mov	r13, rax
	call	memcpy
	mov	rdi, r12
	add	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	mov	rdi, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	jmp	.label_457
.label_458:
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	jle	.label_456
.label_455:
	mov	rax, -2
	jmp	.label_459
.label_456:
	add	rbx, r14
	xor	r12d, r12d
	mov	rdx, rbx
	jmp	.label_457
.label_460:
	mov	r13, r15
	mov	r9, qword ptr [rsp + 0x20]
	mov	rdi, qword ptr [rsp + 0x18]
.label_457:
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
.label_459:
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
	#Procedure 0x406d80
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406dc0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	mov	al, byte ptr [rdi + 0x38]
	and	al, 0xf9
	test	rdx, rdx
	je	.label_461
	or	al, 2
	mov	byte ptr [rdi + 0x38], al
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_461:
	mov	byte ptr [rdi + 0x38], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	mov	qword ptr [rsi + 0x10], 0
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406df0

	.globl free_token
	.type free_token, @function
free_token:
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_462
	mov	rdi, qword ptr [rdi]
	jmp	free_charset
.label_462:
	cmp	eax, 3
	jne	.label_463
	mov	rdi, qword ptr [rdi]
	jmp	free
.label_463:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e10

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
	je	.label_464
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x50]
	call	free
.label_464:
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
	.align	16
	#Procedure 0x406e70

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
	.align	16
	#Procedure 0x406ea0

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
	ja	.label_470
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	shl	rdi, 4
	call	malloc
	mov	qword ptr [r15], rax
	mov	eax, 1
.label_468:
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	cmp	rbx, rbp
	jbe	.label_468
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
	movzx	ecx, cl
	cmp	ecx, 0x75
	jne	.label_467
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_467
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	movzx	ecx, cl
	cmp	ecx, 0x66
	jne	.label_467
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	cmp	edx, 0x38
	jne	.label_467
	cmp	byte ptr [rax + rcx + 4], 0
	jne	.label_467
	or	byte ptr [r15 + 0xb0], 4
.label_467:
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_466
	test	al, 4
	jne	.label_474
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	xor	r12d, r12d
	test	rax, rax
	je	.label_470
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_473:
	xor	ebp, ebp
	mov	ebx, r14d
	nop	word ptr cs:[rax + rax]
.label_472:
	mov	edi, ebx
	call	btowc
	cmp	eax, -1
	je	.label_465
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rcx, qword ptr [r15 + 0x78]
	or	qword ptr [rcx + r12*8], rdx
.label_465:
	cmp	ebx, 0x7f
	ja	.label_471
	cmp	ebx, eax
	je	.label_471
	or	byte ptr [r15 + 0xb0], 8
.label_471:
	inc	rbp
	inc	ebx
	cmp	rbp, 0x40
	jne	.label_472
	add	r14d, 0x40
	inc	r12
	cmp	r12, 4
	jne	.label_473
	jmp	.label_466
.label_474:
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_466:
	cmp	qword ptr [r15], 0
	je	.label_469
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_470
.label_469:
	mov	r14d, 0xc
.label_470:
	mov	eax, r14d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4070c0

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
	jle	.label_480
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_476
.label_480:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_483
	mov	rbp, qword ptr [rbx + 8]
.label_483:
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_475
	cmp	eax, 2
	jl	.label_478
	nop	
.label_477:
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_476
	xor	eax, eax
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_476
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	cmp	rsi, rcx
	jg	.label_476
	add	rsi, rsi
	mov	rdi, rbx
	call	re_string_realloc_buffers
	test	eax, eax
	je	.label_477
	jmp	.label_476
.label_475:
	cmp	eax, 2
	jl	.label_479
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_481
.label_478:
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_481
.label_479:
	test	r12, r12
	je	.label_482
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_481
.label_482:
	mov	rax, qword ptr [rbx + 0x40]
	mov	qword ptr [rbx + 0x30], rax
	mov	qword ptr [rbx + 0x38], rax
.label_481:
	xor	eax, eax
.label_476:
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
	#Procedure 0x4071e0

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	r14
	push	rbx
	push	rax
	mov	r14, qword ptr [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	test	rdi, rdi
	je	.label_484
.label_485:
	mov	rbx, qword ptr [rdi]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_485
.label_484:
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
	.align	16
	#Procedure 0x407240

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
	je	.label_486
	mov	rdi, qword ptr [rbx + 8]
	pop	rbx
	jmp	free
.label_486:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407270

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
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_491
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_489
.label_491:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	test	rbx, rbx
	je	.label_490
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r13
	call	create_tree
	mov	r12, rax
	jmp	.label_487
.label_490:
	mov	r12, r13
.label_487:
	test	r13, r13
	je	.label_488
	test	r12, r12
	je	.label_488
.label_489:
	mov	rax, r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_488:
	mov	dword ptr [r14], 0xc
	xor	r12d, r12d
	jmp	.label_489
	.section	.text
	.align	16
	#Procedure 0x407330

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
	je	.label_492
	cmp	qword ptr [rbx + 0x20], 0
	je	.label_492
	test	rcx, rcx
	je	.label_492
	mov	rcx, qword ptr [rbx + 0x28]
	test	rcx, rcx
	je	.label_492
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	je	.label_499
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_496
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_497:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_497
.label_496:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rdx, rbx
	call	preorder
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_495
	mov	rcx, qword ptr [rbx + 0xe0]
	xor	eax, eax
.label_498:
	cmp	rax, qword ptr [rcx + rax*8]
	jne	.label_495
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	jb	.label_498
.label_495:
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_499
	mov	rdi, qword ptr [rbx + 0xe0]
	call	free
	mov	qword ptr [rbx + 0xe0], 0
.label_499:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	test	eax, eax
	jne	.label_492
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	test	eax, eax
	jne	.label_492
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	call	preorder
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, rbx
	call	preorder
	test	eax, eax
	jne	.label_492
	mov	rdi, rbx
	call	calc_eclosure
	test	eax, eax
	jne	.label_492
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_494
	cmp	qword ptr [r14 + 0x30], 0
	je	.label_494
	test	byte ptr [rbx + 0xb0], 1
	jne	.label_493
.label_494:
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_492
.label_493:
	mov	rax, qword ptr [rbx + 0x10]
	shl	rax, 3
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbx + 0x38], rax
	test	rax, rax
	mov	eax, 0xc
	je	.label_492
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	calc_inveclosure
.label_492:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407510

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_507
	mov	r11, qword ptr [rdi]
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	xor	r10d, r10d
	xor	eax, eax
.label_514:
	mov	rsi, rax
	shl	rsi, 4
	movzx	edx, byte ptr [r11 + rsi + 8]
	dec	edx
	cmp	edx, 0xb
	ja	.label_513
	lea	rcx, [r11 + rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_505]]
.label_1759:
	mov	dl, 1
	cmp	byte ptr [rcx], 0
	js	.label_509
	mov	dl, r10b
.label_509:
	mov	r10b, dl
	jmp	.label_502
.label_1760:
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
	nop	
.label_511:
	cmp	qword ptr [rsi + rdx*8], 0
	jne	.label_508
	inc	rdx
	cmp	rdx, 3
	jle	.label_511
	jmp	.label_502
.label_1761:
	mov	r9b, 1
	jmp	.label_502
.label_1762:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	ja	.label_506
	bt	r8, rcx
	jb	.label_502
.label_506:
	cmp	edx, 0x80
	jne	.label_508
	nop	word ptr [rax + rax]
.label_502:
	inc	rax
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_514
	jmp	.label_512
.label_507:
	xor	r9d, r9d
	xor	r10d, r10d
.label_512:
	mov	r8b, r9b
	and	r8b, 1
	or	r10b, r9b
	test	r10b, 1
	je	.label_503
	cmp	qword ptr [rdi + 0x10], 0
	je	.label_503
	xor	eax, eax
	mov	edx, 8
	nop	word ptr cs:[rax + rax]
.label_501:
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	movzx	ecx, r9b
	cmp	ecx, 1
	jne	.label_510
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_500
.label_510:
	mov	r9, qword ptr [rdi]
	mov	esi, dword ptr [r9 + rdx]
	movzx	ecx, sil
	cmp	ecx, 5
	jne	.label_504
	and	esi, 0xffffff00
	or	esi, 7
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_504
.label_500:
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	word ptr cs:[rax + rax]
.label_504:
	inc	rax
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_501
.label_503:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	cmp	qword ptr [rdi + 0x98], 0
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_508:
	ret	
.label_513:
	push	rax
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407680

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
	lea	rdi, [rsp]
	call	re_node_set_init_copy
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	jne	.label_517
	cmp	qword ptr [r15 + 0x98], 0
	jle	.label_516
	cmp	qword ptr [rsp + 8], 0
	jle	.label_516
	xor	r13d, r13d
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_515:
	mov	rax, qword ptr [rsp + 0x10]
	mov	r8, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	jne	.label_519
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	jle	.label_520
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_522:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_521
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	je	.label_520
.label_521:
	inc	rsi
	cmp	rsi, rax
	jl	.label_522
.label_520:
	cmp	r9d, 4
	setne	al
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_519
	test	al, al
	jne	.label_519
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rdi, r14
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_519
	mov	rax, qword ptr [r15 + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	call	re_node_set_merge
	test	eax, eax
	mov	r13d, 0
	jne	.label_517
	nop	word ptr [rax + rax]
.label_519:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	jl	.label_515
.label_516:
	lea	rdi, [rsp + 0x1c]
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rsi, r15
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	test	rax, rax
	je	.label_523
	cmp	byte ptr [rax + 0x68], 0
	js	.label_524
	mov	qword ptr [r15 + 0x60], rax
	mov	qword ptr [r15 + 0x58], rax
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_525
.label_524:
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
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
	je	.label_518
	test	rax, rax
	je	.label_518
	mov	rax, qword ptr [r15 + 0x58]
	test	rax, rax
	je	.label_518
.label_525:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	xor	eax, eax
.label_517:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_518:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_517
.label_523:
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_517
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407890

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
	.align	16
	#Procedure 0x407900

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_526
	mov	rax, r14
	shr	rax, 0x3d
	mov	ebp, 0xc
	jne	.label_527
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [r14*4]
	call	realloc
	test	rax, rax
	je	.label_527
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	test	rdi, rdi
	je	.label_526
	lea	rsi, [r14*8]
	call	realloc
	test	rax, rax
	je	.label_527
	mov	qword ptr [rbx + 0x18], rax
.label_526:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_528
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_527
	mov	qword ptr [rbx + 8], rax
.label_528:
	mov	qword ptr [rbx + 0x40], r14
	xor	ebp, ebp
.label_527:
	mov	eax, ebp
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407990

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
	mov	r15, rdi
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_554
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_554
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_562
.label_554:
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_558
.label_562:
	cmp	rbx, r13
	jle	.label_566
	lea	r14, [r15 + 0x20]
	jmp	.label_547
.label_563:
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_569
	cmp	rbx, -2
	jne	.label_573
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_573
.label_569:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	mov	rdx, qword ptr [r15 + 8]
	movzx	eax, byte ptr [rcx + rax]
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_532
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_532
	nop	dword ptr [rax]
.label_547:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	movzx	ebp, byte ptr [rcx + rax]
	test	bpl, bpl
	js	.label_536
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_536
	mov	r12, rbx
	call	__ctype_toupper_loc
	mov	rax, qword ptr [rax]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	movzx	eax, byte ptr [rax + r13]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_532:
	mov	rax, r13
	jmp	.label_538
	nop	word ptr cs:[rax + rax]
.label_536:
	mov	rdx, rbx
	sub	rdx, r13
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rcx, r14
	call	rpl_mbrtowc
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	ja	.label_563
	mov	qword ptr [rsp + 0x20], rcx
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	mov	r12d, eax
	cmp	r12d, dword ptr [rsp + 0x2c]
	jne	.label_571
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	jmp	.label_574
.label_571:
	mov	rdi, rbp
	mov	esi, r12d
	lea	rdx, [rsp + 0x70]
	call	wcrtomb
	cmp	rbx, rax
	jne	.label_534
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_574:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], r12d
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	jge	.label_538
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_538:
	mov	rbx, r12
	cmp	rbx, rax
	mov	r13, rax
	jg	.label_547
	jmp	.label_549
.label_534:
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_550
.label_573:
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_566:
	mov	rax, r13
.label_549:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_553
.label_558:
	cmp	r13, rbx
	jge	.label_556
.label_550:
	mov	rdx, rbx
	sub	rdx, r13
	lea	rcx, [r15 + 0x20]
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_557
	mov	rbp, qword ptr [r15]
	add	rbp, qword ptr [r15 + 0x28]
	add	rbp, r12
.label_539:
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rsp + 0x28]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	cmp	r12, -4
	ja	.label_567
	mov	qword ptr [rsp + 0x20], rbx
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_529
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	sub	rax, r14
	jne	.label_535
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	jmp	.label_537
.label_557:
	lea	rbp, [rsp + 0x30]
	cmp	dword ptr [r15 + 0x90], 0
	jle	.label_539
	xor	eax, eax
	nop	word ptr [rax + rax]
.label_544:
	cmp	rax, rdx
	jge	.label_539
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsi, rbx
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	mov	rbx, rsi
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_544
	jmp	.label_539
.label_567:
	lea	rax, [r14 + 1]
	cmp	rax, 2
	jb	.label_552
	cmp	r14, -2
	jne	.label_555
	mov	rax, qword ptr [r15 + 0x40]
	cmp	rax, qword ptr [r15 + 0x58]
	jl	.label_555
.label_552:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r12, qword ptr [rsp + 0x18]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	mov	rcx, qword ptr [r15 + 0x78]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	test	rcx, rcx
	jne	.label_570
.label_541:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + r13], al
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_564
.label_548:
	inc	r12
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	je	.label_568
	mov	rbp, r13
	jmp	.label_558
.label_535:
	cmp	rdx, -1
	je	.label_529
	lea	rbp, [rdx + r13]
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	jbe	.label_531
.label_555:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	r12, qword ptr [rsp + 0x18]
.label_556:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_553:
	xor	eax, eax
.label_540:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_529:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	mov	rsi, rbp
.label_537:
	mov	rdx, r14
	call	memcpy
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_543
	lea	rax, [r13*8]
	add	rax, qword ptr [r15 + 0x18]
	mov	rcx, r12
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_551:
	mov	qword ptr [rax], rcx
	inc	rcx
	add	rax, 8
	dec	rdx
	jne	.label_551
.label_543:
	add	r12, r14
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	lea	rbp, [r14 + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_545
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	esi, 0xff
	call	memset
	jmp	.label_561
.label_545:
	mov	rbp, rax
.label_561:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	jmp	.label_558
.label_531:
	cmp	qword ptr [r15 + 0x18], 0
	jne	.label_565
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	mov	rax, qword ptr [rsp + 8]
	je	.label_572
.label_565:
	mov	qword ptr [rsp + 8], rax
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_530
	test	r13, r13
	je	.label_533
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_560:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	jne	.label_560
.label_533:
	mov	byte ptr [r15 + 0x8c], 1
.label_530:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	qword ptr [rsp + 0x20], rdx
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [r15 + 0x10]
	mov	dword ptr [rax + r13*4], ebx
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + r13*8], rsi
	cmp	rdi, 2
	jb	.label_542
	lea	rax, [r13*4]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_546:
	cmp	rcx, r14
	mov	rdx, r12
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	inc	rcx
	cmp	rdi, rcx
	jne	.label_546
.label_542:
	mov	rax, qword ptr [rsp + 8]
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_559
	add	qword ptr [r15 + 0x68], rax
.label_559:
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rax, qword ptr [r15 + 0x58]
	cmp	rbx, rax
	cmovg	rbx, rax
	add	r12, r14
	mov	r13, rbp
	jmp	.label_558
.label_570:
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_541
.label_564:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_548
.label_568:
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rcx], rax
	mov	rbp, r13
	jmp	.label_558
.label_572:
	mov	eax, 0xc
	jmp	.label_540
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f20

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
	jge	.label_575
	jmp	.label_578
.label_577:
	mov	cl, byte ptr [rax + rdx]
	jmp	.label_576
	nop	word ptr [rax + rax]
.label_578:
	mov	rcx, qword ptr [r14]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	test	rax, rax
	jne	.label_577
.label_576:
	movzx	edi, cl
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	inc	rbx
	cmp	rbx, r15
	jl	.label_578
	mov	rbx, r15
.label_575:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407f90

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
	mov	rbx, rdi
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	jle	.label_585
	lea	r14, [rbx + 0x20]
	lea	r15, [rsp + 0xc]
	jmp	.label_587
	nop	dword ptr [rax + rax]
.label_580:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_581
.label_583:
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_589:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	rdx, qword ptr [rbx + 0x10]
	mov	dword ptr [rdx + r13*4], ecx
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_588
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rcx, rbp
.label_588:
	cmp	r12, rcx
	mov	r13, rcx
	jg	.label_587
	jmp	.label_590
.label_579:
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	jle	.label_582
	nop	word ptr cs:[rax + rax]
.label_586:
	cmp	rax, rdx
	jge	.label_584
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	add	rcx, qword ptr [rbx + 0x28]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	cmp	rax, rcx
	jl	.label_586
	lea	rsi, [rsp + 0x10]
	jmp	.label_582
.label_581:
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_583
.label_584:
	lea	rsi, [rsp + 0x10]
	jmp	.label_582
	nop	word ptr cs:[rax + rax]
.label_587:
	mov	rdx, r12
	sub	rdx, r13
	mov	rbp, qword ptr [rbx + 0x20]
	cmp	qword ptr [rbx + 0x78], 0
	jne	.label_579
	mov	rsi, qword ptr [rbx]
	add	rsi, qword ptr [rbx + 0x28]
	add	rsi, r13
.label_582:
	mov	rdi, r15
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	cmp	rcx, 2
	jb	.label_580
	cmp	rax, -2
	jne	.label_589
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_580
	mov	qword ptr [r14], rbp
.label_585:
	mov	rcx, r13
.label_590:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
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
	#Procedure 0x408130

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	mov	rdx, qword ptr [rdi + 0x58]
	cmp	r8, rdx
	cmovg	r8, rdx
	cmp	rax, r8
	jge	.label_591
	nop	dword ptr [rax + rax]
.label_592:
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	add	rdx, qword ptr [rdi + 0x28]
	movzx	edx, byte ptr [rax + rdx]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	cmp	rax, r8
	jl	.label_592
	mov	rax, r8
.label_591:
	mov	qword ptr [rdi + 0x30], rax
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408180

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
	.align	16
	#Procedure 0x4081a0

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
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	call	parse_branch
	mov	rbx, rax
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_599
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_594
.label_599:
	mov	r14, qword ptr [rsp + 0x18]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_596:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0xa
	jne	.label_597
	mov	rdi, r13
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_598
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_593
	cmp	eax, 9
	mov	edx, 0
	je	.label_598
.label_593:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	mov	rdx, rax
	test	rdx, rdx
	jne	.label_595
	mov	eax, dword ptr [r12]
	test	eax, eax
	jne	.label_600
.label_595:
	mov	rax, qword ptr [rsp + 0x10]
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_598:
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_596
	mov	dword ptr [r12], 0xc
	xor	r14d, r14d
	jmp	.label_594
.label_597:
	mov	r14, rbx
.label_594:
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_600:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_594
	xor	r14d, r14d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_594
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408300

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
	.align	16
	#Procedure 0x408320

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
	mov	r15, rdi
	mov	rax, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_608
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	mov	eax, dword ptr [r15 + 8]
	mov	ecx, eax
	and	ecx, 0xff9fffff
	mov	dword ptr [r15 + 8], ecx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_615
	mov	rcx, qword ptr [rbp + 0x48]
	cmp	rcx, qword ptr [rbp + 0x30]
	je	.label_615
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	je	.label_623
.label_615:
	cmp	r12d, 0x5c
	jne	.label_602
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_617
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	mov	r14b, al
	mov	byte ptr [r15], r14b
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_622
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
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_630
.label_608:
	mov	byte ptr [r15 + 8], 2
	xor	r14d, r14d
	jmp	.label_601
.label_602:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_605
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebx, eax
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebx, 0x5f
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_613
.label_617:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_601
.label_605:
	movzx	r14d, byte ptr [r15]
	cmp	r14, 0x5f
	sete	r13b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r14*2]
	movzx	ecx, r13b
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_613:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	cmp	r12d, 0x3e
	jg	.label_619
	lea	eax, [r12 - 0x24]
	cmp	eax, 0xa
	ja	.label_624
	jmp	qword ptr [word ptr [+ (rax * 8) + label_625]]
.label_1763:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	jne	.label_627
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	je	.label_627
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	call	peek_token
	dec	qword ptr [rbp + 0x48]
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	cmp	eax, 1
	ja	.label_601
.label_627:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	jmp	.label_601
.label_619:
	cmp	r12d, 0x7a
	jg	.label_606
	cmp	r12d, 0x3f
	je	.label_607
	cmp	r12d, 0x5b
	je	.label_609
	cmp	r12d, 0x5e
	jne	.label_601
	mov	rcx, qword ptr [rsp]
	test	ecx, 0x800008
	jne	.label_610
	mov	rax, qword ptr [rbp + 0x48]
	test	rax, rax
	je	.label_610
	test	ch, 8
	je	.label_601
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_601
.label_610:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	jmp	.label_601
.label_622:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	and	ebx, 0xffbfff01
.label_630:
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	cmp	eax, 0x5f
	jg	.label_621
	lea	ecx, [rax - 0x27]
	cmp	ecx, 0x2c
	ja	.label_616
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_628]]
.label_1777:
	mov	rcx, r12
	test	ch, 0x40
	jne	.label_601
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	cdqe	
	mov	qword ptr [r15], rax
	jmp	.label_601
.label_606:
	cmp	r12d, 0x7b
	je	.label_631
	cmp	r12d, 0x7c
	je	.label_633
	cmp	r12d, 0x7d
	jne	.label_601
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_603
	jmp	.label_601
.label_623:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_601
.label_621:
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_612
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_626]]
.label_1799:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_624:
	cmp	r12d, 0xa
	jne	.label_601
	mov	rax, qword ptr [rsp]
	test	ah, 8
	jne	.label_611
	jmp	.label_601
.label_1764:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_618
	jmp	.label_601
.label_1765:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_620
	jmp	.label_601
.label_1766:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1767:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_601
	jmp	.label_629
.label_1768:
	and	ebx, 0xffffff00
	or	ebx, 5
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_607:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_601
	jmp	.label_632
.label_609:
	and	ebx, 0xffffff00
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_631:
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_604
	jmp	.label_601
.label_633:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	jne	.label_601
	test	ax, ax
	js	.label_611
	jmp	.label_601
.label_612:
	cmp	eax, 0x60
	je	.label_614
	cmp	eax, 0x62
	jne	.label_601
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x100
	jmp	.label_601
.label_616:
	cmp	eax, 0x57
	jne	.label_601
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1800:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1801:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_601
.label_604:
	and	ebx, 0xffffff00
	or	ebx, 0x17
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1802:
	mov	rax, r12
	test	ah, 4
	jne	.label_601
	test	ax, ax
	js	.label_601
.label_611:
	and	ebx, 0xffffff00
	or	ebx, 0xa
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1803:
	and	r12d, 0x1200
	cmp	r12, 0x200
	jne	.label_601
.label_603:
	and	ebx, 0xffffff00
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_614:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_601
.label_1773:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x80
	jmp	.label_601
.label_1774:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_601
.label_618:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1775:
	mov	rax, r12
	test	ah, 0x20
	jne	.label_601
.label_620:
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1776:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_601
.label_629:
	and	ebx, 0xffffff00
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1778:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 6
	jmp	.label_601
.label_1779:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 9
	jmp	.label_601
.label_1780:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_601
.label_632:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_601
.label_1781:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	jmp	.label_601
.label_1782:
	test	r12d, 0x80000
	jne	.label_601
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_601:
	mov	eax, r14d
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
	#Procedure 0x408990

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	cmp	byte ptr [rdi + 0x8b], 0
	jne	.label_637
.label_635:
	mov	rax, qword ptr [rdi + 8]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	al, byte ptr [rcx + rax + 1]
.label_636:
	movzx	eax, al
	ret	
.label_637:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_634
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	cmp	dword ptr [rax + rcx*4 + 4], -1
	je	.label_635
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	je	.label_634
	cmp	dword ptr [rax + rcx*4 + 8], -1
	je	.label_635
.label_634:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_638
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	jmp	.label_639
.label_638:
	inc	rax
.label_639:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	test	al, al
	jns	.label_636
	mov	cl, byte ptr [rdi + 0x8c]
	test	cl, cl
	je	.label_636
	jmp	.label_635
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a10

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	jne	.label_640
	mov	rax, qword ptr [rdi + 8]
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_640:
	mov	rax, qword ptr [rdi + 0x10]
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408a30

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
	mov	qword ptr [rsp + 0x10], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	call	parse_expression
	xor	r15d, r15d
	test	rax, rax
	jne	.label_646
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_646
	jmp	.label_641
	nop	word ptr cs:[rax + rax]
.label_644:
	test	rbx, rbx
	cmovne	r15, rbx
	mov	rax, r15
.label_646:
	mov	rbx, rax
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_642
	test	r12, r12
	je	.label_645
	cmp	eax, 9
	je	.label_647
.label_645:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r9, r14
	call	parse_expression
	mov	r15, rax
	test	r15, r15
	jne	.label_648
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_643
.label_648:
	test	rbx, rbx
	je	.label_644
	test	r15, r15
	je	.label_644
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	mov	rsi, rbx
	mov	rdx, r15
	call	create_tree
	test	rax, rax
	jne	.label_646
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
	jmp	.label_641
.label_643:
	xor	r15d, r15d
	test	rbx, rbx
	je	.label_641
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	jmp	.label_641
.label_642:
	mov	r15, rbx
	jmp	.label_641
.label_647:
	mov	r15, rbx
.label_641:
	mov	rax, r15
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
	#Procedure 0x408b60

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	jmp	.label_649
.label_651:
	mov	rdi, qword ptr [rcx + 0x10]
.label_649:
	mov	rcx, rdi
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_649
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_650
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_649
	jmp	.label_651
.label_650:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_653:
	mov	rbx, rcx
	mov	rdi, r14
	mov	rsi, rbx
	call	r15
	test	eax, eax
	jne	.label_652
	mov	rcx, qword ptr [rbx]
	xor	eax, eax
	test	rcx, rcx
	je	.label_652
	cmovne	r12, rbx
	mov	rax, rcx
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	cmp	rdi, r12
	mov	r12, rbx
	je	.label_653
	test	rdi, rdi
	mov	r12, rbx
	je	.label_653
	jmp	.label_649
.label_652:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408bf0

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
	.align	16
	#Procedure 0x408c00

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
	mov	qword ptr [rsp], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_654
	nop	word ptr cs:[rax + rax]
.label_673:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
.label_654:
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	cmp	eax, 0x23
	ja	.label_669
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_670]]
.label_1825:
	test	r14, r14
	jne	.label_671
.label_1822:
	test	rbx, rbx
	jne	.label_671
	test	r15, r15
	jne	.label_673
.label_1821:
	mov	rax, qword ptr [rsp + 0x18]
	test	eax, 0x20000
	jne	.label_674
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	jne	.label_674
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	jmp	.label_659
.label_671:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xd
.label_659:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_669:
	mov	rax, qword ptr [rsp + 0x10]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_674:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_672
	jmp	.label_665
.label_1826:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.1_4
	mov	ecx, OFFSET FLAT:.str.2_2
	jmp	.label_679
.label_1827:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	sete	al
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	ecx, OFFSET FLAT:.str_0
.label_679:
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	build_charclass_op
	jmp	.label_667
.label_1824:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	call	parse_bracket_exp
	jmp	.label_667
.label_1817:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_665
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_672
	mov	rbx, qword ptr [rsp + 0x20]
.label_657:
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_672
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_672
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_672
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_665
	test	r14, r14
	jne	.label_657
	jmp	.label_665
.label_1818:
	mov	cl, byte ptr [r13]
	mov	eax, 1
	shl	eax, cl
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	je	.label_660
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_665
	inc	qword ptr [r12 + 0x98]
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_672
.label_1819:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	je	.label_665
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_672
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_672
.label_1820:
	mov	r8, qword ptr [rsp]
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	call	parse_sub_exp
.label_667:
	mov	r14, rax
	test	r14, r14
	jne	.label_672
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, dword ptr [rbx]
	test	eax, eax
	jne	.label_669
.label_672:
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rdx, rbx
	call	fetch_token
	mov	ebp, ebx
	mov	r15, rbx
	and	ebp, 0x1000000
	mov	rbx, qword ptr [rsp + 8]
	nop	word ptr [rax + rax]
.label_663:
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x17
	ja	.label_655
	mov	ecx, 0x8c0800
	bt	ecx, eax
	jae	.label_658
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	jne	.label_661
	mov	ecx, dword ptr [rbx]
	test	ecx, ecx
	jne	.label_662
.label_661:
	test	rbp, rbp
	mov	r14, rax
	je	.label_663
	movzx	ecx, byte ptr [r13 + 8]
	cmp	ecx, 0x17
	je	.label_666
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_663
.label_666:
	test	rax, rax
	je	.label_668
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, rax
	call	postorder
.label_668:
	mov	dword ptr [rbx], 0xd
	jmp	.label_659
.label_662:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	test	r14, r14
	je	.label_669
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r14
	call	postorder
	jmp	.label_669
.label_655:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_669
.label_658:
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_669
.label_1823:
	mov	eax, dword ptr [r13]
	test	ax, 0x30f
	je	.label_677
	test	byte ptr [r12 + 0xb0], 0x10
	jne	.label_678
	mov	rdi, r12
	call	init_word_char
.label_678:
	mov	eax, dword ptr [r13]
.label_677:
	cmp	eax, 0x200
	je	.label_680
	cmp	eax, 0x100
	jne	.label_681
.label_680:
	cmp	dword ptr [r13], 0x100
	jne	.label_675
	mov	dword ptr [r13], 6
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 9
	jmp	.label_656
.label_1828:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	jmp	.label_659
.label_665:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_659
.label_681:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_664
	mov	dword ptr [rcx], 0xc
	jmp	.label_659
.label_675:
	mov	dword ptr [r13], 5
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbx, rax
	mov	eax, 0xa
.label_656:
	mov	r14, qword ptr [rsp + 8]
	mov	dword ptr [r13], eax
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rbp
	call	create_tree
	test	rbx, rbx
	je	.label_676
	test	rbp, rbp
	je	.label_676
	test	rax, rax
	je	.label_676
.label_664:
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	jmp	.label_669
.label_660:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	jmp	.label_659
.label_676:
	mov	dword ptr [r14], 0xc
	jmp	.label_659
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090f0

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
	je	.label_682
.label_684:
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
	je	.label_685
	mov	qword ptr [r12], rax
.label_685:
	test	r14, r14
	je	.label_683
	mov	qword ptr [r14], rax
.label_683:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_682:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_683
	mov	rax, qword ptr [rbx + 0x70]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_684
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4091b0

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
	movzx	eax, byte ptr [rbx + 8]
	xor	r8d, r8d
	cmp	eax, 9
	je	.label_690
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
	jne	.label_686
	movzx	eax, byte ptr [rbx + 8]
	cmp	eax, 9
	jne	.label_688
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_686
.label_690:
	cmp	r12, 8
	mov	rdi, qword ptr [rsp + 0x10]
	ja	.label_691
	mov	eax, 1
	mov	cl, r12b
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa8], rax
.label_691:
	xor	edx, edx
	mov	ecx, 0x11
	mov	rsi, r8
	call	create_tree
	test	rax, rax
	je	.label_687
	mov	qword ptr [rax + 0x28], r12
.label_686:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_687:
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	jmp	.label_686
.label_688:
	test	r8, r8
	je	.label_689
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	call	postorder
.label_689:
	mov	dword ptr [r13], 8
	xor	eax, eax
	jmp	.label_686
	.section	.text
	.align	16
	#Procedure 0x4092b0

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
	mov	qword ptr [rsp + 0x28], r8
	mov	rbx, rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	r13, rdi
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r14, rax
	test	r15, r15
	je	.label_694
	test	r14, r14
	je	.label_694
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x19
	je	.label_697
	cmp	eax, 2
	je	.label_698
	mov	dword ptr [rsp + 0x14], 0
	jmp	.label_701
.label_697:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_703
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_703:
	movsxd	rax, ebp
	add	qword ptr [r13 + 0x48], rax
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, rbx
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 2
	je	.label_698
	mov	al, 1
	mov	dword ptr [rsp + 0x14], eax
.label_701:
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	cmp	ecx, 0x15
	jne	.label_715
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_715:
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	mov	r9d, 1
	mov	rsi, r13
	mov	rdx, r12
	mov	ecx, ebp
	mov	rbp, r13
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_727
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_700
	nop	
.label_711:
	cmp	eax, 2
	je	.label_692
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	je	.label_700
	jmp	.label_727
.label_726:
	lea	rax, [r13 + r13]
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rax*4 + 4]
	call	realloc
	test	rax, rax
	je	.label_707
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_710
	nop	dword ptr [rax]
.label_700:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	je	.label_714
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_717
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_718
	cmp	eax, 2
	jne	.label_720
	jmp	.label_722
	nop	word ptr cs:[rax + rax]
.label_714:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_717
.label_718:
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x38]
	cmp	ecx, 0x15
	je	.label_728
	cmp	ecx, 2
	je	.label_729
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	dword ptr [rsp + 0x88], 3
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	ecx, eax
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	jne	.label_699
	mov	rdi, r12
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	jg	.label_704
	xor	edx, edx
.label_704:
	mov	rdi, rbx
	mov	rsi, r15
	lea	rcx, [rsp + 0xb0]
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	call	build_range_exp
	jmp	.label_696
.label_728:
	mov	eax, r14d
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	mov	byte ptr [r12 + 8], 1
.label_720:
	mov	eax, dword ptr [rsp + 0x98]
.label_717:
	mov	ecx, eax
	cmp	eax, 4
	ja	.label_719
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_721]]
.label_1704:
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rdi, r15
	call	bitset_set
	jmp	.label_723
.label_1705:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_726
.label_710:
	mov	eax, dword ptr [rsp + 0xa0]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rdx, qword ptr [rbp]
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp]
	jmp	.label_723
.label_1706:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_equiv_class
	jmp	.label_696
.label_1707:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	call	build_collating_symbol
	jmp	.label_696
.label_1708:
	mov	rdi, qword ptr [rbp + 0x78]
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	r9, rbx
	call	build_charclass
.label_696:
	mov	dword ptr [r13], eax
	test	eax, eax
	jne	.label_705
.label_723:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x15
	jne	.label_711
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	je	.label_713
	mov	rdi, r15
	call	bitset_not
.label_713:
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_709
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_709:
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_708
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_708
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_708
	cmp	qword ptr [r14 + 0x40], 0
	jne	.label_708
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_725
	cmp	qword ptr [r14 + 0x48], 0
	jne	.label_708
	test	byte ptr [r14 + 0x20], 1
	jne	.label_708
.label_725:
	mov	rdi, r14
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	jmp	.label_716
.label_708:
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_702
	nop	dword ptr [rax]
.label_724:
	cmp	qword ptr [r15 + rbx*8], 0
	jne	.label_706
	inc	rbx
	cmp	rbx, 3
	jle	.label_724
	mov	rdi, r15
	call	free
	jmp	.label_712
.label_706:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	test	rax, rax
	je	.label_702
	mov	ecx, 0xa
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_716:
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_712
	jmp	.label_702
.label_727:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
.label_705:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_695
.label_698:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	jmp	.label_695
.label_692:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_695
.label_694:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	jmp	.label_693
.label_722:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_695
.label_729:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_695
.label_699:
	mov	dword ptr [r13], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_695
.label_707:
	mov	r14, rbp
.label_702:
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
.label_695:
	mov	rdi, r15
	call	free
	mov	rdi, r14
	call	free_charset
.label_693:
	xor	ebp, ebp
.label_712:
	mov	rax, rbp
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_719:
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x409890

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	cl, al
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	xor	ebx, ebx
	test	al, 8
	mov	r15d, 0
	jne	.label_734
	movabs	rax, 0x3ff000000000000
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	qword ptr [r14 + 0xc0], rax
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_734
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_733:
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_734:
	call	__ctype_b_loc
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	dword ptr [rax + rax]
.label_735:
	mov	rax, rdx
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_731:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	je	.label_730
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	je	.label_732
.label_730:
	mov	esi, 1
	shl	rsi, cl
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_732:
	inc	rcx
	add	rax, 2
	cmp	rcx, 0x40
	jne	.label_731
	inc	r15
	add	rbx, 0x40
	add	rdx, 0x80
	cmp	r15d, 4
	jne	.label_735
	jmp	.label_733
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970

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
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	call	rpl_calloc
	mov	rbx, rax
	test	rbx, rbx
	je	.label_744
	mov	qword ptr [rsp], r12
	mov	edi, 0x50
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_739
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	mov	byte ptr [r12 + 0x20], al
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	call	build_charclass
	mov	r14d, eax
	test	r14d, r14d
	jne	.label_736
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_740
	inc	rbp
	nop	word ptr cs:[rax + rax]
.label_745:
	movsx	rsi, al
	mov	rdi, rbx
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	test	al, al
	jne	.label_745
.label_740:
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_746
	mov	rdi, rbx
	call	bitset_not
.label_746:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_738
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_738:
	mov	byte ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_741
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_747
	mov	byte ptr [rsp + 0x18], 6
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	lea	rcx, [rsp + 0x10]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	test	rax, rax
	je	.label_741
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rbp
	mov	rdx, rax
	call	create_tree
	mov	rbp, rax
	jmp	.label_737
.label_747:
	mov	rdi, r12
	call	free_charset
	jmp	.label_737
.label_741:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	jmp	.label_742
.label_744:
	mov	dword ptr [r12], 0xc
	jmp	.label_743
.label_739:
	mov	rdi, rbx
	call	free
.label_742:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_743
.label_736:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_743:
	xor	ebp, ebp
.label_737:
	mov	rax, rbp
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
	.align	16
	#Procedure 0x409b30

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
	mov	r13, r9
	mov	rbp, r8
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	jne	.label_757
	mov	qword ptr [rsp], rcx
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_748
	mov	qword ptr [rsp + 0x10], r13
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_753
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	cmp	eax, 0x2c
	je	.label_762
	jmp	.label_753
.label_757:
	mov	qword ptr [rsp + 0x10], r13
	cmp	eax, 0x12
	sete	cl
	movzx	ebx, cl
	cmp	eax, 0x13
	mov	eax, 1
	mov	r13, -1
	cmove	r13, rax
.label_759:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	fetch_token
	xor	r14d, r14d
	test	r12, r12
	je	.label_751
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	je	.label_766
	test	rbx, rbx
	jg	.label_767
	mov	r15, qword ptr [rsp + 0x18]
.label_755:
	movzx	eax, byte ptr [r12 + 0x30]
	cmp	eax, 0x11
	jne	.label_752
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	call	postorder
.label_752:
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_749
	lea	rax, [rbx + 2]
	cmp	rax, r13
	jg	.label_764
	inc	rbx
	nop	dword ptr [rax + rax]
.label_758:
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
	je	.label_749
	test	rax, rax
	je	.label_749
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	je	.label_749
	inc	rbx
	cmp	rbx, r13
	jl	.label_758
.label_764:
	test	r14, r14
	je	.label_760
	mov	ecx, 0x10
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	jmp	.label_751
.label_748:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_754
.label_762:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	je	.label_765
	cmp	eax, 1
	jne	.label_754
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_754
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	mov	r13, rax
	cmp	r13, -2
	je	.label_754
.label_765:
	cmp	r13, -1
	je	.label_756
	cmp	rbx, r13
	jg	.label_753
.label_756:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_753
	cmp	r13, -1
	mov	rax, r13
	cmove	rax, rbx
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_759
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	xor	r14d, r14d
	jmp	.label_751
.label_753:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_751
.label_754:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	je	.label_768
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	mov	r14, r12
	jmp	.label_751
.label_760:
	mov	r14, rbp
	jmp	.label_751
.label_766:
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_751
.label_767:
	mov	ebp, 1
	mov	r14, r12
	cmp	rbx, 2
	jge	.label_761
	mov	r15, qword ptr [rsp + 0x18]
	jmp	.label_763
.label_761:
	mov	r15, qword ptr [rsp + 0x18]
.label_750:
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
	je	.label_749
	test	r14, r14
	je	.label_749
	inc	rbp
	cmp	rbp, rbx
	jl	.label_750
.label_763:
	cmp	rbx, r13
	je	.label_751
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	mov	r12, rax
	test	r12, r12
	jne	.label_755
.label_749:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_751:
	mov	rax, r14
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_768:
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 2
	setne	al
	movzx	eax, al
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_751
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409e70

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	jle	.label_775
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	jl	.label_769
	mov	rax, qword ptr [rsi + 0x48]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_769
	mov	rcx, qword ptr [rsi + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_771
.label_769:
	movzx	ecx, r8b
	test	dl, 1
	je	.label_776
	cmp	ecx, 0x5c
	jne	.label_776
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_776
	mov	qword ptr [rsi + 0x48], rax
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	jmp	.label_771
.label_775:
	mov	byte ptr [rdi + 8], 2
	xor	eax, eax
	ret	
.label_776:
	cmp	ecx, 0x5b
	jne	.label_779
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	jge	.label_773
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	jmp	.label_777
.label_779:
	cmp	ecx, 0x5e
	je	.label_778
	cmp	ecx, 0x5d
	je	.label_780
	cmp	ecx, 0x2d
	jne	.label_771
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	ret	
.label_771:
	mov	byte ptr [rdi + 8], 1
	mov	eax, 1
	ret	
.label_773:
	xor	eax, eax
.label_777:
	mov	byte ptr [rdi], al
	movzx	eax, al
	cmp	eax, 0x3d
	je	.label_772
	cmp	eax, 0x3a
	je	.label_774
	cmp	eax, 0x2e
	jne	.label_770
	mov	byte ptr [rdi + 8], 0x1a
	mov	eax, 2
	ret	
.label_780:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_774:
	test	dl, 4
	jne	.label_781
.label_770:
	mov	byte ptr [rdi + 8], 1
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_778:
	mov	byte ptr [rdi + 8], 0x19
	mov	eax, 1
	ret	
.label_772:
	mov	byte ptr [rdi + 8], 0x1c
	mov	eax, 2
	ret	
.label_781:
	mov	byte ptr [rdi + 8], 0x1e
	mov	eax, 2
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409f70

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	eax, 1
	mov	cl, sil
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
	.align	16
	#Procedure 0x409fa0

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
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
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
	jl	.label_784
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	mov	rdi, rbx
	call	re_string_wchar_at
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	add	qword ptr [rbx + 0x48], rax
	jmp	.label_785
.label_784:
	movsxd	rax, ebp
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_786
	jmp	qword ptr [word ptr [+ (rax * 8) + label_782]]
.label_1747:
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
.label_1746:
	mov	eax, dword ptr [rsp + 0x14]
	test	al, al
	jne	.label_786
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	cmp	ecx, 0x15
	jne	.label_783
.label_786:
	mov	dword ptr [r15], 0
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_785:
	xor	eax, eax
.label_783:
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
	#Procedure 0x40a080

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
	je	.label_787
	cmp	ecx, 4
	je	.label_787
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_787
	cmp	edx, 4
	je	.label_787
	cmp	ecx, 3
	jne	.label_799
	mov	rdi, qword ptr [rbp + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_787
.label_799:
	cmp	dword ptr [rbx], 3
	jne	.label_805
	mov	rdi, qword ptr [rbx + 8]
	call	strlen
	mov	rcx, rax
	mov	eax, 3
	cmp	rcx, 1
	ja	.label_787
.label_805:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_788
	test	eax, eax
	jne	.label_790
	mov	al, byte ptr [rbp + 8]
	jmp	.label_791
.label_788:
	mov	rax, qword ptr [rbp + 8]
	mov	al, byte ptr [rax]
	jmp	.label_791
.label_790:
	xor	eax, eax
.label_791:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	je	.label_807
	test	ecx, ecx
	jne	.label_794
	mov	dl, byte ptr [rbx + 8]
	jmp	.label_795
.label_807:
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	jmp	.label_795
.label_794:
	xor	edx, edx
.label_795:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	je	.label_797
	test	ecx, ecx
	jne	.label_798
.label_797:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_801
.label_798:
	mov	ebp, dword ptr [rbp + 8]
.label_801:
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_803
	test	eax, eax
	jne	.label_804
.label_803:
	movzx	edi, dl
	mov	rsi, r14
	call	parse_byte
	mov	ebx, eax
	jmp	.label_808
.label_804:
	mov	ebx, dword ptr [rbx + 8]
.label_808:
	cmp	ebp, -1
	mov	eax, 3
	je	.label_787
	cmp	ebx, -1
	je	.label_787
	test	r12d, 0x10000
	je	.label_789
	cmp	ebp, ebx
	mov	eax, 0xb
	ja	.label_787
.label_789:
	test	r14, r14
	je	.label_792
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	je	.label_793
.label_800:
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	mov	dword ptr [rcx + rax*4], ebx
.label_792:
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_806:
	cmp	rbp, rbx
	ja	.label_802
	cmp	rbx, r14
	ja	.label_802
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_802:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_806
.label_787:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_793:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	mov	rdi, qword ptr [rsp + 8]
	test	rdi, rdi
	je	.label_796
	test	rax, rax
	je	.label_796
	lea	rcx, [r12 + r12 + 1]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	jmp	.label_800
.label_796:
	mov	rbx, rax
	call	free
	mov	rdi, rbx
	call	free
	mov	eax, 0xc
	jmp	.label_787
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a280

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
	jne	.label_809
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_809:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a2c0

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
	jne	.label_810
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	call	bitset_set
	xor	eax, eax
.label_810:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a300

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
	je	.label_811
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_828
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_811
.label_828:
	mov	r12d, OFFSET FLAT:.str.9_1
.label_811:
	mov	rbp, qword ptr [rbx + 0x48]
	cmp	qword ptr [r13], rbp
	je	.label_835
.label_852:
	mov	rdi, r12
	call	wctype
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	mov	rdx, qword ptr [rbx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_846
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_851
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_858
	mov	esi, OFFSET FLAT:.str.3_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_863
	mov	esi, OFFSET FLAT:.str.9_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_814
	mov	esi, OFFSET FLAT:.str.11_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_870
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_826
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_819
	mov	esi, OFFSET FLAT:.str.13_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_874
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_830
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_836
	mov	esi, OFFSET FLAT:.str.16_1
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	mov	eax, 4
	test	ecx, ecx
	jne	.label_815
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_844
.label_856:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_832
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_832:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_856
	jmp	.label_815
.label_846:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_821
	nop	word ptr cs:[rax + rax]
.label_868:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_865
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_865:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_868
	jmp	.label_815
	nop	dword ptr [rax + rax]
.label_821:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_812
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_812:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_821
	jmp	.label_815
.label_851:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_827
	nop	dword ptr [rax]
.label_839:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_831
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_831:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_839
	jmp	.label_815
	nop	dword ptr [rax + rax]
.label_827:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_842
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_842:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_827
	jmp	.label_815
.label_858:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_854
	nop	dword ptr [rax]
.label_864:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_859
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_859:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_864
	jmp	.label_815
	nop	dword ptr [rax]
.label_854:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	je	.label_867
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_867:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_854
	jmp	.label_815
.label_863:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_818
	nop	word ptr [rax + rax]
.label_829:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_823
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_823:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_829
	jmp	.label_815
.label_818:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_834
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_834:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_818
	jmp	.label_815
.label_835:
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_815
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	qword ptr [r13], rax
	jmp	.label_852
.label_814:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_816
	nop	dword ptr [rax]
.label_866:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_862
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_862:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_866
	jmp	.label_815
.label_816:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 4
	je	.label_869
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_869:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_816
	jmp	.label_815
.label_870:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_822
	nop	word ptr cs:[rax + rax]
.label_833:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_824
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_824:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_833
	jmp	.label_815
.label_822:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_840
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_840:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_822
	jmp	.label_815
.label_826:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_847
	nop	word ptr cs:[rax + rax]
.label_860:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_855
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_855:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_860
	jmp	.label_815
.label_847:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	je	.label_861
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_861:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_847
	jmp	.label_815
.label_819:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_838
	nop	word ptr cs:[rax + rax]
.label_853:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_837
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_837:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_853
	jmp	.label_815
.label_838:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_871
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_871:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_838
	jmp	.label_815
.label_874:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_841
	nop	word ptr cs:[rax + rax]
.label_848:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_845
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_845:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_848
	jmp	.label_815
.label_841:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_857
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_857:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_841
	jmp	.label_815
.label_830:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_825
.label_872:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_817
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_817:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_872
	jmp	.label_815
.label_825:
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_849
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_849:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_825
	jmp	.label_815
.label_844:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_813
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_813:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_844
	jmp	.label_815
.label_836:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_820
.label_850:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_873
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_873:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_850
.label_815:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_820:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 4
	je	.label_843
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_843:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_820
	jmp	.label_815
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a9d0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_875:
	not	qword ptr [rdi + rax*8]
	inc	rax
	cmp	rax, 4
	jne	.label_875
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40a9f0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_876:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_876
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa20

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	je	.label_877
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	jge	.label_877
	lea	rcx, [rsi*4]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax]
.label_878:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_877
	lea	rdx, [rsi + rax + 1]
	inc	rax
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_878
.label_877:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40aa70

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
	jle	.label_880
	mov	rbp, -1
	movzx	r13d, byte ptr [r12]
.label_882:
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x1e
	jne	.label_879
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_883
	nop	word ptr cs:[rax + rax]
.label_879:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_883:
	mov	rcx, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_880
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_886
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_881
.label_886:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_882
.label_880:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_881:
	inc	rcx
	mov	qword ptr [rbx + 0x48], rcx
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	movzx	eax, byte ptr [r12 + 8]
	xor	r14d, r14d
	cmp	eax, 0x1e
	je	.label_884
	cmp	eax, 0x1c
	je	.label_885
	cmp	eax, 0x1a
	jne	.label_880
	mov	dword ptr [r15], 3
	jmp	.label_880
.label_884:
	mov	dword ptr [r15], 4
	jmp	.label_880
.label_885:
	mov	dword ptr [r15], 2
	jmp	.label_880
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ab60

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_887
	mov	rax, qword ptr [rbx + 0x48]
.label_888:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
.label_893:
	mov	bpl, byte ptr [rcx + rax]
.label_889:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_887:
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_891
	mov	rax, qword ptr [rbx + 0x48]
	cmp	rax, qword ptr [rbx + 0x30]
	je	.label_892
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_888
.label_892:
	mov	r14, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_890
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	cdqe	
	add	rax, r14
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_889
.label_891:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx]
	jmp	.label_893
.label_890:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_889
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ac10

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_894
	jmp	btowc
.label_894:
	mov	eax, edi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ac20

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
	jmp	.label_895
.label_898:
	lea	rcx, [rbx + rbx*4]
	lea	rcx, [rax + rcx*2 - 0x30]
	cmp	rcx, 0x8000
	cmovg	rcx, r13
	nop	word ptr cs:[rax + rax]
.label_895:
	mov	rbx, rcx
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	fetch_token
	movzx	eax, byte ptr [r12]
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_896
	cmp	edx, 2
	je	.label_897
	cmp	eax, 0x2c
	je	.label_896
	cmp	eax, 0x30
	mov	rcx, -2
	jb	.label_895
	cmp	edx, 1
	jne	.label_895
	cmp	rbx, -2
	je	.label_895
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_895
	cmp	rbx, -1
	jne	.label_898
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_895
.label_897:
	mov	rbx, -2
.label_896:
	mov	rax, rbx
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40acd0

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
	je	.label_906
	lea	r13, [rsp]
	xor	r14d, r14d
.label_900:
	mov	qword ptr [rax], r12
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	je	.label_903
	lea	r13, [r12 + 8]
	jmp	.label_901
	nop	dword ptr [rax]
.label_903:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_905:
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	cmp	rbp, rcx
	je	.label_899
	test	rbp, rbp
	jne	.label_904
.label_899:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	jne	.label_905
	jmp	.label_902
	nop	word ptr cs:[rax + rax]
.label_904:
	lea	r13, [r12 + 0x10]
.label_901:
	lea	rcx, [rbp + 0x28]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [r13], rax
	test	rax, rax
	mov	rbx, rbp
	jne	.label_900
	jmp	.label_906
.label_902:
	mov	r14, qword ptr [rsp]
.label_906:
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
	.align	16
	#Procedure 0x40adb0

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	eax, dword ptr [rsi + 0x30]
	movzx	ecx, al
	cmp	ecx, 0x11
	jne	.label_907
	cmp	qword ptr [rsi + 0x28], rdi
	jne	.label_907
	or	eax, 0x80000
	mov	dword ptr [rsi + 0x30], eax
.label_907:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40add0

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
	jne	.label_909
.label_911:
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	jne	.label_912
	nop	dword ptr [rax]
.label_908:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	cmp	r12, rax
	je	.label_910
	test	r12, r12
	jne	.label_912
.label_910:
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	jne	.label_908
	jmp	.label_909
.label_912:
	mov	rdi, r14
	mov	rsi, r12
	call	r15
	test	eax, eax
	mov	rbx, r12
	je	.label_911
.label_909:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ae40

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_913
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	je	.label_913
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	xor	eax, eax
	ret	
.label_913:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	jne	.label_914
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_914
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_914
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	je	.label_915
	mov	qword ptr [rdx], rsi
.label_915:
	mov	rax, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	rcx, 0x3f
	jg	.label_914
	mov	rax, -2
	rol	rax, cl
	and	qword ptr [rdi + 0xa0], rax
.label_914:
	xor	eax, eax
	ret	
	.section	.text
	.align	16
	#Procedure 0x40aed0

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
	je	.label_916
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_916
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_916
	mov	qword ptr [rax], rbx
.label_916:
	mov	rdx, qword ptr [rbx + 0x10]
	test	rdx, rdx
	je	.label_917
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	jne	.label_917
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_917
	mov	qword ptr [rax], rbx
.label_917:
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40af50

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	movzx	eax, byte ptr [rbx + 0x30]
	cmp	eax, 0x10
	jne	.label_918
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	mov	rax, qword ptr [rbx + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_919
.label_918:
	mov	qword ptr [rbx + 0x18], rbx
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	mov	rcx, rax
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	je	.label_919
	xor	eax, eax
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	jne	.label_919
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsi, qword ptr [r14]
	shl	rcx, 4
	shl	edx, 8
	and	edx, 0x3ff00
	mov	edi, 0xfffc00ff
	and	edi, dword ptr [rsi + rcx + 8]
	or	edi, edx
	mov	dword ptr [rsi + rcx + 8], edi
.label_919:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40afe0

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	je	.label_920
	cmp	eax, 0xb
	jne	.label_923
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	xor	eax, eax
	ret	
.label_920:
	mov	rax, qword ptr [rsi + 8]
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax + 0x20], rcx
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_922
.label_923:
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	je	.label_924
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_924:
	mov	rax, qword ptr [rsi + 0x10]
	test	rax, rax
	je	.label_921
.label_922:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_921:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b040

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	edx, [rax - 2]
	cmp	edx, 0xe
	ja	.label_925
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_929]]
.label_1852:
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
.label_928:
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_1853:
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
	js	.label_930
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	js	.label_927
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	pop	rax
	jmp	re_node_set_init_2
.label_1850:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_931
	mov	edi, OFFSET FLAT:.str.17_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1851:
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_931
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_928
.label_925:
	test	al, 8
	jne	.label_926
	mov	rax, qword ptr [rsi + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_931:
	xor	eax, eax
	pop	rcx
	ret	
.label_930:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_927:
	mov	edi, OFFSET FLAT:.str.19_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_926:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b190

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
	jmp	.label_934
	nop	dword ptr [rax]
.label_932:
	inc	rbx
.label_934:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_935
	xor	ebx, ebx
	test	r12b, 1
	mov	r12d, 0
	je	.label_936
.label_935:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_932
	mov	ecx, 1
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	calc_eclosure_iter
	test	eax, eax
	jne	.label_933
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_932
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	jmp	.label_932
.label_933:
	mov	ebx, eax
.label_936:
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
	.align	16
	#Procedure 0x40b220

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
	je	.label_937
	xor	eax, eax
	xorps	xmm0, xmm0
	xor	ecx, ecx
.label_938:
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	mov	qword ptr [rdx + rax + 0x10], 0
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_938
	xor	eax, eax
	test	rdx, rdx
	je	.label_937
	xor	r14d, r14d
.label_941:
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	cmp	qword ptr [rax + r15*8 + 8], 0
	jle	.label_939
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_940:
	mov	rax, qword ptr [r13 + 0x38]
	mov	rcx, qword ptr [r12 + rbx*8]
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_937
	inc	rbx
	mov	rax, qword ptr [r13 + 0x30]
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	jl	.label_940
.label_939:
	inc	r14
	xor	eax, eax
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_941
.label_937:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b2e0

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
	mov	r13, qword ptr [rsi]
	mov	rbp, qword ptr [r15 + 8]
	test	rbp, rbp
	je	.label_942
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_942
	mov	rax, qword ptr [r15 + 0x28]
	cmp	rax, 0x3f
	jg	.label_944
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_944
.label_942:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 8
	mov	rdi, r13
	call	create_tree
	mov	r12, rax
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 9
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	r14, rbx
	je	.label_945
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	mov	r14, rax
.label_945:
	mov	ecx, 0x10
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	test	rbx, rbx
	je	.label_943
	test	r12, r12
	je	.label_943
	test	r14, r14
	je	.label_943
	test	rax, rax
	je	.label_943
	mov	rcx, qword ptr [r15 + 0x28]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	and	ecx, dword ptr [r15 + 0x30]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_946
.label_944:
	mov	rax, qword ptr [r15 + 8]
.label_946:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_943:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	jmp	.label_946
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b3f0

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
	jae	.label_951
.label_952:
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
	jne	.label_949
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	jg	.label_948
.label_949:
	cmp	eax, 6
	sete	cl
.label_948:
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
.label_947:
	mov	rax, r14
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_951:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	ja	.label_947
	mov	rdi, qword ptr [rbx]
	mov	rsi, rbp
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_947
	mov	qword ptr [rsp], r13
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rbp, [rbp + rbp*2]
	mov	rsi, rbp
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 8]
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	test	rdi, rdi
	je	.label_950
	test	rbp, rbp
	je	.label_950
	test	r13, r13
	je	.label_950
	test	rax, rax
	je	.label_950
	mov	qword ptr [rbx + 0x18], rdi
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	mov	qword ptr [rbx + 0x30], rax
	mov	rax, qword ptr [rsp]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_952
.label_950:
	mov	r15, rax
	call	free
	mov	rdi, rbp
	call	free
	mov	rdi, r13
	call	free
	mov	rdi, r15
	call	free
	jmp	.label_947
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b5c0

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
	je	.label_956
	cmp	r14, r15
	jne	.label_953
	mov	qword ptr [rbx + 8], 1
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_954
.label_953:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	jge	.label_955
	mov	qword ptr [rax], r14
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_954
.label_955:
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r14
.label_954:
	xor	eax, eax
.label_956:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b640

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
	je	.label_958
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_957:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_958:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	eax, 0xc
	jmp	.label_957
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b690

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
	mov	r15, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	test	eax, eax
	jne	.label_960
	mov	rax, qword ptr [rbp + 0x30]
	mov	qword ptr [rax + r14*8 + 8], -1
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	and	r8d, 0x3ff
	je	.label_961
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_961
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	jne	.label_961
	mov	rdi, rbp
	mov	rsi, r15
	mov	rdx, r15
	mov	rcx, r15
	call	duplicate_node_closure
	test	eax, eax
	jne	.label_960
.label_961:
	mov	rax, qword ptr [rbp]
	test	byte ptr [rax + rbx + 8], 8
	jne	.label_969
	mov	rbx, r15
	xor	r15d, r15d
	jmp	.label_970
.label_969:
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_968
	xor	r15d, r15d
	xor	r13d, r13d
.label_966:
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rdx, qword ptr [rcx + r13*8]
	lea	r12, [rdx + rdx*2]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	cmp	rcx, -1
	je	.label_965
	test	rcx, rcx
	jne	.label_959
	xor	ecx, ecx
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	test	eax, eax
	je	.label_964
	jmp	.label_960
	nop	dword ptr [rax]
.label_959:
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_964:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_960
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_962
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_965:
	mov	r15b, 1
.label_962:
	inc	r13
	mov	rax, qword ptr [rbp + 0x28]
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_966
	jmp	.label_970
.label_968:
	xor	r15d, r15d
.label_970:
	lea	rdi, [rsp + 0x30]
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_960
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_963
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	jne	.label_963
	mov	qword ptr [rax + r14*8 + 8], 0
	jmp	.label_967
.label_963:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rax + r14*8], xmm0
.label_967:
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	qword ptr [rcx + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x30]
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_960:
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
	.align	16
	#Procedure 0x40b870

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	test	rax, rax
	mov	eax, 0xc
	cmovne	eax, ecx
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b8a0

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
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	mov	rbp, rdi
.label_977:
	mov	dword ptr [rsp + 0x10], ebx
	nop	word ptr cs:[rax + rax]
.label_972:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	movzx	ecx, byte ptr [rcx + rax + 8]
	cmp	ecx, 4
	jne	.label_978
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	call	duplicate_node
	mov	rbp, rax
	cmp	rbp, -1
	je	.label_979
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
	mov	rax, qword ptr [r15 + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	call	re_node_set_insert
	test	al, al
	mov	r14, rbx
	mov	r13, rbp
	mov	rbp, r15
	jne	.label_972
	jmp	.label_973
	nop	word ptr cs:[rax + rax]
.label_978:
	mov	rcx, qword ptr [rbp + 0x28]
	lea	r15, [r14 + r14*2]
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	je	.label_971
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	cmp	rdx, 1
	je	.label_981
	mov	rdi, rbp
	mov	rbx, rsi
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_980
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	jne	.label_983
	jmp	.label_973
.label_980:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	edx, r13d
	call	duplicate_node
	mov	r14, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	je	.label_973
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	je	.label_973
	mov	rdi, rbp
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 8]
	mov	r8d, r13d
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_973
.label_983:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	r14, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r14
	mov	edx, r13d
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_975
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_972
	jmp	.label_973
.label_981:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_982
	cmp	r13, r14
	jne	.label_974
.label_982:
	mov	rcx, qword ptr [rbp]
	mov	eax, dword ptr [rcx + rax + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	ebx, dword ptr [rsp + 0x10]
	or	ebx, eax
	mov	rdi, rbp
	mov	r14, rsi
	mov	edx, ebx
	call	duplicate_node
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	je	.label_973
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	jne	.label_977
	jmp	.label_973
.label_979:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_973
.label_975:
	mov	dword ptr [rsp + 0x14], 0xc
	jmp	.label_973
.label_971:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	qword ptr [rax + r13*8], rcx
.label_976:
	mov	dword ptr [rsp + 0x14], 0
.label_973:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_974:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_973
	jmp	.label_976
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bb30

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	xor	eax, eax
	test	r15, r15
	je	.label_984
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_984
	mov	rbx, qword ptr [r14]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	cmp	rbx, rax
	jge	.label_986
	add	rbx, rdx
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_984
	add	rbx, rbx
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_986:
	mov	rax, qword ptr [r15 + 8]
	test	rcx, rcx
	je	.label_996
	lea	rbx, [rcx + rax*2]
	dec	rax
	dec	rcx
	mov	rdx, rax
	or	rdx, rcx
	js	.label_991
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_992
.label_985:
	dec	rax
.label_987:
	dec	rcx
	jmp	.label_988
	nop	word ptr [rax + rax]
.label_992:
	mov	rdi, qword ptr [rsi + rax*8]
	cmp	qword ptr [rdx + rcx*8], rdi
	je	.label_985
	jge	.label_987
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_988:
	mov	rdi, rax
	or	rdi, rcx
	jns	.label_992
.label_991:
	test	rax, rax
	js	.label_993
	lea	rcx, [rax + 1]
	sub	rbx, rcx
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_993:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	r10, [r11 + rax*2 - 1]
	mov	r15, r10
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	je	.label_984
	lea	rax, [r15 + r11]
	mov	qword ptr [r14 + 8], rax
	lea	r8, [r11 - 1]
.label_989:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdx, [r15*8]
	lea	rax, [r15 + r8]
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_995:
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_990
	mov	qword ptr [r12 + rsi*8], rax
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	add	rdi, rsi
	jne	.label_995
	jmp	.label_984
	nop	word ptr cs:[rax + rax]
.label_990:
	mov	qword ptr [r12 + rsi*8], rdi
	add	r15, rsi
	dec	r8
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_989
	mov	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rdi + rbx*8]
	jmp	.label_994
.label_996:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_994:
	call	memcpy
	xor	eax, eax
.label_984:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bcf0

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
	je	.label_1003
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	je	.label_999
	cmp	rsi, rax
	jne	.label_1001
	lea	rax, [rsi + rsi]
	mov	qword ptr [rbx], rax
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1000
	mov	qword ptr [rbx + 0x10], rax
.label_1001:
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	qword ptr [rcx], r14
	jle	.label_1004
	test	rax, rax
	jle	.label_997
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1002:
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	mov	qword ptr [rcx + rax*8], rdx
	cmp	rax, 1
	lea	rax, [rax - 1]
	jg	.label_1002
	jmp	.label_997
.label_1003:
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_init_1
	test	eax, eax
	sete	al
	jmp	.label_998
.label_999:
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax], r14
	jmp	.label_1006
.label_1004:
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	cmp	rcx, r14
	jle	.label_997
	mov	rdx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1005:
	mov	qword ptr [rsi + rax*8], rcx
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsi, rdx
	jg	.label_1005
.label_997:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1006:
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_998:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1000:
	xor	eax, eax
	jmp	.label_998
	nop	
	.section	.text
	.align	16
	#Procedure 0x40bdd0

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	shl	r15, 4
	mov	rsi, qword ptr [rax + r15]
	mov	rdx, qword ptr [rax + r15 + 8]
	call	re_dfa_add_node
	cmp	rax, -1
	je	.label_1007
	mov	rcx, qword ptr [rbx]
	mov	rdx, rax
	shl	rdx, 4
	shl	ebp, 8
	and	ebp, 0x3ff00
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	and	esi, dword ptr [rcx + r15 + 8]
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	mov	rcx, qword ptr [rbx + 0x20]
	mov	qword ptr [rcx + rax*8], r14
.label_1007:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40be50

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1008
	mov	r9, qword ptr [rdi]
	mov	rcx, r10
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	mov	ecx, r11d
	and	ecx, 0x40000
	je	.label_1008
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
	nop	word ptr [rax + rax]
.label_1011:
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1009
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	je	.label_1010
.label_1009:
	dec	r10
	test	r10, r10
	jle	.label_1008
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	mov	ecx, r11d
	and	ecx, 0x40000
	add	r8, -0x10
	test	ecx, ecx
	jne	.label_1011
	jmp	.label_1008
.label_1010:
	mov	rax, r10
.label_1008:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bed0

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
	jne	.label_1012
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	qword ptr [rbx], rcx
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1013
	mov	qword ptr [rbx + 0x10], rax
.label_1012:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1014:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1013:
	xor	eax, eax
	jmp	.label_1014
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bf30

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
	jle	.label_1015
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	qword ptr [r14 + 0x10], rax
	test	rax, rax
	je	.label_1017
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1016
.label_1015:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1016:
	xor	eax, eax
.label_1018:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_1017:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1018
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bfa0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	mov	r9, qword ptr [rdi + 8]
	xor	eax, eax
	test	r9, r9
	jle	.label_1019
	xor	eax, eax
	dec	r9
	je	.label_1021
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	dword ptr [rax + rax]
.label_1020:
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	jb	.label_1020
.label_1021:
	mov	rcx, qword ptr [rdi + 0x10]
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1022
	inc	rax
	ret	
.label_1022:
	xor	eax, eax
.label_1019:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40bff0

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
	je	.label_1025
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	mov	esi, r13d
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1024
	lea	r14, [rax + rcx*8]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
.label_1027:
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1023
	movzx	eax, byte ptr [rbp + 0x68]
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1023
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	call	re_node_set_compare
	test	al, al
	jne	.label_1026
.label_1023:
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1027
.label_1024:
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1026
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_1028
.label_1025:
	mov	dword ptr [rdi], 0
.label_1028:
	xor	ebp, ebp
.label_1026:
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
	.align	16
	#Procedure 0x40c0d0

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	mov	eax, esi
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1029
	mov	rcx, qword ptr [rdi + 8]
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_1030:
	add	rax, qword ptr [rdx + rsi*8]
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1030
.label_1029:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c100

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	test	rdi, rdi
	je	.label_1031
	test	rsi, rsi
	je	.label_1031
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	jne	.label_1033
	nop	word ptr cs:[rax + rax]
.label_1032:
	mov	al, 1
	test	rcx, rcx
	jle	.label_1031
	mov	rax, qword ptr [rdi + 0x10]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1032
.label_1033:
	xor	eax, eax
.label_1031:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c150

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	edi, 0x70
	mov	esi, 1
	call	rpl_calloc
	mov	r15, rax
	xor	eax, eax
	test	r15, r15
	je	.label_1042
	mov	r12, r15
	add	r12, 8
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1050
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	and	cl, 0xf
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	mov	qword ptr [rsp + 0x20], r12
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1041
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	mov	eax, r14d
	and	eax, 2
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1038:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rcx + r14*8]
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	movzx	ecx, sil
	mov	r13d, esi
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	cmp	ecx, 1
	jne	.label_1048
	test	eax, eax
	je	.label_1034
.label_1048:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1045
	cmp	ecx, 2
	jne	.label_1036
	or	bl, 0x10
	jmp	.label_1049
.label_1045:
	or	bl, 0x40
.label_1049:
	mov	byte ptr [r15 + 0x68], bl
.label_1036:
	test	eax, eax
	je	.label_1044
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	mov	rbx, rdi
	jne	.label_1046
	mov	edi, 0x18
	call	malloc
	mov	qword ptr [r15 + 0x50], rax
	test	rax, rax
	je	.label_1043
	mov	rdi, rax
	mov	rsi, rbp
	call	re_node_set_init_copy
	test	eax, eax
	mov	eax, 0
	jne	.label_1042
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1046:
	cmp	dword ptr [rsp + 0x1c], 0
	jne	.label_1040
	mov	eax, r13d
	and	eax, 1
	jne	.label_1037
.label_1040:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1039
	mov	eax, r13d
	and	eax, 2
	jne	.label_1037
.label_1039:
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1035
	mov	eax, r13d
	and	eax, 0x10
	jne	.label_1037
.label_1035:
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1034
	and	r13d, 0x40
	je	.label_1034
	nop	word ptr cs:[rax + rax]
.label_1037:
	mov	rsi, r14
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	call	re_node_set_remove_at
	inc	r12
	jmp	.label_1034
.label_1044:
	mov	rbx, rdi
	nop	dword ptr [rax + rax]
.label_1034:
	inc	r14
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1038
.label_1041:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	call	register_state
	test	eax, eax
	mov	rax, r15
	je	.label_1042
.label_1043:
	mov	rdi, r15
	call	free_state
	jmp	.label_1047
.label_1050:
	mov	rdi, r15
	call	free
.label_1047:
	xor	eax, eax
.label_1042:
	add	rsp, 0x28
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
	#Procedure 0x40c360

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	test	rsi, rsi
	js	.label_1051
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1051
	dec	rax
	mov	qword ptr [rdi + 8], rax
	cmp	rax, rsi
	jle	.label_1051
	mov	rax, qword ptr [rdi + 0x10]
	nop	
.label_1052:
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	mov	qword ptr [rax + rsi*8], rcx
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	jl	.label_1052
.label_1051:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c3a0

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
	jne	.label_1054
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1058
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1055:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r13]
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	jne	.label_1053
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	je	.label_1054
.label_1053:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1055
.label_1058:
	mov	r12, qword ptr [r13 + 0x40]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1056
.label_1057:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1054:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1056:
	lea	rax, [r15 + r15]
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1054
	lea	rcx, [r12 + rbp*8 + 8]
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	qword ptr [rcx], rdx
	jmp	.label_1057
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c490

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
	je	.label_1065
	lea	r13, [r14 + 1]
	cmp	ecx, 1
	je	.label_1061
	test	ecx, ecx
	jne	.label_1070
	lea	r12, [r13*8]
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 8], rax
	xor	ebp, ebp
	test	rax, rax
	je	.label_1060
	mov	rdi, r12
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	je	.label_1066
	mov	qword ptr [r15], r13
	mov	r12d, 1
	jmp	.label_1063
.label_1065:
	mov	r12d, 2
	cmp	qword ptr [r15], r14
	jae	.label_1063
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1061:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	ja	.label_1064
.label_1063:
	xor	eax, eax
	test	r14, r14
	jle	.label_1068
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	add	rbx, 8
	mov	rdx, r14
	nop	word ptr cs:[rax + rax]
.label_1062:
	mov	rsi, qword ptr [rbx - 8]
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1062
	mov	rax, r14
.label_1068:
	cmp	rax, qword ptr [r15]
	jae	.label_1069
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1059:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	cmp	rax, qword ptr [r15]
	jb	.label_1059
.label_1069:
	mov	ebp, r12d
.label_1060:
	mov	eax, ebp
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1064:
	mov	rdi, qword ptr [r15 + 8]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	je	.label_1060
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1067
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15], r13
	jmp	.label_1063
.label_1066:
	mov	rdi, qword ptr [r15 + 8]
	call	free
	jmp	.label_1060
.label_1067:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	jmp	.label_1060
.label_1070:
	mov	edi, OFFSET FLAT:.str.23
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c630

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
	jne	.label_1071
	lea	rax, [r15 + 0xb8]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	shr	al, 4
	and	al, 1
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1073
	mov	r12, qword ptr [r13 + 8]
.label_1073:
	mov	qword ptr [r13 + 8], r12
	xor	eax, eax
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1072
	xor	ecx, ecx
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1072
	mov	rcx, r14
.label_1072:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1071:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40c6f0

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rbx, rdi
	mov	dword ptr [rbx + 0xa0], esi
	mov	qword ptr [rbx + 0xa8], -1
	test	r14, r14
	jle	.label_1074
	mov	r15d, 0xc
	movabs	rax, 0x666666666666666
	cmp	r14, rax
	ja	.label_1075
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1075
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	je	.label_1075
.label_1074:
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	xor	r15d, r15d
.label_1075:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c790

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
	jle	.label_1107
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1113
	mov	qword ptr [rbx + 0x20], 0
.label_1113:
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
	jne	.label_1100
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1100:
	test	r13, r13
	je	.label_1082
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1085
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1095
	lea	rsi, [r13 - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1088
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	lea	rsi, [rdi + r13*4]
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1088:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1097
.label_1087:
	sub	qword ptr [rbx + 0x30], r13
	sub	qword ptr [rbx + 0x38], r13
.label_1083:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1082
	add	qword ptr [rbx + 8], r13
.label_1082:
	mov	qword ptr [rbx + 0x28], r14
	sub	qword ptr [rbx + 0x58], r13
	sub	qword ptr [rbx + 0x68], r13
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1105
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1109
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1110
	jmp	.label_1104
.label_1105:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1112
	mov	rax, qword ptr [rbx + 0x58]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1104
.label_1109:
	mov	rdi, rbx
	call	build_wcs_buffer
.label_1104:
	mov	qword ptr [rbx + 0x48], 0
	xor	eax, eax
.label_1110:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1107:
	mov	r13, r14
	sub	r13, rax
	jmp	.label_1100
.label_1085:
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	jne	.label_1120
.label_1115:
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1077
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1086
	mov	rdx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	cmp	rcx, rdx
	cmovb	rcx, rdx
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	dword ptr [rax + rax]
.label_1102:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1093
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	cmp	edx, 0x80
	je	.label_1102
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1103
.label_1080:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	sub	rcx, r12
	jb	.label_1093
	cmp	rax, -3
	ja	.label_1093
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1093:
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	jne	.label_1116
.label_1086:
	lea	rdx, [rsp + 0x24]
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_skip_chars
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	je	.label_1119
.label_1116:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1121
	mov	ecx, dword ptr [rsp + 0x24]
.label_1094:
	xor	eax, eax
	cmp	ecx, 0xa
	jne	.label_1081
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1081
	xor	eax, eax
	jmp	.label_1081
.label_1095:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	xor	edx, edx
	nop	word ptr [rax + rax]
.label_1099:
	lea	rdi, [rdx + rsi]
	mov	rcx, rdi
	shr	rcx, 0x3f
	add	rcx, rdi
	sar	rcx, 1
	cmp	qword ptr [rax + rcx*8], r13
	mov	rdi, rcx
	jg	.label_1089
	jge	.label_1096
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1089:
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1099
.label_1096:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rbp, [rax + rcx]
	lea	rsi, [rax + rcx - 1]
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1106
	cmp	rbp, r13
	jne	.label_1106
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1106
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
	jle	.label_1083
	mov	rax, qword ptr [rbx + 0x18]
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_1076:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1076
	jmp	.label_1083
.label_1097:
	mov	rdi, qword ptr [rbx + 8]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1087
.label_1106:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	word ptr cs:[rax + rax]
.label_1101:
	mov	rax, rbp
	test	rax, rax
	jle	.label_1090
	lea	rbp, [rax - 1]
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1101
.label_1090:
	cmp	rax, qword ptr [rbx + 0x30]
	jge	.label_1098
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1108:
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1098
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	jl	.label_1108
.label_1098:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1078
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1084
.label_1112:
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1114
	mov	rdi, rbx
	call	build_upper_buffer
	jmp	.label_1104
.label_1077:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	je	.label_1117
	mov	al, byte ptr [rdx + rcx]
.label_1117:
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	mov	rsi, r15
	call	bitset_contain
	mov	ecx, 1
	test	al, al
	jne	.label_1079
	xor	ecx, ecx
	cmp	r15d, 0xa
	jne	.label_1079
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1079
	xor	ecx, ecx
.label_1079:
	mov	dword ptr [rbx + 0x70], ecx
	jmp	.label_1083
.label_1078:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	mov	qword ptr [rbx + 0x30], rax
	je	.label_1084
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1091
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1091:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	call	memset
	jmp	.label_1084
.label_1114:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1104
	mov	rdi, rbx
	call	re_string_translate_buffer
	jmp	.label_1104
.label_1119:
	mov	rsi, qword ptr [rsp]
	dec	rsi
	mov	rdi, rbx
	mov	edx, r15d
	call	re_string_context_at
.label_1081:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	jne	.label_1111
.label_1084:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	jmp	.label_1083
.label_1120:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	add	rax, qword ptr [rbx + 0x60]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	jmp	.label_1115
.label_1111:
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1118
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	esi, 0xff
	call	memset
.label_1118:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1091
	jmp	.label_1084
.label_1121:
	call	iswalnum
	test	eax, eax
	mov	eax, 1
	jne	.label_1081
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	jne	.label_1094
	jmp	.label_1081
.label_1103:
	lea	rsi, [rsp + 0xe]
	cmp	rdx, 6
	mov	ecx, 6
	cmovl	ecx, edx
	test	ecx, ecx
	jle	.label_1080
	lea	rcx, [rbp - 1]
	sub	rcx, rax
	cmp	rcx, -8
	mov	r10, -7
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	sar	r10, 0x20
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	xor	ecx, ecx
.label_1092:
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	al, byte ptr [rax + rdi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	inc	rax
	cmp	rax, 1
	jg	.label_1092
	jmp	.label_1080
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdc0

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
	mov	dword ptr [rsp + 0x1c], esi
	mov	rbp, rdi
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	setne	al
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1130
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [rbp + 0xa0]
	mov	rdi, rbp
	call	re_string_context_at
	test	al, 1
	jne	.label_1131
	test	eax, eax
	je	.label_1130
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	je	.label_1133
	test	sil, sil
	jne	.label_1133
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1130
.label_1131:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1130:
	test	rbx, rbx
	je	.label_1139
	mov	rax, qword ptr [rbp + 0xb8]
	test	rax, rax
	je	.label_1140
	mov	qword ptr [rax + r12*8], rbx
	cmp	qword ptr [r14 + 0x98], 0
	jne	.label_1144
.label_1140:
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	xor	ecx, ecx
	test	al, 0x10
	jne	.label_1151
.label_1129:
	mov	qword ptr [rsp], rdx
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1146:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1123
	test	rcx, rcx
	sete	r12b
	mov	eax, dword ptr [rsp + 0x1c]
	or	r12b, al
	mov	r15, rbx
	nop	word ptr cs:[rax + rax]
.label_1132:
	lea	r14, [rsi + 1]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1122
.label_1128:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1147
.label_1136:
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	mov	rbx, rax
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1149
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	mov	rbx, rax
.label_1149:
	test	rbx, rbx
	jne	.label_1124
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1127
	cmp	qword ptr [rbp + 0xb8], 0
	setne	al
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	jne	.label_1123
	mov	rdi, r13
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1123
.label_1124:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1150
.label_1135:
	mov	al, byte ptr [rbx + 0x68]
	test	al, 0x10
	je	.label_1142
	test	al, al
	jns	.label_1145
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsi, rbx
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1145
.label_1142:
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1132
	jmp	.label_1123
.label_1122:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1126
	jmp	.label_1128
.label_1147:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1136
.label_1126:
	add	esi, 2
	mov	rdi, rbp
	call	extend_buffers
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1134
	jmp	.label_1136
.label_1150:
	cmp	r15, rbx
	je	.label_1137
	mov	dword ptr [rsp + 0x20], 0
.label_1137:
	mov	rax, qword ptr [rsp + 0x10]
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1135
	nop	dword ptr [rax + rax]
.label_1145:
	mov	rdx, qword ptr [rbp + 0x48]
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	eax, 0
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1146
	jmp	.label_1127
.label_1123:
	mov	rcx, qword ptr [rsp + 8]
	test	rcx, rcx
	je	.label_1125
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rcx], rax
.label_1125:
	mov	rax, qword ptr [rsp]
	jmp	.label_1127
.label_1134:
	mov	rax, -2
	cmp	ecx, 0xc
	je	.label_1127
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x46c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1139:
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	je	.label_1127
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_1133:
	test	edx, edx
	jne	.label_1152
	test	ecx, ecx
	je	.label_1130
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	mov	rsi, r15
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbx, rax
	jmp	.label_1130
.label_1151:
	test	al, al
	js	.label_1138
	mov	ecx, 1
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	jne	.label_1129
	mov	rax, r12
	jmp	.label_1127
.label_1144:
	lea	r15, [rbx + 8]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1143
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1141
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1148
.label_1141:
	mov	dword ptr [rsp + 0x20], 0
	jmp	.label_1140
.label_1152:
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1130
.label_1138:
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rdx, r12
	call	check_halt_state_context
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	je	.label_1129
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	jne	.label_1129
	mov	rax, r12
.label_1127:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1143:
	cdqe	
	jmp	.label_1127
.label_1148:
	cdqe	
	jmp	.label_1127
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d160

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
	jle	.label_1153
	mov	r12, qword ptr [rbx + 0x98]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1154:
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rdi, r12
	mov	rsi, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1153
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	jl	.label_1154
.label_1153:
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
	#Procedure 0x40d1e0

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
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	ja	.label_1160
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rbp, [rbx*8 + 8]
	mov	rdi, rbp
	call	malloc
	mov	r15, rax
	mov	r13d, 0xc
	test	r15, r15
	je	.label_1166
	cmp	qword ptr [r14 + 0x98], 0
	je	.label_1158
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	je	.label_1155
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	mov	r14, r15
	mov	r15, rax
	jmp	.label_1162
.label_1158:
	lea	r14, [rsp + 0x20]
	xor	edx, edx
	mov	rdi, r14
	mov	rbp, r15
	mov	rsi, rbp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1165
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	jne	.label_1168
	mov	r13d, 1
	jmp	.label_1157
	nop	word ptr [rax + rax]
.label_1161:
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1162:
	lea	rdx, [rbx*8 + 8]
	xor	esi, esi
	mov	rdi, r15
	call	memset
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rcx, r12
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	jne	.label_1156
	cmp	qword ptr [r14], 0
	jne	.label_1163
	cmp	qword ptr [r15], 0
	jne	.label_1163
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1167
	mov	rax, qword ptr [rdi + 0xb8]
	dec	rbx
	nop	word ptr [rax + rax]
.label_1164:
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	je	.label_1159
	test	byte ptr [rsi + 0x68], 0x10
	jne	.label_1161
.label_1159:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	jge	.label_1164
	mov	rbp, r14
	jmp	.label_1157
.label_1166:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1157
.label_1156:
	mov	rbp, r14
	jmp	.label_1157
.label_1163:
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	r13d, eax
	mov	rdi, r15
	call	free
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1157
.label_1168:
	mov	rdi, qword ptr [r12 + 0xb8]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1165:
	xor	r15d, r15d
.label_1157:
	mov	rdi, rbp
	call	free
	mov	rdi, r15
	call	free
.label_1160:
	mov	eax, r13d
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1155:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1157
.label_1167:
	mov	rbp, r14
	jmp	.label_1157
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d430

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
	jle	.label_1170
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1173:
	mov	rax, qword ptr [r14 + 0xf8]
	mov	r15, qword ptr [rax + r12*8]
	cmp	qword ptr [r15 + 0x20], 0
	mov	ebx, 0
	jle	.label_1169
	nop	word ptr [rax + rax]
.label_1171:
	mov	rax, qword ptr [r15 + 0x28]
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	mov	rdi, r13
	call	free
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1171
.label_1169:
	mov	rdi, qword ptr [r15 + 0x28]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	je	.label_1172
	mov	rdi, qword ptr [rax + 0x10]
	call	free
	mov	rdi, qword ptr [r15 + 0x10]
	call	free
.label_1172:
	mov	rdi, r15
	call	free
	inc	r12
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1173
.label_1170:
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
	.align	16
	#Procedure 0x40d4f0

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
	sub	rsp, 0x68
	mov	r12, rcx
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1178]]
	mov	qword ptr [rbp - 0x60], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1179]]
	movaps	xmmword ptr [rbp - 0x70], xmm0
	xor	r14d, r14d
	test	r8b, r8b
	je	.label_1180
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	test	rax, rax
	je	.label_1176
	lea	r14, [rbp - 0x70]
.label_1180:
	mov	qword ptr [rbp - 0x88], r15
	mov	r15, qword ptr [r15 + 0x90]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rbp - 0x50], xmm0
	mov	qword ptr [rbp - 0x40], 0
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	ja	.label_1186
	mov	rdi, rsp
	lea	rax, [r13 + 0xf]
	and	rax, 0xfffffffffffffff0
	sub	rdi, rax
	mov	rsp, rdi
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1174
.label_1186:
	mov	rdi, r13
	call	malloc
	mov	rdi, rax
	test	rdi, rdi
	je	.label_1181
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1174:
	mov	qword ptr [rbp - 0x80], rdi
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	qword ptr [rbp - 0x30], r8
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1175
	lea	r13, [r12 + 8]
	jmp	.label_1187
.label_1182:
	cmp	r15, -2
	je	.label_1189
	test	r14, r14
	je	.label_1190
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
.label_1187:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1183
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1183
	test	r14, r14
	je	.label_1185
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1188
	nop	word ptr [rax + rax]
.label_1193:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1191
	cmp	qword ptr [rcx], -1
	je	.label_1188
.label_1191:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	jb	.label_1193
.label_1188:
	cmp	rax, rbx
	je	.label_1175
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
.label_1183:
	sub	rsp, 0x10
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rcx, [rbp - 0x30]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	call	proceed_next_node
	add	rsp, 0x10
	mov	r15, rax
	test	r15, r15
	js	.label_1182
.label_1184:
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1187
.label_1175:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1192
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1192:
	mov	rdi, r14
	call	free_fail_stack_return
	xor	r14d, r14d
	jmp	.label_1176
.label_1185:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	xor	r14d, r14d
	jmp	.label_1177
.label_1189:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1181
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1181:
	mov	rdi, r14
	call	free_fail_stack_return
	mov	r14d, 0xc
.label_1176:
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1190:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	mov	r14d, 1
.label_1177:
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1176
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	jmp	.label_1176
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d780

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
	.align	16
	#Procedure 0x40d7b0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rsi, rsi
	js	.label_1201
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1202
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1195
	mov	rax, qword ptr [rbx + 0x10]
	inc	rsi
	nop	dword ptr [rax]
.label_1199:
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	cmp	ebp, -1
	jne	.label_1198
	dec	rsi
	test	rsi, rsi
	jg	.label_1199
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1194
.label_1195:
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	test	al, al
	jne	.label_1194
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1194
	jmp	.label_1196
.label_1198:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1197
.label_1200:
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1194
.label_1196:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1194
	xor	edx, edx
	jmp	.label_1194
.label_1201:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1194
.label_1202:
	and	edx, 2
	xor	edx, 0xa
.label_1194:
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1197:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1194
	test	eax, eax
	jne	.label_1194
	jmp	.label_1200
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d870

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
	mov	r15, rsi
	mov	r12, rdi
	mov	rbx, qword ptr [r12 + 0x38]
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	cmp	rbx, r15
	jge	.label_1205
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1204
.label_1208:
	xor	ecx, ecx
	cmp	rbp, rbx
	je	.label_1203
	test	rax, rax
	je	.label_1203
	mov	rax, qword ptr [r12]
	movzx	ecx, byte ptr [rax + rbx]
.label_1203:
	mov	qword ptr [r13], r14
	mov	eax, 1
	jmp	.label_1206
	nop	word ptr cs:[rax + rax]
.label_1204:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	mov	rsi, qword ptr [r12]
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	test	rax, rax
	je	.label_1208
	mov	rcx, rax
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1208
	mov	ecx, dword ptr [rsp + 0x14]
.label_1206:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1204
	jmp	.label_1207
.label_1205:
	mov	qword ptr [rsp + 8], rdx
.label_1207:
	mov	rax, qword ptr [rsp + 8]
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
	.align	16
	#Procedure 0x40d940

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
	.align	16
	#Procedure 0x40d960

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
	jle	.label_1209
	mov	r12, qword ptr [r15 + 0x98]
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1211:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	mov	rcx, rsi
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	jne	.label_1210
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	jg	.label_1210
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1210
	mov	rdi, r15
	mov	rdx, r14
	call	match_ctx_add_subtop
	test	eax, eax
	jne	.label_1209
	nop	word ptr cs:[rax + rax]
.label_1210:
	inc	rbx
	xor	eax, eax
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1211
.label_1209:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da00

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
	mov	r14, rsi
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1212
	mov	r8, qword ptr [r13 + 0x98]
	mov	qword ptr [rsp + 0x10], r8
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1228:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rcx, rsi
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	movzx	eax, bl
	cmp	eax, 4
	jne	.label_1215
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1220
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1214
	test	ecx, ecx
	je	.label_1215
.label_1214:
	test	bh, 8
	je	.label_1225
	test	ecx, ecx
	jne	.label_1215
.label_1225:
	test	bh, 0x20
	je	.label_1218
	mov	ecx, eax
	and	ecx, 2
	je	.label_1215
.label_1218:
	test	bpl, bpl
	jns	.label_1220
	and	eax, 8
	je	.label_1215
	nop	word ptr cs:[rax + rax]
.label_1220:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rdi, r13
	mov	rbx, r8
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1213
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1215
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr [rax + rax]
.label_1224:
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	jne	.label_1217
	mov	rcx, qword ptr [rsp + 0x40]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1217
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	cmp	rsi, rcx
	jne	.label_1222
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	jmp	.label_1223
.label_1222:
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	add	rcx, qword ptr [r8 + 0x18]
.label_1223:
	mov	rcx, qword ptr [rcx]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, qword ptr [rax + rbp]
	mov	rbx, qword ptr [rsp + 0x40]
	add	r14, rbx
	sub	r14, qword ptr [rax + rbp - 8]
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	mov	rcx, qword ptr [rcx + rbx*8]
	test	rcx, rcx
	mov	esi, 0
	je	.label_1221
	mov	rsi, qword ptr [rcx + 0x10]
.label_1221:
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1226
	mov	ebx, eax
	mov	qword ptr [rsp + 0x30], rsi
	mov	rsi, qword ptr [r8 + 0x50]
	mov	qword ptr [rsp + 0x28], rdx
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1216
	lea	rdi, [rsp + 0x64]
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdx, [rsp + 0x48]
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	jne	.label_1219
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1213
.label_1219:
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1227
.label_1226:
	mov	qword ptr [rsp + 0x30], rsi
	lea	rdi, [rsp + 0x64]
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	mov	qword ptr [rsp + 0x28], rdx
	mov	ecx, eax
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	mov	r14, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 8]
	jne	.label_1227
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1213
	nop	dword ptr [rax]
.label_1227:
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1217
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1217
	mov	rdi, r13
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1213
	mov	rdi, r13
	mov	r14, rcx
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	call	transit_state_bkref
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1213
	nop	dword ptr [rax + rax]
.label_1217:
	inc	r12
	add	rbp, 0x28
	cmp	r12, qword ptr [r13 + 0xc8]
	jl	.label_1224
	nop	word ptr cs:[rax + rax]
.label_1215:
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	jl	.label_1228
.label_1212:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1213
.label_1216:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
.label_1213:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
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
	#Procedure 0x40ddb0

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
	ja	.label_1233
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
	jne	.label_1233
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1230
	mov	rax, qword ptr [rbx + 0x40]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	test	rcx, rcx
	mov	eax, 0xc
	je	.label_1233
	mov	qword ptr [rbx + 0xb8], rcx
.label_1230:
	cmp	byte ptr [rbx + 0x88], 0
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1231
	mov	rdi, rbx
	cmp	eax, 2
	jl	.label_1234
	call	build_wcs_upper_buffer
	test	eax, eax
	je	.label_1229
	jmp	.label_1233
.label_1231:
	cmp	eax, 2
	jl	.label_1232
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_1229
.label_1234:
	call	build_upper_buffer
	jmp	.label_1229
.label_1232:
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1229
	mov	rdi, rbx
	call	re_string_translate_buffer
.label_1229:
	xor	eax, eax
.label_1233:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40de80

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
	jne	.label_1235
.label_1240:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1239:
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1238
	mov	r13, qword ptr [r14 + 0x60]
	test	r13, r13
	jne	.label_1237
	mov	rdi, qword ptr [rbx + 0x98]
	mov	rsi, r14
	call	build_trtable
	test	al, al
	jne	.label_1239
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	jmp	.label_1236
.label_1238:
	mov	rax, qword ptr [rax + r12*8]
.label_1236:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_1235:
	mov	rdi, rbx
	mov	rsi, r14
	call	transit_state_mb
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	je	.label_1240
	jmp	.label_1236
.label_1237:
	mov	rsi, qword ptr [rbx + 0x48]
	dec	rsi
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rdi, rbx
	call	re_string_context_at
	and	eax, 1
	shl	rax, 8
	or	rax, r12
	mov	rax, qword ptr [r13 + rax*8]
	jmp	.label_1236
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40df30

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
	jle	.label_1246
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1244
.label_1246:
	cmp	qword ptr [rax + r14*8], 0
	je	.label_1247
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	je	.label_1248
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1245
	xor	eax, eax
	jmp	.label_1242
.label_1247:
	mov	qword ptr [rax + r14*8], rbx
	jmp	.label_1244
.label_1248:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	xor	ebp, ebp
.label_1245:
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
	je	.label_1244
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1244:
	test	rbx, rbx
	je	.label_1241
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1243
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, r14
	call	check_subexp_matching_top
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1242
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1242
	mov	rdi, r13
	mov	rsi, rbp
	call	transit_state_bkref
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	test	ecx, ecx
	jne	.label_1242
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rax, qword ptr [rax + r14*8]
	jmp	.label_1242
.label_1241:
	mov	rax, rbx
	jmp	.label_1242
.label_1243:
	mov	rax, rbx
.label_1242:
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
	#Procedure 0x40e080

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
.label_1250:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	word ptr cs:[rax + rax]
.label_1251:
	cmp	rcx, rdx
	mov	eax, 0
	jge	.label_1249
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	je	.label_1251
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1249
	mov	ecx, dword ptr [r14]
	test	ecx, ecx
	je	.label_1250
.label_1249:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0f0

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
	je	.label_1252
.label_1254:
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
	je	.label_1253
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0xe8], rcx
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_1253:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1252:
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsi, r12
	shl	rsi, 4
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1253
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1254
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e1c0

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
	mov	qword ptr [rsp + 0x40], rdx
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	rbp, rbx
	cmp	rax, -1
	je	.label_1263
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
.label_1262:
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x50]
	cmp	qword ptr [rcx], rdx
	je	.label_1258
	cmp	byte ptr [rcx + 0x20], 0
	lea	rcx, [rcx + 0x28]
	jne	.label_1262
.label_1263:
	xor	eax, eax
	cmp	qword ptr [rbp + 0xe8], 0
	jle	.label_1258
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x28], rax
	jmp	.label_1265
.label_1266:
	mov	r13, r15
	jmp	.label_1259
	nop	word ptr cs:[rax + rax]
.label_1265:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + rax], rdx
	jne	.label_1257
	mov	r15, qword ptr [rbx]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1261
	mov	r8, qword ptr [rsp + 0x40]
	xor	r14d, r14d
	jmp	.label_1264
.label_1261:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1259
.label_1260:
	cmp	rsi, qword ptr [rbp + 0x58]
	jg	.label_1266
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x10], r8
	mov	rdi, rbp
	call	clean_state_log_if_needed
	test	eax, eax
	jne	.label_1258
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1271
	nop	dword ptr [rax + rax]
.label_1264:
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	sub	r12, r15
	jle	.label_1255
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	jg	.label_1260
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1271:
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rax + r8]
	lea	rsi, [rax + r15]
	mov	r13, r8
	mov	rdx, r12
	call	memcmp
	mov	r8, r13
	test	eax, eax
	mov	r13, qword ptr [rsp + 0x30]
	mov	rdx, qword ptr [rsp + 0x38]
	jne	.label_1270
.label_1255:
	mov	r15, r8
	mov	rdi, rbp
	mov	rsi, rbx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	cmp	eax, 1
	ja	.label_1258
	mov	r8, r15
	add	r8, r12
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1264
	jmp	.label_1259
.label_1270:
	mov	r13, r15
	nop	word ptr cs:[rax + rax]
.label_1259:
	mov	rcx, r13
	cmp	r14, qword ptr [rbx + 0x20]
	jl	.label_1257
	test	r14, r14
	setg	al
	movzx	r13d, al
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1257
	jmp	.label_1267
.label_1256:
	cmp	r8, qword ptr [rbp + 0x58]
	jge	.label_1257
	lea	esi, [r8 + 1]
	mov	r14, r8
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	jne	.label_1258
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	r8, r14
	jmp	.label_1272
	nop	word ptr cs:[rax + rax]
.label_1267:
	cmp	r13, qword ptr [rbx]
	jle	.label_1273
	cmp	r8, qword ptr [rbp + 0x30]
	jge	.label_1256
.label_1272:
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1257
	inc	r8
.label_1273:
	mov	r14, rbx
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1268
	mov	r15, r8
	add	rsi, 8
	mov	ecx, 9
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_1269
	cmp	qword ptr [r14 + 0x10], 0
	mov	rdi, rbp
	jne	.label_1274
	mov	rsi, r13
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	call	rpl_calloc
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1258
.label_1274:
	mov	rsi, qword ptr [r14 + 0x10]
	mov	rcx, qword ptr [r14]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	je	.label_1268
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	jne	.label_1258
	mov	rsi, rbx
	mov	rdx, r13
	mov	rbx, rdi
	call	match_ctx_add_sublast
	mov	rsi, rbx
	mov	rdx, rbp
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1258
	mov	rbx, rdx
	mov	rdi, rbx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x50]
	mov	rbp, rsi
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rcx, rbp
	cmp	eax, 1
	ja	.label_1258
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1269:
	mov	r8, r15
.label_1268:
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	jl	.label_1267
	nop	dword ptr [rax + rax]
.label_1257:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, rax
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	cmp	rcx, qword ptr [rbp + 0xe8]
	jl	.label_1265
.label_1258:
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
	.align	16
	#Procedure 0x40e570

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
	je	.label_1281
	mov	rax, qword ptr [r12 + 8]
	test	r15, r15
	je	.label_1278
	test	rax, rax
	jle	.label_1278
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1285
	add	rdi, rax
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1275
	xor	r13d, r13d
	cmp	qword ptr [r12 + 8], 0
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1276
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1287:
	mov	rbx, rdx
	mov	rbp, rsi
	nop	word ptr [rax + rax]
.label_1283:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1276
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	jle	.label_1277
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	qword ptr [rcx + rbx*8], rax
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1283
	jmp	.label_1276
.label_1277:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	movzx	esi, sil
	add	rsi, rbp
	cmp	r13, qword ptr [r12 + 8]
	jl	.label_1287
	cmp	rcx, rax
	sete	al
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1276:
	mov	rdx, qword ptr [r12 + 8]
	sub	rdx, r13
	jle	.label_1282
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	jmp	.label_1279
.label_1285:
	mov	rax, qword ptr [r12 + 8]
.label_1278:
	test	rax, rax
	jle	.label_1281
	mov	rdi, r14
	mov	rsi, r12
	jmp	.label_1284
.label_1281:
	test	r15, r15
	je	.label_1286
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1286
	mov	rdi, r14
	mov	rsi, r15
.label_1284:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1286:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1280
.label_1282:
	mov	rdx, qword ptr [r15 + 8]
	sub	rdx, rbp
	jle	.label_1279
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
	call	memcpy
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1279:
	mov	qword ptr [r14 + 8], rbx
.label_1280:
	xor	eax, eax
.label_1275:
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
	#Procedure 0x40e730

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	test	r8, r8
	jle	.label_1288
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr [rax + rax]
.label_1289:
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
	jl	.label_1289
.label_1288:
	cmp	rax, r8
	jge	.label_1291
	mov	rcx, qword ptr [rdi + 0xd8]
	lea	rdx, [rax + rax*4]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1290
.label_1291:
	mov	rax, -1
.label_1290:
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e7a0

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
	jg	.label_1292
	cmp	rax, qword ptr [rbx + 0x58]
	jl	.label_1295
.label_1292:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1293
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_1293
.label_1295:
	lea	esi, [r14 + 1]
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1294
.label_1293:
	xor	ebp, ebp
	cmp	r15, r14
	jge	.label_1294
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	sub	rdx, r15
	shl	rdx, 3
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	mov	qword ptr [rbx + 0xc0], r14
.label_1294:
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
	#Procedure 0x40e820

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
	jne	.label_1296
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1296
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
.label_1296:
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
	#Procedure 0x40e8b0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1297
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	xor	r11d, r11d
	nop	word ptr cs:[rax + rax]
.label_1299:
	mov	rax, qword ptr [r8 + r11*8]
	mov	r10, rax
	shl	r10, 4
	movzx	edi, byte ptr [r9 + r10 + 8]
	cmp	edi, ecx
	jne	.label_1298
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1300
.label_1298:
	inc	r11
	cmp	r11, qword ptr [rsi + 8]
	jl	.label_1299
.label_1297:
	mov	rax, -1
.label_1300:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40e900

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x40], rax
	mov	dword ptr [rsp + 0x74], 0
	mov	rax, qword ptr [rax]
	mov	rcx, r12
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, qword ptr [rsi + 8]
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	cmp	rbp, rcx
	jle	.label_1301
.label_1311:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	cmp	r14, r13
	jne	.label_1310
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	call	re_node_set_init_1
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1307
	lea	rsi, [rsp + 0x50]
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	mov	ecx, r15d
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rcx, rbx
	je	.label_1318
	jmp	.label_1304
.label_1310:
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	rbp, qword ptr [rcx + r14*8]
	test	rbp, rbp
	mov	rcx, rbx
	je	.label_1302
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1306
	mov	r13d, eax
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	jmp	.label_1309
.label_1302:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1313
.label_1306:
	mov	r13d, eax
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1307
.label_1309:
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	je	.label_1313
.label_1318:
	cmp	qword ptr [rsp + 0x58], 0
	je	.label_1317
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	mov	rdi, rbx
	mov	rdx, r14
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	mov	rcx, rbx
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1304
.label_1317:
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1314
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1304
.label_1314:
	mov	rcx, rbx
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r14*8], rbp
.label_1313:
	cmp	r14, qword ptr [rsp + 0x38]
	jge	.label_1303
	inc	r14
	lea	rbx, [rsp + 0x50]
	mov	r12, r14
	xor	r13d, r13d
.label_1305:
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1303
	mov	qword ptr [rsp + 0x58], 0
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rsp + 0x48], rcx
	mov	rsi, qword ptr [rax + r12*8]
	test	rsi, rsi
	je	.label_1308
	add	rsi, 8
	mov	rdi, rbx
	call	re_node_set_merge
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1304
.label_1308:
	test	rbp, rbp
	je	.label_1315
	add	rbp, 0x20
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, rbp
	mov	rcx, rbx
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1304
.label_1315:
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	mov	r14, rbx
	je	.label_1319
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	mov	ecx, ebx
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1304
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1304
.label_1319:
	mov	r15, qword ptr [rsp + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, r14
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1320
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1304
.label_1320:
	mov	rbx, r14
	inc	r13
	test	rbp, rbp
	mov	rcx, r15
	mov	rax, qword ptr [rcx + 0xb8]
	mov	qword ptr [rax + r12*8], rbp
	mov	eax, 0
	cmovne	r13, rax
	cmp	r12, qword ptr [rsp + 0x38]
	lea	r12, [r12 + 1]
	jl	.label_1305
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1312
.label_1303:
	mov	rbx, rcx
.label_1312:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1316
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1307
.label_1316:
	mov	r15d, 1
	jmp	.label_1307
.label_1304:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1307:
	mov	eax, r15d
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1301:
	movabs	rdx, 0x7fffffffffffffff
	sub	rdx, rbp
	mov	r15d, 0xc
	cmp	rdx, rcx
	jle	.label_1307
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1307
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	lea	rsi, [rbx*8]
	call	realloc
	test	rax, rax
	je	.label_1307
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	call	memset
	mov	rsi, r15
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1311
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ed50

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
	je	.label_1321
.label_1322:
	mov	edi, 1
	mov	esi, 0x28
	call	rpl_calloc
	test	rax, rax
	je	.label_1323
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	qword ptr [rax], r15
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1323:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_1321:
	lea	rax, [r12 + r12]
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rcx, rax
	xor	eax, eax
	test	rcx, rcx
	je	.label_1323
	lea	rax, [r12 + r12 + 1]
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1322
	.section	.text
	.align	16
	#Procedure 0x40edd0

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
	jl	.label_1326
	mov	rdi, qword ptr [rbx + 0xd8]
	shl	rcx, 4
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1327
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
.label_1326:
	test	rax, rax
	jle	.label_1324
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	jne	.label_1324
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1324:
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
	jge	.label_1325
	mov	dword ptr [rbx + 0xe0], r14d
.label_1325:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1327:
	mov	rdi, qword ptr [rbx + 0xd8]
	call	free
	mov	eax, 0xc
	jmp	.label_1325
	.section	.text
	.align	16
	#Procedure 0x40ef50

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_alloc
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1332
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1330
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_1333:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	lea	rbp, [rax + rcx*8]
	mov	rdi, rbx
	mov	rsi, rbp
	mov	rdx, r13
	mov	ecx, r15d
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1328
	mov	rdi, rbx
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	jmp	.label_1329
	nop	word ptr cs:[rax + rax]
.label_1328:
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1329:
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1331
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	jl	.label_1333
.label_1330:
	mov	rdi, qword ptr [rbp + 0x10]
	call	free
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	xor	r12d, r12d
	jmp	.label_1332
.label_1331:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1332:
	mov	eax, r12d
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
	.align	16
	#Procedure 0x40f050

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	mov	r13, rsi
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	cmp	rax, -1
	je	.label_1340
	lea	rcx, [rax + rax*4]
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1347:
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	dword ptr [rax + rax]
.label_1337:
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1334
	mov	rbp, qword ptr [r15 - 8]
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	sub	rbp, qword ptr [r15 - 0x10]
	cmp	rbp, rax
	jne	.label_1342
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
	je	.label_1336
	mov	rbx, r14
	jmp	.label_1338
	nop	dword ptr [rax + rax]
.label_1342:
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rbx, qword ptr [rax + rbp*8]
	test	rbx, rbx
	je	.label_1346
	add	rbx, 8
	mov	rdi, rbx
	mov	rsi, r14
	call	re_node_set_contains
	mov	ecx, 4
	test	rax, rax
	je	.label_1341
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1339
.label_1336:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rdi, r14
	mov	r14d, eax
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	mov	rsi, r12
	mov	rdx, qword ptr [rsp + 0x10]
	mov	ecx, dword ptr [rsp + 0x18]
	call	check_arrival_expand_ecl
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsi, r12
	call	re_node_set_merge
	mov	ebp, eax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	or	eax, r14d
	mov	ecx, 2
	or	eax, edx
	jne	.label_1349
.label_1343:
	mov	r14, rbx
	jmp	.label_1338
.label_1346:
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1345
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1339
.label_1341:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	dword ptr [rsp + 0x64], ebx
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_insert
	test	ebx, ebx
	jne	.label_1344
	xor	al, 1
	jne	.label_1344
.label_1345:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	movzx	ecx, cl
	mov	eax, dword ptr [rsp + 0x34]
	cmovne	eax, edx
	mov	dword ptr [rsp + 0x34], eax
.label_1339:
	mov	r13, qword ptr [rsp + 0x28]
.label_1338:
	test	ecx, ecx
	je	.label_1334
	cmp	ecx, 4
	jne	.label_1348
.label_1334:
	cmp	byte ptr [r15], 0
	lea	r15, [r15 + 0x28]
	jne	.label_1337
	jmp	.label_1340
.label_1349:
	test	r14d, r14d
	cmovne	ebp, r14d
	test	edx, edx
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], ebp
	jmp	.label_1343
.label_1344:
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	mov	dword ptr [rsp + 0x64], ecx
	mov	ecx, 1
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1339
	nop	word ptr cs:[rax + rax]
.label_1348:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1347
	jmp	.label_1335
.label_1340:
	xor	eax, eax
.label_1335:
	add	rsp, 0x68
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
	#Procedure 0x40f320

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1357
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_1358:
	mov	rax, qword ptr [rbp + 0x10]
	mov	r13, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	je	.label_1350
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1359
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	add	rbx, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rbp, [rsp + 0x30]
	je	.label_1355
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	call	re_node_set_merge
	mov	rcx, r12
	mov	dword ptr [rsp + 0x54], eax
	test	eax, eax
	jne	.label_1356
.label_1355:
	mov	rdi, rbp
	mov	rsi, rcx
	call	re_node_set_insert
	test	al, al
	je	.label_1354
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	mov	rdx, rbp
	call	re_acquire_state
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rax, qword ptr [r12 + 0xb8]
	cmp	qword ptr [rax + rbx*8], 0
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1351
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	je	.label_1351
	jmp	.label_1356
	nop	dword ptr [rax]
.label_1359:
	test	eax, eax
	mov	rcx, rbp
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1351
	nop	dword ptr [rax]
.label_1350:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	call	check_node_accept
	mov	rcx, rbx
	test	al, al
	je	.label_1352
.label_1351:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	mov	rcx, rbx
	test	al, al
	je	.label_1354
.label_1352:
	inc	r15
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1358
.label_1357:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1353
.label_1354:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, 0xc
	jmp	.label_1353
.label_1356:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	eax, dword ptr [rsp + 0x54]
.label_1353:
	add	rsp, 0x58
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f4f0

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
	jmp	.label_1365
	nop	dword ptr [rax]
.label_1366:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rbx, qword ptr [rax]
.label_1365:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1361
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	shl	rcx, 4
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	jne	.label_1360
	cmp	qword ptr [rax + rcx], r14
	je	.label_1362
.label_1360:
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1363
	mov	rax, qword ptr [rbp + 0x28]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	cmp	rcx, 2
	je	.label_1364
	test	rcx, rcx
	jne	.label_1366
	jmp	.label_1361
	nop	dword ptr [rax + rax]
.label_1364:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rdi, rbp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	call	check_arrival_expand_ecl_sub
	test	eax, eax
	je	.label_1366
	jmp	.label_1363
.label_1362:
	cmp	r15d, 9
	jne	.label_1361
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1363
.label_1361:
	xor	eax, eax
.label_1363:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f5d0

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
	je	.label_1370
	mov	qword ptr [rsp + 8], rdi
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	jle	.label_1373
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1369:
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	jne	.label_1371
	lea	rdi, [rbx + 8]
	mov	rsi, r12
	call	re_node_set_compare
	test	al, al
	jne	.label_1368
.label_1371:
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1369
.label_1373:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rdx, r13
	call	create_ci_newstate
	mov	rbx, rax
	test	rbx, rbx
	je	.label_1367
.label_1368:
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1370:
	mov	dword ptr [rdi], 0
	jmp	.label_1372
.label_1367:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1372:
	xor	ebx, ebx
	jmp	.label_1368
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f6a0

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
	je	.label_1375
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1379
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	cmp	qword ptr [r14 + 8], 0
	jle	.label_1381
	xor	eax, eax
.label_1383:
	mov	r8, qword ptr [r15]
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1374
	movzx	esi, dil
	shr	edi, 0x14
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	and	cl, 0xdf
	or	cl, bl
	mov	byte ptr [r12 + 0x68], cl
	cmp	esi, 0xc
	je	.label_1378
	cmp	esi, 4
	je	.label_1376
	cmp	esi, 2
	jne	.label_1380
	or	cl, 0x10
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1374
.label_1376:
	or	cl, 0x40
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1374
.label_1380:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1374
.label_1378:
	or	byte ptr [r12 + 0x68], 0x80
.label_1374:
	inc	rax
	cmp	rax, qword ptr [r14 + 8]
	jl	.label_1383
.label_1381:
	mov	rdi, r15
	mov	rsi, r12
	call	register_state
	test	eax, eax
	mov	rax, r12
	jne	.label_1377
.label_1375:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1379:
	mov	rdi, r12
	call	free
	jmp	.label_1382
.label_1377:
	mov	rdi, r12
	call	free_state
.label_1382:
	xor	eax, eax
	jmp	.label_1375
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f7d0

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
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	shl	rbp, 4
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	je	.label_1403
	mov	rdi, r13
	mov	rsi, r12
	call	re_string_char_size_at
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1387
	xor	eax, eax
	cmp	esi, 2
	jl	.label_1385
	test	byte ptr [rbx + 0xd8], 0x40
	jne	.label_1386
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1385
.label_1386:
	cmp	byte ptr [rbx + 0xd8], 0
	js	.label_1397
	mov	eax, esi
	jmp	.label_1385
.label_1387:
	cmp	esi, 1
	setg	cl
	xor	eax, eax
	cmp	r15d, 6
	jne	.label_1385
	test	cl, cl
	je	.label_1385
	mov	rbp, qword ptr [r14 + rbp]
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1407
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1407
	xor	r14d, r14d
	cmp	qword ptr [rbp + 0x28], 0
	je	.label_1412
.label_1407:
	mov	rdi, r13
	mov	ebx, esi
	mov	rsi, r12
	call	re_string_wchar_at
	mov	esi, ebx
	mov	r14d, eax
.label_1412:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1389
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
.label_1393:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1391
	inc	rcx
	cmp	rcx, qword ptr [rbp + 0x28]
	jl	.label_1393
.label_1389:
	mov	r15d, esi
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1395
	xor	ebx, ebx
	nop	
.label_1404:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	edi, r14d
	call	iswctype
	test	eax, eax
	jne	.label_1406
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	jl	.label_1404
.label_1395:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	esi, r15d
	jle	.label_1390
	mov	rax, qword ptr [rbp + 8]
	xor	edx, edx
	nop	
.label_1402:
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1410
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	jle	.label_1411
.label_1410:
	inc	rdx
	xor	ecx, ecx
	cmp	rdx, qword ptr [rbp + 0x40]
	jl	.label_1402
	jmp	.label_1390
.label_1397:
	mov	rcx, qword ptr [r13 + 8]
	cmp	byte ptr [rcx + r12], 0
	je	.label_1385
	mov	eax, esi
	jmp	.label_1385
.label_1403:
	mov	rsi, qword ptr [r13 + 8]
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1385
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1394
	xor	eax, eax
	jmp	.label_1385
.label_1406:
	mov	esi, r15d
.label_1391:
	mov	ecx, esi
.label_1390:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1400
	mov	eax, ecx
	jmp	.label_1385
.label_1400:
	test	ecx, ecx
	mov	eax, 0
	jg	.label_1385
	test	esi, esi
	mov	eax, 1
	cmovg	eax, esi
.label_1385:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1411:
	mov	ecx, esi
	jmp	.label_1390
.label_1394:
	mov	cl, byte ptr [r12 + rsi + 1]
	movzx	edx, dl
	cmp	edx, 0xdf
	ja	.label_1396
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	test	cl, cl
	mov	eax, 0
	cmovs	eax, edx
	jmp	.label_1385
.label_1396:
	cmp	edx, 0xef
	ja	.label_1392
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1384
	xor	eax, eax
	jmp	.label_1385
.label_1392:
	cmp	edx, 0xf7
	ja	.label_1401
	mov	eax, 4
	cmp	edx, 0xf0
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0x90
	jae	.label_1384
	xor	eax, eax
	jmp	.label_1385
.label_1401:
	cmp	edx, 0xfb
	ja	.label_1409
	mov	eax, 5
	cmp	edx, 0xf8
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0x88
	jae	.label_1384
	xor	eax, eax
	jmp	.label_1385
.label_1409:
	cmp	edx, 0xfd
	ja	.label_1388
	mov	eax, 6
	cmp	edx, 0xfc
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1384
	xor	eax, eax
	jmp	.label_1385
.label_1384:
	mov	ecx, eax
	lea	rdx, [rcx + r12]
	cmp	rdx, qword ptr [r13 + 0x58]
	jle	.label_1398
	xor	eax, eax
	jmp	.label_1385
.label_1398:
	add	r12, qword ptr [r13 + 8]
	mov	edx, 1
.label_1408:
	mov	bl, byte ptr [r12 + rdx]
	test	bl, bl
	jns	.label_1405
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1399
	inc	rdx
	cmp	rdx, rcx
	jl	.label_1408
	jmp	.label_1385
.label_1388:
	xor	eax, eax
	jmp	.label_1385
.label_1405:
	xor	eax, eax
	jmp	.label_1385
.label_1399:
	xor	eax, eax
	jmp	.label_1385
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fa90

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
	movzx	ecx, byte ptr [rbx + 8]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1414
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1421]]
.label_1838:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	je	.label_1413
	xor	eax, eax
	jmp	.label_1414
.label_1839:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	test	al, al
	jne	.label_1413
	xor	eax, eax
	jmp	.label_1414
.label_1841:
	test	sil, sil
	js	.label_1417
.label_1840:
	test	sil, sil
	je	.label_1419
	movzx	eax, sil
	cmp	eax, 0xa
	jne	.label_1413
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	jne	.label_1413
	xor	eax, eax
	jmp	.label_1414
.label_1419:
	mov	rax, qword ptr [r15 + 0x98]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1415
.label_1413:
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	shr	ebx, 8
	mov	al, 1
	test	bx, 0x3ff
	je	.label_1414
	mov	ebp, ecx
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	mov	rsi, r14
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bl, 4
	je	.label_1420
	test	ecx, ecx
	jne	.label_1420
	xor	eax, eax
	jmp	.label_1414
.label_1420:
	mov	edx, ebp
	test	dh, 8
	je	.label_1416
	test	ecx, ecx
	je	.label_1416
	xor	eax, eax
	jmp	.label_1414
.label_1417:
	xor	eax, eax
	jmp	.label_1414
.label_1416:
	test	dh, 0x20
	je	.label_1418
	mov	ecx, eax
	and	ecx, 2
	jne	.label_1418
	xor	eax, eax
	jmp	.label_1414
.label_1415:
	xor	eax, eax
	jmp	.label_1414
.label_1418:
	and	eax, 8
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1414:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fb90
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fba0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r12 + 0x10], 0
	jle	.label_1428
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1431:
	mov	rax, qword ptr [r12 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	je	.label_1423
	mov	ebp, ebx
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1425
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1429
	test	ecx, ecx
	je	.label_1423
.label_1429:
	test	bh, 8
	je	.label_1427
	test	ecx, ecx
	jne	.label_1423
.label_1427:
	test	bh, 0x20
	je	.label_1424
	mov	ecx, eax
	and	ecx, 2
	je	.label_1423
.label_1424:
	test	bpl, bpl
	jns	.label_1425
	and	eax, 8
	je	.label_1423
	nop	word ptr cs:[rax + rax]
.label_1425:
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	call	check_node_accept_bytes
	test	eax, eax
	je	.label_1423
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
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	jne	.label_1428
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1422
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x34], eax
	test	eax, eax
	je	.label_1430
	jmp	.label_1428
.label_1422:
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1430:
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	qword ptr [rcx + r12*8], rax
	je	.label_1426
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1426:
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	jne	.label_1423
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1428
	nop	word ptr cs:[rax + rax]
.label_1423:
	inc	r13
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	jl	.label_1431
.label_1428:
	add	rsp, 0x38
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
	#Procedure 0x40fda0

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
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	je	.label_1464
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rdi, r14
	mov	rsi, rbx
	mov	qword ptr [rbp - 0xb8], rbx
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1434
	lea	rsi, [r12 + 1]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1439
	test	eax, eax
	jne	.label_1439
	lea	rax, [r12*8]
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	cmp	rax, 0xfbf
	ja	.label_1445
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	add	rdi, 0xf
	and	rdi, 0xfffffffffffffff0
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1451
.label_1445:
	call	malloc
	test	rax, rax
	je	.label_1439
	mov	qword ptr [rbp - 0xc0], r13
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1451:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	xor	r13d, r13d
	xor	eax, eax
	mov	qword ptr [rbp - 0xb0], rax
.label_1455:
	mov	qword ptr [rbp - 0x78], r13
	mov	qword ptr [rbp - 0x40], 0
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	mov	rbx, r14
	jle	.label_1466
	mov	rcx, qword ptr [rbp - 0x80]
	lea	r14, [rcx + rax*8 + 8]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1443:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, -1
	je	.label_1432
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	jne	.label_1441
.label_1432:
	inc	r15
	cmp	r15, qword ptr [r14]
	jl	.label_1443
.label_1466:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_1450
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1441
.label_1450:
	cmp	byte ptr [rax + 0x68], 0
	js	.label_1456
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rdx*8], rax
	mov	r13, rdx
	jmp	.label_1444
	nop	word ptr cs:[rax + rax]
.label_1456:
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	lea	rdx, [rbp - 0x48]
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	test	rax, rax
	jne	.label_1465
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1441
.label_1465:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	je	.label_1469
	mov	al, 1
	cmp	dword ptr [rsi + 0xb4], 1
.label_1725:
	jg	.label_1472
	mov	rax, qword ptr [rbp - 0xb0]
.label_1472:
	mov	qword ptr [rbp - 0xb0], rax
.label_1469:
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	mov	r13, rbx
	test	rax, rax
	jne	.label_1440
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	mov	rsi, r14
	je	.label_1444
	jmp	.label_1441
.label_1440:
	mov	rsi, r14
	nop	dword ptr [rax + rax]
.label_1444:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	call	bitset_merge
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1455
	mov	rax, qword ptr [rbp - 0xb0]
	and	al, 1
	jne	.label_1471
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	test	r15, r15
	mov	r11, r14
	je	.label_1441
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_1449:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	test	rdi, rdi
	je	.label_1468
	mov	rdx, r8
	mov	esi, 1
	jmp	.label_1446
	nop	word ptr cs:[rax + rax]
.label_1433:
	add	rax, 8
	test	qword ptr [rcx], rsi
	lea	rcx, [rcx + 0x20]
	je	.label_1433
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	je	.label_1435
	mov	rax, qword ptr [rax + r12*8]
	jmp	.label_1437
.label_1435:
	mov	rax, qword ptr [rax]
.label_1437:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1463
	nop	word ptr cs:[rax + rax]
.label_1446:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1433
.label_1463:
	add	rsi, rsi
	shr	rdi, 1
	inc	rdx
	test	rdi, rdi
	jne	.label_1446
.label_1468:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1449
.label_1438:
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	esi, 0xa
	call	bitset_contain
	test	al, al
	je	.label_1454
	test	r12, r12
	jle	.label_1454
	mov	rax, qword ptr [rbp - 0x80]
	lea	r15, [rax + 0x1800]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1459:
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_contain
	test	al, al
	jne	.label_1457
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1459
	jmp	.label_1454
.label_1464:
	xor	eax, eax
	jmp	.label_1452
.label_1434:
	mov	rdi, r15
	call	free
	test	r12, r12
	je	.label_1461
	xor	eax, eax
	jmp	.label_1452
.label_1461:
	mov	edi, 8
	mov	esi, 0x100
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1452
.label_1457:
	mov	rax, r12
	shl	rax, 4
	add	rax, r13
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	je	.label_1454
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1454:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	je	.label_1436
	mov	rdi, r13
	call	free
.label_1436:
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_1442
	mov	rbx, qword ptr [rbp - 0x80]
	add	rbx, 0x10
	nop	dword ptr [rax + rax]
.label_1470:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1470
.label_1442:
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	al, 1
	jmp	.label_1452
.label_1471:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rax + 0x60], r15
	test	r15, r15
	je	.label_1441
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	xor	r8d, r8d
	xor	r9d, r9d
.label_1447:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	test	rsi, rsi
	mov	rdi, r8
	mov	ecx, 1
	jne	.label_1458
	jmp	.label_1460
	nop	word ptr cs:[rax + rax]
.label_1462:
	add	rax, 8
	test	qword ptr [rdx], rcx
	lea	rdx, [rdx + 0x20]
	je	.label_1462
	mov	rdx, qword ptr [rax]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	jmp	.label_1467
	nop	word ptr cs:[rax + rax]
.label_1458:
	test	sil, 1
	mov	rdx, rbx
	mov	rax, r10
	jne	.label_1462
.label_1467:
	add	rcx, rcx
	shr	rsi, 1
	inc	rdi
	test	rsi, rsi
	jne	.label_1458
.label_1460:
	inc	r9
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1447
	jmp	.label_1438
.label_1441:
	mov	eax, dword ptr [rbp - 0xa4]
	test	al, al
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	je	.label_1439
	call	free
.label_1439:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	jle	.label_1448
	mov	rbx, r14
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1453:
	mov	rdi, qword ptr [rbx]
	call	free
	add	rbx, 0x18
	dec	r12
	jne	.label_1453
.label_1448:
	mov	rdi, r14
	call	free
	xor	eax, eax
.label_1452:
	lea	rsp, [rbp - 0x28]
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
	#Procedure 0x410390

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
	mov	qword ptr [rsp + 0x30], rcx
	mov	r14, rdx
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rdi
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	jle	.label_1500
	xor	ebp, ebp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1506:
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1485
	movzx	esi, byte ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_set
	jmp	.label_1473
	nop	word ptr cs:[rax + rax]
.label_1485:
	cmp	ebp, 7
	je	.label_1501
	cmp	ebp, 5
	je	.label_1482
	cmp	ebp, 3
	jne	.label_1483
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rsp + 0x80]
	call	bitset_merge
	jmp	.label_1473
.label_1501:
	mov	qword ptr [rsp + 0x18], rax
	mov	qword ptr [rsp + 0x88], -1
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1491
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_clear
	mov	r8, rbp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1491:
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1473
	jmp	.label_1481
.label_1482:
	mov	qword ptr [rsp + 0x18], rax
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1497
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1503
.label_1497:
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1503:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1504
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	call	bitset_clear
	mov	rax, rbp
.label_1504:
	mov	qword ptr [rsp + 0x10], rax
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	jns	.label_1473
.label_1481:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	call	bitset_clear
	nop	
.label_1473:
	shr	r13d, 8
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1480
	test	r13b, 0x20
	je	.label_1486
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	call	bitset_contain
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1493
	mov	esi, 0xa
	mov	rdi, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1486:
	test	r13b, r13b
	js	.label_1490
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	r8, qword ptr [rsp + 0x10]
	je	.label_1494
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	jne	.label_1496
	test	byte ptr [rax + 2], 0x40
	jne	.label_1496
	mov	rbp, r8
	call	bitset_empty
	mov	r8, rbp
	jmp	.label_1483
.label_1496:
	cmp	dword ptr [r8 + 0xb4], 2
	mov	ecx, 0
	mov	edx, 0
	jl	.label_1498
	mov	rdx, qword ptr [r8 + 0x78]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1507:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	inc	rsi
	cmp	rsi, 4
	jne	.label_1507
	jmp	.label_1478
	nop	dword ptr [rax]
.label_1498:
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rcx, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1498
.label_1478:
	test	rcx, rcx
	je	.label_1483
.label_1494:
	test	r13b, 8
	je	.label_1480
	cmp	ebp, 1
	jne	.label_1488
	test	byte ptr [rax + 2], 0x40
	jne	.label_1490
.label_1488:
	mov	rdi, qword ptr [rsp + 0x10]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1492
	mov	rcx, qword ptr [rdi + 0x78]
	xor	eax, eax
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1477:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	not	rsi
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	or	rax, rsi
	inc	rdx
	cmp	rdx, 4
	jne	.label_1477
	jmp	.label_1499
	nop	dword ptr [rax]
.label_1492:
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1492
.label_1499:
	test	rax, rax
	je	.label_1493
.label_1480:
	test	r15, r15
	jle	.label_1495
	mov	rbx, qword ptr [rsp + 0x30]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1487:
	cmp	ebp, 1
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	jne	.label_1474
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	call	bitset_contain
	test	al, al
	mov	rcx, rbx
	mov	eax, 0
	mov	edx, 0
	je	.label_1484
.label_1474:
	mov	rsi, qword ptr [rcx]
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	jne	.label_1474
	test	rax, rax
	mov	ebp, 0
	mov	eax, 0
	mov	ecx, 0
	je	.label_1484
	nop	dword ptr [rax + rax]
.label_1505:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	not	rdx
	mov	rsi, qword ptr [rbx + rcx*8]
	and	rdx, rsi
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	or	rbp, rsi
	inc	rcx
	cmp	rcx, 4
	jne	.label_1505
	test	rax, rax
	je	.label_1502
	mov	rdi, r15
	shl	rdi, 5
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	test	eax, eax
	jne	.label_1475
	inc	r15
.label_1502:
	lea	rax, [r12 + r12*2]
	lea	rdi, [r14 + rax*8]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	call	re_node_set_insert
	test	al, al
	je	.label_1475
	test	rbp, rbp
	je	.label_1489
.label_1484:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	jl	.label_1487
	jmp	.label_1489
.label_1483:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1479
.label_1490:
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	jmp	.label_1493
.label_1495:
	xor	r12d, r12d
.label_1489:
	cmp	r12, r15
	jne	.label_1493
	mov	rdi, r15
	shl	rdi, 5
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	r12, [rsp + 0x80]
	mov	rsi, r12
	call	bitset_copy
	lea	rax, [r15 + r15*2]
	lea	rdi, [r14 + rax*8]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1475
	inc	r15
	mov	rdi, r12
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1479
	nop	word ptr [rax + rax]
.label_1493:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1479:
	inc	rbp
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1506
	jmp	.label_1500
.label_1475:
	test	r15, r15
	jle	.label_1508
	add	r14, 0x10
	nop	word ptr [rax + rax]
.label_1476:
	mov	rdi, qword ptr [r14]
	call	free
	add	r14, 0x18
	dec	r15
	jne	.label_1476
.label_1508:
	mov	r15, -1
.label_1500:
	mov	rax, r15
	add	rsp, 0xa8
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
	#Procedure 0x410940

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x10], xmm0
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410950

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1509:
	mov	rcx, qword ptr [rsi + rax*8]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	jne	.label_1509
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410980

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	mov	qword ptr [rdi], -1
	ret	
	.section	.text
	.align	16
	#Procedure 0x4109a0

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	mov	rax, -2
	mov	cl, sil
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
	.align	16
	#Procedure 0x4109d0

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
	.align	16
	#Procedure 0x4109e0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1510
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	je	.label_1513
	mov	eax, edx
	and	eax, 1
	jne	.label_1512
	mov	esi, ecx
	and	esi, 4
	je	.label_1512
	xor	eax, eax
	ret	
.label_1510:
	xor	eax, eax
	ret	
.label_1512:
	test	eax, eax
	je	.label_1514
	mov	eax, ecx
	and	eax, 8
	je	.label_1514
	xor	eax, eax
	ret	
.label_1514:
	test	dl, 2
	jne	.label_1511
	mov	eax, ecx
	and	eax, 0x20
	je	.label_1511
	xor	eax, eax
	ret	
.label_1511:
	and	edx, 8
	test	cl, cl
	setns	al
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1513:
	ret	
	.section	.text
	.align	16
	#Procedure 0x410a40

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
	.align	16
	#Procedure 0x410a60

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
	jne	.label_1522
	lea	rcx, [rsp]
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1515
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_1520:
	test	rbx, rbx
	jle	.label_1521
	mov	rdi, qword ptr [r14]
	cmp	qword ptr [rdi + rbx*8], 0
	je	.label_1517
	xor	r13d, r13d
	jmp	.label_1519
	nop	word ptr cs:[rax + rax]
.label_1517:
	inc	r13d
.label_1519:
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1516
	mov	qword ptr [rsp + 8], 0
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rbx, [rbx - 1]
	je	.label_1518
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	build_sifted_states
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1515
.label_1518:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	ebp, eax
	test	ebp, ebp
	je	.label_1520
	jmp	.label_1515
.label_1521:
	xor	ebp, ebp
	jmp	.label_1515
.label_1516:
	shl	rbx, 3
	xor	ebp, ebp
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1515:
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
.label_1522:
	mov	eax, ebp
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
	#Procedure 0x410b70

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
	jle	.label_1525
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	dword ptr [rax + rax]
.label_1524:
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	je	.label_1523
	test	rax, rax
	je	.label_1526
	mov	rsi, qword ptr [rbx + rbp*8]
	add	rsi, 8
	mov	rdx, qword ptr [r15 + rbp*8]
	add	rdx, 8
	mov	rdi, r13
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	jne	.label_1525
	lea	rdi, [rsp + 0x24]
	mov	rsi, r12
	mov	rdx, r13
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1526
	jmp	.label_1525
	nop	dword ptr [rax + rax]
.label_1523:
	mov	qword ptr [rbx + rbp*8], rax
.label_1526:
	inc	rbp
	xor	eax, eax
	cmp	rbp, r14
	jl	.label_1524
.label_1525:
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
	#Procedure 0x410c20

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
	mov	rdx, qword ptr [rbx + 0x98]
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	je	.label_1527
	test	r14, r14
	je	.label_1530
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	call	add_epsilon_src_nodes
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1528
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1530
	lea	rcx, [rsi + 0x20]
	mov	r8, qword ptr [rbx + 0xd8]
	mov	rdi, rdx
	mov	rsi, r13
	mov	rbp, rdx
	mov	rdx, r12
	mov	r9, r15
	call	check_subexp_limits
	mov	rdx, rbp
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1528
.label_1530:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	mov	rdx, r13
	call	re_acquire_state
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	eax, dword ptr [rsp + 0x14]
	test	eax, eax
	je	.label_1531
	jmp	.label_1528
.label_1527:
	mov	rax, qword ptr [rsi]
	mov	qword ptr [rax + r15*8], 0
.label_1531:
	test	r14, r14
	je	.label_1529
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1529
	mov	rdi, rbx
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1528
.label_1529:
	xor	eax, eax
.label_1528:
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
	#Procedure 0x410d40

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
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	mov	r14, qword ptr [rax + rbx*8]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1532
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rax, [rax + 0x20]
	mov	qword ptr [rsp + 8], rax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1536:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rbp, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r12]
	mov	r13, rbp
	shl	r13, 4
	test	byte ptr [rax + r13 + 0xa], 0x10
	je	.label_1533
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, rbp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	jne	.label_1537
.label_1533:
	add	r13, qword ptr [r12]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r13
	mov	rdx, rbx
	call	check_node_accept
	test	al, al
	je	.label_1535
	mov	rax, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rax]
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	test	rdi, rdi
	je	.label_1535
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	call	re_node_set_contains
	mov	rcx, rax
	mov	eax, 1
	test	rcx, rcx
	je	.label_1535
.label_1537:
	mov	rcx, qword ptr [rsp + 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	je	.label_1534
	movsxd	rcx, eax
	add	rcx, rbx
	mov	rax, qword ptr [r12 + 0x18]
	mov	rdx, qword ptr [rax + rbp*8]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1535
.label_1534:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_1532
.label_1535:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	jl	.label_1536
.label_1532:
	add	rsp, 0x28
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
	#Procedure 0x410e90

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
	jne	.label_1538
	mov	rax, r12
	add	r12, 0x38
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1540
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	call	re_node_set_alloc
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	test	eax, eax
	jne	.label_1538
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1540
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_1541:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rcx, [rcx + rcx*2]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	test	eax, eax
	jne	.label_1539
	inc	rbp
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1541
	mov	dword ptr [rsp + 4], eax
.label_1540:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rdx, r12
	call	re_node_set_add_intersect
	mov	r13d, eax
.label_1538:
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1539:
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1538
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f60

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 8], rdx
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	r11, rdi
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	jle	.label_1547
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1556:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rax, [rax + rax*4]
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	jge	.label_1543
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1543
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	jne	.label_1548
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1543
	mov	r12, r8
	mov	r9, r14
	mov	r8, qword ptr [rdx + 8]
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsi, -1
	nop	dword ptr [rax]
.label_1550:
	mov	rbx, qword ptr [r10 + rdi*8]
	mov	rbp, rbx
	shl	rbp, 4
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1552
	cmp	eax, 8
	jne	.label_1542
	cmp	r13, qword ptr [rcx + rbp]
	je	.label_1557
	mov	rbx, rsi
.label_1557:
	mov	rsi, rbx
	jmp	.label_1542
	nop	dword ptr [rax + rax]
.label_1552:
	mov	rax, qword ptr [r11]
	cmp	r13, qword ptr [rax + rbp]
	je	.label_1546
	mov	rbx, r14
.label_1546:
	mov	r14, rbx
.label_1542:
	inc	rdi
	cmp	rdi, r8
	jl	.label_1550
	mov	r13, r14
	test	rsi, rsi
	mov	r14, r9
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	js	.label_1551
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, r9
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, qword ptr [rsp + 0x30]
	test	eax, eax
	jne	.label_1547
.label_1551:
	test	r13, r13
	js	.label_1543
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jg	.label_1555
	jmp	.label_1543
.label_1548:
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	jle	.label_1543
	nop	dword ptr [rax]
.label_1545:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rcx, rsi
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	jne	.label_1544
	cmp	r13, qword ptr [rax + rcx]
	jne	.label_1544
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	mov	r15, r14
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	mov	r8, r12
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	test	eax, eax
	jne	.label_1547
.label_1544:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1545
	jmp	.label_1543
.label_1553:
	mov	rdi, r12
	mov	rsi, r14
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1547
	dec	rbp
	jmp	.label_1549
.label_1555:
	mov	rax, qword ptr [rdx + 0x10]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	mov	r12, r11
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1554
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1553
.label_1554:
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1549:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1555
	nop	word ptr [rax + rax]
.label_1543:
	inc	r15
	xor	eax, eax
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1556
.label_1547:
	add	rsp, 0x38
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
	#Procedure 0x411210

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
	mov	qword ptr [rsp + 0x28], rbx
	mov	qword ptr [rsp + 0x58], rdx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x50], rbp
	mov	rsi, rdx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	cmp	rax, -1
	je	.label_1560
	mov	qword ptr [rsp + 0x60], 0
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1560
	mov	rdx, r14
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	mov	qword ptr [rsp + 0x30], rax
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax]
.label_1567:
	mov	rax, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1570
	cmp	eax, 4
	jne	.label_1563
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1565
	jmp	.label_1563
	nop	
.label_1570:
	cmp	eax, 4
	jne	.label_1563
.label_1565:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	add	rbp, qword ptr [rax + 0xd8]
	mov	r13, qword ptr [rsp + 0x18]
	nop	word ptr [rax + rax]
.label_1562:
	cmp	qword ptr [rbp], r15
	jne	.label_1566
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	sub	rbx, rax
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1569
	mov	rax, qword ptr [rsi + 0x28]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	jmp	.label_1558
	nop	word ptr cs:[rax + rax]
.label_1569:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1558:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1566
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1566
	mov	r12, qword ptr [rax]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1571
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1566
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1561
	mov	rax, qword ptr [rdx + 0x30]
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, rdx
	call	re_node_set_init_copy
	mov	rdx, rbx
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1559
.label_1561:
	mov	qword ptr [rsp + 0x70], r15
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	mov	rdx, rbx
	mov	r12d, 0xc
	test	al, al
	je	.label_1559
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1559
	mov	rsi, qword ptr [rdx + 8]
	test	rsi, rsi
	je	.label_1564
	mov	rbp, rdx
	mov	rdx, qword ptr [rsp + 0x60]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	call	merge_state_array
	mov	rdx, rbp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1559
.label_1564:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x58]
	mov	qword ptr [rax + rcx*8], rbx
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	mov	rax, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	jmp	.label_1568
.label_1571:
	mov	rdx, qword ptr [rsp + 0x38]
.label_1568:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	word ptr cs:[rax + rax]
.label_1566:
	inc	r14
	add	r13, 0x28
	cmp	byte ptr [rbp + 0x20], 0
	lea	rbp, [rbp + 0x28]
	jne	.label_1562
.label_1563:
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1567
.label_1559:
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1560
	mov	rdi, qword ptr [rsp + 0x90]
	call	free
.label_1560:
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
	.align	16
	#Procedure 0x411580

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	xor	eax, eax
	test	rdx, rdx
	je	.label_1572
	mov	rcx, qword ptr [r14 + 8]
	test	rcx, rcx
	je	.label_1572
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	jle	.label_1584
	add	rbx, rcx
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1572
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1584:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	add	r8, r9
	dec	rcx
.label_1588:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1587:
	lea	r9, [rdi - 1]
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	dword ptr [rax + rax]
.label_1583:
	cmp	qword ptr [rax + rdx*8], rsi
	je	.label_1579
	jl	.label_1581
	test	rdx, rdx
	lea	rdx, [rdx - 1]
	jg	.label_1583
	jmp	.label_1576
	nop	word ptr cs:[rax + rax]
.label_1581:
	cmp	rdi, 2
	mov	rdi, r9
	jge	.label_1587
	jmp	.label_1576
	nop	dword ptr [rax + rax]
.label_1579:
	test	rcx, rcx
	js	.label_1575
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1586:
	cmp	qword ptr [rax + rcx*8], rsi
	jle	.label_1585
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1586
	jmp	.label_1575
.label_1585:
	test	rcx, rcx
	js	.label_1575
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	je	.label_1574
	nop	dword ptr [rax]
.label_1575:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	dec	r8
.label_1574:
	test	rdx, rdx
	jle	.label_1576
	cmp	rdi, 2
	jge	.label_1588
.label_1576:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	mov	rdx, r11
	sub	rdx, r8
	lea	r9, [rdx + 1]
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	test	rcx, rcx
	jle	.label_1573
	test	rdx, rdx
	js	.label_1573
	add	r10, rax
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	xor	edx, edx
.label_1582:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rax, [rdi + r10*8]
	nop	dword ptr [rax]
.label_1577:
	mov	rsi, qword ptr [rdi + r11*8]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	jg	.label_1578
	mov	qword ptr [rax + rcx*8], rbx
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1577
	jmp	.label_1573
.label_1578:
	dec	r11
	dec	r10
	dec	r9
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1582
	jmp	.label_1580
.label_1573:
	mov	rdx, r9
.label_1580:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1572:
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
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rcx, [rsi + rsi*2]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1590
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdx, [rax + rcx*8]
	mov	qword ptr [rsp + 0x18], rdx
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1592:
	mov	rax, qword ptr [r15]
	mov	rax, qword ptr [rax + r12*8]
	cmp	rax, qword ptr [rsp + 0x28]
	je	.label_1589
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	shl	rdx, 4
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1589
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	jl	.label_1595
	mov	rbp, qword ptr [rax + 8]
.label_1595:
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1594
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1598
.label_1594:
	test	rbp, rbp
	jle	.label_1589
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1589
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	je	.label_1589
.label_1598:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	lea	rdi, [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1597
	nop	word ptr [rax + rax]
.label_1589:
	inc	r12
	mov	rax, qword ptr [r13]
	cmp	r12, rax
	jl	.label_1592
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1590
	xor	ebx, ebx
	lea	r14, [rsp + 0x30]
	nop	word ptr cs:[rax + rax]
.label_1596:
	mov	rax, qword ptr [r15]
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1591
	mov	rdi, r12
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rax - 1]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1591:
	inc	rbx
	cmp	rbx, qword ptr [r13]
	jl	.label_1596
.label_1590:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	ebp, ebp
.label_1593:
	mov	eax, ebp
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1597:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	jmp	.label_1593
	.section	.text
	.align	16
	#Procedure 0x411920

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
	mov	qword ptr [rsp + 0x30], r14
	mov	qword ptr [rsp + 0x28], r8
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1601
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	dword ptr [rax]
.label_1600:
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
	jne	.label_1599
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	jl	.label_1600
	xor	eax, eax
	jmp	.label_1599
.label_1601:
	xor	eax, eax
.label_1599:
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
	#Procedure 0x411a10

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	r10, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi + rsi*4]
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	eax, 0xffffffff
	cmp	r11, r8
	jg	.label_1602
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	eax, 1
	cmp	r10, r8
	jl	.label_1602
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	sete	al
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	je	.label_1602
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1602:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a60

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1609
	lea	rdx, [rax + rcx*8 + 8]
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 1
	mov	cl, bl
	shl	rax, cl
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	mov	eax, r13d
	and	eax, 2
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1613:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rax]
	mov	r12, qword ptr [rax + r15*8]
	mov	rax, qword ptr [rbp]
	mov	rdx, r12
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	cmp	eax, 9
	je	.label_1603
	cmp	eax, 8
	je	.label_1610
	cmp	eax, 4
	jne	.label_1604
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1604
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
.label_1612:
	cmp	qword ptr [r14], r12
	jne	.label_1606
	cmp	rbx, 0x3f
	jg	.label_1615
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1606
.label_1615:
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	je	.label_1616
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	test	ecx, ecx
	je	.label_1611
	mov	eax, 0xffffffff
	cmp	ecx, -1
	je	.label_1608
	cmp	rbx, 0x3f
	jg	.label_1606
	jmp	.label_1614
.label_1611:
	cmp	byte ptr [rsp + 0xf], 0
	je	.label_1614
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	je	.label_1606
	jmp	.label_1608
.label_1614:
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	dword ptr [rax]
.label_1606:
	cmp	byte ptr [r14 + 0x20], 0
	lea	r14, [r14 + 0x28]
	jne	.label_1612
	jmp	.label_1604
	nop	word ptr cs:[rax + rax]
.label_1603:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1604
	xor	eax, eax
	jmp	.label_1607
	nop	dword ptr [rax + rax]
.label_1610:
	cmp	dword ptr [rsp + 4], 0
	je	.label_1604
	mov	eax, 0xffffffff
.label_1607:
	cmp	qword ptr [rcx], rbx
	je	.label_1608
.label_1604:
	inc	r15
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1613
.label_1609:
	shr	r13d, 1
	and	r13d, 1
	jmp	.label_1605
.label_1616:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1605:
	mov	eax, r13d
.label_1608:
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
	#Procedure 0x411c70

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
	jle	.label_1618
	movsxd	rax, ebx
	add	rax, rbp
	cmp	rax, r13
	jg	.label_1618
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	je	.label_1617
	add	rdi, 8
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [rax + r14*8]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1618
.label_1617:
	xor	ebx, ebx
.label_1618:
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
	.align	16
	#Procedure 0x411cf0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	r14, r14
	je	.label_1619
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1621
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1620:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1620
.label_1621:
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
.label_1619:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411d50

	.globl update_regs
	.type update_regs, @function
update_regs:
	mov	rdi, qword ptr [rdi]
	shl	rcx, 4
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	movzx	edi, cl
	cmp	edi, 9
	je	.label_1623
	cmp	edi, 8
	jne	.label_1622
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1622
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1623:
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1622
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1625
	mov	qword ptr [rsi + rax + 8], r8
	shl	r9, 4
	mov	rdi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1625:
	test	ecx, 0x80000
	je	.label_1624
	cmp	qword ptr [rdx + rax], -1
	je	.label_1624
	shl	r9, 4
	mov	rdi, rsi
	mov	rsi, rdx
	mov	rdx, r9
	jmp	memcpy
.label_1624:
	mov	qword ptr [rsi + rax + 8], r8
.label_1622:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411de0

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
	jle	.label_1626
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
.label_1626:
	mov	edi, OFFSET FLAT:.str.26
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x555
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411e80

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
	mov	r13, r8
	mov	rbx, rcx
	mov	rbp, rdi
	mov	r15, qword ptr [rbp + 0x98]
	mov	rax, qword ptr [r15]
	mov	r14, r13
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	test	cl, 8
	jne	.label_1627
	test	ecx, 0x100000
	jne	.label_1633
	mov	qword ptr [rsp + 0x20], rbx
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	cmp	ecx, 4
	jne	.label_1634
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	mov	rbx, rax
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1630
	cmp	rax, -1
	mov	r12, -1
	je	.label_1628
	cmp	rdi, -1
	je	.label_1628
	cmp	rax, rdi
	je	.label_1630
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rbp + 0x30]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	cmp	rax, rbx
	jl	.label_1628
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	mov	qword ptr [rsp + 8], rdi
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	jne	.label_1628
.label_1630:
	cmp	rax, rdi
	jne	.label_1632
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1628
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1628
	jmp	.label_1632
.label_1627:
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp + 0x10], rdx
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rsi, r13
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1628
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1628
	add	r14, 8
	lea	r15, [rbx + rax*8 + 8]
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	r12, -1
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_1637:
	mov	rbx, qword ptr [r13 + rbp*8]
	mov	rdi, r14
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1635
	cmp	r12, -1
	jne	.label_1636
	mov	r12, rbx
.label_1635:
	inc	rbp
	cmp	rbp, qword ptr [r15]
	jl	.label_1637
	jmp	.label_1628
.label_1633:
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	movsxd	rbx, eax
.label_1632:
	test	rbx, rbx
	jne	.label_1629
.label_1634:
	add	r14, qword ptr [r15]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	mov	ebx, 1
	test	al, al
	je	.label_1628
.label_1629:
	mov	rax, qword ptr [r15 + 0x18]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	add	rbx, qword ptr [rax]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1638
	mov	r12, -1
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1628
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	test	rdi, rdi
	je	.label_1628
	add	rdi, 8
	mov	rsi, r14
	call	re_node_set_contains
	test	rax, rax
	je	.label_1628
.label_1638:
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	jmp	.label_1628
.label_1636:
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rdi, rbp
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1631
	mov	r9, rbp
	mov	rdi, qword ptr [rsp + 0x60]
	test	rdi, rdi
	je	.label_1628
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	call	push_fail_stack
	mov	rbx, -2
	test	eax, eax
	je	.label_1628
.label_1631:
	mov	r12, rbx
.label_1628:
	mov	rax, r12
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
	#Procedure 0x412180

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
	jne	.label_1639
	mov	rdi, qword ptr [rbx + 0x10]
	shl	rax, 5
	lea	rsi, [rax + rax*2]
	call	realloc
	test	rax, rax
	je	.label_1640
	shl	qword ptr [rbx + 8], 1
	mov	qword ptr [rbx + 0x10], rax
.label_1639:
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
	je	.label_1640
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
.label_1640:
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
	.align	16
	#Procedure 0x412260
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_1641
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_1641
.label_1642:
	ret	
.label_1641:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_1642
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412290
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_1643
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1643:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4122b0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4122c0
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
	#Procedure 0x4122d0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_1644
.label_1645:
	ret	
.label_1644:
	cmp	edi, 0x7f
	je	.label_1645
	xor	eax, eax
	jmp	.label_1645
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4122f0
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
	#Procedure 0x412300
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
	#Procedure 0x412310
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
	#Procedure 0x412320
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
	#Procedure 0x412330
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_1646
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_1646
.label_1647:
	ret	
.label_1646:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_1647
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412360
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_1648
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_1648:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412380

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
	#Procedure 0x412390
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_1649
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_1649:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4123b0
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
	#Procedure 0x4123c0
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
	#Procedure 0x4123d0

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
	je	.label_1651
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_1650
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_1650
.label_1651:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_1650
	test	cl, cl
	jne	.label_1650
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_1650:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412440

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1652:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_1652
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_1655
	nop	word ptr cs:[rax + rax]
.label_1654:
	inc	rax
	mov	cl, dl
.label_1655:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_1654
	test	sil, sil
	je	.label_1656
	mov	dl, cl
	and	dl, 1
	je	.label_1653
	xor	ecx, ecx
.label_1653:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_1654
.label_1656:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4124a0

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_1658:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_1657
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_1658
.label_1657:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4124d0

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
	ja	.label_1659
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
	jmp	.label_1660
.label_1659:
	mov	eax, ebx
.label_1660:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412520

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
	.align	16
	#Procedure 0x412540

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_1662
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1663
	cmp	byte ptr [rax + 1], 0
	je	.label_1661
.label_1663:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_1662
.label_1661:
	xor	ebx, ebx
.label_1662:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x412580

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	je	.label_1664
	mov	rax, rcx
.label_1664:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4125b0

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
	#Procedure 0x4125c0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_1665
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1667
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_1665
.label_1667:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_1665
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_1666
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_1666:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1665:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412640

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_1668
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1668:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	cmp	esi, 0xb
	ja	.label_1674
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_1670
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_1673
	test	esi, esi
	jne	.label_1674
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1676
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1678
.label_1674:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_1671
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1673
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_1677
.label_1670:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1673:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1680
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1669
.label_1680:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1669:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1677:
	cmp	eax, 6
	jne	.label_1671
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1672
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1675
.label_1671:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1679
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1681
.label_1676:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1678:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_1672:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1675:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_1679:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1681:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412850

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
	#Procedure 0x412860

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_1682
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_1684
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_1684
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1686
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1685
.label_1684:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_1685
.label_1682:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1685:
	test	ebx, ebx
	js	.label_1686
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1686
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1683
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_1686
.label_1683:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1686:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412930

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1687
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_1687
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1687:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412960

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_1688
	ret	
.label_1688:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section .text
	.align	16
	#Procedure 0x412980

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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]