	.section	.text
	.align	16
	#Procedure 0x401830

	.globl usage
	.type usage, @function
usage:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_8
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6
	nop	
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_8:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	nop	
	mov	edi, ebp
	call	exit
	nop	
	.section	.text
	.align	16
	#Procedure 0x401a80

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	nop	
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.27
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	pop	rax
	mov	rbp, rbp
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ab0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	mov	rbp, rbp
	push	rax
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	pop	rax
	jmp	fputs_unlocked
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401ae0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rsi, [rsi]
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.29
	nop	word ptr [rax + rax]
.label_11:
	mov	edi, OFFSET FLAT:.str.12
	call	strcmp
	test	eax, eax
	je	.label_10
	mov	rsi, qword ptr [rbx + 0x10]
	nop	
	add	rbx, 0x10
	mov	rsp, rsp
	test	rsi, rsi
	nop	
	jne	.label_11
.label_10:
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	mov	ebx, OFFSET FLAT:.str.12
	lea	rdi, [rdi]
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	edi, 1
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.17
	mov	ecx, OFFSET FLAT:.str.18
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	edi, 5
	xor	esi, esi
	lea	rdi, [rdi]
	call	setlocale
	test	rax, rax
	je	.label_9
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.39
	mov	rbp, rbp
	mov	edx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	strncmp
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_9
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
.label_9:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi, rax
	nop	
	mov	r14d, OFFSET FLAT:.str.12
	mov	edi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.18
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:.str.12
	xor	eax, eax
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rdx, rax
	lea	rsi, [rsi]
	cmp	rbx, r14
	mov	rbp, rbp
	mov	eax, OFFSET FLAT:.str.43
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rdx, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401c70

	.globl main
	.type main, @function
main:
	lea	rdi, [rdi]
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	nop	
	push	rbx
	sub	rsp, 0x18
	mov	r15, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r15]
	nop	
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	nop	
	call	setlocale
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.14
	nop	
	mov	esi, OFFSET FLAT:.str.15
	call	bindtextdomain
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:.str.14
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	dword ptr [dword ptr [rip + operating_mode]],  0
	nop	
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  0
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + delim]],  0
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	rsp, rsp
	xor	ebx, ebx
	jmp	.label_20
.label_21:
	mov	byte ptr [byte ptr [rip + complement]],  1
	nop	dword ptr [rax]
.label_20:
	mov	edx, OFFSET FLAT:.str.16
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r15
	call	getopt_long
	nop	
	cmp	eax, 0x6d
	jg	.label_22
	cmp	eax, 0x61
	jle	.label_24
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	cmp	ecx, 2
	lea	rsi, [rsi]
	jb	.label_27
	cmp	eax, 0x64
	mov	rbp, rbp
	je	.label_31
	cmp	eax, 0x66
	lea	rdi, [rdi]
	jne	.label_26
	mov	rbp, rbp
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	lea	rdi, [rdi]
	jne	.label_36
	mov	dword ptr [dword ptr [rip + operating_mode]],  2
	mov	rsp, rsp
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_20
	nop	
.label_22:
	mov	rsp, rsp
	cmp	eax, 0x79
	nop	
	jle	.label_12
	nop	
	cmp	eax, 0x7a
	mov	rsp, rsp
	je	.label_13
	lea	rsi, [rsi]
	cmp	eax, 0x80
	je	.label_16
	cmp	eax, 0x81
	lea	rsi, [rsi]
	je	.label_21
	jmp	.label_26
.label_12:
	cmp	eax, 0x6e
	je	.label_20
	cmp	eax, 0x73
	nop	
	jne	.label_26
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	lea	rdi, [rdi]
	jmp	.label_20
.label_27:
	nop	
	cmp	dword ptr [dword ptr [rip + operating_mode]],  0
	lea	rsi, [rsi]
	jne	.label_36
	nop	
	mov	dword ptr [dword ptr [rip + operating_mode]],  1
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	jmp	.label_20
.label_13:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + line_delim]],  1
	nop	
	jmp	.label_20
.label_16:
	mov	byte ptr [byte ptr [rip + output_delimiter_specified]],  1
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	cmp	byte ptr [rdi], 0
	lea	rsi, [rsi]
	mov	eax, 1
	je	.label_39
	call	strlen
.label_39:
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	call	xstrdup
	mov	qword ptr [word ptr [rip + output_delimiter_string]],  rax
	jmp	.label_20
.label_31:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	je	.label_34
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	jne	.label_40
.label_34:
	nop	
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	nop	
	mov	al, byte ptr [rax]
	mov	byte ptr [byte ptr [rip + delim]],  al
	mov	bl, 1
	mov	rsp, rsp
	jmp	.label_20
.label_24:
	lea	rdi, [rdi]
	cmp	eax, -1
	jne	.label_15
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [rip + operating_mode]]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_19
	test	bl, bl
	mov	rbp, rbp
	je	.label_29
	lea	rdi, [rdi]
	cmp	eax, 2
	lea	rsi, [rsi]
	jne	.label_30
.label_29:
	mov	rbp, rbp
	cmp	eax, 2
	mov	rbp, rbp
	je	.label_32
	lea	rdi, [rdi]
	test	byte ptr [byte ptr [rip + suppress_non_delimited]],  1
	lea	rsi, [rsi]
	jne	.label_33
.label_32:
	lea	rsi, [rsi]
	cmp	eax, 2
	setne	al
	lea	rsi, [rsi]
	movzx	eax, al
	shl	eax, 2
	movzx	ecx,  byte ptr [byte ptr [rip + complement]]
	and	ecx, 1
	lea	esi, [rax + rcx*2]
	mov	rsp, rsp
	mov	rdi, r14
	call	set_fields
	test	bl, bl
	jne	.label_14
	mov	byte ptr [byte ptr [rip + delim]],  9
.label_14:
	cmp	qword ptr [word ptr [rip + output_delimiter_string]],  0
	lea	rsi, [rsi]
	jne	.label_18
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + delim]]
	mov	rbp, rbp
	mov	byte ptr [byte ptr [rip + main.dummy]],  al
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + label_25]],  0
	nop	
	mov	qword ptr [word ptr [rip + output_delimiter_string]], OFFSET FLAT:main.dummy
	mov	qword ptr [word ptr [rip + output_delimiter_length]],  1
.label_18:
	lea	rsi, [rsi]
	cmp	dword ptr [dword ptr [rip + optind]],  ebp
	jne	.label_38
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_1
	call	cut_file
	nop	
	mov	bl, al
	nop	
	jmp	.label_23
.label_38:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
	mov	bl, 1
	mov	rbp, rbp
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
.label_28:
	lea	rsi, [rsi]
	cdqe	
	lea	rdi, [rdi]
	mov	rdi, qword ptr [r15 + rax*8]
	call	cut_file
	and	bl, al
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	inc	eax
	nop	
	mov	dword ptr [dword ptr [rip + optind]],  eax
.label_35:
	cmp	eax, ebp
	jl	.label_28
.label_23:
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	jne	.label_37
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	lea	rdi, [rdi]
	cmp	eax, -1
	mov	rbp, rbp
	jne	.label_37
	call	__errno_location
	mov	esi, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	lea	rdi, [rdi]
	call	error
.label_37:
	lea	rdi, [rdi]
	not	bl
	nop	
	and	bl, 1
	movzx	eax, bl
	lea	rdi, [rdi]
	add	rsp, 0x18
	pop	rbx
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	nop	
	ret	
.label_15:
	cmp	eax, 0xffffff7d
	mov	rsp, rsp
	je	.label_41
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	jne	.label_26
	xor	edi, edi
	nop	
	call	usage
.label_41:
	nop	
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 8], 0
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.22
	mov	esi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.20
	mov	r9d, OFFSET FLAT:.str.21
	mov	rsp, rsp
	xor	eax, eax
	call	version_etc
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	call	exit
.label_26:
	mov	rbp, rbp
	mov	edi, 1
	call	usage
.label_19:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.23
	nop	
	jmp	.label_17
.label_30:
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	lea	rdi, [rdi]
	jmp	.label_17
.label_33:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.25
	jmp	.label_17
.label_36:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.17_0
	nop	
	jmp	.label_17
.label_40:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.18_0
.label_17:
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	call	error
	mov	edi, 1
	nop	
	call	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402110

	.globl cut_file
	.type cut_file, @function
cut_file:
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_46
	mov	rbp, rbp
	cmp	byte ptr [rbx + 1], 0
	nop	
	je	.label_43
.label_46:
	mov	esi, OFFSET FLAT:.str.54
	lea	rdi, [rdi]
	mov	rdi, rbx
	nop	
	call	fopen
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	rsp, rsp
	test	rbp, rbp
	jne	.label_42
	lea	rsi, [rsi]
	jmp	.label_44
.label_43:
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	lea	rsi, [rsi]
	mov	rbp,  qword ptr [word ptr [rip + stdin]]
.label_42:
	nop	
	mov	esi, 2
	mov	rdi, rbp
	nop	
	call	fadvise
	mov	rbp, rbp
	mov	rdi, rbp
	call	cut_stream
	nop	
	mov	rdi, rbp
	call	ferror_unlocked
	test	eax, eax
	lea	rsi, [rsi]
	jne	.label_44
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	eax, 0x2d
	jne	.label_47
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 1], 0
	mov	rbp, rbp
	je	.label_48
.label_47:
	mov	rdi, rbp
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	jne	.label_45
.label_44:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	r14d, dword ptr [rax]
	mov	rsp, rsp
	xor	ebp, ebp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, rbx
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, r14d
	call	error
.label_45:
	mov	al, bpl
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
.label_48:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	clearerr_unlocked
	lea	rsi, [rsi]
	mov	bpl, 1
	mov	rsp, rsp
	jmp	.label_45
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402230

	.globl cut_stream
	.type cut_stream, @function
cut_stream:
	nop	
	cmp	dword ptr [dword ptr [rip + operating_mode]],  1
	jne	.label_49
	mov	rbp, rbp
	jmp	cut_bytes
.label_49:
	nop	
	jmp	cut_fields
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402250

	.globl cut_bytes
	.type cut_bytes, @function
cut_bytes:
	push	rbp
	push	r15
	push	r14
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	mov	r15, rdi
	lea	rdi, [rdi]
	mov	qword ptr [rsp], 0
	nop	
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	lea	rsi, [rsi]
	xor	r12d, r12d
	mov	rbp, rbp
	lea	r14, [rsp]
	jmp	.label_54
.label_51:
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	putchar_unlocked
	nop	
	mov	qword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_54:
	xor	r13d, r13d
	jmp	.label_52
.label_50:
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	putchar_unlocked
	mov	r13b, bl
	nop	word ptr [rax + rax]
.label_52:
	lea	rdi, [rdi]
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	edi, 0xa
	mov	rbp, rbp
	cmovne	edi, r12d
	cmp	ebp, edi
	lea	rsi, [rsi]
	je	.label_51
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_56
	lea	rsi, [rsi]
	mov	rdi, r14
	call	next_item
	nop	
	mov	rbx, qword ptr [rsp]
	nop	
	mov	rdi, rbx
	call	print_kth
	test	al, al
	mov	rsp, rsp
	je	.label_52
	movzx	eax,  byte ptr [byte ptr [rip + output_delimiter_specified]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	lea	rsi, [rsi]
	jne	.label_55
	test	r13b, 1
	jne	.label_57
	mov	bl, 1
	lea	rdi, [rdi]
	jmp	.label_50
.label_55:
	nop	
	mov	bl, r13b
	mov	rbp, rbp
	jmp	.label_50
.label_57:
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	is_range_start_index
	lea	rdi, [rdi]
	test	al, al
	lea	rsi, [rsi]
	mov	bl, 1
	mov	rsp, rsp
	je	.label_50
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	nop	
	mov	esi, 1
	call	fwrite_unlocked
	jmp	.label_50
.label_56:
	mov	rsp, rsp
	cmp	qword ptr [rsp], 0
	je	.label_53
	nop	
	call	putchar_unlocked
.label_53:
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl cut_fields
	.type cut_fields, @function
cut_fields:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r15, rdi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], 1
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	mov	rsp, rsp
	call	getc_unlocked
	cmp	eax, -1
	je	.label_65
	nop	
	mov	edi, eax
	mov	rbp, rbp
	mov	rsi, r15
	call	ungetc
	lea	rsi, [rsi]
	movzx	r14d,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	r14d, 1
	mov	dword ptr [rsp + 0x14], r14d
	lea	rsi, [rsi]
	mov	edi, 1
	call	print_kth
	movzx	eax, al
	nop	
	xor	eax, 1
	mov	dword ptr [rsp + 0x18], eax
	xor	r13d, r13d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x1c], 0
	lea	rdi, [rdi]
	xor	r12d, r12d
	mov	rbp, rbp
	jmp	.label_58
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	rbp, rbp
	lea	rdi, [rsp + 0x20]
	nop	
	call	next_item
.label_58:
	cmp	r14d, dword ptr [rsp + 0x18]
	je	.label_60
	cmp	qword ptr [rsp + 0x20], 1
	jne	.label_60
	nop	
	cmp	r14d, dword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	sete	al
	cmp	qword ptr [rsp + 0x20], 1
	mov	rbp, rbp
	setne	r14b
	lea	rdi, [rdi]
	or	r14b, al
	nop	word ptr cs:[rax + rax]
.label_78:
	lea	rdi, [rdi]
	movzx	r8d,  byte ptr [byte ptr [rip + delim]]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	r9d, 0xa
	cmovne	r9d, r13d
	mov	qword ptr [rsp], r15
	mov	edi, OFFSET FLAT:field_1_buffer
	mov	esi, OFFSET FLAT:field_1_bufsize
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rcx, -1
	lea	rsi, [rsi]
	call	getndelim2
	lea	rdi, [rdi]
	mov	rbx, rax
	test	rbx, rbx
	js	.label_64
	je	.label_71
	lea	rdi, [rdi]
	mov	rbp,  qword ptr [word ptr [rip + field_1_buffer]]
	movsx	edi, byte ptr [rbp + rbx - 1]
	call	to_uchar
	movzx	eax, al
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	eax, ecx
	je	.label_75
	mov	rsp, rsp
	xor	r12d, r12d
	mov	rsp, rsp
	movzx	eax,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	eax, 1
	cmp	eax, 1
	lea	rdi, [rdi]
	je	.label_79
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdi, rbp
	mov	rdx, rbx
	call	fwrite_unlocked
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + field_1_buffer]]
	movsx	eax, byte ptr [rax + rbx - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	and	cl, 1
	mov	edi, 0xa
	mov	rsp, rsp
	cmovne	edi, r13d
	cmp	eax, edi
	lea	rdi, [rdi]
	je	.label_77
	call	putchar_unlocked
.label_77:
	mov	rbp, rbp
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	r12d, 0xa
	mov	rbp, rbp
	cmovne	r12d, r13d
.label_79:
	test	r14b, r14b
	mov	rsp, rsp
	je	.label_78
	mov	r14d, dword ptr [rsp + 0x14]
	jmp	.label_60
.label_75:
	mov	edi, 1
	call	print_kth
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_81
	dec	rbx
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rdx, rbx
	call	fwrite_unlocked
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	mov	rbp, rbp
	and	cl, 1
	mov	ecx, 0xa
	mov	rbp, rbp
	cmovne	ecx, r13d
	nop	
	cmp	eax, ecx
	lea	rsi, [rsi]
	mov	r14d, dword ptr [rsp + 0x14]
	lea	rdi, [rdi]
	jne	.label_72
	mov	rsp, rsp
	mov	rdi, r15
	call	getc_unlocked
	cmp	eax, -1
	mov	rbp, rbp
	je	.label_73
	mov	edi, eax
	mov	rsi, r15
	call	ungetc
.label_72:
	nop	
	mov	al, 1
	mov	dword ptr [rsp + 0x1c], eax
	jmp	.label_73
.label_81:
	mov	rsp, rsp
	mov	r14d, dword ptr [rsp + 0x14]
.label_73:
	lea	rdi, [rsp + 0x20]
	call	next_item
	nop	
	xor	r12d, r12d
.label_60:
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	call	print_kth
	test	al, al
	je	.label_62
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	je	.label_63
	mov	rdi,  qword ptr [word ptr [rip + output_delimiter_string]]
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [rip + output_delimiter_length]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	nop	
	call	fwrite_unlocked
.label_63:
	mov	rdi, r15
	call	getc_unlocked
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	mov	dl, 1
	nop	
	mov	dword ptr [rsp + 0x1c], edx
	lea	rdi, [rdi]
	cmp	eax, ecx
	jne	.label_70
	lea	rdi, [rdi]
	mov	ebp, r12d
	mov	r12d, eax
	jmp	.label_66
	nop	dword ptr [rax]
.label_62:
	mov	ebp, r12d
	mov	rdi, r15
	call	getc_unlocked
	mov	rsp, rsp
	mov	r12d, eax
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	lea	rdi, [rdi]
	cmp	r12d, eax
	lea	rsi, [rsi]
	je	.label_66
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	and	al, 1
	mov	eax, 0xa
	mov	rbp, rbp
	cmovne	eax, r13d
	mov	rsp, rsp
	cmp	r12d, -1
	nop	
	je	.label_66
	lea	rsi, [rsi]
	cmp	r12d, eax
	jne	.label_62
	jmp	.label_66
	nop	word ptr cs:[rax + rax]
.label_70:
	lea	rsi, [rsi]
	mov	ebx, eax
	mov	rsp, rsp
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	lea	rdi, [rdi]
	and	al, 1
	mov	eax, 0xa
	cmovne	eax, r13d
	lea	rsi, [rsi]
	cmp	ebx, -1
	je	.label_68
	lea	rsi, [rsi]
	cmp	ebx, eax
	lea	rsi, [rsi]
	je	.label_68
	mov	edi, ebx
	call	putchar_unlocked
	mov	rbp, rbp
	mov	rdi, r15
	call	getc_unlocked
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	mov	r12d, ebx
	mov	rsp, rsp
	jne	.label_70
	mov	rbp, rbp
	mov	ebp, ebx
	lea	rsi, [rsi]
	mov	r12d, eax
	mov	rsp, rsp
	jmp	.label_66
.label_68:
	mov	rsp, rsp
	mov	ebp, r12d
	mov	r12d, ebx
	nop	dword ptr [rax]
.label_66:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	mov	cl,  byte ptr [byte ptr [rip + line_delim]]
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	ecx, 0xa
	nop	
	cmovne	ecx, r13d
	mov	rbp, rbp
	cmp	r12d, eax
	jne	.label_76
	cmp	eax, ecx
	lea	rsi, [rsi]
	jne	.label_76
	mov	rdi, r15
	lea	rsi, [rsi]
	call	getc_unlocked
	nop	
	cmp	eax, -1
	je	.label_82
	mov	rsp, rsp
	mov	edi, eax
	nop	
	mov	rsi, r15
	call	ungetc
.label_76:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + delim]]
	cmp	r12d, eax
	nop	
	je	.label_61
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	mov	eax, 0xa
	cmovne	eax, r13d
	mov	rbp, rbp
	cmp	r12d, -1
	nop	
	sete	bl
	nop	
	je	.label_69
	cmp	r12d, eax
	jne	.label_58
	jmp	.label_69
.label_82:
	nop	
	mov	r12d, 0xffffffff
	lea	rdi, [rdi]
	mov	bl, 1
.label_69:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	nop	
	test	al, 1
	nop	
	jne	.label_80
	movzx	eax,  byte ptr [byte ptr [rip + suppress_non_delimited]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_80
	cmp	qword ptr [rsp + 0x20], 1
	je	.label_74
	nop	word ptr [rax + rax]
.label_80:
	nop	
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	mov	rbp, rbp
	and	al, 1
	mov	eax, 0xa
	lea	rsi, [rsi]
	cmovne	eax, r13d
	cmp	r12d, eax
	je	.label_67
	cmp	ebp, eax
	jne	.label_67
	nop	
	movzx	ecx,  byte ptr [byte ptr [rip + delim]]
	cmp	ecx, eax
	lea	rsi, [rsi]
	jne	.label_74
.label_67:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + line_delim]]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	edi, 0xa
	cmovne	edi, r13d
	call	putchar_unlocked
.label_74:
	mov	rbp, rbp
	test	bl, bl
	jne	.label_65
	mov	qword ptr [rsp + 0x20], 1
	mov	rax,  qword ptr [word ptr [rip + frp]]
	mov	qword ptr [word ptr [rip + current_rp]],  rax
	mov	dword ptr [rsp + 0x1c], 0
	jmp	.label_58
.label_64:
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + field_1_buffer]]
	call	free
	nop	
	mov	qword ptr [word ptr [rip + field_1_buffer]],  0
	mov	rdi, r15
	lea	rdi, [rdi]
	call	ferror_unlocked
	mov	rsp, rsp
	test	eax, eax
	jne	.label_65
	mov	rsp, rsp
	mov	rdi, r15
	call	feof_unlocked
	mov	rsp, rsp
	test	eax, eax
	je	.label_59
.label_65:
	mov	rsp, rsp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	nop	
	mov	edi, OFFSET FLAT:.str.56
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 0x149
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.cut_fields
	call	__assert_fail
.label_59:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402980

	.globl next_item
	.type next_item, @function
next_item:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi]
	nop	
	inc	rcx
	mov	qword ptr [rdi], rcx
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	rcx, qword ptr [rax + 8]
	jbe	.label_83
	mov	rsp, rsp
	add	rax, 0x10
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + current_rp]],  rax
.label_83:
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4029b0

	.globl print_kth
	.type print_kth, @function
print_kth:
	lea	rdi, [rdi]
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	cmp	qword ptr [rax], rdi
	lea	rdi, [rdi]
	setbe	al
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029d0

	.globl is_range_start_index
	.type is_range_start_index, @function
is_range_start_index:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + current_rp]]
	mov	rsp, rsp
	cmp	qword ptr [rax], rdi
	mov	rbp, rbp
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	lea	rsi, [rsi]
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402a00

	.globl set_fields
	.type set_fields, @function
set_fields:
	nop	
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rsp, rsp
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	dword ptr [rsp + 8], esi
	mov	r12, rdi
	xor	ebp, ebp
	and	esi, 1
	mov	dword ptr [rsp + 0xc], esi
	mov	rbp, rbp
	mov	ebx, 0
	lea	rdi, [rdi]
	je	.label_84
	nop	
	movzx	ecx, byte ptr [r12]
	mov	rbp, rbp
	mov	eax, 0x2d
	sub	eax, ecx
	jne	.label_93
	movzx	eax, byte ptr [r12 + 1]
	lea	rdi, [rdi]
	neg	eax
.label_93:
	lea	rcx, [r12 + 1]
	test	eax, eax
	sete	bl
	movzx	ebp, bl
	cmove	r12, rcx
	lea	rsi, [rsi]
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x20], 0
	lea	rsi, [rsi]
	mov	al, bl
	mov	dword ptr [rsp + 0x24], eax
	nop	
	jmp	.label_101
.label_84:
	mov	eax, 1
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x20], 0
	mov	dword ptr [rsp + 0x24], 0
	jmp	.label_101
	nop	dword ptr [rax]
.label_110:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x24], eax
	inc	r12
	xor	ebp, ebp
	mov	qword ptr [rsp + 0x10], r15
.label_101:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x1c], ebx
	lea	rdi, [rdi]
	mov	r15b, bl
	and	r15b, 1
	lea	rsi, [rsi]
	xor	r14d, r14d
	lea	rsi, [rsi]
	jmp	.label_111
	nop	dword ptr [rax]
.label_115:
	inc	r12
	mov	r14b, 1
.label_111:
	mov	rsp, rsp
	movsx	ebx, byte ptr [r12]
	cmp	ebx, 0x2c
	je	.label_90
	mov	rsp, rsp
	movzx	eax, bl
	cmp	eax, 0x2d
	je	.label_122
	mov	edi, ebx
	lea	rdi, [rdi]
	call	to_uchar_0
	movzx	r13d, al
	mov	rbp, rbp
	call	__ctype_b_loc
	lea	rdi, [rdi]
	test	bl, bl
	je	.label_90
	nop	
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r13*2]
	mov	rsp, rsp
	and	eax, 1
	mov	rbp, rbp
	test	ax, ax
	lea	rsi, [rsi]
	jne	.label_90
	nop	
	add	ebx, -0x30
	mov	rbp, rbp
	cmp	ebx, 9
	mov	rbp, rbp
	ja	.label_96
	cmp	qword ptr [word ptr [rip + set_fields.num_start]],  0
	setne	al
	mov	rsp, rsp
	test	r14b, al
	jne	.label_102
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + set_fields.num_start]],  r12
.label_102:
	mov	al, 1
	test	r15b, r15b
	je	.label_103
	mov	dword ptr [rsp + 0x20], eax
	jmp	.label_104
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x24], eax
.label_104:
	movabs	rax, 0x1999999999999999
	cmp	rbp, rax
	ja	.label_107
	lea	rdi, [rdi]
	lea	rax, [rbp + rbp*4]
	lea	rdi, [rdi]
	movsx	rcx, byte ptr [r12]
	nop	
	lea	rax, [rcx + rax*2 - 0x30]
	cmp	rax, rbp
	cmovae	rbp, rax
	jb	.label_107
	cmp	rbp, -1
	jne	.label_115
	jmp	.label_107
	nop	dword ptr [rax]
.label_90:
	mov	ebx, dword ptr [rsp + 0x1c]
	lea	rdi, [rdi]
	test	bl, 1
	jne	.label_95
	nop	
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_121
	mov	rsp, rsp
	mov	rdi, rbp
	mov	rsi, rbp
	call	add_range_pair
	nop	
	mov	r15, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	jmp	.label_86
	nop	word ptr cs:[rax + rax]
.label_95:
	nop	
	mov	eax, dword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rsp + 0x24]
	or	cl, al
	nop	
	mov	eax, ecx
	lea	rdi, [rdi]
	and	al, 1
	mov	r15d, 1
	cmovne	r15, qword ptr [rsp + 0x10]
	nop	
	cmp	dword ptr [rsp + 0xc], 0
	jne	.label_88
	test	al, al
	je	.label_98
.label_88:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x20]
	test	al, 1
	jne	.label_100
	mov	rsp, rsp
	mov	rsi, -1
	mov	rdi, r15
	jmp	.label_91
	nop	dword ptr [rax]
.label_122:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rsp + 0x1c]
	test	al, 1
	jne	.label_109
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 0x24]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	sete	cl
	test	rbp, rbp
	lea	rsi, [rsi]
	jne	.label_105
	mov	rsp, rsp
	test	cl, cl
	mov	rsp, rsp
	je	.label_108
.label_105:
	lea	rdi, [rdi]
	test	al, al
	mov	r15d, 1
	mov	rbp, rbp
	cmovne	r15, rbp
	mov	rbp, rbp
	mov	bl, 1
	mov	eax, dword ptr [rsp + 0x24]
	jmp	.label_110
.label_100:
	cmp	rbp, r15
	mov	rsp, rsp
	jb	.label_113
	mov	rdi, r15
	mov	rsi, rbp
.label_91:
	lea	rdi, [rdi]
	call	add_range_pair
	xor	ebx, ebx
.label_86:
	lea	rdi, [rdi]
	cmp	byte ptr [r12], 0
	lea	rsi, [rsi]
	je	.label_119
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x20], 0
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	jmp	.label_110
.label_119:
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	test	rsi, rsi
	je	.label_87
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	lea	rsi, [rsi]
	mov	edx, 0x10
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:compare_ranges
	mov	rsp, rsp
	call	qsort
	xor	ebx, ebx
	lea	rsi, [rsi]
	cmp	qword ptr [word ptr [rip + n_frp]],  0
	mov	rsp, rsp
	je	.label_94
.label_123:
	mov	rbp, rbx
	nop	
	lea	rbx, [rbp + 1]
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	jae	.label_99
	nop	dword ptr [rax + rax]
.label_117:
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	mov	rsp, rsp
	mov	rax, rbx
	nop	
	shl	rax, 4
	mov	rsi, rbp
	shl	rsi, 4
	mov	rdx, qword ptr [rcx + rsi + 8]
	cmp	qword ptr [rcx + rax], rdx
	lea	rdi, [rdi]
	ja	.label_99
	lea	rsi, [rsi]
	lea	rsi, [rcx + rsi + 8]
	mov	rcx, qword ptr [rcx + rax + 8]
	cmp	rcx, rdx
	cmova	rdx, rcx
	mov	qword ptr [rsi], rdx
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rcx + rax]
	lea	rsi, [rcx + rax + 0x10]
	nop	
	mov	rdx,  qword ptr [word ptr [rip + n_frp]]
	sub	rdx, rbx
	shl	rdx, 4
	nop	
	add	rdx, -0x10
	call	memmove
	nop	
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	dec	rax
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + n_frp]],  rax
	cmp	rbx, rax
	jb	.label_117
.label_99:
	cmp	rbx,  qword ptr [word ptr [rip + n_frp]]
	jb	.label_123
.label_94:
	nop	
	mov	eax, dword ptr [rsp + 8]
	test	al, 2
	je	.label_92
	call	complement_rp
.label_92:
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + n_frp]]
	lea	rdi, [rdi]
	inc	rsi
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + n_frp]],  rsi
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	shl	rsi, 4
	mov	rsp, rsp
	call	xrealloc
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + frp]],  rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	shl	rcx, 4
	mov	qword ptr [rcx + rax - 8], -1
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	shl	rax, 4
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	lea	rdi, [rdi]
	mov	qword ptr [rax + rcx - 0x10], -1
	nop	
	add	rsp, 0x28
	pop	rbx
	mov	rsp, rsp
	pop	r12
	lea	rdi, [rdi]
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_107:
	mov	rbx,  qword ptr [word ptr [rip + set_fields.num_start]]
	mov	esi, OFFSET FLAT:.str.7_0
	mov	rdi, rbx
	call	strspn
	nop	
	mov	rdi, rbx
	mov	rsi, rax
	call	xstrndup
	nop	
	mov	rbx, rax
	nop	
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_112
	nop	
	mov	esi, OFFSET FLAT:.str.9_0
	jmp	.label_116
.label_96:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	mov	rsp, rsp
	test	al, 4
	jne	.label_118
	mov	esi, OFFSET FLAT:.str.11_0
	nop	
	jmp	.label_120
.label_112:
	nop	
	mov	esi, OFFSET FLAT:.str.8_0
.label_116:
	nop	
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	edi, 1
	nop	
	call	usage
.label_118:
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.10_0
.label_120:
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rbx, rax
	mov	rbp, rbp
	mov	rdi, r12
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_121:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	test	al, 4
	jne	.label_106
	mov	esi, OFFSET FLAT:.str.4_0
	nop	
	jmp	.label_85
.label_98:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.5_0
	jmp	.label_85
.label_109:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	mov	rsp, rsp
	test	al, 4
	lea	rsi, [rsi]
	jne	.label_89
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	jmp	.label_85
.label_108:
	mov	rsp, rsp
	mov	eax, dword ptr [rsp + 8]
	nop	
	xor	edi, edi
	test	al, 4
	mov	rsp, rsp
	jne	.label_114
	nop	
	mov	esi, OFFSET FLAT:.str.4_0
	lea	rdi, [rdi]
	jmp	.label_85
.label_106:
	mov	esi, OFFSET FLAT:.str.3_0
	lea	rdi, [rdi]
	jmp	.label_85
.label_113:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.6_0
	nop	
	jmp	.label_85
.label_89:
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_85
.label_114:
	mov	esi, OFFSET FLAT:.str.3_0
.label_85:
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rbp, rbp
	call	error
	mov	rsp, rsp
	mov	edi, 1
	call	usage
.label_87:
	mov	eax, dword ptr [rsp + 8]
	xor	edi, edi
	lea	rsi, [rsi]
	test	al, 4
	jne	.label_97
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_85
.label_97:
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.12_0
	jmp	.label_85
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403070

	.globl to_uchar_0
	.type to_uchar_0, @function
to_uchar_0:
	movzx	eax, dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403080

	.globl add_range_pair
	.type add_range_pair, @function
add_range_pair:
	push	r14
	nop	
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	nop	
	cmp	rax,  qword ptr [word ptr [rip + n_frp_allocated]]
	lea	rsi, [rsi]
	jne	.label_124
	nop	
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	mov	esi, OFFSET FLAT:n_frp_allocated
	mov	edx, 0x10
	call	x2nrealloc
	mov	qword ptr [word ptr [rip + frp]],  rax
.label_124:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	lea	rdi, [rdi]
	mov	qword ptr [rcx + rax], rbx
	mov	rax,  qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + frp]]
	shl	rax, 4
	mov	qword ptr [rcx + rax + 8], r14
	inc	qword ptr [word ptr [rip + n_frp]]
	mov	rsp, rsp
	add	rsp, 8
	pop	rbx
	nop	
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403120

	.globl compare_ranges
	.type compare_ranges, @function
compare_ranges:
	mov	eax, dword ptr [rdi]
	cmp	eax, dword ptr [rsi]
	nop	
	setg	al
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	eax, 0xffffffff
	cmovge	eax, ecx
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403140

	.globl complement_rp
	.type complement_rp, @function
complement_rp:
	mov	rsp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r14,  qword ptr [word ptr [rip + frp]]
	mov	r15,  qword ptr [word ptr [rip + n_frp]]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + frp]],  0
	mov	qword ptr [word ptr [rip + n_frp]],  0
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	nop	
	mov	rsi, qword ptr [r14]
	mov	rsp, rsp
	cmp	rsi, 2
	lea	rsi, [rsi]
	jb	.label_125
	dec	rsi
	mov	edi, 1
	call	add_range_pair
.label_125:
	lea	rdi, [rdi]
	cmp	r15, 2
	mov	rsp, rsp
	jb	.label_129
	lea	r12, [r15 - 1]
	lea	rbx, [r14 + 0x10]
	nop	
.label_127:
	mov	rdi, qword ptr [rbx - 8]
	mov	rsi, qword ptr [rbx]
	mov	rsp, rsp
	inc	rdi
	cmp	rdi, rsi
	lea	rsi, [rsi]
	je	.label_126
	dec	rsi
	call	add_range_pair
.label_126:
	add	rbx, 0x10
	dec	r12
	jne	.label_127
.label_129:
	mov	rbp, rbp
	shl	r15, 4
	mov	rdi, qword ptr [r15 + r14 - 8]
	nop	
	cmp	rdi, -1
	lea	rsi, [rsi]
	je	.label_128
	nop	
	inc	rdi
	mov	rsi, -1
	mov	rbp, rbp
	call	add_range_pair
.label_128:
	lea	rsi, [rsi]
	mov	rdi, r14
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r14
	pop	r15
	jmp	free
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403220
	.globl reset_fields
	.type reset_fields, @function
reset_fields:

	lea	rsi, [rsi]
	push	rax
	nop	
	mov	qword ptr [word ptr [rip + n_frp]],  0
	nop	
	mov	qword ptr [word ptr [rip + n_frp_allocated]],  0
	mov	rdi,  qword ptr [word ptr [rip + frp]]
	call	free
	mov	qword ptr [word ptr [rip + frp]],  0
	pop	rax
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403260
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
	#Procedure 0x403270
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403280

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
	je	.label_133
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_130
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_130
.label_133:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_132
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_130:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
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
	jne	.label_131
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_2
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
.label_132:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_131:
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
	#Procedure 0x403380

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403390

	.globl fadvise
	.type fadvise, @function
fadvise:
	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_134
	call	fileno
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_134:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033c0

	.globl getndelim2
	.type getndelim2, @function
getndelim2:
	push	rbp
	nop	
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x68
	lea	rdi, [rdi]
	mov	r12d, r9d
	mov	dword ptr [rsp + 0x48], r8d
	mov	rbp, rbp
	mov	rax, rcx
	mov	r15, rdx
	mov	rbp, rbp
	mov	r13, rsi
	mov	rbp, rdi
	mov	rcx, qword ptr [rbp]
	test	rcx, rcx
	je	.label_148
	mov	qword ptr [rsp + 0x50], rax
	mov	rsp, rsp
	mov	rbx, qword ptr [r13]
	jmp	.label_156
.label_148:
	mov	rbp, rbp
	cmp	rax, 0x40
	nop	
	mov	ebx, 0x40
	nop	
	cmovb	rbx, rax
	mov	qword ptr [rsp + 0x50], rax
	mov	rbp, rbp
	mov	rdi, rbx
	call	malloc
	nop	
	mov	rcx, rax
	mov	rax, -1
	test	rcx, rcx
	lea	rsi, [rsi]
	je	.label_142
.label_156:
	nop	
	mov	r14, rbx
	lea	rdi, [rdi]
	sub	r14, r15
	mov	rbp, rbp
	jae	.label_150
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], -1
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x28], r13
	mov	r15, rcx
	jmp	.label_136
.label_150:
	mov	qword ptr [rsp + 0x30], -1
	mov	qword ptr [rsp + 0x20], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], r13
	nop	
	jne	.label_138
	cmp	rbx, qword ptr [rsp + 0x50]
	jb	.label_138
	mov	rbp, rbp
	mov	r15, rcx
	lea	rsi, [rsi]
	jmp	.label_136
.label_138:
	mov	rsp, rsp
	mov	rbp, qword ptr [rsp + 0xa0]
	lea	rsi, [rsi]
	mov	rax, r15
	mov	rbp, rbp
	mov	r15, rcx
	mov	qword ptr [rsp + 0x10], rax
	lea	rcx, [r15 + rax]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], rcx
	cmp	r12d, -1
	mov	edx, r12d
	mov	ecx, dword ptr [rsp + 0x48]
	lea	rdi, [rdi]
	cmove	edx, ecx
	mov	rsp, rsp
	cmp	ecx, -1
	nop	
	cmove	edx, r12d
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x3c], edx
	cmove	ecx, r12d
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x48], ecx
	mov	rbp, rbp
	mov	r12d, ecx
	mov	rbp, rbp
	movabs	rcx, 0x8000000000000000
	nop	
	xor	rcx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rcx
	mov	dword ptr [rsp + 0x4c], 0
	mov	dword ptr [rsp + 0x1c], eax
	nop	
.label_152:
	nop	
	mov	rdi, rbp
	nop	
	lea	rsi, [rsp + 0x60]
	nop	
	call	freadptr
	lea	rdi, [rdi]
	mov	r13, rax
	nop	
	test	r13, r13
	je	.label_144
	mov	rbp, rbp
	cmp	r12d, -1
	mov	rsp, rsp
	je	.label_147
	mov	rcx, qword ptr [rsp + 0x60]
	mov	rdi, r13
	lea	rdi, [rdi]
	mov	esi, r12d
	lea	rdi, [rdi]
	mov	edx, dword ptr [rsp + 0x3c]
	call	memchr2
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_147
	mov	ecx, 1
	nop	
	sub	rcx, r13
	add	rcx, rax
	mov	qword ptr [rsp + 0x60], rcx
	mov	al, 1
	mov	rbp, rbp
	jmp	.label_153
	nop	word ptr cs:[rax + rax]
.label_144:
	mov	rdi, rbp
	mov	rsp, rsp
	call	getc_unlocked
	cmp	eax, -1
	je	.label_140
	nop	
	cmp	eax, dword ptr [rsp + 0x3c]
	nop	
	mov	dl, 1
	mov	rbp, rbp
	mov	cl, 1
	je	.label_141
	mov	ecx, dword ptr [rsp + 0x4c]
.label_141:
	nop	
	cmp	eax, r12d
	mov	dword ptr [rsp + 0x1c], eax
	je	.label_146
	mov	dl, cl
.label_146:
	mov	qword ptr [rsp + 0x60], 1
	lea	rdi, [rdi]
	mov	al, dl
.label_153:
	mov	rsp, rsp
	mov	dword ptr [rsp + 0x4c], eax
.label_147:
	mov	rdi, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	cmp	rbx, qword ptr [rsp + 0x50]
	jae	.label_151
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	cmp	r14, rcx
	jae	.label_151
	lea	rdx, [rbx + 0x40]
	lea	rsi, [rbx + rbx]
	mov	rsp, rsp
	cmp	rbx, 0x40
	nop	
	cmovb	rsi, rdx
	mov	rsp, rsp
	sub	rdi, r15
	lea	rdi, [rdi]
	mov	rdx, rsi
	sub	rdx, rdi
	nop	
	cmp	rdx, rcx
	lea	rax, [rdi + rax + 1]
	lea	rsi, [rsi]
	cmovae	rax, rsi
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	rax, rcx
	mov	r12, rax
	nop	
	cmova	r12, rcx
	lea	rsi, [rsi]
	cmp	rbx, rax
	mov	rsp, rsp
	cmovae	r12, rcx
	cmp	r12, qword ptr [rsp + 0x10]
	jns	.label_139
	mov	r12, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	cmp	rbx, r12
	je	.label_136
.label_139:
	nop	
	mov	rbp, r15
	nop	
	mov	r15, rdi
	nop	
	mov	rdi, rbp
	mov	rsi, r12
	mov	rbp, rbp
	call	realloc
	test	rax, rax
	je	.label_137
	mov	rbp, rbp
	mov	r14, r12
	nop	
	mov	rdi, r15
	sub	r14, rdi
	add	rdi, rax
	mov	r15, rax
	mov	rbx, r12
	mov	r12d, dword ptr [rsp + 0x48]
	nop	
	mov	rbp, qword ptr [rsp + 0xa0]
.label_151:
	cmp	r14, 2
	jb	.label_143
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], rbx
	lea	rsi, [rsi]
	mov	ebp, r12d
	mov	r12, r15
	nop	
	lea	rbx, [r14 - 1]
	mov	rax, qword ptr [rsp + 0x60]
	cmp	rax, rbx
	mov	rsp, rsp
	cmovb	rbx, rax
	test	r13, r13
	mov	rsp, rsp
	je	.label_145
	mov	r15, rdi
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, rbx
	call	memcpy
	mov	rdi, r15
	jmp	.label_154
	nop	dword ptr [rax + rax]
.label_143:
	nop	
	mov	qword ptr [rsp + 0x58], rdi
	lea	rsi, [rsi]
	jmp	.label_135
.label_145:
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x1c]
	mov	rbp, rbp
	mov	byte ptr [rdi], al
.label_154:
	mov	rsp, rsp
	add	rdi, rbx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x58], rdi
	sub	r14, rbx
	lea	rdi, [rdi]
	mov	r15, r12
	mov	rbp, rbp
	mov	r12d, ebp
	mov	rbx, qword ptr [rsp + 0x40]
	mov	rbp, qword ptr [rsp + 0xa0]
.label_135:
	nop	
	test	r13, r13
	je	.label_149
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x60]
	mov	rsp, rsp
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	freadseek
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_136
.label_149:
	mov	eax, dword ptr [rsp + 0x4c]
	mov	rbp, rbp
	test	al, 1
	je	.label_152
	jmp	.label_155
.label_137:
	lea	rdi, [rdi]
	mov	r15, rbp
	mov	rbp, rbp
	jmp	.label_136
.label_140:
	cmp	qword ptr [rsp + 0x58], r15
	je	.label_136
.label_155:
	mov	rcx, qword ptr [rsp + 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rcx], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	add	rax, r15
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rcx
.label_136:
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [rax], r15
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	qword ptr [rax], rbx
	mov	rcx, qword ptr [rsp + 0x30]
	cmp	rcx, 1
	sbb	rax, rax
	nop	
	or	rax, rcx
.label_142:
	nop	
	add	rsp, 0x68
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl memchr2
	.type memchr2, @function
memchr2:
	push	r14
	push	rbx
	movzx	esi, sil
	movzx	r8d, dl
	cmp	esi, r8d
	jne	.label_163
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rsi, [rsi]
	pop	rbx
	pop	r14
	mov	rbp, rbp
	jmp	memchr
.label_163:
	mov	eax, edi
	lea	rsi, [rsi]
	and	eax, 7
	test	rcx, rcx
	mov	rbp, rbp
	je	.label_160
	nop	word ptr cs:[rax + rax]
.label_161:
	mov	rsp, rsp
	test	rax, rax
	je	.label_160
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	lea	rsi, [rsi]
	cmp	eax, esi
	mov	rsp, rsp
	je	.label_166
	cmp	eax, r8d
	lea	rdi, [rdi]
	je	.label_167
	inc	rdi
	mov	eax, edi
	and	eax, 7
	cmp	rcx, 1
	mov	rsp, rsp
	lea	rcx, [rcx - 1]
	nop	
	jne	.label_161
.label_160:
	mov	eax, esi
	shl	eax, 8
	or	eax, esi
	mov	edx, r8d
	shl	edx, 8
	or	edx, r8d
	lea	rsi, [rsi]
	cmp	rcx, 8
	nop	
	jb	.label_162
	mov	r10, rax
	mov	rsp, rsp
	shl	r10, 0x10
	lea	rdi, [rdi]
	or	r10, rax
	mov	rax, rdx
	shl	rax, 0x10
	mov	rsp, rsp
	or	rax, rdx
	mov	r9, r10
	shl	r9, 0x20
	nop	
	or	r9, r10
	lea	rsi, [rsi]
	mov	r11, rax
	nop	
	shl	r11, 0x20
	or	r11, rax
	movabs	r14, 0x8080808080808080
	movabs	r10, 0xfefefefefefefeff
	nop	word ptr cs:[rax + rax]
.label_158:
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	mov	rbp, rbp
	mov	rcx, rax
	xor	rcx, r9
	xor	rax, r11
	lea	rdi, [rcx + r10]
	lea	rsi, [rsi]
	xor	rcx, r14
	nop	
	and	rcx, rdi
	lea	rdi, [rax + r10]
	lea	rdi, [rdi]
	xor	rax, r14
	lea	rdi, [rdi]
	and	rax, rdi
	lea	rdi, [rdi]
	or	rax, rcx
	lea	rsi, [rsi]
	lea	rdi, [rbx + 8]
	lea	rdi, [rdi]
	lea	rcx, [rdx - 8]
	mov	rsp, rsp
	and	rax, r14
	mov	rbp, rbp
	cmovne	rdi, rbx
	mov	rbp, rbp
	cmovne	rcx, rdx
	test	rax, rax
	jne	.label_162
	lea	rdi, [rdi]
	cmp	rcx, 7
	ja	.label_158
.label_162:
	xor	eax, eax
	test	rcx, rcx
	je	.label_159
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_165:
	mov	rsp, rsp
	movzx	edx, byte ptr [rdi]
	mov	rsp, rsp
	cmp	edx, esi
	lea	rsi, [rsi]
	je	.label_157
	nop	
	cmp	edx, r8d
	je	.label_164
	inc	rdi
	mov	rbp, rbp
	dec	rcx
	mov	rsp, rsp
	jne	.label_165
	lea	rdi, [rdi]
	jmp	.label_159
.label_166:
	mov	rax, rdi
	lea	rsi, [rsi]
	jmp	.label_159
.label_167:
	mov	rax, rdi
	jmp	.label_159
.label_157:
	mov	rsp, rsp
	mov	rax, rdi
	mov	rsp, rsp
	jmp	.label_159
.label_164:
	mov	rax, rdi
.label_159:
	lea	rdi, [rdi]
	pop	rbx
	pop	r14
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4039b0

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
	je	.label_168
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
	jl	.label_170
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_170
	mov	esi, OFFSET FLAT:.str.2_1
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_169
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_169:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_170:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_168:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_4
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
	#Procedure 0x403aa0
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
	#Procedure 0x403af0
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
	#Procedure 0x403b10
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
	#Procedure 0x403b30

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
	#Procedure 0x403ba0
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
	#Procedure 0x403bc0

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
	je	.label_171
	test	rdx, rdx
	nop	
	je	.label_171
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_171:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403c00
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
	#Procedure 0x403ca0

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
.label_281:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_235
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_271]]
.label_454:
	lea	rsi, [rsi]
	mov	r12d, r11d
	nop	
	mov	edi, OFFSET FLAT:.str.11_1
	mov	esi, r13d
	nop	
	mov	r14, r10
	mov	bl, r8b
	mov	rbp, rbp
	mov	rbp, r9
	call	gettext_quote
	mov	qword ptr [rsp + 0x90], rax
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.12_1
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
.label_455:
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
	jne	.label_178
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_178
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_216:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_205
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_205:
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
	jne	.label_216
.label_178:
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
	jmp	.label_181
.label_447:
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
	jmp	.label_181
.label_450:
	mov	rsp, rsp
	mov	al, 1
.label_448:
	mov	r15b, 1
.label_451:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_248
	mov	cl, al
.label_248:
	lea	rdi, [rdi]
	mov	al, cl
.label_449:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_253
	test	r10, r10
	je	.label_260
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_263
.label_253:
	xor	ecx, ecx
	jmp	.label_263
.label_452:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_272
	test	r10, r10
	je	.label_189
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_194
.label_453:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	nop	
	mov	qword ptr [rsp + 0xa8], rax
	nop	
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	rbp, rbp
	mov	dil, 1
	jmp	.label_181
.label_260:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_263:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xa8], rcx
	lea	rdi, [rdi]
	mov	ecx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	mov	rbp, rbp
	jmp	.label_181
.label_272:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_194
.label_189:
	mov	rbp, rbp
	mov	eax, 1
.label_194:
	nop	
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_1
	mov	qword ptr [rsp + 0xa8], rax
	mov	rsp, rsp
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	lea	rsi, [rsi]
	mov	sil, 1
	mov	dil, r15b
	nop	word ptr cs:[rax + rax]
.label_181:
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
	jmp	.label_214
	nop	word ptr [rax + rax]
.label_239:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_214:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_266
	cmp	rsi, rbp
	jne	.label_267
	jmp	.label_270
	nop	word ptr cs:[rax + rax]
.label_266:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_270
.label_267:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_275
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_251
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_251
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
.label_251:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_191
.label_275:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_233:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_197
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_206]]
.label_429:
	test	rsi, rsi
	jne	.label_213
	jmp	.label_215
	nop	word ptr [rax + rax]
.label_191:
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
	jne	.label_229
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
	je	.label_233
	mov	rsp, rsp
	jmp	.label_182
.label_229:
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
	jmp	.label_233
.label_433:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_269
	test	rsi, rsi
	nop	
	jne	.label_261
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_215
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_177
.label_422:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_282
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_182
	cmp	edi, 2
	nop	
	jne	.label_278
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_280
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_284
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_284:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_173
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_173:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_224
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_224:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_190
.label_423:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_196
.label_424:
	mov	cl, 0x74
	jmp	.label_203
.label_425:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_196
.label_426:
	mov	bl, 0x66
	jmp	.label_196
.label_427:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_203
.label_430:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_262
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_200
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
	jae	.label_211
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_211:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_237
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_237:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_244
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_244:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_254
.label_431:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_255
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_268
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_200
.label_268:
	mov	rdi, r14
	jmp	.label_213
.label_432:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_273
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_200
	mov	rdi, r14
	jmp	.label_283
.label_197:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_287
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
.label_231:
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
	ja	.label_188
	test	dl, dl
	mov	rsp, rsp
	je	.label_188
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_177
.label_269:
	test	rsi, rsi
	jne	.label_210
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_210
.label_215:
	mov	rbp, rbp
	mov	dl, 1
.label_428:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_182
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_177
.label_282:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_213
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_214
.label_262:
	mov	rdi, r14
.label_254:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_177
.label_273:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_203
.label_283:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_217
.label_203:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_182
.label_196:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_177
	lea	rsi, [rsi]
	jmp	.label_223
.label_287:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_202
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
.label_202:
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
.label_225:
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
	je	.label_289
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
	je	.label_292
	cmp	rbp, -2
	nop	
	je	.label_184
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_256
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_208:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_236
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_207
.label_236:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_208
.label_256:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_175
	xor	r15d, r15d
.label_175:
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
	je	.label_225
	jmp	.label_231
.label_210:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_177
.label_255:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_213
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_213
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_213
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_245
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_185
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_182
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_241
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_241:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_293
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_293:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_276
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_276:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_288
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_288:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_177
.label_213:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_177:
	test	r12b, r12b
	je	.label_286
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_193
	jmp	.label_195
	nop	word ptr cs:[rax + rax]
.label_286:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_195
.label_193:
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
	jne	.label_232
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_217
	jmp	.label_223
	nop	word ptr cs:[rax + rax]
.label_195:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_223
	jmp	.label_217
.label_232:
	mov	bl, r13b
	mov	rsi, r14
.label_223:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_182
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_186
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_186
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_204
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_204:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_240
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_240:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_249
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_249:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_186:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_264
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_264:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_234
.label_261:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_177
.label_188:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_279
	nop	word ptr cs:[rax + rax]
.label_199:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_279:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_291
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_172
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_179
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_179:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_172
	nop	dword ptr [rax]
.label_291:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_200
	cmp	r14d, 2
	jne	.label_247
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_247
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_212
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_212:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_222
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_222:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_228
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_228:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_247:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_250
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_250:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_252
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
.label_252:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_257
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
.label_257:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_172:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_217
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_285
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_187
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_290
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_290:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_180
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_180:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_187
	nop	word ptr cs:[rax + rax]
.label_285:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_187:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_199
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_199
	nop	word ptr cs:[rax + rax]
.label_217:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_219
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_219
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_230
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_230:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_227
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_227:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_234
	nop	word ptr cs:[rax + rax]
.label_219:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_234:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_239
.label_278:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_190
.label_280:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_190:
	cmp	rcx, r10
	jae	.label_258
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_258:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_265
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_238
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_277
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_242
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_242:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_176
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_176:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_177
.label_265:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_177
.label_238:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_177
.label_277:
	xor	r15d, r15d
	jmp	.label_177
.label_289:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_201
.label_292:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_209
.label_184:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_218
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_226:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_220
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_226
	xor	r15d, r15d
	nop	
	jmp	.label_201
.label_218:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_209:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_201:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_231
.label_220:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_201
.label_245:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_177
.label_185:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_177
	nop	word ptr cs:[rax + rax]
.label_270:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_246
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_200
.label_246:
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
	je	.label_221
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_221
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_274
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_221
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
	je	.label_281
.label_221:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_174
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_174
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_174
	inc	rdx
	nop	dword ptr [rax + rax]
.label_192:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_183
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_183:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_192
.label_174:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_198
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_198
.label_182:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_243:
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
.label_259:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_198:
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
.label_207:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_243
.label_200:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_243
.label_274:
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
	jmp	.label_259
.label_235:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4053f0
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
	#Procedure 0x405410

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
	je	.label_294
	mov	qword ptr [rax], rbx
.label_294:
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
	#Procedure 0x405560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_295
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_299:
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
	jl	.label_299
.label_295:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_298
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_296]], OFFSET FLAT:slot0
.label_298:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_297
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_297:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405620

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405630

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
	js	.label_306
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_301
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_304
.label_301:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_302
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
	jne	.label_305
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_305:
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
.label_304:
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
	ja	.label_303
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
	je	.label_300
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_300:
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
.label_303:
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
.label_306:
	lea	rdi, [rdi]
	call	abort
.label_302:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x4058a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4058b0
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
	#Procedure 0x4058d0
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
	#Procedure 0x4058f0

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
	#Procedure 0x405950

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
	je	.label_307
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
.label_307:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4059c0

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
	#Procedure 0x405a20
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
	#Procedure 0x405a40
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
	#Procedure 0x405a60

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
	mov	rcx,  qword ptr [word ptr [rip + label_308]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_309]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_310]]
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
	#Procedure 0x405b00

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
	#Procedure 0x405b20

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
	#Procedure 0x405b30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b40

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
	#Procedure 0x405bb0

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
	#Procedure 0x405bc0

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
	mov	rax,  qword ptr [word ptr [rip + label_308]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_309]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_310]]
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
	#Procedure 0x405c50
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
	#Procedure 0x405c80
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
	#Procedure 0x405cb0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405cc0
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
	#Procedure 0x405ce0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405cf0

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
	#Procedure 0x405d00

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
	jne	.label_311
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
	je	.label_312
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_311
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_311
.label_312:
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
	je	.label_313
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_311
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_311
.label_313:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_1
	mov	eax, OFFSET FLAT:.str.12_1
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_311:
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
	#Procedure 0x405e30

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
	je	.label_315
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_314
	jmp	.label_316
.label_315:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_316
.label_314:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_316
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
.label_316:
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
	#Procedure 0x405ef0

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
	je	.label_319
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_318
	lea	rsi, [rsi]
	jmp	.label_317
.label_319:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_317
.label_318:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_317
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
.label_317:
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
	#Procedure 0x405fe0

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
	je	.label_322
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_321
	jmp	.label_320
.label_322:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_320
.label_321:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_320
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
.label_320:
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
	#Procedure 0x4060b0

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
	je	.label_325
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_324
	jmp	.label_323
.label_325:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_323
.label_324:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_323
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
.label_323:
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
	#Procedure 0x406150

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
	je	.label_328
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_327
	nop	
	jmp	.label_326
.label_328:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_326
.label_327:
	mov	eax, 1
	test	bpl, bpl
	je	.label_326
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
.label_326:
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
	#Procedure 0x4061f0

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
	je	.label_331
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_330
	lea	rsi, [rsi]
	jmp	.label_329
.label_331:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_329
.label_330:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_329
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
.label_329:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406280

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
	je	.label_334
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_333
	jmp	.label_332
.label_334:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_332
.label_333:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_332
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_332:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062f0

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
	je	.label_335
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_337
	mov	rbp, rbp
	jmp	.label_336
.label_335:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_336
.label_337:
	xor	eax, eax
.label_336:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406340

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
	je	.label_338
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_5
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_340
.label_338:
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
.label_340:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_2
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
	mov	esi, OFFSET FLAT:.str.3_1
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
	ja	.label_342
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_344]]
.label_460:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_1
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
.label_342:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_343
.label_461:
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.5_1
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
.label_462:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.6_1
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
.label_463:
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.7_1
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
	jmp	.label_347
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_1
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
	jmp	.label_346
.label_465:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9_1
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
	jmp	.label_345
.label_466:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10_2
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
.label_345:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_346:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_347:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_341
.label_468:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_2
.label_343:
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
	jmp	.label_339
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11_2
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
.label_339:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_341:
	mov	rbp, rbp
	call	__fprintf_chk
.label_459:
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
	#Procedure 0x406730
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_348:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_348
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406760

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_352:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_349
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_351
	nop	word ptr cs:[rax + rax]
.label_349:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_351:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_350
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_352
.label_350:
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
	#Procedure 0x4067f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_353
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
.label_353:
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
	#Procedure 0x4068a0
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
	mov	ecx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
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
	#Procedure 0x406930
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
	jb	.label_354
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_354:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406970

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_355
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_356
.label_355:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_356:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0
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
	jb	.label_357
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_357:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069e0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_358
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_358
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_358:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_359
	test	rax, rax
	nop	
	je	.label_360
.label_359:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_360:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a30

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_361
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_362
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_363
.label_361:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_364
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_364:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_365
.label_363:
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
.label_362:
	call	xalloc_die
.label_365:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406ad0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ae0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406af0
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
	#Procedure 0x406b30
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
	jb	.label_366
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_366
	pop	rcx
	ret	
.label_366:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406b60

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
	#Procedure 0x406bb0

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
	#Procedure 0x406bd0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	rsp, rsp
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406c20

	.globl xstrndup
	.type xstrndup, @function
xstrndup:
	push	rax
	mov	rbp, rbp
	call	__strndup
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_367
	pop	rcx
	lea	rsi, [rsi]
	ret	
.label_367:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x406c40

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_368
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_369
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
	je	.label_369
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
.label_368:
	mov	ecx, 1
.label_369:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406cb0

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
	js	.label_370
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_372
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
	je	.label_370
.label_372:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_370
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_371
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_371:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_370:
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
	#Procedure 0x406d70

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_373
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_373
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_373:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x406da0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_374
	mov	rbp, rbp
	ret	
.label_374:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x406dc0

	.globl freadptr
	.type freadptr, @function
freadptr:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	rbp, rbp
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	ja	.label_375
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	sub	rcx, qword ptr [rdi + 8]
	nop	
	je	.label_375
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rcx
	mov	rax, qword ptr [rdi + 8]
.label_375:
	ret	
	.section	.text
	.align	16
	#Procedure 0x406df0

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
	jne	.label_376
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_376
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_377
.label_376:
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
.label_377:
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
	je	.label_378
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_378:
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
	#Procedure 0x406ea0

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
	je	.label_379
	nop	
	cmp	r15, -2
	jb	.label_379
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_379
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_379:
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
	#Procedure 0x406f30
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
	#Procedure 0x406f60
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
	#Procedure 0x406f80
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406f90
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
	#Procedure 0x406fa0
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
	#Procedure 0x406fc0
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
	#Procedure 0x406fd0
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
	#Procedure 0x406fe0
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
	#Procedure 0x406ff0
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
	#Procedure 0x407000
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
	#Procedure 0x407030
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
	#Procedure 0x407050

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
	#Procedure 0x407060
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
	#Procedure 0x407080
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
	#Procedure 0x407090
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
	#Procedure 0x4070a0

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
	je	.label_390
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_389
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_389
.label_390:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_389
	test	cl, cl
	jne	.label_389
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_389:
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
	#Procedure 0x407140

	.globl freadseek
	.type freadseek, @function
freadseek:
	push	rbp
	mov	rbp, rbp
	push	r15
	mov	rbp, rbp
	push	r14
	nop	
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1008
	mov	r13, rsi
	mov	r14, rdi
	nop	
	xor	r15d, r15d
	test	r13, r13
	mov	rsp, rsp
	je	.label_391
	nop	
	mov	rdi, r14
	nop	
	call	freadahead
	lea	rsi, [rsi]
	mov	rbp, rax
	lea	rdi, [rdi]
	lea	r12, [rsp]
	nop	dword ptr [rax + rax]
.label_396:
	test	rbp, rbp
	je	.label_395
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	call	freadptr
	test	rax, rax
	je	.label_397
	lea	rdi, [rdi]
	mov	rbx, qword ptr [rsp]
	lea	rsi, [rsi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_397
	cmp	rbx, r13
	lea	rsi, [rsi]
	cmovae	rbx, r13
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	mov	rsp, rsp
	call	freadptrinc
	sub	r13, rbx
	lea	rsi, [rsi]
	je	.label_391
	sub	rbp, rbx
	je	.label_395
.label_397:
	mov	rdi, r14
	call	fgetc
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_392
	mov	rax, r13
	dec	rax
	lea	rdi, [rdi]
	setne	al
	mov	rbp, rbp
	movzx	eax, al
	mov	rsp, rsp
	sub	rbp, rax
	lea	rsi, [rsi]
	dec	r13
	jne	.label_396
	jmp	.label_391
.label_395:
	mov	rdi, r14
	mov	rbp, rbp
	call	fileno
	lea	rsi, [rsi]
	test	eax, eax
	js	.label_393
	xor	esi, esi
	mov	edx, 1
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	test	rax, rax
	js	.label_393
	mov	rbp, rbp
	mov	edx, 1
	mov	rdi, r14
	mov	rsi, r13
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	r15d, eax
	lea	rsi, [rsi]
	jmp	.label_391
.label_393:
	mov	r15d, 0x1000
	lea	rsi, [rsi]
	lea	r12, [rsp]
	mov	rbp, rbp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_394:
	cmp	r13, 0x1000
	lea	rdi, [rdi]
	mov	rbx, r13
	lea	rdi, [rdi]
	cmova	rbx, r15
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	rdi, r12
	mov	rdx, rbx
	mov	rcx, r14
	mov	rbp, rbp
	call	fread
	cmp	rax, rbx
	lea	rdi, [rdi]
	cmovb	rbx, rbp
	nop	
	jb	.label_392
	sub	r13, rbx
	jne	.label_394
	xor	r15d, r15d
	jmp	.label_391
.label_392:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	ferror
	neg	eax
	lea	rdi, [rdi]
	sbb	r15d, r15d
.label_391:
	nop	
	mov	eax, r15d
	lea	rdi, [rdi]
	add	rsp, 0x1008
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x407310

	.globl freadptrinc
	.type freadptrinc, @function
freadptrinc:
	add	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x407320

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
	je	.label_399
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_398
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_400
.label_398:
	nop	
	mov	esi, OFFSET FLAT:.str.1_5
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_399
.label_400:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_399:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x407370

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
	je	.label_401
	nop	
	mov	rax, rcx
.label_401:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4073b0

	.globl freadahead
	.type freadahead, @function
freadahead:
	mov	rcx, qword ptr [rdi + 0x28]
	nop	
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 0x20]
	nop	
	ja	.label_402
	lea	rsi, [rsi]
	mov	rax, qword ptr [rdi + 0x10]
	sub	rax, qword ptr [rdi + 8]
	xor	ecx, ecx
	nop	
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	je	.label_403
	mov	rcx, qword ptr [rdi + 0x58]
	sub	rcx, qword ptr [rdi + 0x48]
.label_403:
	lea	rdi, [rdi]
	add	rax, rcx
.label_402:
	mov	rbp, rbp
	ret	
	nop	word ptr [rax + rax]
	.section .text
	.align	16
	#Procedure 0x4073f0

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
