	.section	.text
	.align	16
	#Procedure 0x401830

	.globl usage
	.type usage, @function
usage:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_8:
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
	#Procedure 0x401a00

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401a60

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.29
	nop	
.label_11:
	mov	edi, OFFSET FLAT:.str.12
	call	strcmp
	test	eax, eax
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	test	rsi, rsi
	jne	.label_11
.label_10:
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.12
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	je	.label_9
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.12
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.43
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
	#Procedure 0x401b80

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.14
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [dword ptr [rip + operating_mode]],  0
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  0
	mov	byte ptr [byte ptr [rip + delim]],  0
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	xor	ebx, ebx
	jmp	.label_12
.label_41:
	mov	byte ptr [byte ptr [rip + complement]],  1
	nop	word ptr cs:[rax + rax]
.label_12:
	mov	edx, OFFSET FLAT:.str.16
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x6d
	jg	.label_14
	cmp	eax, 0x61
	jle	.label_20
	lea	ecx, [rax - 0x62]
	cmp	ecx, 2
	jb	.label_24
	cmp	eax, 0x64
	je	.label_25
	cmp	eax, 0x66
	jne	.label_13
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	jne	.label_22
	mov	dword ptr [dword ptr [rip + operating_mode]],  2
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_12
	nop	
.label_14:
	cmp	eax, 0x79
	jle	.label_37
	cmp	eax, 0x7a
	je	.label_39
	cmp	eax, 0x80
	je	.label_40
	cmp	eax, 0x81
	je	.label_41
	jmp	.label_13
.label_37:
	cmp	eax, 0x6e
	je	.label_12
	cmp	eax, 0x73
	jne	.label_13
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	jmp	.label_12
.label_24:
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	jne	.label_22
	mov	dword ptr [dword ptr [rip + operating_mode]],  1
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_12
.label_39:
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	jmp	.label_12
.label_40:
	mov	byte ptr [byte ptr [rip + output_delimiter_specified]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rdi], 0
	mov	eax, 1
	je	.label_31
	call	strlen
.label_31:
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  rax
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	call	xstrdup
	mov	qword ptr [word ptr [rip + output_delimiter_string]],  rax
	jmp	.label_12
.label_25:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rax], 0
	je	.label_19
	cmp	byte ptr [rax + 1], 0
	jne	.label_17
.label_19:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	al, byte ptr [rax]
	mov	byte ptr [byte ptr [rip + delim]],  al
	mov	bl, 1
	jmp	.label_12
.label_20:
	cmp	eax, -1
	jne	.label_28
	mov	eax,  dword ptr [dword ptr [rip + operating_mode]]
	test	eax, eax
	je	.label_21
	test	bl, bl
	je	.label_30
	cmp	eax, 2
	jne	.label_32
.label_30:
	cmp	eax, 2
	je	.label_34
	test	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	jne	.label_36
.label_34:
	cmp	eax, 2
	setne	al
	movzx	eax, al
	shl	eax, 2
	movzx	ecx,  byte ptr [byte ptr [rip + complement]]
	and	ecx, 1
	lea	esi, [rax + rcx*2]
	mov	rdi, r14
	call	set_fields
	test	bl, bl
	jne	.label_15
	mov	byte ptr [byte ptr [rip + delim]],  9
.label_15:
	cmp	qword ptr [word ptr [rip + output_delimiter_string]],  0
	jne	.label_18
	mov	al,  byte ptr [byte ptr [rip + delim]]
	mov	byte ptr [byte ptr [rip + main.dummy]],  al
	mov	byte ptr [byte ptr [rip + label_23]],  0
	mov	qword ptr [word ptr [rip + output_delimiter_string]], OFFSET FLAT:main.dummy
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  1
.label_18:
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jne	.label_29
	mov	edi, OFFSET FLAT:.str_1
	call	cut_file
	mov	bl, al
	jmp	.label_35
.label_29:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	mov	bl, 1
	jmp	.label_38
	nop	dword ptr [rax + rax]
.label_27:
	cdqe	
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_38:
	cmp	eax, ebp
	jl	.label_27
.label_35:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_16
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	jne	.label_16
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
.label_16:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_28:
	cmp	eax, 0xffffff7d
	je	.label_33
	cmp	eax, 0xffffff7e
	jne	.label_13
	xor	edi, edi
	call	usage
.label_33:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.22
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.20
	mov	r9d, OFFSET FLAT:.str.21
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_13:
	mov	edi, 1
	call	usage
.label_21:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	jmp	.label_26
.label_32:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	jmp	.label_26
.label_36:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_26
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	jmp	.label_26
.label_17:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
.label_26:
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401f10

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_45
	cmp	byte ptr [rbx + 1], 0
	je	.label_48
.label_45:
	mov	esi, OFFSET FLAT:.str.54
	mov	rdi, rbx
	call	fopen
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_46
	jmp	.label_43
.label_48:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_46:
	mov	esi, 2
	mov	rdi, rbp
	call	fadvise
	mov	rdi, rbp
	call	cut_stream
	mov	rdi, rbp
	call	ferror_unlocked
	test	eax, eax
	jne	.label_43
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_44
	cmp	byte ptr [rbx + 1], 0
	je	.label_47
.label_44:
	mov	rdi, rbp
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	jne	.label_42
.label_43:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_42:
	mov	al, bpl
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_47:
	mov	rdi, rbp
	call	clearerr_unlocked
	mov	bpl, 1
	jmp	.label_42
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl cut_stream
	.type cut_stream, @function
cut_stream:
	cmp	dword ptr [dword ptr [rip + operating_mode]],  1
	jne	.label_49
	jmp	cut_bytes
.label_49:
	jmp	cut_fields
	.section	.text
	.align	16
	#Procedure 0x401fe0

	.globl cut_bytes
	.type cut_bytes, @function
cut_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdi
	mov	qword ptr [rsp], 0
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	xor	r12d, r12d
	lea	r14, [rsp]
	jmp	.label_55
	nop	dword ptr [rax]
.label_51:
	mov	edi, ebp
	call	putchar_unlocked
	mov	qword ptr [rsp], 0
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_55:
	xor	r13d, r13d
	jmp	.label_56
.label_50:
	mov	edi, ebp
	call	putchar_unlocked
	mov	r13b, bl
	nop	dword ptr [rax]
.label_56:
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edi, 0xa
	cmovne	edi, r12d
	cmp	ebp, edi
	je	.label_51
	cmp	ebp, -1
	je	.label_54
	mov	rdi, r14
	call	next_item
	mov	rbx, qword ptr [rsp]
	mov	rdi, rbx
	call	print_kth
	test	al, al
	je	.label_56
	movzx	eax,  byte ptr [byte ptr [rip + output_delimiter_specified]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_57
	test	r13b, 1
	jne	.label_52
	mov	bl, 1
	jmp	.label_50
.label_57:
	mov	bl, r13b
	jmp	.label_50
.label_52:
	mov	rdi, rbx
	call	is_range_start_index
	test	al, al
	mov	bl, 1
	je	.label_50
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_50
.label_54:
	cmp	qword ptr [rsp], 0
	je	.label_53
	call	putchar_unlocked
.label_53:
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
	#Procedure 0x4020f0

	.globl cut_fields
	.type cut_fields, @function
cut_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, rdi
	mov	qword ptr [rsp + 0x20], 1
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	call	getc_unlocked
	cmp	eax, -1
	je	.label_62
	mov	edi, eax
	mov	rsi, r15
	call	ungetc
	movzx	r14d,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	r14d, 1
	mov	dword ptr [rsp + 0x14], r14d
	mov	edi, 1
	call	print_kth
	movzx	eax, al
	xor	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	r13d, r13d
	mov	dword ptr [rsp + 0x1c], 0
	xor	r12d, r12d
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_69:
	lea	rdi, [rsp + 0x20]
	call	next_item
.label_75:
	cmp	r14d, dword ptr [rsp + 0x18]
	je	.label_58
	cmp	qword ptr [rsp + 0x20], 1
	jne	.label_58
	cmp	r14d, dword ptr [rsp + 0x18]
	sete	al
	cmp	qword ptr [rsp + 0x20], 1
	setne	r14b
	or	r14b, al
	nop	word ptr cs:[rax + rax]
.label_82:
	movzx	r8d,  byte ptr [byte ptr [rip + delim]]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	xor	edx, edx
	mov	rcx, -1
	call	getndelim2
	mov	rbx, rax
	test	rbx, rbx
	js	.label_79
	je	.label_81
	mov	rbp,  qword ptr [word ptr [rip + field_1_buffer]]
	movsx	edi, byte ptr [rbp + rbx - 1]
	call	to_uchar
	movzx	eax, al
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	eax, ecx
	je	.label_59
	xor	r12d, r12d
	movzx	eax,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	eax, 1
	cmp	eax, 1
	je	.label_65
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rax,  qword ptr [word ptr [rip + field_1_buffer]]
	movsx	eax, byte ptr [rax + rbx - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	edi, 0xa
	cmovne	edi, r13d
	cmp	eax, edi
	je	.label_73
	call	putchar_unlocked
.label_73:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	r12d, 0xa
	cmovne	r12d, r13d
.label_65:
	test	r14b, r14b
	je	.label_82
	mov	r14d, dword ptr [rsp + 0x14]
	jmp	.label_58
.label_59:
	mov	edi, 1
	call	print_kth
	test	al, al
	je	.label_63
	dec	rbx
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	call	fwrite_unlocked
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	eax, ecx
	mov	r14d, dword ptr [rsp + 0x14]
	jne	.label_68
	mov	rdi, r15
	call	getc_unlocked
	cmp	eax, -1
	je	.label_77
	mov	edi, eax
	mov	rsi, r15
	call	ungetc
.label_68:
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_77
.label_63:
	mov	r14d, dword ptr [rsp + 0x14]
.label_77:
	lea	rdi, [rsp + 0x20]
	call	next_item
	xor	r12d, r12d
.label_58:
	mov	rdi, qword ptr [rsp + 0x20]
	call	print_kth
	test	al, al
	je	.label_60
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	je	.label_80
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
.label_80:
	mov	rdi, r15
	call	getc_unlocked
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	mov	dl, 1
	mov	dword ptr [rsp + 0x1c], edx
	cmp	eax, ecx
	jne	.label_74
	mov	ebp, r12d
	mov	r12d, eax
	jmp	.label_64
	nop	dword ptr [rax]
.label_60:
	mov	ebp, r12d
	mov	rdi, r15
	call	getc_unlocked
	mov	r12d, eax
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	cmp	r12d, eax
	je	.label_64
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	eax, 0xa
	cmovne	eax, r13d
	cmp	r12d, -1
	je	.label_64
	cmp	r12d, eax
	jne	.label_60
	jmp	.label_64
	nop	dword ptr [rax + rax]
.label_74:
	mov	ebx, eax
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	eax, 0xa
	cmovne	eax, r13d
	cmp	ebx, -1
	je	.label_67
	cmp	ebx, eax
	je	.label_67
	mov	edi, ebx
	call	putchar_unlocked
	mov	rdi, r15
	call	getc_unlocked
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	eax, ecx
	mov	r12d, ebx
	jne	.label_74
	mov	ebp, ebx
	mov	r12d, eax
	jmp	.label_64
.label_67:
	mov	ebp, r12d
	mov	r12d, ebx
	nop	word ptr cs:[rax + rax]
.label_64:
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	ecx, 0xa
	cmovne	ecx, r13d
	cmp	r12d, eax
	jne	.label_76
	cmp	eax, ecx
	jne	.label_76
	mov	rdi, r15
	call	getc_unlocked
	cmp	eax, -1
	je	.label_71
	mov	edi, eax
	mov	rsi, r15
	call	ungetc
.label_76:
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	cmp	r12d, eax
	je	.label_69
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	eax, 0xa
	cmovne	eax, r13d
	cmp	r12d, -1
	sete	bl
	je	.label_72
	cmp	r12d, eax
	jne	.label_75
	jmp	.label_72
.label_71:
	mov	r12d, 0xffffffff
	mov	bl, 1
.label_72:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_78
	movzx	eax,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	cmp	qword ptr [rsp + 0x20], 1
	je	.label_70
	nop	word ptr cs:[rax + rax]
.label_78:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	eax, 0xa
	cmovne	eax, r13d
	cmp	r12d, eax
	je	.label_61
	cmp	ebp, eax
	jne	.label_61
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	ecx, eax
	jne	.label_70
.label_61:
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edi, 0xa
	cmovne	edi, r13d
	call	putchar_unlocked
.label_70:
	test	bl, bl
	jne	.label_62
	mov	qword ptr [rsp + 0x20], 1
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_75
.label_79:
	mov	rdi,  qword ptr [word ptr [rip + field_1_buffer]]
	call	free
	mov	qword ptr [word ptr [rip + field_1_buffer]],  0
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	jne	.label_62
	mov	rdi, r15
	call	feof_unlocked
	test	eax, eax
	je	.label_66
.label_62:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_81:
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cut_fields
	call	__assert_fail
.label_66:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x402550

	.globl next_item
	.type next_item, @function
next_item:
	mov	rcx, qword ptr [rdi]
	inc	rcx
	mov	qword ptr [rdi], rcx
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	rcx, qword ptr [rax + 8]
	jbe	.label_83
	add	rax, 0x10
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_83:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402580

	.globl print_kth
	.type print_kth, @function
print_kth:
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	qword ptr [rax], rdi
	setbe	al
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x402590

	.globl is_range_start_index
	.type is_range_start_index, @function
is_range_start_index:
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	qword ptr [rax], rdi
	sete	al
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4025a0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x4025b0

	.globl set_fields
	.type set_fields, @function
set_fields:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	dword ptr [rsp + 8], esi
	mov	r12, rdi
	xor	ebp, ebp
	and	esi, 1
	mov	dword ptr [rsp + 0xc], esi
	mov	ebx, 0
	je	.label_109
	movzx	ecx, byte ptr [r12]
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_118
	movzx	eax, byte ptr [r12 + 1]
	neg	eax
.label_118:
	lea	rcx, [r12 + 1]
	test	eax, eax
	sete	bl
	movzx	ebp, bl
	cmove	r12, rcx
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x20], 0
	mov	al, bl
	mov	dword ptr [rsp + 0x24], eax
	jmp	.label_89
.label_109:
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_114:
	mov	dword ptr [rsp + 0x24], eax
	inc	r12
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r15
.label_89:
	mov	dword ptr [rsp + 0x1c], ebx
	mov	r15b, bl
	and	r15b, 1
	xor	r14d, r14d
	jmp	.label_97
	nop	
.label_88:
	inc	r12
	mov	r14b, 1
.label_97:
	movsx	ebx, byte ptr [r12]
	cmp	ebx, 0x2c
	je	.label_99
	movzx	eax, bl
	cmp	eax, 0x2d
	je	.label_102
	mov	edi, ebx
	call	to_uchar_0
	movzx	r13d, al
	call	__ctype_b_loc
	test	bl, bl
	je	.label_99
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r13*2]
	and	eax, 1
	test	ax, ax
	jne	.label_99
	add	ebx, -0x30
	cmp	ebx, 9
	ja	.label_86
	cmp	qword ptr [word ptr [rip + set_fields.num_start]],  0
	setne	al
	test	r14b, al
	jne	.label_110
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  r12
.label_110:
	mov	al, 1
	test	r15b, r15b
	je	.label_117
	mov	dword ptr [rsp + 0x20], eax
	jmp	.label_119
	nop	dword ptr [rax]
.label_117:
	mov	dword ptr [rsp + 0x24], eax
.label_119:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	ja	.label_90
	lea	rax, [rbp + rbp*4]
	movsx	rcx, byte ptr [r12]
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, rbp
	cmovae	rbp, rax
	jb	.label_90
	cmp	rbp, -1
	jne	.label_88
	jmp	.label_90
	nop	word ptr cs:[rax + rax]
.label_99:
	mov	ebx, dword ptr [rsp + 0x1c]
	test	bl, 1
	jne	.label_93
	test	rbp, rbp
	je	.label_94
	mov	rdi, rbp
	mov	rsi, rbp
	call	add_range_pair
	mov	r15, qword ptr [rsp + 0x10]
	jmp	.label_96
	nop	word ptr [rax + rax]
.label_93:
	mov	eax, dword ptr [rsp + 0x20]
	mov	ecx, dword ptr [rsp + 0x24]
	or	cl, al
	mov	eax, ecx
	and	al, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 0x10]
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_95
	test	al, al
	je	.label_103
.label_95:
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_104
	mov	rsi, -1
	mov	rdi, r15
	jmp	.label_100
	nop	dword ptr [rax]
.label_102:
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_106
	mov	eax, dword ptr [rsp + 0x24]
	and	al, 1
	sete	cl
	test	rbp, rbp
	jne	.label_108
	test	cl, cl
	je	.label_112
.label_108:
	test	al, al
	mov	r15d, 1
	cmovne	r15, rbp
	mov	bl, 1
	mov	eax, dword ptr [rsp + 0x24]
	jmp	.label_114
.label_104:
	cmp	rbp, r15
	jb	.label_120
	mov	rdi, r15
	mov	rsi, rbp
.label_100:
	call	add_range_pair
	xor	ebx, ebx
.label_96:
	cmp	byte ptr [r12], 0
	je	.label_121
	mov	dword ptr [rsp + 0x20], 0
	xor	eax, eax
	jmp	.label_114
.label_121:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	test	rsi, rsi
	je	.label_85
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	edx, 0x10
	mov	ecx, OFFSET FLAT:compare_ranges
	call	qsort
	xor	ebx, ebx
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	je	.label_92
	nop	dword ptr [rax + rax]
.label_113:
	mov	rbp, rbx
	lea	rbx, [rbp + 1]
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jae	.label_98
.label_107:
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	rax, rbx
	shl	rax, 4
	mov	rsi, rbp
	shl	rsi, 4
	mov	rdx, qword ptr [rcx + rsi + 8]
	cmp	qword ptr [rcx + rax], rdx
	ja	.label_98
	lea	rsi, [rcx + rsi + 8]
	mov	rcx, qword ptr [rcx + rax + 8]
	cmp	rcx, rdx
	cmova	rdx, rcx
	mov	qword ptr [rsi], rdx
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rcx + rax]
	lea	rsi, [rcx + rax + 0x10]
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbx
	shl	rdx, 4
	add	rdx, -0x10
	call	memmove
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	dec	rax
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	cmp	rbx, rax
	jb	.label_107
.label_98:
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jb	.label_113
.label_92:
	mov	eax, dword ptr [rsp + 8]
	test	al, 2
	je	.label_116
	call	complement_rp
.label_116:
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	inc	rsi
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rsi, 4
	call	xrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 8], -1
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	shl	rax, 4
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [rax + rcx - 0x10], -1
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_90:
	mov	rbx,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rdi, rbx
	call	strspn
	mov	rdi, rbx
	mov	rsi, rax
	call	xstrndup
	mov	rbx, rax
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_105
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_101
.label_86:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_111
	mov	esi, OFFSET FLAT:.str.11_0
	jmp	.label_123
.label_105:
	mov	esi, OFFSET FLAT:.str.8_0
.label_101:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rdi, rbx
	call	free
	mov	edi, 1
	call	usage
.label_111:
	mov	esi, OFFSET FLAT:.str.10_0
.label_123:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_94:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_115
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_84
.label_103:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_84
.label_106:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_87
	mov	esi, OFFSET FLAT:.str.2_0
	jmp	.label_84
.label_112:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_91
	mov	esi, OFFSET FLAT:.str.4_0
	jmp	.label_84
.label_115:
	mov	esi, OFFSET FLAT:.str.3_0
	jmp	.label_84
.label_120:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	jmp	.label_84
.label_87:
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_84
.label_91:
	mov	esi, OFFSET FLAT:.str.3_0
.label_84:
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
.label_85:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_122
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_84
.label_122:
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_84
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402a90

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402aa0

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	cmp	rax,  qword ptr [word ptr [rip + n_frp_allocated]]
	jne	.label_124
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	esi, OFFSET FLAT:n_frp_allocated
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
.label_124:
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax], rbx
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax + 8], r14
	inc	qword ptr [word ptr [rip + n_frp]]
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b20

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	setg	al
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402b40

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	r15,  qword ptr [word ptr [rip + n_frp]]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rsi, qword ptr [r14]
	cmp	rsi, 2
	jb	.label_125
	dec	rsi
	mov	edi, 1
	call	add_range_pair
.label_125:
	cmp	r15, 2
	jb	.label_129
	lea	r12, [r15 - 1]
	lea	rbx, [r14 + 0x10]
	nop	dword ptr [rax + rax]
.label_127:
	mov	rdi, qword ptr [rbx - 8]
	mov	rsi, qword ptr [rbx]
	inc	rdi
	cmp	rdi, rsi
	je	.label_128
	dec	rsi
	call	add_range_pair
.label_128:
	add	rbx, 0x10
	dec	r12
	jne	.label_127
.label_129:
	shl	r15, 4
	mov	rdi, qword ptr [r15 + r14 - 8]
	cmp	rdi, -1
	je	.label_126
	inc	rdi
	mov	rsi, -1
	call	add_range_pair
.label_126:
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c00
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	push	rax
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	ret	
	.section	.text
	.align	16
	#Procedure 0x402c30
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c40
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402c50

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_130
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_132
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_132
.label_130:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_131
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_132:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_133
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_131:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_133:
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
	#Procedure 0x402d10

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d20

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_134
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_134:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402d40

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x68
	mov	r12d, r9d
	mov	dword ptr [rsp + 0x48], r8d
	mov	rax, rcx
	mov	r15, rdx
	mov	r13, rsi
	mov	rbp, rdi
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_149
	mov	qword ptr [rsp + 0x50], rax
	mov	rbx, qword ptr [r13]
	jmp	.label_155
.label_149:
	cmp	rax, 0x40
	mov	ebx, 0x40
	cmovb	rbx, rax
	mov	qword ptr [rsp + 0x50], rax
	mov	rdi, rbx
	call	malloc
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	je	.label_142
.label_155:
	mov	r14, rbx
	sub	r14, r15
	jae	.label_144
	mov	qword ptr [rsp + 0x30], -1
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, rcx
	jmp	.label_141
.label_144:
	mov	qword ptr [rsp + 0x30], -1
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x28], r13
	jne	.label_150
	cmp	rbx, qword ptr [rsp + 0x50]
	jb	.label_150
	mov	r15, rcx
	jmp	.label_141
.label_150:
	mov	rbp, qword ptr [rsp + 0xa0]
	mov	rax, r15
	mov	r15, rcx
	mov	qword ptr [rsp + 0x10], rax
	lea	rcx, [r15 + rax]
	mov	qword ptr [rsp + 0x58], rcx
	cmp	r12d, -1
	mov	edx, r12d
	mov	ecx, dword ptr [rsp + 0x48]
	cmove	edx, ecx
	cmp	ecx, -1
	cmove	edx, r12d
	mov	dword ptr [rsp + 0x3c], edx
	cmove	ecx, r12d
	mov	dword ptr [rsp + 0x48], ecx
	mov	r12d, ecx
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp + 0x4c], 0
	mov	dword ptr [rsp + 0x1c], eax
	nop	dword ptr [rax + rax]
.label_138:
	mov	rdi, rbp
	lea	rsi, [rsp + 0x60]
	call	freadptr
	mov	r13, rax
	test	r13, r13
	je	.label_153
	cmp	r12d, -1
	je	.label_154
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdi, r13
	mov	esi, r12d
	mov	edx, dword ptr [rsp + 0x3c]
	call	memchr2
	test	rax, rax
	je	.label_154
	mov	ecx, 1
	sub	rcx, r13
	add	rcx, rax
	mov	qword ptr [rsp + 0x60], rcx
	mov	al, 1
	jmp	.label_143
	nop	dword ptr [rax + rax]
.label_153:
	mov	rdi, rbp
	call	getc_unlocked
	cmp	eax, -1
	je	.label_145
	cmp	eax, dword ptr [rsp + 0x3c]
	mov	dl, 1
	mov	cl, 1
	je	.label_146
	mov	ecx, dword ptr [rsp + 0x4c]
.label_146:
	cmp	eax, r12d
	mov	dword ptr [rsp + 0x1c], eax
	je	.label_148
	mov	dl, cl
.label_148:
	mov	qword ptr [rsp + 0x60], 1
	mov	al, dl
.label_143:
	mov	dword ptr [rsp + 0x4c], eax
.label_154:
	mov	rdi, qword ptr [rsp + 0x58]
	cmp	rbx, qword ptr [rsp + 0x50]
	jae	.label_151
	mov	rax, qword ptr [rsp + 0x60]
	lea	rcx, [rax + 1]
	cmp	r14, rcx
	jae	.label_151
	lea	rdx, [rbx + 0x40]
	lea	rsi, [rbx + rbx]
	cmp	rbx, 0x40
	cmovb	rsi, rdx
	sub	rdi, r15
	mov	rdx, rsi
	sub	rdx, rdi
	cmp	rdx, rcx
	lea	rax, [rdi + rax + 1]
	cmovae	rax, rsi
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	rax, rcx
	mov	r12, rax
	cmova	r12, rcx
	cmp	rbx, rax
	cmovae	r12, rcx
	cmp	r12, qword ptr [rsp + 0x10]
	jns	.label_156
	mov	r12, qword ptr [rsp + 8]
	cmp	rbx, r12
	je	.label_141
.label_156:
	mov	rbp, r15
	mov	r15, rdi
	mov	rdi, rbp
	mov	rsi, r12
	call	realloc
	test	rax, rax
	je	.label_152
	mov	r14, r12
	mov	rdi, r15
	sub	r14, rdi
	add	rdi, rax
	mov	r15, rax
	mov	rbx, r12
	mov	r12d, dword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xa0]
.label_151:
	cmp	r14, 2
	jb	.label_137
	mov	qword ptr [rsp + 0x40], rbx
	mov	ebp, r12d
	mov	r12, r15
	lea	rbx, [r14 - 1]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, rbx
	cmovb	rbx, rax
	test	r13, r13
	je	.label_139
	mov	r15, rdi
	mov	rsi, r13
	mov	rdx, rbx
	call	memcpy
	mov	rdi, r15
	jmp	.label_147
	nop	dword ptr [rax]
.label_137:
	mov	qword ptr [rsp + 0x58], rdi
	jmp	.label_135
.label_139:
	mov	eax, dword ptr [rsp + 0x1c]
	mov	byte ptr [rdi], al
.label_147:
	add	rdi, rbx
	mov	qword ptr [rsp + 0x58], rdi
	sub	r14, rbx
	mov	r15, r12
	mov	r12d, ebp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0xa0]
.label_135:
	test	r13, r13
	je	.label_136
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rdi, rbp
	call	freadseek
	test	eax, eax
	jne	.label_141
.label_136:
	mov	eax, dword ptr [rsp + 0x4c]
	test	al, 1
	je	.label_138
	jmp	.label_140
.label_152:
	mov	r15, rbp
	jmp	.label_141
.label_145:
	cmp	qword ptr [rsp + 0x58], r15
	je	.label_141
.label_140:
	mov	rcx, qword ptr [rsp + 0x58]
	mov	byte ptr [rcx], 0
	mov	rax, qword ptr [rsp + 0x10]
	add	rax, r15
	sub	rcx, rax
	mov	qword ptr [rsp + 0x30], rcx
.label_141:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r15
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rax], rbx
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	rcx, 1
	sbb	rax, rax
	or	rax, rcx
.label_142:
	add	rsp, 0x68
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_164
	mov	rdx, rcx
	pop	rbx
	pop	r14
	jmp	memchr
.label_164:
	mov	eax, edi
	and	eax, 7
	test	rcx, rcx
	je	.label_160
	nop	word ptr cs:[rax + rax]
.label_167:
	test	rax, rax
	je	.label_160
	movzx	eax, byte ptr [rdi]
	cmp	eax, esi
	je	.label_163
	cmp	eax, r8d
	je	.label_165
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	lea	rcx, [rcx - 1]
	jne	.label_167
.label_160:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	cmp	rcx, 8
	jb	.label_158
	mov	r10, rax
	shl	r10, 0x10
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	or	r9, r10
	mov	r11, rax
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_166:
	mov	rdx, rcx
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	xor	rcx, r14
	and	rcx, rdi
	lea	rdi, [rax + r10]
	xor	rax, r14
	and	rax, rdi
	or	rax, rcx
	lea	rdi, [rbx + 8]
	lea	rcx, [rdx - 8]
	and	rax, r14
	cmovne	rdi, rbx
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_158
	cmp	rcx, 7
	ja	.label_166
.label_158:
	xor	eax, eax
	test	rcx, rcx
	je	.label_162
	xor	eax, eax
.label_161:
	movzx	edx, byte ptr [rdi]
	cmp	edx, esi
	je	.label_157
	cmp	edx, r8d
	je	.label_159
	inc	rdi
	dec	rcx
	jne	.label_161
	jmp	.label_162
.label_163:
	mov	rax, rdi
	jmp	.label_162
.label_165:
	mov	rax, rdi
	jmp	.label_162
.label_157:
	mov	rax, rdi
	jmp	.label_162
.label_159:
	mov	rax, rdi
.label_162:
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4031b0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_169
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_170
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_170
	mov	esi, OFFSET FLAT:.str.2_1
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_168
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_168:
	mov	rbx, r14
.label_170:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_169:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260
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
	#Procedure 0x4032a0
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
	#Procedure 0x4032b0
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
	#Procedure 0x4032c0

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
	#Procedure 0x403300
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
	#Procedure 0x403320

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_171
	test	rdx, rdx
	je	.label_171
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_171:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403350
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
	#Procedure 0x4033d0

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
.label_249:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_232
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_212]]
.label_441:
	mov	r12d, r11d
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	edi, OFFSET FLAT:.str.12_1
	mov	esi, r13d
	call	gettext_quote
	mov	r11d, r12d
	mov	r9, rbp
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x88], rax
.label_442:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_234
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_234
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_264:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_252
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_252:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_264
.label_234:
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
	jmp	.label_190
.label_434:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_190
.label_437:
	mov	al, 1
.label_435:
	mov	r15b, 1
.label_438:
	test	r15b, 1
	mov	cl, 1
	je	.label_292
	mov	cl, al
.label_292:
	mov	al, cl
.label_436:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_272
	test	r10, r10
	je	.label_293
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_176
.label_272:
	xor	ecx, ecx
	jmp	.label_176
.label_439:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_178
	test	r10, r10
	je	.label_186
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_188
.label_440:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_190
.label_293:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_176:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_190
.label_178:
	xor	eax, eax
	jmp	.label_188
.label_186:
	mov	eax, 1
.label_188:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_190:
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
	jmp	.label_287
	nop	dword ptr [rax + rax]
.label_193:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_287:
	cmp	rbp, -1
	je	.label_276
	cmp	rsi, rbp
	jne	.label_278
	jmp	.label_235
	nop	dword ptr [rax]
.label_276:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_235
.label_278:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_285
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_241
	cmp	rbp, -1
	jne	.label_241
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
.label_241:
	cmp	rbx, rbp
	jbe	.label_184
.label_285:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_220:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_189
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_191]]
.label_452:
	test	rsi, rsi
	jne	.label_195
	jmp	.label_197
	nop	word ptr cs:[rax + rax]
.label_184:
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
	jne	.label_217
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_220
	jmp	.label_229
.label_217:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_220
.label_456:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_243
	test	rsi, rsi
	jne	.label_247
	cmp	rbp, 1
	je	.label_197
	xor	r15d, r15d
	jmp	.label_173
.label_445:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_250
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
	cmp	edi, 2
	jne	.label_259
	mov	al, r11b
	and	al, 1
	jne	.label_263
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_266
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_266:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_244:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_277
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_277:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_200
.label_446:
	mov	bl, 0x62
	jmp	.label_230
.label_447:
	mov	cl, 0x74
	jmp	.label_290
.label_448:
	mov	bl, 0x76
	jmp	.label_230
.label_449:
	mov	bl, 0x66
	jmp	.label_230
.label_450:
	mov	cl, 0x72
	jmp	.label_290
.label_453:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_286
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_175
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
	jae	.label_181
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_181:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_198
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_207
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_207:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_216
.label_454:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_219
	cmp	r14d, 2
	jne	.label_224
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_175
.label_224:
	mov	rdi, r14
	jmp	.label_195
.label_455:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_228
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_175
	mov	rdi, r14
	jmp	.label_231
.label_189:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_236
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
.label_265:
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
	ja	.label_255
	test	dl, dl
	je	.label_255
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_173
.label_243:
	test	rsi, rsi
	jne	.label_258
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_258
.label_197:
	mov	dl, 1
.label_451:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_229
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_173
.label_250:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_195
	mov	r14, rdi
	inc	rsi
	jmp	.label_287
.label_286:
	mov	rdi, r14
.label_216:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_173
.label_228:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_290
.label_231:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_223
.label_290:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_229
.label_230:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_173
	jmp	.label_183
.label_236:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_185
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_185:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_284:
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
	je	.label_211
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_225
	cmp	rbp, -2
	je	.label_226
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_227
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_245:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_238
	bt	rsi, rdx
	jb	.label_242
.label_238:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_245
.label_227:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_237
	xor	r15d, r15d
.label_237:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_284
	jmp	.label_265
.label_258:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_173
.label_219:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_195
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_195
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_195
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_279
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_282
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_288
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_288:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_239
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_179
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_213
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_213:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_173
.label_195:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_173:
	test	r12b, r12b
	je	.label_274
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_202
	jmp	.label_206
	nop	word ptr cs:[rax + rax]
.label_274:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_206
.label_202:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_214
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_223
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_206:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_183
	jmp	.label_223
.label_214:
	mov	bl, r13b
	mov	rsi, r14
.label_183:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_229
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_240
	mov	al, r11b
	and	al, 1
	jne	.label_240
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_246
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_246:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_251
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_251:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_260:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_240:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_268:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_187
.label_247:
	xor	r15d, r15d
	jmp	.label_173
.label_255:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_281
	nop	word ptr cs:[rax + rax]
.label_283:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_281:
	test	dl, dl
	je	.label_289
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_177
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_275
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_275:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_177
	nop	word ptr [rax + rax]
.label_289:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_175
	cmp	r14d, 2
	jne	.label_192
	mov	al, r11b
	and	al, 1
	jne	.label_192
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_194
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_194:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_199:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_209
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_209:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_192:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_201
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_201:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_280
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_280:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_233
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_233:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_177:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_223
	test	r11b, 1
	je	.label_256
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_257
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_262
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_262:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_222
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_222:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	r14, rdi
.label_257:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_283
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_283
.label_223:
	test	r11b, 1
	je	.label_253
	and	al, 1
	jne	.label_253
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_269
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_269:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_174
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_174:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_187
	nop	dword ptr [rax + rax]
.label_253:
	mov	bl, r13b
	mov	r14, rdi
.label_187:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_193
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_193
.label_259:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_200
.label_263:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_200:
	cmp	rcx, r10
	jae	.label_204
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_204:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_210
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_218
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_205
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_273
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_273:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_203
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_203:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_173
.label_210:
	xor	r15d, r15d
	jmp	.label_173
.label_218:
	xor	r15d, r15d
	jmp	.label_173
.label_205:
	xor	r15d, r15d
	jmp	.label_173
.label_211:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_248
.label_225:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_254
.label_226:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_261
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_270:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_267
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_270
	xor	r15d, r15d
	jmp	.label_248
.label_261:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_254:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_248:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_265
.label_267:
	xor	r15d, r15d
	jmp	.label_248
.label_279:
	xor	r15d, r15d
	jmp	.label_173
.label_282:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_173
	nop	dword ptr [rax + rax]
.label_235:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_208
	or	dl, al
	je	.label_175
.label_208:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_182
	or	dl, al
	jne	.label_182
	test	r8b, 1
	jne	.label_221
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_182
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_249
.label_182:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_196
	test	cl, cl
	jne	.label_196
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_196
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_215:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_291
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_291:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_215
.label_196:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_180
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_180
.label_229:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_172:
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
.label_271:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_180:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_242:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_172
.label_175:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_172
.label_221:
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
	jmp	.label_271
.label_232:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4045e0
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
	#Procedure 0x4045f0

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
	je	.label_294
	mov	qword ptr [rax], rbx
.label_294:
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
	#Procedure 0x4046f0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_295
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_298:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_298
.label_295:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_299
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_296]], OFFSET FLAT:slot0
.label_299:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_297
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_297:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404790

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x4047a0

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
	js	.label_300
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_303
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_306
.label_303:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_302
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
	jne	.label_301
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_301:
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
.label_306:
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
	ja	.label_304
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_305
	mov	rdi, rbx
	call	free
.label_305:
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
.label_304:
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
.label_300:
	call	abort
.label_302:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404970

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404980
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
	#Procedure 0x404990
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
	#Procedure 0x4049a0

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
	#Procedure 0x4049e0

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
	je	.label_307
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
.label_307:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404a40

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
	#Procedure 0x404a80
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
	#Procedure 0x404aa0
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
	#Procedure 0x404ac0

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
	mov	rcx,  qword ptr [word ptr [rip + label_308]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_309]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_310]]
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
	#Procedure 0x404b30

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
	#Procedure 0x404b40

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b50
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404b60

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
	#Procedure 0x404bb0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404bc0

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
	mov	rax,  qword ptr [word ptr [rip + label_308]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_309]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_310]]
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
	#Procedure 0x404c30
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
	#Procedure 0x404c50
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
	#Procedure 0x404c70

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404c80
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
	#Procedure 0x404c90

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404ca0

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
	#Procedure 0x404cb0

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
	jne	.label_312
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
	je	.label_311
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_312
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_312
.label_311:
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
	je	.label_313
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_312
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_312
.label_313:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	cmove	rax, rcx
.label_312:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	je	.label_315
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_316
	jmp	.label_314
.label_315:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_314
.label_316:
	mov	eax, 1
	test	bpl, bpl
	je	.label_314
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
.label_314:
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
	#Procedure 0x404e20

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
	je	.label_319
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_317
	jmp	.label_318
.label_319:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_318
.label_317:
	mov	eax, 1
	test	bpl, bpl
	je	.label_318
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
.label_318:
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
	#Procedure 0x404eb0

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
	je	.label_320
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_322
	jmp	.label_321
.label_320:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_321
.label_322:
	mov	eax, 1
	test	bpl, bpl
	je	.label_321
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
.label_321:
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
	#Procedure 0x404f30

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
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_324
	jmp	.label_323
.label_325:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_323
.label_324:
	mov	eax, 1
	test	bpl, bpl
	je	.label_323
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
.label_323:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404fa0

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
	je	.label_328
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_326
	jmp	.label_327
.label_328:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_327
.label_326:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_327:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405010

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
	je	.label_329
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_331
	jmp	.label_330
.label_329:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_330
.label_331:
	mov	eax, 1
	test	bpl, bpl
	je	.label_330
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_330:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405060

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
	je	.label_334
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_333
	jmp	.label_332
.label_334:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_332
.label_333:
	mov	eax, 1
	test	bpl, bpl
	je	.label_332
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_332:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4050b0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_337
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_336
	jmp	.label_335
.label_337:
	mov	eax, 1
	test	cl, cl
	je	.label_335
.label_336:
	xor	eax, eax
.label_335:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4050e0

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
	je	.label_344
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_342
.label_344:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_342:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_347
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_338]]
.label_477:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_347:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_346
.label_478:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_479:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_480:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_339
.label_481:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_345
.label_482:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_341
.label_483:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_341:
	mov	qword ptr [rsp + 0x10], rdi
.label_345:
	mov	qword ptr [rsp + 8], rsi
.label_339:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_343
.label_485:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_346:
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
	jmp	.label_340
.label_484:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_340:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_343:
	call	__fprintf_chk
.label_476:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053d0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_348:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_348
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405400

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_350:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_349
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_351
	nop	dword ptr [rax]
.label_349:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_351:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_352
	inc	r9
	cmp	r9, 0xa
	jb	.label_350
.label_352:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405460

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_353
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_353:
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
	#Procedure 0x4054f0
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
	mov	ecx, OFFSET FLAT:.str.18
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x405570
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_354
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_354:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_355
	test	rax, rax
	je	.label_356
.label_355:
	pop	rbx
	ret	
.label_356:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055c0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_357
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_357:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4055f0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_358
	test	rbx, rbx
	jne	.label_358
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_358:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_360
	test	rax, rax
	je	.label_359
.label_360:
	pop	rbx
	ret	
.label_359:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405620

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_361
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_364
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_362
.label_361:
	test	rcx, rcx
	jne	.label_365
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_365:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_363
.label_362:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_364:
	call	xalloc_die
.label_363:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056b0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056c0
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
	#Procedure 0x4056f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_366
	call	rpl_calloc
	test	rax, rax
	je	.label_366
	pop	rcx
	ret	
.label_366:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405720

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
	#Procedure 0x405750

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
	#Procedure 0x405770

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	16
	#Procedure 0x4057a0

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	call	__strndup
	test	rax, rax
	je	.label_367
	pop	rcx
	ret	
.label_367:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4057c0

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
	.align	16
	#Procedure 0x405810

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_370
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_371
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_370
.label_371:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_370
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_372
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_372:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_370:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405890

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_373
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_373
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_373:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4058c0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_374
	ret	
.label_374:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058e0

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_375
	mov	rcx, qword ptr [rdi + 0x10]
	xor	eax, eax
	sub	rcx, qword ptr [rdi + 8]
	je	.label_375
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rdi + 8]
.label_375:
	ret	
	.section	.text
	.align	16
	#Procedure 0x405900

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
	jne	.label_376
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_376
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_377
.label_376:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_377:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_378
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_378:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405970

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
	je	.label_379
	cmp	r15, -2
	jb	.label_379
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_379
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_379:
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
	#Procedure 0x4059d0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_380
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_380
.label_381:
	ret	
.label_380:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_381
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_382
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_382:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405a20
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a30
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
	#Procedure 0x405a40
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_383
.label_384:
	ret	
.label_383:
	cmp	edi, 0x7f
	je	.label_384
	xor	eax, eax
	jmp	.label_384
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a60
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
	#Procedure 0x405a70
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
	#Procedure 0x405a80
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
	#Procedure 0x405a90
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
	#Procedure 0x405aa0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_385
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_385
.label_386:
	ret	
.label_385:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_386
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405ad0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_387
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_387:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405af0

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
	#Procedure 0x405b00
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_388
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_388:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405b20
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
	#Procedure 0x405b30
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
	#Procedure 0x405b40

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
	je	.label_389
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_390
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_390
.label_389:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_390
	test	cl, cl
	jne	.label_390
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_390:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405bb0

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1008
	mov	r13, rsi
	mov	r14, rdi
	xor	r15d, r15d
	test	r13, r13
	je	.label_393
	mov	rdi, r14
	call	freadahead
	mov	rbp, rax
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_397:
	test	rbp, rbp
	je	.label_396
	mov	rdi, r14
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_391
	mov	rbx, qword ptr [rsp]
	test	rbx, rbx
	je	.label_391
	cmp	rbx, r13
	cmovae	rbx, r13
	mov	rdi, r14
	mov	rsi, rbx
	call	freadptrinc
	sub	r13, rbx
	je	.label_393
	sub	rbp, rbx
	je	.label_396
.label_391:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	je	.label_394
	mov	rax, r13
	dec	rax
	setne	al
	movzx	eax, al
	sub	rbp, rax
	dec	r13
	jne	.label_397
	jmp	.label_393
.label_396:
	mov	rdi, r14
	call	fileno
	test	eax, eax
	js	.label_392
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	test	rax, rax
	js	.label_392
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fseeko
	mov	r15d, eax
	jmp	.label_393
.label_392:
	mov	r15d, 0x1000
	lea	r12, [rsp]
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_395:
	cmp	r13, 0x1000
	mov	rbx, r13
	cmova	rbx, r15
	mov	esi, 1
	mov	rdi, r12
	mov	rdx, rbx
	mov	rcx, r14
	call	fread
	cmp	rax, rbx
	cmovb	rbx, rbp
	jb	.label_394
	sub	r13, rbx
	jne	.label_395
	xor	r15d, r15d
	jmp	.label_393
.label_394:
	mov	rdi, r14
	call	ferror
	neg	eax
	sbb	r15d, r15d
.label_393:
	mov	eax, r15d
	add	rsp, 0x1008
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
	#Procedure 0x405d00

	.globl freadptrinc
	.type freadptrinc, @function
freadptrinc:
	add	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d10

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_399
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_400
	cmp	byte ptr [rax + 1], 0
	je	.label_398
.label_400:
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_399
.label_398:
	xor	ebx, ebx
.label_399:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d50

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
	je	.label_401
	mov	rax, rcx
.label_401:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d80

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_402
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	test	byte ptr [rdi + 1], 1
	je	.label_403
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_403:
	add	rax, rcx
.label_402:
	ret	
	nop	dword ptr [rax + rax]
	.section .text
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
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
