	.section	.text
	.align	32
	#Procedure 0x401c40

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
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 0xa
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	mov	rsi, rax
	mov	edi, 1
	mov	edx, 0xa
	mov	ecx, 5
	xor	eax, eax
	call	__printf_chk
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e40

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401e70

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.24
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401ea0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.25
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.13
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
	mov	ebx, OFFSET FLAT:.str.13
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.33
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
	je	.label_8
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.13
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.13
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.39
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.40
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
	.align	32
	#Procedure 0x401fc0

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
	mov	dword ptr [rsp + 0xa4], 0
	mov	qword ptr [rsp + 0x98], 0xa
	movabs	rax, 0x3ff0000000000000
	mov	qword ptr [rsp + 0x90], rax
	mov	rdi, qword ptr [rbx]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.15
	mov	esi, OFFSET FLAT:.str.16
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.15
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  0
	mov	byte ptr [byte ptr [rip + count_lines]],  1
	mov	byte ptr [byte ptr [rip + print_headers]],  0
	mov	byte ptr [byte ptr [rip + from_start]],  0
	mov	byte ptr [byte ptr [rip + forever]],  0
	mov	byte ptr [byte ptr [rip + line_end]],  1
	lea	r15, [rsp + 0x98]
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r15
	call	parse_obsolete_option
	movzx	eax, al
	sub	ebp, eax
	lea	r14, [rbx + rax*8]
	lea	rcx, [rsp + 0xa4]
	lea	r8, [rsp + 0x90]
	mov	edi, ebp
	mov	rsi, r14
	mov	rdx, r15
	call	parse_options
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_29
	mov	rax, qword ptr [rsp + 0x98]
	test	rax, rax
	je	.label_29
	dec	rax
	mov	qword ptr [rsp + 0x98], rax
.label_29:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	ebx, OFFSET FLAT:main.dummy_stdin
	mov	r12d, 1
	cmp	ebp, eax
	jle	.label_33
	xor	r12d, r12d
	sub	ebp, eax
	lea	rbx, [r14 + rax*8]
	je	.label_17
	movsxd	r12, ebp
.label_33:
	xor	eax, eax
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_13:
	mov	rsi, qword ptr [rbx + rax*8]
	movzx	edi, byte ptr [rsi]
	mov	edx, 0x2d
	sub	edx, edi
	jne	.label_40
	movzx	edx, byte ptr [rsi + 1]
	neg	edx
.label_40:
	test	edx, edx
	mov	dl, 1
	je	.label_12
	mov	dl, cl
.label_12:
	inc	rax
	cmp	r12, rax
	mov	cl, dl
	jne	.label_13
	and	dl, 1
	je	.label_28
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_16
.label_28:
	test	dl, dl
	sete	al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_17
	test	al, al
	jne	.label_17
	cmp	r12, 1
	jne	.label_21
	mov	eax,  dword ptr [dword ptr [rip + pid]]
	test	eax, eax
	jne	.label_21
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_21
	lea	rsi, [rsp]
	xor	edi, edi
	call	__fstat
	test	eax, eax
	jne	.label_21
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x8000
	jne	.label_17
.label_21:
	xor	edi, edi
	call	isatty
	test	eax, eax
	je	.label_17
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_17:
	cmp	qword ptr [rsp + 0x98], 0
	jne	.label_30
	mov	cl,  byte ptr [byte ptr [rip + from_start]]
	xor	eax, eax
	or	cl,  byte ptr [byte ptr [rip + forever]]
	je	.label_32
.label_30:
	mov	esi, 0x60
	mov	rdi, r12
	call	xnmalloc
	mov	r14, rax
	test	r12, r12
	je	.label_34
	mov	rax, r12
	mov	rcx, r14
	nop	dword ptr [rax + rax]
.label_38:
	mov	rdx, qword ptr [rbx]
	mov	qword ptr [rcx], rdx
	add	rbx, 8
	add	rcx, 0x60
	dec	rax
	jne	.label_38
.label_34:
	mov	eax, dword ptr [rsp + 0xa4]
	cmp	eax, 1
	je	.label_41
	cmp	r12, 2
	jb	.label_11
	test	eax, eax
	jne	.label_11
.label_41:
	mov	byte ptr [byte ptr [rip + print_headers]],  1
.label_11:
	mov	r13b, 1
	test	r12, r12
	je	.label_15
	mov	rbx, r12
	mov	rbp, r14
	nop	
.label_18:
	mov	rsi, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	call	tail_file
	and	r13b, al
	add	rbp, 0x60
	dec	rbx
	jne	.label_18
.label_15:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_20
	mov	rdi, r14
	mov	rsi, r12
	call	ignore_fifo_and_pipe
	test	rax, rax
	je	.label_20
	lea	rsi, [rsp]
	mov	edi, 1
	call	__fstat
	test	eax, eax
	js	.label_24
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x18]
	cmp	eax, 0x1000
	sete	byte ptr [byte ptr [rip + monitor_output]]
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	jne	.label_19
	mov	rdi, r14
	mov	rsi, r12
	call	tailable_stdin
	test	al, al
	jne	.label_22
	mov	rdi, r14
	mov	rsi, r12
	call	any_remote_file
	test	al, al
	jne	.label_22
	mov	rdi, r14
	mov	rsi, r12
	call	any_non_remote_file
	test	al, al
	je	.label_22
	mov	rdi, r14
	mov	rsi, r12
	call	any_symlinks
	test	al, al
	jne	.label_22
	mov	rdi, r14
	mov	rsi, r12
	call	any_non_regular_fifo
	test	al, al
	jne	.label_22
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_36
	mov	al, r13b
	xor	al, 1
	je	.label_36
.label_22:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
.label_19:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	movsd	xmm0, qword ptr [rsp + 0x90]
	mov	rdi, r14
	mov	rsi, r12
	call	tail_forever
.label_20:
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_14
	xor	edi, edi
	call	close
	test	eax, eax
	js	.label_37
.label_14:
	movzx	eax, r13b
	xor	eax, 1
.label_32:
	add	rsp, 0xa8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_36:
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	jne	.label_19
	call	inotify_init
	mov	ebx, eax
	test	ebx, ebx
	js	.label_25
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_23
	movsd	xmm0, qword ptr [rsp + 0x90]
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r12
	call	tail_forever_inotify
	test	al, al
	je	.label_27
.label_25:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rcx
	call	error
	test	r12, r12
	je	.label_19
	mov	rbp, r14
	add	rbp, 0x48
	mov	r15, r12
.label_39:
	mov	esi, dword ptr [rbp - 4]
	cmp	esi, -1
	je	.label_31
	mov	edi, ebx
	call	inotify_rm_watch
.label_31:
	mov	esi, dword ptr [rbp]
	cmp	esi, -1
	je	.label_35
	mov	edi, ebx
	call	inotify_rm_watch
.label_35:
	add	rbp, 0x60
	dec	r15
	jne	.label_39
	jmp	.label_19
.label_27:
	mov	eax, 1
	jmp	.label_32
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.17_0
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_37:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17_0
	xor	eax, eax
	call	error
.label_24:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
.label_26:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_23:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	jmp	.label_26
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402490

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
	je	.label_45
	cmp	edi, 3
	jne	.label_53
	mov	rax, qword ptr [rbx + 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_45
	cmp	byte ptr [rax + 1], 0
	jne	.label_57
	jmp	.label_45
.label_53:
	add	edi, -3
	cmp	edi, 1
	ja	.label_54
.label_57:
	mov	rax, qword ptr [rbx + 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_43
	movzx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x2d
	jne	.label_46
	cmp	byte ptr [rax + 2], 0
	je	.label_45
	xor	ebp, ebp
	jmp	.label_44
.label_45:
	call	posix2_version
	mov	rcx, qword ptr [rbx + 8]
	lea	rdi, [rcx + 1]
	movsx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_55
	cmp	edx, 0x2b
	jne	.label_60
	add	eax, 0xfffcf250
	mov	bpl, 1
	cmp	eax, 0x2b8
	ja	.label_48
	xor	ebp, ebp
	jmp	.label_44
.label_55:
	cmp	eax, 0x30db0
	jge	.label_49
	xor	ebp, ebp
	jmp	.label_48
.label_60:
	xor	ebp, ebp
	jmp	.label_44
.label_54:
	xor	ebp, ebp
	jmp	.label_44
.label_43:
	xor	ebp, ebp
	jmp	.label_44
.label_49:
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x63
	sete	al
	movzx	eax, al
	xor	ebp, ebp
	cmp	byte ptr [rdi + rax], 0
	je	.label_44
.label_48:
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_51:
	movsx	esi, byte ptr [rcx + rax + 1]
	lea	edx, [rsi - 0x30]
	inc	rax
	cmp	edx, 0xa
	jb	.label_51
	mov	r15b, 1
	mov	r8d, 0xa
	cmp	esi, 0x6c
	je	.label_56
	cmp	esi, 0x63
	je	.label_59
	cmp	esi, 0x62
	jne	.label_42
	mov	r8d, 0x1400
.label_59:
	xor	r15d, r15d
.label_56:
	lea	rcx, [rcx + rax + 1]
	jmp	.label_47
.label_46:
	xor	ebp, ebp
	jmp	.label_44
.label_42:
	add	rcx, rax
.label_47:
	movzx	esi, byte ptr [rcx]
	lea	rdx, [rcx + 1]
	cmp	esi, 0x66
	sete	r12b
	cmovne	rdx, rcx
	cmp	byte ptr [rdx], 0
	je	.label_52
	xor	ebp, ebp
	jmp	.label_44
.label_52:
	cmp	rax, 1
	je	.label_58
	xor	esi, esi
	mov	edx, 0xa
	mov	r8d, OFFSET FLAT:.str.42
	mov	rcx, r14
	call	xstrtoumax
	test	eax, 0xfffffffd
	je	.label_50
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, qword ptr [rbx + 8]
	call	quote
	mov	rbx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, r14d
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_58:
	mov	qword ptr [r14], r8
.label_50:
	mov	byte ptr [byte ptr [rip + from_start]],  bpl
	mov	byte ptr [byte ptr [rip + count_lines]],  r15b
	mov	byte ptr [byte ptr [rip + forever]],  r12b
	mov	bpl, 1
.label_44:
	mov	al, bpl
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402650

	.globl parse_options
	.type parse_options, @function
parse_options:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r14, r8
	mov	r15, rcx
	mov	r12, rdx
	mov	rbx, rsi
	mov	ebp, edi
	jmp	.label_61
.label_78:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	nop	word ptr cs:[rax + rax]
.label_61:
	mov	edx, OFFSET FLAT:.str.45
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	mov	r13d, eax
	cmp	r13d, 0x62
	jle	.label_69
	lea	eax, [r13 - 0x6e]
	cmp	eax, 0x17
	ja	.label_70
	jmp	qword ptr [word ptr [+ (rax * 8) + label_72]]
.label_935:
	mov	dword ptr [r15], 2
	jmp	.label_61
	nop	dword ptr [rax]
.label_69:
	cmp	r13d, 0x2f
	jle	.label_75
	cmp	r13d, 0x46
	je	.label_78
	jmp	.label_74
.label_70:
	cmp	r13d, 0x63
	je	.label_81
	cmp	r13d, 0x66
	jne	.label_62
.label_943:
	mov	byte ptr [byte ptr [rip + forever]],  1
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_73
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.49
	mov	edx, OFFSET FLAT:follow_mode_string
	mov	ecx, OFFSET FLAT:follow_mode_map
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + follow_mode_map]]
	mov	dword ptr [dword ptr [rip + follow_mode]],  eax
	jmp	.label_61
.label_81:
	cmp	r13d, 0x6e
	sete	byte ptr [byte ptr [rip + count_lines]]
	sete	al
	mov	rcx,  qword ptr [word ptr [rip + optarg]]
	movzx	edx, byte ptr [rcx]
	cmp	edx, 0x2d
	je	.label_84
	movzx	ecx, dl
	cmp	ecx, 0x2b
	jne	.label_79
	mov	byte ptr [byte ptr [rip + from_start]],  1
	jmp	.label_82
.label_936:
	mov	rdi,  qword ptr [word ptr [rip + optarg]]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtod
	lea	rdx, [rsp + 0x20]
	call	xstrtod
	test	al, al
	je	.label_66
	movsd	xmm0, qword ptr [rsp + 0x20]
	ucomisd	xmm0,  qword ptr [word ptr [label_65]]
	jb	.label_66
	movsd	qword ptr [r14], xmm0
	jmp	.label_61
.label_939:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  1
	jmp	.label_61
.label_941:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.51
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	edx, 0x7fffffff
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoumax
	mov	dword ptr [dword ptr [rip + pid]],  eax
	jmp	.label_61
.label_942:
	mov	byte ptr [byte ptr [rip + presume_input_pipe]],  1
	jmp	.label_61
.label_944:
	mov	byte ptr [byte ptr [rip + disable_inotify]],  1
	jmp	.label_61
.label_937:
	mov	dword ptr [r15], 1
	jmp	.label_61
.label_938:
	mov	byte ptr [byte ptr [rip + line_end]],  0
	jmp	.label_61
.label_940:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]],  rax
	jmp	.label_61
.label_73:
	mov	dword ptr [dword ptr [rip + follow_mode]],  2
	jmp	.label_61
.label_84:
	inc	rcx
	mov	qword ptr [word ptr [rip + optarg]],  rcx
.label_82:
	mov	al,  byte ptr [byte ptr [rip + count_lines]]
.label_79:
	mov	r13,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	test	al, al
	je	.label_64
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_67
.label_64:
	mov	esi, OFFSET FLAT:.str.48
.label_67:
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.46
	xor	r9d, r9d
	mov	rdi, r13
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [r12], rax
	jmp	.label_61
.label_75:
	cmp	r13d, -1
	jne	.label_77
	movzx	eax,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_80
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_68
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_80
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	jmp	.label_63
.label_68:
	mov	byte ptr [byte ptr [rip + reopen_inaccessible_files]],  0
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
.label_63:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_80:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_71
	mov	al,  byte ptr [byte ptr [rip + forever]]
	test	al, al
	jne	.label_71
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_76
.label_71:
	test	edi, edi
	je	.label_76
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_76
	call	__errno_location
	cmp	dword ptr [rax], 0x26
	jne	.label_76
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	dword ptr [dword ptr [rip + pid]],  0
.label_76:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_74:
	lea	eax, [r13 - 0x30]
	cmp	eax, 0xa
	jae	.label_62
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.57
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	ecx, r13d
	call	error
.label_77:
	cmp	r13d, 0xffffff7d
	je	.label_83
	cmp	r13d, 0xffffff7e
	jne	.label_62
	xor	edi, edi
	call	usage
.label_83:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp + 0x10], 0
	mov	qword ptr [word ptr [rsp + 8]], OFFSET FLAT:.str.56
	mov	qword ptr [word ptr [rsp]], OFFSET FLAT:.str.55
	mov	esi, OFFSET FLAT:.str.13
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.53
	mov	r9d, OFFSET FLAT:.str.54
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_62:
	mov	edi, 1
	call	usage
.label_66:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402aa0

	.globl tail_file
	.type tail_file, @function
tail_file:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0xa0
	mov	rbp, rsi
	mov	rbx, rdi
	mov	rax, qword ptr [rbx]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_88
	cmp	byte ptr [rax + 1], 0
	je	.label_92
.label_88:
	mov	rdi, qword ptr [rbx]
	xor	r12d, r12d
	xor	esi, esi
	xor	eax, eax
	call	open_safer
	mov	r15d, eax
	jmp	.label_95
.label_92:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	r15d, r15d
	mov	r12b, 1
.label_95:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	cmp	r15d, -1
	sete	cl
	and	cl, al
	xor	cl, 1
	cmp	r15d, -1
	mov	byte ptr [rbx + 0x36], cl
	je	.label_97
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_85
	mov	rdi, rbx
	call	pretty_name
	mov	rdi, rax
	call	write_header
.label_85:
	mov	rdi, rbx
	call	pretty_name
	lea	rcx, [rsp + 0x98]
	mov	rdi, rax
	mov	esi, r15d
	mov	rdx, rbp
	call	tail
	mov	r14b, al
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_93
	mov	al, r14b
	not	al
	movzx	eax, al
	shl	eax, 0x1f
	sar	eax, 0x1f
	mov	dword ptr [rbx + 0x3c], eax
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	js	.label_98
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x7fff
	jg	.label_99
	cmp	eax, 0x1000
	je	.label_86
	cmp	eax, 0x2000
	je	.label_86
	jmp	.label_89
.label_97:
	cmp	byte ptr [byte ptr [rip + forever]],  0
	je	.label_90
	mov	dword ptr [rbx + 0x38], 0xffffffff
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx + 0x20], xmm0
.label_90:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	jmp	.label_96
.label_93:
	test	r12b, r12b
	jne	.label_94
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_94
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
.label_96:
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
	jmp	.label_94
.label_98:
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], ecx
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
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
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_87
.label_99:
	cmp	eax, 0x8000
	je	.label_86
	cmp	eax, 0xc000
	jne	.label_89
.label_86:
	test	r14b, r14b
	je	.label_87
	mov	rdx, qword ptr [rsp + 0x98]
	test	r12b, r12b
	mov	eax, 0xffffffff
	mov	r8d, 1
	cmovne	r8d, eax
	lea	rcx, [rsp + 8]
	mov	rdi, rbx
	mov	esi, r15d
	call	record_open_fd
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	jmp	.label_94
.label_89:
	mov	dword ptr [rbx + 0x3c], 0xffffffff
	mov	byte ptr [rbx + 0x36], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.81
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_91
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_91:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
.label_87:
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	xor	al, 1
	mov	byte ptr [rbx + 0x34], al
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	xor	r14d, r14d
.label_94:
	mov	al, r14b
	add	rsp, 0xa0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402db0

	.globl ignore_fifo_and_pipe
	.type ignore_fifo_and_pipe, @function
ignore_fifo_and_pipe:
	xor	eax, eax
	test	rsi, rsi
	je	.label_100
	add	rdi, 0x38
	xor	eax, eax
	mov	r8d, 0xf000
	nop	word ptr cs:[rax + rax]
.label_102:
	mov	rdx, qword ptr [rdi - 0x38]
	movzx	ecx, byte ptr [rdx]
	cmp	ecx, 0x2d
	jne	.label_101
	cmp	byte ptr [rdx + 1], 0
	jne	.label_101
	cmp	byte ptr [rdi - 4], 0
	jne	.label_101
	cmp	dword ptr [rdi], 0
	js	.label_101
	mov	ecx, dword ptr [rdi - 8]
	and	ecx, r8d
	cmp	ecx, 0x1000
	jne	.label_101
	mov	dword ptr [rdi], 0xffffffff
	mov	byte ptr [rdi - 4], 1
	jmp	.label_103
	nop	word ptr [rax + rax]
.label_101:
	inc	rax
.label_103:
	add	rdi, 0x60
	dec	rsi
	jne	.label_102
.label_100:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e20

	.globl tailable_stdin
	.type tailable_stdin, @function
tailable_stdin:
	xor	ecx, ecx
	test	rsi, rsi
	mov	eax, 0
	je	.label_104
	nop	dword ptr [rax]
.label_106:
	cmp	byte ptr [rdi + 0x34], 0
	jne	.label_105
	mov	rdx, qword ptr [rdi]
	movzx	eax, byte ptr [rdx]
	cmp	eax, 0x2d
	jne	.label_105
	mov	al, 1
	cmp	byte ptr [rdx + 1], 0
	je	.label_104
	nop	dword ptr [rax]
.label_105:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_106
	xor	eax, eax
.label_104:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402e60

	.globl any_remote_file
	.type any_remote_file, @function
any_remote_file:
	test	rsi, rsi
	je	.label_107
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_109:
	cmp	dword ptr [rdi], 0
	js	.label_108
	mov	al, 1
	cmp	byte ptr [rdi - 3], 0
	jne	.label_110
.label_108:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_109
.label_107:
	xor	eax, eax
.label_110:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402e90

	.globl any_non_remote_file
	.type any_non_remote_file, @function
any_non_remote_file:
	test	rsi, rsi
	je	.label_111
	add	rdi, 0x38
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_113:
	cmp	dword ptr [rdi], 0
	js	.label_112
	mov	al, 1
	cmp	byte ptr [rdi - 3], 0
	je	.label_114
.label_112:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_113
.label_111:
	xor	eax, eax
.label_114:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

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
	xor	ebx, ebx
	test	r14, r14
	mov	eax, 0
	je	.label_115
	lea	r15, [rsp]
	mov	ebp, 0xf000
	nop	word ptr [rax + rax]
.label_116:
	mov	rdi, qword ptr [r12]
	mov	rsi, r15
	call	__lstat
	test	eax, eax
	jne	.label_117
	mov	ecx, dword ptr [rsp + 0x18]
	and	ecx, ebp
	mov	al, 1
	cmp	ecx, 0xa000
	je	.label_115
.label_117:
	inc	rbx
	add	r12, 0x60
	cmp	rbx, r14
	jb	.label_116
	xor	eax, eax
.label_115:
	add	rsp, 0x90
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x402f30

	.globl any_non_regular_fifo
	.type any_non_regular_fifo, @function
any_non_regular_fifo:
	test	rsi, rsi
	je	.label_118
	add	rdi, 0x38
	xor	ecx, ecx
	mov	r8d, 0xf000
	nop	word ptr cs:[rax + rax]
.label_121:
	cmp	dword ptr [rdi], 0
	js	.label_119
	mov	edx, dword ptr [rdi - 8]
	and	edx, r8d
	cmp	edx, 0x8000
	je	.label_119
	mov	al, 1
	cmp	edx, 0x1000
	jne	.label_120
.label_119:
	inc	rcx
	add	rdi, 0x60
	cmp	rcx, rsi
	jb	.label_121
.label_118:
	xor	eax, eax
.label_120:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402f80

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
	movsd	qword ptr [rsp + 0x68], xmm0
	mov	rax, rdx
	mov	qword ptr [rsp + 0x78], rsi
	mov	dword ptr [rsp + 0x9c], edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:wd_hasher
	mov	ecx, OFFSET FLAT:wd_comparator
	xor	r8d, r8d
	mov	rdi, rax
	mov	rbx, rax
	call	hash_initialize
	mov	r12, rax
	test	r12, r12
	je	.label_180
	mov	dword ptr [rsp + 0x98], 0xc06
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_183
	mov	dword ptr [rsp + 0x98], 2
.label_183:
	xor	r13d, r13d
	mov	rcx, rbx
	mov	qword ptr [rsp + 0x90], rcx
	test	rcx, rcx
	je	.label_186
	mov	rbp, qword ptr [rsp + 0x78]
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_171:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_128
	mov	rdi, qword ptr [rbp]
	call	strlen
	cmp	r13, rax
	cmovb	r13, rax
	mov	dword ptr [rbp + 0x44], 0xffffffff
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_130
	mov	qword ptr [rsp + 0x88], r13
	mov	r13, r12
	mov	rbx, qword ptr [rbp]
	mov	rdi, rbx
	call	dir_len
	mov	r15, rax
	mov	r12b, byte ptr [rbx + r15]
	mov	rdi, rbx
	call	last_component
	sub	rax, rbx
	mov	qword ptr [rbp + 0x50], rax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], 0
	test	r15, r15
	mov	esi, OFFSET FLAT:.str.96
	je	.label_141
	mov	rsi, qword ptr [rbp]
.label_141:
	mov	edx, 0x784
	mov	edi, dword ptr [rsp + 0x9c]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x48], eax
	mov	rax, qword ptr [rbp]
	mov	byte ptr [rax + r15], r12b
	cmp	dword ptr [rbp + 0x48], 0
	mov	r12, r13
	mov	r13, qword ptr [rsp + 0x88]
	js	.label_146
.label_130:
	mov	rsi, qword ptr [rbp]
	mov	edi, dword ptr [rsp + 0x9c]
	mov	edx, dword ptr [rsp + 0x98]
	call	inotify_add_watch
	mov	dword ptr [rbp + 0x44], eax
	test	eax, eax
	js	.label_152
	mov	rdi, r12
	mov	rsi, rbp
	call	hash_insert
	mov	cl, 1
	mov	qword ptr [rsp + 0x80], rcx
	test	rax, rax
	mov	rcx, qword ptr [rsp + 0x90]
	jne	.label_128
	jmp	.label_153
.label_152:
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_155
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
.label_155:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	mov	eax, ebx
	or	eax, 0x10
	cmp	eax, 0x1c
	je	.label_157
	cmp	ebx, dword ptr [rbp + 0x3c]
	je	.label_161
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	rsi, qword ptr [rbp]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, r15
	call	error
.label_161:
	mov	rcx, qword ptr [rsp + 0x90]
	nop	word ptr cs:[rax + rax]
.label_128:
	inc	r14
	add	rbp, 0x60
	cmp	r14, rcx
	jb	.label_171
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	mov	rdx, qword ptr [rsp + 0x70]
	test	dl, 1
	je	.label_172
	cmp	eax, 2
	mov	rdx, qword ptr [rsp + 0x80]
	je	.label_166
	jmp	.label_176
.label_186:
	mov	eax,  dword ptr [dword ptr [rip + follow_mode]]
	xor	r13d, r13d
	xor	edx, edx
	jmp	.label_176
.label_172:
	mov	rdx, qword ptr [rsp + 0x80]
.label_176:
	test	dl, 1
	jne	.label_179
	cmp	eax, 2
	jne	.label_179
	xor	ebx, ebx
	jmp	.label_159
.label_179:
	lea	rax, [rcx + rcx*2]
	shl	rax, 5
	mov	rdx, qword ptr [rsp + 0x78]
	lea	rax, [rax + rdx - 0x60]
	mov	qword ptr [rsp + 0x140], rax
	test	rcx, rcx
	je	.label_182
	xor	ebx, ebx
	lea	r15, [rsp + 0x140]
	mov	rbp, qword ptr [rsp + 0x78]
	nop	dword ptr [rax + rax]
.label_140:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_122
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_125
	mov	r14, rcx
	xor	esi, esi
	mov	rdi, rbp
	call	recheck
	jmp	.label_127
.label_125:
	mov	r14, rcx
	cmp	dword ptr [rbp + 0x38], -1
	je	.label_127
	mov	rdi, qword ptr [rbp]
	lea	rsi, [rsp + 0xb0]
	call	stat
	test	eax, eax
	jne	.label_127
	mov	rax, qword ptr [rbp + 0x20]
	cmp	rax, qword ptr [rsp + 0xb0]
	jne	.label_131
	mov	rax, qword ptr [rbp + 0x28]
	cmp	rax, qword ptr [rsp + 0xb8]
	jne	.label_131
.label_127:
	mov	rdi, rbp
	mov	rsi, r15
	call	check_fspec
	mov	rcx, r14
.label_122:
	inc	rbx
	add	rbp, 0x60
	cmp	rbx, rcx
	jb	.label_140
.label_182:
	mov	rbp, rcx
	add	r13, 0x11
	mov	rdi, r13
	call	xmalloc
	mov	r15, rax
	mov	edx, dword ptr [rsp + 0x9c]
	mov	eax, edx
	sar	eax, 0x1f
	shr	eax, 0x1a
	add	eax, edx
	and	eax, 0xc0
	mov	ecx, edx
	sub	ecx, eax
	mov	eax, 1
	shl	rax, cl
	mov	qword ptr [rsp + 0x58], rax
	movsxd	rax, edx
	mov	qword ptr [rsp + 0x50], rax
	test	edx, edx
	mov	eax, 1
	cmovg	eax, edx
	inc	eax
	mov	dword ptr [rsp + 0x4c], eax
	movsd	xmm1, qword ptr [rsp + 0x68]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0x30], rax
	cvtsi2sd	xmm0, rax
	subsd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_163]]
	cvttsd2si	rax, xmm1
	mov	qword ptr [rsp + 0x28], rax
	mov	rax, qword ptr [rsp + 0x78]
	lea	rcx, [rax + 0x48]
	mov	qword ptr [rsp + 0x38], rcx
	lea	rax, [rax + 0x50]
	mov	qword ptr [rsp + 0x18], rax
	mov	ebx, 3
	mov	dword ptr [rsp + 0x68], 0
	jmp	.label_164
.label_146:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	cmp	ebx, 0x1c
	jne	.label_160
.label_157:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_166
.label_160:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.97
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
.label_166:
	mov	rdi, r12
	call	hash_free
	jmp	.label_175
.label_131:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.100
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
.label_165:
	mov	rdi, r12
	call	hash_free
	mov	dword ptr [rbx], 0
	jmp	.label_185
.label_149:
	add	r13, r13
	mov	rdi, r15
	mov	rsi, r13
	call	xrealloc
	mov	r15, rax
	nop	dword ptr [rax]
.label_164:
	mov	qword ptr [rsp + 0x40], r15
	mov	qword ptr [rsp + 0x88], r13
	xor	eax, eax
	mov	qword ptr [rsp + 0x70], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x80], rax
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_123
.label_142:
	xor	esi, esi
	mov	rdi, r14
	call	recheck
	nop	word ptr cs:[rax + rax]
.label_123:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_132
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	jne	.label_132
	mov	rdi, r12
	call	hash_get_n_entries
	test	rax, rax
	je	.label_136
.label_132:
	mov	rbx, qword ptr [rsp + 0x70]
	cmp	rbx, qword ptr [rsp + 0x80]
	lea	r14, [rsp + 0xb0]
	ja	.label_137
.label_168:
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	test	edi, edi
	je	.label_135
	mov	eax, dword ptr [rsp + 0x68]
	test	al, 1
	jne	.label_144
	mov	dword ptr [rsp + 0x68], 0
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_148
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	al
	mov	dword ptr [rsp + 0x68], eax
	je	.label_148
	xorpd	xmm0, xmm0
	movapd	xmmword ptr [rsp + 0xa0], xmm0
	jmp	.label_135
	nop	dword ptr [rax + rax]
.label_148:
	mov	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0xa0], rax
	mov	rax, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0xa8], rax
.label_135:
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, r14
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	rdi, qword ptr [rsp + 0x50]
	call	__fdelt_chk
	mov	rcx, qword ptr [rsp + 0x58]
	or	qword ptr [rsp + rax*8 + 0xb0], rcx
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_154
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8 + 0xb0], 2
.label_154:
	cmp	dword ptr [dword ptr [rip + pid]],  0
	lea	r8, [rsp + 0xa0]
	jne	.label_162
	xor	r8d, r8d
.label_162:
	xor	edx, edx
	xor	ecx, ecx
	mov	edi, dword ptr [rsp + 0x4c]
	mov	rsi, r14
	call	select
	test	eax, eax
	jne	.label_167
	cmp	rbx, qword ptr [rsp + 0x80]
	jbe	.label_168
	jmp	.label_137
	nop	word ptr cs:[rax + rax]
.label_167:
	cmp	eax, -1
	je	.label_147
	mov	edi, 1
	call	__fdelt_chk
	test	byte ptr [rsp + rax*8 + 0xb0], 2
	jne	.label_174
	cmp	rbx, qword ptr [rsp + 0x80]
	ja	.label_137
	mov	edi, dword ptr [rsp + 0x9c]
	mov	rsi, r15
	mov	rdx, r13
	call	safe_read
	mov	rbx, rax
	test	rbx, rbx
	je	.label_177
	cmp	rbx, -1
	jne	.label_178
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_143
.label_177:
	mov	rcx, rbx
	mov	rax, qword ptr [rsp + 0x20]
	lea	ebx, [rax - 1]
	test	eax, eax
	jne	.label_149
	mov	eax, ebx
	mov	qword ptr [rsp + 0x20], rax
	mov	rbx, rcx
.label_178:
	mov	rax, rbx
	inc	rax
	cmp	rax, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x80], rax
	jbe	.label_143
.label_137:
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rdi, [r15 + rcx]
	mov	eax, dword ptr [r15 + rcx + 0xc]
	test	byte ptr [r15 + rcx + 5], 4
	je	.label_124
	test	eax, eax
	jne	.label_124
	test	rbp, rbp
	je	.label_124
	mov	ecx, dword ptr [rdi]
	mov	rdx, qword ptr [rsp + 0x38]
	xor	esi, esi
	nop	
.label_134:
	cmp	ecx, dword ptr [rdx]
	je	.label_129
	inc	rsi
	add	rdx, 0x60
	cmp	rsi, rbp
	jb	.label_134
.label_124:
	mov	qword ptr [rsp + 0x70], rbx
	mov	rcx, qword ptr [rsp + 0x80]
	lea	rcx, [rcx + rax + 0x10]
	mov	qword ptr [rsp + 0x80], rcx
	cmp	dword ptr [rdi + 0xc], 0
	je	.label_133
	mov	qword ptr [rsp + 0x60], rdi
	test	rbp, rbp
	mov	ebx, 0
	je	.label_139
	mov	rax, qword ptr [rsp + 0x60]
	lea	r14, [rax + 0x10]
	mov	r13d, dword ptr [rax]
	mov	r15, qword ptr [rsp + 0x18]
	xor	ebx, ebx
	nop	word ptr [rax + rax]
.label_187:
	cmp	dword ptr [r15 - 8], r13d
	jne	.label_145
	mov	rsi, qword ptr [r15 - 0x50]
	add	rsi, qword ptr [r15]
	mov	rdi, r14
	call	strcmp
	test	eax, eax
	je	.label_139
.label_145:
	inc	rbx
	add	r15, 0x60
	cmp	rbx, rbp
	jb	.label_187
.label_139:
	cmp	rbx, rbp
	mov	r13, qword ptr [rsp + 0x88]
	mov	r15, qword ptr [rsp + 0x40]
	je	.label_123
	lea	r15, [rbx + rbx*2]
	shl	r15, 5
	mov	rax, qword ptr [rsp + 0x78]
	lea	r14, [rax + r15]
	mov	rax, qword ptr [rsp + 0x60]
	mov	ebx, dword ptr [rax + 4]
	mov	eax, 0x200
	and	ebx, eax
	jne	.label_151
	mov	rsi, qword ptr [r14]
	mov	edi, dword ptr [rsp + 0x9c]
	mov	edx, dword ptr [rsp + 0x98]
	call	inotify_add_watch
	mov	ecx, eax
	test	ebx, ebx
	sete	al
	test	ecx, ecx
	jns	.label_156
	test	al, al
	je	.label_156
	mov	ebx, ecx
	call	__errno_location
	mov	edx, dword ptr [rax]
	mov	ecx, edx
	or	ecx, 0x10
	xor	edi, edi
	cmp	ecx, 0x1c
	je	.label_158
	mov	dword ptr [rsp + 0x10], edx
	mov	esi, OFFSET FLAT:.str.99
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 8], rax
	mov	rsi, qword ptr [r14]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, dword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 8]
	call	error
	mov	ecx, ebx
.label_156:
	mov	rax, qword ptr [rsp + 0x78]
	mov	esi, dword ptr [rax + r15 + 0x44]
	test	esi, esi
	js	.label_170
	cmp	ecx, esi
	je	.label_151
.label_170:
	mov	rax, qword ptr [rsp + 0x78]
	lea	rbx, [rax + r15 + 0x44]
	test	esi, esi
	js	.label_173
	mov	edi, dword ptr [rsp + 0x9c]
	mov	r15d, ecx
	call	inotify_rm_watch
	mov	rdi, r12
	mov	rsi, r14
	call	hash_delete
	mov	ecx, r15d
.label_173:
	mov	dword ptr [rbx], ecx
	cmp	ecx, -1
	mov	r15, qword ptr [rsp + 0x40]
	je	.label_123
	mov	rdi, r12
	mov	rsi, r14
	call	hash_delete
	mov	rbx, rax
	test	rbx, rbx
	je	.label_181
	cmp	rbx, r14
	je	.label_181
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_184
	xor	esi, esi
	mov	rdi, rbx
	call	recheck
.label_184:
	mov	dword ptr [rbx + 0x44], 0xffffffff
	mov	r15d, dword ptr [rbx + 0x38]
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
.label_181:
	mov	rdi, r12
	mov	rsi, r14
	call	hash_insert
	test	rax, rax
	je	.label_126
	nop	dword ptr [rax]
.label_151:
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	mov	r15, qword ptr [rsp + 0x40]
	jne	.label_150
	xor	esi, esi
	mov	rdi, r14
	call	recheck
	jmp	.label_150
	nop	word ptr [rax + rax]
.label_133:
	mov	eax, dword ptr [rdi]
	mov	qword ptr [rsp + 0x60], rdi
	mov	dword ptr [rsp + 0xf4], eax
	mov	rdi, r12
	mov	rsi, r14
	call	hash_lookup
	mov	r14, rax
.label_150:
	test	r14, r14
	je	.label_123
	mov	rax, qword ptr [rsp + 0x60]
	mov	eax, dword ptr [rax + 4]
	test	ax, 0xe04
	je	.label_138
	test	ah, 4
	je	.label_142
	mov	esi, dword ptr [r14 + 0x44]
	mov	edi, dword ptr [rsp + 0x9c]
	call	inotify_rm_watch
	mov	rdi, r12
	mov	rsi, r14
	call	hash_delete
	jmp	.label_142
.label_138:
	mov	rdi, r14
	lea	rsi, [rsp + 0x140]
	call	check_fspec
	jmp	.label_123
.label_129:
	mov	rdi, r12
	call	hash_free
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.104
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_175:
	call	__errno_location
	mov	dword ptr [rax], 0
.label_185:
	mov	bl, 1
.label_159:
	mov	al, bl
	add	rsp, 0x148
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_136:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_159
.label_158:
	mov	esi, OFFSET FLAT:.str.98
	mov	edx, 5
	mov	rbx, rax
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	jmp	.label_165
.label_153:
	call	xalloc_die
.label_147:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.102
	jmp	.label_169
.label_180:
	call	xalloc_die
.label_144:
	xor	edi, edi
	call	exit
.label_174:
	call	die_pipe
.label_143:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.103
.label_169:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
.label_126:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	movsd	qword ptr [rsp], xmm0
	mov	r14, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	xor	eax, eax
	cmp	r14, 1
	jne	.label_193
	mov	ecx,  dword ptr [dword ptr [rip + pid]]
	test	ecx, ecx
	jne	.label_193
	cmp	dword ptr [dword ptr [rip + follow_mode]],  2
	jne	.label_193
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_213
	mov	eax, 0xf000
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	setne	al
	jmp	.label_193
.label_213:
	xor	eax, eax
.label_193:
	lea	rcx, [r14 - 1]
	mov	qword ptr [rsp + 0x18], rcx
	movzx	eax, al
	mov	dword ptr [rsp + 0x44], eax
	test	al, al
	sete	al
	movzx	eax, al
	shl	eax, 0xb
	mov	dword ptr [rsp + 0x2c], eax
	xor	ebp, ebp
.label_205:
	mov	dword ptr [rsp + 0xc], ebp
	nop	dword ptr [rax + rax]
.label_200:
	xor	r15d, r15d
	test	r14, r14
	mov	rbp, rbx
	mov	r12d, 0
	jne	.label_191
	jmp	.label_201
.label_208:
	mov	rax,  qword ptr [word ptr [rip + max_n_unchanged_stats_between_opens]]
	mov	rcx, qword ptr [rbp + 0x58]
	lea	rdx, [rcx + 1]
	mov	qword ptr [rbp + 0x58], rdx
	cmp	rax, rcx
	mov	r12, qword ptr [rsp + 0x30]
	ja	.label_190
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	jne	.label_190
	cmp	dword ptr [rbp + 0x40], 0
	setne	al
	movzx	esi, al
	mov	rdi, rbp
	call	recheck
	mov	qword ptr [rbp + 0x58], 0
	jmp	.label_190
	nop	word ptr cs:[rax + rax]
.label_191:
	cmp	byte ptr [rbp + 0x34], 0
	jne	.label_190
	mov	r13d, dword ptr [rbp + 0x38]
	mov	rdi, rbp
	test	r13d, r13d
	js	.label_204
	call	pretty_name
	mov	ebx, dword ptr [rbp + 0x30]
	mov	ecx, dword ptr [rbp + 0x40]
	cmp	ecx, dword ptr [rsp + 0x44]
	je	.label_207
	mov	qword ptr [rsp + 0x38], rax
	mov	esi, 3
	xor	eax, eax
	mov	edi, r13d
	call	rpl_fcntl
	test	eax, eax
	js	.label_211
	mov	edx, eax
	or	edx, dword ptr [rsp + 0x2c]
	cmp	edx, eax
	je	.label_212
	mov	esi, 4
	xor	eax, eax
	mov	edi, r13d
	call	rpl_fcntl
	cmp	eax, -1
	je	.label_211
.label_212:
	mov	eax, dword ptr [rsp + 0x44]
	mov	dword ptr [rbp + 0x40], eax
	mov	ecx, eax
	jmp	.label_214
.label_204:
	mov	esi, dword ptr [rsp + 0x44]
	call	recheck
	jmp	.label_190
.label_211:
	mov	eax, dword ptr [rbp + 0x30]
	mov	ecx, 0xf000
	and	eax, ecx
	cmp	eax, 0x8000
	jne	.label_199
	call	__errno_location
	cmp	dword ptr [rax], 1
	jne	.label_199
	mov	ecx, dword ptr [rbp + 0x40]
.label_214:
	mov	rax, qword ptr [rsp + 0x38]
.label_207:
	test	ecx, ecx
	jne	.label_192
	mov	qword ptr [rsp + 0x30], r12
	mov	r12, r14
	mov	qword ptr [rsp + 0x38], rax
	mov	edi, r13d
	lea	rsi, [rsp + 0x48]
	call	__fstat
	test	eax, eax
	je	.label_195
	mov	dword ptr [rbp + 0x38], 0xffffffff
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp + 0x3c], ecx
	mov	r14d, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x38]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, r14d
	call	error
	mov	edi, r13d
	call	close
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x30]
	jmp	.label_190
.label_195:
	mov	eax, dword ptr [rsp + 0x60]
	cmp	dword ptr [rbp + 0x30], eax
	mov	r14, r12
	jne	.label_206
	and	eax, 0xf000
	cmp	eax, 0x8000
	jne	.label_209
	mov	rax, qword ptr [rbp + 8]
	cmp	rax, qword ptr [rsp + 0x78]
	jne	.label_206
.label_209:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp + 0x18]
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	je	.label_208
.label_206:
	lea	rdi, [rsp + 0x48]
	call	get_stat_mtime
	mov	qword ptr [rbp + 0x10], rax
	mov	qword ptr [rbp + 0x18], rdx
	mov	eax, dword ptr [rsp + 0x60]
	mov	dword ptr [rbp + 0x30], eax
	mov	qword ptr [rbp + 0x58], 0
	mov	eax, ebx
	and	eax, 0xf000
	cmp	eax, 0x8000
	mov	r12, qword ptr [rsp + 0x30]
	jne	.label_189
	mov	rax, qword ptr [rsp + 0x78]
	cmp	rax, qword ptr [rbp + 8]
	jge	.label_189
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	xor	edi, edi
	mov	esi, 3
	mov	r12, r14
	mov	r14, qword ptr [rsp + 0x38]
	mov	rdx, r14
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x10]
	call	error
	xor	esi, esi
	xor	edx, edx
	mov	edi, r13d
	mov	rcx, r14
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x30]
	call	xlseek
	mov	qword ptr [rbp + 8], 0
.label_189:
	cmp	r15, qword ptr [rsp + 0x18]
	mov	rax, qword ptr [rsp + 0x38]
	je	.label_192
	movzx	ecx,  byte ptr [byte ptr [rip + print_headers]]
	and	ecx, 1
	cmp	ecx, 1
	mov	qword ptr [rsp + 0x18], r15
	jne	.label_192
	mov	rdi, rax
	mov	qword ptr [rsp + 0x30], r12
	mov	r12, r14
	mov	r14, rax
	call	write_header
	mov	rax, r14
	mov	r14, r12
	mov	r12, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x18], r15
.label_192:
	mov	rcx, -2
	cmp	dword ptr [rbp + 0x40], 0
	jne	.label_188
	and	ebx, 0xf000
	mov	rcx, -1
	cmp	ebx, 0x8000
	jne	.label_188
	cmp	byte ptr [rbp + 0x35], 0
	je	.label_188
	mov	rcx, qword ptr [rsp + 0x78]
	sub	rcx, qword ptr [rbp + 8]
.label_188:
	xor	edi, edi
	mov	rsi, rax
	mov	edx, r13d
	call	dump_remainder
	test	rax, rax
	setne	cl
	and	r12b, 1
	or	r12b, cl
	add	qword ptr [rbp + 8], rax
	nop	dword ptr [rax]
.label_190:
	inc	r15
	add	rbp, 0x60
	cmp	r15, r14
	jb	.label_191
.label_201:
	mov	rbx, qword ptr [rsp + 0x20]
	mov	rdi, rbx
	mov	rsi, r14
	call	any_live_files
	test	al, al
	je	.label_194
	and	r12b, 1
	sete	al
	cmp	dword ptr [rsp + 0x44], 0
	jne	.label_196
	test	al, al
	je	.label_197
.label_196:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_198
.label_197:
	call	check_output_alive
	test	r12b, r12b
	jne	.label_200
	mov	eax, dword ptr [rsp + 0xc]
	test	al, 1
	jne	.label_202
	mov	edi,  dword ptr [dword ptr [rip + pid]]
	xor	ebp, ebp
	test	edi, edi
	je	.label_203
	xor	esi, esi
	call	kill
	test	eax, eax
	je	.label_203
	call	__errno_location
	cmp	dword ptr [rax], 1
	setne	bpl
	jne	.label_205
.label_203:
	movsd	xmm0, qword ptr [rsp]
	call	xnanosleep
	test	eax, eax
	je	.label_205
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.117
	jmp	.label_210
.label_194:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.101
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
.label_202:
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_199:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.116
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 0x38]
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_198:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
.label_210:
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
	.align	32
	#Procedure 0x403e90

	.globl pretty_name
	.type pretty_name, @function
pretty_name:
	mov	rax, qword ptr [rdi]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_215
	cmp	byte ptr [rax + 1], 0
	je	.label_216
.label_215:
	mov	rax, qword ptr [rdi]
	ret	
.label_216:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.83
	mov	edx, 5
	jmp	dcgettext
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ec0

	.globl write_header
	.type write_header, @function
write_header:
	push	rax
	mov	rcx, rdi
	mov	al,  byte ptr [byte ptr [rip + write_header.first_file]]
	and	al, 1
	mov	eax, OFFSET FLAT:.str.85
	mov	edx, OFFSET FLAT:.str_0
	cmovne	rdx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.84
	xor	eax, eax
	call	__printf_chk
	mov	byte ptr [byte ptr [rip + write_header.first_file]],  1
	pop	rax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

	.globl tail
	.type tail, @function
tail:
	push	rax
	mov	qword ptr [rcx], 0
	cmp	byte ptr [byte ptr [rip + count_lines]],  0
	je	.label_217
	call	tail_lines
	pop	rcx
	ret	
.label_217:
	call	tail_bytes
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403f20

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
	jb	.label_218
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_218
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.93
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
.label_218:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0

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
	.align	32
	#Procedure 0x403ff0

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
	je	.label_219
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	bl, 1
	cmp	ebp, 0x26
	je	.label_220
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.94
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
	jmp	.label_220
.label_219:
	mov	rdi, qword ptr [rsp]
	call	is_local_fs_type
	inc	eax
	cmp	eax, 3
	jae	.label_221
	and	al, 7
	mov	bl, 3
	mov	cl, al
	shr	bl, cl
	and	bl, 1
.label_220:
	mov	al, bl
	add	rsp, 0x78
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_221:
	mov	edi, OFFSET FLAT:.str.95
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x3c9
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.fremote
	call	__assert_fail
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404090

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
	call	__fstat
	test	eax, eax
	je	.label_226
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
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
	jmp	.label_222
.label_226:
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_227
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	start_lines
	mov	ebx, eax
	test	ebx, ebx
	je	.label_224
	shr	ebx, 0x1f
	jmp	.label_222
.label_227:
	mov	al,  byte ptr [byte ptr [rip + presume_input_pipe]]
	and	al, 1
	jne	.label_223
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_223
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	call	lseek
	mov	r13, rax
	cmp	r13, -1
	je	.label_223
	xor	esi, esi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	cmp	r13, rax
	jge	.label_225
	mov	qword ptr [r14], rax
	mov	bl, 1
	test	rax, rax
	je	.label_222
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r13
	mov	r8, rax
	mov	r9, r14
	call	file_lines
	test	al, al
	jne	.label_222
	xor	ebx, ebx
	jmp	.label_222
.label_224:
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, r12
	mov	edx, ebp
	call	dump_remainder
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_222
.label_225:
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r13
	mov	rcx, r12
	call	xlseek
.label_223:
	mov	rdi, r12
	mov	esi, ebp
	mov	rdx, r15
	mov	rcx, r14
	call	pipe_lines
	mov	bl, al
.label_222:
	mov	al, bl
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
	#Procedure 0x4041f0

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
	call	__fstat
	test	eax, eax
	je	.label_233
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.86
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
	jmp	.label_230
.label_233:
	mov	cl,  byte ptr [byte ptr [rip + presume_input_pipe]]
	xor	cl, 1
	test	r12, r12
	setns	al
	and	al, cl
	cmp	byte ptr [byte ptr [rip + from_start]],  0
	je	.label_237
	test	al, al
	je	.label_236
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x8000
	jne	.label_239
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, r12
	mov	rcx, r15
	call	xlseek
	test	rax, rax
	jns	.label_234
.label_239:
	mov	edx, 1
	mov	edi, ebp
	mov	rsi, r12
	call	lseek
	cmp	rax, -1
	je	.label_236
.label_234:
	add	qword ptr [r14], r12
	mov	r12, -1
	jmp	.label_232
.label_236:
	mov	rdi, r15
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r14
	call	start_bytes
	mov	ebx, eax
	test	ebx, ebx
	mov	r12, -1
	je	.label_232
	shr	ebx, 0x1f
	jmp	.label_230
.label_237:
	mov	rbx, -1
	test	al, al
	je	.label_240
	lea	rdi, [rsp + 8]
	call	usable_st_size
	test	al, al
	je	.label_229
	mov	r13, qword ptr [rsp + 0x38]
	jmp	.label_231
.label_240:
	mov	r13, -1
	jmp	.label_231
.label_229:
	mov	rsi, r12
	neg	rsi
	mov	edx, 2
	mov	edi, ebp
	call	lseek
	mov	rbx, rax
	lea	r13, [rbx + r12]
	cmp	rbx, -1
	cmove	r13, rbx
.label_231:
	mov	rax, qword ptr [rsp + 0x40]
	movabs	rcx, 0x2000000000000001
	cmp	rax, rcx
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	cmp	r13, rdx
	jle	.label_238
	cmp	rbx, -1
	jne	.label_235
	xor	esi, esi
	mov	edx, 1
	mov	edi, ebp
	mov	rcx, r15
	call	xlseek
	mov	rbx, rax
.label_235:
	mov	rax, r13
	sub	rax, rbx
	jle	.label_228
	cmp	rax, r12
	jbe	.label_228
	sub	r13, r12
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r13
	mov	rcx, r15
	call	xlseek
	mov	rbx, r13
.label_228:
	mov	qword ptr [r14], rbx
.label_232:
	xor	edi, edi
	mov	rsi, r15
	mov	edx, ebp
	mov	rcx, r12
	call	dump_remainder
	add	qword ptr [r14], rax
	mov	bl, 1
	jmp	.label_230
.label_238:
	mov	rdi, r15
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, r14
	call	pipe_bytes
	mov	bl, al
.label_230:
	mov	al, bl
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
	#Procedure 0x4043f0

	.globl start_lines
	.type start_lines, @function
start_lines:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x2018
	mov	r13, rcx
	mov	rbx, rdx
	mov	eax, esi
	mov	dword ptr [rsp + 0xc], eax
	xor	r14d, r14d
	test	rbx, rbx
	je	.label_242
	mov	qword ptr [rsp], rdi
	lea	r15, [rsp + 0x10]
	mov	r14d, 0xffffffff
	jmp	.label_245
	nop	word ptr [rax + rax]
.label_241:
	mov	eax, dword ptr [rsp + 0xc]
.label_245:
	mov	edx, 0x2000
	mov	edi, eax
	mov	rsi, r15
	call	safe_read
	test	rax, rax
	je	.label_242
	cmp	rax, -1
	je	.label_244
	lea	r12, [rsp + rax + 0x10]
	add	qword ptr [r13], rax
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebp, 0
	mov	eax, 0xa
	cmovne	ebp, eax
	mov	rax, r15
	nop	
.label_243:
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, ebp
	call	memchr
	test	rax, rax
	je	.label_241
	inc	rax
	dec	rbx
	jne	.label_243
	xor	r14d, r14d
	cmp	rax, r12
	jae	.label_242
	sub	r12, rax
	mov	rdi, rax
	mov	rsi, r12
	call	xwrite_stdout
.label_242:
	mov	eax, r14d
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_244:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
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
	mov	r14d, 1
	jmp	.label_242
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404500

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
	mov	dword ptr [rsp + 0xc], edx
	mov	qword ptr [rsp], rsi
	mov	ebp, edi
	xor	ebx, ebx
	lea	r13, [rsp + 0x10]
	mov	r15, r12
	jmp	.label_246
	nop	word ptr [rax + rax]
.label_248:
	sub	r15, r14
.label_246:
	cmp	r15, 0x2000
	mov	edx, 0x2000
	cmovb	rdx, r15
	mov	edi, dword ptr [rsp + 0xc]
	mov	rsi, r13
	call	safe_read
	mov	r14, rax
	test	r14, r14
	je	.label_247
	cmp	r14, -1
	je	.label_250
	test	bpl, 1
	je	.label_251
	mov	rdi, qword ptr [rsp]
	call	write_header
	xor	ebp, ebp
.label_251:
	mov	rdi, r13
	mov	rsi, r14
	call	xwrite_stdout
	add	rbx, r14
	cmp	r12, -1
	je	.label_246
	cmp	r12, -2
	je	.label_247
	cmp	r15, r14
	jne	.label_248
	jmp	.label_247
.label_250:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	cmp	ebp, 0xb
	jne	.label_249
.label_247:
	mov	rax, rbx
	add	rsp, 0x2018
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_249:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4045f0

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
	mov	qword ptr [rsp + 0x18], r9
	mov	r14, rdx
	mov	ebp, esi
	mov	r13, rdi
	mov	bl, 1
	test	r14, r14
	je	.label_258
	mov	rax, r8
	sub	rax, rcx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rcx, rax
	sar	rcx, 0x3f
	shr	rcx, 0x33
	add	rcx, rax
	and	rcx, 0xffffffffffffe000
	sub	rax, rcx
	mov	ebx, 0x2000
	cmovne	rbx, rax
	mov	r15, r8
	mov	qword ptr [rsp + 8], r8
	sub	r15, rbx
	xor	edx, edx
	mov	edi, ebp
	mov	rsi, r15
	mov	rcx, r13
	call	xlseek
	mov	edi, ebp
	mov	dword ptr [rsp + 0x2c], edi
	lea	r12, [rsp + 0x30]
	mov	rsi, r12
	mov	rdx, rbx
	call	safe_read
	cmp	rax, -1
	je	.label_261
	mov	qword ptr [rsp + 0x20], r13
	lea	rcx, [rax + r15]
	mov	rbp, qword ptr [rsp + 0x18]
	mov	qword ptr [rbp], rcx
	xor	r13d, r13d
	test	rax, rax
	je	.label_262
	movsx	ecx, byte ptr [rax + r12 - 1]
	mov	dl,  byte ptr [byte ptr [rip + line_end]]
	and	dl, 1
	mov	edx, 0xa
	cmove	edx, r13d
	cmp	ecx, edx
	setne	cl
	movzx	ecx, cl
	sub	r14, rcx
	mov	r13, rax
.label_262:
	mov	ecx, 0xa
.label_255:
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	ebx, 0
	cmovne	ebx, ecx
	neg	r14
	mov	rdx, r13
	nop	word ptr [rax + rax]
.label_260:
	test	rdx, rdx
	je	.label_256
	mov	rdi, r12
	mov	esi, ebx
	call	memrchr
	test	rax, rax
	je	.label_256
	mov	rdx, rax
	sub	rdx, r12
	inc	r14
	cmp	r14, 1
	jne	.label_260
	jmp	.label_252
	nop	word ptr cs:[rax + rax]
.label_256:
	mov	rsi, qword ptr [rsp + 0x10]
	cmp	r15, rsi
	je	.label_254
	add	r15, -0x2000
	xor	edx, edx
	mov	ebx, dword ptr [rsp + 0x2c]
	mov	edi, ebx
	mov	rsi, r15
	mov	rcx, qword ptr [rsp + 0x20]
	call	xlseek
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, r12
	call	safe_read
	mov	r13, rax
	cmp	r13, -1
	je	.label_253
	neg	r14
	lea	rax, [r13 + r15]
	mov	qword ptr [rbp], rax
	test	r13, r13
	mov	ecx, 0xa
	jne	.label_255
	jmp	.label_257
.label_252:
	lea	rsi, [r13 - 1]
	cmp	rdx, rsi
	je	.label_259
	inc	rax
	sub	rsi, rdx
	mov	rdi, rax
	call	xwrite_stdout
.label_259:
	mov	rcx, qword ptr [rsp + 8]
	sub	rcx, r13
	sub	rcx, r15
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	mov	edx, dword ptr [rsp + 0x2c]
	call	dump_remainder
	add	qword ptr [rbp], rax
.label_257:
	mov	bl, 1
	jmp	.label_258
.label_261:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	r15, rax
	mov	edi, 4
	mov	rsi, r13
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, r15
	call	error
.label_258:
	mov	al, bl
	add	rsp, 0x2038
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_254:
	xor	edx, edx
	mov	r14d, dword ptr [rsp + 0x2c]
	mov	edi, r14d
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r15, rsi
	mov	rcx, rbx
	call	xlseek
	xor	edi, edi
	mov	rsi, rbx
	mov	edx, r14d
	mov	rcx, qword ptr [rsp + 8]
	call	dump_remainder
	add	rax, r15
	mov	qword ptr [rbp], rax
	jmp	.label_257
.label_253:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp + 0x20]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	jmp	.label_258
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404880

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
	js	.label_265
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_265:
	lea	rsi, [rsp]
	mov	rdi, rbx
	call	offtostr
	mov	r14, rax
	cmp	ebp, 2
	je	.label_264
	cmp	ebp, 1
	je	.label_267
	test	ebp, ebp
	jne	.label_263
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.88
	jmp	.label_266
.label_264:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.90
	jmp	.label_266
.label_267:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.89
.label_266:
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
.label_263:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404940

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
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 8], rdx
	mov	dword ptr [rsp + 0x24], esi
	mov	qword ptr [rsp], rdi
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
	mov	qword ptr [rsp + 0x10], rbp
	jmp	.label_270
.label_284:
	mov	rax, rdx
	mov	rdx, qword ptr [rdx + 0x2010]
	mov	qword ptr [rsp + 0x10], rdx
	nop	word ptr [rax + rax]
.label_270:
	mov	r14, rcx
	jmp	.label_278
	nop	word ptr cs:[rax + rax]
.label_283:
	mov	edi, 0x2018
	call	xmalloc
.label_278:
	mov	r13, rbp
	mov	rbp, rax
	lea	rbx, [rbp + 0x2008]
	jmp	.label_280
	nop	dword ptr [rax]
.label_276:
	add	rdi, r13
	mov	rsi, rbp
	call	memcpy
	mov	rax, qword ptr [rbp + 0x2000]
	add	qword ptr [r13 + 0x2000], rax
	mov	rax, qword ptr [rbp + 0x2008]
	add	qword ptr [r13 + 0x2008], rax
.label_280:
	mov	edx, 0x2000
	mov	edi, dword ptr [rsp + 0x24]
	mov	rsi, rbp
	call	safe_read
	mov	r12, rax
	lea	rax, [r12 + 1]
	cmp	rax, 2
	jb	.label_274
	mov	qword ptr [rbp + 0x2000], r12
	mov	rax, qword ptr [rsp + 0x18]
	add	qword ptr [rax], r12
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	and	al, 1
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdi, rbp
	mov	rdx, r12
	call	memchr
	test	rax, rax
	je	.label_282
	add	r12, rbp
	nop	word ptr cs:[rax + rax]
.label_273:
	inc	rax
	inc	qword ptr [rbx]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	and	cl, 1
	mov	esi, 0
	cmovne	esi, r15d
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_273
.label_282:
	add	r14, qword ptr [rbp + 0x2008]
	mov	rdx, qword ptr [rbp + 0x2000]
	mov	rdi, qword ptr [r13 + 0x2000]
	lea	rax, [rdi + rdx]
	cmp	rax, 0x1fff
	jbe	.label_276
	mov	qword ptr [r13 + 0x2010], rbp
	mov	rcx, r14
	mov	rdx, qword ptr [rsp + 0x10]
	sub	rcx, qword ptr [rdx + 0x2008]
	cmp	rcx, qword ptr [rsp + 8]
	jbe	.label_283
	jmp	.label_284
.label_274:
	mov	rdi, rbp
	call	free
	cmp	r12, -1
	je	.label_286
	mov	rsi, qword ptr [rsp + 8]
	test	rsi, rsi
	mov	r15b, 1
	je	.label_290
	mov	rax, qword ptr [r13 + 0x2000]
	test	rax, rax
	je	.label_269
	movsx	eax, byte ptr [rax + r13 - 1]
	mov	cl,  byte ptr [byte ptr [rip + line_end]]
	xor	edx, edx
	and	cl, 1
	mov	ecx, 0xa
	cmove	ecx, edx
	cmp	eax, ecx
	je	.label_275
	inc	qword ptr [r13 + 0x2008]
	inc	r14
.label_275:
	mov	rax, r14
	mov	r13, qword ptr [rsp + 0x10]
	sub	rax, qword ptr [r13 + 0x2008]
	cmp	rax, rsi
	mov	rbx, r13
	jbe	.label_288
	mov	rbx, r13
	nop	word ptr [rax + rax]
.label_277:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2010]
	sub	rax, qword ptr [rbx + 0x2008]
	cmp	rax, rsi
	ja	.label_277
.label_288:
	mov	r12, qword ptr [rbx + 0x2000]
	add	r12, rbx
	cmp	r14, rsi
	mov	rax, rbx
	jbe	.label_289
	mov	al,  byte ptr [byte ptr [rip + line_end]]
	xor	ecx, ecx
	and	al, 1
	mov	r15d, 0xa
	cmove	r15d, ecx
	sub	rsi, r14
	mov	rax, rbx
	nop	word ptr cs:[rax + rax]
.label_281:
	mov	rbp, rsi
	mov	rdx, r12
	sub	rdx, rax
	mov	rdi, rax
	mov	esi, r15d
	call	memchr
	test	rax, rax
	je	.label_279
	inc	rax
	mov	rsi, rbp
	inc	rsi
	jne	.label_281
.label_289:
	sub	r12, rax
	mov	rdi, rax
	mov	rsi, r12
	call	xwrite_stdout
	mov	rbp, qword ptr [rbx + 0x2010]
	mov	r15b, 1
	jmp	.label_285
	nop	word ptr cs:[rax + rax]
.label_268:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2010]
.label_285:
	test	rbp, rbp
	jne	.label_268
	jmp	.label_272
.label_286:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	r15d, r15d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r14d
	mov	rdx, rbp
	call	error
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_272
.label_290:
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_272
.label_269:
	mov	r13, qword ptr [rsp + 0x10]
.label_272:
	test	r13, r13
	je	.label_287
	nop	word ptr cs:[rax + rax]
.label_271:
	mov	rbx, qword ptr [r13 + 0x2010]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_271
.label_287:
	mov	al, r15b
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_279:
	mov	edi, OFFSET FLAT:.str.91
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x2e0
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.pipe_lines
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404cd0

	.globl xwrite_stdout
	.type xwrite_stdout, @function
xwrite_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rsi
	test	rbx, rbx
	je	.label_291
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	esi, 1
	mov	rdx, rbx
	call	fwrite_unlocked
	cmp	rax, rbx
	jb	.label_292
.label_291:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_292:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.87
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	esi, OFFSET FLAT:.str.20
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
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
	je	.label_295
	lea	r12, [rsp]
	nop	word ptr cs:[rax + rax]
.label_293:
	mov	edx, 0x2000
	mov	edi, ebp
	mov	rsi, r12
	call	safe_read
	mov	ecx, 0xffffffff
	test	rax, rax
	je	.label_294
	cmp	rax, -1
	je	.label_296
	add	qword ptr [r15], rax
	mov	rcx, rbx
	sub	rcx, rax
	jb	.label_297
	mov	rbx, rcx
	jne	.label_293
	jmp	.label_295
.label_297:
	sub	rax, rbx
	je	.label_295
	lea	rdi, [rsp + rbx]
	mov	rsi, rax
	call	xwrite_stdout
.label_295:
	xor	ecx, ecx
.label_294:
	mov	eax, ecx
	add	rsp, 0x2000
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_296:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
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
	jmp	.label_294
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404e20

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_298
	mov	al, 1
	ret	
.label_298:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
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
	mov	qword ptr [rsp + 8], rdx
	mov	ebx, esi
	mov	qword ptr [rsp], rdi
	mov	edi, 0x2010
	call	xmalloc
	mov	rbp, rax
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbp + 0x2000], xmm0
	mov	edi, 0x2010
	call	xmalloc
	xor	ecx, ecx
	mov	r13, rbp
	jmp	.label_311
.label_306:
	mov	rax, r13
	mov	r13, qword ptr [r13 + 0x2008]
.label_311:
	mov	r12, rbp
	mov	rbp, rax
	mov	r14, rcx
	jmp	.label_301
	nop	dword ptr [rax + rax]
.label_303:
	add	rdi, r12
	mov	rsi, rbp
	mov	rdx, r15
	call	memcpy
	mov	rax, qword ptr [rbp + 0x2000]
	add	qword ptr [r12 + 0x2000], rax
.label_301:
	mov	edx, 0x2000
	mov	edi, ebx
	mov	rsi, rbp
	call	safe_read
	mov	r15, rax
	lea	rax, [r15 + 1]
	cmp	rax, 2
	jb	.label_300
	mov	rax, qword ptr [rsp + 0x10]
	add	qword ptr [rax], r15
	mov	qword ptr [rbp + 0x2000], r15
	mov	qword ptr [rbp + 0x2008], 0
	add	r14, r15
	mov	rdi, qword ptr [r12 + 0x2000]
	mov	rax, r15
	add	rax, rdi
	cmp	rax, 0x1fff
	jbe	.label_303
	mov	qword ptr [r12 + 0x2008], rbp
	mov	rcx, r14
	sub	rcx, qword ptr [r13 + 0x2000]
	mov	rax, qword ptr [rsp + 8]
	cmp	rcx, rax
	ja	.label_306
	mov	edi, 0x2010
	call	xmalloc
	mov	r12, rbp
	mov	rbp, rax
	jmp	.label_301
.label_300:
	mov	rdi, rbp
	call	free
	cmp	r15, -1
	je	.label_309
	mov	rsi, qword ptr [r13 + 0x2000]
	mov	rax, r14
	sub	rax, rsi
	mov	rcx, qword ptr [rsp + 8]
	cmp	rax, rcx
	mov	rbx, r13
	jbe	.label_302
	mov	rbx, r13
.label_308:
	mov	r14, rax
	mov	rbx, qword ptr [rbx + 0x2008]
	mov	rsi, qword ptr [rbx + 0x2000]
	sub	rax, rsi
	cmp	rax, rcx
	ja	.label_308
.label_302:
	xor	eax, eax
	sub	r14, rcx
	cmova	rax, r14
	lea	rdi, [rbx + rax]
	sub	rsi, rax
	call	xwrite_stdout
	mov	rbp, qword ptr [rbx + 0x2008]
	mov	r14b, 1
	jmp	.label_304
	nop	word ptr [rax + rax]
.label_305:
	mov	rsi, qword ptr [rbp + 0x2000]
	mov	rdi, rbp
	call	xwrite_stdout
	mov	rbp, qword ptr [rbp + 0x2008]
.label_304:
	test	rbp, rbp
	jne	.label_305
	jmp	.label_299
.label_309:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, qword ptr [rsp]
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_299:
	test	r13, r13
	je	.label_310
	nop	word ptr cs:[rax + rax]
.label_307:
	mov	rbx, qword ptr [r13 + 0x2008]
	mov	rdi, r13
	call	free
	test	rbx, rbx
	mov	r13, rbx
	jne	.label_307
.label_310:
	mov	al, r14b
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
	#Procedure 0x405050

	.globl is_local_fs_type
	.type is_local_fs_type, @function
is_local_fs_type:
	mov	eax, 1
	cmp	rdi, 0x2fc12fc0
	jg	.label_322
	cmp	rdi, 0xadfe
	jle	.label_319
	cmp	rdi, 0x13111a7
	jg	.label_356
	cmp	rdi, 0x1021993
	jg	.label_330
	cmp	rdi, 0x11953
	jle	.label_328
	cmp	rdi, 0x414a52
	jle	.label_329
	cmp	rdi, 0x414a53
	je	.label_314
	cmp	rdi, 0xc0ffee
	je	.label_314
	cmp	rdi, 0xc36400
	je	.label_318
	jmp	.label_313
.label_322:
	cmp	rdi, 0x65735542
	jle	.label_336
	mov	ecx, 0x858458f5
	cmp	rdi, rcx
	jle	.label_337
	mov	ecx, 0xc97e8167
	cmp	rdi, rcx
	jg	.label_340
	mov	ecx, 0xaad7aae9
	cmp	rdi, rcx
	jg	.label_342
	mov	ecx, 0x958458f5
	cmp	rdi, rcx
	jg	.label_344
	mov	ecx, 0x858458f6
	cmp	rdi, rcx
	je	.label_314
	mov	ecx, 0x9123683e
	jmp	.label_343
.label_319:
	cmp	rdi, 0x482a
	jg	.label_347
	cmp	rdi, 0x2467
	jg	.label_350
	cmp	rdi, 0x1372
	jle	.label_351
	lea	rcx, [rdi - 0x1373]
	cmp	rcx, 0x1c
	ja	.label_352
	mov	edx, 0x10001401
	bt	rdx, rcx
	jb	.label_314
.label_352:
	cmp	rdi, 0x1cd1
	je	.label_314
	jmp	.label_313
.label_336:
	cmp	rdi, 0x541900ff
	jg	.label_357
	cmp	rdi, 0x47504652
	jle	.label_359
	cmp	rdi, 0x5346414e
	jg	.label_360
	cmp	rdi, 0x52654972
	jg	.label_362
	cmp	rdi, 0x47504653
	je	.label_318
	cmp	rdi, 0x50495045
	je	.label_318
	jmp	.label_313
.label_337:
	cmp	rdi, 0x73636672
	jle	.label_363
	cmp	rdi, 0x7461636e
	jg	.label_365
	cmp	rdi, 0x73727278
	jg	.label_366
	cmp	rdi, 0x73636673
	je	.label_314
	cmp	rdi, 0x73717368
	je	.label_314
	jmp	.label_313
.label_347:
	cmp	rdi, 0x6968
	jle	.label_316
	cmp	rdi, 0x965f
	jg	.label_317
	cmp	rdi, 0x6969
	je	.label_318
	cmp	rdi, 0x7275
	je	.label_314
	cmp	rdi, 0x72b6
	je	.label_314
	jmp	.label_313
.label_357:
	cmp	rdi, 0x6165676b
	jle	.label_323
	cmp	rdi, 0x62656571
	jg	.label_324
	cmp	rdi, 0x62646575
	jg	.label_326
	cmp	rdi, 0x6165676c
	je	.label_314
	cmp	rdi, 0x61756673
	je	.label_318
	jmp	.label_313
.label_356:
	cmp	rdi, 0x15013345
	jg	.label_331
	cmp	rdi, 0xbad1de9
	jle	.label_333
	cmp	rdi, 0x11307853
	jg	.label_335
	cmp	rdi, 0xbad1dea
	je	.label_314
	cmp	rdi, 0xbd00bd0
	je	.label_318
	jmp	.label_313
.label_330:
	cmp	rdi, 0x12fd16c
	jg	.label_341
	cmp	rdi, 0x1021994
	je	.label_314
	cmp	rdi, 0x1021997
	je	.label_314
	cmp	rdi, 0x1161970
	je	.label_318
	jmp	.label_313
.label_340:
	mov	ecx, 0xf97cff8b
	cmp	rdi, rcx
	jg	.label_346
	mov	ecx, 0xde5e81e3
	cmp	rdi, rcx
	jg	.label_349
	mov	ecx, 0xc97e8168
	cmp	rdi, rcx
	je	.label_314
	mov	ecx, 0xcafe4a11
	jmp	.label_343
.label_350:
	cmp	rdi, 0x3fff
	jle	.label_353
	lea	rcx, [rdi - 0x4000]
	cmp	rcx, 6
	ja	.label_355
	mov	edx, 0x51
	bt	rdx, rcx
	jb	.label_314
.label_355:
	cmp	rdi, 0x4244
	je	.label_314
	jmp	.label_313
.label_359:
	cmp	rdi, 0x42494e4c
	jle	.label_354
	cmp	rdi, 0x453dcd27
	jg	.label_361
	cmp	rdi, 0x42494e4d
	je	.label_314
	cmp	rdi, 0x43415d53
	je	.label_314
	jmp	.label_313
.label_363:
	cmp	rdi, 0x68191121
	jle	.label_334
	cmp	rdi, 0x6e667363
	jg	.label_345
	cmp	rdi, 0x68191122
	je	.label_314
	cmp	rdi, 0x6b414653
	je	.label_318
	jmp	.label_313
.label_316:
	cmp	rdi, 0x4d59
	jle	.label_312
	cmp	rdi, 0x564b
	jg	.label_315
	cmp	rdi, 0x4d5a
	je	.label_314
	cmp	rdi, 0x517b
	je	.label_318
	jmp	.label_313
.label_323:
	cmp	rdi, 0x58465341
	jle	.label_320
	cmp	rdi, 0x5dca2df4
	jg	.label_321
	cmp	rdi, 0x58465342
	je	.label_314
	cmp	rdi, 0x5a3c69f0
	je	.label_314
	jmp	.label_313
.label_331:
	cmp	rdi, 0x1badfacd
	jle	.label_325
	cmp	rdi, 0x28cd3d44
	jg	.label_327
	cmp	rdi, 0x1badface
	je	.label_314
	cmp	rdi, 0x24051905
	je	.label_314
	jmp	.label_313
.label_328:
	cmp	rdi, 0xef52
	jg	.label_332
	cmp	rdi, 0xadff
	je	.label_314
	cmp	rdi, 0xef51
	je	.label_314
	jmp	.label_313
.label_342:
	mov	ecx, 0xbacbacbb
	cmp	rdi, rcx
	jg	.label_338
	mov	ecx, 0xaad7aaea
	cmp	rdi, rcx
	je	.label_318
	mov	ecx, 0xabba1974
	jmp	.label_343
.label_360:
	cmp	rdi, 0x5346544d
	jg	.label_367
	cmp	rdi, 0x5346414f
	je	.label_318
	cmp	rdi, 0x53464846
	je	.label_314
	jmp	.label_313
.label_365:
	cmp	rdi, 0x794c762f
	jg	.label_348
	cmp	rdi, 0x7461636f
	je	.label_318
	cmp	rdi, 0x74726163
	je	.label_314
	jmp	.label_313
.label_317:
	lea	rcx, [rdi - 0x9fa0]
	cmp	rcx, 3
	jb	.label_314
	cmp	rdi, 0x9660
	je	.label_314
	cmp	rdi, 0xadf5
	je	.label_314
	jmp	.label_313
.label_324:
	cmp	rdi, 0x6462671f
	jg	.label_358
	cmp	rdi, 0x62656572
	je	.label_314
	cmp	rdi, 0x63677270
	je	.label_314
	jmp	.label_313
.label_341:
	lea	rcx, [rdi - 0x12ff7b4]
	cmp	rcx, 4
	jb	.label_314
	cmp	rdi, 0x12fd16d
	je	.label_314
	jmp	.label_313
.label_346:
	mov	ecx, 0xfe534d41
	cmp	rdi, rcx
	jg	.label_364
	mov	ecx, 0xf97cff8c
	cmp	rdi, rcx
	je	.label_314
	mov	ecx, 0xf995e849
	jmp	.label_343
.label_351:
	cmp	rdi, 0x2f
	je	.label_314
	cmp	rdi, 0x187
	je	.label_314
	cmp	rdi, 0x7c0
	je	.label_314
	jmp	.label_313
.label_333:
	cmp	rdi, 0x13111a8
	je	.label_318
	cmp	rdi, 0x7655821
	je	.label_314
	cmp	rdi, 0x9041934
	je	.label_314
	jmp	.label_313
.label_353:
	cmp	rdi, 0x2468
	je	.label_314
	cmp	rdi, 0x2478
	je	.label_314
	cmp	rdi, 0x3434
	je	.label_314
	jmp	.label_313
.label_354:
	cmp	rdi, 0x2fc12fc1
	je	.label_314
	cmp	rdi, 0x3153464a
	je	.label_314
	cmp	rdi, 0x42465331
	je	.label_314
	jmp	.label_313
.label_334:
	cmp	rdi, 0x65735543
	je	.label_318
	cmp	rdi, 0x65735546
	je	.label_318
	cmp	rdi, 0x67596969
	je	.label_314
	jmp	.label_313
.label_312:
	cmp	rdi, 0x482b
	je	.label_314
	cmp	rdi, 0x4858
	je	.label_314
	cmp	rdi, 0x4d44
	je	.label_314
	jmp	.label_313
.label_320:
	cmp	rdi, 0x54190100
	je	.label_314
	cmp	rdi, 0x565a4653
	je	.label_314
	cmp	rdi, 0x58295829
	je	.label_314
	jmp	.label_313
.label_325:
	cmp	rdi, 0x15013346
	je	.label_314
	cmp	rdi, 0x19800202
	je	.label_314
	cmp	rdi, 0x19830326
	je	.label_318
	jmp	.label_313
.label_329:
	cmp	rdi, 0x11954
	je	.label_314
	cmp	rdi, 0x27e0eb
	je	.label_314
	jmp	.label_313
.label_344:
	mov	ecx, 0x958458f6
	cmp	rdi, rcx
	je	.label_314
	mov	eax, 0xa501fcf5
	jmp	.label_339
.label_362:
	cmp	rdi, 0x52654973
	je	.label_314
	cmp	rdi, 0x5346314d
	je	.label_314
	jmp	.label_313
.label_366:
	cmp	rdi, 0x73727279
	je	.label_314
	cmp	rdi, 0x73757245
	je	.label_318
	jmp	.label_313
.label_326:
	cmp	rdi, 0x62646576
	je	.label_314
	cmp	rdi, 0x62656570
	je	.label_314
	jmp	.label_313
.label_335:
	cmp	rdi, 0x11307854
	je	.label_314
	cmp	rdi, 0x13661366
	je	.label_314
	jmp	.label_313
.label_349:
	mov	ecx, 0xde5e81e4
	cmp	rdi, rcx
	je	.label_314
	mov	ecx, 0xf2f52010
.label_343:
	cmp	rdi, rcx
	je	.label_314
	jmp	.label_313
.label_361:
	cmp	rdi, 0x453dcd28
	je	.label_314
	cmp	rdi, 0x45584653
	je	.label_314
	jmp	.label_313
.label_345:
	cmp	rdi, 0x6e667364
	je	.label_318
	cmp	rdi, 0x6e736673
	je	.label_314
	jmp	.label_313
.label_315:
	cmp	rdi, 0x564c
	je	.label_318
	cmp	rdi, 0x5df5
	je	.label_314
	jmp	.label_313
.label_321:
	cmp	rdi, 0x5dca2df5
	je	.label_314
	cmp	rdi, 0x61636673
	je	.label_318
	jmp	.label_313
.label_327:
	cmp	rdi, 0x28cd3d45
	je	.label_314
	cmp	rdi, 0x2bad1dea
	je	.label_314
	jmp	.label_313
.label_332:
	cmp	rdi, 0xef53
	je	.label_314
	cmp	rdi, 0xf15f
	je	.label_314
	jmp	.label_313
.label_338:
	mov	eax, 0xbacbacbc
	cmp	rdi, rax
	je	.label_318
	mov	eax, 0xbeefdead
	jmp	.label_339
.label_367:
	cmp	rdi, 0x5346544e
	je	.label_314
	cmp	rdi, 0x534f434b
	je	.label_314
	jmp	.label_313
.label_348:
	cmp	rdi, 0x794c7630
	je	.label_318
	cmp	rdi, 0x7c7c6673
	je	.label_318
	jmp	.label_313
.label_358:
	cmp	rdi, 0x64626720
	je	.label_314
	cmp	rdi, 0x64646178
	jne	.label_313
.label_314:
	ret	
.label_364:
	mov	eax, 0xfe534d42
	cmp	rdi, rax
	je	.label_318
	mov	eax, 0xff534d42
.label_339:
	cmp	rdi, rax
	jne	.label_313
.label_318:
	xor	eax, eax
	ret	
.label_313:
	mov	eax, 0xffffffff
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405940

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
	.align	32
	#Procedure 0x405950

	.globl wd_comparator
	.type wd_comparator, @function
wd_comparator:
	mov	eax, dword ptr [rdi + 0x44]
	cmp	eax, dword ptr [rsi + 0x44]
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405960

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
	movzx	ecx, byte ptr [rax]
	lea	r14, [rbx + 0x36]
	cmp	ecx, 0x2d
	jne	.label_372
	lea	r12, [rbx + 0x3c]
	cmp	byte ptr [rax + 1], 0
	mov	al, byte ptr [rbx + 0x36]
	mov	byte ptr [rsp + 7], al
	mov	r13d, dword ptr [rbx + 0x3c]
	jne	.label_379
	xor	r15d, r15d
	mov	al, 1
	mov	dword ptr [rsp], eax
	jmp	.label_381
.label_372:
	mov	al, byte ptr [rbx + 0x36]
	mov	byte ptr [rsp + 7], al
	lea	r12, [rbx + 0x3c]
	mov	r13d, dword ptr [rbx + 0x3c]
.label_379:
	mov	rdi, qword ptr [rbx]
	test	bpl, bpl
	sete	al
	movzx	esi, al
	shl	esi, 0xb
	mov	dword ptr [rsp], 0
	xor	eax, eax
	call	open_safer
	mov	r15d, eax
.label_381:
	mov	rdi, rbx
	call	valid_file_spec
	test	al, al
	je	.label_385
	cmp	r15d, -1
	sete	al
	and	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	al, 1
	mov	byte ptr [r14], al
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	jne	.label_368
	mov	rdi, qword ptr [rbx]
	lea	rsi, [rsp + 8]
	call	__lstat
	test	eax, eax
	jne	.label_368
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0xa000
	jne	.label_368
	mov	dword ptr [r12], 0xffffffff
	mov	byte ptr [rbx + 0x34], 1
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.106
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
	jmp	.label_373
.label_368:
	cmp	r15d, -1
	je	.label_375
	lea	rsi, [rsp + 8]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	js	.label_375
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x20]
	cmp	eax, 0x7fff
	jg	.label_378
	cmp	eax, 0x1000
	je	.label_370
	cmp	eax, 0x2000
	je	.label_370
	jmp	.label_371
.label_375:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	dword ptr [r12], ebp
	cmp	byte ptr [r14], 0
	je	.label_383
	mov	ebp, dword ptr [rax]
	cmp	r13d, ebp
	je	.label_373
	mov	rdi, rbx
	call	pretty_name
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rax
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_373
.label_383:
	cmp	byte ptr [rsp + 7], 0
	je	.label_373
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.107
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
	jmp	.label_373
.label_378:
	cmp	eax, 0x8000
	je	.label_370
	cmp	eax, 0xc000
	jne	.label_371
.label_370:
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	fremote
	mov	byte ptr [rbx + 0x35], al
	test	al, al
	je	.label_374
	mov	al,  byte ptr [byte ptr [rip + disable_inotify]]
	and	al, 1
	je	.label_376
.label_374:
	mov	dword ptr [r12], 0
	or	r13d, 2
	cmp	r13d, 2
	jne	.label_377
	cmp	dword ptr [rbx + 0x38], -1
	je	.label_380
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rsp + 0x10]
	jne	.label_382
	mov	rax, qword ptr [rbx + 0x20]
	cmp	rax, qword ptr [rsp + 8]
	jne	.label_382
	mov	rdi, rbx
	call	pretty_name
	mov	edi, r15d
	mov	rsi, rax
	call	close_fd
	jmp	.label_384
.label_371:
	mov	dword ptr [r12], 0xffffffff
	mov	byte ptr [r14], 0
	mov	al,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	al, 1
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	sete	cl
	and	cl, al
	xor	cl, 1
	mov	byte ptr [rbx + 0x34], cl
	cmp	byte ptr [rsp + 7], 0
	jne	.label_387
	cmp	r13d, dword ptr [r12]
	je	.label_373
.label_387:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.109
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, rbx
	call	pretty_name
	mov	edi, 4
	mov	rsi, rax
	call	quotearg_style
	mov	rbp, rax
	mov	r8d, OFFSET FLAT:.str_0
	cmp	byte ptr [rbx + 0x34], 0
	je	.label_369
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 5
	call	dcgettext
	mov	r8, rax
.label_369:
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	call	error
	jmp	.label_373
.label_376:
	mov	dword ptr [r12], 0xffffffff
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.110
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
.label_373:
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
	jmp	.label_384
.label_377:
	cmp	dword ptr [rbx + 0x38], -1
	jne	.label_386
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.112
	jmp	.label_388
.label_382:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.114
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
	jmp	.label_389
.label_380:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.113
.label_388:
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
.label_389:
	movzx	eax, bpl
	mov	ecx, dword ptr [rsp]
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
.label_384:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_385:
	mov	edi, OFFSET FLAT:.str.105
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x3df
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
.label_386:
	mov	edi, OFFSET FLAT:.str.111
	mov	esi, OFFSET FLAT:.str.92
	mov	edx, 0x42c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.recheck
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e10

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
	je	.label_392
	mov	rdi, rbx
	call	pretty_name
	mov	r15, rax
	mov	edi, dword ptr [rbx + 0x38]
	lea	rsi, [rsp + 8]
	call	__fstat
	test	eax, eax
	je	.label_391
	call	__errno_location
	mov	eax, dword ptr [rax]
	mov	dword ptr [rbx + 0x3c], eax
	mov	edi, dword ptr [rbx + 0x38]
	mov	rsi, r15
	call	close_fd
	mov	dword ptr [rbx + 0x38], 0xffffffff
	jmp	.label_392
.label_391:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rbx + 0x30]
	and	ecx, eax
	cmp	ecx, 0x8000
	jne	.label_390
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rcx, qword ptr [rbx + 8]
	jge	.label_390
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.115
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
	jmp	.label_394
.label_390:
	and	eax, dword ptr [rbx + 0x30]
	cmp	eax, 0x8000
	jne	.label_394
	mov	rax, qword ptr [rsp + 0x38]
	cmp	rax, qword ptr [rbx + 8]
	jne	.label_394
	lea	rdi, [rsp + 8]
	call	get_stat_mtime
	mov	rcx, rdx
	mov	rdi, qword ptr [rbx + 0x10]
	mov	rsi, qword ptr [rbx + 0x18]
	mov	rdx, rax
	call	timespec_cmp
	test	eax, eax
	je	.label_392
.label_394:
	movzx	eax,  byte ptr [byte ptr [rip + print_headers]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_393
	cmp	qword ptr [r14], rbx
	setne	al
	jmp	.label_395
.label_393:
	xor	eax, eax
.label_395:
	mov	edx, dword ptr [rbx + 0x38]
	movzx	edi, al
	mov	rcx, -1
	mov	rsi, r15
	call	dump_remainder
	add	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_392
	mov	qword ptr [r14], rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	fflush_unlocked
	test	eax, eax
	jne	.label_396
.label_392:
	add	rsp, 0x98
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
.label_396:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x405f90

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
	.align	32
	#Procedure 0x405fb0

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
	.align	32
	#Procedure 0x405fd0

	.globl any_live_files
	.type any_live_files, @function
any_live_files:
	mov	al, 1
	movzx	ecx,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	and	ecx, 1
	cmp	ecx, 1
	jne	.label_397
	cmp	dword ptr [dword ptr [rip + follow_mode]],  1
	je	.label_398
.label_397:
	test	rsi, rsi
	je	.label_400
	mov	r8b,  byte ptr [byte ptr [rip + reopen_inaccessible_files]]
	xor	r8b, 1
	add	rdi, 0x38
	xor	edx, edx
.label_399:
	cmp	dword ptr [rdi], 0
	jns	.label_398
	cmp	byte ptr [rdi - 4], 0
	setne	cl
	or	cl, r8b
	test	cl, 1
	je	.label_398
	inc	rdx
	add	rdi, 0x60
	cmp	rdx, rsi
	jb	.label_399
.label_400:
	xor	eax, eax
.label_398:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406030

	.globl check_output_alive
	.type check_output_alive, @function
check_output_alive:
	push	rbx
	sub	rsp, 0x90
	cmp	byte ptr [byte ptr [rip + monitor_output]],  0
	je	.label_401
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	lea	rbx, [rsp]
	xor	eax, eax
	mov	ecx, 0x10
	mov	rdi, rbx
	cld	
	rep stosq	qword ptr [rdi], rax
	mov	edi, 1
	call	__fdelt_chk
	or	byte ptr [rsp + rax*8], 2
	lea	r8, [rsp + 0x80]
	mov	edi, 2
	xor	edx, edx
	xor	ecx, ecx
	mov	rsi, rbx
	call	select
	cmp	eax, 1
	je	.label_402
.label_401:
	add	rsp, 0x90
	pop	rbx
	ret	
.label_402:
	call	die_pipe
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060a0

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4060b0

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
	mov	qword ptr [rsp + 0x20], rbp
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_406
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_403:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_404
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_408
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_409
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_405
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_404
.label_405:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_404
.label_409:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_404:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_403
	jmp	.label_407
.label_406:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_407:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_408:
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
	.align	32
	#Procedure 0x4061b0

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
	je	.label_410
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_411
.label_410:
	mov	esi, OFFSET FLAT:.str_4
.label_411:
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
	.align	32
	#Procedure 0x406220

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
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbx, qword ptr [r15]
	test	rbx, rbx
	je	.label_416
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_413:
	test	rbp, rbp
	je	.label_415
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_412
.label_415:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_0
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_414
	nop	word ptr cs:[rax + rax]
.label_412:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_414:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_413
.label_416:
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
	.align	32
	#Procedure 0x406320

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
	jns	.label_417
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
.label_417:
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
	#Procedure 0x406390
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
	je	.label_418
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_419:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_418
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_419
.label_418:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406400

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
	lea	rsi, [rsp + 0x10]
	call	strtod
	mov	rax, qword ptr [rsp + 0x10]
	cmp	byte ptr [rax], 0
	je	.label_421
	movsd	qword ptr [rsp], xmm0
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 8]
	mov	rdi, rbx
	call	c_strtod
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rsp + 0x10], rax
	jae	.label_420
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_421
.label_420:
	mov	dword ptr [r15], ebp
	movsd	xmm0, qword ptr [rsp]
.label_421:
	test	r14, r14
	je	.label_422
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [r14], rax
.label_422:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406480
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406490
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_425
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_423
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_423
.label_425:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_426
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_423:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_1
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_424
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_426:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_424:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	esi, ebp
	mov	r8, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406560

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	mov	rcx, rax
	sub	rcx, rbx
	nop	
.label_428:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_427
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_428
.label_427:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4065a0
	.globl mdir_name
	.type mdir_name, @function
mdir_name:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	test	rbx, rbx
	sete	al
	movzx	eax, al
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	r14, rax
	xor	eax, eax
	test	r14, r14
	je	.label_429
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_430
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_430:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_429:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406600

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_431:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_431
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_434
	nop	word ptr cs:[rax + rax]
.label_433:
	inc	rax
	mov	cl, dl
.label_434:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_433
	test	sil, sil
	je	.label_435
	mov	dl, cl
	and	dl, 1
	je	.label_432
	xor	ecx, ecx
.label_432:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_433
.label_435:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406660
	.globl base_len
	.type base_len, @function
base_len:

	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_436:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_437
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_436
.label_437:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406690

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_438
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_438:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_441
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_440
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_439
.label_440:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_439:
	mov	edx, dword ptr [rax]
.label_441:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406770

	.globl hash_get_n_buckets
	.type hash_get_n_buckets, @function
hash_get_n_buckets:
	mov	rax, qword ptr [rdi + 0x10]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406780

	.globl hash_get_n_buckets_used
	.type hash_get_n_buckets_used, @function
hash_get_n_buckets_used:
	mov	rax, qword ptr [rdi + 0x18]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406790

	.globl hash_get_n_entries
	.type hash_get_n_entries, @function
hash_get_n_entries:
	mov	rax, qword ptr [rdi + 0x20]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067a0

	.globl hash_get_max_bucket_length
	.type hash_get_max_bucket_length, @function
hash_get_max_bucket_length:
	mov	rcx, qword ptr [rdi]
	xor	eax, eax
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_442
	mov	rdx, qword ptr [rdi + 8]
	xor	eax, eax
	nop	word ptr cs:[rax + rax]
.label_444:
	cmp	qword ptr [rcx], 0
	mov	esi, 0
	mov	rdi, rcx
	je	.label_443
	nop	
.label_445:
	mov	rdi, qword ptr [rdi + 8]
	inc	rsi
	test	rdi, rdi
	jne	.label_445
	cmp	rsi, rax
	cmova	rax, rsi
.label_443:
	add	rcx, 0x10
	cmp	rcx, rdx
	jb	.label_444
.label_442:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4067f0
	.globl hash_table_ok
	.type hash_table_ok, @function
hash_table_ok:

	mov	rsi, qword ptr [rdi]
	xor	ecx, ecx
	cmp	rsi, qword ptr [rdi + 8]
	mov	edx, 0
	jae	.label_446
	mov	r8, qword ptr [rdi + 8]
	xor	ecx, ecx
	xor	edx, edx
	nop	dword ptr [rax + rax]
.label_451:
	cmp	qword ptr [rsi], 0
	mov	rax, rsi
	je	.label_449
	nop	dword ptr [rax]
.label_447:
	inc	rcx
	mov	rax, qword ptr [rax + 8]
	test	rax, rax
	jne	.label_447
	inc	rdx
.label_449:
	add	rsi, 0x10
	cmp	rsi, r8
	jb	.label_451
.label_446:
	cmp	rdx, qword ptr [rdi + 0x18]
	jne	.label_448
	mov	al, 1
	cmp	rcx, qword ptr [rdi + 0x20]
	je	.label_450
.label_448:
	xor	eax, eax
.label_450:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406850
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
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, rbp
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.1_1
	xor	eax, eax
	mov	rdi, r13
	mov	rcx, r12
	call	__fprintf_chk
	movq	xmm1, r15
	movdqa	xmm2,  xmmword ptr [word ptr [rip + label_452]]
	punpckldq	xmm1, xmm2
	movapd	xmm3,  xmmword ptr [word ptr [rip + label_453]]
	subpd	xmm1, xmm3
	pshufd	xmm0, xmm1, 0x4e
	addpd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_454]]
	movq	xmm1, r12
	punpckldq	xmm1, xmm2
	subpd	xmm1, xmm3
	pshufd	xmm2, xmm1, 0x4e
	addpd	xmm2, xmm1
	divsd	xmm0, xmm2
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.2_1
	mov	al, 1
	mov	rdi, r13
	mov	rcx, r15
	call	__fprintf_chk
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.3_1
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
	.align	32
	#Procedure 0x406940

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
	je	.label_455
	test	rbx, rbx
	je	.label_455
	xor	r15d, r15d
	nop	word ptr [rax + rax]
.label_457:
	mov	rsi, qword ptr [rbx]
	cmp	rsi, r12
	je	.label_456
	mov	rdi, r12
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_456
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_457
	jmp	.label_455
.label_456:
	mov	r15, qword ptr [rbx]
.label_455:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069a0

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
	jae	.label_458
	shl	rax, 4
	add	rax, qword ptr [rbx]
	pop	rbx
	ret	
.label_458:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0
	.globl hash_get_first
	.type hash_get_first, @function
hash_get_first:

	xor	eax, eax
	cmp	qword ptr [rdi + 0x20], 0
	je	.label_459
	mov	rcx, qword ptr [rdi]
	jmp	.label_461
	nop	
.label_462:
	add	rcx, 0x10
.label_461:
	cmp	rcx, qword ptr [rdi + 8]
	jae	.label_460
	mov	rax, qword ptr [rcx]
	test	rax, rax
	je	.label_462
.label_459:
	ret	
.label_460:
	push	rax
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406a00
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
.label_467:
	cmp	qword ptr [rcx], rbx
	jne	.label_463
	mov	rdx, qword ptr [rcx + 8]
	test	rdx, rdx
	jne	.label_465
.label_463:
	mov	rcx, qword ptr [rcx + 8]
	test	rcx, rcx
	jne	.label_467
	mov	rdx, qword ptr [r14 + 8]
	add	rax, 0x10
	nop	
.label_466:
	cmp	rax, rdx
	mov	ecx, 0
	jae	.label_464
	mov	rcx, qword ptr [rax]
	add	rax, 0x10
	test	rcx, rcx
	je	.label_466
	jmp	.label_464
.label_465:
	mov	rcx, qword ptr [rdx]
.label_464:
	mov	rax, rcx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a70
	.globl hash_get_entries
	.type hash_get_entries, @function
hash_get_entries:

	mov	r8, qword ptr [rdi]
	xor	eax, eax
	jmp	.label_468
	nop	word ptr [rax + rax]
.label_469:
	add	r8, 0x10
.label_468:
	cmp	r8, qword ptr [rdi + 8]
	jae	.label_470
	cmp	qword ptr [r8], 0
	je	.label_469
	test	r8, r8
	mov	r9, r8
	je	.label_469
	nop	dword ptr [rax + rax]
.label_471:
	cmp	rax, rdx
	jae	.label_470
	mov	rcx, qword ptr [r9]
	mov	qword ptr [rsi + rax*8], rcx
	inc	rax
	mov	r9, qword ptr [r9 + 8]
	test	r9, r9
	jne	.label_471
	jmp	.label_469
.label_470:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ac0
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
	jmp	.label_472
	nop	dword ptr [rax]
.label_473:
	add	r13, 0x10
.label_472:
	cmp	r13, qword ptr [r12 + 8]
	jae	.label_474
	cmp	qword ptr [r13], 0
	je	.label_473
	test	r13, r13
	mov	rbp, r13
	je	.label_473
	nop	word ptr [rax + rax]
.label_475:
	mov	rdi, qword ptr [rbp]
	mov	rsi, r14
	call	r15
	test	al, al
	je	.label_474
	inc	rbx
	mov	rbp, qword ptr [rbp + 8]
	test	rbp, rbp
	jne	.label_475
	jmp	.label_473
.label_474:
	mov	rax, rbx
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
	#Procedure 0x406b30
	.globl hash_string
	.type hash_string, @function
hash_string:

	mov	al, byte ptr [rdi]
	xor	edx, edx
	test	al, al
	je	.label_476
	inc	rdi
	xor	edx, edx
	nop	dword ptr [rax]
.label_477:
	mov	rcx, rdx
	shl	rcx, 5
	sub	rcx, rdx
	movzx	eax, al
	add	rax, rcx
	xor	edx, edx
	div	rsi
	mov	al, byte ptr [rdi]
	inc	rdi
	test	al, al
	jne	.label_477
.label_476:
	mov	rax, rdx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b70
	.globl hash_reset_tuning
	.type hash_reset_tuning, @function
hash_reset_tuning:

	mov	eax,  dword ptr [dword ptr [rip + label_478]]
	mov	dword ptr [rdi + 0x10], eax
	movups	xmm0,  xmmword ptr [word ptr [rip + default_tuning]]
	movups	xmmword ptr [rdi], xmm0
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b90

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
	je	.label_480
	mov	qword ptr [rsp], rbx
	test	r12, r12
	mov	ebx, OFFSET FLAT:default_tuning
	cmovne	rbx, r12
	mov	qword ptr [r13 + 0x28], rbx
	mov	rdi, r13
	call	check_tuning
	test	al, al
	je	.label_479
	mov	rdi, r15
	mov	rsi, rbx
	call	compute_bucket_size
	mov	qword ptr [r13 + 0x10], rax
	test	rax, rax
	je	.label_479
	mov	esi, 0x10
	mov	rdi, rax
	call	rpl_calloc
	mov	qword ptr [r13], rax
	test	rax, rax
	je	.label_479
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
	jmp	.label_480
.label_479:
	mov	rdi, r13
	call	free
	xor	eax, eax
.label_480:
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
	#Procedure 0x406c70

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
	.align	32
	#Procedure 0x406c90

	.globl raw_comparator
	.type raw_comparator, @function
raw_comparator:
	cmp	rdi, rsi
	sete	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ca0

	.globl check_tuning
	.type check_tuning, @function
check_tuning:
	mov	rcx, qword ptr [rdi + 0x28]
	mov	edx, OFFSET FLAT:default_tuning
	mov	al, 1
	cmp	rcx, rdx
	je	.label_481
	movss	xmm0, dword ptr [rcx + 8]
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_482]]
	jbe	.label_483
	movss	xmm1,  dword ptr [dword ptr [rip + label_486]]
	ucomiss	xmm1, xmm0
	jbe	.label_483
	movss	xmm1, dword ptr [rcx + 0xc]
	ucomiss	xmm1,  dword ptr [dword ptr [rip + label_485]]
	jbe	.label_483
	movss	xmm1, dword ptr [rcx]
	xorps	xmm2, xmm2
	ucomiss	xmm1, xmm2
	jb	.label_483
	addss	xmm1,  dword ptr [dword ptr [rip + label_482]]
	ucomiss	xmm0, xmm1
	jbe	.label_483
	movss	xmm0, dword ptr [rcx + 4]
	movss	xmm2,  dword ptr [dword ptr [rip + label_484]]
	ucomiss	xmm2, xmm0
	jb	.label_483
	ucomiss	xmm0, xmm1
	ja	.label_481
.label_483:
	mov	qword ptr [word ptr [rdi + 40]], OFFSET FLAT:default_tuning
	xor	eax, eax
.label_481:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406d20

	.globl compute_bucket_size
	.type compute_bucket_size, @function
compute_bucket_size:
	cmp	byte ptr [rsi + 0x10], 0
	jne	.label_487
	mov	eax, edi
	and	eax, 1
	test	rdi, rdi
	js	.label_492
	cvtsi2ss	xmm0, rdi
	jmp	.label_488
.label_492:
	shr	rdi, 1
	or	rax, rdi
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
.label_488:
	divss	xmm0, dword ptr [rsi + 8]
	movss	xmm1,  dword ptr [dword ptr [rip + label_489]]
	movaps	xmm2, xmm0
	subss	xmm2, xmm1
	cvttss2si	rax, xmm2
	movabs	rcx, 0x8000000000000000
	xor	rcx, rax
	cvttss2si	rdi, xmm0
	ucomiss	xmm0, xmm1
	cmovae	rdi, rcx
	xor	eax, eax
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_490]]
	jae	.label_491
.label_487:
	push	rax
	call	next_prime
	mov	rcx, rax
	xor	eax, eax
	mov	rdx, rcx
	shr	rdx, 0x3c
	cmove	rax, rcx
	add	rsp, 8
.label_491:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406da0
	.globl hash_clear
	.type hash_clear, @function
hash_clear:

	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	mov	r14, qword ptr [r15]
	jmp	.label_493
	nop	dword ptr [rax]
.label_499:
	add	r14, 0x10
.label_493:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_497
	cmp	qword ptr [r14], 0
	je	.label_499
	mov	rbx, qword ptr [r14 + 8]
	mov	rax, qword ptr [r15 + 0x40]
	test	rax, rax
	setne	cl
	test	rbx, rbx
	je	.label_494
	nop	word ptr cs:[rax + rax]
.label_495:
	test	cl, 1
	je	.label_498
	mov	rdi, qword ptr [rbx]
	call	rax
.label_498:
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
	jne	.label_495
.label_494:
	test	cl, cl
	je	.label_496
	mov	rdi, qword ptr [r14]
	call	rax
.label_496:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r14], xmm0
	jmp	.label_499
.label_497:
	xorps	xmm0, xmm0
	movups	xmmword ptr [r15 + 0x18], xmm0
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e40

	.globl hash_free
	.type hash_free, @function
hash_free:
	push	r15
	push	r14
	push	rbx
	mov	r15, rdi
	cmp	qword ptr [r15 + 0x40], 0
	je	.label_500
	cmp	qword ptr [r15 + 0x20], 0
	je	.label_500
	mov	r14, qword ptr [r15]
	jmp	.label_507
	nop	dword ptr [rax + rax]
.label_503:
	add	r14, 0x10
.label_507:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_500
	cmp	qword ptr [r14], 0
	je	.label_503
	test	r14, r14
	mov	rbx, r14
	je	.label_503
	nop	dword ptr [rax + rax]
.label_501:
	mov	rdi, qword ptr [rbx]
	call	qword ptr [r15 + 0x40]
	mov	rbx, qword ptr [rbx + 8]
	test	rbx, rbx
	jne	.label_501
	jmp	.label_503
.label_500:
	mov	r14, qword ptr [r15]
	jmp	.label_505
	nop	word ptr [rax + rax]
.label_504:
	add	r14, 0x10
.label_505:
	cmp	r14, qword ptr [r15 + 8]
	jae	.label_508
	mov	rdi, qword ptr [r14 + 8]
	test	rdi, rdi
	je	.label_504
	nop	word ptr cs:[rax + rax]
.label_502:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_502
	jmp	.label_504
.label_508:
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_506
	nop	dword ptr [rax]
.label_509:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_509
.label_506:
	mov	rdi, qword ptr [r15]
	call	free
	mov	rdi, r15
	pop	rbx
	pop	r14
	pop	r15
	jmp	free
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f10

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
	je	.label_510
	mov	r14b, 1
	cmp	rbp, qword ptr [rbx + 0x10]
	je	.label_511
	mov	esi, 0x10
	mov	rdi, rbp
	call	rpl_calloc
	mov	qword ptr [rsp], rax
	test	rax, rax
	je	.label_510
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
	je	.label_512
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
	jmp	.label_511
.label_512:
	mov	rax, qword ptr [rsp + 0x48]
	mov	qword ptr [rbx + 0x48], rax
	lea	rsi, [rsp]
	mov	edx, 1
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_513
	lea	rsi, [rsp]
	xor	edx, edx
	mov	rdi, rbx
	call	transfer_entries
	test	al, al
	je	.label_513
	mov	rdi, qword ptr [rsp]
	call	free
.label_510:
	xor	r14d, r14d
.label_511:
	mov	al, r14b
	add	rsp, 0x50
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_513:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407040

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
	mov	r12, rsi
	mov	r14, rdi
	mov	r15, qword ptr [r12]
	mov	al, 1
	cmp	r15, qword ptr [r12 + 8]
	jae	.label_514
	mov	dword ptr [rsp + 4], edx
	nop	word ptr cs:[rax + rax]
.label_521:
	cmp	qword ptr [r15], 0
	je	.label_518
	mov	rbx, qword ptr [r15 + 8]
	test	rbx, rbx
	je	.label_523
	nop	word ptr cs:[rax + rax]
.label_517:
	mov	r13, qword ptr [rbx]
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbp, qword ptr [rbx + 8]
	cmp	qword ptr [rax], 0
	je	.label_519
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbx + 8], rcx
	mov	qword ptr [rax + 8], rbx
	jmp	.label_520
	nop	word ptr cs:[rax + rax]
.label_519:
	mov	qword ptr [rax], r13
	inc	qword ptr [r14 + 0x18]
	mov	rdi, r14
	mov	rsi, rbx
	call	free_entry
.label_520:
	test	rbp, rbp
	mov	rbx, rbp
	jne	.label_517
.label_523:
	mov	r13, qword ptr [r15]
	mov	qword ptr [r15 + 8], 0
	mov	eax, dword ptr [rsp + 4]
	test	al, al
	jne	.label_518
	mov	rdi, r14
	mov	rsi, r13
	call	safe_hasher
	mov	rbx, rax
	cmp	qword ptr [rbx], 0
	je	.label_522
	mov	rdi, r14
	call	allocate_entry
	test	rax, rax
	je	.label_515
	mov	qword ptr [rax], r13
	mov	rcx, qword ptr [rbx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbx + 8], rax
	jmp	.label_516
.label_522:
	mov	qword ptr [rbx], r13
	inc	qword ptr [r14 + 0x18]
.label_516:
	mov	qword ptr [r15], 0
	dec	qword ptr [r12 + 0x18]
.label_518:
	add	r15, 0x10
	cmp	r15, qword ptr [r12 + 8]
	jb	.label_521
	mov	al, 1
	jmp	.label_514
.label_515:
	xor	eax, eax
.label_514:
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
	#Procedure 0x407160

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
	je	.label_532
	lea	rdx, [rsp]
	xor	ebp, ebp
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	je	.label_526
	test	rbx, rbx
	je	.label_528
	mov	qword ptr [rbx], rax
	jmp	.label_528
.label_526:
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_534
	cvtsi2ss	xmm0, rcx
	jmp	.label_537
.label_534:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_537:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_525
	cvtsi2ss	xmm1, rax
	jmp	.label_530
.label_525:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_530:
	mulss	xmm1, dword ptr [rcx + 8]
	ucomiss	xmm0, xmm1
	jbe	.label_527
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_524
	cvtsi2ss	xmm2, rcx
	jmp	.label_529
.label_524:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm2, rdx
	addss	xmm2, xmm2
.label_529:
	mov	rcx, qword ptr [r15 + 0x28]
	movss	xmm1, dword ptr [rcx + 8]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_535
	cvtsi2ss	xmm0, rax
	jmp	.label_538
.label_535:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_538:
	movaps	xmm3, xmm1
	mulss	xmm3, xmm0
	ucomiss	xmm2, xmm3
	jbe	.label_527
	cmp	byte ptr [rcx + 0x10], 0
	mulss	xmm0, dword ptr [rcx + 0xc]
	jne	.label_533
	mulss	xmm0, xmm1
.label_533:
	mov	ebp, 0xffffffff
	ucomiss	xmm0,  dword ptr [dword ptr [rip + label_490]]
	jae	.label_528
	movss	xmm1,  dword ptr [dword ptr [rip + label_489]]
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
	je	.label_528
	lea	rdx, [rsp]
	xor	ecx, ecx
	mov	rdi, r15
	mov	rsi, r14
	call	hash_find_entry
	test	rax, rax
	jne	.label_532
.label_527:
	mov	rax, qword ptr [rsp]
	cmp	qword ptr [rax], 0
	je	.label_531
	mov	rdi, r15
	call	allocate_entry
	mov	ebp, 0xffffffff
	test	rax, rax
	je	.label_528
	mov	qword ptr [rax], r14
	mov	rcx, qword ptr [rsp]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx + 8], rax
	inc	qword ptr [r15 + 0x20]
	jmp	.label_536
.label_531:
	mov	qword ptr [rax], r14
	inc	qword ptr [r15 + 0x20]
	inc	qword ptr [r15 + 0x18]
.label_536:
	mov	ebp, 1
.label_528:
	mov	eax, ebp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_532:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407330

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
	je	.label_542
	cmp	rsi, r13
	je	.label_540
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	je	.label_543
.label_540:
	mov	r15, qword ptr [rbx]
	test	r12b, r12b
	je	.label_542
	mov	rsi, qword ptr [rbx + 8]
	test	rsi, rsi
	je	.label_545
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rbx], xmm0
	jmp	.label_541
.label_543:
	mov	rax, qword ptr [rbx + 8]
	xor	r15d, r15d
	test	rax, rax
	je	.label_542
	add	rbx, 8
	xor	r15d, r15d
	nop	
.label_544:
	mov	rsi, qword ptr [rax]
	cmp	rsi, r13
	je	.label_539
	mov	rdi, r13
	call	qword ptr [r14 + 0x38]
	test	al, al
	jne	.label_539
	mov	rbx, qword ptr [rbx]
	mov	rax, qword ptr [rbx + 8]
	add	rbx, 8
	test	rax, rax
	jne	.label_544
	jmp	.label_542
.label_545:
	mov	qword ptr [rbx], 0
	jmp	.label_542
.label_539:
	mov	rsi, qword ptr [rbx]
	mov	r15, qword ptr [rsi]
	test	r12b, r12b
	je	.label_542
	mov	rax, qword ptr [rsi + 8]
	mov	qword ptr [rbx], rax
.label_541:
	mov	rdi, r14
	call	free_entry
.label_542:
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
	.align	32
	#Procedure 0x407400

	.globl allocate_entry
	.type allocate_entry, @function
allocate_entry:
	mov	rax, qword ptr [rdi + 0x48]
	test	rax, rax
	je	.label_546
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rdi + 0x48], rcx
	ret	
.label_546:
	push	rax
	mov	edi, 0x10
	call	malloc
	add	rsp, 8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407430

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
	je	.label_547
	test	ecx, ecx
	cmove	rbx, qword ptr [rsp + 8]
	mov	rax, rbx
.label_547:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407460

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
	je	.label_560
	dec	qword ptr [r15 + 0x20]
	mov	rax, qword ptr [rsp + 8]
	cmp	qword ptr [rax], 0
	jne	.label_552
	mov	rax, qword ptr [r15 + 0x18]
	dec	rax
	mov	qword ptr [r15 + 0x18], rax
	mov	ecx, eax
	and	ecx, 1
	test	rax, rax
	js	.label_554
	cvtsi2ss	xmm0, rax
	jmp	.label_557
.label_554:
	shr	rax, 1
	or	rcx, rax
	cvtsi2ss	xmm0, rcx
	addss	xmm0, xmm0
.label_557:
	mov	rcx, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x28]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_551
	cvtsi2ss	xmm1, rcx
	jmp	.label_553
.label_551:
	shr	rcx, 1
	or	rdx, rcx
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_553:
	mulss	xmm1, dword ptr [rax]
	ucomiss	xmm1, xmm0
	jbe	.label_552
	mov	rdi, r15
	call	check_tuning
	mov	rax, qword ptr [r15 + 0x10]
	mov	rcx, qword ptr [r15 + 0x18]
	mov	edx, ecx
	and	edx, 1
	test	rcx, rcx
	js	.label_549
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rcx
	jmp	.label_550
.label_549:
	shr	rcx, 1
	or	rdx, rcx
	xorps	xmm1, xmm1
	cvtsi2ss	xmm1, rdx
	addss	xmm1, xmm1
.label_550:
	mov	rcx, qword ptr [r15 + 0x28]
	mov	edx, eax
	and	edx, 1
	test	rax, rax
	js	.label_558
	cvtsi2ss	xmm0, rax
	jmp	.label_548
.label_558:
	shr	rax, 1
	or	rdx, rax
	cvtsi2ss	xmm0, rdx
	addss	xmm0, xmm0
.label_548:
	movss	xmm2, dword ptr [rcx]
	mulss	xmm2, xmm0
	ucomiss	xmm2, xmm1
	jbe	.label_552
	mulss	xmm0, dword ptr [rcx + 4]
	cmp	byte ptr [rcx + 0x10], 0
	jne	.label_555
	mulss	xmm0, dword ptr [rcx + 8]
.label_555:
	movss	xmm1,  dword ptr [dword ptr [rip + label_489]]
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
	jne	.label_552
	mov	rdi, qword ptr [r15 + 0x48]
	test	rdi, rdi
	je	.label_556
	nop	word ptr cs:[rax + rax]
.label_559:
	mov	rbx, qword ptr [rdi + 8]
	call	free
	test	rbx, rbx
	mov	rdi, rbx
	jne	.label_559
.label_556:
	mov	qword ptr [r15 + 0x48], 0
.label_552:
	mov	rax, r14
.label_560:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4075f0

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
	jmp	.label_561
	nop	
.label_562:
	add	rbx, 2
.label_561:
	cmp	rbx, -1
	je	.label_563
	mov	rdi, rbx
	call	is_prime
	test	al, al
	je	.label_562
	mov	r14, rbx
.label_563:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407640

	.globl is_prime
	.type is_prime, @function
is_prime:
	mov	r8, rdi
	mov	esi, 3
	mov	edi, 9
	mov	ecx, 0x10
	cmp	r8, 0xa
	jb	.label_564
	nop	dword ptr [rax + rax]
.label_565:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	je	.label_564
	add	rdi, rcx
	add	rsi, 2
	add	rcx, 8
	cmp	rdi, r8
	jb	.label_565
.label_564:
	xor	edx, edx
	mov	rax, r8
	div	rsi
	test	rdx, rdx
	setne	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407690

	.globl free_entry
	.type free_entry, @function
free_entry:
	mov	qword ptr [rsi], 0
	mov	rax, qword ptr [rdi + 0x48]
	mov	qword ptr [rsi + 8], rax
	mov	qword ptr [rdi + 0x48], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4076b0

	.globl offtostr
	.type offtostr, @function
offtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	test	rcx, rcx
	js	.label_566
	add	rsi, 0x14
	movabs	r8, 0x6666666666666667
	nop	word ptr [rax + rax]
.label_567:
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
	ja	.label_567
	jmp	.label_568
.label_566:
	add	rsi, 0x13
	movabs	r8, 0x6666666666666667
	nop	dword ptr [rax]
.label_569:
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
	ja	.label_569
	mov	byte ptr [rsi], 0x2d
.label_568:
	mov	rax, rsi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407770

	.globl posix2_version
	.type posix2_version, @function
posix2_version:
	push	rax
	mov	edi, OFFSET FLAT:.str_6
	call	getenv
	mov	rcx, rax
	mov	eax, 0x31069
	test	rcx, rcx
	je	.label_570
	mov	eax, 0x31069
	cmp	byte ptr [rcx], 0
	je	.label_570
	lea	rsi, [rsp]
	mov	edx, 0xa
	mov	rdi, rcx
	call	strtol
	mov	rcx, qword ptr [rsp]
	cmp	byte ptr [rcx], 0
	je	.label_570
	mov	eax, 0x31069
.label_570:
	cmp	rax, 0x7fffffff
	mov	ecx, 0x7fffffff
	cmovl	ecx, eax
	cmp	rax, -0x80000000
	mov	eax, 0x80000000
	cmovge	eax, ecx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4077d0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_572
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_573
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_2
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_573
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_571
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_571:
	mov	rbx, r14
.label_573:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_572:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_7
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407880
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
	#Procedure 0x4078c0
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
	#Procedure 0x4078d0
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
	#Procedure 0x4078e0

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
	.align	32
	#Procedure 0x407920
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
	#Procedure 0x407940

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_574
	test	rdx, rdx
	je	.label_574
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_574:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407970
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
	.align	32
	#Procedure 0x4079f0

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
.label_602:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_681
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_626]]
.label_963:
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
.label_964:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_644
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_644
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_669:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_656
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_656:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_669
.label_644:
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
	jmp	.label_604
.label_956:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_604
.label_959:
	mov	al, 1
.label_957:
	mov	r15b, 1
.label_960:
	test	r15b, 1
	mov	cl, 1
	je	.label_575
	mov	cl, al
.label_575:
	mov	al, cl
.label_958:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_579
	test	r10, r10
	je	.label_584
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_585
.label_579:
	xor	ecx, ecx
	jmp	.label_585
.label_961:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_590
	test	r10, r10
	je	.label_674
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_600
.label_962:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_604
.label_584:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_585:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_604
.label_590:
	xor	eax, eax
	jmp	.label_600
.label_674:
	mov	eax, 1
.label_600:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_604:
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
	jmp	.label_641
	nop	dword ptr [rax + rax]
.label_606:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_641:
	cmp	rbp, -1
	je	.label_682
	cmp	rsi, rbp
	jne	.label_685
	jmp	.label_687
	nop	dword ptr [rax]
.label_682:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_687
.label_685:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_692
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_688
	cmp	rbp, -1
	jne	.label_688
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
.label_688:
	cmp	rbx, rbp
	jbe	.label_596
.label_692:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_635:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_601
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_605]]
.label_972:
	test	rsi, rsi
	jne	.label_611
	jmp	.label_613
	nop	word ptr cs:[rax + rax]
.label_596:
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
	jne	.label_631
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_635
	jmp	.label_583
.label_631:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_635
.label_976:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_650
	test	rsi, rsi
	jne	.label_654
	cmp	rbp, 1
	je	.label_613
	xor	r15d, r15d
	jmp	.label_586
.label_965:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_696
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_583
	cmp	edi, 2
	jne	.label_663
	mov	al, r11b
	and	al, 1
	jne	.label_668
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_671
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_671:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_645
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_645:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_684
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_684:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_615
.label_966:
	mov	bl, 0x62
	jmp	.label_576
.label_967:
	mov	cl, 0x74
	jmp	.label_580
.label_968:
	mov	bl, 0x76
	jmp	.label_576
.label_969:
	mov	bl, 0x66
	jmp	.label_576
.label_970:
	mov	cl, 0x72
	jmp	.label_580
.label_973:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_582
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_581
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
	jae	.label_593
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_593:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_614
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_614:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_619
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_619:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_629
.label_974:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_634
	cmp	r14d, 2
	jne	.label_636
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_581
.label_636:
	mov	rdi, r14
	jmp	.label_611
.label_975:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_655
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_581
	mov	rdi, r14
	jmp	.label_642
.label_601:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_646
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
.label_670:
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
	ja	.label_659
	test	dl, dl
	je	.label_659
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_586
.label_650:
	test	rsi, rsi
	jne	.label_680
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_680
.label_613:
	mov	dl, 1
.label_971:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_583
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_586
.label_696:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_611
	mov	r14, rdi
	inc	rsi
	jmp	.label_641
.label_582:
	mov	rdi, r14
.label_629:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_586
.label_655:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_580
.label_642:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_599
.label_580:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_583
.label_576:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_586
	jmp	.label_588
.label_646:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_597
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_597:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_661:
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
	je	.label_625
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_630
	cmp	rbp, -2
	je	.label_638
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_640
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_652:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_647
	bt	rsi, rdx
	jb	.label_649
.label_647:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_652
.label_640:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_683
	xor	r15d, r15d
.label_683:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_661
	jmp	.label_670
.label_680:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_586
.label_634:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_611
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_611
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_611
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_686
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_690
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_583
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_694
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_694:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_639
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_639:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_591
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_591:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_679
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_679:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_586
.label_611:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_586:
	test	r12b, r12b
	je	.label_657
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_616
	jmp	.label_622
	nop	word ptr cs:[rax + rax]
.label_657:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_622
.label_616:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_627
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_599
	jmp	.label_588
	nop	word ptr cs:[rax + rax]
.label_622:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_588
	jmp	.label_599
.label_627:
	mov	bl, r13b
	mov	rsi, r14
.label_588:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_583
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_648
	mov	al, r11b
	and	al, 1
	jne	.label_648
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_653
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_653:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_637
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_637:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_664
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_664:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_648:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_676
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_676:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_598
.label_654:
	xor	r15d, r15d
	jmp	.label_586
.label_659:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_689
	nop	word ptr cs:[rax + rax]
.label_691:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_689:
	test	dl, dl
	je	.label_695
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_589
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_603
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_603:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_589
	nop	word ptr [rax + rax]
.label_695:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_581
	cmp	r14d, 2
	jne	.label_592
	mov	al, r11b
	and	al, 1
	jne	.label_592
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_608
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_608:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_672
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_672:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_620
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_620:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_592:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_577
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_577:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_623
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_623:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_643
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_643:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_589:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_599
	test	r11b, 1
	je	.label_660
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_662
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_667
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_667:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_673
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_673:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_662
	nop	word ptr cs:[rax + rax]
.label_660:
	mov	r14, rdi
.label_662:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_691
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_691
.label_599:
	test	r11b, 1
	je	.label_578
	and	al, 1
	jne	.label_578
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_595
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_595:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_587
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_587:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_598
	nop	dword ptr [rax + rax]
.label_578:
	mov	bl, r13b
	mov	r14, rdi
.label_598:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_606
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_606
.label_663:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_615
.label_668:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_615:
	cmp	rcx, r10
	jae	.label_617
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_617:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_621
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_632
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_610
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_651
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_651:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_609
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_609:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_586
.label_621:
	xor	r15d, r15d
	jmp	.label_586
.label_632:
	xor	r15d, r15d
	jmp	.label_586
.label_610:
	xor	r15d, r15d
	jmp	.label_586
.label_625:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_624
.label_630:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_658
.label_638:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_666
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_677:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_675
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_677
	xor	r15d, r15d
	jmp	.label_624
.label_666:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_658:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_624:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_670
.label_675:
	xor	r15d, r15d
	jmp	.label_624
.label_686:
	xor	r15d, r15d
	jmp	.label_586
.label_690:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_586
	nop	dword ptr [rax + rax]
.label_687:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_693
	or	dl, al
	je	.label_581
.label_693:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_594
	or	dl, al
	jne	.label_594
	test	r8b, 1
	jne	.label_665
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_594
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_602
.label_594:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_612
	test	cl, cl
	jne	.label_612
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_612
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_628:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_618
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_618:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_628
.label_612:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_633
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_633
.label_583:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_607:
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
.label_678:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_633:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_649:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_607
.label_581:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_607
.label_665:
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
	jmp	.label_678
.label_681:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c00
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
	#Procedure 0x408c10

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
	je	.label_697
	mov	qword ptr [rax], rbx
.label_697:
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
	.align	32
	#Procedure 0x408d10
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_698
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_700:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_700
.label_698:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_702
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_701]], OFFSET FLAT:slot0
.label_702:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_699
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_699:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408db0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x408dc0

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
	js	.label_703
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_706
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_709
.label_706:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_705
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
	jne	.label_704
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_704:
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
.label_709:
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
	ja	.label_707
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_708
	mov	rdi, rbx
	call	free
.label_708:
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
.label_707:
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
.label_703:
	call	abort
.label_705:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408f90

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408fa0
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
	#Procedure 0x408fb0
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
	#Procedure 0x408fc0

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
	#Procedure 0x409000

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
	je	.label_710
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
.label_710:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409060

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
	#Procedure 0x4090a0

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
	#Procedure 0x4090c0
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
	#Procedure 0x4090e0

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
	mov	rcx,  qword ptr [word ptr [rip + label_711]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_712]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_713]]
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
	#Procedure 0x409150

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
	#Procedure 0x409160

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409170
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409180

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
	#Procedure 0x4091d0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4091e0

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
	mov	rax,  qword ptr [word ptr [rip + label_711]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_712]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_713]]
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
	#Procedure 0x409250
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
	#Procedure 0x409270
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
	#Procedure 0x409290

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4092a0
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
	#Procedure 0x4092b0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4092c0

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
	#Procedure 0x4092d0

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
	jne	.label_715
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
	je	.label_714
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_715
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_715
.label_714:
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
	je	.label_716
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_715
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_715
.label_716:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_715:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4093b0

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
	je	.label_718
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_719
	jmp	.label_717
.label_718:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_717
.label_719:
	mov	eax, 1
	test	bpl, bpl
	je	.label_717
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
.label_717:
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
	#Procedure 0x409440

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
	je	.label_722
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_720
	jmp	.label_721
.label_722:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_721
.label_720:
	mov	eax, 1
	test	bpl, bpl
	je	.label_721
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
.label_721:
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
	#Procedure 0x4094d0

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
	je	.label_723
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_725
	jmp	.label_724
.label_723:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_724
.label_725:
	mov	eax, 1
	test	bpl, bpl
	je	.label_724
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
.label_724:
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
	#Procedure 0x409550

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
	je	.label_728
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_727
	jmp	.label_726
.label_728:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_726
.label_727:
	mov	eax, 1
	test	bpl, bpl
	je	.label_726
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
.label_726:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4095c0

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
	je	.label_731
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_729
	jmp	.label_730
.label_731:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_730
.label_729:
	mov	eax, 1
	test	bpl, bpl
	je	.label_730
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_730:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409630

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
	je	.label_732
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_734
	jmp	.label_733
.label_732:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_733
.label_734:
	mov	eax, 1
	test	bpl, bpl
	je	.label_733
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_733:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409680

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
	je	.label_737
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_736
	jmp	.label_735
.label_737:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_735
.label_736:
	mov	eax, 1
	test	bpl, bpl
	je	.label_735
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_735:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4096d0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_739
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_740
	jmp	.label_738
.label_739:
	mov	eax, 1
	test	cl, cl
	je	.label_738
.label_740:
	xor	eax, eax
.label_738:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409700

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
.label_742:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_741
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_742
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
	jb	.label_741
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_742
.label_741:
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
	#Procedure 0x409790
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rax, qword ptr [rdi + 0x50]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	mov	rax, qword ptr [rdi + 0x70]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	mov	rax, qword ptr [rdi + 0x60]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097c0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097d0
	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:

	mov	rax, qword ptr [rdi + 0x48]
	mov	rdx, qword ptr [rdi + 0x50]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097e0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rax, qword ptr [rdi + 0x68]
	mov	rdx, qword ptr [rdi + 0x70]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4097f0

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	mov	rax, qword ptr [rdi + 0x58]
	mov	rdx, qword ptr [rdi + 0x60]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409800
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	mov	rax, -1
	mov	rdx, -1
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409810
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	eax, edi
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409820

	.globl make_timespec
	.type make_timespec, @function
make_timespec:
	mov	rax, rdi
	mov	rdx, rsi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409830

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	mov	eax, 0xffffffff
	cmp	rdi, rdx
	jl	.label_743
	mov	eax, 1
	jg	.label_743
	sub	esi, ecx
	mov	eax, esi
.label_743:
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409850
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	or	rsi, rdi
	setne	al
	test	rdi, rdi
	movzx	ecx, al
	mov	eax, 0xffffffff
	cmovns	eax, ecx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409870
	.globl timespectod
	.type timespectod, @function
timespectod:

	cvtsi2sd	xmm1, rdi
	cvtsi2sd	xmm0, rsi
	divsd	xmm0,  qword ptr [word ptr [rip + label_744]]
	addsd	xmm0, xmm1
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409890

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
	ja	.label_745
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
	jmp	.label_746
.label_745:
	mov	eax, ebx
.label_746:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4098e0

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
	je	.label_753
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_751
.label_753:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_751:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_3
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
	mov	esi, OFFSET FLAT:.str.3_2
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_756
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_747]]
.label_913:
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
.label_756:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_755
.label_914:
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
.label_915:
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
.label_916:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_748
.label_917:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	jmp	.label_754
.label_918:
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
	jmp	.label_750
.label_919:
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
.label_750:
	mov	qword ptr [rsp + 0x10], rdi
.label_754:
	mov	qword ptr [rsp + 8], rsi
.label_748:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_752
.label_921:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_755:
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
	jmp	.label_749
.label_920:
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
.label_749:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_752:
	call	__fprintf_chk
.label_912:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409bd0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_757:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_757
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c00

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_759:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_758
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_760
	nop	dword ptr [rax]
.label_758:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_760:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_761
	inc	r9
	cmp	r9, 0xa
	jb	.label_759
.label_761:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409c60

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_762
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_762:
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
	.align	32
	#Procedure 0x409cf0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.14_0
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
	.align	32
	#Procedure 0x409d70

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_763
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_763:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409da0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_764
	test	rax, rax
	je	.label_765
.label_764:
	pop	rbx
	ret	
.label_765:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409dc0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_766
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_766:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409df0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_767
	test	rbx, rbx
	jne	.label_767
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_767:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_769
	test	rax, rax
	je	.label_768
.label_769:
	pop	rbx
	ret	
.label_768:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x409e20

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_770
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_773
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_771
.label_770:
	test	rcx, rcx
	jne	.label_774
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_774:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_772
.label_771:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_773:
	call	xalloc_die
.label_772:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ea0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409eb0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ec0
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
	#Procedure 0x409ef0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_775
	call	rpl_calloc
	test	rax, rax
	je	.label_775
	pop	rcx
	ret	
.label_775:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f20

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
	#Procedure 0x409f50
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
	.align	32
	#Procedure 0x409f70

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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x409fa0

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
	je	.label_777
	cmp	eax, 1
	je	.label_779
	test	eax, eax
	jne	.label_776
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_781
	cmp	rbx, r15
	jbe	.label_780
.label_781:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_778
	mov	dword ptr [rax], 0x4b
	jmp	.label_776
.label_777:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_776
.label_779:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_776
.label_778:
	mov	dword ptr [rax], 0x22
.label_776:
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
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_780:
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
	#Procedure 0x40a070

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a0a0

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
	je	.label_782
	lea	r15, [rsp]
	nop	dword ptr [rax + rax]
.label_783:
	mov	eax, dword ptr [r14]
	mov	ebx, 0xffffffff
	or	eax, 4
	cmp	eax, 4
	jne	.label_782
	mov	dword ptr [r14], 0
	xor	ebx, ebx
	xor	esi, esi
	mov	rdi, r15
	call	rpl_nanosleep
	test	eax, eax
	jne	.label_783
.label_782:
	mov	eax, ebx
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a120

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
	je	.label_787
	test	r15, r15
	jne	.label_786
	cmp	byte ptr [rax], 0
	je	.label_786
	xor	eax, eax
	jmp	.label_784
.label_786:
	mov	al, 1
	xorps	xmm1, xmm1
	ucomisd	xmm0, xmm1
	jne	.label_785
	jnp	.label_788
.label_785:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_788
.label_787:
	xor	eax, eax
.label_788:
	test	r15, r15
	je	.label_784
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_784:
	movsd	qword ptr [r14], xmm0
	add	rsp, 0x10
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a1b0

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
	jae	.label_802
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_789:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_789
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_791
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_804
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_805
	cmp	eax, 0x22
	jne	.label_791
	mov	r12d, 1
.label_805:
	test	rbp, rbp
	jne	.label_809
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_811
.label_804:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_791
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_791
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_791
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_809:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_803
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_793
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_797
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_812
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_794
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_798
	cmp	ecx, 0x44
	je	.label_798
	cmp	ecx, 0x69
	jne	.label_794
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_794
	mov	r14d, 1
	jmp	.label_794
.label_798:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_794:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_808
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_810
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_813]]
.label_951:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_796
.label_808:
	cmp	eax, 0x73
	jg	.label_799
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_792
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_807]]
.label_884:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_796
.label_810:
	cmp	eax, 0x54
	je	.label_800
	cmp	eax, 0x59
	jne	.label_793
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_790
.label_799:
	cmp	eax, 0x74
	je	.label_800
	cmp	eax, 0x77
	jne	.label_793
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_796:
	call	bkm_scale
	jmp	.label_795
.label_885:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_790
.label_886:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_790
.label_887:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_790
.label_800:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_790
.label_792:
	cmp	eax, 0x5a
	jne	.label_793
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_790
.label_793:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_801
.label_952:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_790
.label_953:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_790:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_795:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_806
	or	eax, 2
.label_806:
	mov	r12d, eax
.label_803:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_811:
	mov	qword ptr [rcx], rax
.label_801:
	mov	r15d, r12d
.label_791:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_797:
	mov	rbx, r13
	jmp	.label_794
.label_812:
	mov	rbx, r13
	jmp	.label_794
.label_802:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a4c0

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
	#Procedure 0x40a4f0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	mov	r14d, esi
	mov	r15, rdi
	xor	ebx, ebx
	test	ebp, ebp
	je	.label_814
	nop	word ptr cs:[rax + rax]
.label_815:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_815
.label_814:
	mov	eax, ebx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a530

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_816
	test	rsi, rsi
	mov	ecx, 1
	je	.label_817
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_817
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_816:
	mov	ecx, 1
.label_817:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a580

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_818
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_818:
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
	ja	.label_824
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_820
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_823
	test	esi, esi
	jne	.label_824
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_826
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_828
.label_824:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_821
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_823
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_827
.label_820:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_823:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_830
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_819
.label_830:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_819:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_827:
	cmp	eax, 6
	jne	.label_821
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_822
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_825
.label_821:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_829
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_831
.label_826:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_828:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_822:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_825:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_829:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_831:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a790

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
	#Procedure 0x40a7a0

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_832
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_834
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_834
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_835
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_836
.label_834:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_836
.label_832:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_836:
	test	ebx, ebx
	js	.label_835
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_835
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_833
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_835
.label_833:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_835:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a870

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
	je	.label_837
	cmp	r15, -2
	jb	.label_837
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_837
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_837:
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
	#Procedure 0x40a8d0

	.globl rpl_nanosleep
	.type rpl_nanosleep, @function
rpl_nanosleep:
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x10
	mov	r15, rsi
	cmp	qword ptr [rdi + 8], 0x3b9aca00
	jb	.label_838
	call	__errno_location
	mov	dword ptr [rax], 0x16
	mov	eax, 0xffffffff
	jmp	.label_840
.label_838:
	mov	rbx, qword ptr [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	r14, [rsp]
	nop	word ptr cs:[rax + rax]
.label_841:
	mov	qword ptr [rsp + 8], rcx
	cmp	rbx, 0x1fa401
	jl	.label_839
	mov	qword ptr [rsp], 0x1fa400
	mov	rdi, r14
	mov	rsi, r15
	call	nanosleep
	add	rbx, -0x1fa400
	test	eax, eax
	mov	ecx, 0
	je	.label_841
	test	r15, r15
	je	.label_840
	add	qword ptr [r15], rbx
	jmp	.label_840
.label_839:
	mov	qword ptr [rsp], rbx
	lea	rdi, [rsp]
	mov	rsi, r15
	call	nanosleep
.label_840:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a970
	.globl rotl64
	.type rotl64, @function
rotl64:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a980
	.globl rotr64
	.type rotr64, @function
rotr64:

	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a990
	.globl rotl32
	.type rotl32, @function
rotl32:

	mov	cl, sil
	rol	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9a0
	.globl rotr32
	.type rotr32, @function
rotr32:

	mov	cl, sil
	ror	edi, cl
	mov	eax, edi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9b0
	.globl rotl_sz
	.type rotl_sz, @function
rotl_sz:

	mov	cl, sil
	rol	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9c0

	.globl rotr_sz
	.type rotr_sz, @function
rotr_sz:
	mov	cl, sil
	ror	rdi, cl
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9d0
	.globl rotl16
	.type rotl16, @function
rotl16:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a9f0
	.globl rotr16
	.type rotr16, @function
rotr16:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 0x10
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, di
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa10
	.globl rotl8
	.type rotl8, @function
rotl8:

	mov	eax, edi
	mov	cl, sil
	shl	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shr	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa30
	.globl rotr8
	.type rotr8, @function
rotr8:

	mov	eax, edi
	mov	cl, sil
	shr	eax, cl
	mov	ecx, 8
	sub	ecx, esi
	shl	edi, cl
	or	edi, eax
	movzx	eax, dil
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa50
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_842
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_842
.label_843:
	ret	
.label_842:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_843
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aa80
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_844
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_844:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aaa0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aab0
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
	#Procedure 0x40aac0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_845
.label_846:
	ret	
.label_845:
	cmp	edi, 0x7f
	je	.label_846
	xor	eax, eax
	jmp	.label_846
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aae0
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
	#Procedure 0x40aaf0
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
	#Procedure 0x40ab00
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
	#Procedure 0x40ab10
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
	#Procedure 0x40ab20
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_847
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_847
.label_848:
	ret	
.label_847:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_848
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab50
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_849
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_849:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ab70

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
	#Procedure 0x40ab80
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_850
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_850:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40aba0
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
	#Procedure 0x40abb0
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
	#Procedure 0x40abc0

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
	je	.label_852
	mov	rdi, r14
	mov	rsi, rbx
	mov	rdx, rax
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	strtod_l
.label_852:
	test	rbx, rbx
	je	.label_851
	mov	qword ptr [rbx], r14
.label_851:
	xorps	xmm0, xmm0
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ac00

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_853
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_10
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_853:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac30

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
	je	.label_855
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_854
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_854
.label_855:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_854
	test	cl, cl
	jne	.label_854
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_854:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40aca0

	.globl dtotimespec
	.type dtotimespec, @function
dtotimespec:
	push	rax
	movabs	rdi, 0x7fffffffffffffff
	ucomisd	xmm0,  qword ptr [word ptr [rip + label_856]]
	jbe	.label_857
	movsd	xmm1,  qword ptr [word ptr [rip + label_859]]
	ucomisd	xmm1, xmm0
	jbe	.label_860
	cvttsd2si	rdi, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rdi
	subsd	xmm0, xmm1
	mulsd	xmm0,  qword ptr [word ptr [rip + label_744]]
	cvttsd2si	rax, xmm0
	xorps	xmm1, xmm1
	cvtsi2sd	xmm1, rax
	ucomisd	xmm0, xmm1
	seta	cl
	movzx	ecx, cl
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
	jmp	.label_858
.label_857:
	inc	rdi
	xor	esi, esi
	jmp	.label_858
.label_860:
	mov	esi, 0x3b9ac9ff
.label_858:
	call	make_timespec
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40ad60

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_862
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_863
	cmp	byte ptr [rax + 1], 0
	je	.label_861
.label_863:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_862
.label_861:
	xor	ebx, ebx
.label_862:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ada0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	je	.label_864
	mov	rax, rcx
.label_864:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40add0

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
	#Procedure 0x40ade0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_865
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_867
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_865
.label_867:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_865
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_866
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_866:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_865:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae60

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_868
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_868
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_868:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae90

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_869
	ret	
.label_869:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aeb0

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
	jne	.label_870
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_870
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_871
.label_870:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_871:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_872
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_872:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40af20

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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40aff0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section	.text
	.align	32
	#Procedure 0x40b000

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
