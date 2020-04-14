	.section	.text
	.align	16
	#Procedure 0x401af0

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	mov	rbp, rbp
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
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
.label_7:
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	call	exit
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c40

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	pop	rax
	lea	rsi, [rsi]
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401c80

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401cb0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.20
	nop	word ptr [rax + rax]
.label_10:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.6
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_8
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	add	rbx, 0x10
	lea	rsi, [rsi]
	test	rsi, rsi
	lea	rsi, [rsi]
	jne	.label_10
.label_8:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	lea	rsi, [rsi]
	mov	ebx, OFFSET FLAT:.str.6
	cmovne	rbx, rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_9
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.30
	mov	rbp, rbp
	mov	edx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.32
	mov	rbp, rbp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:.str.6
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.33
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.34
	mov	ecx, OFFSET FLAT:.str_0
	mov	rsp, rsp
	cmove	rcx, rax
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rdx
	nop	
	mov	rdx, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl main
	.type main, @function
main:
	push	rbp
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r14d, edi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	mov	rbp, rbp
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [word ptr [rip + separator]], OFFSET FLAT:.str.11
	mov	qword ptr [word ptr [rip + sentinel_length]],  1
	mov	byte ptr [byte ptr [rip + separator_ends_record]],  1
	nop	
	jmp	.label_23
.label_11:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator]],  rax
	nop	dword ptr [rax + rax]
.label_23:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r14d
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x61
	lea	rdi, [rdi]
	jle	.label_28
	mov	rbp, rbp
	cmp	eax, 0x73
	mov	rbp, rbp
	je	.label_11
	mov	rbp, rbp
	cmp	eax, 0x72
	mov	rbp, rbp
	je	.label_16
	cmp	eax, 0x62
	mov	rbp, rbp
	jne	.label_18
	mov	byte ptr [byte ptr [rip + separator_ends_record]],  0
	mov	rsp, rsp
	jmp	.label_23
.label_16:
	mov	qword ptr [word ptr [rip + sentinel_length]],  0
	jmp	.label_23
.label_28:
	nop	
	cmp	eax, -1
	mov	rsp, rsp
	jne	.label_24
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rdi]
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	je	.label_25
	mov	rsp, rsp
	mov	eax, 1
	test	cl, cl
	mov	rbp, rbp
	je	.label_30
	mov	rbp, rbp
	call	strlen
.label_30:
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + sentinel_length]],  rax
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + match_length]],  rax
	mov	rsp, rsp
	jmp	.label_32
.label_25:
	mov	rbp, rbp
	test	cl, cl
	je	.label_17
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [word ptr [rip + compiled_separator]],  xmm0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + label_20]], OFFSET FLAT:compiled_separator_fastmap
	mov	qword ptr [word ptr [rip + label_21]],  0
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + separator]]
	mov	rdi, rbp
	mov	rbp, rbp
	call	strlen
	mov	edx, OFFSET FLAT:compiled_separator
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rax
	call	rpl_re_compile_pattern
	mov	rsp, rsp
	mov	rcx, rax
	test	rcx, rcx
	jne	.label_31
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + sentinel_length]]
.label_32:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + read_size]],  0x2000
	mov	ecx, 0x2001
	cmp	rax, 0x1000
	nop	
	jb	.label_14
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + sentinel_length]]
	mov	edx, 0x2000
	movabs	rsi, 0x7ffffffffffffffe
	nop	dword ptr [rax + rax]
.label_26:
	test	rdx, rdx
	lea	rdi, [rdi]
	js	.label_12
	mov	rbp, rbp
	lea	rcx, [rdx + rdx]
	mov	qword ptr [word ptr [rip + read_size]],  rcx
	lea	rsi, [rsi]
	and	rdx, rsi
	lea	rdi, [rdi]
	cmp	rax, rdx
	mov	rdx, rcx
	jae	.label_26
	mov	rsp, rsp
	or	rcx, 1
.label_14:
	add	rax, rcx
	lea	rsi, [rsi]
	lea	rdi, [rax + rax]
	mov	qword ptr [word ptr [rip + G_buffer_size]],  rdi
	mov	rsp, rsp
	cmp	rax, rdi
	mov	rbp, rbp
	jae	.label_12
	nop	
	cmp	qword ptr [word ptr [rip + read_size]],  rax
	lea	rdi, [rdi]
	jae	.label_12
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + G_buffer]],  rax
	mov	rdx,  qword ptr [word ptr [rip + sentinel_length]]
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_22
	mov	rsi,  qword ptr [word ptr [rip + separator]]
	inc	rdx
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	mov	rax,  qword ptr [word ptr [rip + G_buffer]]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [rip + sentinel_length]]
	mov	rbp, rbp
	jmp	.label_29
.label_22:
	inc	rax
.label_29:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + G_buffer]],  rax
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	rsi, [rsi]
	cmp	eax, r14d
	mov	rsp, rsp
	lea	rax, [rbx + rax*8]
	lea	rsi, [rsi]
	mov	ebp, OFFSET FLAT:main.default_file_list
	cmovl	rbp, rax
	mov	rdi, qword ptr [rbp]
	nop	
	mov	bl, 1
	test	rdi, rdi
	je	.label_19
	add	rbp, 8
	mov	rsp, rsp
	mov	bl, 1
	nop	word ptr [rax + rax]
.label_15:
	mov	rbp, rbp
	call	tac_file
	nop	
	and	bl, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp]
	add	rbp, 8
	mov	rsp, rsp
	test	rdi, rdi
	jne	.label_15
.label_19:
	xor	edi, edi
	xor	esi, esi
	call	output
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	al, 1
	lea	rsi, [rsi]
	je	.label_13
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	call	close
	mov	rsp, rsp
	test	eax, eax
	jns	.label_13
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	xor	eax, eax
	call	error
.label_13:
	nop	
	not	bl
	mov	rsp, rsp
	and	bl, 1
	mov	rbp, rbp
	movzx	eax, bl
	add	rsp, 0x10
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_12:
	call	xalloc_die
.label_24:
	cmp	eax, 0xffffff7d
	nop	
	je	.label_27
	cmp	eax, 0xffffff7e
	mov	rbp, rbp
	jne	.label_18
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	call	usage
.label_27:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	nop	
	mov	qword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.14
	mov	r9d, OFFSET FLAT:.str.15
	lea	rsi, [rsi]
	xor	eax, eax
	call	version_etc
	lea	rdi, [rdi]
	xor	edi, edi
	call	exit
.label_18:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
.label_31:
	mov	rsp, rsp
	mov	edi, 1
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4022a0

	.globl tac_file
	.type tac_file, @function
tac_file:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	nop	
	mov	r14, rdi
	nop	
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_35
	cmp	byte ptr [r14 + 1], 0
	lea	rdi, [rdi]
	je	.label_39
.label_35:
	xor	ebp, ebp
	xor	esi, esi
	xor	eax, eax
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	call	open
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rbp, rbp
	test	ebx, ebx
	mov	rbp, rbp
	jns	.label_37
	lea	rdi, [rdi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	edi, 4
	nop	
	mov	rsi, r14
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	rbp, rbp
	jmp	.label_38
.label_39:
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	nop	
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbp, rbp
	mov	bpl, 1
.label_37:
	xor	esi, esi
	mov	edx, 2
	mov	rbp, rbp
	mov	edi, ebx
	lea	rsi, [rsi]
	call	lseek
	mov	r15, rax
	test	r15, r15
	js	.label_40
	mov	edi, ebx
	mov	rsp, rsp
	call	isatty
	mov	rsp, rsp
	test	eax, eax
	je	.label_34
.label_40:
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	rsi, r14
	call	tac_nonseekable
	jmp	.label_36
.label_34:
	mov	edi, ebx
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r15
	call	tac_seekable
.label_36:
	lea	rsi, [rsi]
	mov	r15b, al
	test	bpl, bpl
	jne	.label_33
	mov	edi, ebx
	mov	rsp, rsp
	call	close
	test	eax, eax
	je	.label_33
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	r15d, r15d
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, r14
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
.label_33:
	nop	
	test	r15b, r15b
	setne	bl
.label_38:
	nop	
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402440

	.globl output
	.type output, @function
output:
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r12, rdi
	mov	rdx,  qword ptr [word ptr [rip + output.bytes_in_buffer]]
	mov	ebx, 0x2000
	test	r12, r12
	je	.label_41
	sub	r14, r12
	sub	rbx, rdx
	mov	edi, OFFSET FLAT:output.buffer
	nop	
	add	rdi,  qword ptr [word ptr [rip + output.bytes_in_buffer]]
	mov	rbp, rbp
	cmp	r14, rbx
	jae	.label_43
	lea	rsi, [rsi]
	mov	r15, rdi
	mov	rsp, rsp
	jmp	.label_42
.label_41:
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	lea	rdi, [rdi]
	call	fwrite_unlocked
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_44
.label_43:
	mov	rbp, rbp
	mov	r15d, OFFSET FLAT:output.buffer
	nop	
.label_45:
	mov	rsi, r12
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rsp, rsp
	sub	r14, rbx
	add	r12, rbx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:output.buffer
	mov	esi, 1
	nop	
	mov	edx, 0x2000
	call	fwrite_unlocked
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + output.bytes_in_buffer]],  0
	nop	
	cmp	r14, 0x1fff
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:output.buffer
	mov	ebx, 0x2000
	mov	rsp, rsp
	ja	.label_45
.label_42:
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	add	r14,  qword ptr [word ptr [rip + output.bytes_in_buffer]]
.label_44:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + output.bytes_in_buffer]],  r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402560

	.globl tac_nonseekable
	.type tac_nonseekable, @function
tac_nonseekable:
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rax, rsi
	mov	ecx, edi
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	lea	rsi, [rsp]
	mov	edx, ecx
	mov	rcx, rax
	nop	
	call	copy_to_temp
	mov	rbx, rax
	test	rbx, rbx
	nop	
	js	.label_46
	mov	rdi, qword ptr [rsp + 8]
	call	fileno
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp]
	mov	rsp, rsp
	mov	edi, eax
	mov	rdx, rbx
	nop	
	call	tac_seekable
	jmp	.label_47
.label_46:
	mov	rbp, rbp
	xor	eax, eax
.label_47:
	add	rsp, 0x10
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4025c0

	.globl tac_seekable
	.type tac_seekable, @function
tac_seekable:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	nop	
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	mov	r13, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rsi, [rsi]
	mov	ebx, edi
	mov	rax,  qword ptr [word ptr [rip + separator]]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	r15b, byte ptr [rax]
	mov	rax,  qword ptr [word ptr [rip + match_length]]
	mov	qword ptr [rsp + 0x18], rax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r13
	div	qword ptr [word ptr [rip + read_size]]
	lea	rdi, [rdi]
	test	rdx, rdx
	lea	rdi, [rdi]
	je	.label_56
	lea	rsi, [rsi]
	sub	r13, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rsi, r13
	call	lseek
	lea	rsi, [rsi]
	test	rax, rax
	jns	.label_56
	mov	rsp, rsp
	call	__errno_location
	mov	r14d, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	ebp, ebx
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rsp, rsp
	mov	rdx, rbx
	mov	ebx, ebp
	mov	rsp, rsp
	call	error
.label_56:
	nop	
	mov	dword ptr [rsp + 0x20], ebx
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	mov	rbp, rbp
	mov	edi, ebx
	mov	rsp, rsp
	call	safe_read
	mov	rbx, rax
	nop	
	test	r13, r13
	mov	rbp, rbp
	je	.label_73
	nop	word ptr [rax + rax]
.label_77:
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_73
	nop	
	mov	rsi,  qword ptr [word ptr [rip + read_size]]
	neg	rsi
	mov	edx, 1
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	edi, ebx
	mov	rsp, rsp
	call	lseek
	nop	
	test	rax, rax
	jns	.label_57
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	lea	rdi, [rdi]
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	ebp, ebx
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	eax, eax
	nop	
	mov	esi, r14d
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	ebx, ebp
	mov	rbp, rbp
	call	error
.label_57:
	mov	rbp,  qword ptr [word ptr [rip + read_size]]
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	lea	rdi, [rdi]
	mov	edi, ebx
	nop	
	mov	rdx, rbp
	call	safe_read
	mov	rbx, rax
	nop	
	sub	r13, rbp
	jne	.label_77
.label_73:
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	mov	rsp, rsp
	cmp	rbx, rdx
	lea	rsi, [rsi]
	jne	.label_67
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r12
	nop	word ptr cs:[rax + rax]
.label_80:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	mov	edi, dword ptr [rsp + 0x20]
	call	safe_read
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	cmp	r12, -1
	lea	rdi, [rdi]
	je	.label_49
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_76
	add	r13, r12
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	mov	rsp, rsp
	cmp	r12, rdx
	lea	rsi, [rsi]
	mov	rbx, r12
	je	.label_80
	mov	rsp, rsp
	jmp	.label_74
.label_67:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r12
.label_76:
	lea	rsi, [rsi]
	cmp	rbx, -1
	mov	r12, rbx
	je	.label_49
.label_74:
	add	r12,  qword ptr [word ptr [rip + G_buffer]]
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	je	.label_51
	mov	ebx, 1
	sub	rbx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	add	rbx, r12
	mov	al, 1
	nop	
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_54
.label_51:
	mov	cl, 1
	mov	dword ptr [rsp + 0x24], ecx
	mov	rbx, r12
	jmp	.label_58
.label_49:
	call	__errno_location
	mov	rbp, rbp
	mov	r14d, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.42
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, qword ptr [rsp]
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	error
.label_63:
	mov	rsp, rsp
	mov	al, bl
	mov	rsp, rsp
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
.label_54:
	mov	rax,  qword ptr [word ptr [rip + sentinel_length]]
.label_58:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 8]
	lea	r13, [rcx + 1]
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rbp, [rcx - 1]
	nop	
.label_66:
	test	rax, rax
	je	.label_68
	nop	word ptr cs:[rax + rax]
.label_48:
	dec	rbx
	movzx	eax, r15b
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, eax
	jne	.label_48
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_53
	lea	rdi, [rbx + 1]
	mov	rsp, rsp
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	jne	.label_48
	mov	rsp, rsp
	jmp	.label_53
	nop	word ptr [rax + rax]
.label_68:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	lea	rsi, [rsi]
	mov	rax, rbx
	sub	rax, rsi
	mov	r8d, 1
	nop	
	sub	r8, rax
	sub	rbx, rsi
	js	.label_60
	je	.label_65
	mov	rsp, rsp
	mov	rcx, rbx
	dec	rcx
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:compiled_separator
	lea	rdi, [rdi]
	mov	r9d, OFFSET FLAT:regs
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	rpl_re_search
	cmp	rax, -1
	nop	
	je	.label_65
	nop	
	cmp	rax, -2
	mov	rsp, rsp
	je	.label_69
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_71]]
	mov	rax, qword ptr [rax]
	mov	rbx,  qword ptr [word ptr [rip + G_buffer]]
	mov	rbp, rbp
	add	rbx, rax
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + label_72]]
	mov	rcx, qword ptr [rcx]
	sub	rcx, rax
	nop	
	mov	qword ptr [word ptr [rip + match_length]],  rcx
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_65:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + G_buffer]]
	dec	rbx
.label_53:
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + G_buffer]]
	cmp	rbx, rdi
	jb	.label_81
	mov	rbp, rbp
	movzx	eax,  byte ptr [byte ptr [rip + separator_ends_record]]
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 1
	jne	.label_52
	mov	rbp, rbp
	mov	r14,  qword ptr [word ptr [rip + match_length]]
	add	r14, rbx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x24]
	lea	rsi, [rsi]
	test	al, 1
	je	.label_55
	cmp	r14, r12
	lea	rsi, [rsi]
	je	.label_78
.label_55:
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsi, r12
	call	output
.label_78:
	mov	dword ptr [rsp + 0x24], 0
	mov	r12, r14
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, r12
	call	output
	mov	r12, rbx
.label_62:
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	nop	
	mov	eax, 0
	nop	
	je	.label_66
	mov	eax, 1
	sub	rax,  qword ptr [word ptr [rip + match_length]]
	add	rbx, rax
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_54
.label_81:
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x10]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_70
	lea	rsi, [rsi]
	sub	r12, rdi
	nop	
	mov	rax,  qword ptr [word ptr [rip + read_size]]
	cmp	r12, rax
	mov	rbp, rbp
	jbe	.label_75
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + sentinel_length]]
	test	rcx, rcx
	mov	rbp, rbp
	mov	ebx, 1
	cmovne	rbx, rcx
	mov	rcx,  qword ptr [word ptr [rip + G_buffer_size]]
	mov	rbp, rbp
	lea	rdx, [rax + rax]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + read_size]],  rdx
	lea	rsi, [rsi]
	lea	rsi, [rax*4 + 2]
	lea	rdi, [rdi]
	add	rsi,  qword ptr [word ptr [rip + sentinel_length]]
	mov	qword ptr [word ptr [rip + G_buffer_size]],  rsi
	mov	rbp, rbp
	cmp	rsi, rcx
	jb	.label_79
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + G_buffer]]
	sub	rdi, rbx
	nop	
	call	xrealloc
	mov	rsp, rsp
	add	rax, rbx
	mov	qword ptr [word ptr [rip + G_buffer]],  rax
.label_75:
	mov	r13, rbp
	nop	
	sub	r13,  qword ptr [word ptr [rip + read_size]]
	mov	edi, dword ptr [rsp + 0x20]
	jae	.label_61
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + read_size]],  rbp
	nop	
	xor	r13d, r13d
.label_61:
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsi, r13
	lea	rsi, [rsi]
	call	lseek
	mov	rsp, rsp
	test	rax, rax
	nop	
	jns	.label_50
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_50:
	nop	
	mov	r14,  qword ptr [word ptr [rip + G_buffer]]
	mov	rax,  qword ptr [word ptr [rip + read_size]]
	mov	qword ptr [rsp + 0x10], rax
	lea	rbp, [r14 + rax]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	call	memmove
	mov	rsp, rsp
	add	r12, rbp
	nop	
	cmp	qword ptr [word ptr [rip + sentinel_length]],  0
	mov	rbx, r12
	nop	
	je	.label_59
	lea	rdi, [rdi]
	mov	rbx, rbp
.label_59:
	mov	edi, dword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	safe_read
	cmp	rax,  qword ptr [word ptr [rip + read_size]]
	nop	
	jne	.label_49
	lea	rsi, [rsi]
	jmp	.label_54
.label_70:
	mov	rsi, r12
	call	output
	mov	rsp, rsp
	mov	bl, 1
	jmp	.label_63
.label_60:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	nop	
	jmp	.label_64
.label_69:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
.label_64:
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_79:
	nop	
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cb0

	.globl copy_to_temp
	.type copy_to_temp, @function
copy_to_temp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbx, rcx
	mov	ebp, edx
	mov	r12, rsi
	mov	rbp, rbp
	mov	r13, rdi
	lea	rdi, [rsp + 0x10]
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	lea	rdi, [rdi]
	call	temp_stream
	nop	
	mov	r15, -1
	mov	rbp, rbp
	test	al, al
	je	.label_84
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbx
	mov	rbx, qword ptr [rsp + 0x10]
	xor	r15d, r15d
	nop	
.label_86:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + G_buffer]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + read_size]]
	mov	edi, ebp
	call	safe_read
	mov	rsp, rsp
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	je	.label_83
	cmp	r14, -1
	nop	
	je	.label_88
	nop	
	mov	rdi,  qword ptr [word ptr [rip + G_buffer]]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, rbx
	call	fwrite_unlocked
	add	r15, r14
	lea	rdi, [rdi]
	cmp	rax, r14
	lea	rsi, [rsi]
	je	.label_86
	jmp	.label_87
.label_83:
	mov	rdi, qword ptr [rsp + 0x10]
	call	fflush_unlocked
	test	eax, eax
	je	.label_82
.label_87:
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rbp, rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 8]
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	jmp	.label_85
.label_88:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp]
.label_85:
	call	quotearg_n_style_colon
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	error
	mov	r15, -1
.label_84:
	nop	
	mov	rax, r15
	mov	rsp, rsp
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_82:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [r13], rax
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	qword ptr [r12], rax
	nop	
	jmp	.label_84
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402e70

	.globl temp_stream
	.type temp_stream, @function
temp_stream:
	nop	
	push	rbp
	nop	
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + temp_stream.tempfile]],  0
	je	.label_91
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	mov	rsp, rsp
	call	clearerr_unlocked
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	xor	esi, esi
	xor	edx, edx
	lea	rsi, [rsi]
	call	rpl_fseeko
	test	eax, eax
	nop	
	js	.label_95
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, eax
	nop	
	call	ftruncate
	test	eax, eax
	lea	rsi, [rsi]
	jns	.label_94
.label_95:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	lea	rdi, [rdi]
	mov	edi, 4
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, r14d
	lea	rsi, [rsi]
	mov	rdx, rbp
	call	error
	jmp	.label_90
.label_91:
	mov	edi, OFFSET FLAT:.str.44
	nop	
	call	getenv
	lea	rdi, [rdi]
	test	rax, rax
	mov	ebp, OFFSET FLAT:.str.45
	cmovne	rbp, rax
	mov	esi, OFFSET FLAT:.str.46
	xor	edx, edx
	mov	rdi, rbp
	call	mfile_name_concat
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + temp_stream.tempfile]],  rax
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_93
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	mkstemp_safer
	mov	r15d, eax
	test	r15d, r15d
	mov	rsp, rsp
	js	.label_89
	mov	esi, OFFSET FLAT:.str.49
	lea	rsi, [rsi]
	mov	edi, r15d
	call	fdopen
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + temp_stream.tmp_fp]],  rax
	lea	rdi, [rdi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_92
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	mov	rbp, rbp
	call	record_or_unlink_tempfile
.label_94:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + temp_stream.tmp_fp]]
	nop	
	mov	qword ptr [rbx], rax
	mov	rax,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	mov	qword ptr [r14], rax
	mov	bl, 1
	mov	rsp, rsp
	jmp	.label_90
.label_93:
	xor	ebx, ebx
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rdi, [rdi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	call	error
	nop	
	jmp	.label_90
.label_89:
	call	__errno_location
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.48
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, rbp
	call	quotearg_style
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	mov	rdx, rbx
	nop	
	call	error
	jmp	.label_96
.label_92:
	nop	
	call	__errno_location
	lea	rdi, [rdi]
	mov	ebx, dword ptr [rax]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rax
	mov	rsi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	mov	edi, 4
	nop	
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
	lea	rsi, [rsi]
	mov	edi, r15d
	call	close
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	mov	rbp, rbp
	call	unlink
.label_96:
	mov	rdi,  qword ptr [word ptr [rip + temp_stream.tempfile]]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + temp_stream.tempfile]],  0
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_90:
	nop	
	mov	al, bl
	lea	rdi, [rdi]
	add	rsp, 8
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl record_or_unlink_tempfile
	.type record_or_unlink_tempfile, @function
record_or_unlink_tempfile:
	lea	rsi, [rsi]
	jmp	unlink
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403130
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403140
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403150

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	call	close_stream
	test	eax, eax
	je	.label_98
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_97
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_97
.label_98:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_100
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_97:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	lea	rdi, [rdi]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_99
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebp
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_100:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_99:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_1
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	lea	rsi, [rsi]
	mov	r8, r14
	call	error
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	mov	rbp, rbp
	call	_exit
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403250

	.globl mfile_name_concat
	.type mfile_name_concat, @function
mfile_name_concat:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x18
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	mov	r14, rsi
	mov	r13, rdi
	call	last_component
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	base_len
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	sub	rbx, r13
	add	rbx, rbp
	lea	rsi, [rsi]
	mov	rdi, r14
	call	strlen
	mov	r15, rax
	test	rbp, rbp
	je	.label_102
	movzx	ecx, byte ptr [rbx + r13 - 1]
	lea	rdi, [rdi]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_107
	mov	qword ptr [rsp + 8], r14
	lea	rdi, [rdi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	jmp	.label_106
.label_102:
	movzx	ecx, byte ptr [r14]
	mov	r12b, 0x2e
	lea	rsi, [rsi]
	cmp	ecx, 0x2f
	mov	rbp, rbp
	je	.label_103
	jmp	.label_104
.label_107:
	nop	
	movzx	ecx, byte ptr [r14]
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	jne	.label_108
.label_104:
	xor	r12d, r12d
	jmp	.label_103
.label_108:
	mov	r12b, 0x2f
.label_103:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r14
.label_106:
	test	r12b, r12b
	nop	
	setne	cl
	movzx	ebp, cl
	nop	
	lea	rcx, [r15 + rbx]
	lea	rdi, [rbp + rcx + 1]
	lea	rdi, [rdi]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_105
	mov	rcx, -1
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	__mempcpy_chk
	mov	byte ptr [rax], r12b
	lea	rsi, [rsi]
	add	rbp, rax
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x10]
	test	rax, rax
	je	.label_101
	mov	rsp, rsp
	mov	qword ptr [rax], rbp
.label_101:
	nop	
	mov	rcx, -1
	mov	rdi, rbp
	nop	
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	call	__mempcpy_chk
	mov	byte ptr [rax], 0
	nop	
	mov	rax, r14
.label_105:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4033a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_109
	mov	esi, 0x2f
	mov	rbp, rbp
	mov	rdi, rbx
	call	strrchr
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	lea	r14, [rax + 1]
	lea	rdi, [rdi]
	cmove	r14, rbx
	mov	rax, r14
	nop	
	sub	rax, rbx
	mov	rbp, rbp
	cmp	rax, 7
	lea	rsi, [rsi]
	jl	.label_111
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_111
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_110
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_110:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_111:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_109:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403490
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rbp, rbp
	call	__errno_location
	mov	r14, rax
	mov	rbp, rbp
	mov	ebp, dword ptr [r14]
	test	rbx, rbx
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmove	rbx, rax
	mov	rsp, rsp
	mov	esi, 0x38
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	xmemdup
	nop	
	mov	dword ptr [r14], ebp
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034e0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	eax, dword ptr [rax]
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403500
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	nop	
	cmovne	rax, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rax], esi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403520

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	mov	ecx, esi
	nop	
	test	rdi, rdi
	mov	esi, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	cmovne	rsi, rdi
	mov	al, cl
	lea	rdi, [rdi]
	shr	al, 5
	mov	rbp, rbp
	movzx	r8d, al
	mov	rsp, rsp
	mov	r9d, dword ptr [rsi + r8*4 + 8]
	mov	rsp, rsp
	mov	edi, r9d
	mov	rsp, rsp
	shr	edi, cl
	lea	rdi, [rdi]
	mov	eax, edi
	mov	rsp, rsp
	and	eax, 1
	mov	rsp, rsp
	xor	edi, edx
	mov	rbp, rbp
	and	edi, 1
	mov	rsp, rsp
	shl	edi, cl
	lea	rsi, [rsi]
	xor	edi, r9d
	mov	rbp, rbp
	mov	dword ptr [rsi + r8*4 + 8], edi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	test	rdi, rdi
	nop	
	mov	ecx, OFFSET FLAT:default_quoting_options
	cmovne	rcx, rdi
	mov	eax, dword ptr [rcx + 4]
	mov	rsp, rsp
	mov	dword ptr [rcx + 4], esi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035b0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	lea	rdi, [rdi]
	cmovne	rax, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_112
	test	rdx, rdx
	nop	
	je	.label_112
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_112:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4035f0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	nop	
	mov	r15, rdx
	mov	r12, rsi
	mov	r13, rdi
	lea	rdi, [rdi]
	test	r8, r8
	mov	ebp, OFFSET FLAT:default_quoting_options
	cmovne	rbp, r8
	call	__errno_location
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	mov	r14d, dword ptr [rbx]
	mov	r8d, dword ptr [rbp]
	mov	r9d, dword ptr [rbp + 4]
	mov	rax, qword ptr [rbp + 0x28]
	mov	rcx, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	lea	rdx, [rbp + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rdx
	nop	
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	quotearg_buffer_restyled
	mov	dword ptr [rbx], r14d
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	nop	
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403690

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	sub	rsp, 0x108
	mov	ebx, r9d
	nop	
	mov	dword ptr [rsp + 0x6c], ebx
	mov	r13d, r8d
	mov	qword ptr [rsp + 0xc0], rcx
	mov	r12, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x150]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0x90], rax
	call	__ctype_get_mb_cur_max
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rax
	mov	r15b, bl
	mov	rbp, rbp
	shr	r15b, 1
	mov	rbp, rbp
	and	r15b, 1
	nop	
	mov	eax, ebx
	and	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	rsp, rsp
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xa8], rax
	lea	rsi, [rsi]
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xd0], rax
	mov	eax, 0
	mov	rbp, rbp
	xor	r11d, r11d
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_224:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_164
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_205]]
.label_1812:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r13d
	mov	rsp, rsp
	call	gettext_quote
	mov	rsp, rsp
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	nop	
	mov	r10, r14
	nop	
	mov	qword ptr [rsp + 0x88], rax
.label_1813:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	rbp, rbp
	test	r15b, 1
	mov	rbp, rbp
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xf0], rax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_114
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_114
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_153:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_142
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_142:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	al, byte ptr [rdx + rcx + 1]
	lea	rdi, [rdi]
	inc	rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rbp, rbp
	test	al, al
	jne	.label_153
.label_114:
	mov	rbx, qword ptr [rsp + 0x88]
	mov	rbp, rbp
	mov	rdi, rbx
	mov	r12, r10
	nop	
	call	strlen
	mov	r10, r12
	mov	qword ptr [rsp + 0xd0], rax
	lea	rdi, [rdi]
	mov	r14d, r13d
	mov	qword ptr [rsp + 0xa8], rbx
	mov	sil, 1
	mov	rbp, rbp
	mov	dil, r15b
	mov	r8b, byte ptr [rsp + 0x69]
	mov	rsp, rsp
	mov	r9, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	nop	
	jmp	.label_140
.label_1805:
	lea	rsi, [rsi]
	xor	r14d, r14d
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	jmp	.label_140
.label_1808:
	mov	rsp, rsp
	mov	al, 1
.label_1806:
	mov	r15b, 1
.label_1809:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_193
	mov	cl, al
.label_193:
	lea	rdi, [rdi]
	mov	al, cl
.label_1807:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_195
	test	r10, r10
	je	.label_201
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_204
.label_195:
	xor	ecx, ecx
	jmp	.label_204
.label_1810:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_215
	test	r10, r10
	je	.label_233
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_133
.label_1811:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_140
.label_201:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_204:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_140
.label_215:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_133
.label_233:
	mov	rbp, rbp
	mov	eax, 1
.label_133:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_140:
	mov	qword ptr [rsp + 0x98], rdi
	mov	byte ptr [rsp + 0xa6], sil
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x140], 0
	lea	rsi, [rsi]
	setne	bl
	cmp	r14d, 2
	lea	rsi, [rsi]
	setne	r15b
	mov	rsp, rsp
	sete	dl
	mov	rbp, rbp
	mov	cl, sil
	and	cl, 1
	mov	byte ptr [rsp + 0xa5], cl
	sete	byte ptr [rsp + 0x6b]
	lea	rdi, [rdi]
	mov	r12b, r15b
	and	r12b, cl
	mov	byte ptr [rsp + 0xbf], r12b
	cmp	qword ptr [rsp + 0xd0], 0
	mov	rsp, rsp
	setne	r13b
	mov	al, r13b
	and	al, r12b
	mov	rbp, rbp
	mov	byte ptr [rsp + 0xdf], al
	mov	al, dil
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rsp + 0xcf], al
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	and	dl, al
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x7f], dl
	and	bl, al
	mov	byte ptr [rsp + 0xb7], bl
	or	cl, r15b
	mov	byte ptr [rsp + 0xa7], cl
	nop	
	and	sil, dil
	mov	rsp, rsp
	and	sil, r13b
	mov	byte ptr [rsp + 0x6a], sil
	nop	
	xor	esi, esi
	mov	rsp, rsp
	jmp	.label_151
	nop	word ptr [rax + rax]
.label_178:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_151:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_209
	cmp	rsi, rbp
	jne	.label_187
	jmp	.label_213
	nop	word ptr cs:[rax + rax]
.label_209:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_213
.label_187:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_220
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_170
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_170
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, rbp
	mov	rdi, r9
	mov	rbp, rbp
	mov	rbp, r10
	nop	
	mov	r15b, r8b
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rsi, [rsi]
	mov	r12, r9
	mov	r14, rsi
	lea	rdi, [rdi]
	call	strlen
	mov	rsp, rsp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	mov	r9, r12
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	r14, r13
	lea	rdi, [rdi]
	mov	r8b, r15b
	mov	rbp, rbp
	mov	r10, rbp
	mov	rbp, rax
.label_170:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_129
.label_220:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_185:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_136
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_143]]
.label_1827:
	test	rsi, rsi
	jne	.label_150
	jmp	.label_152
	nop	word ptr [rax + rax]
.label_129:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12d, r11d
	lea	rsi, [rsi]
	mov	r13, r14
	lea	rdi, [rdi]
	mov	r15b, r8b
	mov	rbx, r10
	lea	rdi, [r9 + rsi]
	mov	r14, rsi
	mov	rbp, r9
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xa8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xd0]
	mov	rbp, rbp
	call	memcmp
	mov	rsp, rsp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_174
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_185
	mov	rsp, rsp
	jmp	.label_159
.label_174:
	mov	rbp, rbp
	mov	r10, rbx
	mov	rbp, rbp
	mov	r8b, r15b
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	r9, rbp
	nop	
	mov	r11d, r12d
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0xc0]
	nop	
	mov	r12b, byte ptr [rsp + 0xbf]
	nop	
	mov	rsi, r14
	jmp	.label_185
.label_1831:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_197
	test	rsi, rsi
	nop	
	jne	.label_161
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_152
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_118
.label_1820:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_214
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_159
	cmp	edi, 2
	nop	
	jne	.label_180
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_222
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_167
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_167:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_232:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_117
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_117:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_128
.label_1821:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_135
.label_1822:
	mov	cl, 0x74
	jmp	.label_141
.label_1823:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_135
.label_1824:
	mov	bl, 0x66
	jmp	.label_135
.label_1825:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_141
.label_1828:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_183
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_139
	nop	
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x80]
	mov	rdx, rcx
	lea	rdi, [rdi]
	test	rdx, rdx
	nop	
	setne	cl
	nop	
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x80], rdx
	mov	eax, 0
	mov	rsp, rsp
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_162
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_162:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_181
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_181:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_188
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_196
.label_1829:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_202
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_212
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_139
.label_212:
	mov	rdi, r14
	jmp	.label_150
.label_1830:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_218
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_139
	mov	rdi, r14
	jmp	.label_225
.label_136:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_227
	mov	rbp, rbp
	mov	r14, r9
	mov	rbx, rsi
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsi, rbx
	nop	
	mov	r9, r14
	mov	rax, qword ptr [rax]
	movzx	r15d, word ptr [rax + r13*2]
	mov	rsp, rsp
	shr	r15d, 0xe
	lea	rdi, [rdi]
	and	r15b, 1
	lea	rsi, [rsi]
	mov	ebx, 1
.label_176:
	lea	rdi, [rdi]
	and	r15b, 1
	mov	dl, r15b
	or	dl, byte ptr [rsp + 0x6b]
	mov	byte ptr [rsp + 0xc0], dl
	cmp	rbx, 1
	mov	rcx, rbx
	mov	r10, qword ptr [rsp + 0x40]
	mov	r8b, byte ptr [rsp + 0x69]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rsp + 0xb8]
	lea	rdi, [rdi]
	ja	.label_124
	test	dl, dl
	mov	rsp, rsp
	je	.label_124
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_118
.label_197:
	test	rsi, rsi
	jne	.label_147
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_147
.label_152:
	mov	rbp, rbp
	mov	dl, 1
.label_1826:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_159
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_118
.label_214:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_150
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_151
.label_183:
	mov	rdi, r14
.label_196:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_118
.label_218:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_141
.label_225:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_155
.label_141:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_159
.label_135:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_118
	lea	rsi, [rsi]
	jmp	.label_126
.label_227:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_192
	mov	rsp, rsp
	mov	rdi, r9
	mov	rbx, r9
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rsp, rsp
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_192:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	r15b, 1
	xor	ebx, ebx
	lea	rsi, [rsi]
	lea	r14, [rsp + 0x100]
.label_166:
	lea	rax, [rbx + rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	lea	rsi, [r9 + rax]
	mov	qword ptr [rsp + 0x48], r9
	mov	rbp, rbp
	mov	rdx, rbp
	mov	rbp, rbp
	sub	rdx, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0xfc]
	nop	
	mov	rcx, r14
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	je	.label_228
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	lea	rsi, [rsi]
	mov	r10, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	nop	
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rdi, [rdi]
	je	.label_231
	cmp	rbp, -2
	nop	
	je	.label_122
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_207
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_145:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_160
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_144
.label_160:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_145
.label_207:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_217
	xor	r15d, r15d
.label_217:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	lea	rdi, [rdi]
	add	rbx, rbp
	mov	r14, rdi
	nop	
	call	mbsinit
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	je	.label_166
	jmp	.label_176
.label_147:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_118
.label_202:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_150
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_150
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_150
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_189
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_191
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_159
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_172
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_172:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_182
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_182:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_165
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_165:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_211
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_211:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_118
.label_150:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_118:
	test	r12b, r12b
	je	.label_210
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_132
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_210:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_130
.label_132:
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	esi, 1
	mov	rsp, rsp
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_158
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_155
	jmp	.label_126
	nop	word ptr cs:[rax + rax]
.label_130:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_126
	jmp	.label_155
.label_158:
	mov	bl, r13b
	mov	rsi, r14
.label_126:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_159
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_175
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_175
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_119
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_119:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_184
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_223
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_223:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_175:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_206
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_206:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_216
.label_161:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_118
.label_124:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_134
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_134:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_230
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_127
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_115
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_115:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_127
	nop	dword ptr [rax]
.label_230:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_139
	cmp	r14d, 2
	jne	.label_177
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_177
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_149
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_149:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_154
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_154:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_169
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_169:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_177:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_125
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_125:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_179
	mov	dl, r13b
	mov	rsp, rsp
	shr	dl, 6
	or	dl, 0x30
	mov	rsp, rsp
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	lea	rsi, [rsi]
	mov	rsi, rdi
.label_179:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_198
	mov	dl, r13b
	shr	dl, 3
	nop	
	and	dl, 7
	or	dl, 0x30
	nop	
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_198:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_127:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_155
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_226
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_123
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_229
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_229:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_116
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_116:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_123
	nop	word ptr cs:[rax + rax]
.label_226:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_123:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_163
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_163
	nop	word ptr cs:[rax + rax]
.label_155:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_157
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_157
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_121
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_121:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_168
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_168:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_216
	nop	word ptr cs:[rax + rax]
.label_157:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_216:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_178
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_178
.label_180:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_128
.label_222:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_128:
	cmp	rcx, r10
	jae	.label_199
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_199:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_208
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_194
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_221
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_173
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_173:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_234
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_234:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_118
.label_208:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_118
.label_194:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_118
.label_221:
	xor	r15d, r15d
	jmp	.label_118
.label_228:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_148
.label_231:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_146
.label_122:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_156
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_171:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_138
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_171
	xor	r15d, r15d
	nop	
	jmp	.label_148
.label_156:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_146:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_148:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_176
.label_138:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_148
.label_189:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_118
.label_191:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_118
	nop	word ptr cs:[rax + rax]
.label_213:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_190
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_139
.label_190:
	nop	
	mov	qword ptr [rsp + 0xc0], rbp
	mov	rsp, rsp
	mov	r12, r9
	nop	
	test	cl, cl
	setne	al
	lea	rdi, [rdi]
	cmp	r14d, 2
	nop	
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	lea	rdi, [rdi]
	test	sil, 1
	lea	rdi, [rdi]
	je	.label_203
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_203
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_219
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_203
	lea	rdi, [rdi]
	test	r10, r10
	nop	
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	mov	r15b, dl
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_224
.label_203:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_113
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_113
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_113
	inc	rdx
	nop	dword ptr [rax + rax]
.label_131:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_120
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_120:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_131
.label_113:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_137
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_137
.label_159:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_186:
	lea	rsi, [rsi]
	test	r8b, 1
	lea	rsi, [rsi]
	mov	r8d, 4
	cmove	r8d, r14d
	lea	rsi, [rsi]
	cmp	r14d, 2
	mov	rbp, rbp
	cmovne	r8d, r14d
	nop	
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp + 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	rsi, r10
	mov	rcx, rbp
.label_200:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_137:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	nop	
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
.label_144:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_186
.label_139:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_186
.label_219:
	mov	rax, qword ptr [rsp + 0x88]
	mov	qword ptr [rsp + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x90]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rdx, r12
	nop	
	mov	rcx, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_200
.label_164:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404de0
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	mov	rax, rdx
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, rax
	mov	rbp, rbp
	jmp	quotearg_alloc_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404e00

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rbx
	mov	rsp, rsp
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r14
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], r15
	test	rcx, rcx
	mov	r12d, OFFSET FLAT:default_quoting_options
	lea	rsi, [rsi]
	cmovne	r12, rcx
	mov	rbp, rbp
	call	__errno_location
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x44], ecx
	test	rbx, rbx
	lea	rsi, [rsi]
	sete	al
	movzx	ebp, al
	lea	rsi, [rsi]
	or	ebp, dword ptr [r12 + 4]
	mov	rbp, rbp
	mov	r8d, dword ptr [r12]
	lea	r13, [r12 + 8]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	nop	
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp], r13
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	mov	rdx, r15
	mov	rcx, r14
	lea	rsi, [rsi]
	mov	r9d, ebp
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	r15, [rbx + 1]
	lea	rsi, [rsi]
	mov	rdi, r15
	call	xcharalloc
	nop	
	mov	r14, rax
	lea	rsi, [rsi]
	mov	r8d, dword ptr [r12]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x28]
	mov	rcx, qword ptr [r12 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp], r13
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	test	rax, rax
	mov	ecx, dword ptr [rsp + 0x44]
	mov	rdx, qword ptr [rsp + 0x38]
	mov	dword ptr [rdx], ecx
	je	.label_235
	mov	qword ptr [rax], rbx
.label_235:
	mov	rax, r14
	mov	rsp, rsp
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
	#Procedure 0x404f50
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_236
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_239:
	mov	rdi, qword ptr [r15]
	nop	
	call	free
	mov	rbp, rbp
	inc	rbx
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	lea	rsi, [rsi]
	add	r15, 0x10
	cmp	rbx, rax
	mov	rsp, rsp
	jl	.label_239
.label_236:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_238
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_240]], OFFSET FLAT:slot0
.label_238:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_237
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_237:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405020

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x48
	nop	
	mov	r12, rcx
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rsi
	mov	ebx, edi
	call	__errno_location
	test	ebx, ebx
	js	.label_244
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_246
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_242
.label_246:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_247
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	mov	rsp, rsp
	mov	r13d, OFFSET FLAT:slotvec0
	xor	edi, edi
	cmp	rbp, r13
	cmovne	rdi, rbp
	mov	rsp, rsp
	lea	r15d, [rbx + 1]
	mov	rbp, rbp
	movsxd	rsi, ebx
	shl	rsi, 4
	add	rsi, 0x10
	call	xrealloc
	mov	r14, rax
	cmp	rbp, r13
	mov	qword ptr [word ptr [rip + slotvec]],  r14
	jne	.label_243
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_243:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	movsxd	rbp, r15d
	mov	rdx, rbp
	sub	rdx, rax
	shl	rax, 4
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rdi, rax
	lea	rsi, [rsi]
	shl	rdx, 4
	xor	esi, esi
	call	memset
	mov	dword ptr [dword ptr [rip + nslots]],  ebp
	mov	rbp, rbp
	mov	rbp, r14
	mov	r14, qword ptr [rsp + 0x38]
.label_242:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	movsxd	r13, ebx
	mov	rsp, rsp
	shl	r13, 4
	mov	r15, qword ptr [rbp + r13]
	mov	rbx, qword ptr [rbp + r13 + 8]
	nop	
	mov	rcx, r12
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	mov	r8d, dword ptr [rcx]
	mov	r12d, dword ptr [rcx + 4]
	or	r12d, 1
	mov	rsp, rsp
	lea	rdx, [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rdx
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x40]
	nop	
	mov	rcx, r14
	lea	rdi, [rdi]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	nop	
	mov	r14, rax
	cmp	r15, r14
	ja	.label_241
	nop	
	lea	rax, [rbp + r13]
	lea	rsi, [rsi]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	lea	rdi, [rdi]
	mov	qword ptr [rax], r14
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	mov	rbp, rbp
	je	.label_245
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_245:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	xcharalloc
	mov	rbx, rax
	nop	
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + 0x28]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	r9d, r12d
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
.label_241:
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 0x2c]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x48
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_244:
	lea	rdi, [rdi]
	call	abort
.label_247:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405290

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052a0
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	rsi, rax
	jmp	quotearg_n
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4052c0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	rdx, rax
	jmp	quotearg_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4052e0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop
	push	rbp
	mov	rbp, rbp
	push	r14
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	rbx, rdx
	mov	ebp, edi
	nop	
	lea	r14, [rsp + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	call	quoting_options_from_style
	mov	rdx, -1
	mov	edi, ebp
	mov	rsi, rbx
	mov	rcx, r14
	call	quotearg_n_options
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405340

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	sub	rsp, 0x38
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], 0
	cmp	esi, 0xa
	mov	rbp, rbp
	je	.label_248
	mov	dword ptr [rdi], esi
	nop	
	mov	eax, dword ptr [rsp + 0x30]
	mov	dword ptr [rdi + 0x34], eax
	lea	rsi, [rsi]
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	nop	
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rdi + 0x24], xmm2
	movups	xmmword ptr [rdi + 0x14], xmm1
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi + 4], xmm0
	lea	rdi, [rdi]
	mov	rax, rdi
	add	rsp, 0x38
	mov	rbp, rbp
	ret	
.label_248:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4053b0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x38
	nop	
	mov	r14, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	r15, [rsp]
	nop	
	mov	rdi, r15
	call	quoting_options_from_style
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rcx, r15
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405410

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	mov	rax, rsi
	mov	rbp, rbp
	mov	ecx, edi
	xor	edi, edi
	mov	esi, ecx
	mov	rbp, rbp
	mov	rdx, rax
	jmp	quotearg_n_style
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405430
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	mov	rax, rdx
	mov	rcx, rsi
	lea	rsi, [rsi]
	mov	edx, edi
	xor	edi, edi
	mov	esi, edx
	mov	rdx, rcx
	mov	rcx, rax
	jmp	quotearg_n_style_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405450

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	eax, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_249]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_250]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_251]]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	rbp, rbp
	lea	r15, [rsp]
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	esi, eax
	mov	rbp, rbp
	call	set_char_quoting
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rbx
	nop	
	mov	rdx, r14
	mov	rsp, rsp
	mov	rcx, r15
	call	quotearg_n_options
	nop	
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4054f0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	mov	eax, esi
	lea	rdi, [rdi]
	mov	rsi, -1
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rbp, rbp
	jmp	quotearg_char_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405510

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405520
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405530

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	push	rbp
	push	r14
	push	rbx
	sub	rsp, 0x40
	mov	r14, rdx
	mov	ebp, edi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 8]
	mov	rdi, rbx
	mov	rbp, rbp
	call	quoting_options_from_style
	nop	
	mov	esi, 0x3a
	lea	rdi, [rdi]
	mov	edx, 1
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	set_char_quoting
	mov	rdx, -1
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rcx, rbx
	mov	rsp, rsp
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x40
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4055b0

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	nop	
	mov	r14, r8
	mov	rbp, rbp
	mov	rbx, rcx
	mov	ebp, edi
	mov	rax,  qword ptr [word ptr [rip + label_249]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_250]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_251]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp], xmm0
	lea	r15, [rsp]
	mov	rdi, r15
	call	set_custom_quoting
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	mov	rcx, r15
	mov	rsp, rsp
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x38
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405640
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	mov	rax, rdx
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rdx, rdi
	nop	
	xor	edi, edi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	jmp	quotearg_n_custom
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405670
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	mov	rax, rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, rsi
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	r8, rax
	mov	rsp, rsp
	jmp	quotearg_n_custom_mem
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	nop	
	mov	rcx, rdi
	xor	edi, edi
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rdx, rax
	lea	rsi, [rsi]
	jmp	quote_n_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056d0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4056e0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	quote_n
	.section	.text
	.align	16
	#Procedure 0x4056f0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0x10
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	mov	rbp, rbp
	call	dcgettext
	cmp	rax, rbx
	mov	rsp, rsp
	jne	.label_252
	mov	rsp, rsp
	call	locale_charset
	mov	rbp, rax
	mov	dword ptr [rsp + 8], 0
	mov	rsp, rsp
	mov	dword ptr [rsp], 0
	nop	
	mov	esi, 0x55
	mov	rbp, rbp
	mov	edx, 0x54
	mov	rsp, rsp
	mov	ecx, 0x46
	mov	r8d, 0x2d
	mov	r9d, 0x38
	mov	rdi, rbp
	call	strcaseeq0
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_253
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_252
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_252
.label_253:
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], 0x30
	mov	dword ptr [rsp], 0x33
	lea	rdi, [rdi]
	mov	esi, 0x47
	nop	
	mov	edx, 0x42
	mov	ecx, 0x31
	mov	rbp, rbp
	mov	r8d, 0x38
	mov	rsp, rsp
	mov	r9d, 0x30
	mov	rdi, rbp
	call	strcaseeq0
	test	eax, eax
	mov	rbp, rbp
	je	.label_254
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_252
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_252
.label_254:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_252:
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405820

	.globl strcaseeq0
	.type strcaseeq0, @function
strcaseeq0:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r14d, r9d
	mov	r15d, r8d
	mov	r12d, ecx
	nop	
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	test	al, al
	je	.label_256
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_255
	jmp	.label_257
.label_256:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_257
.label_255:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_257
	mov	al, byte ptr [rsp + 0x40]
	movsx	ecx, byte ptr [rsp + 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], ecx
	movsx	esi, r13b
	movsx	edx, r12b
	nop	
	movsx	ecx, r15b
	nop	
	movsx	r8d, r14b
	mov	rbp, rbp
	movsx	r9d, al
	mov	rdi, rbx
	call	strcaseeq1
.label_257:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl strcaseeq1
	.type strcaseeq1, @function
strcaseeq1:
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	mov	rbp, rbp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	mov	rsp, rsp
	mov	ebp, esi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	r14b, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 1]
	nop	
	test	al, al
	mov	rsp, rsp
	je	.label_260
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_259
	lea	rsi, [rsi]
	jmp	.label_258
.label_260:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_258
.label_259:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_258
	nop	
	movsx	esi, r13b
	mov	rbp, rbp
	movsx	edx, r12b
	lea	rdi, [rdi]
	movsx	ecx, r15b
	mov	eax, dword ptr [rsp + 4]
	movsx	r8d, al
	lea	rdi, [rdi]
	movsx	r9d, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq2
.label_258:
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059d0

	.globl strcaseeq2
	.type strcaseeq2, @function
strcaseeq2:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r14d, r9d
	lea	rdi, [rdi]
	mov	r15d, r8d
	mov	rbp, rbp
	mov	r12d, ecx
	mov	r13d, edx
	lea	rsi, [rsi]
	mov	ebp, esi
	mov	rbx, rdi
	nop	
	mov	edi, ebp
	call	c_isupper
	mov	rbp, rbp
	movsx	ecx, byte ptr [rbx + 2]
	test	al, al
	je	.label_263
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_262
	jmp	.label_261
.label_263:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_261
.label_262:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_261
	lea	rdi, [rdi]
	movsx	esi, r13b
	movsx	edx, r12b
	movsx	ecx, r15b
	movsx	r8d, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	jmp	strcaseeq3
.label_261:
	mov	rsp, rsp
	add	rsp, 8
	mov	rbp, rbp
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
	#Procedure 0x405aa0

	.globl strcaseeq3
	.type strcaseeq3, @function
strcaseeq3:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r14d, r8d
	mov	r15d, ecx
	mov	rbp, rbp
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rbx + 3]
	nop	
	test	al, al
	je	.label_266
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_265
	jmp	.label_264
.label_266:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_264
.label_265:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_264
	movsx	esi, r12b
	mov	rsp, rsp
	movsx	edx, r15b
	mov	rsp, rsp
	movsx	ecx, r14b
	nop	
	mov	rdi, rbx
	pop	rbx
	nop	
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
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b40

	.globl strcaseeq4
	.type strcaseeq4, @function
strcaseeq4:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14d, ecx
	lea	rdi, [rdi]
	mov	r15d, edx
	nop	
	mov	ebp, esi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, ebp
	nop	
	call	c_isupper
	nop	
	movsx	ecx, byte ptr [rbx + 4]
	mov	rbp, rbp
	test	al, al
	mov	rbp, rbp
	je	.label_269
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_268
	nop	
	jmp	.label_267
.label_269:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_267
.label_268:
	mov	eax, 1
	test	bpl, bpl
	je	.label_267
	lea	rdi, [rdi]
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	jmp	strcaseeq5
.label_267:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405be0

	.globl strcaseeq5
	.type strcaseeq5, @function
strcaseeq5:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	r14d, edx
	mov	rsp, rsp
	mov	ebp, esi
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 5]
	lea	rsi, [rsi]
	test	al, al
	nop	
	je	.label_272
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_271
	lea	rsi, [rsi]
	jmp	.label_270
.label_272:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_270
.label_271:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_270
	movsx	esi, r14b
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	jmp	strcaseeq6
.label_270:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405c70

	.globl strcaseeq6
	.type strcaseeq6, @function
strcaseeq6:
	nop
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	nop	
	mov	ebp, esi
	nop	
	mov	rbx, rdi
	mov	edi, ebp
	call	c_isupper
	mov	rsp, rsp
	movsx	ecx, byte ptr [rbx + 6]
	test	al, al
	mov	rsp, rsp
	je	.label_275
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_274
	jmp	.label_273
.label_275:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_273
.label_274:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_273
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_273:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ce0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	xor	edi, edi
	lea	rsi, [rsi]
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	je	.label_276
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_278
	mov	rbp, rbp
	jmp	.label_277
.label_276:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_277
.label_278:
	xor	eax, eax
.label_277:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d30

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	r14, rsi
	mov	r15d, edi
	mov	r12d, 0x7ff00000
	nop	word ptr [rax + rax]
.label_279:
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_280
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_279
	cmp	eax, 0x16
	lea	rsi, [rsi]
	sete	cl
	nop	
	cmp	rbx, 0x7ff00000
	seta	dl
	and	dl, cl
	mov	rbp, rbp
	mov	rcx, rbx
	lea	rsi, [rsi]
	cmovne	rcx, r12
	lea	rdi, [rdi]
	test	dl, dl
	mov	rsp, rsp
	cmovne	rbp, r13
	mov	rbp, rbp
	cmp	rbx, 0x7ff00001
	mov	rbp, rbp
	jb	.label_280
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_279
.label_280:
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405e10

	.globl mkstemp_safer
	.type mkstemp_safer, @function
mkstemp_safer:
	push	rax
	call	mkstemp
	lea	rsi, [rsi]
	mov	edi, eax
	pop	rax
	lea	rsi, [rsi]
	jmp	fd_safer
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405e30
	.globl mkostemp_safer
	.type mkostemp_safer, @function
mkostemp_safer:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	nop	
	call	mkostemp
	mov	rsp, rsp
	mov	edi, eax
	mov	esi, ebx
	mov	rsp, rsp
	pop	rbx
	jmp	fd_safer_flag
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405e50

	.globl fd_safer
	.type fd_safer, @function
fd_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	ja	.label_281
	mov	edi, ebx
	call	dup_safer
	mov	r14d, eax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	mov	rsp, rsp
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	rsp, rsp
	mov	eax, r14d
	jmp	.label_282
.label_281:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_282:
	lea	rsi, [rsi]
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405ec0

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	r15
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x38
	mov	r12, r9
	lea	rdi, [rdi]
	mov	r15, r8
	mov	r9, rcx
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	r14, rdi
	mov	esi, 1
	test	rcx, rcx
	je	.label_283
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_4
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_285
.label_283:
	mov	edx, OFFSET FLAT:.str.1_3
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_285:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	r8d, 0x7e3
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	__fprintf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, r14
	nop	
	call	fputs_unlocked
	nop	
	cmp	r12, 9
	mov	rbp, rbp
	ja	.label_287
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_288]]
.label_1707:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_0
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	add	rsp, 0x38
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	__fprintf_chk
.label_287:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_291
.label_1708:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_0
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	jmp	__fprintf_chk
.label_1709:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	esi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 0x38
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	nop	
	pop	r15
	jmp	__fprintf_chk
.label_1710:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	lea	rdi, [rdi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_292
.label_1711:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_290
.label_1712:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_0
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rdi, [rdi]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15]
	mov	rsp, rsp
	mov	r8, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_289
.label_1713:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_1
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	mov	rbx, qword ptr [r15 + 0x30]
	mov	qword ptr [rsp + 0x18], rbx
.label_289:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_290:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_292:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_286
.label_1715:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_291:
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	r8, qword ptr [r15 + 8]
	mov	rsp, rsp
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [r15 + 0x38]
	mov	rax, qword ptr [r15 + 0x40]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp + 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], r11
	jmp	.label_284
.label_1714:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_1
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	r10, rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	mov	rbx, qword ptr [r15 + 0x30]
	nop	
	mov	rdx, qword ptr [r15 + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	mov	qword ptr [rsp + 0x18], rbx
	nop	
	mov	qword ptr [rsp + 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
.label_284:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_286:
	mov	rbp, rbp
	call	__fprintf_chk
.label_1706:
	mov	rsp, rsp
	add	rsp, 0x38
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	nop	
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_293:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_293
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4062e0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_296:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_294
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_294:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_295:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_297
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_296
.label_297:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406370

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_298
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x30], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x40], xmm1
	nop	
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	nop	
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_298:
	mov	qword ptr [rsp + 0x28], r9
	nop	
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rbp, rbp
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x20
	lea	r8, [rsp + 0xb0]
	mov	rsp, rsp
	call	version_etc_va
	lea	rdi, [rdi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406420
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.15_1
	xor	eax, eax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19_0
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	
	.section	.text
	.align	16
	#Procedure 0x4064b0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rsp, rsp
	div	rsi
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rbp, rbp
	jb	.label_299
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_299:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064f0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_300
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_301
.label_300:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_301:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406520
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	mov	rcx, rdx
	lea	rsi, [rsi]
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	edx, edx
	nop	
	div	rcx
	cmp	rax, rsi
	mov	rbp, rbp
	jb	.label_302
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_302:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_303
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_303
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_303:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_304
	test	rax, rax
	nop	
	je	.label_305
.label_304:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_305:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_306
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_307
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_308
.label_306:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_309
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_309:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_310
.label_308:
	nop	
	mov	qword ptr [rsi], rcx
	mov	rbp, rbp
	imul	r8, rcx
	nop	
	mov	rsi, r8
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	xrealloc
.label_307:
	call	xalloc_die
.label_310:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406650

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406660
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406670
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdi
	nop	
	call	xmalloc
	mov	rbx, rax
	xor	esi, esi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	call	memset
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	lea	rdi, [rdi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066b0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	nop	
	cmp	rax, rdi
	mov	rsp, rsp
	jb	.label_311
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_311
	pop	rcx
	ret	
.label_311:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4066e0

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	rbx
	nop	
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	r14, rdi
	mov	rdi, r15
	call	xmalloc
	mov	rsp, rsp
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, rbx
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406730
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	call	strlen
	lea	rsi, [rax + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	pop	rbx
	jmp	xmemdup
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406750

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_0
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4067a0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_312
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_313
	lea	rdi, [rdi]
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	mov	rsp, rsp
	cmp	rax, rdi
	nop	
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_313
	mov	rsp, rsp
	push	rax
	mov	rbp, rbp
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
.label_312:
	mov	ecx, 1
.label_313:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	cmp	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	jne	.label_314
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_314
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_315
.label_314:
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	rsi, rbp
	mov	edx, r14d
	mov	rbp, rbp
	pop	rbx
	pop	r14
	pop	rbp
	nop	
	jmp	fseeko
.label_315:
	mov	rdi, rbx
	call	fileno
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	cmp	rcx, -1
	lea	rdi, [rdi]
	je	.label_316
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_316:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4068c0

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rsi, [rsi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r12, rdx
	mov	r14, rsi
	test	rdi, rdi
	lea	rsi, [rsi]
	lea	rbx, [rsp + 4]
	cmovne	rbx, rdi
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	mbrtowc
	mov	r15, rax
	test	r12, r12
	mov	rsp, rsp
	je	.label_317
	nop	
	cmp	r15, -2
	jb	.label_317
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_317
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_317:
	mov	rbp, rbp
	mov	rax, r15
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406950

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rax
	mov	r8, rsi
	mov	rsi, rdi
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx + 0x38]
	shr	rcx, 0x15
	nop	
	and	cl, 0x10
	and	al, 0x6f
	mov	rbp, rbp
	or	al, cl
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rcx,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	nop	
	mov	rdi, rdx
	mov	rdx, r8
	lea	rdi, [rdi]
	call	re_compile_internal
	test	eax, eax
	je	.label_318
	cdqe	
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	edx, 5
	pop	rax
	mov	rbp, rbp
	jmp	dcgettext
.label_318:
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4069c0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0xa8
	nop	
	mov	r15, rcx
	nop	
	mov	r12, rdx
	mov	r13, rsi
	mov	rbx, rdi
	nop	
	mov	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x38]
	mov	qword ptr [rbx + 0x18], r15
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	and	al, 0x90
	mov	byte ptr [rbx + 0x38], al
	mov	rsp, rsp
	mov	r14, qword ptr [rbx]
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 8], 0xe7
	mov	rsp, rsp
	jbe	.label_319
.label_322:
	mov	qword ptr [rbx + 0x10], 0xe8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, r12
	call	init_dfa
	mov	dword ptr [rsp + 0xa4], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_321
	nop	
	mov	rcx, qword ptr [rbx + 0x28]
	mov	ebp, r15d
	lea	rsi, [rsi]
	and	ebp, 0x400000
	nop	
	mov	r8, rbp
	shr	r8, 0x16
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, r13
	mov	rdx, r12
	mov	r9, r14
	call	re_string_construct
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xa4], eax
	mov	rbp, rbp
	test	eax, eax
	jne	.label_320
	mov	qword ptr [rbx + 0x30], 0
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	lea	rcx, [rsp + 0xa4]
	mov	rsi, rbx
	mov	rdx, r15
	call	parse
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x68], rax
	test	rax, rax
	je	.label_320
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	analyze
	nop	
	mov	dword ptr [rsp + 0xa4], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_320
	mov	rbp, rbp
	test	rbp, rbp
	jne	.label_324
	lea	rdi, [rdi]
	mov	al, byte ptr [r14 + 0xb0]
	lea	rdi, [rdi]
	and	al, 4
	nop	
	je	.label_324
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x28], 0
	jne	.label_324
	mov	rdi, r14
	lea	rsi, [rsi]
	call	optimize_utf8
.label_324:
	mov	rdi, r14
	mov	rbp, rbp
	call	create_initial_state
	mov	dword ptr [rsp + 0xa4], eax
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	free_workarea_compile
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	call	re_string_destruct
	cmp	dword ptr [rsp + 0xa4], 0
	mov	rbp, rbp
	je	.label_323
	mov	rbp, rbp
	jmp	.label_321
.label_320:
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free_workarea_compile
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	call	re_string_destruct
.label_321:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	free_dfa_content
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx], xmm0
.label_323:
	mov	eax, dword ptr [rsp + 0xa4]
.label_325:
	add	rsp, 0xa8
	pop	rbx
	nop	
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_319:
	mov	esi, 0xe8
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	realloc
	mov	r14, rax
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_325
	mov	qword ptr [rbx + 8], 0xe8
	mov	rsp, rsp
	mov	qword ptr [rbx], r14
	jmp	.label_322
	nop	
	.section	.text
	.align	16
	#Procedure 0x406be0
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	mov	rax,  qword ptr [word ptr [rip + rpl_re_syntax_options]]
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + rpl_re_syntax_options]],  rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406c00

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r15, qword ptr [r14]
	mov	rbx, qword ptr [r14 + 0x20]
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0xf0], xmm0
	nop	
	movups	xmmword ptr [rbx + 0xe0], xmm0
	movups	xmmword ptr [rbx + 0xd0], xmm0
	movups	xmmword ptr [rbx + 0xc0], xmm0
	movups	xmmword ptr [rbx + 0xb0], xmm0
	movups	xmmword ptr [rbx + 0xa0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x90], xmm0
	movups	xmmword ptr [rbx + 0x80], xmm0
	movups	xmmword ptr [rbx + 0x70], xmm0
	movups	xmmword ptr [rbx + 0x60], xmm0
	movups	xmmword ptr [rbx + 0x50], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rbx + 0x40], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x30], xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rbx + 0x20], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x10], xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	rsi, qword ptr [r15 + 0x48]
	mov	rdx, rbx
	call	re_compile_fastmap_iter
	mov	rsi, qword ptr [r15 + 0x50]
	lea	rsi, [rsi]
	cmp	qword ptr [r15 + 0x48], rsi
	lea	rdi, [rdi]
	je	.label_326
	mov	rdi, r14
	nop	
	mov	rdx, rbx
	call	re_compile_fastmap_iter
.label_326:
	nop	
	mov	rsi, qword ptr [r15 + 0x58]
	nop	
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_328
	nop	
	mov	rdi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rbp, rbp
	call	re_compile_fastmap_iter
.label_328:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x60]
	cmp	qword ptr [r15 + 0x48], rsi
	nop	
	je	.label_327
	nop	
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	re_compile_fastmap_iter
.label_327:
	nop	
	or	byte ptr [r14 + 0x38], 8
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d10

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x158
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	nop	
	mov	qword ptr [rsp + 0x10], rsi
	mov	rdx, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rdx
	cmp	dword ptr [rdx + 0xb4], 1
	jne	.label_333
	nop	
	mov	r14b, byte ptr [rdi + 0x1a]
	mov	qword ptr [rsp + 0x20], rdi
	lea	rdi, [rdi]
	and	r14b, 0x40
	lea	rdi, [rdi]
	shr	r14b, 6
	lea	rsi, [rsi]
	jmp	.label_345
.label_333:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	nop	
	xor	r14d, r14d
.label_345:
	cmp	qword ptr [rsi + 0x10], 0
	jle	.label_346
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_335:
	nop	
	mov	rax, qword ptr [rsi + 0x18]
	lea	rsi, [rsi]
	mov	r13, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	mov	rbx, r13
	nop	
	shl	rbx, 4
	mov	qword ptr [rsp + 0x30], rbx
	lea	rdi, [rdi]
	movzx	r12d, byte ptr [rax + rbx + 8]
	mov	rsp, rsp
	add	rax, rbx
	cmp	r12d, 6
	mov	rsp, rsp
	je	.label_347
	mov	qword ptr [rsp + 0x18], rcx
	cmp	r12d, 3
	lea	rdi, [rdi]
	mov	ebp, 0
	lea	rdi, [rdi]
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_343
	mov	rbp, rbp
	cmp	r12d, 1
	mov	rsp, rsp
	jne	.label_348
	mov	rsp, rsp
	movzx	edi, byte ptr [rax]
	mov	rax, qword ptr [rsp + 0x38]
	mov	byte ptr [rax + rdi], 1
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_350
	mov	rbp, rdx
	call	tolower
	mov	rbp, rbp
	mov	rdx, rbp
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_350:
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x1a], 0x40
	mov	rbp, rbp
	je	.label_337
	nop	
	cmp	dword ptr [rdx + 0xb4], 2
	jl	.label_337
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdx]
	mov	al, byte ptr [rax + rbx]
	mov	byte ptr [rsp + 0x40], al
	mov	rbp, rbp
	inc	r13
	cmp	r13, qword ptr [rdx + 0x10]
	lea	rbp, [rsp + 0x41]
	lea	r15, [rsp + 0x148]
	lea	rdi, [rdi]
	lea	r12, [rsp + 0x40]
	lea	rdi, [rdi]
	mov	esi, 0x2000ff
	jae	.label_338
	mov	rbp, rbp
	add	rbx, 0x18
	lea	rbp, [rsp + 0x41]
	nop	word ptr cs:[rax + rax]
.label_341:
	mov	rax, qword ptr [rdx]
	mov	ecx, dword ptr [rax + rbx]
	nop	
	and	ecx, esi
	cmp	ecx, 0x200001
	mov	rbp, rbp
	jne	.label_338
	mov	al, byte ptr [rax + rbx - 8]
	mov	byte ptr [rbp], al
	mov	rbp, rbp
	inc	rbp
	inc	r13
	lea	rsi, [rsi]
	add	rbx, 0x10
	cmp	r13, qword ptr [rdx + 0x10]
	jb	.label_341
.label_338:
	lea	rdi, [rdi]
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	sub	rbp, r12
	lea	rdi, [rsp + 0x154]
	nop	
	mov	rsi, r12
	mov	rdx, rbp
	nop	
	mov	rcx, r15
	call	rpl_mbrtowc
	cmp	rax, rbp
	lea	rsi, [rsi]
	jne	.label_331
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x154]
	lea	rdi, [rdi]
	call	towlower
	mov	rsp, rsp
	mov	rdi, r12
	mov	esi, eax
	mov	rsp, rsp
	mov	rdx, r15
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	nop	
	je	.label_331
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
	mov	rbp, rbp
	jmp	.label_331
	nop	dword ptr [rax]
.label_343:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx]
	nop	
	mov	rax, qword ptr [rax + rbx]
	mov	rbx, qword ptr [rax + rbp*8]
	nop	
	mov	rax, qword ptr [rsp + 0x38]
	lea	r13, [rax + r15]
	mov	rsp, rsp
	xor	r12d, r12d
	nop	
.label_340:
	bt	rbx, r12
	jae	.label_329
	mov	byte ptr [r13 + r12], 1
	mov	rbp, rbp
	test	r14b, r14b
	je	.label_329
	mov	rsp, rsp
	lea	edi, [r15 + r12]
	lea	rdi, [rdi]
	call	tolower
	cdqe	
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	byte ptr [rcx + rax], 1
.label_329:
	nop	
	inc	r12
	cmp	r12, 0x40
	jne	.label_340
	lea	rsi, [rsi]
	inc	rbp
	lea	rdi, [rdi]
	add	r15, 0x40
	cmp	rbp, 4
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rsp, rsp
	jne	.label_343
	jmp	.label_337
	nop	word ptr [rax + rax]
.label_347:
	mov	r15, qword ptr [rax]
	cmp	dword ptr [rdx + 0xb4], 1
	jle	.label_336
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_330
	lea	rsi, [rsi]
	test	byte ptr [r15 + 0x20], 1
	mov	rbp, rbp
	jne	.label_330
	mov	rbp, rbp
	cmp	qword ptr [r15 + 0x40], 0
	lea	rdi, [rdi]
	je	.label_336
.label_330:
	nop	
	mov	rbx, rdx
	mov	qword ptr [rsp + 0x18], rcx
	mov	byte ptr [rsp + 0x148], 0
	nop	
	lea	rbp, [rsp + 0x148]
	mov	r15, rbp
	nop	
	lea	rbp, [rsp + 0x40]
	nop	
.label_334:
	mov	qword ptr [rsp + 0x40], 0
	nop	
	xor	edi, edi
	mov	edx, 1
	mov	rsp, rsp
	mov	rsi, r15
	mov	rcx, rbp
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	mov	rsp, rsp
	jne	.label_349
	mov	rbp, rbp
	movzx	eax, byte ptr [rsp + 0x148]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 1
.label_349:
	nop	
	inc	byte ptr [rsp + 0x148]
	jne	.label_334
.label_331:
	mov	rdx, rbx
	lea	rsi, [rsi]
	jmp	.label_337
	nop	word ptr [rax + rax]
.label_348:
	cmp	r12d, 2
	je	.label_339
	lea	rsi, [rsi]
	mov	eax, r12d
	or	eax, 2
	nop	
	cmp	eax, 7
	jne	.label_337
	jmp	.label_339
.label_336:
	mov	qword ptr [rsp + 0x18], rcx
	cmp	qword ptr [r15 + 0x28], 0
	jle	.label_337
	mov	rsp, rsp
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_344:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x148], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + rbp*4]
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x40]
	mov	rdi, r13
	mov	rbp, rbp
	lea	r12, [rsp + 0x148]
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	call	wcrtomb
	cmp	rax, -1
	mov	rsp, rsp
	je	.label_342
	movzx	edi, byte ptr [rsp + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rax + rdi], 1
	lea	rdi, [rdi]
	test	r14b, r14b
	lea	rdi, [rdi]
	je	.label_342
	call	tolower
	lea	rdi, [rdi]
	cdqe	
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 1
.label_342:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	test	byte ptr [rax + 0x1a], 0x40
	lea	rsi, [rsi]
	mov	rdx, rbx
	nop	
	je	.label_332
	mov	rbp, rbp
	cmp	dword ptr [rdx + 0xb4], 2
	nop	
	jl	.label_332
	mov	rbp, rbp
	mov	rax, qword ptr [r15]
	lea	rdi, [rdi]
	mov	edi, dword ptr [rax + rbp*4]
	mov	rbx, rdx
	nop	
	call	towlower
	mov	rdi, r13
	mov	rbp, rbp
	mov	esi, eax
	mov	rbp, rbp
	mov	rdx, r12
	call	wcrtomb
	lea	rsi, [rsi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_332
	movzx	eax, byte ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 1
.label_332:
	mov	rsp, rsp
	inc	rbp
	mov	rbp, rbp
	cmp	rbp, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	jl	.label_344
	nop	word ptr cs:[rax + rax]
.label_337:
	nop	
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	inc	rcx
	mov	rsi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	jl	.label_335
.label_346:
	mov	rsp, rsp
	add	rsp, 0x158
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_339:
	mov	esi, 1
	mov	edx, 0x100
	mov	rdi, qword ptr [rsp + 0x38]
	call	memset
	cmp	r12d, 2
	jne	.label_346
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	or	byte ptr [rax + 0x38], 1
	lea	rsi, [rsi]
	jmp	.label_346
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407270
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	nop	
	mov	r14, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x10], 0
	mov	edi, 0x100
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], rax
	lea	rdi, [rdi]
	mov	ebx, 0xc
	test	rax, rax
	mov	rbp, rbp
	je	.label_353
	test	bpl, 1
	mov	eax, 0x3b2fc
	mov	ecx, 0x10102c6
	mov	rbp, rbp
	cmovne	rcx, rax
	mov	ebx, ebp
	lea	rsi, [rsi]
	and	ebx, 2
	shl	rbx, 0x15
	or	rbx, rcx
	test	bpl, 4
	jne	.label_354
	and	byte ptr [r15 + 0x38], 0x7f
	lea	rsi, [rsi]
	jmp	.label_351
.label_354:
	lea	rdi, [rdi]
	and	ebx, 0x143b2be
	or	rbx, 0x100
	or	byte ptr [r15 + 0x38], 0x80
.label_351:
	nop	
	mov	al, byte ptr [r15 + 0x38]
	add	ebp, ebp
	mov	rbp, rbp
	and	bpl, 0x10
	and	al, 0xef
	nop	
	or	al, bpl
	mov	byte ptr [r15 + 0x38], al
	nop	
	mov	qword ptr [r15 + 0x28], 0
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	rcx, rbx
	call	re_compile_internal
	mov	rsp, rsp
	cmp	eax, 0x10
	mov	ebx, 8
	cmovne	ebx, eax
	test	ebx, ebx
	lea	rdi, [rdi]
	jne	.label_352
	mov	rdi, r15
	nop	
	call	rpl_re_compile_fastmap
	nop	
	xor	ebx, ebx
.label_353:
	mov	rsp, rsp
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_352:
	mov	rdi, qword ptr [r15 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x20], 0
	jmp	.label_353
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073a0
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	cmp	edi, 0x11
	jae	.label_355
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	esi, OFFSET FLAT:__re_error_msgid
	add	rsi,  qword ptr [word ptr [+ (rax * 8) + __re_error_msgid_idx]]
	xor	edi, edi
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	r12, rax
	mov	rdi, r12
	call	strlen
	mov	rbx, rax
	inc	rbx
	test	r15, r15
	je	.label_357
	lea	rdi, [rdi]
	cmp	rbx, r15
	mov	rsp, rsp
	mov	rdx, rbx
	ja	.label_356
.label_358:
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	call	memcpy
.label_357:
	mov	rax, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
.label_356:
	mov	rsp, rsp
	mov	byte ptr [r14 + r15 - 1], 0
	dec	r15
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rbp, rbp
	jmp	.label_358
.label_355:
	lea	rdi, [rdi]
	call	abort
	nop	
	.section	.text
	.align	16
	#Procedure 0x407450
	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	nop	
	mov	rdi, qword ptr [rbx]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_359
	call	free_dfa_content
.label_359:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsp, rsp
	call	free
	mov	qword ptr [rbx + 0x20], 0
	mov	rdi, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbx + 0x28], 0
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4074b0

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rdi
	cmp	qword ptr [r14], 0
	mov	rbp, rbp
	je	.label_362
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	mov	rbp, rbp
	je	.label_362
	mov	rsp, rsp
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_361:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	add	rdi, r15
	lea	rdi, [rdi]
	call	free_token
	inc	rbx
	add	r15, 0x10
	mov	rbp, rbp
	cmp	rbx, qword ptr [r14 + 0x10]
	jb	.label_361
.label_362:
	mov	rdi, qword ptr [r14 + 0x18]
	call	free
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	je	.label_363
	nop	
	xor	r15d, r15d
	mov	ebx, 0x10
	nop	dword ptr [rax]
.label_371:
	nop	
	mov	rax, qword ptr [r14 + 0x30]
	test	rax, rax
	je	.label_364
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	nop	
	call	free
.label_364:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x38]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_366
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_366:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x28]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_365
	mov	rdi, qword ptr [rax + rbx]
	call	free
.label_365:
	inc	r15
	add	rbx, 0x18
	cmp	r15, qword ptr [r14 + 0x10]
	jb	.label_371
.label_363:
	nop	
	mov	rdi, qword ptr [r14 + 0x28]
	call	free
	mov	rdi, qword ptr [r14 + 0x30]
	nop	
	call	free
	mov	rdi, qword ptr [r14 + 0x38]
	call	free
	mov	rdi, qword ptr [r14]
	call	free
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x40], 0
	je	.label_367
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_369:
	mov	rax, qword ptr [r14 + 0x40]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	lea	r12, [rax + rcx*8 + 0x10]
	cmp	qword ptr [rax + rcx*8], 0
	lea	rsi, [rsi]
	jle	.label_360
	lea	r13, [rax + rcx*8]
	nop	
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_368:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8]
	call	free_state
	mov	rsp, rsp
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_368
.label_360:
	mov	rbp, rbp
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	inc	r15
	mov	rbp, rbp
	cmp	r15, qword ptr [r14 + 0x88]
	jbe	.label_369
.label_367:
	mov	rdi, qword ptr [r14 + 0x40]
	call	free
	mov	rdi, qword ptr [r14 + 0x78]
	mov	eax, OFFSET FLAT:utf8_sb_map
	cmp	rdi, rax
	mov	rbp, rbp
	je	.label_370
	mov	rsp, rsp
	call	free
.label_370:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0xe0]
	call	free
	mov	rdi, r14
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407680
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	ebp, r8d
	mov	r12, rcx
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	eax, 2
	mov	rbp, rbp
	cmp	ebp, 7
	nop	
	ja	.label_372
	test	bpl, 4
	nop	
	jne	.label_376
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strlen
	mov	rdx, rax
	xor	ecx, ecx
	jmp	.label_373
.label_376:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r12]
	mov	rdx, qword ptr [r12 + 8]
.label_373:
	test	byte ptr [rbx + 0x38], 0x10
	nop	
	jne	.label_374
	mov	dword ptr [rsp + 0x10], ebp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r15
	lea	rsi, [rsi]
	jmp	.label_375
.label_374:
	mov	dword ptr [rsp + 0x10], ebp
	mov	qword ptr [rsp + 8], 0
	nop	
	mov	qword ptr [rsp], 0
.label_375:
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	r8, rdx
	lea	rdi, [rdi]
	mov	r9, rdx
	call	re_search_internal
	mov	rbp, rbp
	test	eax, eax
	setne	al
	movzx	eax, al
.label_372:
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407760

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x188
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdi
	mov	r12, qword ptr [rsp + 0x1c0]
	mov	rbx, qword ptr [r14]
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x170], xmm0
	movaps	xmmword ptr [rsp + 0x160], xmm0
	movaps	xmmword ptr [rsp + 0x150], xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x140], xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x130], xmm0
	movaps	xmmword ptr [rsp + 0x120], xmm0
	movaps	xmmword ptr [rsp + 0x110], xmm0
	movaps	xmmword ptr [rsp + 0x100], xmm0
	movaps	xmmword ptr [rsp + 0xf0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xe0], xmm0
	nop	
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x118], rbx
	mov	rax, qword ptr [r14 + 0x20]
	xor	r10d, r10d
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_406
	mov	cl, byte ptr [r14 + 0x38]
	and	cl, 9
	lea	rdi, [rdi]
	movzx	ecx, cl
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	cmp	ecx, 8
	nop	
	cmovne	rax, rdi
	mov	rsp, rsp
	cmp	r15, r8
	cmove	rax, rdi
	nop	
	mov	r10, rax
.label_406:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x30]
	lea	rdi, [r12 - 1]
	nop	
	mov	rcx, rdi
	mov	rsp, rsp
	sub	rcx, rax
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	rax, r12
	lea	rsi, [rsi]
	cmovb	rbp, rcx
	mov	r13d, 1
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	je	.label_407
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x48]
	nop	
	test	rax, rax
	mov	rsp, rsp
	je	.label_407
	mov	rcx, qword ptr [rbx + 0x50]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_407
	lea	rsi, [rsi]
	mov	r11, qword ptr [rbx + 0x58]
	test	r11, r11
	nop	
	je	.label_407
	cmp	qword ptr [rbx + 0x60], 0
	nop	
	je	.label_407
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r9
	lea	rsi, [rsi]
	mov	r9, qword ptr [r14 + 0x28]
	cmp	qword ptr [rax + 0x10], 0
	nop	
	je	.label_438
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_380
.label_438:
	cmp	qword ptr [rcx + 0x10], 0
	je	.label_377
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], r8
.label_380:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	mov	qword ptr [rsp + 0x48], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	mov	byte ptr [rsp + 0x67], 1
	cmp	rbp, r12
	lea	rdi, [rdi]
	jne	.label_383
	lea	rdi, [rdi]
	cmp	qword ptr [rbx + 0x98], 0
	mov	rbp, rbp
	setne	byte ptr [rsp + 0x67]
.label_383:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	inc	rcx
	mov	rbp, rbp
	mov	r8, qword ptr [r14 + 0x28]
	mov	r9d, 0x400000
	lea	rdi, [rdi]
	and	r9, qword ptr [r14 + 0x18]
	mov	rsp, rsp
	shr	r9, 0x16
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rbx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x68], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], rdx
	mov	rbp, rbp
	call	re_string_allocate
	mov	r13d, eax
	lea	rsi, [rsi]
	test	r13d, r13d
	jne	.label_379
	mov	esi, dword ptr [rsp + 0x1d0]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xe8], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xe0], rax
	mov	al, byte ptr [r14 + 0x38]
	shr	al, 7
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x10d], al
	mov	rax, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 0x98]
	add	rdx, rdx
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	match_ctx_init
	lea	rsi, [rsi]
	mov	r13d, eax
	test	r13d, r13d
	lea	rsi, [rsi]
	jne	.label_379
	mov	rax, r12
	sub	rax, rbp
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x40], rax
	cmp	rax, 1
	ja	.label_384
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	test	byte ptr [rax + 0xb0], 2
	nop	
	jne	.label_384
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x138], 0
	lea	rdi, [rdi]
	jmp	.label_396
.label_384:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbp
	mov	rax, qword ptr [rsp + 0xc0]
	mov	r13d, 0xc
	nop	
	movabs	rcx, 0x1ffffffffffffffe
	nop	
	cmp	rax, rcx
	mov	rbp, rbp
	ja	.label_379
	lea	rdi, [rax*8 + 8]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x138], rax
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_379
.label_396:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], r15
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1d0]
	lea	eax, [rax + rax]
	and	eax, 2
	xor	eax, 6
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xf0], eax
	nop	
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r15
	mov	rbp, rbp
	mov	r11d, 0xffffffff
	lea	rsi, [rsi]
	mov	ecx, 1
	cmovge	r11d, ecx
	mov	r13, r15
	cmovle	r13, rax
	mov	qword ptr [rsp + 0x28], r13
	mov	rbp, rax
	lea	rsi, [rsi]
	cmovl	rbp, r15
	mov	qword ptr [rsp + 0x38], rbp
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r8 + 0xb4]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x58], ecx
	mov	esi, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	test	rdi, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_429
	lea	rdi, [rdi]
	cmp	dword ptr [rsp + 0x58], 1
	mov	rsp, rsp
	je	.label_398
	lea	rdi, [rdi]
	mov	edx, 0x400000
	xor	r9d, r9d
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_400
	and	rdx, qword ptr [r14 + 0x18]
	jne	.label_400
.label_398:
	mov	r9d, 4
.label_400:
	cmp	r15, rax
	setle	dl
	test	rbx, rbx
	setne	cl
	movzx	ecx, cl
	lea	rsi, [rsi]
	movzx	edx, dl
	nop	
	lea	esi, [rcx + rdx*2]
	mov	rbp, rbp
	or	esi, r9d
.label_429:
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, r13
	mov	rdx, qword ptr [rsp + 0x70]
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x68]
	mov	rbp, rbp
	jl	.label_422
	lea	rsi, [rsi]
	cmp	rbp, rcx
	nop	
	jl	.label_430
	xor	r10d, r10d
	cmp	r15, rax
	lea	rcx, [rsp + 0x180]
	cmovg	rcx, r10
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	movsxd	r15, r11d
	add	esi, -4
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_382:
	cmp	esi, 4
	ja	.label_426
	mov	rax, qword ptr [rsp + 0x50]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_440]]
.label_1852:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	mov	rsp, rsp
	cmp	rcx, r13
	mov	rsp, rsp
	jl	.label_390
	nop	
.label_394:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rcx, rdx
	mov	rbp, rbp
	jge	.label_381
	movzx	eax, byte ptr [r9 + rcx]
.label_381:
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_388
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx + rax]
.label_388:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rax], 0
	mov	rsp, rsp
	jne	.label_390
	nop	
	mov	rax, qword ptr [rsp + 0x180]
	lea	rcx, [rax - 1]
	mov	qword ptr [rsp + 0x180], rcx
	lea	rsi, [rsi]
	cmp	rax, r13
	mov	rbp, rbp
	jg	.label_394
.label_390:
	nop	
	cmp	qword ptr [rsp + 0x180], r13
	jge	.label_405
	mov	rbp, rbp
	jmp	.label_416
	nop	word ptr cs:[rax + rax]
.label_420:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	rax, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rbp, rbp
	jl	.label_416
	mov	rbp, rbp
	cmp	rax, rbp
	nop	
	jle	.label_426
	jmp	.label_416
.label_395:
	mov	qword ptr [rsp + 0x30], r15
	mov	qword ptr [rsp + 0x38], rbp
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, r9
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x78], r8
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	lea	rsi, [rsi]
	call	re_string_reconstruct
	mov	r13d, eax
	test	r13d, r13d
	jne	.label_379
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x180]
	sub	rax, qword ptr [rsp + 0xa8]
	nop	
	mov	r8, qword ptr [rsp + 0x78]
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r9, r15
	mov	rdi, qword ptr [rsp + 0x48]
	nop	
	mov	r13, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	mov	r15, qword ptr [rsp + 0x30]
	jmp	.label_443
	nop	dword ptr [rax]
.label_426:
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rsi, [rsi]
	mov	rax, rsi
	lea	rdi, [rdi]
	sub	rax, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	jae	.label_395
.label_443:
	cmp	qword ptr [rsp + 0x180], rdx
	mov	rsp, rsp
	mov	ecx, 0
	jge	.label_412
	mov	rcx, qword ptr [rsp + 0x88]
	movzx	ecx, byte ptr [rcx + rax]
.label_412:
	lea	rdi, [rdi]
	cmp	byte ptr [rdi + rcx], 0
	mov	rbp, rbp
	je	.label_420
	jmp	.label_405
.label_1853:
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_425
	nop	word ptr [rax + rax]
.label_421:
	nop	
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_425:
	nop	
	cmp	rax, rbp
	jge	.label_435
	mov	rsp, rsp
	movzx	ecx, byte ptr [r9 + rax]
	mov	rbp, rbp
	cmp	byte ptr [rdi + rcx], 0
	mov	rsp, rsp
	je	.label_421
	jmp	.label_435
.label_1854:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x180]
	jmp	.label_436
	nop	word ptr cs:[rax + rax]
.label_378:
	lea	rsi, [rsi]
	inc	rax
	mov	qword ptr [rsp + 0x180], rax
.label_436:
	cmp	rax, rbp
	jge	.label_435
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r9 + rax]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rbx + rcx]
	nop	
	cmp	byte ptr [rdi + rcx], 0
	je	.label_378
.label_435:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x180]
	cmp	rcx, rbp
	mov	rbp, rbp
	je	.label_385
.label_405:
	mov	rbp, rdi
	mov	rsi, qword ptr [rsp + 0x180]
	lea	rdi, [rsp + 0x80]
	mov	edx, dword ptr [rsp + 0x1d0]
	call	re_string_reconstruct
	test	eax, eax
	nop	
	jne	.label_399
	cmp	dword ptr [rsp + 0x58], 1
	lea	rsi, [rsi]
	je	.label_403
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_403
	mov	rcx, qword ptr [rsp + 0x90]
	cmp	dword ptr [rcx], -1
	mov	rsp, rsp
	je	.label_414
.label_403:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x30], eax
	mov	dword ptr [rsp + 0x160], 0
	lea	rax, [rsp + 0x140]
	xorps	xmm0, xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rax], xmm0
	movzx	esi, byte ptr [rsp + 0x67]
	lea	rdi, [rsp + 0x80]
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	check_matching
	lea	rdi, [rdi]
	cmp	rax, -1
	nop	
	je	.label_432
	lea	rdi, [rdi]
	mov	r13d, 0xc
	nop	
	cmp	rax, -2
	mov	rbp, rbp
	je	.label_379
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x128], rax
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_417
	mov	cl, byte ptr [r14 + 0x38]
	lea	rdi, [rdi]
	and	cl, 0x10
	lea	rsi, [rsi]
	je	.label_442
.label_417:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x78]
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	je	.label_418
.label_442:
	mov	rcx, qword ptr [rsp + 0x138]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdx, rax
	call	check_halt_state_context
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x130], rax
.label_418:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x40], 2
	mov	rsp, rsp
	jb	.label_411
	mov	al, byte ptr [r14 + 0x38]
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_411
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rsp, rsp
	test	byte ptr [rax + 0xb0], 1
	lea	rsi, [rsi]
	jne	.label_410
.label_411:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_427
.label_410:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x80]
	nop	
	call	prune_impossible_nodes
	mov	rbp, rbp
	mov	r13d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x30], 0
	mov	rbp, rbp
	test	r13d, r13d
	lea	rsi, [rsi]
	je	.label_427
	nop	
	cmp	r13d, 1
	mov	rsp, rsp
	jne	.label_379
.label_432:
	nop	
	lea	rdi, [rsp + 0x80]
	mov	rsp, rsp
	call	match_ctx_clean
	mov	r13, qword ptr [rsp + 0x28]
.label_414:
	mov	rax, qword ptr [rsp + 0x180]
	mov	rbp, rbp
	add	rax, r15
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x180], rax
	cmp	rax, r13
	mov	rdi, rbp
	jl	.label_423
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x38]
	cmp	rbp, rax
	mov	r8, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x70]
	mov	r9, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x50]
	jge	.label_382
	jmp	.label_389
.label_385:
	xor	eax, eax
	mov	rbp, rbp
	cmp	rcx, rdx
	mov	rsp, rsp
	jge	.label_397
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r9 + rcx]
.label_397:
	test	rbx, rbx
	nop	
	je	.label_402
	movzx	eax, byte ptr [rbx + rax]
.label_402:
	nop	
	cmp	byte ptr [rdi + rax], 0
	jne	.label_405
.label_416:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x78], r8
	mov	r13d, 1
	jmp	.label_379
.label_422:
	mov	r13d, 1
	jmp	.label_379
.label_430:
	mov	r13d, 1
	nop	
	jmp	.label_379
.label_427:
	nop	
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	cmp	rdx, r12
	mov	rbp, rbp
	je	.label_404
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0x40], 2
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x1c8]
	jb	.label_428
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sub	rax, rdx
	lea	rcx, [rsi + 0x10]
.label_434:
	mov	qword ptr [rcx + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rcx], -1
	lea	rdi, [rdi]
	add	rcx, 0x10
	nop	
	dec	rax
	lea	rdi, [rdi]
	jne	.label_434
.label_428:
	mov	rbp, rbp
	mov	rbx, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsi], 0
	nop	
	mov	rax, qword ptr [rsp + 0x128]
	mov	qword ptr [rsi + 8], rax
	nop	
	mov	rbp, rsi
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x40], 2
	jb	.label_386
	mov	al, byte ptr [r14 + 0x38]
	mov	rbp, rbp
	and	al, 0x10
	mov	rbp, rbp
	jne	.label_386
	mov	dword ptr [rsp + 0x30], 0
	mov	rcx, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	test	byte ptr [rcx + 0xb0], 1
	lea	rdi, [rdi]
	mov	eax, 0
	mov	rbp, rbp
	je	.label_393
	cmp	qword ptr [rcx + 0x98], 0
	mov	rbp, rbp
	setg	al
.label_393:
	movzx	r8d, al
	mov	rbp, rbp
	lea	rsi, [rsp + 0x80]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rcx, rbp
	mov	rbp, rbp
	call	set_regs
	mov	r13d, eax
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_379
.label_386:
	mov	rdx, rbx
	mov	rsp, rsp
	cmp	rdx, r12
	mov	rsp, rsp
	je	.label_424
	mov	rbp, rbp
	mov	al, byte ptr [rsp + 0x10c]
	lea	r8, [rsp + 0xb8]
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x98]
	lea	rsi, [rbp + 8]
	mov	rdi, qword ptr [rsp + 0x40]
	jmp	.label_409
.label_377:
	lea	rsi, [rsi]
	cmp	qword ptr [r11 + 0x10], 0
	lea	rdi, [rdi]
	je	.label_433
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 0x38], 0
	js	.label_437
.label_433:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rax
	test	r15, r15
	je	.label_439
	test	r8, r8
	mov	r15d, 0
	nop	
	jne	.label_407
	lea	rsi, [rsi]
	jmp	.label_380
.label_399:
	mov	r13d, eax
	mov	rbp, rbp
	jmp	.label_379
.label_413:
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_387
	lea	rcx, [r9 + rbx*8]
.label_387:
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rsi - 8], rcx
	mov	rbx, qword ptr [rsi]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0xb0]
	mov	rcx, r8
	lea	rsi, [rsi]
	je	.label_391
	mov	rsp, rsp
	lea	rcx, [r9 + rbx*8]
.label_391:
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rsi], rcx
	jmp	.label_392
.label_409:
	mov	rsp, rsp
	mov	rbx, qword ptr [rsi - 8]
	nop	
	cmp	rbx, -1
	je	.label_408
	test	al, al
	jne	.label_413
.label_392:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x180]
	lea	rdi, [rdi]
	add	qword ptr [rsi - 8], rcx
	add	qword ptr [rsi], rcx
.label_408:
	add	rsi, 0x10
	dec	rdi
	jne	.label_409
.label_424:
	lea	rdi, [rdi]
	test	rdx, rdx
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jle	.label_419
	lea	rsi, [rsi]
	sub	r12, rdx
	shl	r12, 4
	add	r12, rbp
	mov	rax, rdx
	nop	dword ptr [rax]
.label_431:
	nop	
	mov	qword ptr [r12 + 8], -1
	mov	rsp, rsp
	mov	qword ptr [r12], -1
	add	r12, 0x10
	mov	rbp, rbp
	dec	rax
	mov	rsp, rsp
	jne	.label_431
.label_419:
	mov	rdi, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0xe0], 0
	je	.label_404
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0x40], 2
	nop	
	jb	.label_404
	mov	rax, qword ptr [rdi + 0xe0]
	sub	rbx, rdx
	mov	rsp, rsp
	lea	rcx, [rbp + 0x18]
	lea	rsi, [rsi]
	xor	edx, edx
.label_401:
	mov	rsi, qword ptr [rax + rdx*8]
	nop	
	cmp	rdx, rsi
	lea	rsi, [rsi]
	je	.label_441
	lea	rdi, [rdi]
	shl	rsi, 4
	mov	rsi, qword ptr [rsi + rbp + 0x10]
	mov	qword ptr [rcx - 8], rsi
	mov	rsi, qword ptr [rdi + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rdx*8]
	shl	rsi, 4
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + rbp + 0x18]
	mov	qword ptr [rcx], rsi
.label_441:
	inc	rdx
	lea	rdi, [rdi]
	add	rcx, 0x10
	lea	rdi, [rdi]
	cmp	rbx, rdx
	jne	.label_401
.label_404:
	mov	r13d, dword ptr [rsp + 0x30]
.label_379:
	mov	rdi, qword ptr [rsp + 0x138]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rsp + 0x78]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	mov	rbp, rbp
	je	.label_415
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x80]
	call	match_ctx_free
.label_415:
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	re_string_destruct
.label_407:
	mov	eax, r13d
	add	rsp, 0x188
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_437:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], r8
	jmp	.label_380
.label_439:
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_380
.label_423:
	mov	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_379
.label_389:
	mov	rsp, rsp
	mov	r13d, 1
	jmp	.label_379
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408400
	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:

	nop
	sub	rsp, 0x18
	mov	qword ptr [rsp], r8
	mov	dword ptr [rsp + 8], 1
	xor	r8d, r8d
	mov	r9, rdx
	mov	rbp, rbp
	call	re_search_stub
	nop	
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408430

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x48
	test	rcx, rcx
	mov	r14, -1
	js	.label_448
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r9
	lea	rsi, [rsi]
	cmp	rcx, rdx
	jg	.label_448
	nop	
	mov	r14, qword ptr [rsp + 0x80]
	nop	
	xor	r15d, r15d
	mov	rsp, rsp
	add	r8, rcx
	mov	rbp, rbp
	cmovns	r15, r8
	cmp	r8, rdx
	cmovg	r15, rdx
	movzx	r12d, byte ptr [rdi + 0x38]
	cmp	r15, rcx
	jle	.label_451
	mov	rsp, rsp
	test	r12b, 8
	lea	rdi, [rdi]
	jne	.label_451
	mov	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_451
	mov	rbp, rdi
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	call	rpl_re_compile_fastmap
	mov	rdx, rbx
	mov	rdi, rbp
	mov	rcx, r13
.label_451:
	xor	esi, esi
	mov	rsp, rsp
	test	r14, r14
	mov	ebx, 1
	nop	
	je	.label_446
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x40], rcx
	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	mov	cl, al
	and	cl, 0x10
	mov	rsp, rsp
	jne	.label_452
	lea	rsi, [rsi]
	and	al, 6
	nop	
	movzx	eax, al
	cmp	eax, 4
	nop	
	jne	.label_454
	mov	rax, qword ptr [r14]
	cmp	rax, qword ptr [rdi + 0x30]
	jbe	.label_444
.label_454:
	mov	rbx, qword ptr [rdi + 0x30]
	lea	rsi, [rsi]
	inc	rbx
.label_447:
	mov	rsi, r14
	jmp	.label_452
.label_446:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rcx
.label_452:
	nop	
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	rbp, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	shl	rdi, 4
	nop	
	call	malloc
	mov	r13, rax
	lea	rsi, [rsi]
	mov	r14, -2
	lea	rsi, [rsi]
	test	r13, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	je	.label_448
	mov	al, r12b
	shr	al, 5
	mov	rbp, rbp
	and	al, 1
	lea	rdi, [rdi]
	and	r12d, 0x40
	movzx	eax, al
	shr	r12d, 5
	or	r12d, eax
	mov	dword ptr [rsp + 0x10], r12d
	mov	qword ptr [rsp + 8], r13
	nop	
	mov	r14, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp], r14
	mov	rdi, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	mov	rsp, rsp
	mov	r8, r15
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	call	re_search_internal
	test	eax, eax
	nop	
	je	.label_445
	mov	rsp, rsp
	cmp	eax, 1
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	movzx	r14d, al
	lea	rdi, [rdi]
	or	r14, 0xfffffffffffffffe
	mov	rsp, rsp
	jmp	.label_449
.label_445:
	nop	
	mov	rdx, r14
	nop	
	mov	rdi, qword ptr [rsp + 0x20]
	test	rdi, rdi
	je	.label_453
	mov	al, byte ptr [rbp + 0x38]
	mov	rbp, rbp
	shr	al, 1
	lea	rdi, [rdi]
	and	al, 3
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	rsi, r13
	call	re_copy_regs
	mov	cl, byte ptr [rbp + 0x38]
	add	al, al
	and	cl, 0xf9
	mov	rsp, rsp
	mov	dl, al
	and	dl, 6
	or	dl, cl
	lea	rsi, [rsi]
	and	al, 6
	mov	byte ptr [rbp + 0x38], dl
	mov	r14, -2
	nop	
	je	.label_449
.label_453:
	mov	al, byte ptr [rsp + 0x88]
	lea	rsi, [rsi]
	mov	r14, qword ptr [r13]
	test	al, al
	nop	
	je	.label_449
	cmp	r14, rbx
	jne	.label_450
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	sub	r14, rbx
.label_449:
	mov	rdi, r13
	call	free
.label_448:
	lea	rsi, [rsi]
	mov	rax, r14
	add	rsp, 0x48
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_444:
	xor	ecx, ecx
	lea	rdi, [rdi]
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	r14, rcx
	mov	ebx, 1
	mov	rbp, rbp
	cmovg	rbx, rax
	jmp	.label_447
.label_450:
	mov	edi, OFFSET FLAT:.str.21
	mov	esi, OFFSET FLAT:.str.22
	lea	rdi, [rdi]
	mov	edx, 0x1be
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4086d0

	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	qword ptr [rsp], r9
	mov	dword ptr [rsp + 8], 0
	nop	
	mov	r9, rdx
	call	re_search_stub
	mov	rsp, rsp
	add	rsp, 0x18
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408700
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r10, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	mov	qword ptr [rsp + 0x10], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	call	re_search_2_stub
	nop	
	add	rsp, 0x28
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408750

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	mov	rbx, r8
	mov	r15, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x70]
	mov	rax, rbx
	lea	rsi, [rsi]
	or	rax, r14
	or	rax, rbp
	js	.label_457
	movabs	rax, 0x7fffffffffffffff
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_459
	sub	rax, rbx
	cmp	rax, r14
	jl	.label_457
	nop	
	lea	rdx, [rbx + r14]
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rdi, [rdi]
	test	rbx, rbx
	jle	.label_455
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x20], r9
	xor	r12d, r12d
	mov	rbp, rbp
	test	r14, r14
	nop	
	jle	.label_458
	mov	rdi, rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	call	malloc
	mov	rbp, rbp
	mov	r12, rax
	mov	rsp, rsp
	test	r12, r12
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	je	.label_457
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	r13, rax
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, r12
	add	rdi, r14
	mov	rsp, rsp
	mov	rsi, r15
	mov	rdx, rbx
	nop	
	call	memcpy
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rsp + 0x70]
	mov	r9, r13
	lea	rdi, [rdi]
	mov	r13, r12
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	jmp	.label_455
.label_459:
	nop	
	inc	rax
	sub	rax, rbx
	cmp	rax, r14
	nop	
	jle	.label_456
.label_457:
	mov	rax, -2
	jmp	.label_460
.label_456:
	mov	rsp, rsp
	add	rbx, r14
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	mov	rdx, rbx
	jmp	.label_455
.label_458:
	mov	rbp, rbp
	mov	r13, r15
	mov	rsp, rsp
	mov	r9, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
.label_455:
	mov	rax, qword ptr [rsp + 0x68]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x60]
	movzx	ecx, byte ptr [rsp + 0x78]
	mov	dword ptr [rsp + 8], ecx
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	rsi, r13
	mov	rcx, r9
	lea	rdi, [rdi]
	mov	r9, rbp
	mov	rbp, rbp
	call	re_search_stub
	mov	rbx, rax
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, rbx
.label_460:
	add	rsp, 0x28
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408910
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	sub	rsp, 0x28
	mov	r10, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x18], 0
	call	re_search_2_stub
	add	rsp, 0x28
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408960
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	mov	al, byte ptr [rdi + 0x38]
	lea	rdi, [rdi]
	and	al, 0xf9
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_461
	or	al, 2
	mov	rsp, rsp
	mov	byte ptr [rdi + 0x38], al
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rdx
	mov	qword ptr [rsi + 8], rcx
	mov	qword ptr [rsi + 0x10], r8
	ret	
.label_461:
	mov	byte ptr [rdi + 0x38], al
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rsi], xmm0
	nop	
	mov	qword ptr [rsi + 0x10], 0
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089b0

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi + 8]
	mov	rsp, rsp
	and	eax, 0x400ff
	cmp	eax, 6
	jne	.label_462
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	jmp	free_charset
.label_462:
	cmp	eax, 3
	jne	.label_463
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	jmp	free
.label_463:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4089f0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x30]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x48]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x50]
	lea	rcx, [rbx + 8]
	nop	
	cmp	rax, rcx
	mov	rsp, rsp
	je	.label_464
	mov	rdi, qword ptr [rax + 0x10]
	mov	rbp, rbp
	call	free
	nop	
	mov	rdi, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	call	free
.label_464:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	mov	rdi, qword ptr [rbx + 0x60]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	call	free
	mov	rdi, rbx
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408a70

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	call	free
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbx
	nop	
	pop	rbx
	mov	rbp, rbp
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408ab0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rbp, rsi
	mov	r15, rdi
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xd0], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [r15 + 0xc0], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [r15 + 0xb0], xmm0
	nop	
	movups	xmmword ptr [r15 + 0xa0], xmm0
	movups	xmmword ptr [r15 + 0x90], xmm0
	movups	xmmword ptr [r15 + 0x80], xmm0
	nop	
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
	nop	
	movabs	rax, 0x555555555555554
	mov	rbp, rbp
	cmp	rbp, rax
	mov	rbp, rbp
	ja	.label_468
	lea	rsi, [rsi]
	lea	rdi, [rbp + 1]
	mov	qword ptr [r15 + 8], rdi
	mov	rsp, rsp
	shl	rdi, 4
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15], rax
	mov	rbp, rbp
	mov	eax, 1
	nop	dword ptr [rax]
.label_469:
	mov	rsp, rsp
	mov	rbx, rax
	lea	rax, [rbx + rbx]
	nop	
	cmp	rbx, rbp
	lea	rsi, [rsi]
	jbe	.label_469
	mov	rbp, rbp
	mov	edi, 0x18
	nop	
	mov	rsi, rbx
	call	rpl_calloc
	mov	qword ptr [r15 + 0x40], rax
	mov	rbp, rbp
	dec	rbx
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x88], rbx
	lea	rdi, [rdi]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	mov	dword ptr [r15 + 0xb4], eax
	lea	rsi, [rsi]
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	mov	rsp, rsp
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	or	cl, 0x20
	lea	rdi, [rdi]
	movzx	ecx, cl
	cmp	ecx, 0x75
	mov	rsp, rsp
	jne	.label_465
	mov	cl, byte ptr [rax + 1]
	or	cl, 0x20
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, 0x74
	jne	.label_465
	mov	cl, byte ptr [rax + 2]
	or	cl, 0x20
	nop	
	movzx	ecx, cl
	nop	
	cmp	ecx, 0x66
	jne	.label_465
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	nop	
	sete	cl
	movzx	ecx, cl
	movzx	edx, byte ptr [rax + rcx + 3]
	lea	rdi, [rdi]
	cmp	edx, 0x38
	lea	rsi, [rsi]
	jne	.label_465
	lea	rsi, [rsi]
	cmp	byte ptr [rax + rcx + 4], 0
	nop	
	jne	.label_465
	lea	rdi, [rdi]
	or	byte ptr [r15 + 0xb0], 4
.label_465:
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0xb0]
	mov	cl, al
	and	cl, 0xf7
	mov	byte ptr [r15 + 0xb0], cl
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_473
	nop	
	test	al, 4
	nop	
	jne	.label_474
	mov	edi, 0x20
	lea	rsi, [rsi]
	mov	esi, 1
	call	rpl_calloc
	mov	qword ptr [r15 + 0x78], rax
	mov	rbp, rbp
	xor	r12d, r12d
	mov	rsp, rsp
	test	rax, rax
	je	.label_468
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_467:
	mov	rbp, rbp
	xor	ebp, ebp
	nop	
	mov	ebx, r14d
	nop	dword ptr [rax]
.label_470:
	mov	edi, ebx
	call	btowc
	mov	rbp, rbp
	cmp	eax, -1
	je	.label_472
	lea	rdi, [rdi]
	mov	edx, 1
	mov	cl, bpl
	shl	rdx, cl
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rdi, [rdi]
	or	qword ptr [rcx + r12*8], rdx
.label_472:
	lea	rsi, [rsi]
	cmp	ebx, 0x7f
	ja	.label_471
	mov	rsp, rsp
	cmp	ebx, eax
	je	.label_471
	or	byte ptr [r15 + 0xb0], 8
.label_471:
	inc	rbp
	lea	rdi, [rdi]
	inc	ebx
	cmp	rbp, 0x40
	nop	
	jne	.label_470
	lea	rdi, [rdi]
	add	r14d, 0x40
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, 4
	mov	rbp, rbp
	jne	.label_467
	nop	
	jmp	.label_473
.label_474:
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [r15 + 120]], OFFSET FLAT:utf8_sb_map
.label_473:
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	je	.label_466
	xor	r14d, r14d
	cmp	qword ptr [r15 + 0x40], 0
	jne	.label_468
.label_466:
	mov	r14d, 0xc
.label_468:
	mov	eax, r14d
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408d80

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r14, r9
	mov	rsp, rsp
	mov	r13d, r8d
	lea	rdi, [rdi]
	mov	r12, rcx
	mov	r15, rdx
	nop	
	mov	rbp, rsi
	mov	rbx, rdi
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rbx + 0x80], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x70], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx + 0x60], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x50], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x40], xmm0
	movups	xmmword ptr [rbx + 0x30], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rbx + 0x20], xmm0
	nop	
	movups	xmmword ptr [rbx + 0x10], xmm0
	lea	rdi, [rdi]
	movups	xmmword ptr [rbx], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], 0
	lea	rsi, [rsi]
	movzx	r8d, r13b
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, rbx
	mov	rsp, rsp
	call	re_string_construct_common
	test	r15, r15
	mov	rsp, rsp
	jle	.label_482
	lea	rsi, [r15 + 1]
	mov	rdi, rbx
	mov	rbp, rbp
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_476
.label_482:
	nop	
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_481
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
.label_481:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 8], rbp
	mov	eax, dword ptr [r14 + 0xb4]
	test	r13b, r13b
	je	.label_475
	cmp	eax, 2
	jl	.label_479
	nop	dword ptr [rax]
.label_480:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_476
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	cmp	qword ptr [rbx + 0x38], r15
	jge	.label_476
	mov	rsi, qword ptr [rbx + 0x40]
	movsxd	rcx, dword ptr [r14 + 0xb4]
	add	rcx, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	cmp	rsi, rcx
	jg	.label_476
	lea	rdi, [rdi]
	add	rsi, rsi
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_480
	jmp	.label_476
.label_475:
	cmp	eax, 2
	jl	.label_483
	mov	rsp, rsp
	mov	rdi, rbx
	call	build_wcs_buffer
	jmp	.label_477
.label_479:
	mov	rdi, rbx
	nop	
	call	build_upper_buffer
	jmp	.label_477
.label_483:
	lea	rsi, [rsi]
	test	r12, r12
	mov	rsp, rsp
	je	.label_478
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
	jmp	.label_477
.label_478:
	mov	rax, qword ptr [rbx + 0x40]
	nop	
	mov	qword ptr [rbx + 0x30], rax
	nop	
	mov	qword ptr [rbx + 0x38], rax
.label_477:
	xor	eax, eax
.label_476:
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408f10

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x70]
	mov	rsp, rsp
	test	rdi, rdi
	nop	
	je	.label_484
	nop	dword ptr [rax + rax]
.label_485:
	mov	rbx, qword ptr [rdi]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_485
.label_484:
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x70], 0
	mov	dword ptr [r14 + 0x80], 0xf
	nop	
	mov	qword ptr [r14 + 0x68], 0
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x20]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x20], 0
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408f90

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbx
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	call	free
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_486
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	pop	rbx
	jmp	free
.label_486:
	mov	rsp, rsp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408fd0

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	rbx, rdx
	mov	r13, rsi
	mov	rbp, rbp
	mov	rbp, rdi
	mov	r15, qword ptr [r13]
	mov	qword ptr [r15 + 0xd8], rbx
	or	rdx, 0x800000
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	rsi, rbp
	call	fetch_token
	xor	r12d, r12d
	nop	
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r13
	lea	rdx, [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	r9, r14
	call	parse_reg_exp
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_491
	mov	eax, dword ptr [r14]
	test	eax, eax
	jne	.label_489
.label_491:
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	mov	rdi, r15
	call	create_tree
	mov	r13, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_488
	mov	rsp, rsp
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rsp, rsp
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	jmp	.label_490
.label_488:
	nop	
	mov	r12, r13
.label_490:
	mov	rbp, rbp
	test	r13, r13
	je	.label_487
	test	r12, r12
	je	.label_487
.label_489:
	mov	rax, r12
	nop	
	add	rsp, 0x18
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_487:
	lea	rdi, [rdi]
	mov	dword ptr [r14], 0xc
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	jmp	.label_489
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4090f0

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	r14
	mov	rbp, rbp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdi
	mov	rbx, qword ptr [r14]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	shl	rdi, 3
	call	malloc
	mov	qword ptr [rbx + 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 8]
	mov	rsp, rsp
	shl	rdi, 3
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbx + 8]
	shl	rax, 3
	lea	rsi, [rsi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	eax, 0xc
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x18], 0
	nop	
	je	.label_492
	cmp	qword ptr [rbx + 0x20], 0
	mov	rbp, rbp
	je	.label_492
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_492
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	test	rcx, rcx
	je	.label_492
	nop	
	mov	rdi, qword ptr [r14 + 0x30]
	shl	rdi, 3
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xe0], rax
	test	rax, rax
	nop	
	je	.label_498
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_495
	mov	rax, qword ptr [rbx + 0xe0]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_499:
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	nop	
	cmp	rcx, qword ptr [r14 + 0x30]
	jb	.label_499
.label_495:
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:optimize_subexps
	mov	rsp, rsp
	mov	rdx, rbx
	call	preorder
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r14 + 0x30], 0
	lea	rdi, [rdi]
	je	.label_496
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_494:
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	jne	.label_496
	inc	rax
	cmp	rax, qword ptr [r14 + 0x30]
	mov	rbp, rbp
	jb	.label_494
.label_496:
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r14 + 0x30]
	jne	.label_498
	mov	rdi, qword ptr [rbx + 0xe0]
	lea	rdi, [rdi]
	call	free
	nop	
	mov	qword ptr [rbx + 0xe0], 0
.label_498:
	mov	rdi, qword ptr [rbx + 0x68]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:lower_subexps
	mov	rdx, r14
	call	postorder
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_492
	mov	rdi, qword ptr [rbx + 0x68]
	nop	
	mov	esi, OFFSET FLAT:calc_first
	mov	rdx, rbx
	call	postorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_492
	nop	
	mov	rdi, qword ptr [rbx + 0x68]
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:calc_next
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	preorder
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x68]
	mov	esi, OFFSET FLAT:link_nfa_nodes
	mov	rbp, rbp
	mov	rdx, rbx
	call	preorder
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_492
	nop	
	mov	rdi, rbx
	call	calc_eclosure
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_492
	lea	rdi, [rdi]
	test	byte ptr [r14 + 0x38], 0x10
	jne	.label_493
	lea	rdi, [rdi]
	cmp	qword ptr [r14 + 0x30], 0
	lea	rsi, [rsi]
	je	.label_493
	test	byte ptr [rbx + 0xb0], 1
	mov	rsp, rsp
	jne	.label_497
.label_493:
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [rbx + 0x98], 0
	je	.label_492
.label_497:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rsi, [rsi]
	call	malloc
	lea	rsi, [rsi]
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
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409380

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	cmp	qword ptr [rdi + 0x10], 0
	mov	rsp, rsp
	je	.label_500
	mov	rsp, rsp
	mov	r11, qword ptr [rdi]
	mov	rsp, rsp
	xor	r9d, r9d
	movabs	r8, 0x1000000010001
	lea	rsi, [rsi]
	xor	r10d, r10d
	xor	eax, eax
	nop	dword ptr [rax]
.label_510:
	mov	rsi, rax
	mov	rsp, rsp
	shl	rsi, 4
	nop	
	movzx	edx, byte ptr [r11 + rsi + 8]
	mov	rsp, rsp
	dec	edx
	cmp	edx, 0xb
	ja	.label_512
	lea	rcx, [r11 + rsi]
	nop	
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_505]]
.label_1696:
	mov	dl, 1
	mov	rbp, rbp
	cmp	byte ptr [rcx], 0
	js	.label_507
	lea	rdi, [rdi]
	mov	dl, r10b
.label_507:
	mov	rbp, rbp
	mov	r10b, dl
	jmp	.label_508
.label_1697:
	nop	
	mov	rcx, qword ptr [rdi]
	mov	rsi, qword ptr [rcx + rsi]
	mov	edx, 2
.label_506:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	lea	rdi, [rdi]
	jne	.label_501
	inc	rdx
	mov	rsp, rsp
	cmp	rdx, 3
	lea	rsi, [rsi]
	jle	.label_506
	mov	rsp, rsp
	jmp	.label_508
.label_1698:
	mov	rbp, rbp
	mov	r9b, 1
	nop	
	jmp	.label_508
.label_1699:
	mov	edx, dword ptr [rcx]
	lea	ecx, [rdx - 0x10]
	cmp	ecx, 0x30
	lea	rdi, [rdi]
	ja	.label_511
	bt	r8, rcx
	jb	.label_508
.label_511:
	cmp	edx, 0x80
	mov	rsp, rsp
	jne	.label_501
.label_508:
	inc	rax
	mov	rsp, rsp
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_510
	jmp	.label_509
.label_500:
	xor	r9d, r9d
	xor	r10d, r10d
.label_509:
	mov	rbp, rbp
	mov	r8b, r9b
	and	r8b, 1
	lea	rsi, [rsi]
	or	r10b, r9b
	test	r10b, 1
	mov	rsp, rsp
	je	.label_502
	lea	rdi, [rdi]
	cmp	qword ptr [rdi + 0x10], 0
	nop	
	je	.label_502
	xor	eax, eax
	nop	
	mov	edx, 8
	nop	dword ptr [rax]
.label_504:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdi]
	mov	r9d, dword ptr [rsi + rdx]
	nop	
	movzx	ecx, r9b
	mov	rsp, rsp
	cmp	ecx, 1
	jne	.label_514
	mov	rsp, rsp
	cmp	byte ptr [rsi + rdx - 8], 0
	js	.label_513
.label_514:
	mov	r9, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	esi, dword ptr [r9 + rdx]
	lea	rsi, [rsi]
	movzx	ecx, sil
	cmp	ecx, 5
	nop	
	jne	.label_503
	lea	rdi, [rdi]
	and	esi, 0xffffff00
	or	esi, 7
	lea	rsi, [rsi]
	mov	dword ptr [r9 + rdx], esi
	jmp	.label_503
.label_513:
	mov	rsp, rsp
	and	r9d, 0xffdfffff
	mov	dword ptr [rsi + rdx], r9d
	nop	dword ptr [rax + rax]
.label_503:
	inc	rax
	lea	rsi, [rsi]
	add	rdx, 0x10
	cmp	rax, qword ptr [rdi + 0x10]
	jb	.label_504
.label_502:
	mov	dword ptr [rdi + 0xb4], 1
	mov	al, byte ptr [rdi + 0xb0]
	nop	
	cmp	qword ptr [rdi + 0x98], 0
	lea	rsi, [rsi]
	setg	cl
	or	cl, r8b
	add	cl, cl
	and	al, 0xf9
	or	al, cl
	mov	byte ptr [rdi + 0xb0], al
.label_501:
	lea	rdi, [rdi]
	ret	
.label_512:
	lea	rsi, [rsi]
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409550

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x20
	mov	r15, rdi
	mov	rax, qword ptr [r15 + 0x68]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [r15 + 0x90], rax
	mov	rcx, qword ptr [r15 + 0x30]
	lea	rax, [rax + rax*2]
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_copy
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_518
	cmp	qword ptr [r15 + 0x98], 0
	mov	rsp, rsp
	jle	.label_522
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	jle	.label_522
	xor	r13d, r13d
	mov	rbp, rbp
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_523:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	r8, qword ptr [rax + r13*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15]
	mov	r10, r8
	mov	rbp, rbp
	shl	r10, 4
	movzx	r9d, byte ptr [rax + r10 + 8]
	cmp	r9d, 4
	mov	rbp, rbp
	jne	.label_517
	cmp	qword ptr [rsp + 8], 0
	mov	esi, 0
	mov	rsp, rsp
	jle	.label_520
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x10]
	add	r10, rdi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	dword ptr [rax + rax]
.label_519:
	mov	rbx, qword ptr [rcx + rsi*8]
	shl	rbx, 4
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rdi + rbx + 8]
	cmp	edx, 9
	jne	.label_515
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi + rbx]
	cmp	rdx, qword ptr [r10]
	nop	
	je	.label_520
.label_515:
	inc	rsi
	cmp	rsi, rax
	mov	rsp, rsp
	jl	.label_519
.label_520:
	nop	
	cmp	r9d, 4
	nop	
	setne	al
	nop	
	cmp	rsi, qword ptr [rsp + 8]
	je	.label_517
	lea	rsi, [rsi]
	test	al, al
	nop	
	jne	.label_517
	mov	rax, qword ptr [r15 + 0x28]
	lea	rcx, [r8 + r8*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	r12, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_517
	mov	rax, qword ptr [r15 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r12 + r12*2]
	lea	rsi, [rsi]
	lea	rsi, [rax + rcx*8]
	mov	rdi, r14
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13d, 0
	mov	rbp, rbp
	jne	.label_518
	nop	word ptr cs:[rax + rax]
.label_517:
	inc	r13
	cmp	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	jl	.label_523
.label_522:
	mov	rsp, rsp
	lea	rdi, [rsp + 0x1c]
	lea	rsi, [rsi]
	lea	rdx, [rsp]
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x48], rax
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_521
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x68], 0
	js	.label_524
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 0x60], rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x58], rax
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x50], rax
	jmp	.label_525
.label_524:
	mov	rsp, rsp
	lea	rbx, [rsp + 0x1c]
	lea	r14, [rsp]
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, r14
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x50], rax
	mov	ecx, 2
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	lea	rdi, [rdi]
	call	re_acquire_state_context
	nop	
	mov	qword ptr [r15 + 0x58], rax
	lea	rdi, [rdi]
	mov	ecx, 6
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, r14
	call	re_acquire_state_context
	mov	qword ptr [r15 + 0x60], rax
	cmp	qword ptr [r15 + 0x50], 0
	je	.label_516
	nop	
	test	rax, rax
	mov	rbp, rbp
	je	.label_516
	mov	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_516
.label_525:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_518:
	add	rsp, 0x20
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	ret	
.label_516:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	jmp	.label_518
.label_521:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	jmp	.label_518
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409810

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	mov	qword ptr [rdx], rdi
	mov	qword ptr [rdx + 0x58], rsi
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x50], rsi
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	byte ptr [rdx + 0x88], r8b
	mov	rbp, rbp
	test	rcx, rcx
	mov	rsp, rsp
	setne	al
	or	al, r8b
	lea	rsi, [rsi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rbp, rbp
	mov	eax, dword ptr [r9 + 0xb4]
	mov	dword ptr [rdx + 0x90], eax
	lea	rdi, [rdi]
	mov	al, byte ptr [r9 + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rdx + 0x89], al
	mov	rsp, rsp
	mov	al, byte ptr [r9 + 0xb0]
	shr	al, 3
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8a], al
	mov	rax, qword ptr [rdx + 0x58]
	mov	qword ptr [rdx + 0x68], rax
	mov	qword ptr [rdx + 0x60], rax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4098a0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r14
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rdi, [rdi]
	jl	.label_526
	mov	rax, r14
	lea	rdi, [rdi]
	shr	rax, 0x3d
	mov	ebp, 0xc
	lea	rdi, [rdi]
	jne	.label_527
	nop	
	mov	rdi, qword ptr [rbx + 0x10]
	nop	
	lea	rsi, [r14*4]
	lea	rsi, [rsi]
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	mov	rbp, rbp
	je	.label_527
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_526
	lea	rsi, [r14*8]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_527
	mov	qword ptr [rbx + 0x18], rax
.label_526:
	cmp	byte ptr [rbx + 0x8b], 0
	je	.label_528
	mov	rdi, qword ptr [rbx + 8]
	mov	rsi, r14
	mov	rsp, rsp
	call	realloc
	mov	ebp, 0xc
	test	rax, rax
	je	.label_527
	nop	
	mov	qword ptr [rbx + 8], rax
.label_528:
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x40], r14
	mov	rsp, rsp
	xor	ebp, ebp
.label_527:
	mov	eax, ebp
	nop	
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x409970

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x78
	mov	r15, rdi
	mov	rbp, rbp
	mov	r13, qword ptr [r15 + 0x30]
	mov	rbx, qword ptr [r15 + 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x58]
	lea	rsi, [rsi]
	cmp	rbx, rax
	nop	
	cmovg	rbx, rax
	cmp	byte ptr [r15 + 0x8a], 0
	jne	.label_529
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_529
	cmp	byte ptr [r15 + 0x8c], 0
	lea	rsi, [rsi]
	je	.label_563
.label_529:
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x38]
	jmp	.label_538
.label_563:
	cmp	rbx, r13
	mov	rsp, rsp
	jle	.label_564
	lea	r14, [r15 + 0x20]
	nop	
	jmp	.label_531
.label_551:
	nop	
	mov	r12, rcx
	lea	rax, [rbx + 1]
	cmp	rax, 2
	jb	.label_543
	lea	rsi, [rsi]
	cmp	rbx, -2
	lea	rdi, [rdi]
	jne	.label_572
	mov	rax, qword ptr [r15 + 0x40]
	nop	
	cmp	rax, qword ptr [r15 + 0x58]
	nop	
	jl	.label_572
.label_543:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	add	rax, r13
	mov	rbp, rbp
	mov	rcx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + 8]
	mov	rbp, rbp
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	byte ptr [rdx + r13], al
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	rbx, -1
	jne	.label_532
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
	jmp	.label_532
	nop	dword ptr [rax + rax]
.label_531:
	mov	rax, qword ptr [r15 + 0x28]
	add	rax, r13
	mov	rcx, qword ptr [r15]
	nop	
	movzx	ebp, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	test	bpl, bpl
	js	.label_547
	mov	rsp, rsp
	mov	rdi, r14
	call	mbsinit
	test	eax, eax
	je	.label_547
	nop	
	mov	r12, rbx
	mov	rbp, rbp
	call	__ctype_toupper_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax + rbp*4]
	mov	rcx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + r13], al
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rax + r13]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
.label_532:
	mov	rax, r13
	jmp	.label_557
	nop	dword ptr [rax + rax]
.label_547:
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x70], rax
	mov	rsi, qword ptr [r15]
	lea	rsi, [rsi]
	add	rsi, qword ptr [r15 + 0x28]
	add	rsi, r13
	lea	rdi, [rsp + 0x2c]
	mov	rsp, rsp
	mov	rcx, r14
	call	rpl_mbrtowc
	nop	
	mov	rcx, rbx
	mov	rbx, rax
	lea	rax, [rbx - 1]
	mov	rbp, rbp
	cmp	rax, -4
	lea	rbp, [rsp + 0x30]
	mov	rsp, rsp
	ja	.label_551
	mov	qword ptr [rsp + 0x20], rcx
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0x2c]
	call	towupper
	lea	rdi, [rdi]
	mov	r12d, eax
	mov	rsp, rsp
	cmp	r12d, dword ptr [rsp + 0x2c]
	lea	rdi, [rdi]
	jne	.label_540
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsi, qword ptr [r15]
	lea	rdi, [rdi]
	add	rsi, qword ptr [r15 + 0x28]
	nop	
	add	rsi, r13
	jmp	.label_544
.label_540:
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, r12d
	mov	rsp, rsp
	lea	rdx, [rsp + 0x70]
	nop	
	call	wcrtomb
	mov	rbp, rbp
	cmp	rbx, rax
	jne	.label_552
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	add	rdi, r13
	mov	rsi, rbp
.label_544:
	mov	rdx, rbx
	call	memcpy
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + r13*4], r12d
	mov	rsp, rsp
	lea	rbp, [rbx + r13]
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	mov	r12, qword ptr [rsp + 0x20]
	nop	
	jge	.label_557
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	lea	rdi, [rax + r13*4 + 4]
	lea	rsi, [rsi]
	lea	rdx, [rbx*4 - 4]
	mov	esi, 0xff
	call	memset
	mov	rax, rbp
.label_557:
	mov	rsp, rsp
	mov	rbx, r12
	nop	
	cmp	rbx, rax
	mov	rsp, rsp
	mov	r13, rax
	lea	rdi, [rdi]
	jg	.label_531
	mov	rbp, rbp
	jmp	.label_573
.label_552:
	lea	rdi, [rdi]
	mov	r12, r13
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_574
.label_572:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	qword ptr [r14], rax
.label_564:
	mov	rbp, rbp
	mov	rax, r13
.label_573:
	mov	qword ptr [r15 + 0x30], rax
	mov	qword ptr [r15 + 0x38], rax
	jmp	.label_533
.label_538:
	mov	rbp, rbp
	cmp	r13, rbx
	mov	rbp, rbp
	jge	.label_535
.label_574:
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x20]
	mov	qword ptr [rsp + 0x70], rax
	cmp	qword ptr [r15 + 0x78], 0
	jne	.label_541
	mov	rbp, qword ptr [r15]
	lea	rdi, [rdi]
	add	rbp, qword ptr [r15 + 0x28]
	nop	
	add	rbp, r12
.label_530:
	nop	
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	qword ptr [rsp + 0x10], rcx
	call	rpl_mbrtowc
	mov	r14, rax
	lea	r12, [r14 - 1]
	mov	rbp, rbp
	cmp	r12, -4
	lea	rsi, [rsi]
	ja	.label_556
	nop	
	mov	qword ptr [rsp + 0x20], rbx
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x28]
	call	towupper
	lea	rdi, [rdi]
	mov	ebx, eax
	cmp	ebx, dword ptr [rsp + 0x28]
	je	.label_536
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	lea	rdx, [rsp + 0x70]
	mov	rbp, rbp
	mov	esi, ebx
	call	wcrtomb
	mov	rdx, rax
	nop	
	sub	rax, r14
	mov	rsp, rsp
	jne	.label_567
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsp + 0x30]
	mov	rsp, rsp
	jmp	.label_571
.label_541:
	nop	
	lea	rbp, [rsp + 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0x90], 0
	lea	rsi, [rsi]
	jle	.label_530
	lea	rsi, [rsi]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_545:
	cmp	rax, rdx
	jge	.label_530
	mov	rbp, rbp
	mov	rdi, qword ptr [r15]
	mov	r8, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r15 + 0x28]
	add	rdi, r12
	movzx	edi, byte ptr [rax + rdi]
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	bl, byte ptr [r8 + rdi]
	mov	byte ptr [rsp + rax + 0x30], bl
	nop	
	mov	rbx, rsi
	lea	rsi, [rsi]
	inc	rax
	movsxd	rsi, dword ptr [r15 + 0x90]
	cmp	rax, rsi
	jl	.label_545
	jmp	.label_530
.label_556:
	lea	rax, [r14 + 1]
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_553
	cmp	r14, -2
	mov	rbp, rbp
	jne	.label_555
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [r15 + 0x58]
	lea	rdi, [rdi]
	jl	.label_555
.label_553:
	mov	rax, qword ptr [r15 + 0x28]
	nop	
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rdx, qword ptr [r15]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 0x78]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx + rax]
	movzx	edx, al
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_562
.label_559:
	movzx	eax, al
	mov	rcx, qword ptr [r15 + 8]
	mov	rbp, rbp
	mov	byte ptr [rcx + r13], al
	lea	rdi, [rdi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_568
.label_561:
	inc	r12
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x10]
	mov	dword ptr [rcx + r13*4], eax
	inc	r13
	cmp	r14, -1
	lea	rdi, [rdi]
	je	.label_546
	lea	rdi, [rdi]
	mov	rbp, r13
	lea	rsi, [rsi]
	jmp	.label_538
.label_567:
	mov	rbp, rbp
	cmp	rdx, -1
	nop	
	je	.label_536
	lea	rsi, [rsi]
	lea	rbp, [rdx + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x40]
	cmp	rbp, rdi
	nop	
	jbe	.label_539
.label_555:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x70]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x18]
.label_535:
	mov	qword ptr [r15 + 0x30], r13
	mov	qword ptr [r15 + 0x38], r12
.label_533:
	xor	eax, eax
.label_566:
	add	rsp, 0x78
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_536:
	mov	rdi, qword ptr [r15 + 8]
	nop	
	add	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
.label_571:
	mov	rdx, r14
	call	memcpy
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x18]
	cmp	byte ptr [r15 + 0x8c], 0
	je	.label_558
	mov	rbp, rbp
	lea	rax, [r13*8]
	nop	
	add	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rcx, r12
	lea	rsi, [rsi]
	mov	rdx, r14
	nop	word ptr [rax + rax]
.label_569:
	nop	
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	inc	rcx
	lea	rsi, [rsi]
	add	rax, 8
	dec	rdx
	lea	rsi, [rsi]
	jne	.label_569
.label_558:
	nop	
	add	r12, r14
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax + r13*4], ebx
	mov	rbp, rbp
	lea	rbp, [r14 + r13]
	mov	rbp, rbp
	lea	rax, [r13 + 1]
	cmp	rax, rbp
	jge	.label_570
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rax + r13*4 + 4]
	lea	rdx, [r14*4 - 4]
	mov	rsp, rsp
	mov	esi, 0xff
	call	memset
	jmp	.label_537
.label_570:
	nop	
	mov	rbp, rax
.label_537:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r13, rbp
	nop	
	jmp	.label_538
.label_539:
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_542
	shl	rdi, 3
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x20], rdx
	call	malloc
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x18], rax
	test	rax, rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 8]
	je	.label_549
.label_542:
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	cmp	byte ptr [r15 + 0x8c], 0
	jne	.label_554
	test	r13, r13
	mov	rbp, rbp
	je	.label_550
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x18]
	xor	ecx, ecx
.label_560:
	mov	qword ptr [rax + rcx*8], rcx
	inc	rcx
	cmp	r13, rcx
	lea	rsi, [rsi]
	jne	.label_560
.label_550:
	mov	byte ptr [r15 + 0x8c], 1
.label_554:
	mov	rdi, qword ptr [r15 + 8]
	add	rdi, r13
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdx
	nop	
	call	memcpy
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	dword ptr [rax + r13*4], ebx
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rsi
	nop	
	cmp	rdi, 2
	nop	
	jb	.label_565
	lea	rax, [r13*4]
	lea	rsi, [rsi]
	add	rax, qword ptr [r15 + 0x10]
	shl	r13, 3
	nop	
	add	r13, qword ptr [r15 + 0x18]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_534:
	mov	rsp, rsp
	cmp	rcx, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	cmovb	rdx, rcx
	add	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [r13 + rcx*8], rdx
	mov	dword ptr [rax + rcx*4], 0xffffffff
	nop	
	inc	rcx
	lea	rsi, [rsi]
	cmp	rdi, rcx
	jne	.label_534
.label_565:
	mov	rax, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	qword ptr [r15 + 0x58], rax
	cmp	qword ptr [r15 + 0x60], rsi
	mov	r12, rsi
	jle	.label_548
	add	qword ptr [r15 + 0x68], rax
.label_548:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x40]
	nop	
	mov	rax, qword ptr [r15 + 0x58]
	nop	
	cmp	rbx, rax
	cmovg	rbx, rax
	lea	rdi, [rdi]
	add	r12, r14
	mov	rbp, rbp
	mov	r13, rbp
	nop	
	jmp	.label_538
.label_562:
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rdx]
	jmp	.label_559
.label_568:
	mov	rcx, qword ptr [r15 + 0x18]
	mov	qword ptr [rcx + r13*8], r12
	jmp	.label_561
.label_546:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x70]
	nop	
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rbp, r13
	lea	rdi, [rdi]
	jmp	.label_538
.label_549:
	mov	eax, 0xc
	lea	rdi, [rdi]
	jmp	.label_566
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a0f0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	r14, rdi
	nop	
	mov	rbx, qword ptr [r14 + 0x30]
	mov	r15, qword ptr [r14 + 0x40]
	mov	rax, qword ptr [r14 + 0x58]
	lea	rsi, [rsi]
	cmp	r15, rax
	mov	rbp, rbp
	cmovg	r15, rax
	mov	rsp, rsp
	cmp	rbx, r15
	mov	rsp, rsp
	jge	.label_575
	jmp	.label_577
.label_576:
	mov	cl, byte ptr [rax + rdx]
	mov	rbp, rbp
	jmp	.label_578
	nop	dword ptr [rax]
.label_577:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14 + 0x78]
	add	rcx, qword ptr [r14 + 0x28]
	mov	cl, byte ptr [rbx + rcx]
	movzx	edx, cl
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_576
.label_578:
	mov	rsp, rsp
	movzx	edi, cl
	nop	
	call	toupper
	mov	rcx, qword ptr [r14 + 8]
	mov	byte ptr [rcx + rbx], al
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	cmp	rbx, r15
	jl	.label_577
	mov	rsp, rsp
	mov	rbx, r15
.label_575:
	mov	qword ptr [r14 + 0x30], rbx
	mov	qword ptr [r14 + 0x38], rbx
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a1a0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x58
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbx + 0x30]
	mov	r12, qword ptr [rbx + 0x40]
	mov	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	cmp	r12, rax
	cmovg	r12, rax
	cmp	r12, r13
	mov	rbp, rbp
	jle	.label_586
	lea	r14, [rbx + 0x20]
	mov	rbp, rbp
	lea	r15, [rsp + 0xc]
	nop	
	jmp	.label_582
	nop	word ptr [rax + rax]
.label_585:
	mov	rax, qword ptr [rbx + 0x28]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	movzx	eax, byte ptr [rcx + rax]
	mov	dword ptr [rsp + 0xc], eax
	nop	
	mov	rcx, qword ptr [rbx + 0x78]
	test	rcx, rcx
	jne	.label_588
.label_590:
	nop	
	mov	qword ptr [r14], rbp
	mov	eax, 1
.label_589:
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0xc]
	nop	
	mov	rdx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rdx + r13*4], ecx
	mov	rbp, rbp
	lea	rbp, [rax + r13]
	lea	rcx, [r13 + 1]
	cmp	rcx, rbp
	jge	.label_584
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	
	lea	rdi, [rcx + r13*4 + 4]
	lea	rdx, [rax*4 - 4]
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, rbp
.label_584:
	cmp	r12, rcx
	nop	
	mov	r13, rcx
	jg	.label_582
	jmp	.label_581
.label_579:
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 0
	mov	eax, 0
	lea	rsi, [rsp + 0x10]
	nop	
	jle	.label_580
	nop	word ptr cs:[rax + rax]
.label_587:
	cmp	rax, rdx
	jge	.label_583
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx]
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rcx, r13
	movzx	ecx, byte ptr [rax + rcx]
	mov	cl, byte ptr [rsi + rcx]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	add	rsi, r13
	mov	byte ptr [rax + rsi], cl
	mov	byte ptr [rsp + rax + 0x10], cl
	inc	rax
	movsxd	rcx, dword ptr [rbx + 0x90]
	mov	rbp, rbp
	cmp	rax, rcx
	mov	rsp, rsp
	jl	.label_587
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rbp, rbp
	jmp	.label_580
.label_588:
	movzx	eax, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xc], eax
	jmp	.label_590
.label_583:
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_580
	nop	word ptr cs:[rax + rax]
.label_582:
	nop	
	mov	rdx, r12
	nop	
	sub	rdx, r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rbx + 0x20]
	nop	
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsp, rsp
	jne	.label_579
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	add	rsi, qword ptr [rbx + 0x28]
	nop	
	add	rsi, r13
.label_580:
	mov	rdi, r15
	mov	rsp, rsp
	mov	rcx, r14
	lea	rsi, [rsi]
	call	rpl_mbrtowc
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	cmp	rcx, 2
	lea	rsi, [rsi]
	jb	.label_585
	cmp	rax, -2
	jne	.label_589
	mov	rax, qword ptr [rbx + 0x40]
	cmp	rax, qword ptr [rbx + 0x58]
	jge	.label_585
	mov	rbp, rbp
	mov	qword ptr [r14], rbp
.label_586:
	mov	rbp, rbp
	mov	rcx, r13
.label_581:
	mov	qword ptr [rbx + 0x30], rcx
	mov	qword ptr [rbx + 0x38], rcx
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a3c0

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	mov	rax, qword ptr [rdi + 0x30]
	mov	r8, qword ptr [rdi + 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi + 0x58]
	mov	rbp, rbp
	cmp	r8, rdx
	mov	rsp, rsp
	cmovg	r8, rdx
	lea	rsi, [rsi]
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_591
	nop	word ptr [rax + rax]
.label_592:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rsi, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	add	rdx, qword ptr [rdi + 0x28]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax + rdx]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rcx + rdx]
	mov	byte ptr [rsi + rax], cl
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r8
	jl	.label_592
	lea	rdi, [rdi]
	mov	rax, r8
.label_591:
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x38], rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a440

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbx
	mov	rbx, rsi
	nop	
	call	peek_token
	mov	rsp, rsp
	cdqe	
	add	qword ptr [rbx + 0x48], rax
	pop	rbx
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a460

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r12, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	r15, rdi
	mov	rbp, qword ptr [rsi]
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	call	parse_branch
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	r14d, r14d
	test	rbx, rbx
	jne	.label_596
	mov	rsp, rsp
	mov	eax, dword ptr [r12]
	nop	
	test	eax, eax
	mov	rbp, rbp
	jne	.label_594
.label_596:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	or	r14, 0x800000
	nop	dword ptr [rax]
.label_599:
	movzx	eax, byte ptr [r13 + 8]
	mov	rbp, rbp
	cmp	eax, 0xa
	nop	
	jne	.label_593
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, r15
	mov	rdx, r14
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	or	ecx, 8
	nop	
	cmp	ecx, 0xa
	mov	edx, 0
	je	.label_595
	cmp	qword ptr [rsp + 0x20], 0
	je	.label_598
	cmp	eax, 9
	mov	rsp, rsp
	mov	edx, 0
	je	.label_595
.label_598:
	mov	rax, qword ptr [rbp + 0xa8]
	mov	qword ptr [rsp + 0x10], rax
	nop	
	mov	rax, qword ptr [rsp]
	nop	
	mov	qword ptr [rbp + 0xa8], rax
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, r12
	call	parse_branch
	nop	
	mov	rdx, rax
	test	rdx, rdx
	mov	rsp, rsp
	jne	.label_600
	lea	rsi, [rsi]
	mov	eax, dword ptr [r12]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_597
.label_600:
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	or	qword ptr [rbp + 0xa8], rax
	nop	word ptr cs:[rax + rax]
.label_595:
	mov	rbp, rbp
	mov	ecx, 0xa
	mov	rdi, rbp
	mov	rsi, rbx
	call	create_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	test	rbx, rbx
	jne	.label_599
	mov	dword ptr [r12], 0xc
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_594
.label_593:
	mov	r14, rbx
.label_594:
	nop	
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	nop	
	pop	rbp
	ret	
.label_597:
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_594
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	postorder
	jmp	.label_594
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40a630

	.globl create_tree
	.type create_tree, @function
create_tree:
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], cl
	lea	rcx, [rsp + 8]
	nop	
	call	create_token_tree
	add	rsp, 0x18
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40a650

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x48]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x68], rax
	jle	.label_611
	mov	rcx, qword ptr [rbp + 8]
	movzx	r12d, byte ptr [rcx + rax]
	mov	byte ptr [r15], r12b
	nop	
	mov	eax, dword ptr [r15 + 8]
	mov	rsp, rsp
	mov	ecx, eax
	and	ecx, 0xff9fffff
	nop	
	mov	dword ptr [r15 + 8], ecx
	mov	rsp, rsp
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_619
	mov	rcx, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp + 0x30]
	nop	
	je	.label_619
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp + 0x10]
	cmp	dword ptr [rsi + rcx*4], -1
	mov	rsp, rsp
	je	.label_626
.label_619:
	mov	rbp, rbp
	cmp	r12d, 0x5c
	mov	rbp, rbp
	jne	.label_630
	mov	rax, qword ptr [rbp + 0x48]
	inc	rax
	cmp	rax, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jge	.label_633
	mov	rsp, rsp
	mov	r12, rdx
	mov	rdi, rbp
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	r14b, al
	mov	byte ptr [r15], r14b
	lea	rsi, [rsi]
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	mov	rsp, rsp
	or	ebx, 1
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_603
	mov	rsi, qword ptr [rbp + 0x48]
	inc	rsi
	mov	rdi, rbp
	call	re_string_wchar_at
	mov	ebp, eax
	mov	edi, ebp
	mov	rsp, rsp
	call	iswalnum
	test	eax, eax
	setne	al
	cmp	ebp, 0x5f
	mov	rbp, rbp
	sete	cl
	or	cl, al
	movzx	eax, cl
	shl	eax, 0x16
	mov	ebx, 0xffbfffff
	nop	
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_613
.label_611:
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 2
	mov	rbp, rbp
	xor	r14d, r14d
	jmp	.label_602
.label_630:
	mov	qword ptr [rsp], rdx
	mov	ebx, 0xffffff00
	mov	rsp, rsp
	and	ebx, dword ptr [r15 + 8]
	or	ebx, 1
	mov	dword ptr [r15 + 8], ebx
	cmp	dword ptr [rbp + 0x90], 2
	jl	.label_620
	mov	rsi, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	nop	
	call	re_string_wchar_at
	mov	rbp, rbp
	mov	ebx, eax
	nop	
	mov	edi, ebx
	call	iswalnum
	test	eax, eax
	nop	
	setne	al
	mov	rsp, rsp
	cmp	ebx, 0x5f
	sete	cl
	lea	rdi, [rdi]
	or	cl, al
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	shl	eax, 0x16
	lea	rsi, [rsi]
	mov	ebx, 0xffbfffff
	lea	rsi, [rsi]
	and	ebx, dword ptr [r15 + 8]
	jmp	.label_623
.label_633:
	mov	byte ptr [r15 + 8], 0x24
	mov	r14d, 1
	jmp	.label_602
.label_620:
	movzx	r14d, byte ptr [r15]
	mov	rbp, rbp
	cmp	r14, 0x5f
	mov	rbp, rbp
	sete	r13b
	lea	rsi, [rsi]
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + r14*2]
	lea	rdi, [rdi]
	movzx	ecx, r13b
	nop	
	shr	eax, 3
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	mov	rsp, rsp
	and	ebx, 0xffbfff01
.label_623:
	mov	rbp, rbp
	or	ebx, eax
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	mov	r14d, 1
	nop	
	cmp	r12d, 0x3e
	lea	rdi, [rdi]
	jg	.label_610
	nop	
	lea	eax, [r12 - 0x24]
	mov	rbp, rbp
	cmp	eax, 0xa
	lea	rsi, [rsi]
	ja	.label_614
	jmp	qword ptr [word ptr [+ (rax * 8) + label_618]]
.label_1722:
	mov	rdx, qword ptr [rsp]
	test	dl, 8
	lea	rsi, [rsi]
	jne	.label_621
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x48]
	mov	rbp, rbp
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp + 0x58]
	mov	rbp, rbp
	je	.label_621
	inc	qword ptr [rbp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	mov	rsi, rbp
	mov	rsp, rsp
	call	peek_token
	nop	
	dec	qword ptr [rbp + 0x48]
	nop	
	movzx	eax, byte ptr [rsp + 0x10]
	add	eax, -9
	lea	rsi, [rsi]
	cmp	eax, 1
	mov	rsp, rsp
	ja	.label_602
.label_621:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x20
	mov	rsp, rsp
	jmp	.label_602
.label_610:
	lea	rsi, [rsi]
	cmp	r12d, 0x7a
	jg	.label_628
	cmp	r12d, 0x3f
	lea	rdi, [rdi]
	je	.label_601
	cmp	r12d, 0x5b
	je	.label_605
	mov	rsp, rsp
	cmp	r12d, 0x5e
	jne	.label_602
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp]
	mov	rbp, rbp
	test	ecx, 0x800008
	jne	.label_607
	mov	rax, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	test	rax, rax
	je	.label_607
	test	ch, 8
	lea	rdi, [rdi]
	je	.label_602
	mov	rcx, qword ptr [rbp + 8]
	movzx	eax, byte ptr [rax + rcx - 1]
	cmp	eax, 0xa
	jne	.label_602
.label_607:
	mov	byte ptr [r15 + 8], 0xc
	mov	dword ptr [r15], 0x10
	lea	rsi, [rsi]
	jmp	.label_602
.label_603:
	movzx	ebp, r14b
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	cmp	ebp, 0x5f
	sete	cl
	movzx	ecx, cl
	shr	eax, 3
	mov	rbp, rbp
	and	eax, 1
	or	eax, ecx
	shl	eax, 0x16
	lea	rdi, [rdi]
	and	ebx, 0xffbfff01
.label_613:
	nop	
	or	ebx, eax
	mov	dword ptr [r15 + 8], ebx
	movzx	eax, r14b
	mov	r14d, 2
	mov	rsp, rsp
	cmp	eax, 0x5f
	nop	
	jg	.label_624
	lea	ecx, [rax - 0x27]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	mov	rsp, rsp
	ja	.label_627
	nop	
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_631]]
.label_1754:
	mov	rcx, r12
	test	ch, 0x40
	lea	rdi, [rdi]
	jne	.label_602
	mov	rsp, rsp
	mov	byte ptr [r15 + 8], 4
	add	eax, -0x31
	lea	rsi, [rsi]
	cdqe	
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	jmp	.label_602
.label_628:
	nop	
	cmp	r12d, 0x7b
	je	.label_604
	cmp	r12d, 0x7c
	je	.label_606
	mov	rsp, rsp
	cmp	r12d, 0x7d
	lea	rsi, [rsi]
	jne	.label_602
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	and	eax, 0x1200
	lea	rdi, [rdi]
	cmp	rax, 0x1200
	je	.label_608
	lea	rdi, [rdi]
	jmp	.label_602
.label_626:
	and	eax, 0xff9fff00
	or	eax, 0x200001
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], eax
	mov	r14d, 1
	jmp	.label_602
.label_624:
	mov	rbp, rbp
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xa
	ja	.label_615
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_617]]
.label_1765:
	mov	rbp, rbp
	test	r12d, 0x80000
	jne	.label_602
	and	ebx, 0xffffff00
	or	ebx, 0x22
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_614:
	cmp	r12d, 0xa
	lea	rdi, [rdi]
	jne	.label_602
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	test	ah, 8
	lea	rsi, [rsi]
	jne	.label_622
	jmp	.label_602
.label_1723:
	mov	rax, qword ptr [rsp]
	test	ah, 0x20
	jne	.label_629
	jmp	.label_602
.label_1724:
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	test	ah, 0x20
	lea	rdi, [rdi]
	jne	.label_609
	jmp	.label_602
.label_1725:
	and	ebx, 0xffffff00
	or	ebx, 0xb
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_1726:
	mov	rax, qword ptr [rsp]
	nop	
	test	ax, 0x402
	mov	rsp, rsp
	jne	.label_602
	lea	rdi, [rdi]
	jmp	.label_632
.label_1727:
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 5
	mov	rbp, rbp
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_602
.label_601:
	mov	rax, qword ptr [rsp]
	test	ax, 0x402
	jne	.label_602
	lea	rdi, [rdi]
	jmp	.label_612
.label_605:
	and	ebx, 0xffffff00
	nop	
	or	ebx, 0x14
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_602
.label_604:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	lea	rsi, [rsi]
	and	eax, 0x1200
	cmp	rax, 0x1200
	je	.label_616
	jmp	.label_602
.label_606:
	mov	rax, qword ptr [rsp]
	test	ah, 4
	nop	
	jne	.label_602
	test	ax, ax
	js	.label_622
	mov	rsp, rsp
	jmp	.label_602
.label_615:
	cmp	eax, 0x60
	je	.label_625
	mov	rsp, rsp
	cmp	eax, 0x62
	lea	rsi, [rsi]
	jne	.label_602
	lea	rdi, [rdi]
	test	r12d, 0x80000
	lea	rdi, [rdi]
	jne	.label_602
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0xc
	nop	
	mov	dword ptr [r15 + 8], ebx
	nop	
	mov	dword ptr [r15], 0x100
	jmp	.label_602
.label_627:
	cmp	eax, 0x57
	jne	.label_602
	test	r12d, 0x80000
	jne	.label_602
	and	ebx, 0xffffff00
	or	ebx, 0x21
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	jmp	.label_602
.label_1766:
	test	r12d, 0x80000
	nop	
	jne	.label_602
	mov	rbp, rbp
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x20
	mov	dword ptr [r15 + 8], ebx
	mov	rsp, rsp
	jmp	.label_602
.label_1767:
	lea	rsi, [rsi]
	and	r12d, 0x1200
	nop	
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_602
.label_616:
	and	ebx, 0xffffff00
	mov	rsp, rsp
	or	ebx, 0x17
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	jmp	.label_602
.label_1768:
	mov	rax, r12
	nop	
	test	ah, 4
	jne	.label_602
	lea	rsi, [rsi]
	test	ax, ax
	js	.label_602
.label_622:
	nop	
	and	ebx, 0xffffff00
	or	ebx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	mov	rbp, rbp
	jmp	.label_602
.label_1769:
	and	r12d, 0x1200
	mov	rsp, rsp
	cmp	r12, 0x200
	lea	rdi, [rdi]
	jne	.label_602
.label_608:
	and	ebx, 0xffffff00
	lea	rsi, [rsi]
	or	ebx, 0x18
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_625:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_602
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x40
	jmp	.label_602
.label_1750:
	lea	rdi, [rdi]
	test	r12d, 0x80000
	nop	
	jne	.label_602
	lea	rsi, [rsi]
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 0x80
	jmp	.label_602
.label_1751:
	mov	rax, r12
	lea	rsi, [rsi]
	test	ah, 0x20
	nop	
	jne	.label_602
.label_629:
	and	ebx, 0xffffff00
	or	ebx, 8
	mov	rsp, rsp
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_1752:
	mov	rax, r12
	nop	
	test	ah, 0x20
	jne	.label_602
.label_609:
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 9
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_1753:
	and	r12d, 0x402
	mov	rsp, rsp
	cmp	r12, 2
	nop	
	jne	.label_602
.label_632:
	nop	
	and	ebx, 0xffffff00
	mov	rbp, rbp
	or	ebx, 0x12
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_1755:
	test	r12d, 0x80000
	jne	.label_602
	and	ebx, 0xffffff00
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	lea	rdi, [rdi]
	mov	dword ptr [r15], 6
	jmp	.label_602
.label_1756:
	test	r12d, 0x80000
	jne	.label_602
	and	ebx, 0xffffff00
	or	ebx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [r15 + 8], ebx
	lea	rsi, [rsi]
	mov	dword ptr [r15], 9
	jmp	.label_602
.label_1757:
	and	r12d, 0x402
	cmp	r12, 2
	jne	.label_602
.label_612:
	and	ebx, 0xffffff00
	or	ebx, 0x13
	mov	dword ptr [r15 + 8], ebx
	jmp	.label_602
.label_1758:
	test	r12d, 0x80000
	jne	.label_602
	and	ebx, 0xffffff00
	lea	rdi, [rdi]
	or	ebx, 0xc
	mov	dword ptr [r15 + 8], ebx
	mov	dword ptr [r15], 0x200
	mov	rbp, rbp
	jmp	.label_602
.label_1759:
	lea	rsi, [rsi]
	test	r12d, 0x80000
	jne	.label_602
	lea	rdi, [rdi]
	and	ebx, 0xffffff00
	or	ebx, 0x23
	mov	dword ptr [r15 + 8], ebx
.label_602:
	lea	rdi, [rdi]
	mov	eax, r14d
	lea	rsi, [rsi]
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ae90

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	cmp	byte ptr [rdi + 0x8b], 0
	lea	rdi, [rdi]
	jne	.label_637
.label_634:
	mov	rax, qword ptr [rdi + 8]
	nop	
	mov	rcx, qword ptr [rdi + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + rax + 1]
.label_635:
	movzx	eax, al
	mov	rsp, rsp
	ret	
.label_637:
	cmp	dword ptr [rdi + 0x90], 2
	jl	.label_638
	mov	rax, qword ptr [rdi + 0x10]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 4], -1
	mov	rsp, rsp
	je	.label_634
	mov	rsp, rsp
	lea	rdx, [rcx + 2]
	cmp	qword ptr [rdi + 0x30], rdx
	mov	rsp, rsp
	je	.label_638
	mov	rsp, rsp
	cmp	dword ptr [rax + rcx*4 + 8], -1
	nop	
	je	.label_634
.label_638:
	mov	rax, qword ptr [rdi + 0x48]
	cmp	byte ptr [rdi + 0x8c], 0
	je	.label_636
	mov	rcx, qword ptr [rdi + 0x18]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	lea	rsi, [rsi]
	jmp	.label_639
.label_636:
	inc	rax
.label_639:
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rdi]
	mov	al, byte ptr [rcx + rax]
	nop	
	test	al, al
	jns	.label_635
	mov	cl, byte ptr [rdi + 0x8c]
	lea	rsi, [rsi]
	test	cl, cl
	lea	rsi, [rsi]
	je	.label_635
	nop	
	jmp	.label_634
	.section	.text
	.align	16
	#Procedure 0x40af30

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	cmp	dword ptr [rdi + 0x90], 1
	mov	rbp, rbp
	jne	.label_640
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 8]
	mov	rsp, rsp
	movzx	eax, byte ptr [rax + rsi]
	ret	
.label_640:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	mov	eax, dword ptr [rax + rsi*4]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40af60

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r14, r9
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], rcx
	mov	rbp, rbp
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	qword ptr [rsp], rax
	nop	
	call	parse_expression
	mov	rsp, rsp
	xor	r15d, r15d
	mov	rbp, rbp
	test	rax, rax
	jne	.label_641
	lea	rdi, [rdi]
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	mov	rbp, rbp
	je	.label_641
	nop	
	jmp	.label_646
	nop	word ptr cs:[rax + rax]
.label_644:
	test	rbx, rbx
	mov	rsp, rsp
	cmovne	r15, rbx
	mov	rax, r15
.label_641:
	mov	rbx, rax
	mov	rbp, rbp
	movzx	eax, byte ptr [r13 + 8]
	mov	ecx, eax
	mov	rbp, rbp
	or	ecx, 8
	cmp	ecx, 0xa
	je	.label_645
	test	r12, r12
	mov	rbp, rbp
	je	.label_648
	cmp	eax, 9
	mov	rbp, rbp
	je	.label_643
.label_648:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x10]
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r9, r14
	lea	rdi, [rdi]
	call	parse_expression
	mov	rbp, rbp
	mov	r15, rax
	test	r15, r15
	lea	rdi, [rdi]
	jne	.label_647
	mov	eax, dword ptr [r14]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_642
.label_647:
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_644
	mov	rbp, rbp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_644
	mov	ecx, 0x10
	mov	rdi, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	rdx, r15
	call	create_tree
	mov	rsp, rsp
	test	rax, rax
	jne	.label_641
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r15
	nop	
	xor	r15d, r15d
	call	postorder
	mov	esi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	mov	dword ptr [r14], 0xc
	mov	rbp, rbp
	jmp	.label_646
.label_642:
	mov	rbp, rbp
	xor	r15d, r15d
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_646
	mov	rsp, rsp
	xor	r15d, r15d
	mov	esi, OFFSET FLAT:free_tree
	nop	
	xor	edx, edx
	mov	rdi, rbx
	call	postorder
	lea	rsi, [rsi]
	jmp	.label_646
.label_645:
	mov	r15, rbx
	mov	rsp, rsp
	jmp	.label_646
.label_643:
	lea	rdi, [rdi]
	mov	r15, rbx
.label_646:
	mov	rbp, rbp
	mov	rax, r15
	add	rsp, 0x18
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b120

	.globl postorder
	.type postorder, @function
postorder:
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r15, rsi
	jmp	.label_649
	nop	word ptr cs:[rax + rax]
.label_651:
	mov	rdi, qword ptr [rcx + 0x10]
.label_649:
	lea	rdi, [rdi]
	mov	rcx, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + 8]
	nop	
	test	rdi, rdi
	jne	.label_649
	nop	
	cmp	qword ptr [rcx + 0x10], 0
	lea	rsi, [rsi]
	je	.label_653
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + 8]
	test	rdi, rdi
	jne	.label_649
	lea	rdi, [rdi]
	jmp	.label_651
.label_653:
	mov	r12, rbx
	nop	word ptr cs:[rax + rax]
.label_650:
	mov	rbp, rbp
	mov	rbx, rcx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	call	r15
	mov	rsp, rsp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_652
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_652
	lea	rsi, [rsi]
	cmovne	r12, rbx
	mov	rax, rcx
	mov	rsp, rsp
	cmove	rax, rbx
	mov	rdi, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	cmp	rdi, r12
	nop	
	mov	r12, rbx
	je	.label_650
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	mov	r12, rbx
	je	.label_650
	jmp	.label_649
.label_652:
	mov	rsp, rsp
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b200

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rax
	lea	rdi, [rsi + 0x28]
	lea	rdi, [rdi]
	call	free_token
	xor	eax, eax
	pop	rcx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b220

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x28
	nop	
	mov	qword ptr [rsp + 8], r9
	mov	qword ptr [rsp], r8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	mov	r13, rdx
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rsp, rsp
	mov	r14d, ecx
	and	r14d, 0x1000000
	mov	rbp, rbp
	mov	ebx, ecx
	and	ebx, 0x20
	mov	r15d, ecx
	and	r15d, 0x10
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_658
	nop	word ptr cs:[rax + rax]
.label_679:
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	call	fetch_token
.label_658:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	dec	eax
	nop	
	cmp	eax, 0x23
	nop	
	ja	.label_657
	mov	rbp, rbp
	mov	r12, qword ptr [rbp]
	jmp	qword ptr [word ptr [+ (rax * 8) + label_676]]
.label_1785:
	lea	rsi, [rsi]
	test	r14, r14
	lea	rdi, [rdi]
	jne	.label_678
.label_1782:
	mov	rsp, rsp
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_678
	lea	rdi, [rdi]
	test	r15, r15
	jne	.label_679
.label_1781:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	test	eax, 0x20000
	mov	rsp, rsp
	jne	.label_680
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 9
	mov	rbp, rbp
	jne	.label_680
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0x10
	lea	rdi, [rdi]
	jmp	.label_655
.label_678:
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xd
.label_655:
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_657:
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x28
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
.label_680:
	mov	byte ptr [r13 + 8], 1
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	call	create_token_tree
	mov	r14, rax
	test	r14, r14
	jne	.label_661
	lea	rsi, [rsi]
	jmp	.label_662
.label_1786:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r13 + 8]
	nop	
	cmp	eax, 0x21
	sete	al
	movzx	r8d, al
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.1_4
	mov	ecx, OFFSET FLAT:.str.2_2
	jmp	.label_669
.label_1787:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r13 + 8]
	cmp	eax, 0x23
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	r8d, al
	mov	edx, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str_0
.label_669:
	nop	
	mov	rdi, r12
	mov	rbx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r9, rbx
	lea	rsi, [rsi]
	call	build_charclass_op
	lea	rsi, [rsi]
	jmp	.label_659
.label_1784:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, r12
	mov	rbp, rbp
	mov	rdx, r13
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 8]
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_exp
	mov	rsp, rsp
	jmp	.label_659
.label_1777:
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rsp, rsp
	mov	r14, rax
	nop	
	test	r14, r14
	je	.label_662
	cmp	dword ptr [r12 + 0xb4], 2
	nop	
	jl	.label_661
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp + 0x20]
.label_681:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	cmp	qword ptr [rbx + 0x68], rax
	jle	.label_661
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	je	.label_661
	mov	rcx, qword ptr [rbx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	jne	.label_661
	lea	rsi, [rsi]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x18]
	call	fetch_token
	xor	esi, esi
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rbp, rax
	mov	rsp, rsp
	mov	ecx, 0x10
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	mov	rdx, rbp
	call	create_tree
	mov	r14, rax
	test	rbp, rbp
	je	.label_662
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_681
	lea	rdi, [rdi]
	jmp	.label_662
.label_1778:
	mov	rbp, rbp
	mov	cl, byte ptr [r13]
	mov	rbp, rbp
	mov	eax, 1
	mov	rbp, rbp
	shl	eax, cl
	lea	rdi, [rdi]
	cdqe	
	test	qword ptr [r12 + 0xa8], rax
	mov	rsp, rsp
	je	.label_654
	mov	rbp, rbp
	or	qword ptr [r12 + 0xa0], rax
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rbp, rbp
	mov	rcx, r13
	lea	rsi, [rsi]
	call	create_token_tree
	mov	r14, rax
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	je	.label_662
	inc	qword ptr [r12 + 0x98]
	nop	
	or	byte ptr [r12 + 0xb0], 2
	lea	rsi, [rsi]
	jmp	.label_661
.label_1779:
	nop	
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	mov	rcx, r13
	lea	rdi, [rdi]
	call	create_token_tree
	mov	r14, rax
	mov	rbp, rbp
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_662
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_661
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	jmp	.label_661
.label_1780:
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp]
	mov	rbp, rbp
	inc	r8
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, rbp
	mov	rdx, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 8]
	mov	r9, rbx
	lea	rdi, [rdi]
	call	parse_sub_exp
.label_659:
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_661
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rbx]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_657
.label_661:
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rbx, qword ptr [rsp + 0x18]
	nop	
	mov	rdx, rbx
	nop	
	call	fetch_token
	nop	
	mov	ebp, ebx
	lea	rdi, [rdi]
	mov	r15, rbx
	and	ebp, 0x1000000
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 8]
	nop	dword ptr [rax]
.label_673:
	nop	
	movzx	eax, byte ptr [r13 + 8]
	mov	rsp, rsp
	cmp	eax, 0x17
	lea	rdi, [rdi]
	ja	.label_664
	mov	ecx, 0x8c0800
	bt	ecx, eax
	mov	rsp, rsp
	jae	.label_666
	mov	rdi, r14
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8, r15
	mov	r9, rbx
	call	parse_dup_op
	test	rax, rax
	mov	rbp, rbp
	jne	.label_671
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbx]
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_672
.label_671:
	test	rbp, rbp
	mov	r14, rax
	je	.label_673
	movzx	ecx, byte ptr [r13 + 8]
	nop	
	cmp	ecx, 0x17
	je	.label_656
	cmp	ecx, 0xb
	mov	r14, rax
	jne	.label_673
.label_656:
	lea	rsi, [rsi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_660
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	postorder
.label_660:
	mov	dword ptr [rbx], 0xd
	lea	rsi, [rsi]
	jmp	.label_655
.label_672:
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	test	r14, r14
	je	.label_657
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rdi, r14
	nop	
	call	postorder
	jmp	.label_657
.label_664:
	nop	
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_657
.label_666:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r14
	jmp	.label_657
.label_1783:
	mov	eax, dword ptr [r13]
	lea	rsi, [rsi]
	test	ax, 0x30f
	je	.label_663
	lea	rdi, [rdi]
	test	byte ptr [r12 + 0xb0], 0x10
	mov	rsp, rsp
	jne	.label_665
	lea	rdi, [rdi]
	mov	rdi, r12
	call	init_word_char
.label_665:
	mov	eax, dword ptr [r13]
.label_663:
	cmp	eax, 0x200
	nop	
	je	.label_667
	cmp	eax, 0x100
	nop	
	jne	.label_677
.label_667:
	cmp	dword ptr [r13], 0x100
	jne	.label_670
	mov	dword ptr [r13], 6
	mov	rbp, rbp
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r12
	nop	
	mov	rcx, r13
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	eax, 9
	mov	rbp, rbp
	jmp	.label_675
.label_1788:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 5
	nop	
	jmp	.label_655
.label_662:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
	jmp	.label_655
.label_677:
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	mov	rcx, r13
	call	create_token_tree
	test	rax, rax
	mov	rcx, qword ptr [rsp + 8]
	nop	
	jne	.label_674
	mov	rbp, rbp
	mov	dword ptr [rcx], 0xc
	jmp	.label_655
.label_670:
	mov	dword ptr [r13], 5
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	call	create_token_tree
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	eax, 0xa
.label_675:
	mov	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	dword ptr [r13], eax
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rcx, r13
	call	create_token_tree
	mov	rbp, rax
	mov	ecx, 0xa
	nop	
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	create_tree
	test	rbx, rbx
	lea	rsi, [rsi]
	je	.label_668
	lea	rsi, [rsi]
	test	rbp, rbp
	je	.label_668
	test	rax, rax
	je	.label_668
.label_674:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	call	fetch_token
	jmp	.label_657
.label_654:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 6
	mov	rbp, rbp
	jmp	.label_655
.label_668:
	mov	dword ptr [r14], 0xc
	jmp	.label_655
	nop	
	.section	.text
	.align	16
	#Procedure 0x40b8d0

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rsp, rsp
	mov	r15, rcx
	nop	
	mov	r14, rdx
	mov	r12, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	cmp	dword ptr [rbx + 0x80], 0xf
	lea	rsi, [rsi]
	je	.label_682
.label_685:
	movsxd	rcx, dword ptr [rbx + 0x80]
	lea	eax, [rcx + 1]
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], eax
	mov	rdx, qword ptr [rbx + 0x70]
	shl	rcx, 6
	lea	rax, [rdx + rcx + 8]
	mov	qword ptr [rdx + rcx + 8], 0
	nop	
	mov	qword ptr [rdx + rcx + 0x10], r12
	mov	qword ptr [rdx + rcx + 0x18], r14
	nop	
	movups	xmm0, xmmword ptr [r15]
	mov	rsp, rsp
	movups	xmmword ptr [rdx + rcx + 0x30], xmm0
	and	byte ptr [rdx + rcx + 0x3a], 0xf3
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rdx + rcx + 0x20], xmm0
	mov	qword ptr [rdx + rcx + 0x40], -1
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_684
	lea	rdi, [rdi]
	mov	qword ptr [r12], rax
.label_684:
	test	r14, r14
	je	.label_683
	mov	rsp, rsp
	mov	qword ptr [r14], rax
.label_683:
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
.label_682:
	mov	edi, 0x3c8
	call	malloc
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	test	rcx, rcx
	mov	rsp, rsp
	je	.label_683
	mov	rax, qword ptr [rbx + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbx + 0x70], rcx
	lea	rdi, [rdi]
	mov	dword ptr [rbx + 0x80], 0
	jmp	.label_685
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40b9d0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r13, r9
	mov	qword ptr [rsp + 8], r8
	mov	rbp, rbp
	mov	rbp, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	r14, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rax, qword ptr [r14]
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	r12, qword ptr [r14 + 0x30]
	lea	rsi, [rsi]
	lea	rax, [r12 + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], rax
	mov	rdx, rbp
	or	rdx, 0x800000
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsi, r15
	mov	rbp, rbp
	call	fetch_token
	nop	
	movzx	eax, byte ptr [rbx + 8]
	nop	
	xor	r8d, r8d
	nop	
	cmp	eax, 9
	je	.label_688
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, r14
	mov	rdx, rbx
	lea	rsi, [rsi]
	mov	rcx, rbp
	mov	r8, qword ptr [rsp + 8]
	nop	
	mov	r9, r13
	call	parse_reg_exp
	mov	r8, rax
	xor	eax, eax
	cmp	dword ptr [r13], 0
	jne	.label_689
	movzx	eax, byte ptr [rbx + 8]
	mov	rbp, rbp
	cmp	eax, 9
	jne	.label_691
	mov	rbp, rbp
	xor	eax, eax
	cmp	dword ptr [r13], 0
	mov	rbp, rbp
	jne	.label_689
.label_688:
	cmp	r12, 8
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	ja	.label_690
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	cl, r12b
	lea	rdi, [rdi]
	shl	eax, cl
	mov	rsp, rsp
	cdqe	
	lea	rsi, [rsi]
	or	qword ptr [rdi + 0xa8], rax
.label_690:
	xor	edx, edx
	mov	ecx, 0x11
	nop	
	mov	rsi, r8
	call	create_tree
	mov	rbp, rbp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_686
	mov	qword ptr [rax + 0x28], r12
.label_689:
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_686:
	mov	rbp, rbp
	mov	dword ptr [r13], 0xc
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_689
.label_691:
	test	r8, r8
	je	.label_687
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r8
	mov	rsp, rsp
	call	postorder
.label_687:
	mov	dword ptr [r13], 8
	xor	eax, eax
	lea	rsi, [rsi]
	jmp	.label_689
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40bb50

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0xc8
	nop	
	mov	qword ptr [rsp + 0x28], r8
	mov	rsp, rsp
	mov	rbx, rcx
	mov	r12, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	lea	rsi, [rsi]
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb0], 0
	mov	qword ptr [rsp + 0xa8], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rdi, [rdi]
	call	rpl_calloc
	mov	r15, rax
	mov	edi, 0x50
	mov	rsp, rsp
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r14, rax
	lea	rsi, [rsi]
	test	r15, r15
	je	.label_721
	test	r14, r14
	nop	
	je	.label_721
	lea	rsi, [rsi]
	mov	rdi, r12
	nop	
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	ebp, eax
	movzx	eax, byte ptr [r12 + 8]
	lea	rsi, [rsi]
	cmp	eax, 0x19
	nop	
	je	.label_728
	cmp	eax, 2
	je	.label_694
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	lea	rsi, [rsi]
	jmp	.label_695
.label_728:
	or	byte ptr [r14 + 0x20], 1
	test	bh, 1
	je	.label_697
	mov	rsp, rsp
	mov	esi, 0xa
	mov	rdi, r15
	call	bitset_set
.label_697:
	movsxd	rax, ebp
	lea	rdi, [rdi]
	add	qword ptr [r13 + 0x48], rax
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	peek_token_bracket
	mov	rsp, rsp
	mov	ebp, eax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [r12 + 8]
	lea	rdi, [rdi]
	cmp	eax, 2
	je	.label_694
	mov	al, 1
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], eax
.label_695:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r14
	mov	eax, dword ptr [r12 + 8]
	movzx	ecx, al
	mov	rsp, rsp
	cmp	ecx, 0x15
	jne	.label_716
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [r12 + 8], eax
.label_716:
	lea	rax, [rsp + 0x60]
	nop	
	mov	qword ptr [rsp + 0xa0], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x98], 3
	lea	rdi, [rsp + 0x98]
	lea	rsi, [rsi]
	mov	r9d, 1
	nop	
	mov	rsi, r13
	mov	rdx, r12
	lea	rsi, [rsi]
	mov	ecx, ebp
	mov	rbp, r13
	lea	rsi, [rsi]
	mov	r8, rbx
	lea	rdi, [rdi]
	call	parse_bracket_element
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_710
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
	jmp	.label_707
	nop	word ptr cs:[rax + rax]
.label_699:
	mov	rsp, rsp
	cmp	eax, 2
	je	.label_709
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	lea	rax, [rsp + 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xa0], rax
	mov	dword ptr [rsp + 0x98], 3
	nop	
	xor	r9d, r9d
	lea	rdi, [rsp + 0x98]
	lea	rdi, [rdi]
	mov	rsi, rbp
	mov	rdx, r12
	mov	ecx, r14d
	mov	r8, rbx
	call	parse_bracket_element
	test	eax, eax
	mov	rbp, rbp
	je	.label_707
	mov	rbp, rbp
	jmp	.label_710
.label_714:
	lea	rax, [r13 + r13]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsi]
	lea	rsi, [rax*4 + 4]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_717
	lea	rcx, [r13 + r13 + 1]
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rbp], rax
	jmp	.label_719
	nop	dword ptr [rax]
.label_707:
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	r14d, eax
	mov	eax, dword ptr [rsp + 0x98]
	cmp	eax, 2
	lea	rsi, [rsi]
	je	.label_723
	nop	
	cmp	eax, 4
	mov	r13, qword ptr [rsp + 0x28]
	je	.label_724
	movzx	eax, byte ptr [r12 + 8]
	cmp	eax, 0x16
	je	.label_725
	cmp	eax, 2
	mov	rsp, rsp
	jne	.label_718
	mov	rsp, rsp
	jmp	.label_729
	nop	word ptr cs:[rax + rax]
.label_723:
	mov	r13, qword ptr [rsp + 0x28]
	jmp	.label_724
.label_725:
	lea	rdi, [rdi]
	movsxd	rax, r14d
	lea	rsi, [rsi]
	add	qword ptr [rbp + 0x48], rax
	mov	rsp, rsp
	lea	rdi, [rsp + 0x30]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	mov	rdx, rbx
	mov	rbp, rbp
	call	peek_token_bracket
	mov	rbp, rbp
	movzx	ecx, byte ptr [rsp + 0x38]
	mov	rsp, rsp
	cmp	ecx, 0x15
	je	.label_700
	cmp	ecx, 2
	je	.label_706
	lea	rcx, [rsp + 0x40]
	mov	qword ptr [rsp + 0x90], rcx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x88], 3
	mov	rsp, rsp
	mov	r9d, 1
	lea	rdi, [rsp + 0x88]
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rdx, [rsp + 0x30]
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	mov	r8, rbx
	mov	rbp, rbp
	call	parse_bracket_element
	test	eax, eax
	mov	rsp, rsp
	jne	.label_720
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	peek_token_bracket
	mov	rbp, rbp
	mov	r14d, eax
	mov	rax, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jg	.label_727
	nop	
	xor	edx, edx
.label_727:
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rsi, r15
	nop	
	lea	rcx, [rsp + 0xb0]
	mov	rsp, rsp
	lea	r8, [rsp + 0x98]
	lea	r9, [rsp + 0x88]
	mov	rbp, rbp
	call	build_range_exp
	mov	rsp, rsp
	jmp	.label_696
.label_700:
	lea	rdi, [rdi]
	mov	eax, r14d
	nop	
	neg	eax
	cdqe	
	add	qword ptr [rbp + 0x48], rax
	nop	
	mov	byte ptr [r12 + 8], 1
.label_718:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x98]
.label_724:
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	cmp	eax, 4
	ja	.label_726
	lea	rdi, [rdi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_702]]
.label_1815:
	nop	
	movzx	esi, byte ptr [rsp + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
	jmp	.label_711
.label_1816:
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rbp + 0x28]
	cmp	qword ptr [rsp + 8], r13
	je	.label_714
.label_719:
	mov	eax, dword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x28], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp]
	nop	
	mov	dword ptr [rdx + rcx*4], eax
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_711
.label_1817:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_equiv_class
	jmp	.label_696
.label_1818:
	mov	rsi, qword ptr [rsp + 0xa0]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	build_collating_symbol
	nop	
	jmp	.label_696
.label_1819:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp + 0x78]
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0xa0]
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x20]
	lea	rcx, [rsp + 0xa8]
	mov	rsp, rsp
	mov	r9, rbx
	lea	rdi, [rdi]
	call	build_charclass
.label_696:
	mov	rsp, rsp
	mov	dword ptr [r13], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_698
.label_711:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	mov	rsp, rsp
	cmp	eax, 0x15
	nop	
	jne	.label_699
	movsxd	rax, r14d
	add	qword ptr [rbp + 0x48], rax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	rsp, rsp
	test	al, al
	je	.label_703
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_not
.label_703:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], r13
	mov	r12, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	cmp	dword ptr [r12 + 0xb4], 2
	mov	r14, qword ptr [rsp + 0x20]
	jl	.label_713
	mov	rsi, qword ptr [r12 + 0x78]
	mov	rdi, r15
	call	bitset_mask
.label_713:
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x28], 0
	jne	.label_693
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 0x30], 0
	jne	.label_693
	cmp	qword ptr [r14 + 0x38], 0
	jne	.label_693
	cmp	qword ptr [r14 + 0x40], 0
	lea	rdi, [rdi]
	jne	.label_693
	nop	
	cmp	dword ptr [r12 + 0xb4], 2
	jl	.label_722
	cmp	qword ptr [r14 + 0x48], 0
	lea	rsi, [rsi]
	jne	.label_693
	test	byte ptr [r14 + 0x20], 1
	jne	.label_693
.label_722:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	call	free_charset
	mov	byte ptr [rsp + 0xc0], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xb8], r15
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rdi, r12
	call	create_token_tree
	nop	
	jmp	.label_715
.label_693:
	mov	rsp, rsp
	or	byte ptr [r12 + 0xb0], 2
	mov	byte ptr [rsp + 0xc0], 6
	mov	qword ptr [rsp + 0xb8], r14
	xor	ebx, ebx
	mov	rsp, rsp
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r12
	call	create_token_tree
	mov	rbp, rax
	nop	
	test	rbp, rbp
	je	.label_705
	nop	
.label_712:
	mov	rbp, rbp
	cmp	qword ptr [r15 + rbx*8], 0
	mov	rbp, rbp
	jne	.label_708
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	cmp	rbx, 3
	mov	rbp, rbp
	jle	.label_712
	nop	
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	jmp	.label_701
.label_708:
	mov	byte ptr [rsp + 0xc0], 3
	mov	qword ptr [rsp + 0xb8], r15
	lea	rsi, [rsi]
	lea	rcx, [rsp + 0xb8]
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r12
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_705
	nop	
	mov	ecx, 0xa
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rax
	mov	rdx, rbp
	call	create_tree
.label_715:
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_701
	lea	rsi, [rsi]
	jmp	.label_705
.label_710:
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rcx], eax
.label_698:
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_692
.label_694:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 2
	mov	rbp, rbp
	jmp	.label_692
.label_709:
	lea	rdi, [rdi]
	mov	dword ptr [r13], 7
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_692
.label_721:
	mov	rdi, r15
	lea	rdi, [rdi]
	call	free
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	dword ptr [rax], 0xc
	mov	rsp, rsp
	jmp	.label_704
.label_729:
	mov	dword ptr [r13], 7
	nop	
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_692
.label_706:
	mov	dword ptr [r13], 7
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_692
.label_720:
	lea	rdi, [rdi]
	mov	dword ptr [r13], eax
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	jmp	.label_692
.label_717:
	mov	r14, rbp
.label_705:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
.label_692:
	mov	rdi, r15
	mov	rsp, rsp
	call	free
	mov	rdi, r14
	nop	
	call	free_charset
.label_704:
	xor	ebp, ebp
.label_701:
	mov	rax, rbp
	nop	
	add	rsp, 0xc8
	pop	rbx
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_726:
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.5_1
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	lea	rdi, [rdi]
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40c310

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	r15
	mov	rbp, rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	mov	r14, rdi
	mov	al, byte ptr [r14 + 0xb0]
	mov	rsp, rsp
	mov	cl, al
	mov	rsp, rsp
	or	cl, 0x10
	mov	byte ptr [r14 + 0xb0], cl
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	test	al, 8
	mov	r15d, 0
	mov	rbp, rbp
	jne	.label_730
	movabs	rax, 0x3ff000000000000
	mov	rsp, rsp
	mov	qword ptr [r14 + 0xb8], rax
	movabs	rax, 0x7fffffe87fffffe
	mov	rbp, rbp
	mov	qword ptr [r14 + 0xc0], rax
	nop	
	mov	r15d, 2
	mov	ebx, 0x80
	test	byte ptr [r14 + 0xb0], 4
	je	.label_730
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14 + 0xc8], xmm0
.label_733:
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
.label_730:
	call	__ctype_b_loc
	nop	
	lea	rdx, [rbx + rbx]
	add	rdx, qword ptr [rax]
	nop	word ptr cs:[rax + rax]
.label_734:
	mov	rax, rdx
	mov	rsp, rsp
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_732:
	lea	esi, [rbx + rcx]
	cmp	esi, 0x5f
	lea	rdi, [rdi]
	je	.label_731
	nop	
	movzx	esi, word ptr [rax]
	and	esi, 8
	test	si, si
	mov	rbp, rbp
	je	.label_735
.label_731:
	lea	rdi, [rdi]
	mov	esi, 1
	shl	rsi, cl
	mov	rsp, rsp
	or	qword ptr [r14 + r15*8 + 0xb8], rsi
.label_735:
	inc	rcx
	lea	rdi, [rdi]
	add	rax, 2
	lea	rsi, [rsi]
	cmp	rcx, 0x40
	nop	
	jne	.label_732
	mov	rsp, rsp
	inc	r15
	add	rbx, 0x40
	lea	rdi, [rdi]
	add	rdx, 0x80
	lea	rsi, [rsi]
	cmp	r15d, 4
	jne	.label_734
	mov	rsp, rsp
	jmp	.label_733
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40c440

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	r12, r9
	mov	dword ptr [rsp + 0xc], r8d
	mov	rbp, rcx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], 0
	mov	edi, 0x20
	mov	esi, 1
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	rbx, rax
	test	rbx, rbx
	lea	rdi, [rdi]
	je	.label_739
	mov	qword ptr [rsp], r12
	nop	
	mov	edi, 0x50
	nop	
	mov	esi, 1
	call	rpl_calloc
	mov	r12, rax
	test	r12, r12
	je	.label_744
	lea	rdi, [rdi]
	mov	al, byte ptr [r12 + 0x20]
	and	al, 0xfe
	mov	ecx, dword ptr [rsp + 0xc]
	or	al, cl
	lea	rdi, [rdi]
	mov	byte ptr [r12 + 0x20], al
	nop	
	lea	rcx, [rsp + 0x20]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	rdi, r13
	nop	
	mov	rsi, rbx
	mov	rdx, r12
	mov	r8, r14
	nop	
	call	build_charclass
	mov	rbp, rbp
	mov	r14d, eax
	mov	rbp, rbp
	test	r14d, r14d
	jne	.label_745
	mov	al, byte ptr [rbp]
	test	al, al
	je	.label_737
	lea	rdi, [rdi]
	inc	rbp
	nop	dword ptr [rax + rax]
.label_743:
	movsx	rsi, al
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsp, rsp
	call	bitset_set
	mov	al, byte ptr [rbp]
	inc	rbp
	lea	rdi, [rdi]
	test	al, al
	jne	.label_743
.label_737:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0xc]
	test	al, al
	je	.label_747
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	bitset_not
.label_747:
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_740
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 + 0x78]
	mov	rdi, rbx
	call	bitset_mask
.label_740:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x18], 3
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rsp + 0x10]
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	rbp, rax
	mov	rbp, rbp
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_741
	lea	rdi, [rdi]
	cmp	dword ptr [r15 + 0xb4], 2
	jl	.label_742
	mov	byte ptr [rsp + 0x18], 6
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r12
	or	byte ptr [r15 + 0xb0], 2
	nop	
	lea	rcx, [rsp + 0x10]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	edx, edx
	mov	rdi, r15
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_741
	mov	rsp, rsp
	mov	ecx, 0xa
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, rax
	mov	rsp, rsp
	call	create_tree
	nop	
	mov	rbp, rax
	mov	rbp, rbp
	jmp	.label_738
.label_742:
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	free_charset
	jmp	.label_738
.label_741:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	free_charset
	mov	rsp, rsp
	jmp	.label_746
.label_739:
	mov	dword ptr [r12], 0xc
	lea	rsi, [rsi]
	jmp	.label_736
.label_744:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	free
.label_746:
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], 0xc
	jmp	.label_736
.label_745:
	mov	rdi, rbx
	call	free
	mov	rdi, r12
	call	free_charset
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	mov	dword ptr [rax], r14d
.label_736:
	xor	ebp, ebp
.label_738:
	lea	rsi, [rsi]
	mov	rax, rbp
	nop	
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40c6a0

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r13, r9
	mov	rbp, r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	qword ptr [rsp + 0x18], rdx
	mov	r14, rsi
	mov	r12, rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x48]
	movups	xmm0, xmmword ptr [r15]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x17
	mov	rbp, rbp
	jne	.label_755
	mov	qword ptr [rsp], rcx
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	qword ptr [rsp + 8], rbp
	call	fetch_number
	mov	rbx, rax
	cmp	rbx, -1
	jne	.label_748
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 1
	jne	.label_751
	movzx	eax, byte ptr [r15]
	xor	ebx, ebx
	mov	rsp, rsp
	cmp	eax, 0x2c
	je	.label_758
	jmp	.label_751
.label_755:
	nop	
	mov	qword ptr [rsp + 0x10], r13
	mov	rbp, rbp
	cmp	eax, 0x12
	mov	rbp, rbp
	sete	cl
	lea	rsi, [rsi]
	movzx	ebx, cl
	mov	rsp, rsp
	cmp	eax, 0x13
	mov	eax, 1
	nop	
	mov	r13, -1
	mov	rsp, rsp
	cmove	r13, rax
.label_753:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	fetch_token
	mov	rsp, rsp
	xor	r14d, r14d
	test	r12, r12
	je	.label_750
	mov	rax, r13
	xor	r14d, r14d
	or	rax, rbx
	lea	rdi, [rdi]
	je	.label_756
	lea	rdi, [rdi]
	test	rbx, rbx
	jg	.label_759
	mov	r15, qword ptr [rsp + 0x18]
.label_767:
	movzx	eax, byte ptr [r12 + 0x30]
	nop	
	cmp	eax, 0x11
	nop	
	jne	.label_761
	mov	rdx, qword ptr [r12 + 0x28]
	mov	esi, OFFSET FLAT:mark_opt_subexp
	mov	rdi, r12
	nop	
	call	postorder
.label_761:
	lea	rdi, [rdi]
	cmp	r13, -1
	sete	al
	movzx	ecx, al
	or	ecx, 0xa
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r15
	mov	rsi, r12
	call	create_tree
	lea	rdi, [rdi]
	mov	rbp, rax
	test	rbp, rbp
	lea	rsi, [rsi]
	je	.label_760
	lea	rax, [rbx + 2]
	lea	rsi, [rsi]
	cmp	rax, r13
	jg	.label_764
	inc	rbx
	nop	word ptr cs:[rax + rax]
.label_752:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r15
	nop	
	call	duplicate_tree
	mov	r12, rax
	lea	rdi, [rdi]
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rdx, r12
	call	create_tree
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_760
	mov	rsp, rsp
	test	rax, rax
	je	.label_760
	xor	edx, edx
	mov	ecx, 0xa
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rax
	call	create_tree
	mov	rbp, rax
	test	rbp, rbp
	nop	
	je	.label_760
	inc	rbx
	cmp	rbx, r13
	jl	.label_752
.label_764:
	test	r14, r14
	je	.label_762
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbp
	call	create_tree
	nop	
	mov	r14, rax
	lea	rdi, [rdi]
	jmp	.label_750
.label_748:
	mov	qword ptr [rsp + 0x10], r13
	cmp	rbx, -2
	je	.label_754
.label_758:
	nop	
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	mov	r13, rbx
	lea	rsi, [rsi]
	je	.label_765
	cmp	eax, 1
	jne	.label_754
	movzx	eax, byte ptr [r15]
	cmp	eax, 0x2c
	jne	.label_754
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r15
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 8]
	call	fetch_number
	lea	rsi, [rsi]
	mov	r13, rax
	cmp	r13, -2
	mov	rbp, rbp
	je	.label_754
.label_765:
	cmp	r13, -1
	je	.label_757
	lea	rsi, [rsi]
	cmp	rbx, r13
	jg	.label_751
.label_757:
	mov	rbp, rbp
	movzx	eax, byte ptr [r15 + 8]
	cmp	eax, 0x18
	jne	.label_751
	lea	rsi, [rsi]
	cmp	r13, -1
	lea	rsi, [rsi]
	mov	rax, r13
	cmove	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 0x8000
	mov	rbp, qword ptr [rsp + 8]
	jl	.label_753
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xf
	nop	
	xor	r14d, r14d
	nop	
	jmp	.label_750
.label_751:
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 0xa
	xor	r14d, r14d
	jmp	.label_750
.label_754:
	mov	rax, qword ptr [rsp + 8]
	test	eax, 0x200000
	mov	rbp, rbp
	je	.label_749
	mov	rax, qword ptr [rsp]
	mov	qword ptr [r14 + 0x48], rax
	movaps	xmm0, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [r15], xmm0
	mov	byte ptr [r15 + 8], 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	jmp	.label_750
.label_762:
	lea	rdi, [rdi]
	mov	r14, rbp
	jmp	.label_750
.label_756:
	nop	
	mov	esi, OFFSET FLAT:free_tree
	xor	edx, edx
	mov	rdi, r12
	call	postorder
	jmp	.label_750
.label_759:
	mov	ebp, 1
	lea	rdi, [rdi]
	mov	r14, r12
	nop	
	cmp	rbx, 2
	lea	rsi, [rsi]
	jge	.label_766
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_768
.label_766:
	nop	
	mov	r15, qword ptr [rsp + 0x18]
.label_763:
	mov	rdi, r12
	mov	rsi, r15
	call	duplicate_tree
	nop	
	mov	r12, rax
	mov	ecx, 0x10
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	call	create_tree
	mov	rsp, rsp
	mov	r14, rax
	lea	rsi, [rsi]
	test	r12, r12
	nop	
	je	.label_760
	nop	
	test	r14, r14
	je	.label_760
	nop	
	inc	rbp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	jl	.label_763
.label_768:
	cmp	rbx, r13
	je	.label_750
	mov	rdi, r12
	mov	rsi, r15
	lea	rdi, [rdi]
	call	duplicate_tree
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	mov	rbp, rbp
	jne	.label_767
.label_760:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	mov	dword ptr [rax], 0xc
	xor	r14d, r14d
.label_750:
	lea	rdi, [rdi]
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_749:
	movzx	eax, byte ptr [r15 + 8]
	mov	rbp, rbp
	cmp	eax, 2
	nop	
	setne	al
	lea	rdi, [rdi]
	movzx	eax, al
	nop	
	add	eax, 9
	mov	rcx, qword ptr [rsp + 0x10]
	mov	dword ptr [rcx], eax
	xor	r14d, r14d
	jmp	.label_750
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cae0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	mov	rax, qword ptr [rsi + 0x48]
	cmp	qword ptr [rsi + 0x68], rax
	lea	rsi, [rsi]
	jle	.label_775
	mov	rcx, qword ptr [rsi + 8]
	mov	r8b, byte ptr [rcx + rax]
	mov	byte ptr [rdi], r8b
	cmp	dword ptr [rsi + 0x90], 2
	mov	rsp, rsp
	jl	.label_769
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x30]
	je	.label_769
	mov	rcx, qword ptr [rsi + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_772
.label_769:
	movzx	ecx, r8b
	mov	rsp, rsp
	test	dl, 1
	mov	rsp, rsp
	je	.label_778
	cmp	ecx, 0x5c
	lea	rsi, [rsi]
	jne	.label_778
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_778
	lea	rdi, [rdi]
	mov	qword ptr [rsi + 0x48], rax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsi + 8]
	mov	al, byte ptr [rcx + rax]
	mov	byte ptr [rdi], al
	lea	rsi, [rsi]
	jmp	.label_772
.label_775:
	mov	byte ptr [rdi + 8], 2
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_778:
	mov	rbp, rbp
	cmp	ecx, 0x5b
	jne	.label_780
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsi + 0x48]
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rsi + 0x58]
	lea	rsi, [rsi]
	jge	.label_781
	mov	rcx, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	jmp	.label_771
.label_780:
	cmp	ecx, 0x5e
	nop	
	je	.label_774
	lea	rdi, [rdi]
	cmp	ecx, 0x5d
	je	.label_777
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_772
	mov	byte ptr [rdi + 8], 0x16
	mov	eax, 1
	lea	rsi, [rsi]
	ret	
.label_772:
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	eax, 1
	lea	rdi, [rdi]
	ret	
.label_781:
	mov	rbp, rbp
	xor	eax, eax
.label_771:
	mov	byte ptr [rdi], al
	nop	
	movzx	eax, al
	nop	
	cmp	eax, 0x3d
	je	.label_773
	cmp	eax, 0x3a
	je	.label_776
	lea	rdi, [rdi]
	cmp	eax, 0x2e
	jne	.label_779
	mov	byte ptr [rdi + 8], 0x1a
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_777:
	mov	byte ptr [rdi + 8], 0x15
	mov	eax, 1
	ret	
.label_776:
	mov	rsp, rsp
	test	dl, 4
	mov	rsp, rsp
	jne	.label_770
.label_779:
	nop	
	mov	byte ptr [rdi + 8], 1
	mov	rbp, rbp
	mov	byte ptr [rdi], r8b
	mov	eax, 1
	ret	
.label_774:
	lea	rdi, [rdi]
	mov	byte ptr [rdi + 8], 0x19
	mov	rsp, rsp
	mov	eax, 1
	ret	
.label_773:
	mov	byte ptr [rdi + 8], 0x1c
	mov	rsp, rsp
	mov	eax, 2
	mov	rbp, rbp
	ret	
.label_770:
	mov	byte ptr [rdi + 8], 0x1e
	lea	rdi, [rdi]
	mov	eax, 2
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cc60

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	mov	eax, 1
	mov	cl, sil
	shl	rax, cl
	nop	
	mov	rcx, rsi
	sar	rcx, 0x3f
	nop	
	shr	rcx, 0x3a
	nop	
	add	rcx, rsi
	mov	rsp, rsp
	sar	rcx, 6
	mov	rsp, rsp
	or	qword ptr [rdi + rcx*8], rax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40cc90

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x28
	mov	dword ptr [rsp + 0x14], r9d
	mov	qword ptr [rsp + 8], r8
	mov	ebp, ecx
	mov	r14, rdx
	mov	rbx, rsi
	mov	r15, rdi
	nop	
	mov	r13, qword ptr [rbx + 0x48]
	nop	
	mov	rdi, rbx
	mov	rsi, r13
	call	re_string_char_size_at
	mov	r12d, eax
	cmp	r12d, 2
	lea	rsi, [rsi]
	jl	.label_783
	mov	dword ptr [r15], 1
	mov	rsi, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 8], eax
	movsxd	rax, r12d
	mov	rbp, rbp
	add	qword ptr [rbx + 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_784
.label_783:
	movsxd	rax, ebp
	nop	
	add	r13, rax
	mov	qword ptr [rbx + 0x48], r13
	movzx	eax, byte ptr [r14 + 8]
	add	eax, -0x16
	cmp	eax, 8
	ja	.label_782
	jmp	qword ptr [word ptr [+ (rax * 8) + label_786]]
.label_1797:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, rbx
	mov	rdx, r14
	mov	rbp, rbp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	jmp	parse_bracket_symbol
.label_1796:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_782
	nop	
	lea	rdi, [rsp + 0x18]
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	peek_token_bracket
	movzx	ecx, byte ptr [rsp + 0x20]
	mov	eax, 0xb
	nop	
	cmp	ecx, 0x15
	jne	.label_785
.label_782:
	mov	dword ptr [r15], 0
	lea	rsi, [rsi]
	mov	al, byte ptr [r14]
	mov	byte ptr [r15 + 8], al
.label_784:
	xor	eax, eax
.label_785:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40cdb0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, r9
	mov	rbp, rbp
	mov	rbp, r8
	mov	r15, rcx
	mov	r14, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	r12, rdi
	mov	ecx, dword ptr [rbp]
	mov	eax, 0xb
	cmp	ecx, 2
	lea	rdi, [rdi]
	je	.label_787
	cmp	ecx, 4
	je	.label_787
	mov	rsp, rsp
	mov	edx, dword ptr [rbx]
	cmp	edx, 2
	je	.label_787
	nop	
	cmp	edx, 4
	je	.label_787
	mov	rsp, rsp
	cmp	ecx, 3
	lea	rdi, [rdi]
	jne	.label_791
	mov	rdi, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	mov	rbp, rbp
	cmp	rcx, 1
	ja	.label_787
.label_791:
	cmp	dword ptr [rbx], 3
	jne	.label_800
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	call	strlen
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 3
	lea	rdi, [rdi]
	cmp	rcx, 1
	mov	rsp, rsp
	ja	.label_787
.label_800:
	mov	eax, dword ptr [rbp]
	cmp	eax, 3
	je	.label_806
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_808
	mov	al, byte ptr [rbp + 8]
	jmp	.label_788
.label_806:
	mov	rax, qword ptr [rbp + 8]
	lea	rsi, [rsi]
	mov	al, byte ptr [rax]
	jmp	.label_788
.label_808:
	nop	
	xor	eax, eax
.label_788:
	mov	ecx, dword ptr [rbx]
	cmp	ecx, 3
	mov	rbp, rbp
	je	.label_789
	lea	rdi, [rdi]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_793
	nop	
	mov	dl, byte ptr [rbx + 8]
	mov	rsp, rsp
	jmp	.label_795
.label_789:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 8]
	mov	dl, byte ptr [rcx]
	mov	rsp, rsp
	jmp	.label_795
.label_793:
	xor	edx, edx
.label_795:
	mov	ecx, dword ptr [rbp]
	cmp	ecx, 3
	mov	rsp, rsp
	je	.label_799
	mov	rsp, rsp
	test	ecx, ecx
	jne	.label_801
.label_799:
	movzx	edi, al
	mov	rsi, r14
	mov	ebp, edx
	call	parse_byte
	mov	edx, ebp
	mov	ebp, eax
	jmp	.label_804
.label_801:
	mov	ebp, dword ptr [rbp + 8]
.label_804:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbx]
	cmp	eax, 3
	je	.label_805
	mov	rsp, rsp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_807
.label_805:
	lea	rsi, [rsi]
	movzx	edi, dl
	mov	rsi, r14
	mov	rbp, rbp
	call	parse_byte
	lea	rdi, [rdi]
	mov	ebx, eax
	jmp	.label_790
.label_807:
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rbx + 8]
.label_790:
	cmp	ebp, -1
	mov	eax, 3
	mov	rbp, rbp
	je	.label_787
	lea	rsi, [rsi]
	cmp	ebx, -1
	je	.label_787
	lea	rdi, [rdi]
	test	r12d, 0x10000
	je	.label_797
	lea	rdi, [rdi]
	cmp	ebp, ebx
	lea	rdi, [rdi]
	mov	eax, 0xb
	mov	rbp, rbp
	ja	.label_787
.label_797:
	test	r14, r14
	mov	rbp, rbp
	je	.label_802
	mov	rbp, rbp
	mov	r12, qword ptr [r14 + 0x40]
	cmp	qword ptr [r15], r12
	lea	rdi, [rdi]
	je	.label_803
.label_796:
	nop	
	mov	rax, qword ptr [r14 + 8]
	mov	rcx, qword ptr [r14 + 0x40]
	mov	dword ptr [rax + rcx*4], ebp
	mov	rax, qword ptr [r14 + 0x40]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x40], rcx
	mov	rcx, qword ptr [r14 + 0x10]
	nop	
	mov	dword ptr [rcx + rax*4], ebx
.label_802:
	mov	rsp, rsp
	mov	r14d, ebx
	mov	ebp, ebp
	xor	ebx, ebx
	nop	
.label_798:
	mov	rsp, rsp
	cmp	rbp, rbx
	lea	rdi, [rdi]
	ja	.label_792
	cmp	rbx, r14
	mov	rbp, rbp
	ja	.label_792
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbx
	call	bitset_set
.label_792:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_798
.label_787:
	nop	
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_803:
	mov	rbp, rbp
	lea	rax, [r12 + r12]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 8]
	lea	rdi, [rdi]
	lea	rsi, [rax*4 + 4]
	mov	qword ptr [rsp + 0x10], rsi
	nop	
	call	realloc
	mov	qword ptr [rsp + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rsp + 0x10]
	call	realloc
	nop	
	mov	rdi, qword ptr [rsp + 8]
	nop	
	test	rdi, rdi
	je	.label_794
	test	rax, rax
	mov	rbp, rbp
	je	.label_794
	nop	
	lea	rcx, [r12 + r12 + 1]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rdi
	mov	qword ptr [r14 + 0x10], rax
	mov	qword ptr [r15], rcx
	mov	rsp, rsp
	jmp	.label_796
.label_794:
	lea	rsi, [rsi]
	mov	rbx, rax
	nop	
	call	free
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	jmp	.label_787
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d080

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
	nop	
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_809
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	mov	rsp, rsp
	call	bitset_set
	lea	rdi, [rdi]
	xor	eax, eax
.label_809:
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40d0d0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	mov	rbp, rbp
	call	strlen
	mov	rsp, rsp
	mov	rcx, rax
	mov	rsp, rsp
	mov	eax, 3
	cmp	rcx, 1
	jne	.label_810
	movzx	esi, byte ptr [rbx]
	mov	rdi, r14
	nop	
	call	bitset_set
	xor	eax, eax
.label_810:
	nop	
	add	rsp, 8
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40d120

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r12, r8
	mov	r13, rcx
	nop	
	mov	rbx, rdx
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	mov	rsp, rsp
	test	r9d, 0x400000
	je	.label_823
	nop	
	mov	esi, OFFSET FLAT:.str.7_1
	lea	rsi, [rsi]
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	nop	
	je	.label_836
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	jne	.label_823
.label_836:
	nop	
	mov	r12d, OFFSET FLAT:.str.9_1
.label_823:
	nop	
	mov	rbp, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [r13], rbp
	je	.label_850
.label_835:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	wctype
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbx + 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	esi, OFFSET FLAT:.str.1_4
	nop	
	mov	rdi, r12
	call	strcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	je	.label_865
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.10_2
	mov	rbp, rbp
	mov	rdi, r12
	nop	
	call	strcmp
	test	eax, eax
	nop	
	je	.label_873
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8_0
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_813
	mov	esi, OFFSET FLAT:.str.3_1
	nop	
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	mov	rbp, rbp
	je	.label_822
	mov	esi, OFFSET FLAT:.str.9_1
	nop	
	mov	rdi, r12
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	je	.label_832
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.11_2
	lea	rdi, [rdi]
	mov	rdi, r12
	mov	rbp, rbp
	call	strcmp
	test	eax, eax
	je	.label_840
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.12_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_868
	mov	esi, OFFSET FLAT:.str.7_1
	mov	rsp, rsp
	mov	rdi, r12
	call	strcmp
	test	eax, eax
	je	.label_852
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.13_0
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_817
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.14_2
	mov	rdi, r12
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_860
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.15_2
	mov	rdi, r12
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_870
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.16_1
	lea	rdi, [rdi]
	mov	rdi, r12
	call	strcmp
	mov	ecx, eax
	nop	
	mov	eax, 4
	lea	rdi, [rdi]
	test	ecx, ecx
	jne	.label_812
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	mov	rbp, rbp
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_826
.label_858:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_867
	lea	rdi, [rdi]
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_867:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_858
	jmp	.label_812
.label_865:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	test	r14, r14
	mov	rsp, rsp
	jne	.label_843
	nop	word ptr cs:[rax + rax]
.label_857:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 8
	je	.label_848
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	bitset_set
.label_848:
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_857
	mov	rsp, rsp
	jmp	.label_812
	nop	word ptr [rax + rax]
.label_843:
	nop	
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 8
	je	.label_862
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	bitset_set
.label_862:
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_843
	jmp	.label_812
.label_873:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	mov	rbp, rbp
	jne	.label_864
	nop	dword ptr [rax]
.label_827:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_816
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_816:
	inc	rbx
	xor	eax, eax
	mov	rsp, rsp
	cmp	rbx, 0x100
	jne	.label_827
	nop	
	jmp	.label_812
	nop	
.label_864:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 2
	je	.label_834
	lea	rdi, [rdi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	call	bitset_set
.label_834:
	lea	rsi, [rsi]
	inc	rbx
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_864
	jmp	.label_812
.label_813:
	nop	
	call	__ctype_b_loc
	nop	
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r14, r14
	jne	.label_811
	nop	word ptr cs:[rax + rax]
.label_861:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 2
	lea	rsi, [rsi]
	je	.label_856
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_856:
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	nop	
	jne	.label_861
	lea	rsi, [rsi]
	jmp	.label_812
	nop	word ptr [rax + rax]
.label_811:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	nop	
	test	byte ptr [rax + rbx*2 + 1], 2
	nop	
	je	.label_871
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_871:
	mov	rbp, rbp
	inc	rbx
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_811
	jmp	.label_812
.label_822:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rsi, [rsi]
	xor	ebx, ebx
	nop	
	test	r14, r14
	mov	rsp, rsp
	jne	.label_853
.label_838:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	lea	rdi, [rdi]
	je	.label_830
	mov	rdi, r15
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	bitset_set
.label_830:
	lea	rsi, [rsi]
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_838
	jmp	.label_812
.label_853:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 0x20
	je	.label_845
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	bitset_set
.label_845:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_853
	jmp	.label_812
.label_850:
	mov	rbp, rbp
	lea	rax, [rbp + rbp]
	mov	rdi, qword ptr [rbx + 0x18]
	lea	rsi, [rax*8 + 8]
	call	realloc
	mov	rsp, rsp
	mov	rcx, rax
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	je	.label_812
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp + 1]
	mov	qword ptr [rbx + 0x18], rcx
	mov	rbp, rbp
	mov	qword ptr [r13], rax
	lea	rdi, [rdi]
	jmp	.label_835
.label_832:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	nop	
	test	r14, r14
	lea	rsi, [rsi]
	jne	.label_814
	nop	
.label_828:
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	nop	
	je	.label_854
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_854:
	nop	
	inc	rbx
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_828
	jmp	.label_812
.label_814:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2 + 1], 4
	mov	rsp, rsp
	je	.label_833
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_833:
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_814
	lea	rdi, [rdi]
	jmp	.label_812
.label_840:
	call	__ctype_b_loc
	lea	rsi, [rsi]
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_847
	nop	dword ptr [rax + rax]
.label_859:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	je	.label_855
	mov	rdi, r15
	mov	rsp, rsp
	mov	rsi, rbx
	nop	
	call	bitset_set
.label_855:
	mov	rbp, rbp
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_859
	mov	rbp, rbp
	jmp	.label_812
.label_847:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 8
	mov	rbp, rbp
	je	.label_866
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_866:
	nop	
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, 0x100
	mov	rsp, rsp
	jne	.label_847
	jmp	.label_812
.label_868:
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	mov	rbp, rbp
	jne	.label_815
	nop	word ptr [rax + rax]
.label_842:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rsp, rsp
	je	.label_863
	nop	
	mov	rdi, r15
	mov	rsi, rbx
	call	bitset_set
.label_863:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	mov	rbp, rbp
	jne	.label_842
	jmp	.label_812
.label_815:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2 + 1], 0x40
	mov	rbp, rbp
	je	.label_839
	movzx	esi, byte ptr [r14 + rbx]
	mov	rbp, rbp
	mov	rdi, r15
	call	bitset_set
.label_839:
	lea	rdi, [rdi]
	inc	rbx
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_815
	nop	
	jmp	.label_812
.label_852:
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	nop	
	jne	.label_831
	nop	word ptr cs:[rax + rax]
.label_837:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2 + 1], 1
	je	.label_824
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_824:
	inc	rbx
	nop	
	xor	eax, eax
	nop	
	cmp	rbx, 0x100
	jne	.label_837
	lea	rsi, [rsi]
	jmp	.label_812
.label_831:
	mov	rbp, rbp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 1
	mov	rsp, rsp
	je	.label_872
	mov	rbp, rbp
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_872:
	mov	rsp, rsp
	inc	rbx
	mov	rbp, rbp
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_831
	jmp	.label_812
.label_817:
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	r12, rax
	xor	ebx, ebx
	test	r14, r14
	jne	.label_829
	nop	dword ptr [rax + rax]
.label_841:
	mov	rax, qword ptr [r12]
	mov	rsp, rsp
	test	byte ptr [rax + rbx*2], 1
	je	.label_849
	nop	
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	bitset_set
.label_849:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_841
	jmp	.label_812
.label_829:
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2], 1
	je	.label_846
	lea	rsi, [rsi]
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rsp, rsp
	call	bitset_set
.label_846:
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	lea	rdi, [rdi]
	jne	.label_829
	nop	
	jmp	.label_812
.label_860:
	nop	
	call	__ctype_b_loc
	mov	r12, rax
	xor	ebx, ebx
	mov	rbp, rbp
	test	r14, r14
	mov	rbp, rbp
	jne	.label_821
.label_869:
	nop	
	mov	rax, qword ptr [r12]
	cmp	word ptr [rax + rbx*2], 0
	lea	rsi, [rsi]
	jns	.label_819
	mov	rdi, r15
	mov	rsi, rbx
	mov	rbp, rbp
	call	bitset_set
.label_819:
	lea	rsi, [rsi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	nop	
	jne	.label_869
	jmp	.label_812
.label_821:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	cmp	word ptr [rax + rbx*2], 0
	jns	.label_874
	nop	
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_874:
	lea	rdi, [rdi]
	inc	rbx
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_821
	jmp	.label_812
.label_826:
	mov	rax, qword ptr [r12]
	test	byte ptr [rax + rbx*2 + 1], 0x10
	je	.label_825
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	mov	rbp, rbp
	call	bitset_set
.label_825:
	inc	rbx
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbx, 0x100
	jne	.label_826
	lea	rsi, [rsi]
	jmp	.label_812
.label_870:
	call	__ctype_b_loc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	ebx, ebx
	test	r14, r14
	jne	.label_818
.label_851:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_844
	mov	rdi, r15
	mov	rbp, rbp
	mov	rsi, rbx
	call	bitset_set
.label_844:
	inc	rbx
	mov	rsp, rsp
	xor	eax, eax
	cmp	rbx, 0x100
	jne	.label_851
.label_812:
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_818:
	mov	rax, qword ptr [r12]
	mov	rbp, rbp
	test	byte ptr [rax + rbx*2], 4
	lea	rsi, [rsi]
	je	.label_820
	movzx	esi, byte ptr [r14 + rbx]
	mov	rdi, r15
	call	bitset_set
.label_820:
	inc	rbx
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	rbx, 0x100
	jne	.label_818
	nop	
	jmp	.label_812
	nop	
	.section	.text
	.align	16
	#Procedure 0x40d9e0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_875:
	mov	rbp, rbp
	not	qword ptr [rdi + rax*8]
	mov	rsp, rsp
	inc	rax
	nop	
	cmp	rax, 4
	jne	.label_875
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da10

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_876:
	mov	rcx, qword ptr [rsi + rax*8]
	and	qword ptr [rdi + rax*8], rcx
	lea	rsi, [rsi]
	inc	rax
	cmp	rax, 4
	jne	.label_876
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40da40

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	mov	eax, 1
	cmp	dword ptr [rdi + 0x90], 1
	mov	rsp, rsp
	je	.label_877
	mov	rsp, rsp
	lea	rcx, [rsi + 1]
	cmp	rcx, qword ptr [rdi + 0x30]
	lea	rdi, [rdi]
	jge	.label_877
	lea	rdi, [rdi]
	lea	rcx, [rsi*4]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rdi + 0x10]
	mov	eax, 1
	nop	dword ptr [rax + rax]
.label_878:
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_877
	mov	rsp, rsp
	lea	rdx, [rsi + rax + 1]
	inc	rax
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rdi + 0x30]
	jl	.label_878
.label_877:
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dab0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	nop	
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	rax, qword ptr [rbx + 0x68]
	mov	r14d, 7
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbx + 0x48]
	jle	.label_881
	mov	rbp, -1
	mov	rbp, rbp
	movzx	r13d, byte ptr [r12]
	nop	word ptr cs:[rax + rax]
.label_882:
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	cmp	eax, 0x1e
	lea	rdi, [rdi]
	jne	.label_879
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	re_string_fetch_byte_case
	jmp	.label_885
	nop	
.label_879:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
	mov	al, byte ptr [rcx + rax]
.label_885:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x48]
	nop	
	cmp	qword ptr [rbx + 0x68], rcx
	jle	.label_881
	mov	rbp, rbp
	movzx	edx, al
	cmp	edx, r13d
	jne	.label_883
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	movzx	edx, byte ptr [rdx + rcx]
	cmp	edx, 0x5d
	je	.label_884
.label_883:
	mov	rcx, qword ptr [r15 + 8]
	mov	byte ptr [rcx + rbp + 1], al
	lea	rsi, [rsi]
	inc	rbp
	cmp	rbp, 0x1e
	jle	.label_882
.label_881:
	nop	
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
.label_884:
	lea	rsi, [rsi]
	inc	rcx
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
	mov	byte ptr [rax + rbp + 1], 0
	mov	rsp, rsp
	movzx	eax, byte ptr [r12 + 8]
	nop	
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	eax, 0x1e
	je	.label_880
	cmp	eax, 0x1c
	lea	rsi, [rsi]
	je	.label_886
	cmp	eax, 0x1a
	nop	
	jne	.label_881
	lea	rdi, [rdi]
	mov	dword ptr [r15], 3
	mov	rsp, rsp
	jmp	.label_881
.label_880:
	mov	dword ptr [r15], 4
	jmp	.label_881
.label_886:
	mov	dword ptr [r15], 2
	lea	rsi, [rsi]
	jmp	.label_881
	.section	.text
	.align	16
	#Procedure 0x40dbf0

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	push	r14
	push	rbx
	nop	
	mov	rbx, rdi
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_891
	mov	rax, qword ptr [rbx + 0x48]
.label_889:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 8]
.label_892:
	mov	rbp, rbp
	mov	bpl, byte ptr [rcx + rax]
.label_887:
	movzx	eax, bpl
	pop	rbx
	pop	r14
	pop	rbp
	mov	rbp, rbp
	ret	
.label_891:
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x8c], 0
	je	.label_890
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	je	.label_888
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_889
.label_888:
	nop	
	mov	r14, qword ptr [rbx + 0x48]
	nop	
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rdx, qword ptr [rbx + 0x28]
	add	rdx, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	bpl, byte ptr [rax + rdx]
	test	bpl, bpl
	js	.label_893
	mov	rdi, rbx
	mov	rsi, r14
	call	re_string_char_size_at
	mov	rsp, rsp
	cdqe	
	nop	
	add	rax, r14
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rax
	jmp	.label_887
.label_890:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x48]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	add	rax, qword ptr [rbx + 0x28]
	mov	qword ptr [rbx + 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx]
	nop	
	jmp	.label_892
.label_893:
	lea	rax, [r14 + 1]
	mov	qword ptr [rbx + 0x48], rax
	mov	rax, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	bpl, byte ptr [rax + r14]
	jmp	.label_887
	nop	
	.section	.text
	.align	16
	#Procedure 0x40dcd0

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	test	rsi, rsi
	je	.label_894
	lea	rsi, [rsi]
	jmp	btowc
.label_894:
	lea	rdi, [rdi]
	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dcf0

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdx
	nop	
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rcx, -1
	mov	rbp, rbp
	mov	r13d, 0x8000
	jmp	.label_896
.label_895:
	lea	rcx, [rbx + rbx*4]
	nop	
	lea	rcx, [rax + rcx*2 - 0x30]
	mov	rbp, rbp
	cmp	rcx, 0x8000
	lea	rsi, [rsi]
	cmovg	rcx, r13
	nop	word ptr [rax + rax]
.label_896:
	mov	rbx, rcx
	nop	
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	mov	rsp, rsp
	call	fetch_token
	movzx	eax, byte ptr [r12]
	mov	rsp, rsp
	movzx	edx, byte ptr [r12 + 8]
	cmp	edx, 0x18
	je	.label_898
	cmp	edx, 2
	je	.label_897
	cmp	eax, 0x2c
	lea	rsi, [rsi]
	je	.label_898
	cmp	eax, 0x30
	mov	rsp, rsp
	mov	rcx, -2
	jb	.label_896
	nop	
	cmp	edx, 1
	mov	rsp, rsp
	jne	.label_896
	lea	rdi, [rdi]
	cmp	rbx, -2
	lea	rsi, [rsi]
	je	.label_896
	movzx	edx, al
	cmp	edx, 0x39
	ja	.label_896
	cmp	rbx, -1
	jne	.label_895
	lea	rdi, [rdi]
	add	rax, -0x30
	mov	rcx, rax
	jmp	.label_896
.label_897:
	mov	rbx, -2
.label_898:
	mov	rax, rbx
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40dde0

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	r12, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [rbx + 0x28]
	xor	r14d, r14d
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	rdi, r15
	call	create_token_tree
	mov	qword ptr [rsp], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_900
	nop	
	lea	r13, [rsp]
	lea	rsi, [rsi]
	xor	r14d, r14d
.label_902:
	mov	rsp, rsp
	mov	qword ptr [rax], r12
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13]
	or	dword ptr [rax + 0x30], 0x40000
	mov	r12, qword ptr [r13]
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_903
	lea	r13, [r12 + 8]
	mov	rbp, rbp
	jmp	.label_905
	nop	word ptr cs:[rax + rax]
.label_903:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_906:
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rax, rbx
	mov	rbp, qword ptr [rax + 0x10]
	nop	
	cmp	rbp, rcx
	je	.label_899
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_904
.label_899:
	mov	rbx, qword ptr [rax]
	mov	r12, qword ptr [r12]
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_906
	lea	rsi, [rsi]
	jmp	.label_901
	nop	
.label_904:
	nop	
	lea	r13, [r12 + 0x10]
.label_905:
	lea	rcx, [rbp + 0x28]
	lea	rdi, [rdi]
	xor	esi, esi
	xor	edx, edx
	mov	rdi, r15
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [r13], rax
	mov	rsp, rsp
	test	rax, rax
	nop	
	mov	rbx, rbp
	jne	.label_902
	jmp	.label_900
.label_901:
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp]
.label_900:
	nop	
	mov	rax, r14
	nop	
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40df10

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	cmp	ecx, 0x11
	jne	.label_907
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + 0x28], rdi
	lea	rsi, [rsi]
	jne	.label_907
	or	eax, 0x80000
	lea	rsi, [rsi]
	mov	dword ptr [rsi + 0x30], eax
.label_907:
	mov	rsp, rsp
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40df40

	.globl preorder
	.type preorder, @function
preorder:
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	r15, rsi
	mov	rbx, rdi
	mov	rdi, r14
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	r15
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_910
.label_911:
	lea	rsi, [rsi]
	mov	r12, qword ptr [rbx + 8]
	test	r12, r12
	mov	ecx, 0
	lea	rsi, [rsi]
	jne	.label_909
	nop	word ptr [rax + rax]
.label_912:
	mov	rax, rcx
	mov	rcx, rbx
	mov	r12, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	r12, rax
	mov	rbp, rbp
	je	.label_908
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	jne	.label_909
.label_908:
	nop	
	mov	rbx, qword ptr [rcx]
	xor	eax, eax
	test	rbx, rbx
	mov	rsp, rsp
	jne	.label_912
	lea	rdi, [rdi]
	jmp	.label_910
	nop	word ptr cs:[rax + rax]
.label_909:
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r12
	call	r15
	mov	rbp, rbp
	test	eax, eax
	lea	rsi, [rsi]
	mov	rbx, r12
	lea	rsi, [rsi]
	je	.label_911
.label_910:
	mov	rbp, rbp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e010

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	movzx	eax, byte ptr [rsi + 0x30]
	nop	
	cmp	eax, 4
	mov	rbp, rbp
	jne	.label_913
	mov	rax, qword ptr [rdi + 0xe0]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_913
	movsxd	rcx, dword ptr [rsi + 0x28]
	mov	rcx, qword ptr [rax + rcx*8]
	mov	qword ptr [rsi + 0x28], rcx
	mov	eax, 1
	lea	rdi, [rdi]
	shl	eax, cl
	cdqe	
	or	qword ptr [rdi + 0xa0], rax
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_913:
	nop	
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x11
	lea	rdi, [rdi]
	jne	.label_914
	mov	rax, qword ptr [rsi + 8]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_914
	movzx	ecx, byte ptr [rax + 0x30]
	cmp	ecx, 0x11
	jne	.label_914
	mov	rdx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 0x28]
	mov	qword ptr [rsi + 8], rdx
	test	rdx, rdx
	lea	rsi, [rsi]
	je	.label_915
	nop	
	mov	qword ptr [rdx], rsi
.label_915:
	nop	
	mov	rax, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0xe0]
	mov	rax, qword ptr [rdx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	cmp	rcx, 0x3f
	mov	rsp, rsp
	jg	.label_914
	mov	rax, -2
	mov	rbp, rbp
	rol	rax, cl
	mov	rbp, rbp
	and	qword ptr [rdi + 0xa0], rax
.label_914:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e0e0

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	mov	rbp, rbp
	mov	dword ptr [rsp + 4], 0
	mov	rdx, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_917
	mov	rsp, rsp
	movzx	eax, byte ptr [rdx + 0x30]
	lea	rdi, [rdi]
	cmp	eax, 0x11
	jne	.label_917
	lea	rdi, [rsp + 4]
	mov	rsp, rsp
	mov	rsi, r14
	call	lower_subexp
	nop	
	mov	qword ptr [rbx + 8], rax
	nop	
	test	rax, rax
	je	.label_917
	mov	qword ptr [rax], rbx
.label_917:
	mov	rdx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	test	rdx, rdx
	je	.label_916
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rdx + 0x30]
	cmp	eax, 0x11
	lea	rsi, [rsi]
	jne	.label_916
	lea	rsi, [rsi]
	lea	rdi, [rsp + 4]
	mov	rsi, r14
	call	lower_subexp
	mov	qword ptr [rbx + 0x10], rax
	test	rax, rax
	je	.label_916
	nop	
	mov	qword ptr [rax], rbx
.label_916:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 4]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e190

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	nop	
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	nop	
	movzx	eax, byte ptr [rbx + 0x30]
	mov	rsp, rsp
	cmp	eax, 0x10
	jne	.label_919
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	qword ptr [rbx + 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x38], rax
	xor	eax, eax
	jmp	.label_918
.label_919:
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x18], rbx
	nop	
	mov	rsi, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rdi, r14
	call	re_dfa_add_node
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x38], rcx
	mov	eax, 0xc
	cmp	rcx, -1
	mov	rsp, rsp
	je	.label_918
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rbx + 0x30]
	cmp	edx, 0xc
	nop	
	jne	.label_918
	lea	rdi, [rdi]
	mov	edx, dword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [r14]
	nop	
	shl	rcx, 4
	mov	rbp, rbp
	shl	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff00
	lea	rdi, [rdi]
	mov	edi, 0xfffc00ff
	mov	rbp, rbp
	and	edi, dword ptr [rsi + rcx + 8]
	lea	rdi, [rdi]
	or	edi, edx
	mov	rsp, rsp
	mov	dword ptr [rsi + rcx + 8], edi
.label_918:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e270

	.globl calc_next
	.type calc_next, @function
calc_next:
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 0x10
	mov	rbp, rbp
	je	.label_920
	cmp	eax, 0xb
	mov	rsp, rsp
	jne	.label_923
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x20], rsi
	mov	rsp, rsp
	xor	eax, eax
	ret	
.label_920:
	mov	rax, qword ptr [rsi + 8]
	nop	
	mov	rcx, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	qword ptr [rax + 0x20], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rsi + 0x10]
	jmp	.label_922
.label_923:
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_921
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_921:
	mov	rax, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_924
.label_922:
	mov	rcx, qword ptr [rsi + 0x20]
	mov	qword ptr [rax + 0x20], rcx
.label_924:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e2e0

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rax
	mov	rcx, qword ptr [rsi + 0x38]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + 0x30]
	lea	rdi, [rdi]
	lea	edx, [rax - 2]
	lea	rsi, [rsi]
	cmp	edx, 0xe
	ja	.label_929
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rdx * 8) + label_925]]
.label_1794:
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rcx, qword ptr [rsi + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + 0x38]
.label_931:
	mov	rsp, rsp
	mov	rdi, rax
	pop	rax
	jmp	re_node_set_init_1
.label_1795:
	lea	rsi, [rsi]
	or	byte ptr [rdi + 0xb0], 1
	mov	rax, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsi + 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x20
	test	rax, rax
	lea	rax, [rax + 0x18]
	cmove	rax, rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rax, qword ptr [rax + 0x38]
	mov	rsp, rsp
	test	rdx, rdx
	lea	rdx, [rdx + 0x18]
	cmove	rdx, rsi
	test	rax, rax
	lea	rdi, [rdi]
	js	.label_928
	mov	rdx, qword ptr [rdx]
	mov	rdx, qword ptr [rdx + 0x38]
	test	rdx, rdx
	lea	rsi, [rsi]
	js	.label_930
	lea	rcx, [rcx + rcx*2]
	shl	rcx, 3
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdi + 0x28]
	mov	rdi, rcx
	mov	rsi, rax
	nop	
	pop	rax
	nop	
	jmp	re_node_set_init_2
.label_1792:
	cmp	qword ptr [rsi + 0x20], 0
	je	.label_927
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.17_1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	lea	rdi, [rdi]
	mov	edx, 0x59f
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1793:
	mov	rax, qword ptr [rsi + 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	movzx	eax, byte ptr [rsi + 0x30]
	cmp	eax, 4
	jne	.label_927
	mov	rbp, rbp
	lea	rax, [rcx + rcx*2]
	mov	rsp, rsp
	shl	rax, 3
	add	rax, qword ptr [rdi + 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + rcx*8]
	jmp	.label_931
.label_929:
	test	al, 8
	nop	
	jne	.label_926
	nop	
	mov	rax, qword ptr [rsi + 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rdi + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_927:
	xor	eax, eax
	pop	rcx
	ret	
.label_928:
	mov	edi, OFFSET FLAT:.str.18_2
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5af
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rbp, rbp
	call	__assert_fail
.label_930:
	nop	
	mov	edi, OFFSET FLAT:.str.19_1
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_926:
	mov	edi, OFFSET FLAT:.str.20_0
	mov	esi, OFFSET FLAT:.str.6_1
	mov	rbp, rbp
	mov	edx, 0x5c2
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	lea	rdi, [rdi]
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e4a0

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x20
	mov	r14, rdi
	xor	ebx, ebx
	lea	r15, [rsp + 8]
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_932
	nop	word ptr cs:[rax + rax]
.label_934:
	lea	rsi, [rsi]
	inc	rbx
.label_932:
	cmp	rbx, qword ptr [r14 + 0x10]
	jne	.label_935
	xor	ebx, ebx
	lea	rdi, [rdi]
	test	r12b, 1
	lea	rdi, [rdi]
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_936
.label_935:
	mov	rax, qword ptr [r14 + 0x30]
	lea	r13, [rbx + rbx*2]
	cmp	qword ptr [rax + r13*8 + 8], 0
	mov	rsp, rsp
	jne	.label_934
	mov	ecx, 1
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	test	eax, eax
	mov	rsp, rsp
	jne	.label_933
	mov	rax, qword ptr [r14 + 0x30]
	cmp	qword ptr [rax + r13*8 + 8], 0
	jne	.label_934
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	r12b, 1
	nop	
	jmp	.label_934
.label_933:
	lea	rdi, [rdi]
	mov	ebx, eax
.label_936:
	mov	rbp, rbp
	mov	eax, ebx
	add	rsp, 0x20
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40e570

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [r13 + 0x10], 0
	mov	rbp, rbp
	je	.label_940
	xor	eax, eax
	mov	rsp, rsp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_937:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r13 + 0x38]
	movups	xmmword ptr [rdx + rax], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rax + 0x10], 0
	lea	rsi, [rsi]
	inc	rcx
	mov	rdx, qword ptr [r13 + 0x10]
	nop	
	add	rax, 0x18
	cmp	rcx, rdx
	jb	.label_937
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	je	.label_940
	lea	rdi, [rdi]
	xor	r14d, r14d
.label_939:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0x30]
	lea	r15, [r14 + r14*2]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + r15*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_938
	lea	rsi, [rsi]
	mov	r12, qword ptr [rax + r15*8 + 0x10]
	xor	ebx, ebx
	nop	
.label_941:
	mov	rax, qword ptr [r13 + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + rbx*8]
	nop	
	lea	rcx, [rcx + rcx*2]
	lea	rdi, [rax + rcx*8]
	mov	rsi, r14
	nop	
	call	re_node_set_insert_last
	mov	cl, al
	mov	eax, 0xc
	test	cl, cl
	je	.label_940
	inc	rbx
	nop	
	mov	rax, qword ptr [r13 + 0x30]
	nop	
	cmp	rbx, qword ptr [rax + r15*8 + 8]
	lea	rsi, [rsi]
	jl	.label_941
.label_938:
	lea	rdi, [rdi]
	inc	r14
	nop	
	xor	eax, eax
	mov	rbp, rbp
	cmp	r14, qword ptr [r13 + 0x10]
	jb	.label_939
.label_940:
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40e670

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r15, rdx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsi]
	nop	
	mov	rbp, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rbp, rbp
	mov	rsp, rsp
	je	.label_945
	mov	rsp, rsp
	mov	al, byte ptr [rsi + 0x38]
	and	al, 0x10
	je	.label_945
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_942
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xa0]
	bt	rcx, rax
	jae	.label_942
.label_945:
	mov	qword ptr [rsp], rdi
	xor	esi, esi
	nop	
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 8
	mov	rdi, r13
	lea	rdi, [rdi]
	call	create_tree
	lea	rdi, [rdi]
	mov	r12, rax
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	rbp, rbp
	mov	ecx, 9
	mov	rsp, rsp
	mov	rdi, r13
	call	create_tree
	mov	rbx, rax
	test	rbp, rbp
	mov	rbp, rbp
	mov	r14, rbx
	lea	rdi, [rdi]
	je	.label_944
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, rbx
	call	create_tree
	lea	rsi, [rsi]
	mov	r14, rax
.label_944:
	mov	ecx, 0x10
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, r12
	mov	rdx, r14
	call	create_tree
	nop	
	test	rbx, rbx
	je	.label_943
	mov	rbp, rbp
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_943
	test	r14, r14
	je	.label_943
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	je	.label_943
	mov	rbp, rbp
	mov	rcx, qword ptr [r15 + 0x28]
	nop	
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [r12 + 0x28], rcx
	mov	ecx, 0x80000
	nop	
	and	ecx, dword ptr [r15 + 0x30]
	lea	rsi, [rsi]
	mov	edx, 0xfff7ffff
	mov	esi, dword ptr [rbx + 0x30]
	and	esi, edx
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rbx + 0x30], esi
	mov	rbp, rbp
	and	edx, dword ptr [r12 + 0x30]
	or	edx, ecx
	mov	dword ptr [r12 + 0x30], edx
	jmp	.label_946
.label_942:
	lea	rdi, [rdi]
	mov	rax, qword ptr [r15 + 8]
.label_946:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
.label_943:
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_946
	nop	
	.section	.text
	.align	16
	#Procedure 0x40e7f0

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	rbp, rbp
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	r12, rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rbx + 0x10], rbp
	lea	rdi, [rdi]
	jae	.label_952
.label_948:
	mov	rax, qword ptr [rbx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	nop	
	mov	qword ptr [rax + rcx], r12
	mov	qword ptr [rax + rcx + 8], r15
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	and	dword ptr [rax + rcx + 8], 0xfffc00ff
	movzx	eax, r15b
	cmp	eax, 5
	mov	rsp, rsp
	jne	.label_949
	lea	rdi, [rdi]
	mov	cl, 1
	cmp	dword ptr [rbx + 0xb4], 1
	lea	rsi, [rsi]
	jg	.label_951
.label_949:
	lea	rdi, [rdi]
	cmp	eax, 6
	lea	rdi, [rdi]
	sete	cl
.label_951:
	nop	
	movzx	eax, cl
	mov	rcx, qword ptr [rbx]
	mov	rdx, qword ptr [rbx + 0x10]
	shl	rdx, 4
	shl	eax, 0x14
	mov	esi, 0xffefffff
	and	esi, dword ptr [rcx + rdx + 8]
	mov	rbp, rbp
	or	esi, eax
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0x28]
	nop	
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	xorps	xmm0, xmm0
	movups	xmmword ptr [rcx + rax*8], xmm0
	lea	rsi, [rsi]
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x30]
	nop	
	lea	rax, [rax + rax*2]
	movups	xmmword ptr [rcx + rax*8], xmm0
	mov	rsp, rsp
	mov	qword ptr [rcx + rax*8 + 0x10], 0
	mov	r14, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	lea	rax, [r14 + 1]
	nop	
	mov	qword ptr [rbx + 0x10], rax
.label_950:
	mov	rax, r14
	mov	rsp, rsp
	add	rsp, 0x18
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_952:
	lea	r13, [rbp + rbp]
	mov	r14, -1
	movabs	rax, 0xaaaaaaaaaaaaaaa
	cmp	r13, rax
	lea	rdi, [rdi]
	ja	.label_950
	nop	
	mov	rdi, qword ptr [rbx]
	nop	
	mov	rsi, rbp
	lea	rdi, [rdi]
	shl	rsi, 5
	call	realloc
	test	rax, rax
	je	.label_950
	mov	qword ptr [rsp], r13
	nop	
	mov	qword ptr [rbx], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0x18]
	shl	rbp, 4
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x20]
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rbp, [rbp + rbp*2]
	mov	rbp, rbp
	mov	rsi, rbp
	nop	
	call	realloc
	mov	r13, rax
	mov	rdi, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 8]
	mov	rsp, rsp
	call	realloc
	mov	rdi, qword ptr [rsp + 0x10]
	nop	
	test	rdi, rdi
	je	.label_947
	lea	rsi, [rsi]
	test	rbp, rbp
	nop	
	je	.label_947
	mov	rsp, rsp
	test	r13, r13
	je	.label_947
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_947
	mov	qword ptr [rbx + 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x20], rbp
	mov	qword ptr [rbx + 0x28], r13
	nop	
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	jmp	.label_948
.label_947:
	mov	r15, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	free
	mov	rsp, rsp
	mov	rdi, r13
	call	free
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rbp, rbp
	call	free
	jmp	.label_950
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40ea70

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	rsp, rsp
	mov	r15, rdx
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rbx], 2
	mov	rbp, rbp
	mov	edi, 0x10
	call	malloc
	mov	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x10], rcx
	mov	eax, 0xc
	lea	rsi, [rsi]
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_956
	lea	rsi, [rsi]
	cmp	r14, r15
	nop	
	jne	.label_953
	mov	qword ptr [rbx + 8], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax], r14
	mov	rbp, rbp
	jmp	.label_955
.label_953:
	mov	qword ptr [rbx + 8], 2
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	jge	.label_954
	nop	
	mov	qword ptr [rax], r14
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x10]
	mov	qword ptr [rax + 8], r15
	jmp	.label_955
.label_954:
	lea	rdi, [rdi]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rbx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], r14
.label_955:
	xor	eax, eax
.label_956:
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40eb20

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	qword ptr [rbx], 1
	mov	rsp, rsp
	mov	qword ptr [rbx + 8], 1
	mov	rbp, rbp
	mov	edi, 8
	nop	
	call	malloc
	mov	qword ptr [rbx + 0x10], rax
	nop	
	test	rax, rax
	je	.label_957
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	xor	eax, eax
.label_958:
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	ret	
.label_957:
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_958
	.section	.text
	.align	16
	#Procedure 0x40eb80

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	dword ptr [rsp + 4], ecx
	mov	r15, rdx
	mov	rbp, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	r14, [r15 + r15*2]
	mov	rsi, qword ptr [rax + r14*8 + 8]
	lea	rdi, [rdi]
	inc	rsi
	lea	rdi, [rsp + 0x30]
	call	re_node_set_alloc
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_959
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	qword ptr [rax + r14*8 + 8], -1
	nop	
	mov	rax, qword ptr [rbp]
	mov	rbx, r15
	shl	rbx, 4
	mov	r8d, dword ptr [rax + rbx + 8]
	shr	r8d, 8
	nop	
	and	r8d, 0x3ff
	nop	
	je	.label_961
	mov	rcx, qword ptr [rbp + 0x28]
	cmp	qword ptr [rcx + r14*8 + 8], 0
	je	.label_961
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	shl	rcx, 4
	test	byte ptr [rax + rcx + 0xa], 4
	lea	rsi, [rsi]
	jne	.label_961
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdx, r15
	lea	rdi, [rdi]
	mov	rcx, r15
	call	duplicate_node_closure
	mov	rsp, rsp
	test	eax, eax
	jne	.label_959
.label_961:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	test	byte ptr [rax + rbx + 8], 8
	lea	rsi, [rsi]
	jne	.label_960
	mov	rbx, r15
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_966
.label_960:
	nop	
	mov	rbx, r15
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + r14*8 + 8], 0
	jle	.label_970
	lea	rdi, [rdi]
	xor	r15d, r15d
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_962:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rbp + 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + r14*8 + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + r13*8]
	nop	
	lea	r12, [rdx + rdx*2]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + r12*8 + 8]
	nop	
	cmp	rcx, -1
	lea	rsi, [rsi]
	je	.label_965
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_963
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	calc_eclosure_iter
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_968
	lea	rsi, [rsi]
	jmp	.label_959
	nop	dword ptr [rax]
.label_963:
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + r12*8 + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	movups	xmm0, xmmword ptr [rax + r12*8]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_968:
	lea	rdi, [rsp + 0x30]
	lea	rsi, [rsp + 0x10]
	call	re_node_set_merge
	test	eax, eax
	jne	.label_959
	mov	rax, qword ptr [rbp + 0x30]
	cmp	qword ptr [rax + r12*8 + 8], 0
	jne	.label_969
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_965:
	mov	rsp, rsp
	mov	r15b, 1
.label_969:
	nop	
	inc	r13
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	cmp	r13, qword ptr [rax + r14*8 + 8]
	jl	.label_962
	mov	rbp, rbp
	jmp	.label_966
.label_970:
	xor	r15d, r15d
.label_966:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	mov	rsp, rsp
	mov	rsi, rbx
	call	re_node_set_insert
	mov	rbp, rbp
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_959
	test	r15b, 1
	mov	rax, qword ptr [rbp + 0x30]
	je	.label_964
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsp + 4]
	test	cl, cl
	lea	rsi, [rsi]
	jne	.label_964
	lea	rdi, [rdi]
	mov	qword ptr [rax + r14*8 + 8], 0
	nop	
	jmp	.label_967
.label_964:
	mov	rcx, qword ptr [rsp + 0x40]
	mov	qword ptr [rax + r14*8 + 0x10], rcx
	movups	xmm0, xmmword ptr [rsp + 0x30]
	nop	
	movups	xmmword ptr [rax + r14*8], xmm0
.label_967:
	nop	
	mov	rcx, qword ptr [rsp + 8]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x10], rax
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsp + 0x30]
	mov	rsp, rsp
	movups	xmmword ptr [rcx], xmm0
	xor	eax, eax
.label_959:
	mov	rsp, rsp
	add	rsp, 0x48
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee10

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbx], rsi
	mov	qword ptr [rbx + 8], 0
	lea	rdi, [rsi*8]
	call	malloc
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x10], rax
	xor	ecx, ecx
	lea	rsi, [rsi]
	test	rax, rax
	nop	
	mov	eax, 0xc
	lea	rdi, [rdi]
	cmovne	eax, ecx
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40ee60

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	ebx, r8d
	mov	qword ptr [rsp + 8], rcx
	mov	r13, rdx
	mov	r14, rsi
	nop	
	mov	rbp, rdi
.label_980:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x10], ebx
	nop	dword ptr [rax]
.label_979:
	mov	rcx, qword ptr [rbp]
	mov	rax, r14
	shl	rax, 4
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rcx + rax + 8]
	lea	rsi, [rsi]
	cmp	ecx, 4
	lea	rdi, [rdi]
	jne	.label_972
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x18]
	mov	rcx, qword ptr [rbp + 0x28]
	mov	rbx, qword ptr [rax + r14*8]
	mov	r15, rbp
	lea	r12, [r13 + r13*2]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r12*8 + 8], 0
	mov	rdi, r15
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	edx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	duplicate_node
	lea	rdi, [rdi]
	mov	rbp, rax
	nop	
	cmp	rbp, -1
	je	.label_981
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [r15 + 0x18]
	mov	rcx, qword ptr [rax + r14*8]
	mov	rsp, rsp
	mov	qword ptr [rax + r13*8], rcx
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	lea	rsi, [rsi]
	lea	rdi, [rax + r12*8]
	mov	rsi, rbp
	nop	
	call	re_node_set_insert
	mov	rbp, rbp
	test	al, al
	mov	r14, rbx
	mov	rbp, rbp
	mov	r13, rbp
	mov	rbp, r15
	mov	rbp, rbp
	jne	.label_979
	nop	
	jmp	.label_971
	nop	dword ptr [rax]
.label_972:
	mov	rcx, qword ptr [rbp + 0x28]
	nop	
	lea	r15, [r14 + r14*2]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + r15*8 + 8]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_975
	mov	rsi, qword ptr [rcx + r15*8 + 0x10]
	mov	rsi, qword ptr [rsi]
	lea	r12, [r13 + r13*2]
	mov	qword ptr [rcx + r12*8 + 8], 0
	lea	rdi, [rdi]
	cmp	rdx, 1
	je	.label_978
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13d, dword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rbp, rbp
	call	search_duplicated_node
	cmp	rax, -1
	je	.label_983
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp + 0x28]
	lea	rdi, [rcx + r12*8]
	mov	rsi, rax
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	nop	
	jne	.label_977
	jmp	.label_971
.label_983:
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	edx, r13d
	mov	rbp, rbp
	call	duplicate_node
	mov	r14, rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r14, -1
	nop	
	je	.label_971
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r14
	call	re_node_set_insert
	test	al, al
	mov	rsi, rbx
	lea	rsi, [rsi]
	je	.label_971
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rdx, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8d, r13d
	mov	rsp, rsp
	call	duplicate_node_closure
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_971
.label_977:
	mov	rax, qword ptr [rbp + 0x28]
	mov	rax, qword ptr [rax + r15*8 + 0x10]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rdi, rbp
	nop	
	mov	rsi, r14
	mov	edx, r13d
	lea	rsi, [rsi]
	call	duplicate_node
	mov	r13, rax
	cmp	r13, -1
	je	.label_973
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x14], 0xc
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rsp, rsp
	lea	rdi, [rax + r12*8]
	mov	rsp, rsp
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rbp, rbp
	jne	.label_979
	jmp	.label_971
.label_978:
	cmp	r14, qword ptr [rsp + 8]
	jne	.label_974
	cmp	r13, r14
	jne	.label_976
.label_974:
	mov	rcx, qword ptr [rbp]
	nop	
	mov	eax, dword ptr [rcx + rax + 8]
	lea	rdi, [rdi]
	shr	eax, 8
	mov	rbp, rbp
	and	eax, 0x3ff
	nop	
	mov	ebx, dword ptr [rsp + 0x10]
	mov	rsp, rsp
	or	ebx, eax
	nop	
	mov	rdi, rbp
	mov	r14, rsi
	nop	
	mov	edx, ebx
	mov	rsp, rsp
	call	duplicate_node
	mov	rsp, rsp
	mov	r13, rax
	mov	dword ptr [rsp + 0x14], 0xc
	cmp	r13, -1
	lea	rdi, [rdi]
	je	.label_971
	mov	rax, qword ptr [rbp + 0x28]
	nop	
	lea	rdi, [rax + r12*8]
	nop	
	mov	rsi, r13
	call	re_node_set_insert
	test	al, al
	mov	rsp, rsp
	jne	.label_980
	jmp	.label_971
.label_981:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_971
.label_973:
	mov	dword ptr [rsp + 0x14], 0xc
	lea	rsi, [rsi]
	jmp	.label_971
.label_975:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r13*8], rcx
.label_982:
	nop	
	mov	dword ptr [rsp + 0x14], 0
.label_971:
	mov	eax, dword ptr [rsp + 0x14]
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_976:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x28]
	lea	rdi, [rax + r12*8]
	call	re_node_set_insert
	mov	dword ptr [rsp + 0x14], 0xc
	test	al, al
	je	.label_971
	jmp	.label_982
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f1b0

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	mov	r15, rsi
	mov	r14, rdi
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	test	r15, r15
	je	.label_988
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	test	rdx, rdx
	je	.label_988
	nop	
	mov	rbx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14 + 8]
	lea	rax, [rcx + rdx*2]
	lea	rsi, [rsi]
	cmp	rbx, rax
	jge	.label_994
	mov	rsp, rsp
	add	rbx, rdx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsi, rbx
	lea	rdi, [rdi]
	shl	rsi, 4
	nop	
	call	realloc
	mov	rcx, rax
	nop	
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_988
	lea	rsi, [rsi]
	add	rbx, rbx
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x10], rcx
	mov	qword ptr [r14], rbx
	mov	rcx, qword ptr [r14 + 8]
.label_994:
	nop	
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	test	rcx, rcx
	je	.label_987
	lea	rsi, [rsi]
	lea	rbx, [rcx + rax*2]
	lea	rdi, [rdi]
	dec	rax
	nop	
	dec	rcx
	mov	rbp, rbp
	mov	rdx, rax
	or	rdx, rcx
	nop	
	js	.label_991
	mov	rdx, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	jmp	.label_990
.label_989:
	mov	rbp, rbp
	dec	rax
.label_992:
	mov	rbp, rbp
	dec	rcx
	jmp	.label_986
	nop	dword ptr [rax]
.label_990:
	mov	rdi, qword ptr [rsi + rax*8]
	nop	
	cmp	qword ptr [rdx + rcx*8], rdi
	mov	rsp, rsp
	je	.label_989
	lea	rsi, [rsi]
	jge	.label_992
	dec	rax
	mov	qword ptr [rdx + rbx*8 - 8], rdi
	dec	rbx
.label_986:
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	or	rdi, rcx
	mov	rbp, rbp
	jns	.label_990
.label_991:
	test	rax, rax
	mov	rbp, rbp
	js	.label_996
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	sub	rbx, rcx
	mov	rsp, rsp
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	lea	rdx, [rax*8 + 8]
	call	memcpy
.label_996:
	mov	r11, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	r10, [r11 + rax*2 - 1]
	lea	rsi, [rsi]
	mov	r15, r10
	lea	rdi, [rdi]
	sub	r15, rbx
	inc	r15
	mov	eax, 0
	lea	rdi, [rdi]
	je	.label_988
	lea	rax, [r15 + r11]
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 8], rax
	mov	rbp, rbp
	lea	r8, [r11 - 1]
.label_995:
	lea	r9, [r11 - 1]
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	lea	rdx, [r15*8]
	nop	
	lea	rax, [r15 + r8]
	nop	
	lea	r12, [rcx + rax*8]
	lea	r13, [rcx + r10*8]
	xor	esi, esi
	nop	dword ptr [rax]
.label_984:
	nop	
	mov	rax, qword ptr [r13 + rsi*8]
	mov	rdi, qword ptr [rcx + r11*8 - 8]
	cmp	rax, rdi
	jle	.label_993
	mov	rbp, rbp
	mov	qword ptr [r12 + rsi*8], rax
	nop	
	add	rdx, -8
	dec	rsi
	xor	eax, eax
	mov	rdi, r15
	mov	rbp, rbp
	add	rdi, rsi
	jne	.label_984
	lea	rdi, [rdi]
	jmp	.label_988
	nop	word ptr cs:[rax + rax]
.label_993:
	lea	rdi, [rdi]
	mov	qword ptr [r12 + rsi*8], rdi
	nop	
	add	r15, rsi
	dec	r8
	lea	rsi, [rsi]
	add	r10, rsi
	cmp	r11, 1
	mov	r11, r9
	jg	.label_995
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rsp, rsp
	lea	rsi, [rdi + rbx*8]
	jmp	.label_985
.label_987:
	mov	qword ptr [r14 + 8], rax
	mov	rdi, qword ptr [r14 + 0x10]
	mov	rdx, qword ptr [r15 + 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [r15 + 0x10]
	shl	rdx, 3
.label_985:
	nop	
	call	memcpy
	lea	rsi, [rsi]
	xor	eax, eax
.label_988:
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f410

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
	je	.label_1004
	mov	rax, qword ptr [rbx + 8]
	mov	rsp, rsp
	test	rax, rax
	mov	rsp, rsp
	je	.label_999
	cmp	rsi, rax
	lea	rdi, [rdi]
	jne	.label_1006
	lea	rax, [rsi + rsi]
	nop	
	mov	qword ptr [rbx], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rsi, 4
	call	realloc
	test	rax, rax
	je	.label_1002
	mov	qword ptr [rbx + 0x10], rax
.label_1006:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	mov	rcx, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx], r14
	jle	.label_1000
	test	rax, rax
	jle	.label_1003
	nop	
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr [rax + rax]
.label_1001:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + rax*8 - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax*8], rdx
	lea	rsi, [rsi]
	cmp	rax, 1
	lea	rax, [rax - 1]
	mov	rsp, rsp
	jg	.label_1001
	jmp	.label_1003
.label_1004:
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_node_set_init_1
	mov	rsp, rsp
	test	eax, eax
	sete	al
	lea	rdi, [rdi]
	jmp	.label_998
.label_999:
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	jmp	.label_1005
.label_1000:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rsi + rax*8 - 8]
	lea	rdi, [rdi]
	cmp	rcx, r14
	mov	rbp, rbp
	jle	.label_1003
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x10]
	nop	dword ptr [rax]
.label_997:
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rax*8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rax*8 - 0x10]
	dec	rax
	cmp	rcx, r14
	mov	rsp, rsp
	mov	rsi, rdx
	mov	rbp, rbp
	jg	.label_997
.label_1003:
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rcx + rax*8], r14
.label_1005:
	lea	rdi, [rdi]
	inc	qword ptr [rbx + 8]
	mov	al, 1
.label_998:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	ret	
.label_1002:
	xor	eax, eax
	jmp	.label_998
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f550

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edx
	mov	r14, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	r15, r14
	nop	
	shl	r15, 4
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r15]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + r15 + 8]
	mov	rbp, rbp
	call	re_dfa_add_node
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1007
	mov	rcx, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	rbp, rbp
	shl	rdx, 4
	shl	ebp, 8
	lea	rsi, [rsi]
	and	ebp, 0x3ff00
	lea	rsi, [rsi]
	mov	esi, 0xfffc00ff
	and	esi, dword ptr [rcx + rdx + 8]
	or	esi, ebp
	mov	rsp, rsp
	mov	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	mov	esi, 0x3ff00
	lea	rsi, [rsi]
	and	esi, dword ptr [rcx + r15 + 8]
	mov	rsp, rsp
	or	dword ptr [rcx + rdx + 8], esi
	mov	rcx, qword ptr [rbx]
	or	dword ptr [rcx + rdx + 8], 0x40000
	nop	
	mov	rcx, qword ptr [rbx + 0x20]
	nop	
	mov	qword ptr [rcx + rax*8], r14
.label_1007:
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f610

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	mov	r8, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	r10, [r8 - 1]
	mov	rax, -1
	test	r10, r10
	jle	.label_1008
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	rcx, r10
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	r11d, dword ptr [r9 + rcx + 8]
	lea	rdi, [rdi]
	mov	ecx, r11d
	mov	rbp, rbp
	and	ecx, 0x40000
	je	.label_1008
	mov	r9, qword ptr [rdi + 0x20]
	shl	r8, 4
	add	r8, -0x18
.label_1010:
	lea	rsi, [rsi]
	cmp	qword ptr [r9 + r10*8], rsi
	jne	.label_1009
	shr	r11d, 8
	and	r11d, 0x3ff
	cmp	r11d, edx
	mov	rbp, rbp
	je	.label_1011
.label_1009:
	lea	rdi, [rdi]
	dec	r10
	test	r10, r10
	jle	.label_1008
	mov	rcx, qword ptr [rdi]
	mov	r11d, dword ptr [rcx + r8]
	nop	
	mov	ecx, r11d
	and	ecx, 0x40000
	lea	rdi, [rdi]
	add	r8, -0x10
	mov	rbp, rbp
	test	ecx, ecx
	jne	.label_1010
	mov	rsp, rsp
	jmp	.label_1008
.label_1011:
	mov	rax, r10
.label_1008:
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f6b0

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	r14
	lea	rdi, [rdi]
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_1012
	lea	rcx, [rax + rax + 2]
	lea	rax, [rax + rax]
	mov	rbp, rbp
	mov	qword ptr [rbx], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	lea	rsi, [rax*8 + 0x10]
	mov	rsp, rsp
	call	realloc
	test	rax, rax
	je	.label_1013
	mov	qword ptr [rbx + 0x10], rax
.label_1012:
	mov	rax, qword ptr [rbx + 8]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 8], rcx
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r14
	mov	al, 1
.label_1014:
	lea	rdi, [rdi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	ret	
.label_1013:
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1014
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x40f730

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rsi
	mov	r14, rdi
	nop	
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [r14 + 8], rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx + 8], 0
	mov	rsp, rsp
	jle	.label_1015
	mov	qword ptr [r14], rdi
	shl	rdi, 3
	call	malloc
	nop	
	mov	qword ptr [r14 + 0x10], rax
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_1016
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 8]
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	shl	rdx, 3
	mov	rdi, rax
	call	memcpy
	jmp	.label_1017
.label_1015:
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	qword ptr [r14 + 0x10], 0
.label_1017:
	xor	eax, eax
.label_1018:
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_1016:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [r14], xmm0
	mov	eax, 0xc
	jmp	.label_1018
	nop	
	.section	.text
	.align	16
	#Procedure 0x40f7c0

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	mov	r9, qword ptr [rdi + 8]
	lea	rsi, [rsi]
	xor	eax, eax
	test	r9, r9
	jle	.label_1019
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	dec	r9
	mov	rbp, rbp
	je	.label_1020
	mov	r8, qword ptr [rdi + 0x10]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1022:
	mov	rbp, rbp
	lea	rdx, [r9 + rax]
	shr	rdx, 1
	cmp	qword ptr [r8 + rdx*8], rsi
	lea	rcx, [rdx + 1]
	nop	
	cmovl	rax, rcx
	cmovge	r9, rdx
	cmp	rax, r9
	mov	rbp, rbp
	jb	.label_1022
.label_1020:
	nop	
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + rax*8], rsi
	jne	.label_1021
	lea	rsi, [rsi]
	inc	rax
	ret	
.label_1021:
	mov	rbp, rbp
	xor	eax, eax
.label_1019:
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f840

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13d, ecx
	mov	rbp, rsi
	mov	rsp, rsp
	cmp	qword ptr [rdx + 8], 0
	lea	rdi, [rdi]
	je	.label_1023
	nop	
	mov	qword ptr [rsp], rdi
	mov	rdi, rdx
	mov	qword ptr [rsp + 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, r13d
	mov	rsp, rsp
	call	calc_state_hash
	mov	rbx, rax
	mov	rax, qword ptr [rbp + 0x40]
	mov	rcx, qword ptr [rbp + 0x88]
	mov	qword ptr [rsp + 8], rbp
	lea	rsi, [rsi]
	and	rcx, rbx
	lea	rcx, [rcx + rcx*2]
	nop	
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1025
	nop	
	lea	r14, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	r15, qword ptr [rax + rcx*8 + 0x10]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1028:
	nop	
	mov	rbp, qword ptr [r15 + r12*8]
	cmp	qword ptr [rbp], rbx
	jne	.label_1026
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp + 0x68]
	mov	rsp, rsp
	and	eax, 0xf
	cmp	eax, r13d
	jne	.label_1026
	mov	rdi, qword ptr [rbp + 0x50]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1024
.label_1026:
	lea	rdi, [rdi]
	inc	r12
	cmp	r12, qword ptr [r14]
	jl	.label_1028
.label_1025:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	edx, r13d
	mov	rcx, rbx
	call	create_cd_newstate
	mov	rbp, rax
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rsp, rsp
	jne	.label_1024
	mov	rax, qword ptr [rsp]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	jmp	.label_1027
.label_1023:
	mov	dword ptr [rdi], 0
.label_1027:
	xor	ebp, ebp
.label_1024:
	lea	rsi, [rsi]
	mov	rax, rbp
	mov	rsp, rsp
	add	rsp, 0x18
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40f970

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	eax, esi
	lea	rdi, [rdi]
	add	rax, rcx
	test	rcx, rcx
	jle	.label_1029
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdx, qword ptr [rdi + 0x10]
	xor	esi, esi
	nop	
.label_1030:
	add	rax, qword ptr [rdx + rsi*8]
	mov	rsp, rsp
	inc	rsi
	cmp	rsi, rcx
	jl	.label_1030
.label_1029:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9a0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	xor	eax, eax
	lea	rdi, [rdi]
	test	rdi, rdi
	je	.label_1031
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1031
	nop	
	mov	rcx, qword ptr [rdi + 8]
	cmp	rcx, qword ptr [rsi + 8]
	mov	rbp, rbp
	jne	.label_1032
.label_1033:
	nop	
	mov	al, 1
	nop	
	test	rcx, rcx
	mov	rsp, rsp
	jle	.label_1031
	mov	rbp, rbp
	mov	rax, qword ptr [rdi + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rcx*8 - 8]
	mov	rdx, qword ptr [rsi + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8 - 8]
	lea	rcx, [rcx - 1]
	je	.label_1033
.label_1032:
	xor	eax, eax
.label_1031:
	ret	
	.section	.text
	.align	16
	#Procedure 0x40f9f0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x10], rcx
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	edi, 0x70
	lea	rdi, [rdi]
	mov	esi, 1
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	r15, rax
	xor	eax, eax
	mov	rbp, rbp
	test	r15, r15
	je	.label_1044
	mov	r12, r15
	nop	
	add	r12, 8
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1039
	lea	rsi, [rsi]
	mov	al, byte ptr [r15 + 0x68]
	mov	cl, r14b
	mov	rsp, rsp
	and	cl, 0xf
	mov	rbp, rbp
	and	al, 0xf0
	or	al, cl
	mov	byte ptr [r15 + 0x68], al
	mov	qword ptr [r15 + 0x50], r12
	nop	
	mov	qword ptr [rsp + 0x20], r12
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1043
	mov	eax, r14d
	and	eax, 1
	mov	dword ptr [rsp + 0x1c], eax
	lea	rsi, [rsi]
	mov	eax, r14d
	and	eax, 2
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], eax
	and	r14d, 4
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 8], r14d
	xor	r14d, r14d
	mov	rsp, rsp
	xor	r12d, r12d
.label_1035:
	mov	rax, qword ptr [rbx]
	mov	rcx, qword ptr [rbp + 0x10]
	nop	
	mov	rcx, qword ptr [rcx + r14*8]
	mov	rbp, rbp
	shl	rcx, 4
	mov	esi, dword ptr [rax + rcx + 8]
	lea	rsi, [rsi]
	movzx	ecx, sil
	mov	r13d, esi
	lea	rsi, [rsi]
	shr	r13d, 8
	mov	rbp, rbp
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 0x3ff
	cmp	ecx, 1
	lea	rdi, [rdi]
	jne	.label_1034
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1042
.label_1034:
	mov	rdi, rbx
	shr	esi, 0x14
	mov	rbp, rbp
	mov	bl, byte ptr [r15 + 0x68]
	mov	dl, bl
	shr	dl, 5
	movzx	edx, dl
	or	edx, esi
	shl	dl, 5
	mov	rsp, rsp
	and	dl, 0x20
	and	bl, 0xdf
	or	bl, dl
	mov	byte ptr [r15 + 0x68], bl
	cmp	ecx, 4
	je	.label_1037
	cmp	ecx, 2
	lea	rdi, [rdi]
	jne	.label_1047
	mov	rsp, rsp
	or	bl, 0x10
	mov	rsp, rsp
	jmp	.label_1050
.label_1037:
	or	bl, 0x40
.label_1050:
	mov	byte ptr [r15 + 0x68], bl
.label_1047:
	mov	rbp, rbp
	test	eax, eax
	je	.label_1045
	mov	rax, qword ptr [rsp + 0x20]
	cmp	qword ptr [r15 + 0x50], rax
	lea	rdi, [rdi]
	mov	rbx, rdi
	jne	.label_1041
	mov	edi, 0x18
	mov	rsp, rsp
	call	malloc
	nop	
	mov	qword ptr [r15 + 0x50], rax
	nop	
	test	rax, rax
	nop	
	je	.label_1049
	mov	rdi, rax
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 0
	lea	rsi, [rsi]
	jne	.label_1044
	or	byte ptr [r15 + 0x68], 0x80
	xor	r12d, r12d
.label_1041:
	cmp	dword ptr [rsp + 0x1c], 0
	lea	rsi, [rsi]
	jne	.label_1046
	nop	
	mov	eax, r13d
	and	eax, 1
	jne	.label_1038
.label_1046:
	cmp	dword ptr [rsp + 0x1c], 0
	je	.label_1036
	mov	eax, r13d
	nop	
	and	eax, 2
	jne	.label_1038
.label_1036:
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_1040
	mov	eax, r13d
	mov	rsp, rsp
	and	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1038
.label_1040:
	mov	rsp, rsp
	cmp	dword ptr [rsp + 8], 0
	jne	.label_1042
	lea	rdi, [rdi]
	and	r13d, 0x40
	je	.label_1042
	nop	word ptr cs:[rax + rax]
.label_1038:
	nop	
	mov	rsi, r14
	nop	
	sub	rsi, r12
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rsp, rsp
	inc	r12
	nop	
	jmp	.label_1042
.label_1045:
	mov	rbx, rdi
	nop	word ptr cs:[rax + rax]
.label_1042:
	inc	r14
	nop	
	cmp	r14, qword ptr [rbp + 8]
	mov	rbp, rbp
	jl	.label_1035
.label_1043:
	mov	rdi, rbx
	mov	rsi, r15
	mov	rdx, qword ptr [rsp + 0x10]
	nop	
	call	register_state
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r15
	nop	
	je	.label_1044
.label_1049:
	nop	
	mov	rdi, r15
	call	free_state
	mov	rsp, rsp
	jmp	.label_1048
.label_1039:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1048:
	mov	rbp, rbp
	xor	eax, eax
.label_1044:
	lea	rdi, [rdi]
	add	rsp, 0x28
	nop	
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x40fcb0

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	test	rsi, rsi
	lea	rdi, [rdi]
	js	.label_1051
	mov	rax, qword ptr [rdi + 8]
	cmp	rax, rsi
	jle	.label_1051
	mov	rsp, rsp
	dec	rax
	mov	rbp, rbp
	mov	qword ptr [rdi + 8], rax
	nop	
	cmp	rax, rsi
	jle	.label_1051
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	nop	dword ptr [rax]
.label_1052:
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + rsi*8 + 8]
	nop	
	mov	qword ptr [rax + rsi*8], rcx
	lea	rsi, [rsi]
	inc	rsi
	cmp	rsi, qword ptr [rdi + 8]
	mov	rsp, rsp
	jl	.label_1052
.label_1051:
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x40fd00

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r13, rdi
	mov	rsp, rsp
	mov	qword ptr [rbx], r15
	lea	r12, [rbx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0x10]
	mov	rdi, r12
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	r14d, 0xc
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1054
	cmp	qword ptr [rbx + 0x10], 0
	mov	rsp, rsp
	jle	.label_1055
	mov	rbp, rbp
	xor	ebp, ebp
.label_1056:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	rax, qword ptr [r13]
	mov	rbp, rbp
	mov	rcx, rsi
	shl	rcx, 4
	test	byte ptr [rax + rcx + 8], 8
	lea	rsi, [rsi]
	jne	.label_1058
	mov	rdi, r12
	call	re_node_set_insert_last
	test	al, al
	mov	rbp, rbp
	je	.label_1054
.label_1058:
	mov	rbp, rbp
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 0x10]
	jl	.label_1056
.label_1055:
	mov	rsp, rsp
	mov	r12, qword ptr [r13 + 0x40]
	lea	rsi, [rsi]
	and	r15, qword ptr [r13 + 0x88]
	lea	rbp, [r15 + r15*2]
	mov	r15, qword ptr [r12 + rbp*8]
	cmp	qword ptr [r12 + rbp*8 + 8], r15
	jle	.label_1053
.label_1057:
	lea	rax, [r12 + rbp*8]
	mov	rcx, qword ptr [rax]
	nop	
	lea	rdx, [rcx + 1]
	mov	qword ptr [rax], rdx
	mov	rax, qword ptr [r12 + rbp*8 + 0x10]
	mov	qword ptr [rax + rcx*8], rbx
	xor	r14d, r14d
.label_1054:
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1053:
	lea	rsi, [rsi]
	lea	rax, [r15 + r15]
	nop	
	mov	rdi, qword ptr [r12 + rbp*8 + 0x10]
	lea	rsi, [rax*8 + 0x10]
	call	realloc
	test	rax, rax
	je	.label_1054
	lea	rcx, [r12 + rbp*8 + 8]
	nop	
	lea	rdx, [r15 + r15 + 2]
	lea	rsi, [r12 + rbp*8 + 0x10]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	qword ptr [rcx], rdx
	jmp	.label_1057
	nop	
	.section	.text
	.align	16
	#Procedure 0x40fe30

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x18
	mov	r14, rdx
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	mov	rsp, rsp
	cmp	ecx, 2
	je	.label_1063
	lea	r13, [r14 + 1]
	nop	
	cmp	ecx, 1
	je	.label_1065
	nop	
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1066
	mov	rbp, rbp
	lea	r12, [r13*8]
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	qword ptr [r15 + 8], rax
	lea	rdi, [rdi]
	xor	ebp, ebp
	test	rax, rax
	je	.label_1060
	lea	rdi, [rdi]
	mov	rdi, r12
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [r15 + 0x10], rax
	test	rax, rax
	mov	rbp, rbp
	je	.label_1069
	lea	rsi, [rsi]
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	mov	r12d, 1
	jmp	.label_1059
.label_1063:
	mov	rsp, rsp
	mov	r12d, 2
	lea	rdi, [rdi]
	cmp	qword ptr [r15], r14
	jae	.label_1059
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x1fb
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_1065:
	mov	r12d, 1
	cmp	r13, qword ptr [r15]
	mov	rbp, rbp
	ja	.label_1070
.label_1059:
	lea	rsi, [rsi]
	xor	eax, eax
	test	r14, r14
	mov	rsp, rsp
	jle	.label_1062
	mov	rax, qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15 + 0x10]
	nop	
	add	rbx, 8
	mov	rsp, rsp
	mov	rdx, r14
	nop	
.label_1068:
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx - 8]
	mov	rsp, rsp
	mov	qword ptr [rax], rsi
	mov	rsi, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	add	rax, 8
	add	rcx, 8
	add	rbx, 0x10
	dec	rdx
	jne	.label_1068
	mov	rax, r14
.label_1062:
	mov	rsp, rsp
	cmp	rax, qword ptr [r15]
	nop	
	jae	.label_1061
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r15 + 8]
	nop	
	mov	rdx, qword ptr [r15 + 0x10]
	nop	
.label_1064:
	mov	qword ptr [rdx + rax*8], -1
	mov	qword ptr [rcx + rax*8], -1
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r15]
	lea	rsi, [rsi]
	jb	.label_1064
.label_1061:
	lea	rsi, [rsi]
	mov	ebp, r12d
.label_1060:
	nop	
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x18
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	ret	
.label_1070:
	nop	
	mov	rdi, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	lea	rsi, [r13*8]
	mov	qword ptr [rsp + 0x10], rsi
	call	realloc
	xor	ebp, ebp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1060
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	call	realloc
	test	rax, rax
	je	.label_1067
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15 + 8], rcx
	mov	qword ptr [r15 + 0x10], rax
.label_1745:
	mov	qword ptr [r15], r13
	lea	rsi, [rsi]
	jmp	.label_1059
.label_1069:
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 8]
	call	free
	nop	
	jmp	.label_1060
.label_1067:
	mov	rdi, qword ptr [rsp + 8]
	call	free
	lea	rsi, [rsi]
	jmp	.label_1060
.label_1066:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.23
	nop	
	mov	esi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	edx, 0x1f9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
	nop	
	.section	.text
	.align	16
	#Procedure 0x410050

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	nop	
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	r14, rdx
	mov	r12, rsi
	mov	r13, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [r15 + 0xb4]
	cmp	rax, rcx
	cmovge	rcx, rax
	lea	rbx, [r14 + 1]
	cmp	rbx, rcx
	lea	rdi, [rdi]
	cmovg	rbx, rcx
	movzx	eax, r9b
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, r14
	mov	rdx, r13
	lea	rdi, [rdi]
	mov	rcx, r8
	mov	rsp, rsp
	mov	r8d, eax
	mov	r9, r15
	call	re_string_construct_common
	mov	rdi, r13
	mov	rsi, rbx
	nop	
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1071
	lea	rdi, [rdi]
	lea	rax, [r15 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [r13 + 0x80], rax
	mov	al, byte ptr [r15 + 0xb0]
	mov	rbp, rbp
	shr	al, 4
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [r13 + 0x8e], al
	cmp	byte ptr [r13 + 0x8b], 0
	je	.label_1073
	lea	rsi, [rsi]
	mov	r12, qword ptr [r13 + 8]
.label_1073:
	mov	qword ptr [r13 + 8], r12
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	byte ptr [r13 + 0x8b], 0
	mov	ecx, 0
	jne	.label_1072
	xor	ecx, ecx
	nop	
	cmp	dword ptr [r15 + 0xb4], 1
	jg	.label_1072
	lea	rsi, [rsi]
	mov	rcx, r14
.label_1072:
	mov	qword ptr [r13 + 0x30], rcx
	mov	qword ptr [r13 + 0x38], rcx
.label_1071:
	lea	rdi, [rdi]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	nop	
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410160

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
	mov	rbp, rbp
	lea	rbp, [r14*8]
	lea	rdi, [rbp + rbp*4]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbx + 0xd8], rax
	mov	rdi, rbp
	nop	
	call	malloc
	mov	qword ptr [rbx + 0xf8], rax
	test	rax, rax
	je	.label_1075
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xd8]
	test	rax, rax
	nop	
	je	.label_1075
.label_1074:
	mov	rsp, rsp
	mov	qword ptr [rbx + 0xd0], r14
	mov	dword ptr [rbx + 0xe0], 1
	mov	qword ptr [rbx + 0xf0], r14
	lea	rsi, [rsi]
	xor	r15d, r15d
.label_1075:
	mov	eax, r15d
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410220

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x28
	mov	r15d, edx
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	cmp	rax, r14
	jle	.label_1083
	lea	rax, [rbx + 0x28]
	cmp	dword ptr [rbx + 0x90], 2
	lea	rsi, [rsi]
	jl	.label_1092
	mov	qword ptr [rbx + 0x20], 0
.label_1092:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x58], rcx
	mov	rcx, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rcx
	mov	byte ptr [rbx + 0x8c], 0
	mov	rsp, rsp
	lea	ecx, [r15 + r15]
	and	ecx, 2
	xor	ecx, 6
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax], xmm0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x10], 0
	mov	dword ptr [rbx + 0x70], ecx
	cmp	byte ptr [rbx + 0x8b], 0
	mov	r13, r14
	lea	rsi, [rsi]
	jne	.label_1099
	mov	rax, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 8], rax
	mov	r13, r14
.label_1099:
	nop	
	test	r13, r13
	mov	rsp, rsp
	je	.label_1093
	mov	rbp, rbp
	cmp	r13, qword ptr [rbx + 0x38]
	jge	.label_1117
	cmp	byte ptr [rbx + 0x8c], 0
	mov	rbp, rbp
	jne	.label_1097
	lea	rdi, [rdi]
	lea	rsi, [r13 - 1]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	mov	rbp, rbp
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1079
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rdx, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	lea	rsi, [rdi + r13*4]
	mov	rbp, rbp
	sub	rdx, r13
	shl	rdx, 2
	call	memmove
.label_1079:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1089
.label_1120:
	sub	qword ptr [rbx + 0x30], r13
	nop	
	sub	qword ptr [rbx + 0x38], r13
.label_1088:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x8b], 0
	nop	
	jne	.label_1093
	add	qword ptr [rbx + 8], r13
.label_1093:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], r14
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x58], r13
	lea	rsi, [rsi]
	sub	qword ptr [rbx + 0x68], r13
	mov	rbp, rbp
	cmp	dword ptr [rbx + 0x90], 2
	mov	rsp, rsp
	jl	.label_1104
	lea	rdi, [rdi]
	cmp	byte ptr [rbx + 0x88], 0
	je	.label_1105
	mov	rdi, rbx
	call	build_wcs_upper_buffer
	test	eax, eax
	jne	.label_1109
	jmp	.label_1110
.label_1104:
	cmp	byte ptr [rbx + 0x8b], 0
	lea	rsi, [rsi]
	jne	.label_1111
	mov	rax, qword ptr [rbx + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	jmp	.label_1110
.label_1105:
	mov	rdi, rbx
	nop	
	call	build_wcs_buffer
.label_1110:
	mov	qword ptr [rbx + 0x48], 0
	lea	rdi, [rdi]
	xor	eax, eax
.label_1109:
	lea	rdi, [rdi]
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1083:
	lea	rsi, [rsi]
	mov	r13, r14
	sub	r13, rax
	lea	rdi, [rdi]
	jmp	.label_1099
.label_1117:
	nop	
	mov	rdx, qword ptr [rbx + 0x30]
	cmp	byte ptr [rbx + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_1077
.label_1121:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	cmp	dword ptr [rbx + 0x90], 2
	jl	.label_1082
	mov	rbp, rbp
	mov	qword ptr [rsp], rdx
	mov	dword ptr [rsp + 0x24], 0xffffffff
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x89], 0
	je	.label_1102
	mov	rdx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	lea	rsi, [rsi]
	add	rax, rdx
	movsxd	rsi, dword ptr [rbx + 0x90]
	mov	rsp, rsp
	mov	rcx, r13
	sub	rcx, rsi
	add	rcx, rax
	nop	
	cmp	rcx, rdx
	cmovb	rcx, rdx
	mov	rbp, rbp
	lea	r12, [rax + r13]
	mov	rbp, r12
	nop	word ptr [rax + rax]
.label_1107:
	dec	rbp
	cmp	rbp, rcx
	jb	.label_1095
	mov	rsp, rsp
	mov	dl, byte ptr [rbp]
	and	dl, 0xc0
	movzx	edx, dl
	mov	rsp, rsp
	cmp	edx, 0x80
	lea	rdi, [rdi]
	je	.label_1107
	add	rax, qword ptr [rbx + 0x58]
	mov	rdx, rax
	mov	rbp, rbp
	sub	rdx, rbp
	cmp	qword ptr [rbx + 0x78], 0
	mov	rsi, rbp
	jne	.label_1113
.label_1094:
	mov	qword ptr [rsp + 0x18], 0
	lea	rdi, [rsp + 0x14]
	lea	rcx, [rsp + 0x18]
	mov	rsp, rsp
	call	rpl_mbrtowc
	sub	r12, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	sub	rcx, r12
	nop	
	jb	.label_1095
	cmp	rax, -3
	ja	.label_1095
	mov	qword ptr [rbx + 0x20], 0
	mov	qword ptr [rbx + 0x30], rcx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x14]
	mov	dword ptr [rsp + 0x24], eax
.label_1095:
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsp, rsp
	cmp	edi, -1
	jne	.label_1080
.label_1102:
	lea	rdx, [rsp + 0x24]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rsi, r14
	call	re_string_skip_chars
	mov	rsp, rsp
	sub	rax, r14
	mov	qword ptr [rbx + 0x30], rax
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x24]
	cmp	edi, -1
	mov	rbp, rbp
	je	.label_1087
.label_1080:
	cmp	byte ptr [rbx + 0x8e], 0
	jne	.label_1091
	mov	ecx, dword ptr [rsp + 0x24]
.label_1108:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, 0xa
	mov	rsp, rsp
	jne	.label_1096
	mov	eax, 2
	cmp	byte ptr [rbx + 0x8d], 0
	nop	
	jne	.label_1096
	lea	rdi, [rdi]
	xor	eax, eax
	jmp	.label_1096
.label_1097:
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsi, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1118:
	nop	
	lea	rdi, [rdx + rsi]
	mov	rbp, rbp
	mov	rcx, rdi
	shr	rcx, 0x3f
	mov	rbp, rbp
	add	rcx, rdi
	sar	rcx, 1
	nop	
	cmp	qword ptr [rax + rcx*8], r13
	lea	rdi, [rdi]
	mov	rdi, rcx
	jg	.label_1112
	jge	.label_1116
	lea	rdx, [rcx + 1]
	mov	rdi, rsi
.label_1112:
	lea	rsi, [rsi]
	cmp	rdx, rdi
	mov	rsi, rdi
	jl	.label_1118
.label_1116:
	mov	rax, qword ptr [rbx + 0x18]
	cmp	qword ptr [rax + rcx*8], r13
	setl	al
	movzx	eax, al
	lea	rdi, [rdi]
	lea	rbp, [rax + rcx]
	mov	rbp, rbp
	lea	rsi, [rax + rcx - 1]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rbp, rbp
	mov	edx, r15d
	call	re_string_context_at
	mov	dword ptr [rbx + 0x70], eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	jle	.label_1081
	cmp	rbp, r13
	jne	.label_1081
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + rbp*8], r13
	jne	.label_1081
	mov	rdi, qword ptr [rbx + 0x10]
	lea	rsi, [rdi + r13*4]
	lea	rsi, [rsi]
	shl	rdx, 2
	call	memmove
	mov	rdi, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	nop	
	lea	rsi, [rdi + r13]
	call	memmove
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	sub	rax, r13
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], rax
	sub	qword ptr [rbx + 0x38], r13
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	jle	.label_1088
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	lea	rcx, [rax + r13*8]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1084:
	mov	rsi, qword ptr [rcx + rdx*8]
	sub	rsi, r13
	mov	qword ptr [rax + rdx*8], rsi
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbx + 0x30]
	jl	.label_1084
	jmp	.label_1088
.label_1089:
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0x30]
	sub	rdx, r13
	lea	rsi, [rsi]
	lea	rsi, [rdi + r13]
	call	memmove
	jmp	.label_1120
.label_1081:
	mov	rax, r13
	sub	rax, r14
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x50]
	lea	rsi, [rsi]
	add	rcx, rax
	nop	
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	dword ptr [rax + rax]
.label_1086:
	mov	rsp, rsp
	mov	rax, rbp
	mov	rsp, rsp
	test	rax, rax
	jle	.label_1115
	lea	rdi, [rdi]
	lea	rbp, [rax - 1]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x18]
	cmp	qword ptr [rcx + rax*8 - 8], r13
	je	.label_1086
.label_1115:
	mov	rbp, rbp
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jge	.label_1090
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x10]
	nop	word ptr cs:[rax + rax]
.label_1103:
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1090
	inc	rax
	cmp	rax, qword ptr [rbx + 0x30]
	mov	rsp, rsp
	jl	.label_1103
.label_1090:
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_1100
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x30], 0
	jmp	.label_1101
.label_1111:
	mov	rbp, rbp
	cmp	byte ptr [rbx + 0x88], 0
	lea	rdi, [rdi]
	je	.label_1106
	mov	rdi, rbx
	call	build_upper_buffer
	lea	rdi, [rdi]
	jmp	.label_1110
.label_1082:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx]
	mov	al, byte ptr [rcx + rax - 1]
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	qword ptr [rbx + 0x38], 0
	mov	rdx, qword ptr [rbx + 0x78]
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1114
	mov	rbp, rbp
	mov	al, byte ptr [rdx + rcx]
.label_1114:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	r15d, al
	lea	rdi, [rdi]
	mov	rsi, r15
	call	bitset_contain
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsp, rsp
	test	al, al
	lea	rsi, [rsi]
	jne	.label_1076
	nop	
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	r15d, 0xa
	lea	rdi, [rdi]
	jne	.label_1076
	mov	rbp, rbp
	mov	ecx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	lea	rsi, [rsi]
	jne	.label_1076
	xor	ecx, ecx
.label_1076:
	mov	dword ptr [rbx + 0x70], ecx
	mov	rsp, rsp
	jmp	.label_1088
.label_1100:
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, r13
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x30], rax
	lea	rsi, [rsi]
	je	.label_1101
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	jle	.label_1098
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	mov	rsp, rsp
	shl	rdx, 2
	nop	
	mov	esi, 0xff
	lea	rdi, [rdi]
	call	memset
.label_1098:
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 0xff
	mov	rdx, r15
	lea	rsi, [rsi]
	call	memset
	jmp	.label_1101
.label_1106:
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x78], 0
	je	.label_1110
	mov	rdi, rbx
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_1110
.label_1087:
	mov	rsi, qword ptr [rsp]
	lea	rdi, [rdi]
	dec	rsi
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	edx, r15d
	mov	rsp, rsp
	call	re_string_context_at
.label_1096:
	mov	dword ptr [rbx + 0x70], eax
	cmp	qword ptr [rbx + 0x30], 0
	lea	rsi, [rsi]
	jne	.label_1119
.label_1101:
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_1088
.label_1077:
	mov	rax, r13
	sub	rax, r14
	mov	rcx, qword ptr [rbx + 0x50]
	mov	rbp, rbp
	add	rcx, rax
	mov	qword ptr [rbx + 0x58], rcx
	mov	rsp, rsp
	add	rax, qword ptr [rbx + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x68], rax
	mov	byte ptr [rbx + 0x8c], 0
	nop	
	jmp	.label_1121
.label_1119:
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	test	r15, r15
	mov	rbp, rbp
	jle	.label_1085
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0x10]
	mov	r15, qword ptr [rbx + 0x30]
	test	r15, r15
	mov	edx, 1
	cmovg	rdx, r15
	shl	rdx, 2
	mov	rbp, rbp
	mov	esi, 0xff
	mov	rsp, rsp
	call	memset
.label_1085:
	cmp	byte ptr [rbx + 0x8b], 0
	jne	.label_1098
	lea	rsi, [rsi]
	jmp	.label_1101
.label_1091:
	lea	rdi, [rdi]
	call	iswalnum
	mov	rbp, rbp
	test	eax, eax
	mov	eax, 1
	mov	rbp, rbp
	jne	.label_1096
	mov	ecx, dword ptr [rsp + 0x24]
	cmp	ecx, 0x5f
	lea	rdi, [rdi]
	jne	.label_1108
	jmp	.label_1096
.label_1113:
	lea	rsi, [rsp + 0xe]
	mov	rbp, rbp
	cmp	rdx, 6
	mov	ecx, 6
	nop	
	cmovl	ecx, edx
	test	ecx, ecx
	mov	rsp, rsp
	jle	.label_1094
	lea	rcx, [rbp - 1]
	nop	
	sub	rcx, rax
	cmp	rcx, -8
	mov	rbp, rbp
	mov	r10, -7
	lea	rsi, [rsi]
	cmovg	r10, rcx
	xor	r10, 0xffffffffffffffff
	shl	r10, 0x20
	lea	rdi, [rdi]
	sar	r10, 0x20
	lea	rdi, [rdi]
	lea	r8, [rsp + r10 + 0xd]
	lea	r9, [r10 + rbp - 1]
	mov	rbp, rbp
	xor	ecx, ecx
.label_1078:
	lea	rdi, [rdi]
	movzx	edi, byte ptr [r9 + rcx]
	mov	rax, qword ptr [rbx + 0x78]
	mov	rsp, rsp
	mov	al, byte ptr [rax + rdi]
	lea	rsi, [rsi]
	mov	byte ptr [r8 + rcx], al
	lea	rax, [r10 + rcx - 1]
	dec	rcx
	mov	rbp, rbp
	inc	rax
	cmp	rax, 1
	jg	.label_1078
	jmp	.label_1094
	nop	
	.section	.text
	.align	16
	#Procedure 0x410a40

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	mov	r13, rdx
	nop	
	mov	dword ptr [rsp + 0x1c], esi
	lea	rsi, [rsi]
	mov	rbp, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	mov	r12, qword ptr [rbp + 0x48]
	test	r13, r13
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x20], eax
	mov	dword ptr [rsp + 0x24], 0
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rbx, qword ptr [r15 + 0x48]
	cmp	byte ptr [rbx + 0x68], 0
	jns	.label_1133
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	nop	
	mov	edx, dword ptr [rbp + 0xa0]
	nop	
	mov	rdi, rbp
	call	re_string_context_at
	mov	rsp, rsp
	test	al, 1
	jne	.label_1146
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1133
	mov	ecx, eax
	and	ecx, 4
	sete	sil
	mov	edx, eax
	and	edx, 2
	nop	
	je	.label_1142
	lea	rdi, [rdi]
	test	sil, sil
	jne	.label_1142
	mov	rbx, qword ptr [r15 + 0x60]
	jmp	.label_1133
.label_1146:
	mov	rbx, qword ptr [r15 + 0x50]
.label_1133:
	mov	rbp, rbp
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1151
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	je	.label_1129
	mov	rsp, rsp
	mov	qword ptr [rax + r12*8], rbx
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x98], 0
	lea	rsi, [rsi]
	jne	.label_1132
.label_1129:
	nop	
	mov	al, byte ptr [rbx + 0x68]
	mov	rdx, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	test	al, 0x10
	mov	rsp, rsp
	jne	.label_1139
.label_1128:
	nop	
	mov	qword ptr [rsp], rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r13
	mov	qword ptr [rsp + 0x10], r12
	lea	r13, [rsp + 0x24]
.label_1123:
	mov	rsi, qword ptr [rbp + 0x48]
	nop	
	cmp	qword ptr [rbp + 0x68], rsi
	jle	.label_1127
	lea	rdi, [rdi]
	test	rcx, rcx
	lea	rdi, [rdi]
	sete	r12b
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rsi, [rsi]
	or	r12b, al
	mov	r15, rbx
	nop	dword ptr [rax + rax]
.label_1126:
	lea	r14, [rsi + 1]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x40]
	cmp	r14, rax
	jge	.label_1131
.label_1136:
	mov	rax, qword ptr [rbp + 0x30]
	cmp	r14, rax
	jge	.label_1137
.label_1138:
	mov	rbp, rbp
	mov	rdi, r13
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rdx, r15
	call	transit_state
	lea	rdi, [rdi]
	mov	rbx, rax
	nop	
	cmp	qword ptr [rbp + 0xb8], 0
	je	.label_1152
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsi, rbp
	mov	rdx, rbx
	call	merge_state_with_log
	lea	rsi, [rsi]
	mov	rbx, rax
.label_1152:
	mov	rsp, rsp
	test	rbx, rbx
	jne	.label_1130
	mov	rax, -2
	nop	
	cmp	dword ptr [rsp + 0x24], 0
	jne	.label_1122
	cmp	qword ptr [rbp + 0xb8], 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, r12b
	movzx	eax, al
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_1127
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	find_recover_state
	mov	rbx, rax
	lea	rdi, [rdi]
	test	rbx, rbx
	je	.label_1127
.label_1130:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_1143
.label_1150:
	mov	rbp, rbp
	mov	al, byte ptr [rbx + 0x68]
	lea	rsi, [rsi]
	test	al, 0x10
	je	.label_1125
	lea	rdi, [rdi]
	test	al, al
	nop	
	jns	.label_1149
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	check_halt_state_context
	test	rax, rax
	jne	.label_1149
.label_1125:
	nop	
	mov	rsi, qword ptr [rbp + 0x48]
	cmp	qword ptr [rbp + 0x68], rsi
	mov	r15, rbx
	jg	.label_1126
	jmp	.label_1127
.label_1131:
	cmp	rax, qword ptr [rbp + 0x58]
	jl	.label_1134
	jmp	.label_1136
.label_1137:
	cmp	rax, qword ptr [rbp + 0x58]
	jge	.label_1138
.label_1134:
	mov	rsp, rsp
	add	esi, 2
	mov	rsp, rsp
	mov	rdi, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	dword ptr [rsp + 0x24], ecx
	test	ecx, ecx
	jne	.label_1141
	lea	rsi, [rsi]
	jmp	.label_1138
.label_1143:
	lea	rdi, [rdi]
	cmp	r15, rbx
	je	.label_1147
	mov	dword ptr [rsp + 0x20], 0
.label_1147:
	mov	rax, qword ptr [rsp + 0x10]
	nop	
	cmove	rax, r14
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_1150
	nop	
.label_1149:
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rsp], rdx
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	ecx, 1
	mov	rbp, rbp
	mov	eax, 0
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rax
	mov	rax, rdx
	jne	.label_1123
	jmp	.label_1122
.label_1127:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1145
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	qword ptr [rcx], rax
.label_1145:
	mov	rax, qword ptr [rsp]
	jmp	.label_1122
.label_1141:
	mov	rax, -2
	mov	rsp, rsp
	cmp	ecx, 0xc
	nop	
	je	.label_1122
	mov	edi, OFFSET FLAT:.str.25
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x46c
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rbp, rbp
	call	__assert_fail
.label_1151:
	mov	rbp, rbp
	mov	rax, -2
	cmp	dword ptr [rsp + 0x24], 0xc
	lea	rsi, [rsi]
	je	.label_1122
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.25
	nop	
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x435
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	mov	rsp, rsp
	call	__assert_fail
.label_1142:
	test	edx, edx
	nop	
	jne	.label_1140
	test	ecx, ecx
	mov	rsp, rsp
	je	.label_1133
	mov	rsp, rsp
	mov	rdx, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x24]
	nop	
	mov	rsi, r15
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rbx, rax
	mov	rsp, rsp
	jmp	.label_1133
.label_1139:
	test	al, al
	js	.label_1124
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, al
	mov	rdx, r12
	mov	rbp, rbp
	jne	.label_1128
	mov	rbp, rbp
	mov	rax, r12
	mov	rbp, rbp
	jmp	.label_1122
.label_1132:
	lea	r15, [rbx + 8]
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r15
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	mov	rsp, rsp
	test	eax, eax
	nop	
	jne	.label_1144
	mov	rsp, rsp
	test	byte ptr [rbx + 0x68], 0x40
	je	.label_1148
	mov	rdi, rbp
	mov	rsi, r15
	call	transit_state_bkref
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1135
.label_1148:
	nop	
	mov	dword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	jmp	.label_1129
.label_1140:
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x58]
	jmp	.label_1133
.label_1124:
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r12
	mov	rsp, rsp
	call	check_halt_state_context
	lea	rdi, [rdi]
	cmp	rax, 1
	sbb	rdx, rdx
	or	rdx, r12
	test	rax, rax
	setne	al
	movzx	ecx, al
	lea	rsi, [rsi]
	je	.label_1128
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	jne	.label_1128
	mov	rax, r12
.label_1122:
	add	rsp, 0x28
	nop	
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1144:
	mov	rbp, rbp
	cdqe	
	jmp	.label_1122
.label_1135:
	lea	rdi, [rdi]
	cdqe	
	lea	rdi, [rdi]
	jmp	.label_1122
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x410f20

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	mov	eax, dword ptr [rbx + 0xa0]
	mov	rsi, rdx
	mov	rbp, rbp
	mov	edx, eax
	call	re_string_context_at
	mov	rbp, rbp
	mov	r15d, eax
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	cmp	qword ptr [r14 + 0x10], 0
	jle	.label_1154
	mov	r12, qword ptr [rbx + 0x98]
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x18]
	xor	ebx, ebx
.label_1153:
	mov	rsp, rsp
	mov	rbp, qword ptr [r13 + rbx*8]
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rbp, rbp
	mov	edx, r15d
	call	check_halt_node_context
	test	al, al
	jne	.label_1154
	inc	rbx
	cmp	rbx, qword ptr [r14 + 0x10]
	mov	ebp, 0
	mov	rsp, rsp
	jl	.label_1153
.label_1154:
	mov	rax, rbp
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x410fc0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	nop	
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	r12, rdi
	mov	rsp, rsp
	mov	rbx, qword ptr [r12 + 0xa8]
	mov	r13d, 0xc
	movabs	rax, 0x1ffffffffffffffe
	cmp	rbx, rax
	mov	rsp, rsp
	ja	.label_1155
	mov	r14, qword ptr [r12 + 0x98]
	mov	rax, qword ptr [r12 + 0xb0]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	lea	rbp, [rbx*8 + 8]
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	r15, rax
	nop	
	mov	r13d, 0xc
	test	r15, r15
	lea	rdi, [rdi]
	je	.label_1164
	cmp	qword ptr [r14 + 0x98], 0
	nop	
	je	.label_1156
	mov	qword ptr [rsp + 8], r14
	mov	rdi, rbp
	call	malloc
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_1161
	mov	qword ptr [rsp + 0x10], r12
	lea	rbp, [rsp + 0x20]
	mov	r12, qword ptr [rsp + 0x18]
	lea	rsi, [rsi]
	mov	r14, r15
	mov	rsp, rsp
	mov	r15, rax
	jmp	.label_1168
.label_1156:
	lea	r14, [rsp + 0x20]
	mov	rsp, rsp
	xor	edx, edx
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rbp, r15
	mov	rbp, rbp
	mov	rsi, rbp
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	r8, rbx
	call	sift_ctx_init
	mov	rdi, r12
	mov	rsi, r14
	lea	rsi, [rsi]
	call	sift_states_backward
	nop	
	mov	r13d, eax
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1159
	lea	rdi, [rdi]
	xor	r15d, r15d
	cmp	qword ptr [rbp], 0
	lea	rdi, [rdi]
	jne	.label_1163
	mov	r13d, 1
	jmp	.label_1157
.label_1165:
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	check_halt_state_context
	mov	r12, rax
.label_1168:
	lea	rdx, [rbx*8 + 8]
	nop	
	xor	esi, esi
	mov	rdi, r15
	call	memset
	lea	rsi, [rsi]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, r15
	mov	rsp, rsp
	mov	rcx, r12
	mov	rbp, rbp
	mov	r8, rbx
	call	sift_ctx_init
	nop	
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	sift_states_backward
	mov	r13d, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x50]
	call	free
	mov	rbp, rbp
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1160
	cmp	qword ptr [r14], 0
	jne	.label_1158
	mov	rsp, rsp
	cmp	qword ptr [r15], 0
	mov	rbp, rbp
	jne	.label_1158
	mov	r13d, 1
	test	rbx, rbx
	mov	rdi, qword ptr [rsp + 0x10]
	jle	.label_1166
	mov	rax, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	dec	rbx
	nop	
.label_1167:
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx*8]
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1162
	test	byte ptr [rsi + 0x68], 0x10
	nop	
	jne	.label_1165
.label_1162:
	lea	rcx, [rbx - 1]
	inc	rbx
	cmp	rbx, 2
	mov	rbx, rcx
	lea	rsi, [rsi]
	jge	.label_1167
	mov	rbp, rbp
	mov	rbp, r14
	lea	rsi, [rsi]
	jmp	.label_1157
.label_1164:
	mov	rbp, r15
	xor	r15d, r15d
	jmp	.label_1157
.label_1160:
	mov	rsp, rsp
	mov	rbp, r14
	lea	rdi, [rdi]
	jmp	.label_1157
.label_1158:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], r12
	lea	rcx, [rbx + 1]
	mov	rdi, qword ptr [rsp + 8]
	mov	rbp, r14
	mov	rsi, rbp
	mov	rdx, r15
	call	merge_state_array
	mov	rbp, rbp
	mov	r13d, eax
	mov	rdi, r15
	nop	
	call	free
	lea	rsi, [rsi]
	xor	r15d, r15d
	test	r13d, r13d
	mov	r12, qword ptr [rsp + 0x10]
	jne	.label_1157
.label_1163:
	mov	rdi, qword ptr [r12 + 0xb8]
	lea	rdi, [rdi]
	call	free
	mov	qword ptr [r12 + 0xb8], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	mov	qword ptr [r12 + 0xb0], rax
	mov	rsp, rsp
	mov	qword ptr [r12 + 0xa8], rbx
	xor	r13d, r13d
	xor	ebp, ebp
.label_1159:
	xor	r15d, r15d
.label_1157:
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	call	free
.label_1155:
	mov	eax, r13d
	mov	rbp, rbp
	add	rsp, 0x58
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1161:
	mov	rbp, r15
	mov	r15, rax
	jmp	.label_1157
.label_1166:
	mov	rsp, rsp
	mov	rbp, r14
	mov	rsp, rsp
	jmp	.label_1157
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4112c0

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rsi, [rsi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rdi
	nop	
	cmp	qword ptr [r14 + 0xe8], 0
	mov	rbp, rbp
	jle	.label_1169
	nop	
	xor	r12d, r12d
	nop	
.label_1170:
	mov	rax, qword ptr [r14 + 0xf8]
	nop	
	mov	r15, qword ptr [rax + r12*8]
	mov	rsp, rsp
	cmp	qword ptr [r15 + 0x20], 0
	lea	rdi, [rdi]
	mov	ebx, 0
	lea	rsi, [rsi]
	jle	.label_1172
	nop	word ptr cs:[rax + rax]
.label_1171:
	nop	
	mov	rax, qword ptr [r15 + 0x28]
	mov	rsp, rsp
	mov	r13, qword ptr [rax + rbx*8]
	mov	rdi, qword ptr [r13 + 0x20]
	call	free
	lea	rsi, [rsi]
	mov	rdi, r13
	call	free
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [r15 + 0x20]
	jl	.label_1171
.label_1172:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x28]
	nop	
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1173
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	free
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	mov	rbp, rbp
	call	free
.label_1173:
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	call	free
	mov	rbp, rbp
	inc	r12
	mov	rsp, rsp
	cmp	r12, qword ptr [r14 + 0xe8]
	jl	.label_1170
.label_1169:
	mov	qword ptr [r14 + 0xe8], 0
	mov	qword ptr [r14 + 0xc8], 0
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4113d0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x68
	lea	rdi, [rdi]
	mov	r12, rcx
	nop	
	mov	rbx, rdx
	mov	qword ptr [rbp - 0x78], rsi
	mov	r15, qword ptr [rdi]
	mov	rax,  qword ptr [word ptr [rip + label_1187]]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	movups	xmm0,  xmmword ptr [word ptr [rip + label_1188]]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x70], xmm0
	mov	rbp, rbp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r8b, r8b
	je	.label_1189
	mov	rax, qword ptr [rbp - 0x68]
	shl	rax, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rax*2]
	call	malloc
	mov	qword ptr [rbp - 0x60], rax
	mov	r14d, 0xc
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1174
	lea	rsi, [rsi]
	lea	r14, [rbp - 0x70]
.label_1189:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], r15
	nop	
	mov	r15, qword ptr [r15 + 0x90]
	nop	
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rbp - 0x50], xmm0
	nop	
	mov	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	r13, rbx
	shl	r13, 4
	cmp	r13, 0xfbf
	lea	rsi, [rsi]
	ja	.label_1190
	mov	rdi, rsp
	lea	rsi, [rsi]
	lea	rax, [r13 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	sub	rdi, rax
	mov	rsp, rsp
	mov	rsp, rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x8c], 0
	jmp	.label_1177
.label_1190:
	mov	rsp, rsp
	mov	rdi, r13
	nop	
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, rax
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1182
	lea	rdi, [rdi]
	mov	al, 1
	mov	dword ptr [rbp - 0x8c], eax
.label_1177:
	mov	qword ptr [rbp - 0x80], rdi
	nop	
	mov	rsi, r12
	mov	rdx, r13
	call	memcpy
	mov	r8, qword ptr [r12]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	cmp	r8, qword ptr [r12 + 8]
	jg	.label_1191
	mov	rsp, rsp
	lea	r13, [r12 + 8]
	jmp	.label_1176
.label_1183:
	cmp	r15, -2
	je	.label_1178
	mov	rbp, rbp
	test	r14, r14
	je	.label_1181
	mov	rbp, rbp
	mov	rdi, r14
	nop	
	lea	rsi, [rbp - 0x30]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	rcx, r12
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	mov	r15, rax
	mov	rbp, rbp
	jmp	.label_1184
	nop	word ptr cs:[rax + rax]
.label_1176:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rsi, r12
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, r15
	mov	r9, rbx
	call	update_regs
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [r12 + 8]
	jne	.label_1192
	mov	rax, qword ptr [rbp - 0x78]
	cmp	r15, qword ptr [rax + 0xb0]
	jne	.label_1192
	lea	rdi, [rdi]
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1180
	mov	rsp, rsp
	test	rbx, rbx
	mov	rcx, r13
	mov	eax, 0
	je	.label_1175
	nop	dword ptr [rax]
.label_1186:
	cmp	qword ptr [rcx - 8], 0
	js	.label_1185
	nop	
	cmp	qword ptr [rcx], -1
	je	.label_1175
.label_1185:
	inc	rax
	add	rcx, 0x10
	cmp	rax, rbx
	nop	
	jb	.label_1186
.label_1175:
	nop	
	cmp	rax, rbx
	je	.label_1191
	mov	rdi, r14
	lea	rsi, [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, rbx
	mov	rcx, r12
	mov	rbp, rbp
	lea	r8, [rbp - 0x50]
	call	pop_fail_stack
	nop	
	mov	r15, rax
.label_1192:
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r14
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rsi, rbx
	mov	rdx, r12
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r8, r15
	lea	r9, [rbp - 0x50]
	mov	rbp, rbp
	call	proceed_next_node
	add	rsp, 0x10
	lea	rdi, [rdi]
	mov	r15, rax
	test	r15, r15
	js	.label_1183
.label_1184:
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	cmp	r8, qword ptr [r12 + 8]
	jle	.label_1176
.label_1191:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1193
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1193:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_1174
.label_1180:
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	r14d, r14d
	jmp	.label_1179
.label_1178:
	nop	
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1182
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
.label_1182:
	lea	rdi, [rdi]
	mov	rdi, r14
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	r14d, 0xc
.label_1174:
	mov	rsp, rsp
	mov	eax, r14d
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1181:
	mov	rdi, qword ptr [rbp - 0x40]
	call	free
	nop	
	mov	r14d, 1
.label_1179:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x8c]
	test	al, al
	je	.label_1174
	mov	rdi, qword ptr [rbp - 0x80]
	call	free
	mov	rsp, rsp
	jmp	.label_1174
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411730

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbx
	lea	rsi, [rsi]
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	match_ctx_clean
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx + 0xf8]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbx + 0xd8]
	pop	rbx
	mov	rsp, rsp
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411770

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	lea	rsi, [rsi]
	test	rsi, rsi
	js	.label_1200
	cmp	qword ptr [rbx + 0x58], rsi
	je	.label_1195
	nop	
	cmp	dword ptr [rbx + 0x90], 2
	nop	
	jl	.label_1198
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	inc	rsi
	nop	dword ptr [rax]
.label_1202:
	mov	rbp, rbp
	mov	ebp, dword ptr [rax + rsi*4 - 4]
	lea	rdi, [rdi]
	cmp	ebp, -1
	jne	.label_1201
	nop	
	dec	rsi
	mov	rbp, rbp
	test	rsi, rsi
	jg	.label_1202
	nop	
	mov	edx, dword ptr [rbx + 0x70]
	nop	
	jmp	.label_1197
.label_1198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rbx + 0x80]
	movzx	ebp, byte ptr [rax + rsi]
	lea	rsi, [rsi]
	mov	rsi, rbp
	call	bitset_contain
	mov	edx, 1
	mov	rbp, rbp
	test	al, al
	jne	.label_1197
	mov	rsp, rsp
	xor	edx, edx
	cmp	ebp, 0xa
	jne	.label_1197
	nop	
	jmp	.label_1194
.label_1201:
	mov	rsp, rsp
	cmp	byte ptr [rbx + 0x8e], 0
	mov	rsp, rsp
	jne	.label_1196
.label_1199:
	xor	edx, edx
	cmp	ebp, 0xa
	nop	
	jne	.label_1197
.label_1194:
	mov	edx, 2
	cmp	byte ptr [rbx + 0x8d], 0
	jne	.label_1197
	xor	edx, edx
	mov	rbp, rbp
	jmp	.label_1197
.label_1200:
	mov	edx, dword ptr [rbx + 0x70]
	jmp	.label_1197
.label_1195:
	lea	rdi, [rdi]
	and	edx, 2
	xor	edx, 0xa
.label_1197:
	mov	rbp, rbp
	mov	eax, edx
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_1196:
	mov	edi, ebp
	call	iswalnum
	cmp	ebp, 0x5f
	mov	edx, 1
	je	.label_1197
	test	eax, eax
	jne	.label_1197
	jmp	.label_1199
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411870

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x18
	mov	r15, rsi
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r12 + 0x38]
	nop	
	add	rbx, qword ptr [r12 + 0x28]
	mov	ecx, 0xffffffff
	lea	rdi, [rdi]
	cmp	rbx, r15
	jge	.label_1207
	mov	qword ptr [rsp + 8], rdx
	lea	r13, [r12 + 0x20]
	jmp	.label_1206
.label_1204:
	mov	rbp, rbp
	xor	ecx, ecx
	cmp	rbp, rbx
	mov	rsp, rsp
	je	.label_1205
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1205
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + rbx]
.label_1205:
	mov	qword ptr [r13], r14
	lea	rsi, [rsi]
	mov	eax, 1
	lea	rdi, [rdi]
	jmp	.label_1208
	nop	
.label_1206:
	mov	r14, qword ptr [r12 + 0x20]
	mov	rbp, qword ptr [r12 + 0x50]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r12]
	nop	
	add	rsi, rbx
	lea	rdi, [rsp + 0x14]
	mov	rcx, r13
	call	rpl_mbrtowc
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	je	.label_1204
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	or	rcx, 1
	cmp	rcx, -1
	je	.label_1204
	mov	ecx, dword ptr [rsp + 0x14]
.label_1208:
	add	rbx, rax
	cmp	rbx, r15
	jl	.label_1206
	jmp	.label_1203
.label_1207:
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
.label_1203:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], ecx
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x411970

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	mov	rax, rsi
	lea	rdi, [rdi]
	sar	rax, 0x3f
	lea	rdi, [rdi]
	shr	rax, 0x3a
	nop	
	add	rax, rsi
	sar	rax, 6
	mov	rax, qword ptr [rdi + rax*8]
	bt	rax, rsi
	setb	al
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4119a0

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	eax, eax
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1209
	lea	rdi, [rdi]
	mov	r12, qword ptr [r15 + 0x98]
	mov	rbp, rbp
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_1211:
	mov	rax, qword ptr [r13 + 0x10]
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rax, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, 8
	lea	rdi, [rdi]
	jne	.label_1210
	mov	rax, qword ptr [rax + rcx]
	cmp	rax, 0x3f
	lea	rsi, [rsi]
	jg	.label_1210
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r12 + 0xa0]
	bt	rcx, rax
	jae	.label_1210
	mov	rbp, rbp
	mov	rdi, r15
	mov	rdx, r14
	lea	rsi, [rsi]
	call	match_ctx_add_subtop
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1209
	nop	dword ptr [rax]
.label_1210:
	mov	rsp, rsp
	inc	rbx
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [r13 + 8]
	jl	.label_1211
.label_1209:
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	nop	
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411a70

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x68
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], r14
	mov	r13, rdi
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1227
	nop	
	mov	r8, qword ptr [r13 + 0x98]
	nop	
	mov	qword ptr [rsp + 0x10], r8
	lea	rsi, [rsi]
	mov	rax, qword ptr [r13 + 0x48]
	mov	qword ptr [rsp + 0x40], rax
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1224:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rsi, qword ptr [rax + r15*8]
	mov	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rsp, rsp
	shl	rcx, 4
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax + rcx + 8]
	mov	rbp, rbp
	movzx	eax, bl
	lea	rsi, [rsi]
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1217
	nop	
	mov	ebp, ebx
	lea	rsi, [rsi]
	shr	ebp, 8
	mov	rsp, rsp
	test	bp, 0x3ff
	je	.label_1212
	mov	r14, rsi
	mov	edx, dword ptr [r13 + 0xa0]
	lea	rsi, [rsi]
	mov	rdi, r13
	nop	
	mov	r12, r8
	mov	rsi, qword ptr [rsp + 0x40]
	call	re_string_context_at
	mov	rsi, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8, r12
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	je	.label_1219
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1217
.label_1219:
	test	bh, 8
	nop	
	je	.label_1223
	test	ecx, ecx
	jne	.label_1217
.label_1223:
	mov	rsp, rsp
	test	bh, 0x20
	nop	
	je	.label_1226
	mov	ecx, eax
	and	ecx, 2
	je	.label_1217
.label_1226:
	test	bpl, bpl
	jns	.label_1212
	mov	rbp, rbp
	and	eax, 8
	je	.label_1217
	nop	dword ptr [rax]
.label_1212:
	mov	qword ptr [rsp + 8], rsi
	mov	r12, qword ptr [r13 + 0xc8]
	mov	rbp, rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rbx, r8
	mov	rbp, rbp
	mov	rbp, rsi
	mov	rdx, qword ptr [rsp + 0x40]
	call	get_subexp
	mov	rdx, rbp
	mov	r8, rbx
	mov	dword ptr [rsp + 0x64], eax
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1214
	cmp	r12, qword ptr [r13 + 0xc8]
	jge	.label_1217
	lea	rax, [r12 + r12*4]
	lea	rbp, [rax*8 + 0x18]
	nop	word ptr cs:[rax + rax]
.label_1221:
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0xd8]
	cmp	qword ptr [rax + rbp - 0x18], rdx
	nop	
	jne	.label_1213
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + rbp - 0x10], rcx
	jne	.label_1213
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + rbp - 8]
	mov	rsi, qword ptr [rax + rbp]
	mov	rdi, qword ptr [r8 + 0x30]
	mov	rbp, rbp
	cmp	rsi, rcx
	jne	.label_1215
	mov	qword ptr [rsp + 0x28], rdi
	nop	
	mov	qword ptr [rsp + 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rcx
	mov	rcx, qword ptr [r8 + 0x28]
	lea	rdx, [rdx + rdx*2]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + rdx*8 + 0x10]
	lea	rsi, [rsi]
	jmp	.label_1218
.label_1215:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rcx
	lea	rcx, [rdx*8]
	lea	rdi, [rdi]
	add	rcx, qword ptr [r8 + 0x18]
.label_1218:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	qword ptr [rsp + 0x30], rcx
	mov	rsp, rsp
	mov	r14, qword ptr [rax + rbp]
	mov	rsp, rsp
	mov	rbx, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	add	r14, rbx
	mov	rbp, rbp
	sub	r14, qword ptr [rax + rbp - 8]
	mov	rbp, rbp
	lea	rsi, [r14 - 1]
	lea	rdi, [rdi]
	mov	edx, dword ptr [r13 + 0xa0]
	nop	
	mov	rdi, r13
	call	re_string_context_at
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	r8, qword ptr [rcx + r14*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + rbx*8]
	mov	rbp, rbp
	test	rcx, rcx
	mov	rbp, rbp
	mov	esi, 0
	mov	rsp, rsp
	je	.label_1222
	mov	rsi, qword ptr [rcx + 0x10]
.label_1222:
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x30]
	nop	
	lea	rdx, [rcx + rdx*8]
	test	r8, r8
	lea	rbx, [rsp + 0x48]
	mov	rdi, rbx
	je	.label_1228
	mov	ebx, eax
	nop	
	mov	qword ptr [rsp + 0x30], rsi
	nop	
	mov	rsi, qword ptr [r8 + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x28], rdx
	nop	
	call	re_node_set_init_union
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1220
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x10]
	nop	
	lea	rdx, [rsp + 0x48]
	nop	
	mov	ecx, ebx
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + r14*8], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r14*8], 0
	mov	rbp, rbp
	jne	.label_1225
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	jne	.label_1214
.label_1225:
	mov	r14, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	jmp	.label_1216
.label_1228:
	mov	qword ptr [rsp + 0x30], rsi
	mov	rbp, rbp
	lea	rdi, [rsp + 0x64]
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rsp + 0x28], rdx
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	r8, rbx
	mov	rsp, rsp
	mov	rcx, qword ptr [r13 + 0xb8]
	mov	qword ptr [rcx + r14*8], rax
	mov	rax, qword ptr [r13 + 0xb8]
	cmp	qword ptr [rax + r14*8], 0
	nop	
	mov	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 8]
	mov	rsp, rsp
	jne	.label_1216
	mov	eax, dword ptr [rsp + 0x64]
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1214
	nop	dword ptr [rax]
.label_1216:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rax, qword ptr [rsp + 0x20]
	jne	.label_1213
	mov	rax, qword ptr [r13 + 0xb8]
	mov	rcx, qword ptr [rsp + 0x40]
	nop	
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], rcx
	jle	.label_1213
	mov	rdi, r13
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	r14, r8
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rdx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	check_subexp_matching_top
	mov	rdx, rbx
	mov	rcx, r14
	mov	dword ptr [rsp + 0x64], eax
	nop	
	test	eax, eax
	jne	.label_1214
	mov	rdi, r13
	mov	r14, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	rbx, rdx
	mov	rsp, rsp
	call	transit_state_bkref
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	r8, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	jne	.label_1214
	nop	dword ptr [rax]
.label_1213:
	inc	r12
	add	rbp, 0x28
	nop	
	cmp	r12, qword ptr [r13 + 0xc8]
	lea	rdi, [rdi]
	jl	.label_1221
	nop	dword ptr [rax + rax]
.label_1217:
	mov	rsp, rsp
	inc	r15
	cmp	r15, qword ptr [r14 + 8]
	nop	
	jl	.label_1224
.label_1227:
	mov	dword ptr [rsp + 0x64], 0
	jmp	.label_1214
.label_1220:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	call	free
.label_1214:
	mov	eax, dword ptr [rsp + 0x64]
	add	rsp, 0x68
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x411f30

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbx
	lea	rdi, [rdi]
	mov	ecx, esi
	mov	rbx, rdi
	mov	rsi, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	eax, 0xc
	movabs	rdx, 0xffffffffffffffe
	cmp	rsi, rdx
	ja	.label_1230
	movsxd	rax, ecx
	mov	rcx, qword ptr [rbx + 0x58]
	lea	rsi, [rsi]
	add	rsi, rsi
	mov	rbp, rbp
	cmp	rcx, rsi
	cmovle	rsi, rcx
	cmp	rax, rsi
	cmovge	rsi, rax
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_string_realloc_buffers
	test	eax, eax
	jne	.label_1230
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xb8]
	test	rdi, rdi
	je	.label_1232
	mov	rax, qword ptr [rbx + 0x40]
	lea	rdi, [rdi]
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rsi, [rsi]
	mov	rcx, rax
	test	rcx, rcx
	nop	
	mov	eax, 0xc
	mov	rbp, rbp
	je	.label_1230
	mov	rbp, rbp
	mov	qword ptr [rbx + 0xb8], rcx
.label_1232:
	cmp	byte ptr [rbx + 0x88], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx + 0x90]
	je	.label_1233
	mov	rdi, rbx
	nop	
	cmp	eax, 2
	jl	.label_1229
	call	build_wcs_upper_buffer
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1231
	jmp	.label_1230
.label_1233:
	cmp	eax, 2
	jl	.label_1234
	mov	rdi, rbx
	call	build_wcs_buffer
	mov	rsp, rsp
	jmp	.label_1231
.label_1229:
	call	build_upper_buffer
	jmp	.label_1231
.label_1234:
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x78], 0
	nop	
	je	.label_1231
	mov	rdi, rbx
	nop	
	call	re_string_translate_buffer
.label_1231:
	xor	eax, eax
.label_1230:
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412030

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	r14, rdx
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	mov	rsp, rsp
	test	byte ptr [r14 + 0x68], 0x20
	jne	.label_1239
.label_1236:
	nop	
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + 1]
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 8]
	movzx	r12d, byte ptr [rcx + rax]
.label_1237:
	mov	rsp, rsp
	mov	rax, qword ptr [r14 + 0x58]
	test	rax, rax
	jne	.label_1240
	lea	rdi, [rdi]
	mov	r13, qword ptr [r14 + 0x60]
	mov	rsp, rsp
	test	r13, r13
	mov	rbp, rbp
	jne	.label_1235
	nop	
	mov	rdi, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	build_trtable
	lea	rdi, [rdi]
	test	al, al
	jne	.label_1237
	mov	dword ptr [r15], 0xc
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1238
.label_1240:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r12*8]
.label_1238:
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	nop	
	pop	r15
	ret	
.label_1239:
	mov	rdi, rbx
	mov	rsi, r14
	mov	rsp, rsp
	call	transit_state_mb
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	test	ecx, ecx
	je	.label_1236
	jmp	.label_1238
.label_1235:
	mov	rsi, qword ptr [rbx + 0x48]
	nop	
	dec	rsi
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbx + 0xa0]
	mov	rbp, rbp
	mov	rdi, rbx
	call	re_string_context_at
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	shl	rax, 8
	mov	rbp, rbp
	or	rax, r12
	mov	rbp, rbp
	mov	rax, qword ptr [r13 + rax*8]
	lea	rsi, [rsi]
	jmp	.label_1238
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412140

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	push	r15
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	r15, rdi
	mov	rsp, rsp
	mov	r14, qword ptr [r13 + 0x48]
	lea	rdi, [rdi]
	mov	r12, qword ptr [r13 + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	cmp	r14, qword ptr [r13 + 0xc0]
	jle	.label_1241
	mov	rsp, rsp
	mov	qword ptr [rax + r14*8], rbx
	mov	qword ptr [r13 + 0xc0], r14
	jmp	.label_1243
.label_1241:
	cmp	qword ptr [rax + r14*8], 0
	lea	rsi, [rsi]
	je	.label_1245
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + r14*8]
	mov	rdx, qword ptr [rax + 0x50]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_1248
	mov	rbp, qword ptr [rbx + 0x50]
	lea	rdi, [rsp]
	mov	rsi, rbp
	mov	rsp, rsp
	call	re_node_set_init_union
	mov	dword ptr [r15], eax
	test	eax, eax
	je	.label_1244
	xor	eax, eax
	jmp	.label_1242
.label_1245:
	nop	
	mov	qword ptr [rax + r14*8], rbx
	mov	rbp, rbp
	jmp	.label_1243
.label_1248:
	mov	rbp, rbp
	mov	rax, qword ptr [rdx + 0x10]
	mov	qword ptr [rsp + 0x10], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp], xmm0
	mov	rsp, rsp
	xor	ebp, ebp
.label_1244:
	mov	rsi, qword ptr [r13 + 0x48]
	dec	rsi
	nop	
	mov	edx, dword ptr [r13 + 0xa0]
	mov	rdi, r13
	lea	rdi, [rdi]
	call	re_string_context_at
	lea	rdi, [rdi]
	lea	rdx, [rsp]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	ecx, eax
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rbx, rax
	mov	rax, qword ptr [r13 + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbx
	test	rbp, rbp
	je	.label_1243
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1243:
	test	rbx, rbx
	je	.label_1246
	mov	rax, qword ptr [r12 + 0x98]
	test	rax, rax
	je	.label_1247
	lea	rbp, [rbx + 8]
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rdx, r14
	call	check_subexp_matching_top
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	dword ptr [r15], ecx
	xor	eax, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	jne	.label_1242
	mov	rbp, rbp
	test	byte ptr [rbx + 0x68], 0x40
	mov	rax, rbx
	je	.label_1242
	lea	rdi, [rdi]
	mov	rdi, r13
	mov	rsi, rbp
	mov	rsp, rsp
	call	transit_state_bkref
	mov	ecx, eax
	mov	rsp, rsp
	mov	dword ptr [r15], ecx
	xor	eax, eax
	nop	
	test	ecx, ecx
	jne	.label_1242
	mov	rax, qword ptr [r13 + 0xb8]
	nop	
	mov	rax, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	jmp	.label_1242
.label_1246:
	mov	rsp, rsp
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_1242
.label_1247:
	nop	
	mov	rax, rbx
.label_1242:
	add	rsp, 0x18
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x412300

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	r14
	push	rbx
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rsi
	nop	
	mov	r14, rdi
.label_1250:
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xc0]
	nop	
.label_1251:
	lea	rsi, [rsi]
	cmp	rcx, rdx
	lea	rsi, [rsi]
	mov	eax, 0
	jge	.label_1249
	mov	rbp, rbp
	inc	qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0xb8]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rcx, [rcx + 1]
	nop	
	je	.label_1251
	mov	rsp, rsp
	xor	edx, edx
	mov	rdi, r14
	mov	rsi, rbx
	call	merge_state_with_log
	test	rax, rax
	jne	.label_1249
	mov	ecx, dword ptr [r14]
	nop	
	test	ecx, ecx
	je	.label_1250
.label_1249:
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412380

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	nop	
	mov	r14, rdx
	mov	r15, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	r12, qword ptr [rbx + 0xf0]
	cmp	qword ptr [rbx + 0xe8], r12
	nop	
	je	.label_1252
.label_1253:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x30
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rcx, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbx + 0xf8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rcx + rax*8]
	nop	
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1254
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], r15
	mov	rax, qword ptr [rbx + 0xe8]
	lea	rcx, [rax + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xe8], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rax], r14
	nop	
	xor	eax, eax
.label_1254:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
.label_1252:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xf8]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rbp, rbp
	shl	rsi, 4
	mov	rsp, rsp
	call	realloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1254
	nop	
	add	r12, r12
	mov	qword ptr [rbx + 0xf8], rcx
	nop	
	mov	qword ptr [rbx + 0xf0], r12
	jmp	.label_1253
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412490

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x40], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x50], rsi
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	mov	rax, qword ptr [rbx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	rsi, rdx
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	rbp, rbx
	lea	rsi, [rsi]
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_1265
	lea	rcx, [rax + rax*4]
	shl	rcx, 3
	add	rcx, qword ptr [rbp + 0xd8]
	nop	dword ptr [rax]
.label_1260:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	cmp	qword ptr [rcx], rdx
	je	.label_1255
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + 0x20], 0
	mov	rsp, rsp
	lea	rcx, [rcx + 0x28]
	lea	rdi, [rdi]
	jne	.label_1260
.label_1265:
	xor	eax, eax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0xe8], 0
	nop	
	jle	.label_1255
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x50]
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x28], rax
	mov	rbp, rbp
	jmp	.label_1268
.label_1272:
	mov	rbp, rbp
	mov	r13, r15
	nop	
	jmp	.label_1257
	nop	dword ptr [rax + rax]
.label_1268:
	mov	rax, qword ptr [rbp + 0xf8]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rbx, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 8]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	rdx, qword ptr [rsp + 0x18]
	nop	
	cmp	qword ptr [rcx + rax], rdx
	mov	rbp, rbp
	jne	.label_1256
	lea	rdi, [rdi]
	mov	r15, qword ptr [rbx]
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x20], 0
	jle	.label_1267
	mov	rsp, rsp
	mov	r8, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	xor	r14d, r14d
	mov	rbp, rbp
	jmp	.label_1269
.label_1267:
	mov	r8, qword ptr [rsp + 0x40]
	mov	r13, r15
	xor	r14d, r14d
	jmp	.label_1257
.label_1271:
	lea	rdi, [rdi]
	cmp	rsi, qword ptr [rbp + 0x58]
	lea	rdi, [rdi]
	jg	.label_1272
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], r8
	nop	
	mov	rdi, rbp
	nop	
	call	clean_state_log_if_needed
	nop	
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1255
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], r13
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1263
	nop	
.label_1269:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x28]
	mov	rdx, qword ptr [rax + r14*8]
	mov	rbp, rbp
	mov	r13, qword ptr [rdx + 8]
	mov	r12, r13
	mov	rbp, rbp
	sub	r12, r15
	nop	
	jle	.label_1266
	lea	rsi, [rsi]
	lea	rsi, [r12 + r8]
	cmp	rsi, qword ptr [rbp + 0x30]
	lea	rdi, [rdi]
	jg	.label_1271
	mov	qword ptr [rsp + 0x38], rdx
	mov	qword ptr [rsp + 0x30], r13
.label_1263:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	lea	rdi, [rax + r8]
	nop	
	lea	rsi, [rax + r15]
	mov	r13, r8
	nop	
	mov	rdx, r12
	call	memcmp
	nop	
	mov	r8, r13
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0x30]
	nop	
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	jne	.label_1261
.label_1266:
	mov	rsp, rsp
	mov	r15, r8
	mov	rdi, rbp
	nop	
	mov	rsi, rbx
	nop	
	mov	rcx, qword ptr [rsp + 0x50]
	mov	r8, qword ptr [rsp + 0x40]
	nop	
	call	get_subexp_sub
	cmp	eax, 1
	lea	rdi, [rdi]
	ja	.label_1255
	lea	rsi, [rsi]
	mov	r8, r15
	add	r8, r12
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 8]
	nop	
	mov	qword ptr [rsp + 0x48], rax
	inc	r14
	cmp	r14, qword ptr [rbx + 0x20]
	mov	r15, r13
	jl	.label_1269
	lea	rdi, [rdi]
	jmp	.label_1257
.label_1261:
	mov	r13, r15
	nop	
.label_1257:
	mov	rsp, rsp
	mov	rcx, r13
	lea	rsi, [rsi]
	cmp	r14, qword ptr [rbx + 0x20]
	mov	rbp, rbp
	jl	.label_1256
	test	r14, r14
	mov	rsp, rsp
	setg	al
	lea	rdi, [rdi]
	movzx	r13d, al
	lea	rdi, [rdi]
	add	r13, rcx
	cmp	r13, qword ptr [rsp + 0x40]
	jg	.label_1256
	mov	rsp, rsp
	jmp	.label_1264
.label_1259:
	cmp	r8, qword ptr [rbp + 0x58]
	mov	rsp, rsp
	jge	.label_1256
	lea	esi, [r8 + 1]
	lea	rsi, [rsi]
	mov	r14, r8
	mov	rbp, rbp
	mov	rdi, rbp
	call	extend_buffers
	test	eax, eax
	nop	
	jne	.label_1255
	mov	rax, qword ptr [rbp + 8]
	mov	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	mov	r8, r14
	jmp	.label_1273
	nop	dword ptr [rax + rax]
.label_1264:
	cmp	r13, qword ptr [rbx]
	jle	.label_1262
	cmp	r8, qword ptr [rbp + 0x30]
	mov	rbp, rbp
	jge	.label_1259
.label_1273:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x48]
	movzx	eax, byte ptr [rcx + r13 - 1]
	movzx	ecx, byte ptr [rcx + r8]
	cmp	ecx, eax
	jne	.label_1256
	inc	r8
.label_1262:
	lea	rdi, [rdi]
	mov	r14, rbx
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r13*8]
	test	rsi, rsi
	je	.label_1258
	mov	r15, r8
	mov	rsp, rsp
	add	rsi, 8
	nop	
	mov	ecx, 9
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rdx, qword ptr [rsp + 0x18]
	call	find_subexp_node
	mov	rbp, rbp
	mov	rbx, rax
	cmp	rbx, -1
	mov	rsp, rsp
	je	.label_1274
	mov	rbp, rbp
	cmp	qword ptr [r14 + 0x10], 0
	lea	rsi, [rsi]
	mov	rdi, rbp
	jne	.label_1270
	mov	rbp, rbp
	mov	rsi, r13
	nop	
	sub	rsi, qword ptr [r14]
	inc	rsi
	mov	rbp, rdi
	mov	edi, 0x18
	lea	rsi, [rsi]
	call	rpl_calloc
	lea	rdi, [rdi]
	mov	rdi, rbp
	mov	rcx, rax
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1255
.label_1270:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r14 + 8]
	mov	dword ptr [rsp], 9
	mov	rbp, rdi
	mov	r8, rbx
	mov	r9, r13
	call	check_arrival
	cmp	eax, 1
	mov	r8, r15
	lea	rsi, [rsi]
	je	.label_1258
	mov	r15, r8
	test	eax, eax
	mov	rdi, r14
	lea	rsi, [rsi]
	jne	.label_1255
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r13
	mov	rbx, rdi
	mov	rsp, rsp
	call	match_ctx_add_sublast
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	eax, 0xc
	test	rcx, rcx
	je	.label_1255
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0x50]
	lea	rsi, [rsi]
	mov	rbp, rsi
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x40]
	call	get_subexp_sub
	mov	rsp, rsp
	mov	rcx, rbp
	mov	rbp, rbp
	cmp	eax, 1
	lea	rsi, [rsi]
	ja	.label_1255
	mov	r14, rcx
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rax
	mov	rbp, rbx
.label_1274:
	nop	
	mov	r8, r15
.label_1258:
	nop	
	cmp	r13, qword ptr [rsp + 0x40]
	lea	r13, [r13 + 1]
	mov	rbx, r14
	nop	
	jl	.label_1264
	nop	word ptr cs:[rax + rax]
.label_1256:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	inc	rcx
	mov	qword ptr [rsp + 0x28], rcx
	xor	eax, eax
	nop	
	cmp	rcx, qword ptr [rbp + 0xe8]
	mov	rsp, rsp
	jl	.label_1268
.label_1255:
	add	rsp, 0x58
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x412990

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	rbp, rbp
	mov	r15, rdx
	mov	rbp, rbp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	test	r12, r12
	lea	rsi, [rsi]
	je	.label_1281
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 8]
	mov	rsp, rsp
	test	r15, r15
	je	.label_1276
	lea	rsi, [rsi]
	test	rax, rax
	lea	rsi, [rsi]
	jle	.label_1276
	mov	rdi, qword ptr [r15 + 8]
	test	rdi, rdi
	jle	.label_1285
	lea	rsi, [rsi]
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [r14], rdi
	mov	rsp, rsp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	eax, 0xc
	nop	
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_1279
	lea	rsi, [rsi]
	xor	r13d, r13d
	lea	rdi, [rdi]
	cmp	qword ptr [r12 + 8], 0
	mov	rbp, rbp
	mov	ebx, 0
	mov	ebp, 0
	jle	.label_1275
	xor	edx, edx
	xor	esi, esi
	xor	r13d, r13d
.label_1287:
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rsi
	nop	dword ptr [rax]
.label_1286:
	cmp	rbp, qword ptr [r15 + 8]
	jge	.label_1275
	mov	rax, qword ptr [r12 + 0x10]
	mov	rcx, qword ptr [rax + r13*8]
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rbp*8]
	cmp	rcx, rax
	lea	rsi, [rsi]
	jle	.label_1278
	mov	rsp, rsp
	inc	rbp
	mov	rcx, qword ptr [r14 + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	inc	rbx
	cmp	r13, qword ptr [r12 + 8]
	mov	rsp, rsp
	jl	.label_1286
	jmp	.label_1275
.label_1278:
	sete	sil
	inc	r13
	mov	rdx, qword ptr [r14 + 0x10]
	mov	qword ptr [rdx + rbx*8], rcx
	lea	rdx, [rbx + 1]
	mov	rsp, rsp
	movzx	esi, sil
	add	rsi, rbp
	lea	rdi, [rdi]
	cmp	r13, qword ptr [r12 + 8]
	lea	rdi, [rdi]
	jl	.label_1287
	cmp	rcx, rax
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	inc	rbx
	movzx	eax, al
	add	rbp, rax
.label_1275:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r12 + 8]
	mov	rsp, rsp
	sub	rdx, r13
	jle	.label_1284
	lea	rdi, [rdi]
	lea	rdi, [rbx*8]
	lea	rsi, [rsi]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [r13*8]
	mov	rbp, rbp
	add	rsi, qword ptr [r12 + 0x10]
	shl	rdx, 3
	lea	rdi, [rdi]
	call	memcpy
	sub	rbx, r13
	add	rbx, qword ptr [r12 + 8]
	mov	rbp, rbp
	jmp	.label_1283
.label_1285:
	mov	rsp, rsp
	mov	rax, qword ptr [r12 + 8]
.label_1276:
	test	rax, rax
	jle	.label_1281
	mov	rdi, r14
	mov	rsi, r12
	lea	rdi, [rdi]
	jmp	.label_1277
.label_1281:
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1280
	cmp	qword ptr [r15 + 8], 0
	jle	.label_1280
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
.label_1277:
	nop	
	add	rsp, 8
	pop	rbx
	nop	
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	jmp	re_node_set_init_copy
.label_1280:
	mov	rsp, rsp
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	nop	
	mov	qword ptr [r14 + 0x10], 0
	jmp	.label_1282
.label_1284:
	mov	rsp, rsp
	mov	rdx, qword ptr [r15 + 8]
	nop	
	sub	rdx, rbp
	jle	.label_1283
	lea	rdi, [rbx*8]
	add	rdi, qword ptr [r14 + 0x10]
	lea	rsi, [rbp*8]
	add	rsi, qword ptr [r15 + 0x10]
	nop	
	shl	rdx, 3
	call	memcpy
	lea	rsi, [rsi]
	sub	rbx, rbp
	add	rbx, qword ptr [r15 + 8]
.label_1283:
	mov	qword ptr [r14 + 8], rbx
.label_1282:
	xor	eax, eax
.label_1279:
	nop	
	add	rsp, 8
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412c00

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	mov	r8, qword ptr [rdi + 0xc8]
	xor	eax, eax
	mov	rbp, rbp
	test	r8, r8
	mov	rbp, rbp
	jle	.label_1288
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0xd8]
	xor	eax, eax
	mov	r11, r8
	nop	word ptr cs:[rax + rax]
.label_1290:
	lea	rdi, [rdi]
	lea	r10, [rax + r11]
	lea	rdi, [rdi]
	mov	rdx, r10
	mov	rbp, rbp
	shr	rdx, 0x3f
	lea	rsi, [rsi]
	add	rdx, r10
	sar	rdx, 1
	mov	rbp, rbp
	lea	rcx, [rdx + rdx*4]
	cmp	qword ptr [r9 + rcx*8 + 8], rsi
	nop	
	cmovge	r11, rdx
	lea	rcx, [rdx + 1]
	cmovl	rax, rcx
	lea	rdi, [rdi]
	cmp	rax, r11
	lea	rdi, [rdi]
	jl	.label_1290
.label_1288:
	mov	rbp, rbp
	cmp	rax, r8
	lea	rdi, [rdi]
	jge	.label_1289
	mov	rcx, qword ptr [rdi + 0xd8]
	nop	
	lea	rdx, [rax + rax*4]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rdx*8 + 8], rsi
	je	.label_1291
.label_1289:
	mov	rax, -1
.label_1291:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x412ca0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	nop	
	mov	rax, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rbx + 0xc0]
	cmp	rax, r14
	jg	.label_1292
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rbp, rbp
	jl	.label_1293
.label_1292:
	nop	
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, r14
	jg	.label_1294
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbx + 0x58]
	mov	rsp, rsp
	jge	.label_1294
.label_1293:
	lea	esi, [r14 + 1]
	nop	
	mov	rdi, rbx
	call	extend_buffers
	mov	ebp, eax
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1295
.label_1294:
	mov	rsp, rsp
	xor	ebp, ebp
	cmp	r15, r14
	lea	rsi, [rsi]
	jge	.label_1295
	mov	rax, qword ptr [rbx + 0xb8]
	lea	rdi, [rax + r15*8 + 8]
	mov	rdx, r14
	nop	
	sub	rdx, r15
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc0], r14
.label_1295:
	mov	eax, ebp
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412d60

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	sub	rsp, 0x10
	mov	r12, r8
	mov	rbp, rbp
	mov	r13, rcx
	lea	rdi, [rdi]
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r15, rsi
	mov	r14, rdi
	lea	rsi, [rbx + 0x10]
	mov	rdx, qword ptr [rbx]
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp], 8
	mov	r8, r13
	mov	rsp, rsp
	mov	r9, r12
	call	check_arrival
	test	eax, eax
	jne	.label_1296
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [rbx + 8]
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r13
	lea	rdi, [rdi]
	mov	rdx, r12
	call	match_ctx_add_entry
	test	eax, eax
	jne	.label_1296
	add	r12, qword ptr [rbx + 8]
	sub	r12, qword ptr [r15]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, r12
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbx
	mov	rbp, rbp
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	pop	r15
	jmp	clean_state_log_if_needed
.label_1296:
	mov	rsp, rsp
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
	#Procedure 0x412e20

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	lea	rsi, [rsi]
	jle	.label_1297
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsi + 0x10]
	mov	r9, qword ptr [rdi]
	lea	rsi, [rsi]
	xor	r11d, r11d
	nop	dword ptr [rax]
.label_1299:
	mov	rsp, rsp
	mov	rax, qword ptr [r8 + r11*8]
	lea	rdi, [rdi]
	mov	r10, rax
	lea	rsi, [rsi]
	shl	r10, 4
	mov	rbp, rbp
	movzx	edi, byte ptr [r9 + r10 + 8]
	mov	rsp, rsp
	cmp	edi, ecx
	jne	.label_1298
	cmp	qword ptr [r9 + r10], rdx
	je	.label_1300
.label_1298:
	mov	rsp, rsp
	inc	r11
	lea	rdi, [rdi]
	cmp	r11, qword ptr [rsi + 8]
	nop	
	jl	.label_1299
.label_1297:
	mov	rsp, rsp
	mov	rax, -1
.label_1300:
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x412e90

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rsp + 0x38], r9
	mov	qword ptr [rsp + 8], r8
	mov	r13, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	rax, qword ptr [rdi + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, r12
	mov	rsp, rsp
	shl	rcx, 4
	mov	rax, qword ptr [rax + rcx]
	mov	qword ptr [rsp + 0x28], rax
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsi + 8]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rdi + 0xe0]
	lea	rcx, [rax + r9]
	mov	rbp, rbp
	cmp	rbp, rcx
	nop	
	jle	.label_1302
.label_1310:
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15d, dword ptr [rsp + 0xb0]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsi]
	mov	rax, qword ptr [rsi + 0x10]
	nop	
	test	r14, r14
	cmove	r14, r13
	mov	rcx, qword ptr [rdi + 0x48]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rcx, qword ptr [rdi + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rdi + 0x48], r14
	lea	rsi, [r14 - 1]
	mov	edx, dword ptr [rdi + 0xa0]
	mov	rbx, rdi
	call	re_string_context_at
	lea	rsi, [rsi]
	cmp	r14, r13
	jne	.label_1318
	mov	rbp, rbp
	mov	r13d, eax
	mov	ebp, r15d
	lea	rdi, [rsp + 0x50]
	mov	rsi, r12
	lea	rsi, [rsi]
	call	re_node_set_init_1
	nop	
	mov	r15d, eax
	mov	dword ptr [rsp + 0x74], r15d
	lea	rdi, [rdi]
	test	r15d, r15d
	jne	.label_1304
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x50]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x28]
	mov	r15d, ebp
	nop	
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	mov	rbp, rbp
	mov	rcx, rbx
	mov	rbp, rbp
	je	.label_1313
	lea	rsi, [rsi]
	jmp	.label_1307
.label_1318:
	mov	rcx, qword ptr [rbx + 0xb8]
	nop	
	mov	rbp, qword ptr [rcx + r14*8]
	nop	
	test	rbp, rbp
	mov	rcx, rbx
	mov	rsp, rsp
	je	.label_1316
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	r12d, r15d
	test	byte ptr [rbp + 0x68], 0x40
	jne	.label_1312
	lea	rsi, [rsi]
	mov	r13d, eax
	xorps	xmm0, xmm0
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x60], 0
	nop	
	jmp	.label_1301
.label_1316:
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	mov	qword ptr [rsp + 0x60], 0
	xor	ebp, ebp
	jmp	.label_1309
.label_1312:
	mov	r13d, eax
	mov	rsp, rsp
	lea	rsi, [rbp + 8]
	lea	rdi, [rsp + 0x50]
	nop	
	call	re_node_set_init_copy
	mov	r15d, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x74], r15d
	test	r15d, r15d
	jne	.label_1304
.label_1301:
	lea	rsi, [rsi]
	test	byte ptr [rbp + 0x68], 0x40
	mov	r15d, r12d
	mov	rcx, rbx
	lea	rdi, [rdi]
	je	.label_1309
.label_1313:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_1320
	lea	rsi, [rsp + 0x50]
	mov	rbx, rcx
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	r8d, r15d
	call	expand_bkref_cache
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	jne	.label_1307
.label_1320:
	mov	rbp, rbp
	mov	rbx, rcx
	lea	rdi, [rsp + 0x74]
	lea	rdi, [rdi]
	lea	rdx, [rsp + 0x50]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	ecx, r13d
	nop	
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	lea	rdi, [rdi]
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_1317
	mov	eax, dword ptr [rsp + 0x74]
	mov	rsp, rsp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1307
.label_1317:
	mov	rsp, rsp
	mov	rcx, rbx
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r14*8], rbp
.label_1309:
	cmp	r14, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	jge	.label_1306
	inc	r14
	mov	rbp, rbp
	lea	rbx, [rsp + 0x50]
	lea	rsi, [rsi]
	mov	r12, r14
	xor	r13d, r13d
.label_1311:
	mov	rsp, rsp
	lea	r14, [r12 - 1]
	movsxd	rax, dword ptr [rcx + 0xe0]
	cmp	r13, rax
	jg	.label_1306
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], rcx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + r12*8]
	lea	rsi, [rsi]
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_1319
	add	rsi, 8
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1307
.label_1319:
	mov	rbp, rbp
	test	rbp, rbp
	je	.label_1308
	add	rbp, 0x20
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	nop	
	mov	rcx, rbx
	mov	rsp, rsp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rsp + 0x74], eax
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1307
.label_1308:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], r14
	cmp	qword ptr [rsp + 0x58], 0
	lea	rsi, [rsi]
	mov	r14, rbx
	je	.label_1315
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	mov	rsi, r14
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsp, rsp
	mov	rdx, rbp
	mov	ebx, dword ptr [rsp + 0xb0]
	nop	
	mov	ecx, ebx
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x74], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1307
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, rbp
	mov	r8d, ebx
	call	expand_bkref_cache
	nop	
	mov	dword ptr [rsp + 0x74], eax
	test	eax, eax
	jne	.label_1307
.label_1315:
	mov	r15, qword ptr [rsp + 0x48]
	mov	rbp, rbp
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	nop	
	mov	rsi, qword ptr [rsp + 0x30]
	call	re_string_context_at
	lea	rdi, [rsp + 0x74]
	mov	rsi, qword ptr [rsp + 0x40]
	lea	rdi, [rdi]
	mov	rdx, r14
	mov	ecx, eax
	mov	rbp, rbp
	call	re_acquire_state_context
	nop	
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_1303
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x74]
	test	eax, eax
	jne	.label_1307
.label_1303:
	mov	rbx, r14
	nop	
	inc	r13
	test	rbp, rbp
	mov	rbp, rbp
	mov	rcx, r15
	nop	
	mov	rax, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12*8], rbp
	lea	rdi, [rdi]
	mov	eax, 0
	cmovne	r13, rax
	lea	rdi, [rdi]
	cmp	r12, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	lea	r12, [r12 + 1]
	nop	
	jl	.label_1311
	mov	rbx, rcx
	dec	r12
	mov	r14, r12
	jmp	.label_1314
.label_1306:
	mov	rbx, rcx
.label_1314:
	mov	r15, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rdi, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	test	rdi, rdi
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r14
	mov	qword ptr [rbx + 0xb8], rbp
	mov	qword ptr [rbx + 0x48], r15
	je	.label_1305
	add	rdi, 8
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_contains
	xor	r15d, r15d
	test	rax, rax
	jne	.label_1304
.label_1305:
	mov	rbp, rbp
	mov	r15d, 1
	lea	rsi, [rsi]
	jmp	.label_1304
.label_1307:
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	mov	r15d, dword ptr [rsp + 0x74]
.label_1304:
	mov	rsp, rsp
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x78
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_1302:
	movabs	rdx, 0x7fffffffffffffff
	nop	
	sub	rdx, rbp
	mov	r15d, 0xc
	lea	rdi, [rdi]
	cmp	rdx, rcx
	lea	rdi, [rdi]
	jle	.label_1304
	mov	rcx, qword ptr [rsp + 0x38]
	lea	r14, [rax + rcx + 1]
	lea	rbx, [r14 + rbp]
	mov	rax, rbx
	shr	rax, 0x3d
	jne	.label_1304
	nop	
	mov	qword ptr [rsp + 0x48], rdi
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rsp + 0x20], rsi
	mov	rsp, rsp
	lea	rsi, [rbx*8]
	mov	rbp, rbp
	call	realloc
	mov	rsp, rsp
	test	rax, rax
	je	.label_1304
	mov	rsp, rsp
	mov	r15, qword ptr [rsp + 0x20]
	mov	qword ptr [r15 + 0x10], rax
	lea	rdi, [rdi]
	mov	qword ptr [r15 + 8], rbx
	lea	rdi, [rax + rbp*8]
	shl	r14, 3
	xor	esi, esi
	mov	rdx, r14
	mov	rsp, rsp
	call	memset
	mov	rsi, r15
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x48]
	jmp	.label_1310
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413440

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	r15
	push	r14
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r12, qword ptr [rbx + 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rbx + 0x20], r12
	je	.label_1321
.label_1323:
	mov	rsp, rsp
	mov	edi, 1
	mov	esi, 0x28
	lea	rsi, [rsi]
	call	rpl_calloc
	test	rax, rax
	je	.label_1322
	mov	rcx, qword ptr [rbx + 0x20]
	mov	rdx, qword ptr [rbx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	qword ptr [rax], r15
	nop	
	mov	qword ptr [rax + 8], r14
	inc	qword ptr [rbx + 0x20]
.label_1322:
	lea	rsi, [rsi]
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r14
	mov	rbp, rbp
	pop	r15
	ret	
.label_1321:
	lea	rax, [r12 + r12]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x28]
	mov	rbp, rbp
	lea	rsi, [rax*8 + 8]
	call	realloc
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	eax, eax
	test	rcx, rcx
	je	.label_1322
	mov	rbp, rbp
	lea	rax, [r12 + r12 + 1]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rcx
	mov	qword ptr [rbx + 0x18], rax
	jmp	.label_1323
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413500

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	nop	
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	r13, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd0]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jl	.label_1324
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	shl	rcx, 4
	mov	rbp, rbp
	lea	rsi, [rcx + rcx*4]
	call	realloc
	test	rax, rax
	je	.label_1327
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0xd8], rax
	mov	rcx, qword ptr [rbx + 0xc8]
	mov	rbp, qword ptr [rbx + 0xd0]
	lea	rcx, [rcx + rcx*4]
	lea	rdi, [rax + rcx*8]
	lea	rax, [rbp*8]
	nop	
	lea	rdx, [rax + rax*4]
	xor	esi, esi
	call	memset
	lea	rdi, [rdi]
	add	rbp, rbp
	mov	qword ptr [rbx + 0xd0], rbp
	mov	rax, qword ptr [rbx + 0xc8]
.label_1324:
	test	rax, rax
	jle	.label_1325
	lea	rdi, [rdi]
	dec	rax
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8 + 8], r12
	nop	
	jne	.label_1325
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax*8 + 0x20], 1
.label_1325:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], r13
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 8], r12
	mov	rax, qword ptr [rbx + 0xc8]
	mov	rcx, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x10], r15
	mov	rax, qword ptr [rbx + 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rax, [rax + rax*4]
	mov	qword ptr [rcx + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	sub	r14, r15
	lea	rdi, [rdi]
	mov	cx, 0xffff
	mov	rbp, rbp
	cmovne	cx, ax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbx + 0xc8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbx + 0xd8]
	mov	rsp, rsp
	lea	rdx, [rdx + rdx*4]
	mov	rbp, rbp
	mov	word ptr [rsi + rdx*8 + 0x22], cx
	nop	
	mov	rcx, qword ptr [rbx + 0xc8]
	lea	rdx, [rcx + 1]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0xc8], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbx + 0xd8]
	lea	rcx, [rcx + rcx*4]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rcx*8 + 0x20], 0
	movsxd	rcx, dword ptr [rbx + 0xe0]
	cmp	rcx, r14
	nop	
	jge	.label_1326
	mov	rsp, rsp
	mov	dword ptr [rbx + 0xe0], r14d
.label_1326:
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1327:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx + 0xd8]
	lea	rsi, [rsi]
	call	free
	mov	eax, 0xc
	jmp	.label_1326
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413700

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r14d, ecx
	mov	r13, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	qword ptr [rsp + 8], rbp
	mov	rbx, rdi
	mov	rsi, qword ptr [rbp + 8]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_alloc
	mov	r12d, eax
	nop	
	test	r12d, r12d
	jne	.label_1328
	mov	r15d, r14d
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1331
	mov	rbp, rbp
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_1333:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x10]
	mov	r12, qword ptr [rax + r14*8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [r12 + r12*2]
	nop	
	lea	rbp, [rax + rcx*8]
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rdx, r13
	mov	rsp, rsp
	mov	ecx, r15d
	lea	rdi, [rdi]
	call	find_subexp_node
	cmp	rax, -1
	je	.label_1330
	mov	rdi, rbx
	nop	
	lea	rsi, [rsp + 0x10]
	mov	rdx, r12
	mov	rcx, r13
	mov	r8d, r15d
	mov	rsp, rsp
	call	check_arrival_expand_ecl_sub
	lea	rsi, [rsi]
	jmp	.label_1332
	nop	dword ptr [rax]
.label_1330:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_merge
.label_1332:
	lea	rdi, [rdi]
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1329
	inc	r14
	mov	rbp, qword ptr [rsp + 8]
	cmp	r14, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	jl	.label_1333
.label_1331:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + 0x10], rax
	movups	xmm0, xmmword ptr [rsp + 0x10]
	movups	xmmword ptr [rbp], xmm0
	mov	rsp, rsp
	xor	r12d, r12d
	jmp	.label_1328
.label_1329:
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
.label_1328:
	mov	eax, r12d
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413860

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	mov	dword ptr [rsp + 0x18], r8d
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 0x40], rdx
	nop	
	mov	r13, rsi
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	mov	qword ptr [rsp + 0x38], rdi
	nop	
	mov	r14, qword ptr [rdi + 0x98]
	mov	qword ptr [rsp + 0x20], r14
	mov	rsi, rdx
	call	search_cur_bkref_entry
	lea	rdi, [rdi]
	cmp	rax, -1
	lea	rdi, [rdi]
	je	.label_1346
	nop	
	lea	rcx, [rax + rax*4]
	nop	
	mov	qword ptr [rsp + 8], rcx
	lea	r12, [rsp + 0x48]
.label_1338:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	lea	r15, [rax + rcx*8 + 0x20]
	nop	word ptr cs:[rax + rax]
.label_1345:
	mov	rsp, rsp
	mov	rsi, qword ptr [r15 - 0x20]
	mov	rdi, r13
	call	re_node_set_contains
	test	rax, rax
	je	.label_1343
	lea	rsi, [rsi]
	mov	rbp, qword ptr [r15 - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x40]
	add	rbp, rax
	mov	rsp, rsp
	sub	rbp, qword ptr [r15 - 0x10]
	mov	rsp, rsp
	cmp	rbp, rax
	jne	.label_1348
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x28]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0x10]
	mov	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	mov	ecx, 4
	mov	rbp, rbp
	test	rax, rax
	je	.label_1342
	lea	rsi, [rsi]
	mov	rbx, r14
	lea	rsi, [rsi]
	jmp	.label_1339
	nop	
.label_1348:
	mov	rbp, rbp
	mov	rax, qword ptr [r15 - 0x20]
	mov	rcx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rsp + 0x38]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rax + rbp*8]
	lea	rsi, [rsi]
	test	rbx, rbx
	je	.label_1347
	add	rbx, 8
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r14
	mov	rsp, rsp
	call	re_node_set_contains
	nop	
	mov	ecx, 4
	lea	rsi, [rsi]
	test	rax, rax
	mov	rbp, rbp
	je	.label_1349
	mov	r14, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jmp	.label_1340
.label_1342:
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsi, rbx
	call	re_node_set_init_1
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	r14d, eax
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x64], r14d
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	rsi, r12
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rsp + 0x18]
	mov	rsp, rsp
	call	check_arrival_expand_ecl
	nop	
	mov	dword ptr [rsp + 0x1c], eax
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	lea	rdi, [rdi]
	mov	edx, r14d
	mov	r14d, dword ptr [rsp + 0x1c]
	mov	eax, ebp
	mov	rbp, rbp
	or	eax, r14d
	mov	rsp, rsp
	mov	ecx, 2
	mov	rsp, rsp
	or	eax, edx
	jne	.label_1336
.label_1334:
	mov	r14, rbx
	lea	rdi, [rdi]
	jmp	.label_1339
.label_1347:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	call	re_node_set_init_1
	mov	dword ptr [rsp + 0x64], eax
	test	eax, eax
	je	.label_1335
	mov	rbp, rbp
	mov	ecx, 1
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1340
.label_1349:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rsi, rbx
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	ebx, eax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x64], ebx
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsi, r14
	nop	
	call	re_node_set_insert
	test	ebx, ebx
	mov	rbp, rbp
	jne	.label_1337
	xor	al, 1
	mov	rsp, rsp
	jne	.label_1337
.label_1335:
	lea	rdi, [rsp + 0x64]
	mov	r14, qword ptr [rsp + 0x20]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	call	re_acquire_state
	mov	rbx, qword ptr [rsp + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0xb8]
	mov	qword ptr [rcx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbx + 0xb8]
	nop	
	cmp	qword ptr [rax + rbp*8], 0
	sete	al
	mov	rbp, rbp
	mov	edx, dword ptr [rsp + 0x64]
	test	edx, edx
	setne	cl
	and	cl, al
	mov	rbp, rbp
	movzx	ecx, cl
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	cmovne	eax, edx
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], eax
.label_1340:
	mov	r13, qword ptr [rsp + 0x28]
.label_1339:
	test	ecx, ecx
	je	.label_1343
	cmp	ecx, 4
	nop	
	jne	.label_1344
.label_1343:
	lea	rdi, [rdi]
	cmp	byte ptr [r15], 0
	lea	rdi, [rdi]
	lea	r15, [r15 + 0x28]
	lea	rsi, [rsi]
	jne	.label_1345
	jmp	.label_1346
.label_1336:
	test	r14d, r14d
	cmovne	ebp, r14d
	lea	rsi, [rsi]
	test	edx, edx
	lea	rdi, [rdi]
	cmovne	ebp, edx
	mov	dword ptr [rsp + 0x64], ebp
	mov	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], ebp
	lea	rdi, [rdi]
	jmp	.label_1334
.label_1337:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x58]
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x64]
	test	ecx, ecx
	mov	rsp, rsp
	mov	eax, 0xc
	cmove	ecx, eax
	mov	dword ptr [rsp + 0x34], ecx
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x64], ecx
	mov	rsp, rsp
	mov	ecx, 1
	lea	rsi, [rsi]
	mov	r14, qword ptr [rsp + 0x20]
	jmp	.label_1340
	nop	dword ptr [rax + rax]
.label_1344:
	cmp	ecx, 2
	mov	rcx, qword ptr [rsp + 8]
	mov	eax, dword ptr [rsp + 0x34]
	je	.label_1338
	jmp	.label_1341
.label_1346:
	mov	rsp, rsp
	xor	eax, eax
.label_1341:
	add	rsp, 0x68
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x413c20

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x58
	mov	qword ptr [rsp + 0x28], rcx
	nop	
	mov	rbp, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rbp
	mov	rcx, rsi
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	r12, rdi
	mov	qword ptr [rsp + 0x10], r12
	mov	r14, qword ptr [r12 + 0x98]
	mov	dword ptr [rsp + 0x54], 0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	qword ptr [rsp + 0x40], 0
	nop	
	cmp	qword ptr [rbp + 8], 0
	jle	.label_1356
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1357:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x10]
	nop	
	mov	r13, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r14]
	mov	rbx, r13
	lea	rdi, [rdi]
	shl	rbx, 4
	test	byte ptr [rax + rbx + 0xa], 0x10
	mov	rbp, rbp
	je	.label_1352
	lea	rsi, [rsi]
	mov	rdi, r14
	mov	rsi, r13
	mov	rdx, r12
	mov	rbp, rbp
	mov	rbp, rcx
	call	check_node_accept_bytes
	cmp	eax, 2
	jl	.label_1353
	mov	rsp, rsp
	mov	rcx, qword ptr [r14 + 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + r13*8]
	movsxd	rbx, eax
	nop	
	add	rbx, rbp
	nop	
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbx*8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x38], 0
	test	rsi, rsi
	lea	rsi, [rsi]
	lea	rbp, [rsp + 0x30]
	je	.label_1355
	add	rsi, 8
	mov	rdi, rbp
	mov	r12, rcx
	lea	rsi, [rsi]
	call	re_node_set_merge
	nop	
	mov	rcx, r12
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x54], eax
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_1359
.label_1355:
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	re_node_set_insert
	test	al, al
	nop	
	je	.label_1354
	mov	rbp, rbp
	lea	rdi, [rsp + 0x54]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	call	re_acquire_state
	mov	rsp, rsp
	mov	r12, qword ptr [rsp + 0x10]
	mov	rcx, qword ptr [r12 + 0xb8]
	mov	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0xb8]
	mov	rbp, rbp
	cmp	qword ptr [rax + rbx*8], 0
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_1350
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
	test	eax, eax
	mov	rsp, rsp
	je	.label_1350
	jmp	.label_1359
	nop	
.label_1353:
	lea	rdi, [rdi]
	test	eax, eax
	nop	
	mov	rcx, rbp
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	jne	.label_1350
	nop	word ptr cs:[rax + rax]
.label_1352:
	add	rbx, qword ptr [r14]
	mov	rdi, r12
	nop	
	mov	rsi, rbx
	mov	rdx, rcx
	mov	rbx, rcx
	mov	rsp, rsp
	call	check_node_accept
	lea	rdi, [rdi]
	mov	rcx, rbx
	test	al, al
	je	.label_1358
.label_1350:
	mov	rax, qword ptr [r14 + 0x18]
	mov	rsi, qword ptr [rax + r13*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rbx, rcx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rcx, rbx
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1354
.label_1358:
	inc	r15
	mov	rsp, rsp
	cmp	r15, qword ptr [rbp + 8]
	jl	.label_1357
.label_1356:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	xor	eax, eax
	jmp	.label_1351
.label_1354:
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	lea	rsi, [rsi]
	mov	eax, 0xc
	jmp	.label_1351
.label_1359:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x54]
.label_1351:
	add	rsp, 0x58
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x413e90

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rbp, rbp
	mov	r15d, r8d
	lea	rdi, [rdi]
	mov	r14, rcx
	mov	rbp, rbp
	mov	rbx, rdx
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rbp, rdi
	nop	
	jmp	.label_1364
	nop	
.label_1365:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	nop	
	mov	rbx, qword ptr [rax]
.label_1364:
	mov	rdi, r12
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1360
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp]
	mov	rcx, rbx
	mov	rbp, rbp
	shl	rcx, 4
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx + 8]
	cmp	edx, r15d
	mov	rbp, rbp
	jne	.label_1361
	nop	
	cmp	qword ptr [rax + rcx], r14
	lea	rdi, [rdi]
	je	.label_1362
.label_1361:
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	mov	rbp, rbp
	test	cl, cl
	je	.label_1363
	mov	rax, qword ptr [rbp + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rbx + rbx*2]
	mov	rcx, qword ptr [rax + rbx*8 + 8]
	lea	rdi, [rdi]
	cmp	rcx, 2
	lea	rdi, [rdi]
	je	.label_1366
	test	rcx, rcx
	mov	rsp, rsp
	jne	.label_1365
	jmp	.label_1360
	nop	dword ptr [rax]
.label_1366:
	mov	rax, qword ptr [rax + rbx*8 + 0x10]
	mov	rdx, qword ptr [rax + 8]
	nop	
	mov	rdi, rbp
	mov	rsp, rsp
	mov	rsi, r12
	mov	rcx, r14
	mov	r8d, r15d
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl_sub
	nop	
	test	eax, eax
	je	.label_1365
	jmp	.label_1363
.label_1362:
	cmp	r15d, 9
	mov	rsp, rsp
	jne	.label_1360
	mov	rdi, r12
	lea	rdi, [rdi]
	mov	rsi, rbx
	mov	rsp, rsp
	call	re_node_set_insert
	mov	cl, al
	mov	rbp, rbp
	mov	eax, 0xc
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	je	.label_1363
.label_1360:
	lea	rsi, [rsi]
	xor	eax, eax
.label_1363:
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x413fe0

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdx
	mov	rbx, rsi
	nop	
	cmp	qword ptr [r12 + 8], 0
	lea	rdi, [rdi]
	je	.label_1367
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	xor	esi, esi
	mov	rdi, r12
	call	calc_state_hash
	mov	r13, rax
	mov	rax, qword ptr [rbx + 0x40]
	mov	rcx, r13
	and	rcx, qword ptr [rbx + 0x88]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rbx
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8], 0
	nop	
	jle	.label_1373
	lea	rbp, [rax + rcx*8]
	mov	r14, qword ptr [rax + rcx*8 + 0x10]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1372:
	mov	rsp, rsp
	mov	rbx, qword ptr [r14 + r15*8]
	cmp	r13, qword ptr [rbx]
	lea	rsi, [rsi]
	jne	.label_1370
	lea	rdi, [rdi]
	lea	rdi, [rbx + 8]
	nop	
	mov	rsi, r12
	nop	
	call	re_node_set_compare
	nop	
	test	al, al
	nop	
	jne	.label_1369
.label_1370:
	nop	
	inc	r15
	cmp	r15, qword ptr [rbp]
	jl	.label_1372
.label_1373:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	nop	
	mov	rdx, r13
	lea	rdi, [rdi]
	call	create_ci_newstate
	mov	rbp, rbp
	mov	rbx, rax
	nop	
	test	rbx, rbx
	je	.label_1371
.label_1369:
	mov	rbp, rbp
	mov	rax, rbx
	lea	rsi, [rsi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
.label_1367:
	mov	rbp, rbp
	mov	dword ptr [rdi], 0
	jmp	.label_1368
.label_1371:
	mov	rax, qword ptr [rsp + 8]
	mov	dword ptr [rax], 0xc
.label_1368:
	lea	rsi, [rsi]
	xor	ebx, ebx
	jmp	.label_1369
	nop	
	.section	.text
	.align	16
	#Procedure 0x4140e0

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	push	r15
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rbx, rdx
	mov	rbp, rbp
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r15, rdi
	mov	edi, 0x70
	mov	esi, 1
	nop	
	call	rpl_calloc
	mov	r12, rax
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	test	r12, r12
	je	.label_1379
	lea	rsi, [rsi]
	mov	r13, r12
	add	r13, 8
	mov	rdi, r13
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1383
	mov	rdx, rbx
	mov	qword ptr [r12 + 0x50], r13
	lea	rsi, [rsi]
	cmp	qword ptr [r14 + 8], 0
	lea	rdi, [rdi]
	jle	.label_1376
	xor	eax, eax
	nop	
.label_1375:
	mov	rbp, rbp
	mov	r8, qword ptr [r15]
	mov	rbp, rbp
	mov	rcx, qword ptr [r14 + 0x10]
	mov	rbp, qword ptr [rcx + rax*8]
	shl	rbp, 4
	mov	edi, dword ptr [r8 + rbp + 8]
	mov	esi, edi
	and	esi, 0x3ffff
	cmp	esi, 1
	je	.label_1374
	mov	rbp, rbp
	movzx	esi, dil
	shr	edi, 0x14
	mov	rbp, rbp
	mov	cl, byte ptr [r12 + 0x68]
	mov	bl, cl
	shr	bl, 5
	movzx	ebx, bl
	nop	
	or	ebx, edi
	shl	bl, 5
	and	bl, 0x20
	mov	rsp, rsp
	and	cl, 0xdf
	lea	rsi, [rsi]
	or	cl, bl
	mov	rbp, rbp
	mov	byte ptr [r12 + 0x68], cl
	lea	rdi, [rdi]
	cmp	esi, 0xc
	je	.label_1382
	cmp	esi, 4
	je	.label_1377
	lea	rsi, [rsi]
	cmp	esi, 2
	nop	
	jne	.label_1378
	or	cl, 0x10
	lea	rsi, [rsi]
	mov	byte ptr [r12 + 0x68], cl
	nop	
	jmp	.label_1374
.label_1377:
	or	cl, 0x40
	nop	
	mov	byte ptr [r12 + 0x68], cl
	jmp	.label_1374
.label_1378:
	lea	rcx, [r8 + rbp + 8]
	test	dword ptr [rcx], 0x3ff00
	je	.label_1374
.label_1382:
	lea	rsi, [rsi]
	or	byte ptr [r12 + 0x68], 0x80
.label_1374:
	lea	rdi, [rdi]
	inc	rax
	nop	
	cmp	rax, qword ptr [r14 + 8]
	mov	rbp, rbp
	jl	.label_1375
.label_1376:
	mov	rdi, r15
	mov	rsi, r12
	mov	rbp, rbp
	call	register_state
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r12
	mov	rsp, rsp
	jne	.label_1381
.label_1379:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_1383:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	call	free
	jmp	.label_1380
.label_1381:
	mov	rsp, rsp
	mov	rdi, r12
	call	free_state
.label_1380:
	xor	eax, eax
	jmp	.label_1379
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414270

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r12, rcx
	lea	rdi, [rdi]
	mov	r13, rdx
	mov	rbp, rsi
	mov	rsp, rsp
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	shl	rbp, 4
	lea	rdi, [rdi]
	movzx	r15d, byte ptr [r14 + rbp + 8]
	cmp	r15d, 7
	nop	
	je	.label_1409
	mov	rsp, rsp
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_string_char_size_at
	mov	rbp, rbp
	mov	esi, eax
	cmp	r15d, 5
	jne	.label_1399
	xor	eax, eax
	mov	rbp, rbp
	cmp	esi, 2
	jl	.label_1387
	test	byte ptr [rbx + 0xd8], 0x40
	lea	rdi, [rdi]
	jne	.label_1398
	mov	rcx, qword ptr [r13 + 8]
	movzx	ecx, byte ptr [rcx + r12]
	cmp	ecx, 0xa
	je	.label_1387
.label_1398:
	cmp	byte ptr [rbx + 0xd8], 0
	lea	rsi, [rsi]
	js	.label_1412
	mov	eax, esi
	jmp	.label_1387
.label_1399:
	mov	rsp, rsp
	cmp	esi, 1
	setg	cl
	nop	
	xor	eax, eax
	nop	
	cmp	r15d, 6
	jne	.label_1387
	test	cl, cl
	je	.label_1387
	mov	rbp, qword ptr [r14 + rbp]
	mov	rsp, rsp
	cmp	qword ptr [rbp + 0x40], 0
	jne	.label_1396
	mov	rbp, rbp
	cmp	qword ptr [rbp + 0x48], 0
	jne	.label_1396
	xor	r14d, r14d
	lea	rsi, [rsi]
	cmp	qword ptr [rbp + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1401
.label_1396:
	mov	rdi, r13
	mov	ebx, esi
	nop	
	mov	rsi, r12
	lea	rdi, [rdi]
	call	re_string_wchar_at
	mov	esi, ebx
	mov	rbp, rbp
	mov	r14d, eax
.label_1401:
	cmp	qword ptr [rbp + 0x28], 0
	jle	.label_1410
	mov	rax, qword ptr [rbp]
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_1392:
	cmp	r14d, dword ptr [rax + rcx*4]
	je	.label_1388
	inc	rcx
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp + 0x28]
	nop	
	jl	.label_1392
.label_1410:
	mov	r15d, esi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp + 0x48], 0
	jle	.label_1394
	xor	ebx, ebx
	nop	word ptr cs:[rax + rax]
.label_1404:
	mov	rax, qword ptr [rbp + 0x18]
	mov	rsi, qword ptr [rax + rbx*8]
	nop	
	mov	edi, r14d
	nop	
	call	iswctype
	test	eax, eax
	jne	.label_1408
	mov	rbp, rbp
	inc	rbx
	cmp	rbx, qword ptr [rbp + 0x48]
	nop	
	jl	.label_1404
.label_1394:
	xor	ecx, ecx
	cmp	qword ptr [rbp + 0x40], 0
	mov	rbp, rbp
	mov	esi, r15d
	lea	rdi, [rdi]
	jle	.label_1397
	mov	rax, qword ptr [rbp + 8]
	lea	rdi, [rdi]
	xor	edx, edx
	nop	word ptr cs:[rax + rax]
.label_1403:
	nop	
	cmp	dword ptr [rax + rdx*4], r14d
	jg	.label_1406
	mov	rcx, qword ptr [rbp + 0x10]
	cmp	r14d, dword ptr [rcx + rdx*4]
	lea	rdi, [rdi]
	jle	.label_1390
.label_1406:
	nop	
	inc	rdx
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rbp + 0x40]
	mov	rbp, rbp
	jl	.label_1403
	lea	rsi, [rsi]
	jmp	.label_1397
.label_1412:
	mov	rcx, qword ptr [r13 + 8]
	lea	rdi, [rdi]
	cmp	byte ptr [rcx + r12], 0
	lea	rdi, [rdi]
	je	.label_1387
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	jmp	.label_1387
.label_1409:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r13 + 8]
	mov	rbp, rbp
	movzx	edx, byte ptr [rsi + r12]
	xor	eax, eax
	cmp	edx, 0xc2
	jb	.label_1387
	lea	rsi, [rsi]
	lea	rcx, [r12 + 2]
	cmp	rcx, qword ptr [r13 + 0x58]
	jle	.label_1407
	xor	eax, eax
	jmp	.label_1387
.label_1408:
	mov	esi, r15d
.label_1388:
	mov	rbp, rbp
	mov	ecx, esi
.label_1397:
	test	byte ptr [rbp + 0x20], 1
	jne	.label_1386
	mov	rsp, rsp
	mov	eax, ecx
	jmp	.label_1387
.label_1386:
	mov	rbp, rbp
	test	ecx, ecx
	mov	rbp, rbp
	mov	eax, 0
	jg	.label_1387
	mov	rbp, rbp
	test	esi, esi
	nop	
	mov	eax, 1
	cmovg	eax, esi
.label_1387:
	lea	rsi, [rsi]
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1390:
	mov	ecx, esi
	lea	rdi, [rdi]
	jmp	.label_1397
.label_1407:
	mov	rsp, rsp
	mov	cl, byte ptr [r12 + rsi + 1]
	nop	
	movzx	edx, dl
	cmp	edx, 0xdf
	nop	
	ja	.label_1402
	mov	rbp, rbp
	movzx	eax, cl
	cmp	eax, 0xc0
	sbb	edx, edx
	and	edx, 2
	lea	rsi, [rsi]
	test	cl, cl
	mov	rsp, rsp
	mov	eax, 0
	mov	rsp, rsp
	cmovs	eax, edx
	lea	rsi, [rsi]
	jmp	.label_1387
.label_1402:
	lea	rdi, [rdi]
	cmp	edx, 0xef
	ja	.label_1389
	mov	rbp, rbp
	mov	eax, 3
	cmp	edx, 0xe0
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0xa0
	jae	.label_1384
	nop	
	xor	eax, eax
	jmp	.label_1387
.label_1389:
	lea	rdi, [rdi]
	cmp	edx, 0xf7
	ja	.label_1400
	lea	rsi, [rsi]
	mov	eax, 4
	cmp	edx, 0xf0
	mov	rsp, rsp
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0x90
	nop	
	jae	.label_1384
	xor	eax, eax
	jmp	.label_1387
.label_1400:
	cmp	edx, 0xfb
	mov	rsp, rsp
	ja	.label_1411
	mov	rsp, rsp
	mov	eax, 5
	lea	rdi, [rdi]
	cmp	edx, 0xf8
	jne	.label_1384
	mov	rsp, rsp
	movzx	ecx, cl
	cmp	ecx, 0x88
	nop	
	jae	.label_1384
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1387
.label_1411:
	cmp	edx, 0xfd
	ja	.label_1395
	lea	rdi, [rdi]
	mov	eax, 6
	mov	rsp, rsp
	cmp	edx, 0xfc
	jne	.label_1384
	movzx	ecx, cl
	cmp	ecx, 0x84
	jae	.label_1384
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1387
.label_1384:
	mov	ecx, eax
	mov	rbp, rbp
	lea	rdx, [rcx + r12]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [r13 + 0x58]
	mov	rbp, rbp
	jle	.label_1405
	xor	eax, eax
	nop	
	jmp	.label_1387
.label_1405:
	nop	
	add	r12, qword ptr [r13 + 8]
	mov	rbp, rbp
	mov	edx, 1
.label_1393:
	nop	
	mov	bl, byte ptr [r12 + rdx]
	mov	rsp, rsp
	test	bl, bl
	lea	rsi, [rsi]
	jns	.label_1385
	movzx	esi, bl
	cmp	esi, 0xbf
	ja	.label_1391
	mov	rsp, rsp
	inc	rdx
	cmp	rdx, rcx
	mov	rsp, rsp
	jl	.label_1393
	jmp	.label_1387
.label_1395:
	xor	eax, eax
	jmp	.label_1387
.label_1385:
	xor	eax, eax
	jmp	.label_1387
.label_1391:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1387
	nop	
	.section	.text
	.align	16
	#Procedure 0x414650

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	r14, rdx
	mov	rbp, rbp
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r15, rdi
	nop	
	mov	rax, qword ptr [r15 + 8]
	movzx	esi, byte ptr [rax + r14]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rbx + 8]
	lea	rdi, [rdi]
	xor	eax, eax
	dec	ecx
	cmp	ecx, 6
	ja	.label_1413
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_1415]]
.label_1773:
	movzx	eax, byte ptr [rbx]
	cmp	eax, esi
	nop	
	je	.label_1417
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1413
.label_1774:
	mov	rdi, qword ptr [rbx]
	call	bitset_contain
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	jne	.label_1417
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_1413
.label_1776:
	test	sil, sil
	js	.label_1416
.label_1775:
	lea	rsi, [rsi]
	test	sil, sil
	je	.label_1418
	nop	
	movzx	eax, sil
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rsp, rsp
	jne	.label_1417
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x98]
	test	byte ptr [rax + 0xd8], 0x40
	mov	rsp, rsp
	jne	.label_1417
	xor	eax, eax
	jmp	.label_1413
.label_1418:
	mov	rax, qword ptr [r15 + 0x98]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0xd8], 0
	js	.label_1419
.label_1417:
	mov	rsp, rsp
	mov	ecx, dword ptr [rbx + 8]
	mov	ebx, ecx
	lea	rsi, [rsi]
	shr	ebx, 8
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	bx, 0x3ff
	mov	rbp, rbp
	je	.label_1413
	mov	ebp, ecx
	mov	rsp, rsp
	mov	edx, dword ptr [r15 + 0xa0]
	nop	
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	rsp, rsp
	mov	ecx, eax
	mov	rsp, rsp
	and	ecx, 1
	test	bl, 4
	je	.label_1420
	mov	rsp, rsp
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_1420
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1413
.label_1420:
	lea	rdi, [rdi]
	mov	edx, ebp
	mov	rsp, rsp
	test	dh, 8
	je	.label_1414
	test	ecx, ecx
	nop	
	je	.label_1414
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1413
.label_1416:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1413
.label_1414:
	lea	rdi, [rdi]
	test	dh, 0x20
	mov	rbp, rbp
	je	.label_1421
	mov	ecx, eax
	and	ecx, 2
	lea	rsi, [rsi]
	jne	.label_1421
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	jmp	.label_1413
.label_1419:
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_1413
.label_1421:
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	test	bl, bl
	setns	cl
	shr	eax, 3
	or	al, cl
.label_1413:
	add	rsp, 8
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	mov	rbp, rbp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414800
	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:

	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414810

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	r15, rdi
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	qword ptr [r12 + 0x10], 0
	lea	rsi, [rsi]
	jle	.label_1426
	mov	rax, qword ptr [r15 + 0x98]
	mov	qword ptr [rsp + 8], rax
	xor	r13d, r13d
	nop	
.label_1430:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, r14
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	ebx, dword ptr [rax + rcx + 8]
	test	ebx, 0x100000
	lea	rdi, [rdi]
	je	.label_1422
	mov	ebp, ebx
	mov	rbp, rbp
	shr	ebp, 8
	test	bp, 0x3ff
	je	.label_1424
	mov	rsi, qword ptr [r15 + 0x48]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsp, rsp
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	ecx, eax
	and	ecx, 1
	test	bpl, 4
	lea	rdi, [rdi]
	je	.label_1429
	test	ecx, ecx
	nop	
	je	.label_1422
.label_1429:
	test	bh, 8
	je	.label_1425
	test	ecx, ecx
	mov	rsp, rsp
	jne	.label_1422
.label_1425:
	lea	rdi, [rdi]
	test	bh, 0x20
	je	.label_1427
	mov	ecx, eax
	and	ecx, 2
	mov	rsp, rsp
	je	.label_1422
.label_1427:
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rsp, rsp
	jns	.label_1424
	and	eax, 8
	je	.label_1422
	nop	word ptr cs:[rax + rax]
.label_1424:
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r15 + 0x48]
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, r14
	mov	rdx, r15
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	test	eax, eax
	mov	rsp, rsp
	je	.label_1422
	mov	rbp, r12
	lea	rdi, [rdi]
	movsxd	r12, eax
	add	r12, qword ptr [r15 + 0x48]
	nop	
	mov	ecx, dword ptr [r15 + 0xe0]
	lea	rsi, [rsi]
	cmp	ecx, eax
	mov	rbp, rbp
	cmovl	ecx, eax
	lea	rsi, [rsi]
	mov	dword ptr [r15 + 0xe0], ecx
	mov	rdi, r15
	nop	
	mov	rsi, r12
	call	clean_state_log_if_needed
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x34], eax
	lea	rsi, [rsi]
	test	eax, eax
	jne	.label_1426
	mov	rcx, qword ptr [rsp + 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rax + r14*8]
	mov	rbp, rbp
	lea	rdx, [rax + rax*2]
	shl	rdx, 3
	add	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	mov	rbx, qword ptr [rax + r12*8]
	test	rbx, rbx
	je	.label_1431
	nop	
	mov	rsi, qword ptr [rbx + 0x50]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x34], eax
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_1423
	mov	rbp, rbp
	jmp	.label_1426
.label_1431:
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	movups	xmm0, xmmword ptr [rdx]
	movaps	xmmword ptr [rsp + 0x10], xmm0
.label_1423:
	lea	rdi, [rdi]
	lea	rsi, [r12 - 1]
	mov	edx, dword ptr [r15 + 0xa0]
	mov	rdi, r15
	call	re_string_context_at
	lea	rdi, [rsp + 0x34]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 8]
	lea	rdx, [rsp + 0x10]
	nop	
	mov	ecx, eax
	call	re_acquire_state_context
	test	rbx, rbx
	nop	
	mov	rcx, qword ptr [r15 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12*8], rax
	mov	rbp, rbp
	je	.label_1428
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	nop	
	call	free
.label_1428:
	mov	rax, qword ptr [r15 + 0xb8]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + r12*8], 0
	mov	r12, rbp
	mov	rsp, rsp
	jne	.label_1422
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x34]
	test	eax, eax
	jne	.label_1426
	nop	word ptr cs:[rax + rax]
.label_1422:
	inc	r13
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	r13, qword ptr [r12 + 0x10]
	lea	rsi, [rsi]
	jl	.label_1430
.label_1426:
	mov	rbp, rbp
	add	rsp, 0x38
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x414ab0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	mov	edi, 0x3800
	call	malloc
	mov	r15, rax
	mov	qword ptr [rbp - 0x80], r15
	test	r15, r15
	mov	rbp, rbp
	je	.label_1470
	lea	rsi, [rsi]
	lea	rcx, [r15 + 0x1800]
	mov	qword ptr [rbp - 0x90], rcx
	lea	r13, [rbx + 0x58]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x58], xmm0
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	nop	
	mov	qword ptr [rbp - 0xb8], rbx
	lea	rsi, [rsi]
	mov	rdx, r15
	call	group_nodes_into_DFAstates
	mov	r12, rax
	test	r12, r12
	jle	.label_1443
	lea	rsi, [r12 + 1]
	mov	rsp, rsp
	lea	rdi, [rbp - 0x48]
	mov	rsp, rsp
	call	re_node_set_alloc
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	movabs	rcx, 0xaaaaaaaaaaaa855
	cmp	r12, rcx
	ja	.label_1439
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1439
	nop	
	lea	rax, [r12*8]
	mov	rbp, rbp
	lea	rdi, [rax + rax*2]
	lea	rax, [rax + rax*2 + 0x3800]
	mov	rsp, rsp
	cmp	rax, 0xfbf
	mov	rsp, rsp
	ja	.label_1455
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	mov	rax, rsp
	mov	rbp, rbp
	add	rdi, 0xf
	mov	rbp, rbp
	and	rdi, 0xfffffffffffffff0
	lea	rdi, [rdi]
	sub	rax, rdi
	mov	rsp, rax
	mov	dword ptr [rbp - 0xa4], 0
	jmp	.label_1458
.label_1455:
	call	malloc
	test	rax, rax
	je	.label_1439
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], r13
	nop	
	mov	cl, 1
	mov	dword ptr [rbp - 0xa4], ecx
.label_1458:
	mov	qword ptr [rbp - 0x88], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0x98], rax
	lea	rax, [rax + r12*8]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	xor	r13d, r13d
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_1442:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], r13
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	lea	rax, [r13 + r13*2]
	cmp	qword ptr [r15 + rax*8 + 8], 0
	nop	
	mov	rbx, r14
	jle	.label_1436
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	lea	r14, [rcx + rax*8 + 8]
	lea	rdi, [rdi]
	mov	r13, qword ptr [rcx + rax*8 + 0x10]
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1463:
	mov	rax, qword ptr [r13 + r15*8]
	mov	rcx, qword ptr [rbx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	cmp	rax, -1
	nop	
	je	.label_1451
	mov	rbp, rbp
	mov	rcx, qword ptr [rbx + 0x30]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rsi, [rcx + rax*8]
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rsi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x2c], eax
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_1434
.label_1451:
	lea	rdi, [rdi]
	inc	r15
	cmp	r15, qword ptr [r14]
	lea	rsi, [rsi]
	jl	.label_1463
.label_1436:
	xor	ecx, ecx
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	test	rax, rax
	jne	.label_1466
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	mov	rbp, rbp
	jne	.label_1434
.label_1466:
	lea	rdi, [rdi]
	cmp	byte ptr [rax + 0x68], 0
	mov	rsp, rsp
	js	.label_1433
	nop	
	mov	rcx, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rcx + rdx*8], rax
	nop	
	mov	r13, rdx
	jmp	.label_1437
	nop	dword ptr [rax]
.label_1433:
	lea	rsi, [rsi]
	mov	ecx, 1
	lea	rdi, [rbp - 0x2c]
	mov	rbp, rbp
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	rbx, rsi
	call	re_acquire_state_context
	mov	rsi, rbx
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rcx + rdx*8], rax
	mov	rbp, rbp
	test	rax, rax
	jne	.label_1450
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	test	ecx, ecx
	jne	.label_1434
.label_1450:
	mov	rcx, qword ptr [rbp - 0x88]
	mov	rbx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + rbx*8], rax
	mov	rbp, rbp
	je	.label_1457
	mov	rsp, rsp
	mov	al, 1
	nop	
	cmp	dword ptr [rsi + 0xb4], 1
	jg	.label_1460
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
.label_1460:
	mov	qword ptr [rbp - 0xb0], rax
.label_1457:
	lea	rdi, [rdi]
	mov	ecx, 2
	lea	rdi, [rbp - 0x2c]
	mov	r14, rsi
	lea	rdx, [rbp - 0x48]
	call	re_acquire_state_context
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	qword ptr [rcx + rbx*8], rax
	lea	rdi, [rdi]
	mov	r13, rbx
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1469
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	test	eax, eax
	lea	rsi, [rsi]
	mov	rsi, r14
	je	.label_1437
	jmp	.label_1434
.label_1469:
	mov	rsi, r14
.label_1437:
	mov	r14, rsi
	mov	rsi, r13
	shl	rsi, 5
	mov	rbx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rsi, rbx
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_merge
	lea	rdi, [rdi]
	inc	r13
	cmp	r13, r12
	mov	r15, qword ptr [rbp - 0x80]
	jl	.label_1442
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	jne	.label_1446
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	nop	
	mov	esi, 0x100
	lea	rsi, [rsi]
	call	rpl_calloc
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rax], r15
	mov	rbp, rbp
	test	r15, r15
	mov	r11, r14
	mov	rsp, rsp
	je	.label_1434
	nop	
	mov	r13, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	lea	r10, [r13 - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	lea	rbx, [rax + 0x1800]
	xor	r8d, r8d
	nop	
	xor	r9d, r9d
	nop	
.label_1444:
	mov	rdi, qword ptr [rbp + r9*8 - 0x70]
	mov	rbp, rbp
	test	rdi, rdi
	lea	rsi, [rsi]
	je	.label_1464
	lea	rsi, [rsi]
	mov	rdx, r8
	mov	rsp, rsp
	mov	esi, 1
	jmp	.label_1440
.label_1438:
	mov	rsp, rsp
	add	rax, 8
	test	qword ptr [rcx], rsi
	nop	
	lea	rcx, [rcx + 0x20]
	lea	rdi, [rdi]
	je	.label_1438
	test	qword ptr [r11 + r9*8 + 0xb8], rsi
	mov	rsp, rsp
	je	.label_1471
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + r12*8]
	nop	
	jmp	.label_1435
.label_1471:
	mov	rax, qword ptr [rax]
.label_1435:
	mov	qword ptr [r15 + rdx*8], rax
	jmp	.label_1449
	nop	word ptr cs:[rax + rax]
.label_1440:
	test	dil, 1
	mov	rcx, rbx
	mov	rax, r10
	jne	.label_1438
.label_1449:
	add	rsi, rsi
	nop	
	shr	rdi, 1
	inc	rdx
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	jne	.label_1440
.label_1464:
	inc	r9
	mov	rbp, rbp
	add	r8, 0x40
	lea	rdi, [rdi]
	add	rbx, 8
	mov	rsp, rsp
	cmp	r9, 4
	lea	rdi, [rdi]
	jne	.label_1444
.label_1445:
	mov	rsp, rsp
	mov	r14, r15
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	call	bitset_contain
	nop	
	test	al, al
	je	.label_1448
	test	r12, r12
	jle	.label_1448
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	lea	r15, [rax + 0x1800]
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1462:
	mov	esi, 0xa
	mov	rdi, r15
	nop	
	call	bitset_contain
	test	al, al
	jne	.label_1461
	nop	
	inc	rbx
	add	r15, 0x20
	cmp	rbx, r12
	jl	.label_1462
	nop	
	jmp	.label_1448
.label_1470:
	lea	rsi, [rsi]
	xor	eax, eax
	jmp	.label_1432
.label_1443:
	mov	rdi, r15
	lea	rsi, [rsi]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	je	.label_1467
	mov	rsp, rsp
	xor	eax, eax
	jmp	.label_1432
.label_1467:
	mov	edi, 8
	lea	rsi, [rsi]
	mov	esi, 0x100
	mov	rbp, rbp
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	setne	al
	jmp	.label_1432
.label_1461:
	lea	rdi, [rdi]
	mov	rax, r12
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, r13
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb0]
	test	cl, cl
	mov	rcx, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x50], rcx
	mov	rbp, rbp
	je	.label_1448
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + rbx*8]
	mov	qword ptr [r14 + 0x850], rax
.label_1448:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	test	al, al
	lea	rdi, [rdi]
	je	.label_1447
	mov	rdi, r13
	call	free
.label_1447:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free
	nop	
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1452
	mov	rbx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rbx, 0x10
	nop	word ptr cs:[rax + rax]
.label_1459:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	call	free
	lea	rdi, [rdi]
	add	rbx, 0x18
	dec	r12
	jne	.label_1459
.label_1452:
	mov	rdi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	free
	mov	al, 1
	jmp	.label_1432
.label_1446:
	mov	qword ptr [rbp - 0xb0], rax
	mov	edi, 8
	mov	esi, 0x200
	call	rpl_calloc
	mov	r15, rax
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x60], r15
	nop	
	test	r15, r15
	mov	rbp, rbp
	je	.label_1434
	mov	r13, qword ptr [rbp - 0x88]
	lea	r10, [r13 - 8]
	mov	rsp, rsp
	xor	r8d, r8d
	xor	r9d, r9d
.label_1456:
	mov	rsi, qword ptr [rbp + r9*8 - 0x70]
	mov	rsp, rsp
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	rbp, rbp
	jne	.label_1454
	mov	rsp, rsp
	jmp	.label_1465
	nop	word ptr cs:[rax + rax]
.label_1441:
	add	rax, 8
	test	qword ptr [rdx], rcx
	nop	
	lea	rdx, [rdx + 0x20]
	je	.label_1441
	nop	
	mov	rdx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [r15 + rdi*8], rdx
	mov	rax, qword ptr [rax + r12*8]
	mov	qword ptr [r15 + rdi*8 + 0x800], rax
	nop	
	jmp	.label_1453
	nop	dword ptr [rax + rax]
.label_1454:
	lea	rdi, [rdi]
	test	sil, 1
	nop	
	mov	rdx, rbx
	lea	rdi, [rdi]
	mov	rax, r10
	lea	rsi, [rsi]
	jne	.label_1441
.label_1453:
	lea	rsi, [rsi]
	add	rcx, rcx
	mov	rbp, rbp
	shr	rsi, 1
	inc	rdi
	mov	rbp, rbp
	test	rsi, rsi
	lea	rdi, [rdi]
	jne	.label_1454
.label_1465:
	inc	r9
	lea	rsi, [rsi]
	add	r8, 0x40
	add	rbx, 8
	cmp	r9, 4
	jne	.label_1456
	mov	rsp, rsp
	jmp	.label_1445
.label_1434:
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	test	al, al
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x88]
	mov	r15, qword ptr [rbp - 0x80]
	nop	
	je	.label_1439
	call	free
.label_1439:
	mov	r14, r15
	mov	rdi, qword ptr [rbp - 0x38]
	call	free
	test	r12, r12
	lea	rdi, [rdi]
	jle	.label_1468
	mov	rbp, rbp
	mov	rbx, r14
	add	rbx, 0x10
	nop	dword ptr [rax]
.label_1472:
	mov	rdi, qword ptr [rbx]
	mov	rsp, rsp
	call	free
	add	rbx, 0x18
	mov	rbp, rbp
	dec	r12
	nop	
	jne	.label_1472
.label_1468:
	mov	rsp, rsp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	free
	mov	rsp, rsp
	xor	eax, eax
.label_1432:
	lea	rdi, [rdi]
	lea	rsp, [rbp - 0x28]
	pop	rbx
	mov	rsp, rsp
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415240

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rsp, rsp
	push	r13
	lea	rdi, [rdi]
	push	r12
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0xa8
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rcx
	lea	rdi, [rdi]
	mov	r14, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	qword ptr [rsp + 0x20], rbx
	nop	
	mov	rbp, rdi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	call	bitset_empty
	mov	r8, rbp
	xor	r15d, r15d
	cmp	qword ptr [rbx + 0x10], 0
	mov	rbp, rbp
	jle	.label_1490
	lea	rdi, [rdi]
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1486:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x28], rbp
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbx, qword ptr [rax + rbp*8]
	mov	rbp, rbp
	mov	r12, qword ptr [r8]
	shl	rbx, 4
	lea	rax, [r12 + rbx]
	mov	r13d, dword ptr [r12 + rbx + 8]
	lea	rdi, [rdi]
	movzx	ebp, r13b
	mov	dword ptr [rsp + 0x3c], ebp
	cmp	ebp, 1
	jne	.label_1502
	nop	
	movzx	esi, byte ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_set
	jmp	.label_1478
	nop	word ptr cs:[rax + rax]
.label_1502:
	cmp	ebp, 7
	je	.label_1479
	nop	
	cmp	ebp, 5
	je	.label_1481
	cmp	ebp, 3
	lea	rsi, [rsi]
	jne	.label_1480
	mov	rbp, rbp
	mov	rsi, qword ptr [rax]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	call	bitset_merge
	jmp	.label_1478
.label_1479:
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x88], -1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], -1
	test	byte ptr [r8 + 0xd8], 0x40
	jne	.label_1487
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rdi, [rsp + 0x80]
	nop	
	mov	rbp, r8
	lea	rsi, [rsi]
	call	bitset_clear
	mov	r8, rbp
	mov	rsp, rsp
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1487:
	mov	rsp, rsp
	cmp	byte ptr [r8 + 0xd8], 0
	mov	qword ptr [rsp + 0x10], r8
	jns	.label_1478
	mov	rbp, rbp
	jmp	.label_1501
.label_1481:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	lea	rsi, [rsi]
	cmp	dword ptr [r8 + 0xb4], 2
	jl	.label_1504
	mov	rsi, qword ptr [r8 + 0x78]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_merge
	jmp	.label_1505
.label_1504:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rbp, r8
	call	bitset_set_all
.label_1505:
	test	byte ptr [rbp + 0xd8], 0x40
	mov	rax, rbp
	jne	.label_1477
	mov	esi, 0xa
	lea	rdi, [rsp + 0x80]
	mov	rbp, rax
	lea	rsi, [rsi]
	call	bitset_clear
	mov	rsp, rsp
	mov	rax, rbp
.label_1477:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rax
	mov	rsp, rsp
	cmp	byte ptr [rax + 0xd8], 0
	mov	ebp, dword ptr [rsp + 0x3c]
	mov	rbp, rbp
	jns	.label_1478
.label_1501:
	xor	esi, esi
	lea	rdi, [rsp + 0x80]
	lea	rdi, [rdi]
	call	bitset_clear
	nop	word ptr cs:[rax + rax]
.label_1478:
	shr	r13d, 8
	nop	
	mov	eax, r13d
	and	eax, 0x3ff
	je	.label_1499
	test	r13b, 0x20
	mov	rbp, rbp
	je	.label_1495
	nop	
	mov	dword ptr [rsp + 0x3c], ebp
	mov	esi, 0xa
	mov	rbp, rbp
	lea	rbp, [rsp + 0x80]
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsp, rsp
	call	bitset_contain
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 8], al
	mov	rdi, rbp
	call	bitset_empty
	cmp	byte ptr [rsp + 8], 0
	je	.label_1498
	mov	rbp, rbp
	mov	esi, 0xa
	mov	rdi, rbp
	mov	rbp, rbp
	call	bitset_set
	mov	ebp, dword ptr [rsp + 0x3c]
.label_1495:
	test	r13b, r13b
	js	.label_1506
	lea	rax, [r12 + rbx + 8]
	test	r13b, 4
	mov	rbp, rbp
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	je	.label_1507
	cmp	ebp, 1
	lea	rdi, [rsp + 0x80]
	lea	rsi, [rsi]
	jne	.label_1473
	test	byte ptr [rax + 2], 0x40
	jne	.label_1473
	mov	rbp, rbp
	mov	rbp, r8
	call	bitset_empty
	lea	rsi, [rsi]
	mov	r8, rbp
	jmp	.label_1480
.label_1473:
	cmp	dword ptr [r8 + 0xb4], 2
	lea	rsi, [rsi]
	mov	ecx, 0
	mov	rbp, rbp
	mov	edx, 0
	jl	.label_1483
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r8 + 0x78]
	lea	rsi, [rsi]
	xor	ecx, ecx
	xor	esi, esi
	nop	word ptr cs:[rax + rax]
.label_1488:
	mov	rdi, qword ptr [rdx + rsi*8]
	not	rdi
	or	rdi, qword ptr [r8 + rsi*8 + 0xb8]
	and	rdi, qword ptr [rsp + rsi*8 + 0x80]
	mov	qword ptr [rsp + rsi*8 + 0x80], rdi
	or	rcx, rdi
	nop	
	inc	rsi
	lea	rsi, [rsi]
	cmp	rsi, 4
	mov	rbp, rbp
	jne	.label_1488
	mov	rbp, rbp
	jmp	.label_1492
	nop	word ptr [rax + rax]
.label_1483:
	nop	
	mov	rsi, qword ptr [rsp + rdx*8 + 0x80]
	lea	rsi, [rsi]
	and	rsi, qword ptr [r8 + rdx*8 + 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rcx, rsi
	lea	rdi, [rdi]
	inc	rdx
	lea	rdi, [rdi]
	cmp	rdx, 4
	lea	rdi, [rdi]
	jne	.label_1483
.label_1492:
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_1480
.label_1507:
	mov	rsp, rsp
	test	r13b, 8
	nop	
	je	.label_1499
	lea	rsi, [rsi]
	cmp	ebp, 1
	jne	.label_1508
	test	byte ptr [rax + 2], 0x40
	jne	.label_1506
.label_1508:
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	cmp	dword ptr [rdi + 0xb4], 2
	mov	eax, 0
	mov	ecx, 0
	jl	.label_1474
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 0x78]
	mov	rsp, rsp
	xor	eax, eax
	xor	edx, edx
	nop	dword ptr [rax]
.label_1476:
	mov	rsi, qword ptr [rcx + rdx*8]
	and	rsi, qword ptr [rdi + rdx*8 + 0xb8]
	nop	
	not	rsi
	mov	rsp, rsp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	nop	
	mov	qword ptr [rsp + rdx*8 + 0x80], rsi
	lea	rdi, [rdi]
	or	rax, rsi
	inc	rdx
	nop	
	cmp	rdx, 4
	jne	.label_1476
	jmp	.label_1489
	nop	word ptr cs:[rax + rax]
.label_1474:
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi + rcx*8 + 0xb8]
	not	rdx
	lea	rsi, [rsi]
	and	rdx, qword ptr [rsp + rcx*8 + 0x80]
	mov	qword ptr [rsp + rcx*8 + 0x80], rdx
	lea	rsi, [rsi]
	or	rax, rdx
	inc	rcx
	cmp	rcx, 4
	jne	.label_1474
.label_1489:
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1498
	nop	dword ptr [rax]
.label_1499:
	test	r15, r15
	jle	.label_1500
	mov	rbx, qword ptr [rsp + 0x30]
	nop	
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1493:
	cmp	ebp, 1
	mov	rcx, rbx
	nop	
	mov	eax, 0
	mov	edx, 0
	mov	rbp, rbp
	jne	.label_1484
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	movzx	esi, byte ptr [rax]
	mov	rbp, rbp
	call	bitset_contain
	nop	
	test	al, al
	mov	rcx, rbx
	lea	rdi, [rdi]
	mov	eax, 0
	mov	edx, 0
	lea	rdi, [rdi]
	je	.label_1475
	nop	word ptr cs:[rax + rax]
.label_1484:
	mov	rsi, qword ptr [rcx]
	mov	rbp, rbp
	and	rsi, qword ptr [rsp + rdx*8 + 0x80]
	mov	qword ptr [rsp + rdx*8 + 0x60], rsi
	or	rax, rsi
	inc	rdx
	add	rcx, 8
	cmp	rdx, 4
	lea	rsi, [rsi]
	jne	.label_1484
	test	rax, rax
	mov	rbp, rbp
	mov	ebp, 0
	mov	rsp, rsp
	mov	eax, 0
	mov	ecx, 0
	je	.label_1475
	nop	word ptr cs:[rax + rax]
.label_1494:
	mov	rdx, qword ptr [rsp + rcx*8 + 0x80]
	nop	
	not	rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + rcx*8]
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + rcx*8 + 0x40], rdx
	mov	rbp, rbp
	or	rax, rdx
	not	rsi
	and	rsi, qword ptr [rsp + rcx*8 + 0x80]
	mov	rbp, rbp
	mov	qword ptr [rsp + rcx*8 + 0x80], rsi
	mov	rbp, rbp
	or	rbp, rsi
	nop	
	inc	rcx
	nop	
	cmp	rcx, 4
	jne	.label_1494
	mov	rbp, rbp
	test	rax, rax
	je	.label_1503
	nop	
	mov	rdi, r15
	shl	rdi, 5
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0x30]
	add	rdi, r13
	lea	rsi, [rsp + 0x40]
	call	bitset_copy
	lea	rdi, [rdi]
	mov	rdi, r12
	shl	rdi, 5
	add	rdi, r13
	lea	rsi, [rsp + 0x60]
	mov	rbp, rbp
	call	bitset_copy
	mov	rbp, rbp
	lea	rax, [r15 + r15*2]
	lea	rsi, [rsi]
	lea	rdi, [r14 + rax*8]
	lea	rax, [r12 + r12*2]
	mov	rbp, rbp
	lea	rsi, [r14 + rax*8]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1482
	inc	r15
.label_1503:
	lea	rax, [r12 + r12*2]
	nop	
	lea	rdi, [r14 + rax*8]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rcx*8]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	test	al, al
	mov	rsp, rsp
	je	.label_1482
	lea	rsi, [rsi]
	test	rbp, rbp
	mov	rbp, rbp
	je	.label_1497
.label_1475:
	inc	r12
	add	rbx, 0x20
	cmp	r12, r15
	mov	ebp, dword ptr [rsp + 0x3c]
	lea	rdi, [rdi]
	jl	.label_1493
	jmp	.label_1497
.label_1480:
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rbp, qword ptr [rsp + 0x28]
	jmp	.label_1485
.label_1506:
	nop	
	lea	rdi, [rsp + 0x80]
	call	bitset_empty
	lea	rdi, [rdi]
	jmp	.label_1498
.label_1500:
	xor	r12d, r12d
.label_1497:
	lea	rsi, [rsi]
	cmp	r12, r15
	nop	
	jne	.label_1498
	mov	rdi, r15
	mov	rbp, rbp
	shl	rdi, 5
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x30]
	add	rdi, rax
	lea	rsi, [rsi]
	lea	r12, [rsp + 0x80]
	lea	rdi, [rdi]
	mov	rsi, r12
	mov	rsp, rsp
	call	bitset_copy
	lea	rdi, [rdi]
	lea	rax, [r15 + r15*2]
	lea	rdi, [rdi]
	lea	rdi, [r14 + rax*8]
	nop	
	mov	rbx, qword ptr [rsp + 0x20]
	nop	
	mov	rax, qword ptr [rbx + 0x18]
	mov	rbp, qword ptr [rsp + 0x28]
	mov	rsi, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	call	re_node_set_init_1
	test	eax, eax
	jne	.label_1482
	inc	r15
	nop	
	mov	rdi, r12
	mov	rsp, rsp
	call	bitset_empty
	mov	r8, qword ptr [rsp + 0x10]
	jmp	.label_1485
	nop	word ptr [rax + rax]
.label_1498:
	mov	rbx, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x10]
	mov	rbp, qword ptr [rsp + 0x28]
.label_1485:
	inc	rbp
	mov	rsp, rsp
	cmp	rbp, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	jl	.label_1486
	jmp	.label_1490
.label_1482:
	mov	rbp, rbp
	test	r15, r15
	jle	.label_1491
	add	r14, 0x10
	nop	word ptr cs:[rax + rax]
.label_1496:
	mov	rsp, rsp
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	free
	nop	
	add	r14, 0x18
	mov	rbp, rbp
	dec	r15
	nop	
	jne	.label_1496
.label_1491:
	mov	r15, -1
.label_1490:
	mov	rax, r15
	mov	rbp, rbp
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4159c0

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x10], xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4159d0

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_1509:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsi + rax*8]
	lea	rsi, [rsi]
	or	qword ptr [rdi + rax*8], rcx
	inc	rax
	cmp	rax, 4
	mov	rsp, rsp
	jne	.label_1509
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x415a00

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x18], -1
	mov	qword ptr [rdi + 0x10], -1
	mov	qword ptr [rdi + 8], -1
	lea	rsi, [rsi]
	mov	qword ptr [rdi], -1
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415a30

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	mov	rax, -2
	mov	cl, sil
	lea	rsi, [rsi]
	rol	rax, cl
	nop	
	mov	rcx, rsi
	lea	rdi, [rdi]
	sar	rcx, 0x3f
	shr	rcx, 0x3a
	mov	rsp, rsp
	add	rcx, rsi
	mov	rbp, rbp
	sar	rcx, 6
	and	qword ptr [rdi + rcx*8], rax
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415a70

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	movups	xmm0, xmmword ptr [rsi]
	movups	xmm1, xmmword ptr [rsi + 0x10]
	movups	xmmword ptr [rdi + 0x10], xmm1
	nop	
	movups	xmmword ptr [rdi], xmm0
	ret	
	.section	.text
	.align	16
	#Procedure 0x415a80

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi]
	shl	rsi, 4
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + rsi + 8]
	movzx	eax, cl
	cmp	eax, 2
	jne	.label_1510
	mov	rsp, rsp
	shr	ecx, 8
	mov	al, 1
	test	cx, 0x3ff
	nop	
	je	.label_1514
	mov	eax, edx
	nop	
	and	eax, 1
	jne	.label_1512
	mov	rsp, rsp
	mov	esi, ecx
	and	esi, 4
	je	.label_1512
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1510:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	ret	
.label_1512:
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_1513
	lea	rdi, [rdi]
	mov	eax, ecx
	and	eax, 8
	je	.label_1513
	xor	eax, eax
	ret	
.label_1513:
	nop	
	test	dl, 2
	mov	rsp, rsp
	jne	.label_1511
	mov	eax, ecx
	mov	rbp, rbp
	and	eax, 0x20
	lea	rdi, [rdi]
	je	.label_1511
	xor	eax, eax
	mov	rbp, rbp
	ret	
.label_1511:
	nop	
	and	edx, 8
	mov	rsp, rsp
	test	cl, cl
	setns	al
	lea	rdi, [rdi]
	shr	edx, 3
	or	dl, al
	mov	al, dl
.label_1514:
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415b20

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	mov	qword ptr [rdi], rsi
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x10], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], r8
	nop	
	xorps	xmm0, xmm0
	nop	
	movups	xmmword ptr [rdi + 0x20], xmm0
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x30], 0
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415b60

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	r14, rsi
	mov	r15, rdi
	mov	rbx, qword ptr [r14 + 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [r14 + 0x10]
	lea	rdi, [rsp]
	nop	
	call	re_node_set_init_1
	mov	ebp, eax
	nop	
	test	ebp, ebp
	jne	.label_1519
	mov	rbp, rbp
	lea	rcx, [rsp]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	mov	rdx, rbx
	mov	rbp, rbp
	call	update_cur_sifted_state
	lea	rsi, [rsi]
	mov	ebp, eax
	test	ebp, ebp
	jne	.label_1520
	lea	r12, [rsp]
	xor	r13d, r13d
	nop	word ptr [rax + rax]
.label_1516:
	test	rbx, rbx
	lea	rdi, [rdi]
	jle	.label_1515
	nop	
	mov	rdi, qword ptr [r14]
	lea	rsi, [rsi]
	cmp	qword ptr [rdi + rbx*8], 0
	lea	rdi, [rdi]
	je	.label_1522
	mov	rbp, rbp
	xor	r13d, r13d
	mov	rsp, rsp
	jmp	.label_1517
	nop	dword ptr [rax + rax]
.label_1522:
	inc	r13d
.label_1517:
	lea	rdi, [rdi]
	cmp	r13d, dword ptr [r15 + 0xe0]
	jg	.label_1521
	mov	qword ptr [rsp + 8], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [r15 + 0xb8]
	cmp	qword ptr [rax + rbx*8 - 8], 0
	lea	rdi, [rdi]
	lea	rbx, [rbx - 1]
	lea	rsi, [rsi]
	je	.label_1518
	mov	rdi, r15
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, r12
	lea	rsi, [rsi]
	call	build_sifted_states
	mov	ebp, eax
	lea	rdi, [rdi]
	test	ebp, ebp
	lea	rdi, [rdi]
	jne	.label_1520
.label_1518:
	mov	rdi, r15
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, r12
	call	update_cur_sifted_state
	mov	rsp, rsp
	mov	ebp, eax
	mov	rbp, rbp
	test	ebp, ebp
	mov	rsp, rsp
	je	.label_1516
	mov	rbp, rbp
	jmp	.label_1520
.label_1515:
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_1520
.label_1521:
	nop	
	shl	rbx, 3
	xor	ebp, ebp
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rbx
	call	memset
.label_1520:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	call	free
.label_1519:
	mov	eax, ebp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415cd0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	mov	rsp, rsp
	push	r13
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x28
	nop	
	mov	r14, rcx
	lea	rsi, [rsi]
	mov	r15, rdx
	nop	
	mov	rbx, rsi
	mov	r12, rdi
	xor	eax, eax
	mov	rsp, rsp
	test	r14, r14
	lea	rdi, [rdi]
	jle	.label_1526
	xor	ebp, ebp
	lea	r13, [rsp + 8]
	nop	word ptr cs:[rax + rax]
.label_1524:
	nop	
	mov	rax, qword ptr [r15 + rbp*8]
	cmp	qword ptr [rbx + rbp*8], 0
	nop	
	je	.label_1523
	test	rax, rax
	je	.label_1525
	mov	rsi, qword ptr [rbx + rbp*8]
	lea	rdi, [rdi]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdx, qword ptr [r15 + rbp*8]
	lea	rdi, [rdi]
	add	rdx, 8
	mov	rsp, rsp
	mov	rdi, r13
	call	re_node_set_init_union
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x24], eax
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1526
	lea	rdi, [rsp + 0x24]
	mov	rsp, rsp
	mov	rsi, r12
	mov	rdx, r13
	nop	
	call	re_acquire_state
	mov	qword ptr [rbx + rbp*8], rax
	mov	rdi, qword ptr [rsp + 0x18]
	call	free
	mov	eax, dword ptr [rsp + 0x24]
	test	eax, eax
	je	.label_1525
	jmp	.label_1526
	nop	word ptr cs:[rax + rax]
.label_1523:
	lea	rdi, [rdi]
	mov	qword ptr [rbx + rbp*8], rax
.label_1525:
	mov	rsp, rsp
	inc	rbp
	xor	eax, eax
	mov	rbp, rbp
	cmp	rbp, r14
	nop	
	jl	.label_1524
.label_1526:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x415de0

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	push	r15
	mov	rbp, rbp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rcx
	nop	
	mov	r15, rdx
	mov	rbp, rbp
	mov	rbx, rdi
	nop	
	mov	rdx, qword ptr [rbx + 0x98]
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], 0
	mov	rax, qword ptr [rbx + 0xb8]
	mov	r14, qword ptr [rax + r15*8]
	lea	r12, [r14 + 8]
	test	r14, r14
	lea	rdi, [rdi]
	cmove	r12, r14
	cmp	qword ptr [r13 + 8], 0
	lea	rsi, [rsi]
	je	.label_1527
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_1529
	mov	rdi, rdx
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rbp, rdx
	mov	rbp, rbp
	mov	rdx, r12
	lea	rsi, [rsi]
	call	add_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1530
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 0x28], 0
	je	.label_1529
	nop	
	lea	rcx, [rsi + 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbx + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, r12
	mov	r9, r15
	lea	rdi, [rdi]
	call	check_subexp_limits
	mov	rdx, rbp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	mov	dword ptr [rsp + 0x14], eax
	lea	rdi, [rdi]
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1530
.label_1529:
	lea	rdi, [rsp + 0x14]
	mov	rbp, rsi
	mov	rsi, rdx
	lea	rsi, [rsi]
	mov	rdx, r13
	call	re_acquire_state
	mov	rsp, rsp
	mov	rsi, rbp
	mov	rcx, qword ptr [rsi]
	mov	qword ptr [rcx + r15*8], rax
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x14]
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_1531
	lea	rsi, [rsi]
	jmp	.label_1530
.label_1527:
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	qword ptr [rax + r15*8], 0
.label_1531:
	test	r14, r14
	je	.label_1528
	mov	rax, qword ptr [rbx + 0xb8]
	mov	rax, qword ptr [rax + r15*8]
	lea	rsi, [rsi]
	test	byte ptr [rax + 0x68], 0x40
	je	.label_1528
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, r12
	call	sift_states_bkref
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x14], eax
	test	eax, eax
	jne	.label_1530
.label_1528:
	xor	eax, eax
.label_1530:
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x415f70

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x10], rcx
	mov	rsp, rsp
	mov	rbx, rdx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0xb8]
	nop	
	mov	r14, qword ptr [rax + rbx*8]
	nop	
	xor	eax, eax
	cmp	qword ptr [r14 + 0x28], 0
	jle	.label_1533
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r12, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rsp, rsp
	lea	rax, [rax + 0x20]
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	dword ptr [rax]
.label_1535:
	mov	rax, qword ptr [r14 + 0x30]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [r12]
	nop	
	mov	r13, rbp
	shl	r13, 4
	lea	rdi, [rdi]
	test	byte ptr [rax + r13 + 0xa], 0x10
	lea	rdi, [rdi]
	je	.label_1532
	mov	rsi, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsi + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rsp, rsp
	mov	rcx, rbx
	call	sift_states_iter_mb
	test	eax, eax
	mov	rsp, rsp
	jne	.label_1536
.label_1532:
	mov	rbp, rbp
	add	r13, qword ptr [r12]
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	check_node_accept
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	je	.label_1534
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x18]
	nop	
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + rbx*8 + 8]
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1534
	add	rdi, 8
	mov	rax, qword ptr [r12 + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rsp, rsp
	call	re_node_set_contains
	mov	rcx, rax
	mov	rbp, rbp
	mov	eax, 1
	test	rcx, rcx
	lea	rdi, [rdi]
	je	.label_1534
.label_1536:
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 0x28], 0
	lea	rdi, [rdi]
	je	.label_1537
	movsxd	rcx, eax
	add	rcx, rbx
	nop	
	mov	rax, qword ptr [r12 + 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	r8, rbp
	mov	r9, rbx
	call	check_dst_limits
	test	al, al
	jne	.label_1534
.label_1537:
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, rbp
	call	re_node_set_insert
	mov	cl, al
	mov	eax, 0xc
	nop	
	test	cl, cl
	je	.label_1533
.label_1534:
	inc	r15
	mov	rbp, rbp
	xor	eax, eax
	cmp	r15, qword ptr [r14 + 0x28]
	lea	rdi, [rdi]
	jl	.label_1535
.label_1533:
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416150

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], 0
	nop	
	lea	rdi, [rsp + 4]
	nop	
	mov	rsi, r15
	nop	
	mov	rdx, rbx
	call	re_acquire_state
	mov	r12, rax
	mov	r13d, dword ptr [rsp + 4]
	test	r13d, r13d
	mov	rbp, rbp
	jne	.label_1538
	mov	rax, r12
	lea	rsi, [rsi]
	add	r12, 0x38
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1539
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, r12
	mov	rbp, rbp
	call	re_node_set_alloc
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 4], eax
	mov	r13d, 0xc
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_1538
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1539
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1541:
	mov	rax, qword ptr [r15 + 0x38]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rcx, qword ptr [rcx + rbp*8]
	lea	rdi, [rdi]
	lea	rcx, [rcx + rcx*2]
	mov	rbp, rbp
	lea	rsi, [rax + rcx*8]
	mov	rdi, r12
	call	re_node_set_merge
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1540
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rbx + 8]
	jl	.label_1541
	mov	dword ptr [rsp + 4], eax
.label_1539:
	mov	rdi, rbx
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, r12
	lea	rdi, [rdi]
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	r13d, eax
.label_1538:
	mov	rsp, rsp
	mov	eax, r13d
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	pop	rbp
	ret	
.label_1540:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 4], eax
	jmp	.label_1538
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416270

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x38
	lea	rsi, [rsi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], r8
	mov	r9, rcx
	mov	qword ptr [rsp + 0x28], r9
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	r11, rdi
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	qword ptr [r9 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1546
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_1552:
	mov	rax, qword ptr [r9 + 0x10]
	mov	rax, qword ptr [rax + r15*8]
	lea	rdi, [rdi]
	lea	rax, [rax + rax*4]
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x10], r14
	lea	rdi, [rdi]
	jge	.label_1543
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 8], r14
	jl	.label_1543
	mov	rcx, qword ptr [r8 + rax*8]
	mov	rsi, qword ptr [r11]
	shl	rcx, 4
	mov	r13, qword ptr [rsi + rcx]
	mov	qword ptr [rsp], r13
	mov	rbp, rbp
	cmp	qword ptr [r8 + rax*8 + 0x18], r14
	lea	rdi, [rdi]
	jne	.label_1548
	nop	
	cmp	qword ptr [rdx + 8], 0
	jle	.label_1543
	lea	rdi, [rdi]
	mov	r12, r8
	mov	rsp, rsp
	mov	r9, r14
	mov	rbp, rbp
	mov	r8, qword ptr [rdx + 8]
	mov	rbp, rbp
	mov	r10, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [r11]
	mov	r14, -1
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, -1
	nop	
.label_1545:
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r10 + rdi*8]
	lea	rsi, [rsi]
	mov	rbp, rbx
	shl	rbp, 4
	nop	
	movzx	eax, byte ptr [rcx + rbp + 8]
	cmp	eax, 9
	je	.label_1555
	mov	rsp, rsp
	cmp	eax, 8
	mov	rsp, rsp
	jne	.label_1547
	cmp	r13, qword ptr [rcx + rbp]
	mov	rbp, rbp
	je	.label_1553
	mov	rsp, rsp
	mov	rbx, rsi
.label_1553:
	mov	rsi, rbx
	lea	rsi, [rsi]
	jmp	.label_1547
	nop	
.label_1555:
	mov	rax, qword ptr [r11]
	lea	rsi, [rsi]
	cmp	r13, qword ptr [rax + rbp]
	lea	rsi, [rsi]
	je	.label_1557
	mov	rbx, r14
.label_1557:
	lea	rdi, [rdi]
	mov	r14, rbx
.label_1547:
	inc	rdi
	nop	
	cmp	rdi, r8
	jl	.label_1545
	mov	rbp, rbp
	mov	r13, r14
	test	rsi, rsi
	nop	
	mov	r14, r9
	lea	rdi, [rdi]
	mov	r8, r12
	mov	r9, qword ptr [rsp + 0x28]
	nop	
	js	.label_1549
	mov	rsp, rsp
	mov	rdi, r11
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rdx
	mov	rsp, rsp
	mov	rbx, r11
	mov	r12, r8
	mov	rbp, rbp
	mov	rbp, r9
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	mov	r9, rbp
	nop	
	mov	r8, r12
	lea	rsi, [rsi]
	mov	r11, rbx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1546
.label_1549:
	mov	rbp, rbp
	test	r13, r13
	mov	rsp, rsp
	js	.label_1543
	cmp	qword ptr [rdx + 8], 0
	mov	rbp, rbp
	mov	ebp, 0
	jg	.label_1551
	mov	rsp, rsp
	jmp	.label_1543
.label_1548:
	lea	rdi, [rdi]
	cmp	qword ptr [rdx + 8], 0
	mov	ebp, 0
	mov	rbp, rbp
	jle	.label_1543
	nop	word ptr cs:[rax + rax]
.label_1550:
	mov	rax, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11]
	mov	rsp, rsp
	mov	rcx, rsi
	mov	rbp, rbp
	shl	rcx, 4
	mov	edi, dword ptr [rax + rcx + 8]
	nop	
	mov	ebx, 0xfe
	and	edi, ebx
	or	edi, 1
	cmp	edi, 9
	mov	rbp, rbp
	jne	.label_1542
	cmp	r13, qword ptr [rax + rcx]
	mov	rbp, rbp
	jne	.label_1542
	nop	
	mov	rdi, r11
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 8]
	mov	r13, rdx
	mov	rbx, r11
	lea	rsi, [rsi]
	mov	r12, r8
	mov	qword ptr [rsp + 0x10], r15
	lea	rdi, [rdi]
	mov	r15, r14
	mov	rbp, rbp
	mov	r14, r9
	call	sub_epsilon_src_nodes
	mov	r9, r14
	lea	rsi, [rsi]
	mov	r14, r15
	mov	r15, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r11, rbx
	mov	rdx, r13
	mov	r13, qword ptr [rsp]
	lea	rdi, [rdi]
	test	eax, eax
	jne	.label_1546
.label_1542:
	inc	rbp
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1550
	mov	rbp, rbp
	jmp	.label_1543
.label_1544:
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rsp + 0x30]
	mov	rdx, rbx
	nop	
	mov	rcx, qword ptr [rsp + 8]
	nop	
	call	sub_epsilon_src_nodes
	mov	rdx, rbx
	test	eax, eax
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	mov	r9, qword ptr [rsp + 0x28]
	mov	r11, r12
	jne	.label_1546
	dec	rbp
	mov	rsp, rsp
	jmp	.label_1556
	nop	
.label_1551:
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	r14, qword ptr [rax + rbp*8]
	mov	rax, qword ptr [r11 + 0x38]
	lea	rbx, [r14 + r14*2]
	lea	rdi, [rax + rbx*8]
	lea	rsi, [rsi]
	mov	rsi, r13
	lea	rsi, [rsi]
	mov	r12, r11
	call	re_node_set_contains
	mov	rsp, rsp
	test	rax, rax
	nop	
	jne	.label_1554
	mov	rbp, rbp
	mov	rax, qword ptr [r12 + 0x30]
	lea	rdi, [rax + rbx*8]
	mov	rsi, r13
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_1544
.label_1554:
	nop	
	mov	r14, qword ptr [rsp + 0x18]
	mov	r8, qword ptr [rsp + 0x20]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x28]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	r11, r12
.label_1556:
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [rdx + 8]
	jl	.label_1551
	nop	
.label_1543:
	inc	r15
	xor	eax, eax
	mov	rsp, rsp
	cmp	r15, qword ptr [r9 + 8]
	jl	.label_1552
.label_1546:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416620

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x98
	lea	rdi, [rdi]
	mov	rbx, rcx
	mov	qword ptr [rsp + 0x28], rbx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rdx
	nop	
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x48], rdi
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rbp
	lea	rdi, [rdi]
	mov	rsi, rdx
	lea	rdi, [rdi]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rax
	xor	r12d, r12d
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_1563
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], 0
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1563
	lea	rsi, [rsi]
	mov	rdx, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rdx
	lea	rax, [rdx + 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	lea	rax, [rax + 1]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0x20]
	lea	rax, [rax*8]
	lea	rax, [rax + rax*4]
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	nop	dword ptr [rax + rax]
.label_1560:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	r15, qword ptr [rax + rcx*8]
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rcx, r15
	shl	rcx, 4
	mov	rbp, rbp
	movzx	eax, byte ptr [rax + rcx + 8]
	cmp	r15, qword ptr [rdx + 0x10]
	jne	.label_1558
	lea	rsi, [rsi]
	cmp	eax, 4
	jne	.label_1559
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	cmp	qword ptr [rdx + 0x18], rax
	jne	.label_1570
	mov	rbp, rbp
	jmp	.label_1559
	nop	word ptr cs:[rax + rax]
.label_1558:
	nop	
	cmp	eax, 4
	jne	.label_1559
.label_1570:
	mov	r14, qword ptr [rsp + 0x20]
	lea	rbp, [r14 + r14*4]
	nop	
	shl	rbp, 3
	mov	rax, qword ptr [rsp + 0x48]
	lea	rsi, [rsi]
	add	rbp, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x18]
	nop	
.label_1567:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp], r15
	jne	.label_1561
	mov	rax, qword ptr [rbp + 0x10]
	mov	rcx, qword ptr [rbp + 0x18]
	mov	rbx, rcx
	mov	rbp, rbp
	sub	rbx, rax
	mov	rsp, rsp
	add	rbx, qword ptr [rsp + 0x58]
	cmp	rcx, rax
	jne	.label_1564
	mov	rax, qword ptr [rsi + 0x28]
	lea	rsi, [rsi]
	lea	rcx, [r15 + r15*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	jmp	.label_1569
	nop	
.label_1564:
	lea	rax, [r15*8]
	add	rax, qword ptr [rsi + 0x18]
.label_1569:
	cmp	rbx, qword ptr [rdx + 0x18]
	jg	.label_1561
	mov	rcx, qword ptr [rdx]
	mov	rdi, qword ptr [rcx + rbx*8]
	test	rdi, rdi
	je	.label_1561
	nop	
	mov	r12, qword ptr [rax]
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	je	.label_1562
	mov	rdi, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x58]
	mov	r8, r12
	nop	
	mov	r9, rbx
	mov	rbp, rbp
	call	check_dst_limits
	nop	
	test	al, al
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x50]
	jne	.label_1561
	cmp	qword ptr [rsp + 0x60], 0
	jne	.label_1568
	mov	rsp, rsp
	mov	rax, qword ptr [rdx + 0x30]
	nop	
	mov	qword ptr [rsp + 0x90], rax
	movups	xmm0, xmmword ptr [rdx]
	mov	rsp, rsp
	movups	xmm1, xmmword ptr [rdx + 0x10]
	movups	xmm2, xmmword ptr [rdx + 0x20]
	mov	rbp, rbp
	movaps	xmmword ptr [rsp + 0x80], xmm2
	movaps	xmmword ptr [rsp + 0x70], xmm1
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x60], xmm0
	lea	rdi, [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rbx, rdx
	lea	rsi, [rsi]
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	rdx, rbx
	mov	r12d, eax
	mov	rbp, rbp
	test	r12d, r12d
	lea	rsi, [rsi]
	jne	.label_1565
.label_1568:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x70], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x78], rax
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0x80]
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	rdx, rbx
	mov	rsp, rsp
	mov	r12d, 0xc
	mov	rbp, rbp
	test	al, al
	mov	rsp, rsp
	je	.label_1565
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rbx, qword ptr [rax + rcx*8]
	nop	
	mov	rdi, qword ptr [rsp + 0x48]
	lea	rsi, [rsp + 0x60]
	nop	
	mov	rbp, rdx
	call	sift_states_backward
	mov	rdx, rbp
	mov	rsp, rsp
	mov	r12d, eax
	test	r12d, r12d
	jne	.label_1565
	mov	rsp, rsp
	mov	rsi, qword ptr [rdx + 8]
	mov	rbp, rbp
	test	rsi, rsi
	mov	rsp, rsp
	je	.label_1571
	lea	rdi, [rdi]
	mov	rbp, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	call	merge_state_array
	lea	rdi, [rdi]
	mov	rdx, rbp
	mov	r12d, eax
	lea	rsi, [rsi]
	test	r12d, r12d
	jne	.label_1565
.label_1571:
	mov	rax, qword ptr [rsp + 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rax + rcx*8], rbx
	lea	rdi, [rdi]
	lea	rbp, [rsp + 0x80]
	mov	rdi, rbp
	mov	rsi, r14
	mov	rbx, rdx
	call	re_node_set_contains
	mov	rsp, rsp
	lea	rsi, [rax - 1]
	mov	rdi, rbp
	call	re_node_set_remove_at
	mov	rdx, rbx
	nop	
	mov	rax, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + 0xd8]
	add	rbp, r13
	nop	
	jmp	.label_1566
.label_1562:
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
.label_1566:
	mov	rsi, qword ptr [rsp + 0x50]
	nop	dword ptr [rax + rax]
.label_1561:
	inc	r14
	add	r13, 0x28
	lea	rdi, [rdi]
	cmp	byte ptr [rbp + 0x20], 0
	mov	rbp, rbp
	lea	rbp, [rbp + 0x28]
	jne	.label_1567
.label_1559:
	mov	rsp, rsp
	mov	rbp, rsi
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	mov	qword ptr [rsp + 0x40], rax
	xor	r12d, r12d
	nop	
	mov	rbx, qword ptr [rsp + 0x28]
	cmp	rax, qword ptr [rbx + 8]
	jl	.label_1560
.label_1565:
	lea	rdi, [rdi]
	cmp	qword ptr [rsp + 0x60], 0
	nop	
	je	.label_1563
	mov	rdi, qword ptr [rsp + 0x90]
	nop	
	call	free
.label_1563:
	lea	rdi, [rdi]
	mov	eax, r12d
	lea	rsi, [rsi]
	add	rsp, 0x98
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x416a70

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rdi, [rdi]
	push	r12
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	mov	r12, rsi
	mov	r15, rdi
	mov	rdx, qword ptr [r12 + 8]
	nop	
	xor	eax, eax
	mov	rbp, rbp
	test	rdx, rdx
	mov	rbp, rbp
	je	.label_1582
	mov	rcx, qword ptr [r14 + 8]
	nop	
	test	rcx, rcx
	je	.label_1582
	add	rcx, rdx
	mov	rax, qword ptr [r15 + 8]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rbx, qword ptr [r15]
	cmp	rax, rbx
	mov	rsp, rsp
	jle	.label_1587
	add	rbx, rcx
	nop	
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rsi, [rbx*8]
	call	realloc
	mov	rcx, rax
	mov	eax, 0xc
	mov	rsp, rsp
	test	rcx, rcx
	je	.label_1582
	mov	qword ptr [r15 + 0x10], rcx
	mov	qword ptr [r15], rbx
.label_1587:
	mov	rcx, qword ptr [r15 + 8]
	mov	rdx, qword ptr [r12 + 8]
	lea	r8, [rdx + rcx]
	mov	r9, qword ptr [r14 + 8]
	mov	rsp, rsp
	add	r8, r9
	lea	rsi, [rsi]
	dec	rcx
.label_1576:
	dec	rdx
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbx, qword ptr [r14 + 0x10]
	mov	rdi, r9
.label_1586:
	lea	rsi, [rsi]
	lea	r9, [rdi - 1]
	nop	
	mov	rsi, qword ptr [rbx + rdi*8 - 8]
	nop	word ptr cs:[rax + rax]
.label_1578:
	nop	
	cmp	qword ptr [rax + rdx*8], rsi
	lea	rdi, [rdi]
	je	.label_1572
	jl	.label_1577
	nop	
	test	rdx, rdx
	lea	rsi, [rsi]
	lea	rdx, [rdx - 1]
	nop	
	jg	.label_1578
	lea	rsi, [rsi]
	jmp	.label_1573
	nop	word ptr cs:[rax + rax]
.label_1577:
	mov	rsp, rsp
	cmp	rdi, 2
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	jge	.label_1586
	nop	
	jmp	.label_1573
	nop	word ptr cs:[rax + rax]
.label_1572:
	nop	
	test	rcx, rcx
	js	.label_1575
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsi, qword ptr [r12 + 0x10]
	mov	rsi, qword ptr [rsi + rdx*8]
	nop	word ptr cs:[rax + rax]
.label_1588:
	lea	rsi, [rsi]
	cmp	qword ptr [rax + rcx*8], rsi
	lea	rdi, [rdi]
	jle	.label_1574
	test	rcx, rcx
	lea	rcx, [rcx - 1]
	jg	.label_1588
	mov	rsp, rsp
	jmp	.label_1575
.label_1574:
	nop	
	test	rcx, rcx
	mov	rbp, rbp
	js	.label_1575
	mov	rax, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [rax + rcx*8]
	mov	rsi, qword ptr [r12 + 0x10]
	cmp	rax, qword ptr [rsi + rdx*8]
	mov	rbp, rbp
	je	.label_1579
	nop	dword ptr [rax]
.label_1575:
	mov	rax, qword ptr [r12 + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rdx*8]
	mov	rsi, qword ptr [r15 + 0x10]
	mov	qword ptr [rsi + r8*8 - 8], rax
	lea	rdi, [rdi]
	dec	r8
.label_1579:
	test	rdx, rdx
	jle	.label_1573
	cmp	rdi, 2
	jge	.label_1576
.label_1573:
	mov	rcx, qword ptr [r15 + 8]
	mov	r10, qword ptr [r12 + 8]
	mov	rax, qword ptr [r14 + 8]
	lea	rdx, [rcx + r10]
	lea	r11, [rax + rdx - 1]
	lea	rsi, [rsi]
	mov	rdx, r11
	lea	rdi, [rdi]
	sub	rdx, r8
	lea	r9, [rdx + 1]
	nop	
	lea	rsi, [rdx + rcx + 1]
	mov	qword ptr [r15 + 8], rsi
	lea	rdi, [rdi]
	test	rcx, rcx
	mov	rbp, rbp
	jle	.label_1580
	test	rdx, rdx
	js	.label_1580
	add	r10, rax
	mov	rsp, rsp
	add	r10, rcx
	dec	rcx
	sub	r10, r8
	nop	
	xor	edx, edx
.label_1584:
	mov	rbp, rbp
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rax, [rdi + r10*8]
	nop	word ptr [rax + rax]
.label_1583:
	mov	rsi, qword ptr [rdi + r11*8]
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rdi + rcx*8]
	cmp	rsi, rbx
	lea	rdi, [rdi]
	jg	.label_1585
	mov	qword ptr [rax + rcx*8], rbx
	mov	rsp, rsp
	test	rcx, rcx
	nop	
	lea	rcx, [rcx - 1]
	jg	.label_1583
	jmp	.label_1580
.label_1585:
	dec	r11
	nop	
	dec	r10
	mov	rbp, rbp
	dec	r9
	lea	rsi, [rsi]
	mov	qword ptr [rax + rcx*8], rsi
	jne	.label_1584
	jmp	.label_1581
.label_1580:
	lea	rsi, [rsi]
	mov	rdx, r9
.label_1581:
	mov	rdi, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	lea	rsi, [rdi + r8*8]
	shl	rdx, 3
	call	memcpy
	xor	eax, eax
.label_1582:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	mov	rbp, rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x416cf0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	qword ptr [rsp + 0x28], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rdi
	mov	rax, qword ptr [rdi + 0x38]
	lea	rdi, [rdi]
	lea	rcx, [rsi + rsi*2]
	nop	
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	nop	
	mov	qword ptr [rsp + 0x40], 0
	mov	rsp, rsp
	cmp	qword ptr [rax + rcx*8 + 8], 0
	jle	.label_1597
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rdx
	nop	
	lea	r13, [rax + rcx*8 + 8]
	lea	r15, [rax + rcx*8 + 0x10]
	lea	rdi, [rdi]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_1593:
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + r12*8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	je	.label_1589
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx]
	mov	rdx, rax
	mov	rsp, rsp
	shl	rdx, 4
	lea	rsi, [rsi]
	test	byte ptr [rcx + rdx + 8], 8
	je	.label_1589
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	lea	rbx, [rax + rax*2]
	nop	
	mov	rax, qword ptr [rcx + rbx*8 + 0x10]
	mov	rbp, rbp
	mov	r14, qword ptr [rax]
	mov	rbp, -1
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rbx*8 + 8], 2
	mov	rsp, rsp
	jl	.label_1598
	mov	rbp, qword ptr [rax + 8]
.label_1598:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r14
	call	re_node_set_contains
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1590
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rdi, [rdi]
	call	re_node_set_contains
	test	rax, rax
	mov	rbp, rbp
	jne	.label_1595
.label_1590:
	nop	
	test	rbp, rbp
	mov	rsp, rsp
	jle	.label_1589
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, rbp
	call	re_node_set_contains
	lea	rsi, [rsi]
	test	rax, rax
	jne	.label_1589
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbp
	nop	
	call	re_node_set_contains
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_1589
.label_1595:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdx, [rax + rbx*8]
	mov	rbp, rbp
	lea	rdi, [rsp + 0x30]
	nop	
	mov	rsi, qword ptr [rsp + 8]
	call	re_node_set_add_intersect
	lea	rdi, [rdi]
	mov	ebp, eax
	test	ebp, ebp
	mov	rsp, rsp
	jne	.label_1591
	nop	dword ptr [rax]
.label_1589:
	mov	rbp, rbp
	inc	r12
	lea	rdi, [rdi]
	mov	rax, qword ptr [r13]
	nop	
	cmp	r12, rax
	jl	.label_1593
	lea	rdi, [rdi]
	test	rax, rax
	mov	r12, qword ptr [rsp + 0x10]
	jle	.label_1597
	xor	ebx, ebx
	mov	rsp, rsp
	lea	r14, [rsp + 0x30]
	nop	
.label_1594:
	mov	rax, qword ptr [r15]
	mov	rsp, rsp
	mov	rbp, qword ptr [rax + rbx*8]
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1596
	mov	rbp, rbp
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, rbp
	call	re_node_set_contains
	mov	rbp, rbp
	lea	rsi, [rax - 1]
	lea	rdi, [rdi]
	mov	rdi, r12
	call	re_node_set_remove_at
.label_1596:
	lea	rdi, [rdi]
	inc	rbx
	cmp	rbx, qword ptr [r13]
	lea	rdi, [rdi]
	jl	.label_1594
.label_1597:
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	call	free
	xor	ebp, ebp
.label_1592:
	mov	rbp, rbp
	mov	eax, ebp
	lea	rsi, [rsi]
	add	rsp, 0x48
	pop	rbx
	pop	r12
	nop	
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_1591:
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x40]
	call	free
	mov	rbp, rbp
	jmp	.label_1592
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x416f60

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	sub	rsp, 0x38
	lea	rdi, [rdi]
	mov	r14, r9
	mov	qword ptr [rsp + 0x30], r14
	nop	
	mov	qword ptr [rsp + 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rcx
	mov	qword ptr [rsp + 0x18], rdx
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rsi, rcx
	mov	rbp, rbp
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 0x10], rax
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	search_cur_bkref_entry
	mov	qword ptr [rsp + 8], rax
	cmp	qword ptr [rbx + 8], 0
	jle	.label_1601
	mov	rsp, rsp
	mov	r14, qword ptr [rbp + 0x98]
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_1600:
	nop	
	mov	rax, qword ptr [rbp + 0xd8]
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rcx + r12*8]
	lea	rcx, [rsi + rsi*4]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + rcx*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [r14]
	shl	rax, 4
	mov	r15, qword ptr [rcx + rax]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rdx, r15
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rsp + 0x20]
	nop	
	mov	r9, qword ptr [rsp + 0x10]
	call	check_dst_limits_calc_pos
	mov	r13d, eax
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rax + r12*8]
	nop	
	mov	rdi, rbp
	mov	rdx, r15
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rsp + 0x30]
	mov	r9, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos
	cmp	eax, r13d
	mov	rbp, rbp
	mov	al, 1
	jne	.label_1599
	nop	
	inc	r12
	cmp	r12, qword ptr [rbx + 8]
	mov	rsp, rsp
	jl	.label_1600
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_1599
.label_1601:
	lea	rdi, [rdi]
	xor	eax, eax
.label_1599:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4170a0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	mov	r10, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	lea	rsi, [rsi + rsi*4]
	mov	rbp, rbp
	mov	r11, qword ptr [r10 + rsi*8 + 0x10]
	mov	rsp, rsp
	mov	eax, 0xffffffff
	mov	rsp, rsp
	cmp	r11, r8
	jg	.label_1602
	mov	r10, qword ptr [r10 + rsi*8 + 0x18]
	mov	rbp, rbp
	mov	eax, 1
	cmp	r10, r8
	mov	rbp, rbp
	jl	.label_1602
	cmp	r11, r8
	sete	al
	movzx	r11d, al
	cmp	r10, r8
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	movzx	esi, al
	add	esi, esi
	xor	eax, eax
	or	esi, r11d
	lea	rdi, [rdi]
	je	.label_1602
	lea	rsi, [rsi]
	mov	r8, r9
	jmp	check_dst_limits_calc_pos_1
.label_1602:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x417110

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	push	r15
	push	r14
	push	r13
	nop	
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x48
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r8
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbx, rdx
	mov	r13d, esi
	mov	qword ptr [rsp + 0x38], rdi
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rdi + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + 0x30]
	lea	rcx, [rcx + rcx*2]
	cmp	qword ptr [rax + rcx*8 + 8], 0
	lea	rsi, [rsi]
	jle	.label_1613
	lea	rsi, [rsi]
	lea	rdx, [rax + rcx*8 + 8]
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rdx
	lea	rax, [rax + rcx*8 + 0x10]
	mov	qword ptr [rsp + 0x28], rax
	nop	
	mov	eax, 1
	mov	cl, bl
	nop	
	shl	rax, cl
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rax
	xor	rax, 0xffff
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 2
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	shr	eax, 1
	cmp	rbx, 0x3f
	setg	cl
	or	cl, al
	nop	
	mov	byte ptr [rsp + 0xf], cl
	mov	eax, r13d
	nop	
	and	eax, 1
	mov	dword ptr [rsp + 4], eax
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	dword ptr [rax + rax]
.label_1612:
	mov	rax, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rax + r15*8]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp]
	mov	rsp, rsp
	mov	rdx, r12
	lea	rsi, [rsi]
	shl	rdx, 4
	lea	rcx, [rax + rdx]
	movzx	eax, byte ptr [rax + rdx + 8]
	nop	
	cmp	eax, 9
	lea	rsi, [rsi]
	je	.label_1615
	cmp	eax, 8
	mov	rsp, rsp
	je	.label_1606
	mov	rsp, rsp
	cmp	eax, 4
	jne	.label_1603
	cmp	qword ptr [rsp + 0x40], -1
	je	.label_1603
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	lea	r14, [rax + rax*4]
	shl	r14, 3
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x38]
	add	r14, qword ptr [rax + 0xd8]
	nop	
.label_1604:
	mov	rbp, rbp
	cmp	qword ptr [r14], r12
	jne	.label_1607
	lea	rsi, [rsi]
	cmp	rbx, 0x3f
	jg	.label_1609
	movzx	eax, word ptr [r14 + 0x22]
	test	qword ptr [rsp + 0x18], rax
	je	.label_1607
.label_1609:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp + 0x28]
	lea	rcx, [r12 + r12*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	mov	rcx, qword ptr [rax]
	cmp	rcx, qword ptr [rsp + 0x30]
	mov	rbp, rbp
	je	.label_1616
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x38]
	mov	esi, r13d
	mov	rdx, rbx
	mov	r8, qword ptr [rsp + 0x40]
	lea	rsi, [rsi]
	call	check_dst_limits_calc_pos_1
	mov	ecx, eax
	lea	rsi, [rsi]
	test	ecx, ecx
	je	.label_1614
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
	nop	
	cmp	ecx, -1
	mov	rsp, rsp
	je	.label_1611
	lea	rdi, [rdi]
	cmp	rbx, 0x3f
	mov	rsp, rsp
	jg	.label_1607
	lea	rdi, [rdi]
	jmp	.label_1610
.label_1614:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xf], 0
	mov	rsp, rsp
	je	.label_1610
	xor	eax, eax
	cmp	dword ptr [rsp + 8], 0
	nop	
	je	.label_1607
	mov	rbp, rbp
	jmp	.label_1611
.label_1610:
	mov	rsp, rsp
	movzx	eax, word ptr [r14 + 0x22]
	mov	rcx, qword ptr [rsp + 0x10]
	nop	
	and	eax, ecx
	mov	word ptr [r14 + 0x22], ax
	nop	word ptr cs:[rax + rax]
.label_1607:
	mov	rsp, rsp
	cmp	byte ptr [r14 + 0x20], 0
	mov	rsp, rsp
	lea	r14, [r14 + 0x28]
	jne	.label_1604
	jmp	.label_1603
	nop	word ptr [rax + rax]
.label_1615:
	cmp	dword ptr [rsp + 8], 0
	je	.label_1603
	xor	eax, eax
	jmp	.label_1605
	nop	dword ptr [rax + rax]
.label_1606:
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 4], 0
	nop	
	je	.label_1603
	mov	eax, 0xffffffff
.label_1605:
	nop	
	cmp	qword ptr [rcx], rbx
	je	.label_1611
.label_1603:
	inc	r15
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	cmp	r15, qword ptr [rax]
	jl	.label_1612
.label_1613:
	lea	rsi, [rsi]
	shr	r13d, 1
	nop	
	and	r13d, 1
	lea	rdi, [rdi]
	jmp	.label_1608
.label_1616:
	shl	r13d, 0x1f
	sar	r13d, 0x1f
.label_1608:
	lea	rdi, [rdi]
	mov	eax, r13d
.label_1611:
	add	rsp, 0x48
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4173c0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	rsp, rsp
	mov	r13, r8
	mov	rbp, rbp
	mov	rbp, rcx
	mov	rbp, rbp
	mov	r14, rdx
	mov	rsp, rsp
	mov	r12, rsi
	lea	rdi, [rdi]
	mov	rax, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rax + 0x98]
	mov	rdi, r15
	lea	rdi, [rdi]
	mov	rsi, r14
	lea	rsi, [rsi]
	mov	rdx, rax
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	test	ebx, ebx
	jle	.label_1617
	lea	rsi, [rsi]
	movsxd	rax, ebx
	add	rax, rbp
	mov	rbp, rbp
	cmp	rax, r13
	jg	.label_1617
	mov	rbp, rbp
	mov	rcx, qword ptr [r12]
	mov	rdi, qword ptr [rcx + rax*8]
	test	rdi, rdi
	lea	rdi, [rdi]
	je	.label_1618
	add	rdi, 8
	nop	
	mov	rax, qword ptr [r15 + 0x18]
	nop	
	mov	rsi, qword ptr [rax + r14*8]
	lea	rsi, [rsi]
	call	re_node_set_contains
	test	rax, rax
	jne	.label_1617
.label_1618:
	mov	rbp, rbp
	xor	ebx, ebx
.label_1617:
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417480

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	nop	
	mov	r14, rdi
	test	r14, r14
	je	.label_1619
	nop	
	xor	ebx, ebx
	cmp	qword ptr [r14], 0
	jle	.label_1620
	lea	rdi, [rdi]
	xor	r15d, r15d
.label_1621:
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [r14 + 0x10]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	mov	rbp, rbp
	call	free
	inc	r15
	add	rbx, 0x30
	cmp	r15, qword ptr [r14]
	jl	.label_1621
.label_1620:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r14 + 0x10]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	jmp	free
.label_1619:
	pop	rbx
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417500

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	mov	rdi, qword ptr [rdi]
	mov	rsp, rsp
	shl	rcx, 4
	mov	rbp, rbp
	lea	rax, [rdi + rcx]
	mov	ecx, dword ptr [rdi + rcx + 8]
	lea	rsi, [rsi]
	movzx	edi, cl
	cmp	edi, 9
	nop	
	je	.label_1622
	cmp	edi, 8
	lea	rsi, [rsi]
	jne	.label_1623
	nop	
	mov	rax, qword ptr [rax]
	inc	rax
	cmp	rax, r9
	jge	.label_1623
	lea	rsi, [rsi]
	shl	rax, 4
	mov	qword ptr [rsi + rax], r8
	mov	qword ptr [rsi + rax + 8], -1
	ret	
.label_1622:
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r9
	mov	rbp, rbp
	jge	.label_1623
	shl	rax, 4
	cmp	qword ptr [rsi + rax], r8
	jge	.label_1624
	nop	
	mov	qword ptr [rsi + rax + 8], r8
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rdx
	nop	
	mov	rdx, r9
	mov	rbp, rbp
	jmp	memcpy
.label_1624:
	test	ecx, 0x80000
	je	.label_1625
	cmp	qword ptr [rdx + rax], -1
	mov	rbp, rbp
	je	.label_1625
	lea	rsi, [rsi]
	shl	r9, 4
	mov	rdi, rsi
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	mov	rdx, r9
	nop	
	jmp	memcpy
.label_1625:
	mov	qword ptr [rsi + rax + 8], r8
.label_1623:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4175d0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	r14, r8
	nop	
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [r15]
	mov	rbp, rbp
	lea	rax, [rdi - 1]
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	test	rdi, rdi
	lea	rdi, [rdi]
	jle	.label_1626
	mov	rsp, rsp
	mov	rdi, qword ptr [r15 + 0x10]
	shl	rax, 4
	mov	rbp, rbp
	lea	rbx, [rax + rax*2]
	mov	rax, qword ptr [rdi + rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rax
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + rbx + 0x10]
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rdi, qword ptr [r14 + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + rbx + 0x10]
	call	free
	mov	rax, qword ptr [r15 + 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + rbx + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [r14 + 0x10], rcx
	mov	rsp, rsp
	movups	xmm0, xmmword ptr [rax + rbx + 0x18]
	movups	xmmword ptr [r14], xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [r15 + 0x10]
	nop	
	mov	rax, qword ptr [rax + rbx + 8]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	mov	rbp, rbp
	ret	
.label_1626:
	mov	edi, OFFSET FLAT:.str.26
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 0x555
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4176b0

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r13, r8
	mov	rsp, rsp
	mov	rbx, rcx
	nop	
	mov	rbp, rdi
	mov	rbp, rbp
	mov	r15, qword ptr [rbp + 0x98]
	mov	rsp, rsp
	mov	rax, qword ptr [r15]
	mov	r14, r13
	mov	rsp, rsp
	shl	r14, 4
	mov	ecx, dword ptr [rax + r14 + 8]
	mov	rsp, rsp
	test	cl, 8
	jne	.label_1632
	test	ecx, 0x100000
	nop	
	jne	.label_1638
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	movzx	ecx, cl
	lea	rdi, [rdi]
	cmp	ecx, 4
	mov	rbp, rbp
	jne	.label_1634
	mov	rsp, rsp
	mov	rax, qword ptr [rax + r14]
	shl	rax, 4
	mov	rdi, qword ptr [rax + rdx + 0x10]
	mov	rax, qword ptr [rax + rdx + 0x18]
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rbp, rbp
	sub	rbx, rdi
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1631
	cmp	rax, -1
	mov	r12, -1
	lea	rdi, [rdi]
	je	.label_1627
	cmp	rdi, -1
	mov	rbp, rbp
	je	.label_1627
	mov	rbp, rbp
	cmp	rax, rdi
	mov	rsp, rsp
	je	.label_1631
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + 0x30]
	nop	
	mov	rcx, qword ptr [rsp + 0x20]
	nop	
	mov	rsi, qword ptr [rcx]
	sub	rax, rsi
	lea	rsi, [rsi]
	cmp	rax, rbx
	jl	.label_1627
	mov	rax, qword ptr [rbp + 8]
	add	rsi, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 8]
	lea	rdi, [rax + rcx]
	mov	rdx, rbx
	call	memcmp
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	test	eax, eax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	jne	.label_1627
.label_1631:
	mov	rsp, rsp
	cmp	rax, rdi
	mov	rsp, rsp
	jne	.label_1636
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	nop	
	mov	rsi, r13
	mov	rbp, rbp
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1627
	mov	rax, qword ptr [r15 + 0x28]
	mov	rbp, rbp
	lea	rcx, [r13 + r13*2]
	mov	rax, qword ptr [rax + rcx*8 + 0x10]
	nop	
	mov	r12, qword ptr [rax]
	mov	rax, qword ptr [rsp + 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	rdi, qword ptr [rcx + rax*8]
	add	rdi, 8
	lea	rdi, [rdi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_1627
	jmp	.label_1636
.label_1632:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rcx, qword ptr [rbp + 0xb8]
	nop	
	mov	r14, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + 0x28]
	mov	rdi, r9
	mov	qword ptr [rsp + 0x18], r9
	mov	rbp, rbp
	mov	rsi, r13
	lea	rsi, [rsi]
	call	re_node_set_insert
	mov	r12, -2
	test	al, al
	je	.label_1627
	lea	rax, [r13 + r13*2]
	mov	r12, -1
	cmp	qword ptr [rbx + rax*8 + 8], 0
	jle	.label_1627
	add	r14, 8
	mov	rbp, rbp
	lea	r15, [rbx + rax*8 + 8]
	mov	rsp, rsp
	mov	r13, qword ptr [rbx + rax*8 + 0x10]
	mov	rsp, rsp
	mov	r12, -1
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	dword ptr [rax]
.label_1629:
	mov	rsp, rsp
	mov	rbx, qword ptr [r13 + rbp*8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	call	re_node_set_contains
	test	rax, rax
	je	.label_1628
	cmp	r12, -1
	lea	rdi, [rdi]
	jne	.label_1635
	mov	r12, rbx
.label_1628:
	lea	rsi, [rsi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbp, qword ptr [r15]
	jl	.label_1629
	mov	rbp, rbp
	jmp	.label_1627
.label_1638:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], r9
	mov	rcx, qword ptr [rbx]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rbx
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r13
	mov	rdx, rbp
	call	check_node_accept_bytes
	nop	
	movsxd	rbx, eax
.label_1636:
	mov	rbp, rbp
	test	rbx, rbx
	jne	.label_1637
.label_1634:
	mov	rbp, rbp
	add	r14, qword ptr [r15]
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax]
	mov	rdi, rbp
	lea	rdi, [rdi]
	mov	rsi, r14
	call	check_node_accept
	mov	r12, -1
	lea	rsi, [rsi]
	mov	ebx, 1
	lea	rdi, [rdi]
	test	al, al
	nop	
	je	.label_1627
.label_1637:
	mov	rax, qword ptr [r15 + 0x18]
	lea	rsi, [rsi]
	mov	r14, qword ptr [rax + r13*8]
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	add	rbx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_1630
	mov	rsp, rsp
	mov	r12, -1
	nop	
	cmp	rbx, qword ptr [rbp + 0xa8]
	jg	.label_1627
	nop	
	mov	rax, qword ptr [rbp + 0xb8]
	mov	rdi, qword ptr [rax + rbx*8]
	nop	
	test	rdi, rdi
	nop	
	je	.label_1627
	mov	rsp, rsp
	add	rdi, 8
	mov	rsi, r14
	nop	
	call	re_node_set_contains
	nop	
	test	rax, rax
	je	.label_1627
.label_1630:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	r12, r14
	lea	rdi, [rdi]
	jmp	.label_1627
.label_1635:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	mov	rsi, r12
	call	re_node_set_contains
	test	rax, rax
	mov	rsp, rsp
	jne	.label_1633
	lea	rdi, [rdi]
	mov	r9, rbp
	nop	
	mov	rdi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_1627
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdx, rbx
	mov	rcx, qword ptr [rsp + 8]
	mov	r8, qword ptr [rsp + 0x10]
	nop	
	call	push_fail_stack
	mov	rbp, rbp
	mov	rbx, -2
	test	eax, eax
	je	.label_1627
.label_1633:
	mov	r12, rbx
.label_1627:
	nop	
	mov	rax, r12
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x417ab0

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x18
	nop	
	mov	qword ptr [rsp + 0x10], r9
	mov	qword ptr [rsp + 8], r8
	lea	rdi, [rdi]
	mov	r15, rcx
	mov	r13, rdx
	lea	rdi, [rdi]
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rbp, rbp
	mov	r14, qword ptr [rbx]
	mov	rsp, rsp
	lea	rcx, [r14 + 1]
	mov	qword ptr [rbx], rcx
	mov	rax, qword ptr [rbx + 8]
	nop	
	cmp	rcx, rax
	mov	rsp, rsp
	jne	.label_1639
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rbp, rbp
	shl	rax, 5
	mov	rsp, rsp
	lea	rsi, [rax + rax*2]
	call	realloc
	mov	rbp, rbp
	test	rax, rax
	nop	
	je	.label_1640
	shl	qword ptr [rbx + 8], 1
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rax
.label_1639:
	nop	
	mov	rax, qword ptr [rbx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, r14
	shl	rcx, 4
	nop	
	lea	r12, [rcx + rcx*2]
	lea	rsi, [rsi]
	mov	qword ptr [rax + r12], rbp
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	nop	
	mov	qword ptr [rax + r12 + 8], r13
	mov	rsp, rsp
	shl	r15, 4
	mov	rdi, r15
	call	malloc
	mov	rcx, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + r12 + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + r12 + 0x10]
	mov	rbp, rbp
	test	rdi, rdi
	je	.label_1640
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 8]
	nop	
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbx + 0x10]
	lea	rcx, [r14 + r14*2]
	shl	rcx, 4
	lea	rdi, [rdi]
	lea	rdi, [rax + rcx + 0x18]
	mov	rsi, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rsp, 0x18
	mov	rbp, rbp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	jmp	re_node_set_init_copy
.label_1640:
	mov	eax, 0xc
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417c00
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
	#Procedure 0x417c30
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
	#Procedure 0x417c50
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417c60
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
	#Procedure 0x417c70
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
	#Procedure 0x417c90
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
	#Procedure 0x417ca0
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
	#Procedure 0x417cb0
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
	#Procedure 0x417cc0
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
	#Procedure 0x417cd0
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
	#Procedure 0x417d00
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
	#Procedure 0x417d20

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
	#Procedure 0x417d30
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
	#Procedure 0x417d50
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
	#Procedure 0x417d60
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
	#Procedure 0x417d70

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	call	__fpending
	nop	
	mov	r14, rax
	mov	rdi, rbx
	mov	rbp, rbp
	call	ferror_unlocked
	mov	ebp, eax
	mov	rdi, rbx
	nop	
	call	rpl_fclose
	mov	rbp, rbp
	test	ebp, ebp
	nop	
	je	.label_1651
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_1650
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_1650
.label_1651:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_1650
	test	cl, cl
	jne	.label_1650
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_1650:
	mov	rsp, rsp
	mov	eax, ebx
	pop	rbx
	pop	r14
	lea	rdi, [rdi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417e10

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_1652:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_1652
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_1653
	nop	word ptr [rax + rax]
.label_1654:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_1653:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_1654
	test	sil, sil
	mov	rsp, rsp
	je	.label_1655
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_1656
	xor	ecx, ecx
.label_1656:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_1654
.label_1655:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417e90

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_1658:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_1657
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_1658
.label_1657:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ed0

	.globl fd_safer_flag
	.type fd_safer_flag, @function
fd_safer_flag:
	nop
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	ebx, edi
	mov	rbp, rbp
	cmp	ebx, 2
	lea	rdi, [rdi]
	ja	.label_1659
	lea	rsi, [rsi]
	mov	edi, ebx
	lea	rsi, [rsi]
	call	dup_safer_flag
	mov	rbp, rbp
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	nop	
	mov	r15d, dword ptr [rbp]
	lea	rdi, [rdi]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	mov	rsp, rsp
	jmp	.label_1660
.label_1659:
	mov	eax, ebx
.label_1660:
	lea	rsi, [rsi]
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x417f40

	.globl dup_safer_flag
	.type dup_safer_flag, @function
dup_safer_flag:
	nop	
	and	esi, 0x80000
	mov	eax, 0x406
	cmovne	esi, eax
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	
	.section	.text
	.align	16
	#Procedure 0x417f60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbx
	lea	rdi, [rdi]
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_1662
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_1661
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_1663
.label_1661:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_1662
.label_1663:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_1662:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x417fb0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rax
	mov	rsp, rsp
	mov	edi, 0xe
	mov	rbp, rbp
	call	rpl_nl_langinfo
	test	rax, rax
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	nop	
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_6
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_1664
	nop	
	mov	rax, rcx
.label_1664:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x417ff0

	.globl dup_safer
	.type dup_safer, @function
dup_safer:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 3
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x418010

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rdi
	call	fileno
	mov	rbp, rbp
	test	eax, eax
	js	.label_1665
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_1667
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	mov	rsp, rsp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_1665
.label_1667:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_1665
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_1666
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_1666:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_1665:
	lea	rsi, [rsi]
	mov	rdi, rbx
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	pop	rbp
	nop	
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4180d0

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_1674
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	mov	rsp, rsp
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x90], xmm6
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_1674:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], rdx
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	nop	
	lea	rax, [rsp + 0xd0]
	nop	
	mov	qword ptr [rsp + 0xb8], rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xb4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], 0x10
	nop	
	cmp	esi, 0xb
	mov	rsp, rsp
	ja	.label_1677
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_1676
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_1668
	mov	rbp, rbp
	test	esi, esi
	jne	.label_1677
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_1679
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_1672
.label_1677:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_1669
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_1668
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_1673
.label_1676:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1668:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1678
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_1680
.label_1678:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1680:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_1673:
	nop	
	cmp	eax, 6
	jne	.label_1669
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1671
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_1675
.label_1669:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_1681
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_1670
.label_1679:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1672:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_1671:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_1675:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_1681:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_1670:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418370

	.globl rpl_fcntl_DUPFD
	.type rpl_fcntl_DUPFD, @function
rpl_fcntl_DUPFD:
	lea	rdi, [rdi]
	mov	ecx, esi
	xor	esi, esi
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	edx, ecx
	jmp	fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x418390

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	mov	rsp, rsp
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	lea	rsi, [rsi]
	js	.label_1686
	mov	esi, 0x406
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	lea	rsi, [rsi]
	test	ebx, ebx
	nop	
	jns	.label_1683
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_1683
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_1682
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_1685
.label_1683:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_1685
.label_1686:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_1685:
	test	ebx, ebx
	js	.label_1682
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_1682
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_1684
	or	ecx, 1
	nop	
	mov	esi, 2
	mov	rbp, rbp
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	mov	rsp, rsp
	call	fcntl
	mov	rbp, rbp
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_1682
.label_1684:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_1682:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4184a0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_1687
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_1687
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_1687:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4184d0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_1688
	mov	rbp, rbp
	ret	
.label_1688:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section .text
	.align	16
	#Procedure 0x4184f0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	lea	eax, [rdi - 0x27d8]
	lea	ecx, [rdi + 0x1d842]
	cmp	eax, 0xc
	cmovb	edi, ecx
	lea	rsi, [rsi]
	jmp	nl_langinfo
	nop	word ptr [rax + rax]
	nop	
	nop	word ptr cs:[rax + rax]
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
