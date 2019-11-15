	.section	.text
	.align	32
	#Procedure 0x401680

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
	mov	esi, OFFSET FLAT:label_12
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_14
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	call	emit_mandatory_arg_note
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
	mov	esi, OFFSET FLAT:label_15
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_ancillary_info
	mov	edi, ebp
	call	exit
.label_9:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_13
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
	.align	32
	#Procedure 0x401790

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_16
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017c0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_17
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4017f0

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
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
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
	#Procedure 0x401910

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r14, rsi
	mov	r13d, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:label_31
	call	setlocale
	mov	edi, OFFSET FLAT:label_35
	mov	esi, OFFSET FLAT:label_42
	call	bindtextdomain
	mov	edi, OFFSET FLAT:label_35
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + count_bytes]],  0
	mov	byte ptr [byte ptr [rip + break_spaces]],  0
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	mov	r15d, 0x50
	cmp	eax, -1
	je	.label_36
	mov	r15d, 0x50
	lea	r12, [rsp + 6]
	jmp	.label_38
.label_399:
	mov	byte ptr [byte ptr [rip + count_bytes]],  1
	jmp	.label_44
.label_400:
	mov	byte ptr [byte ptr [rip + break_spaces]],  1
	jmp	.label_44
	nop	dword ptr [rax]
.label_38:
	lea	ecx, [rax - 0x30]
	cmp	ecx, 0x47
	ja	.label_32
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_37]]
.label_398:
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	test	rcx, rcx
	je	.label_39
	dec	rcx
	mov	qword ptr [word ptr [rip + optarg]],  rcx
	jmp	.label_47
	nop	dword ptr [rax + rax]
.label_39:
	mov	byte ptr [rsp + 6], al
	mov	byte ptr [rsp + 7], 0
	mov	qword ptr [word ptr [rip + optarg]],  r12
.label_47:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_33
	mov	edx, 5
	call	dcgettext
	mov	esi, 1
	mov	rdx, -0xa
	mov	ecx, OFFSET FLAT:label_31
	xor	r9d, r9d
	mov	rdi, rbx
	mov	r8, rax
	call	xdectoumax
	mov	r15, rax
.label_44:
	mov	edx, OFFSET FLAT:shortopts
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, -1
	jne	.label_38
.label_36:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	jne	.label_43
	mov	edi, OFFSET FLAT:label_34
	mov	rsi, r15
	call	fold_file
	mov	ebx, eax
	jmp	.label_46
.label_43:
	mov	bl, 1
	cmp	eax, r13d
	jge	.label_46
	lea	rbp, [r14 + rax*8]
	sub	r13d, eax
	mov	bl, 1
	nop	dword ptr [rax + rax]
.label_41:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r15
	call	fold_file
	and	bl, al
	add	rbp, 8
	dec	r13d
	jne	.label_41
.label_46:
	cmp	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jne	.label_45
	mov	rdi,  qword ptr [word ptr [rip + stdin]]
	call	rpl_fclose
	cmp	eax, -1
	je	.label_50
.label_45:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	cmp	eax, 0xffffff7d
	je	.label_40
	cmp	eax, 0xffffff7e
	jne	.label_49
	xor	edi, edi
	call	usage
.label_49:
	mov	edi, 1
	call	usage
.label_40:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:label_18
	mov	edx, OFFSET FLAT:label_21
	mov	r8d, OFFSET FLAT:label_48
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_50:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_34
	xor	eax, eax
	call	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x401b40

	.globl fold_file
	.type fold_file, @function
fold_file:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	qword ptr [rsp + 0x20], rsi
	mov	rbx, rdi
	cmp	byte ptr [rbx], 0x2d
	jne	.label_66
	cmp	byte ptr [rbx + 1], 0
	je	.label_71
.label_66:
	mov	esi, OFFSET FLAT:label_73
	mov	rdi, rbx
	call	fopen
	mov	r15, rax
.label_77:
	test	r15, r15
	je	.label_75
	mov	esi, 2
	mov	rdi, r15
	call	fadvise
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	mov	qword ptr [rsp + 0x10], rbx
	je	.label_55
	xor	r14d, r14d
	xor	ebx, ebx
	mov	qword ptr [rsp + 0x18], r15
	nop	dword ptr [rax]
.label_65:
	lea	r12, [rbx + 1]
	cmp	r12,  qword ptr [word ptr [rip + fold_file.allocated_out]]
	jb	.label_61
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	esi, OFFSET FLAT:fold_file.allocated_out
	call	x2realloc
	mov	qword ptr [word ptr [rip + fold_file.line_out]],  rax
.label_61:
	cmp	ebp, 0xa
	jne	.label_70
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	byte ptr [rdi + rbx], bpl
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, r12
	call	fwrite_unlocked
	xor	ebx, ebx
	xor	r14d, r14d
	jmp	.label_76
	nop	word ptr cs:[rax + rax]
.label_70:
	mov	dword ptr [rsp + 0xc], ebp
	movsx	r15d, bpl
	mov	rdi, r14
	jmp	.label_54
	nop	dword ptr [rax]
.label_56:
	mov	rdi, rax
.label_54:
	mov	esi, r15d
	call	adjust_column
	mov	r14, rax
	cmp	r14, qword ptr [rsp + 0x20]
	jbe	.label_60
	cmp	byte ptr [byte ptr [rip + break_spaces]],  1
	jne	.label_64
	mov	rax,  qword ptr [word ptr [rip + fold_file.line_out]]
	lea	rbp, [rax + rbx - 1]
	xor	r12d, r12d
	nop	word ptr cs:[rax + rax]
.label_51:
	mov	rax, rbx
	add	rax, r12
	je	.label_64
	movsx	edi, byte ptr [rbp + r12]
	call	to_uchar
	movzx	r13d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	dec	r12
	test	byte ptr [rax + r13*2], 1
	je	.label_51
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	lea	rdx, [rbx + r12 + 1]
	mov	esi, 1
	call	fwrite_unlocked
	mov	edi, 0xa
	call	putchar_unlocked
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	add	rbx, rdi
	lea	rsi, [r12 + rbx + 1]
	mov	r14, r12
	not	r14
	mov	rdx, r14
	call	memmove
	cmp	r12, -1
	mov	ebx, 0
	mov	eax, 0
	je	.label_56
	mov	rbx,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	ebp, 1
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_69:
	movsx	esi, byte ptr [rbx + rbp - 1]
	mov	rdi, rax
	call	adjust_column
	inc	rbp
	mov	rcx, r12
	add	rcx, rbp
	jne	.label_69
	mov	rbx, r14
	jmp	.label_56
.label_64:
	lea	rdx, [rbx + 1]
	mov	rax,  qword ptr [word ptr [rip + fold_file.line_out]]
	test	rbx, rbx
	je	.label_58
	mov	byte ptr [rax + rbx], 0xa
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	call	fwrite_unlocked
	xor	ebx, ebx
	xor	eax, eax
	jmp	.label_56
	nop	word ptr cs:[rax + rax]
.label_60:
	mov	rax,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	ecx, dword ptr [rsp + 0xc]
	mov	byte ptr [rax + rbx], cl
	inc	rbx
	jmp	.label_72
.label_58:
	mov	ecx, dword ptr [rsp + 0xc]
	mov	byte ptr [rax + rbx], cl
	mov	rbx, rdx
.label_72:
	mov	r15, qword ptr [rsp + 0x18]
.label_76:
	mov	rdi, r15
	call	getc_unlocked
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_65
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
	test	rbx, rbx
	je	.label_53
	mov	rdi,  qword ptr [word ptr [rip + fold_file.line_out]]
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	jmp	.label_53
.label_75:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	esi, r14d
.label_59:
	call	error
	jmp	.label_67
.label_55:
	call	__errno_location
	mov	r12, rax
	mov	r14d, dword ptr [r12]
.label_53:
	mov	rdi, r15
	call	ferror_unlocked
	test	eax, eax
	je	.label_52
	xor	edi, edi
	mov	esi, 3
	mov	rbx, qword ptr [rsp + 0x10]
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	esi, r14d
	call	error
	cmp	byte ptr [rbx], 0x2d
	jne	.label_62
	cmp	byte ptr [rbx + 1], 0
	je	.label_63
.label_62:
	mov	rdi, r15
	call	rpl_fclose
.label_63:
	xor	ebp, ebp
	jmp	.label_67
.label_52:
	mov	r14, qword ptr [rsp + 0x10]
	cmp	byte ptr [r14], 0x2d
	jne	.label_68
	mov	bpl, 1
	cmp	byte ptr [r14 + 1], 0
	je	.label_67
.label_68:
	mov	rdi, r15
	call	rpl_fclose
	mov	bpl, 1
	cmp	eax, -1
	je	.label_74
.label_67:
	mov	eax, ebp
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_71:
	mov	r15,  qword ptr [word ptr [rip + stdin]]
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	jmp	.label_77
.label_74:
	mov	ebx, dword ptr [r12]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_59
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ec0

	.globl adjust_column
	.type adjust_column, @function
adjust_column:
	mov	al,  byte ptr [byte ptr [rip + count_bytes]]
	test	al, al
	jne	.label_78
	xor	eax, eax
	cmp	sil, 0xd
	je	.label_80
	cmp	sil, 9
	je	.label_79
	cmp	sil, 8
	jne	.label_78
	lea	rax, [rdi - 1]
	test	rdi, rdi
	cmove	rax, rdi
	ret	
.label_78:
	inc	rdi
	mov	rax, rdi
.label_80:
	ret	
.label_79:
	mov	eax, edi
	and	eax, 7
	neg	rax
	lea	rax, [rdi + rax + 8]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x401f00

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	mov	eax, edi
	ret	
	nop	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f10
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f20
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401f30

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_81
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_83
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_83
.label_81:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_82
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_85
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_84
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_82:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_84:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:label_86
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ff0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402000

	.globl fadvise
	.type fadvise, @function
fadvise:
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_87
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_87:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402020

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_88
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_90
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:label_92
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_90
	mov	esi, OFFSET FLAT:label_91
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_93
	add	r14, 3
	mov	qword ptr [word ptr [rip + __progname]],  r14
.label_93:
	mov	rbx, r14
.label_90:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_88:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:label_89
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020d0
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
	#Procedure 0x402110
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
	#Procedure 0x402120
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
	#Procedure 0x402130

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
	#Procedure 0x402170
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
	#Procedure 0x402190

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_94
	test	rdx, rdx
	je	.label_94
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_94:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4021c0
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
	#Procedure 0x402240

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
.label_148:
	mov	r11, rbp
	xor	r14d, r14d
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_154
	mov	edi, 7
	mov	r13b, 1
	xor	esi, esi
	mov	r8, qword ptr [rsp + 0x30]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_156]]
.label_475:
	mov	r14d, r10d
	mov	edi, OFFSET FLAT:label_165
	mov	esi, r15d
	mov	rbx, r11
	mov	ebp, r9d
	call	gettext_quote
	mov	qword ptr [rsp + 0x78], rax
	mov	edi, OFFSET FLAT:label_95
	mov	esi, r15d
	call	gettext_quote
	mov	r9d, ebp
	mov	r10d, r14d
	mov	r11, rbx
	mov	qword ptr [rsp + 0x70], rax
.label_476:
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	test	r12b, 1
	mov	r14d, 0
	mov	rcx, qword ptr [rsp + 0x78]
	jne	.label_174
	mov	al, byte ptr [rcx]
	test	al, al
	mov	r14d, 0
	je	.label_174
	xor	r14d, r14d
.label_186:
	cmp	r14, r11
	jae	.label_184
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], al
.label_184:
	movzx	eax, byte ptr [rcx + r14 + 1]
	inc	r14
	test	al, al
	jne	.label_186
.label_174:
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
	jmp	.label_96
.label_468:
	xor	edi, edi
	xor	r14d, r14d
	mov	r13d, eax
	xor	esi, esi
	jmp	.label_96
.label_471:
	mov	al, 1
.label_469:
	mov	r12b, 1
.label_472:
	test	r12b, 1
	mov	cl, 1
	je	.label_200
	mov	ecx, eax
.label_200:
	mov	al, cl
.label_470:
	test	r12b, 1
	jne	.label_203
	test	r11, r11
	je	.label_205
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx], 0x27
.label_205:
	mov	r14d, 1
	jmp	.label_209
.label_203:
	xor	r14d, r14d
.label_209:
	mov	ecx, OFFSET FLAT:label_95
	mov	qword ptr [rsp + 0x40], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0x38], rcx
	mov	r13d, eax
	mov	sil, r12b
	mov	edi, 2
	jmp	.label_96
.label_473:
	test	r12b, 1
	jne	.label_106
	test	r11, r11
	je	.label_157
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax], 0x22
.label_157:
	mov	r14d, 1
	jmp	.label_113
.label_474:
	mov	r13b, 1
	mov	edi, 5
	xor	r14d, r14d
	mov	eax, OFFSET FLAT:label_116
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	sil, 1
	jmp	.label_96
.label_106:
	xor	r14d, r14d
.label_113:
	mov	eax, OFFSET FLAT:label_116
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0x38], rax
	mov	r13b, 1
	mov	sil, r12b
	mov	edi, 5
	nop	word ptr cs:[rax + rax]
.label_96:
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
	jmp	.label_100
	nop	dword ptr [rax]
.label_143:
	inc	rsi
.label_100:
	cmp	rbp, -1
	je	.label_168
	cmp	rsi, rbp
	jne	.label_170
	jmp	.label_172
	nop	word ptr cs:[rax + rax]
.label_168:
	cmp	byte ptr [rdi + rsi], 0
	je	.label_172
.label_170:
	cmp	byte ptr [rsp + 0x2f], 0
	je	.label_176
	mov	rax, qword ptr [rsp + 0x38]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_180
	cmp	rbp, -1
	jne	.label_180
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
.label_180:
	cmp	rbx, rbp
	jbe	.label_189
.label_176:
	xor	r8d, r8d
.label_140:
	movzx	r15d, byte ptr [rdi + rsi]
	cmp	r15, 0x7e
	ja	.label_191
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_194]]
.label_411:
	test	rsi, rsi
	jne	.label_97
	jmp	.label_123
	nop	
.label_189:
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
	jne	.label_207
	cmp	byte ptr [rsp + 7], 0
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	je	.label_140
	jmp	.label_107
.label_207:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, rbx
	mov	r10d, r15d
	mov	rax, qword ptr [rsp + 0x68]
	mov	r9d, ebp
	mov	rsi, r12
	mov	r12, rax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_140
.label_415:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_118
	test	rsi, rsi
	jne	.label_120
	cmp	rbp, 1
	je	.label_123
	xor	r13d, r13d
	jmp	.label_109
.label_404:
	cmp	byte ptr [rsp + 0x1e], 0
	je	.label_127
	cmp	byte ptr [rsp + 7], 0
	jne	.label_102
	cmp	r12d, 2
	jne	.label_131
	mov	eax, r9d
	and	al, 1
	jne	.label_131
	cmp	r14, r11
	jae	.label_152
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_152:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_134
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_134:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_139
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_139:
	add	r14, 3
	mov	r9b, 1
.label_131:
	mov	rcx, r14
	cmp	rcx, r11
	jae	.label_147
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + rcx], 0x5c
.label_147:
	lea	r14, [rcx + 1]
	mov	al, 1
	mov	r15b, 0x30
	cmp	r12d, 2
	je	.label_150
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_150
	mov	dl, byte ptr [rdi + rdx]
	add	dl, 0xd0
	cmp	dl, 9
	ja	.label_150
	cmp	r14, r11
	jae	.label_166
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x30
.label_166:
	lea	rdx, [rcx + 2]
	cmp	rdx, r11
	jae	.label_158
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rdx], 0x30
.label_158:
	add	rcx, 3
	xor	r13d, r13d
	mov	r14, rcx
	jmp	.label_109
.label_405:
	mov	bl, 0x62
	jmp	.label_173
.label_406:
	mov	cl, 0x74
	jmp	.label_175
.label_407:
	mov	bl, 0x76
	jmp	.label_173
.label_408:
	mov	bl, 0x66
	jmp	.label_173
.label_409:
	mov	cl, 0x72
	jmp	.label_175
.label_412:
	mov	r15b, 0x27
	mov	al, 1
	mov	qword ptr [rsp + 0xa0], rax
	cmp	r12d, 2
	jne	.label_183
	cmp	byte ptr [rsp + 7], 0
	jne	.label_102
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
	jae	.label_187
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_187:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_196
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x5c
.label_196:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_197
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_197:
	add	r14, 3
	xor	r9d, r9d
.label_183:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_109
.label_413:
	mov	r15b, 0x3f
	cmp	r12d, 5
	je	.label_206
	cmp	r12d, 2
	jne	.label_97
	cmp	byte ptr [rsp + 7], 0
	je	.label_97
	jmp	.label_102
.label_414:
	cmp	r12d, 2
	jne	.label_103
	cmp	byte ptr [rsp + 7], 0
	jne	.label_102
	mov	r15b, 0x5c
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_108
.label_191:
	mov	dword ptr [rsp + 0x4c], r8d
	mov	dword ptr [rsp + 0x48], r9d
	mov	byte ptr [rsp + 0x17], r10b
	mov	qword ptr [rsp + 0x98], r11
	cmp	qword ptr [rsp + 0xb0], 1
	jne	.label_177
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
.label_114:
	and	r13b, 1
	mov	r8d, r13d
	or	r8b, byte ptr [rsp + 0x2b]
	mov	qword ptr [rsp + 0x58], r12
	cmp	r12, 1
	mov	r11, qword ptr [rsp + 0x98]
	mov	r10b, byte ptr [rsp + 0x17]
	mov	r12, qword ptr [rsp + 0x68]
	mov	r9d, dword ptr [rsp + 0x48]
	ja	.label_130
	test	r8b, r8b
	je	.label_130
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	mov	r8d, dword ptr [rsp + 0x4c]
	jmp	.label_109
.label_118:
	test	rsi, rsi
	jne	.label_149
	mov	cl, byte ptr [rdi + 1]
	test	cl, cl
	jne	.label_149
.label_123:
	mov	dl, 1
.label_410:
	cmp	byte ptr [rsp + 0x1f], 0
	je	.label_102
	xor	eax, eax
	mov	r13b, dl
	nop	word ptr [rax + rax]
.label_109:
	cmp	byte ptr [rsp + 0x2e], 0
	je	.label_159
	cmp	qword ptr [rsp + 0xf0], 0
	jne	.label_162
	jmp	.label_167
	nop	word ptr cs:[rax + rax]
.label_159:
	cmp	byte ptr [rsp + 0x2d], 0
	je	.label_167
.label_162:
	mov	ebx, r8d
	mov	r8, rsi
	mov	ecx, r15d
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	ecx, r15d
	shl	esi, cl
	test	bl, bl
	jne	.label_169
	mov	rcx, qword ptr [rsp + 0xf0]
	and	esi, dword ptr [rcx + rdx*4]
	mov	ebx, r15d
	mov	rsi, r8
	je	.label_108
	jmp	.label_105
	nop	dword ptr [rax]
.label_167:
	test	r8b, r8b
	mov	ebx, r15d
	jne	.label_105
	jmp	.label_108
.label_169:
	mov	ebx, r15d
	mov	rsi, r8
	jmp	.label_105
.label_127:
	cmp	dword ptr [rsp + 0x90], 0
	jne	.label_143
	xor	r15d, r15d
	jmp	.label_97
.label_103:
	mov	cl, 0x5c
	cmp	byte ptr [rsp + 0x2a], 0
	je	.label_175
	xor	eax, eax
	mov	r15b, 0x5c
	xor	r13d, r13d
	jmp	.label_108
.label_175:
	cmp	byte ptr [rsp + 0x1f], 0
	mov	ebx, ecx
	je	.label_102
.label_173:
	xor	eax, eax
	cmp	byte ptr [rsp + 0x1e], 0
	mov	r13d, 0
	je	.label_109
	nop	word ptr cs:[rax + rax]
.label_105:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_102
	cmp	r12d, 2
	jne	.label_201
	mov	eax, r9d
	and	al, 1
	jne	.label_201
	cmp	r14, r11
	jae	.label_204
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_204:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_117
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x24
.label_117:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_99
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_99:
	add	r14, 3
	mov	r9b, 1
.label_201:
	cmp	r14, r11
	jae	.label_104
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_104:
	inc	r14
	jmp	.label_110
.label_177:
	mov	qword ptr [rsp + 0x80], 0
	cmp	rbp, -1
	jne	.label_115
	mov	rbx, rsi
	call	strlen
	mov	rsi, rbx
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, rax
.label_115:
	lea	rax, [rdi + rsi]
	mov	qword ptr [rsp + 0x58], rax
	mov	r13b, 1
	xor	r12d, r12d
	lea	rax, [rsp + 0x80]
	mov	rcx, rax
	mov	qword ptr [rsp + 0x20], rbp
	mov	qword ptr [rsp + 0x50], rsi
.label_190:
	lea	rbx, [r12 + rsi]
	lea	rsi, [rdi + rbx]
	mov	rdx, rbp
	sub	rdx, rbx
	lea	rdi, [rsp + 0x94]
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_133
	cmp	rbp, -1
	movabs	rsi, 0x20000002b
	je	.label_136
	cmp	rbp, -2
	je	.label_142
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x2c]
	cmp	al, 1
	mov	rdi, qword ptr [rsp + 0x30]
	mov	r11, qword ptr [rsp + 0x98]
	jne	.label_145
	mov	rax, qword ptr [rsp + 0x58]
	lea	rax, [rax + r12]
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_128:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_182
	bt	rsi, rdx
	jb	.label_107
.label_182:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_128
.label_145:
	mov	edi, dword ptr [rsp + 0x94]
	call	iswprint
	test	eax, eax
	jne	.label_171
	xor	r13d, r13d
.label_171:
	lea	rdi, [rsp + 0x80]
	add	r12, rbp
	mov	rbx, rdi
	call	mbsinit
	mov	rcx, rbx
	test	eax, eax
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsi, qword ptr [rsp + 0x50]
	je	.label_190
	jmp	.label_114
.label_150:
	xor	r13d, r13d
	jmp	.label_109
.label_149:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_109
.label_206:
	cmp	dword ptr [rsp + 0x8c], 0
	je	.label_97
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_97
	cmp	byte ptr [rdi + rsi + 1], 0x3f
	jne	.label_97
	movsx	edx, byte ptr [rdi + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_192
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_195
	cmp	byte ptr [rsp + 7], 0
	jne	.label_102
	mov	r15b, byte ptr [rdi + rcx]
	cmp	r14, r11
	jae	.label_198
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x3f
.label_198:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_181
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_181:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_208
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x22
.label_208:
	lea	rax, [r14 + 3]
	cmp	rax, r11
	jae	.label_98
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x3f
.label_98:
	add	r14, 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r13d, r13d
	jmp	.label_109
.label_97:
	xor	eax, eax
.label_120:
	xor	r13d, r13d
	jmp	.label_109
.label_130:
	add	qword ptr [rsp + 0x58], rsi
	xor	eax, eax
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_185:
	inc	r14
	mov	r15b, byte ptr [rdi + rsi + 1]
	mov	rsi, rdx
.label_112:
	test	r8b, r8b
	je	.label_121
	mov	ecx, dword ptr [rsp + 0x4c]
	test	cl, 1
	je	.label_122
	cmp	r14, r11
	jae	.label_124
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + r14], 0x5c
.label_124:
	inc	r14
	mov	dword ptr [rsp + 0x4c], 0
	jmp	.label_122
	nop	dword ptr [rax]
.label_121:
	cmp	byte ptr [rsp + 7], 0
	jne	.label_107
	cmp	r12d, 2
	jne	.label_132
	mov	eax, r9d
	and	al, 1
	jne	.label_132
	cmp	r14, r11
	jae	.label_135
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_135:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_138
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x24
.label_138:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_146
	mov	rdx, qword ptr [rsp + 8]
	mov	byte ptr [rdx + rax], 0x27
.label_146:
	add	r14, 3
	mov	r9b, 1
.label_132:
	cmp	r14, r11
	jae	.label_178
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x5c
.label_178:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_153
	mov	edx, r15d
	shr	dl, 6
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_153:
	lea	rax, [r14 + 2]
	cmp	rax, r11
	jae	.label_163
	mov	edx, r15d
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, qword ptr [rsp + 8]
	mov	byte ptr [rbx + rax], dl
.label_163:
	add	r14, 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_122:
	lea	rdx, [rsi + 1]
	cmp	qword ptr [rsp + 0x58], rdx
	jbe	.label_108
	test	r9b, 1
	je	.label_188
	mov	ebx, eax
	and	bl, 1
	jne	.label_188
	mov	rbx, rsi
	cmp	r14, r11
	jae	.label_179
	mov	rsi, qword ptr [rsp + 8]
	mov	byte ptr [rsi + r14], 0x27
.label_179:
	lea	rsi, [r14 + 1]
	cmp	rsi, r11
	jae	.label_137
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rsi], 0x27
.label_137:
	add	r14, 2
	xor	r9d, r9d
	mov	rsi, rbx
.label_188:
	cmp	r14, r11
	jae	.label_185
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + r14], r15b
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_108:
	test	r9b, 1
	je	.label_111
	and	al, 1
	jne	.label_111
	cmp	r14, r11
	jae	.label_193
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], 0x27
.label_193:
	lea	rax, [r14 + 1]
	cmp	rax, r11
	jae	.label_119
	mov	rcx, qword ptr [rsp + 8]
	mov	byte ptr [rcx + rax], 0x27
.label_119:
	add	r14, 2
	xor	r9d, r9d
.label_111:
	mov	ebx, r15d
.label_110:
	cmp	r14, r11
	jae	.label_199
	mov	rax, qword ptr [rsp + 8]
	mov	byte ptr [rax + r14], bl
.label_199:
	inc	r14
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r10b
	mov	r10d, r13d
	jmp	.label_143
.label_136:
	xor	r13d, r13d
.label_133:
	mov	rdi, qword ptr [rsp + 0x30]
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_114
.label_142:
	mov	rbp, qword ptr [rsp + 0x20]
	cmp	rbx, rbp
	mov	rdi, qword ptr [rsp + 0x30]
	jae	.label_101
	mov	rsi, qword ptr [rsp + 0x50]
.label_160:
	mov	rax, qword ptr [rsp + 0x58]
	cmp	byte ptr [rax + r12], 0
	je	.label_141
	lea	rax, [rsi + r12 + 1]
	inc	r12
	cmp	rax, rbp
	jb	.label_160
	xor	r13d, r13d
	jmp	.label_114
.label_101:
	xor	r13d, r13d
	mov	rsi, qword ptr [rsp + 0x50]
	jmp	.label_114
.label_141:
	xor	r13d, r13d
	jmp	.label_114
.label_192:
	xor	r13d, r13d
	jmp	.label_109
.label_195:
	xor	r13d, r13d
	mov	rsi, rbx
	jmp	.label_109
	nop	dword ptr [rax + rax]
.label_172:
	test	r14, r14
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0xa8]
	and	cl, 1
	mov	qword ptr [rsp + 0x20], rbp
	je	.label_126
	or	dl, al
	je	.label_107
.label_126:
	test	cl, cl
	setne	al
	cmp	r12d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0xa0]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x1d]
	mov	rsi, qword ptr [rsp + 0xa8]
	je	.label_125
	or	dl, al
	jne	.label_125
	test	r10b, 1
	jne	.label_129
	cmp	qword ptr [rsp + 0x60], 0
	je	.label_125
	test	r11, r11
	mov	r15d, r12d
	mov	al, bl
	mov	r12d, esi
	mov	rbp, qword ptr [rsp + 0x60]
	je	.label_148
.label_125:
	mov	rdx, qword ptr [rsp + 0x40]
	test	rdx, rdx
	je	.label_151
	test	cl, cl
	mov	rcx, qword ptr [rsp + 8]
	jne	.label_161
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_161
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_155:
	cmp	r14, r11
	jae	.label_144
	mov	byte ptr [rcx + r14], al
.label_144:
	inc	r14
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_155
	jmp	.label_161
.label_102:
	mov	qword ptr [rsp + 0x20], rbp
.label_107:
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
.label_202:
	mov	r14, rax
.label_164:
	mov	rax, r14
	add	rsp, 0xb8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_129:
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
	jmp	.label_202
.label_151:
	mov	rcx, qword ptr [rsp + 8]
.label_161:
	cmp	r14, r11
	jae	.label_164
	mov	byte ptr [rcx + r14], 0
	jmp	.label_164
.label_154:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403000
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
	#Procedure 0x403010

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
	je	.label_210
	mov	qword ptr [rax], rbx
.label_210:
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
	#Procedure 0x403100
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_211
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_214:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_214
.label_211:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_215
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_213]], OFFSET FLAT:slot0
.label_215:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_212
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_212:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4031a0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x4031b0

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
	js	.label_219
	mov	eax, dword ptr [r13]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  r12d
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [rsp], eax
	mov	qword ptr [rsp + 0x10], rbx
	mov	qword ptr [rsp + 8], r15
	jg	.label_222
	cmp	r12d, 0x7fffffff
	je	.label_217
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
	jne	.label_220
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_220:
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
.label_222:
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
	jbe	.label_218
	mov	rax, qword ptr [rsp + 0x18]
	mov	ebp, dword ptr [rsp]
	jmp	.label_221
.label_218:
	lea	rax, [rbp + r13]
	lea	r12, [rbp + r13 + 8]
	inc	r15
	mov	qword ptr [rax], r15
	mov	eax, OFFSET FLAT:slot0
	cmp	r14, rax
	mov	ebp, dword ptr [rsp]
	je	.label_216
	mov	rdi, r14
	call	free
.label_216:
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
.label_221:
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
.label_219:
	call	abort
.label_217:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403370

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403380
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
	#Procedure 0x403390
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
	#Procedure 0x4033a0

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
	#Procedure 0x4033e0

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
	je	.label_223
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
.label_223:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403440

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
	#Procedure 0x403480
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
	#Procedure 0x4034a0
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
	#Procedure 0x4034c0

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
	mov	rcx,  qword ptr [word ptr [rip + label_224]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_226]]
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
	.align	32
	#Procedure 0x403530

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
	#Procedure 0x403540

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403550
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403560

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
	#Procedure 0x4035b0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035c0

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
	mov	rax,  qword ptr [word ptr [rip + label_224]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_225]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_226]]
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
	.align	32
	#Procedure 0x403630
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
	#Procedure 0x403650
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
	#Procedure 0x403670

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403680
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
	#Procedure 0x403690

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036a0

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
	#Procedure 0x4036b0

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
	jne	.label_231
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
	je	.label_227
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_232
	mov	eax, OFFSET FLAT:label_233
	jmp	.label_230
.label_227:
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
	je	.label_234
	cmp	byte ptr [rbx], 0x60
	mov	ecx, OFFSET FLAT:label_228
	mov	eax, OFFSET FLAT:label_229
	jmp	.label_230
.label_234:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:label_116
	mov	eax, OFFSET FLAT:label_95
.label_230:
	cmove	rax, rcx
.label_231:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403770

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
	je	.label_235
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_237
	jmp	.label_236
.label_235:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_236
.label_237:
	mov	eax, 1
	test	bpl, bpl
	je	.label_236
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
.label_236:
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
	#Procedure 0x4037f0

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
	je	.label_240
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_238
	jmp	.label_239
.label_240:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_239
.label_238:
	mov	eax, 1
	test	bpl, bpl
	je	.label_239
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
.label_239:
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
	#Procedure 0x403880

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
	je	.label_241
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_243
	jmp	.label_242
.label_241:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_242
.label_243:
	mov	eax, 1
	test	bpl, bpl
	je	.label_242
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
.label_242:
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
	#Procedure 0x403900

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
	je	.label_246
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_245
	jmp	.label_244
.label_246:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_244
.label_245:
	mov	eax, 1
	test	bpl, bpl
	je	.label_244
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
.label_244:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403970

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
	je	.label_249
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_247
	jmp	.label_248
.label_249:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_248
.label_247:
	mov	eax, 1
	test	bpl, bpl
	je	.label_248
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_248:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4039d0

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
	je	.label_250
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_252
	jmp	.label_251
.label_250:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_251
.label_252:
	mov	eax, 1
	test	bpl, bpl
	je	.label_251
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_251:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

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
	je	.label_255
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_254
	jmp	.label_253
.label_255:
	xor	eax, eax
	cmp	cl, bpl
	jne	.label_253
.label_254:
	mov	eax, 1
	test	bpl, bpl
	je	.label_253
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_253:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a70

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_258
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_257
	jmp	.label_256
.label_258:
	mov	eax, 1
	test	cl, cl
	je	.label_256
.label_257:
	xor	eax, eax
.label_256:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403aa0

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
	je	.label_271
	mov	edx, OFFSET FLAT:label_262
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_268
.label_271:
	mov	edx, OFFSET FLAT:label_269
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_268:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_273
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
	mov	esi, OFFSET FLAT:label_270
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_274
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_275]]
.label_449:
	add	rsp, 8
	jmp	.label_261
.label_274:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_265
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
	jmp	.label_261
.label_450:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_260
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
.label_451:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_266
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
.label_452:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_263
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
.label_453:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_277
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
	jmp	.label_261
.label_454:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_276
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
	jmp	.label_261
.label_455:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_259
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
	jmp	.label_261
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_264
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
	jmp	.label_261
.label_458:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_267
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
	jmp	.label_261
.label_457:
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_272
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
.label_261:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_278:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_278
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403e30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_282:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_279
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_280
	nop	dword ptr [rax]
.label_279:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_280:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_281
	inc	r9
	cmp	r9, 0xa
	jb	.label_282
.label_281:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403e90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xd8
	test	al, al
	je	.label_283
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm1
	movaps	xmmword ptr [rsp + 0x70], xmm2
	movaps	xmmword ptr [rsp + 0x80], xmm3
	movaps	xmmword ptr [rsp + 0x90], xmm4
	movaps	xmmword ptr [rsp + 0xa0], xmm5
	movaps	xmmword ptr [rsp + 0xb0], xmm6
	movaps	xmmword ptr [rsp + 0xc0], xmm7
.label_283:
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
	#Procedure 0x403f20
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_284
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_285
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_287
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:label_21
	mov	ecx, OFFSET FLAT:label_22
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_286
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_288
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_288:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_289
	test	rax, rax
	je	.label_290
.label_289:
	pop	rbx
	ret	
.label_290:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ff0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_291
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_291:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404020

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_292
	test	rbx, rbx
	jne	.label_292
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_292:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_294
	test	rax, rax
	je	.label_293
.label_294:
	pop	rbx
	ret	
.label_293:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x404050

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_295
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_298
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_296
.label_295:
	test	rcx, rcx
	jne	.label_299
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	xor	ecx, ecx
	cmp	r8, 0x80
	seta	cl
	add	rcx, rax
.label_299:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_297
.label_296:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_298:
	call	xalloc_die
.label_297:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4040d0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040e0

	.globl x2realloc
	.type x2realloc, @function
x2realloc:
	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4040f0
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
	#Procedure 0x404120
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_300
	call	rpl_calloc
	test	rax, rax
	je	.label_300
	pop	rcx
	ret	
.label_300:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404150

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
	#Procedure 0x404180
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
	#Procedure 0x4041a0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:label_301
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	esi, esi
	mov	edx, OFFSET FLAT:label_57
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4041d0

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
	je	.label_305
	cmp	eax, 1
	je	.label_307
	test	eax, eax
	jne	.label_302
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_303
	cmp	rbx, r15
	jbe	.label_304
.label_303:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_306
	mov	dword ptr [rax], 0x4b
	jmp	.label_302
.label_305:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_302
.label_307:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_302
.label_306:
	mov	dword ptr [rax], 0x22
.label_302:
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
	mov	edx, OFFSET FLAT:label_86
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_304:
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
	.align	32
	#Procedure 0x4042a0

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
	.align	32
	#Procedure 0x4042d0

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
	jae	.label_320
	mov	qword ptr [rsp + 8], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_318:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_318
	test	rbp, rbp
	lea	rsi, [rsp + 0x10]
	cmovne	rsi, rbp
	mov	r15d, 4
	cmp	al, 0x2d
	je	.label_312
	mov	rdi, rbx
	mov	edx, r14d
	mov	r14, rsi
	call	strtoumax
	mov	rcx, r14
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_321
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_324
	cmp	eax, 0x22
	jne	.label_312
	mov	r12d, 1
.label_324:
	test	rbp, rbp
	jne	.label_309
	jmp	.label_311
.label_321:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_312
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_312
	mov	rdi, rbp
	call	strchr
	mov	rcx, r14
	test	rax, rax
	je	.label_312
	mov	qword ptr [rsp], 1
	xor	r12d, r12d
.label_309:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_311
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_322
	mov	r15d, 0x400
	mov	r13d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_323
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_323
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r13d, 1
	mov	rsi, r14
	test	rax, rax
	je	.label_313
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax + 1]
	mov	r13d, 1
	cmp	ecx, 0x42
	je	.label_319
	cmp	ecx, 0x44
	je	.label_319
	cmp	ecx, 0x69
	jne	.label_313
	xor	ecx, ecx
	cmp	byte ptr [rax + 2], 0x42
	sete	cl
	lea	r13, [rcx + rcx + 1]
	jmp	.label_313
.label_319:
	mov	r15d, 0x3e8
	mov	r13d, 2
	jmp	.label_313
.label_323:
	mov	rsi, r14
.label_313:
	mov	rax, qword ptr [rsi]
	movsx	ecx, byte ptr [rax]
	add	ecx, -0x42
	cmp	ecx, 0x35
	ja	.label_322
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_325]]
.label_384:
	lea	rdi, [rsp]
	mov	edx, 3
	jmp	.label_314
.label_322:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_308
.label_385:
	lea	rdi, [rsp]
	mov	edx, 1
	jmp	.label_314
.label_386:
	lea	rdi, [rsp]
	mov	edx, 2
	jmp	.label_314
.label_388:
	lea	rdi, [rsp]
	mov	edx, 4
	jmp	.label_314
.label_382:
	lea	rdi, [rsp]
	mov	esi, 0x400
	call	bkm_scale
	jmp	.label_310
.label_383:
	lea	rdi, [rsp]
	mov	edx, 6
	jmp	.label_314
.label_387:
	lea	rdi, [rsp]
	mov	edx, 5
	jmp	.label_314
.label_389:
	lea	rdi, [rsp]
	mov	edx, 8
	jmp	.label_314
.label_390:
	lea	rdi, [rsp]
	mov	edx, 7
.label_314:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_310:
	mov	rsi, r14
.label_392:
	or	eax, r12d
	mov	rcx, qword ptr [rsi]
	lea	rdx, [rcx + r13]
	mov	qword ptr [rsi], rdx
	mov	r12d, eax
	or	r12d, 2
	cmp	byte ptr [rcx + r13], 0
	cmove	r12d, eax
.label_311:
	mov	rax, qword ptr [rsp]
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx], rax
.label_308:
	mov	r15d, r12d
.label_312:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_391:
	lea	rdi, [rsp]
	mov	esi, 0x200
	call	bkm_scale
	jmp	.label_310
.label_393:
	lea	rdi, [rsp]
	mov	esi, 2
	call	bkm_scale
	jmp	.label_310
.label_320:
	mov	edi, OFFSET FLAT:label_315
	mov	esi, OFFSET FLAT:label_316
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:label_317
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404580

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
	.align	32
	#Procedure 0x4045b0

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
	je	.label_326
	xor	ebp, ebp
	nop	word ptr [rax + rax]
.label_327:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebp, eax
	dec	ebx
	jne	.label_327
.label_326:
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
	#Procedure 0x4045f0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_328
	test	rsi, rsi
	mov	ecx, 1
	je	.label_329
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_329
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_328:
	mov	ecx, 1
.label_329:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404640

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_330
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_332
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_330
.label_332:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_330
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_331
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_331:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_330:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046c0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_333
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_333
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_333:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046f0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_334
	ret	
.label_334:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404710

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
	jne	.label_335
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_335
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_336
.label_335:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_336:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_337
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_337:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404780

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
	je	.label_338
	cmp	r15, -2
	jb	.label_338
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_338
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_338:
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
	#Procedure 0x4047e0
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_339
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_339
.label_340:
	ret	
.label_339:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_340
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404810
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_341
	movabs	rax, 0x3ffffff03ffffff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_341:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404830
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840
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
	#Procedure 0x404850
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_342
.label_343:
	ret	
.label_342:
	cmp	edi, 0x7f
	je	.label_343
	xor	eax, eax
	jmp	.label_343
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404870
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
	#Procedure 0x404880
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
	#Procedure 0x404890
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
	#Procedure 0x4048a0
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
	#Procedure 0x4048b0
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	add	edi, -0x21
	cmp	edi, 0x5d
	ja	.label_344
	mov	al, 1
	jmp	qword ptr [word ptr [+ (rdi * 8) + label_345]]
.label_346:
	ret	
.label_344:
	xor	eax, eax
	jmp	.label_346
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048d0
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_347
	mov	eax, 0x80001f
	mov	ecx, edi
	shr	eax, cl
	and	eax, 1
	ret	
.label_347:
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4048f0

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
	#Procedure 0x404900
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_348
	movabs	rax, 0x7e0000007e03ff
	mov	ecx, edi
	shr	rax, cl
	and	eax, 1
	ret	
.label_348:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404920
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
	#Procedure 0x404930
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
	#Procedure 0x404940

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
	je	.label_349
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_350
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_350
.label_349:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_350
	test	cl, cl
	jne	.label_350
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_350:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_352
	cmp	byte ptr [rax], 0x43
	jne	.label_354
	cmp	byte ptr [rax + 1], 0
	je	.label_351
.label_354:
	mov	esi, OFFSET FLAT:label_353
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_352
.label_351:
	xor	ebx, ebx
.label_352:
	mov	eax, ebx
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

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
	mov	eax, OFFSET FLAT:label_355
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x404a20

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
