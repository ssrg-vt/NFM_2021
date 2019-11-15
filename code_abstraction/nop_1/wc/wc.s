	.section	.text
	.align	16
	#Procedure 0x401bf0

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
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
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
	#Procedure 0x401d20

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401d50

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.32
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.7
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
	mov	ebx, OFFSET FLAT:.str.7
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.40
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
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.7
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.46
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
	#Procedure 0x401e70

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x1d8
	mov	rbx, rsi
	mov	ebp, edi
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
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	xor	r14d, r14d
	xor	esi, esi
	mov	edx, 1
	xor	ecx, ecx
	call	setvbuf
	mov	edi, OFFSET FLAT:.str.11
	call	getenv
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	mov	byte ptr [byte ptr [rip + print_bytes]],  0
	mov	byte ptr [byte ptr [rip + print_chars]],  0
	mov	byte ptr [byte ptr [rip + print_words]],  0
	mov	byte ptr [byte ptr [rip + print_lines]],  0
	mov	byte ptr [byte ptr [rip + print_linelength]],  0
	mov	qword ptr [word ptr [rip + max_line_length]],  0
	mov	qword ptr [word ptr [rip + total_bytes]],  0
	mov	qword ptr [word ptr [rip + total_chars]],  0
	mov	qword ptr [word ptr [rip + total_words]],  0
	mov	qword ptr [word ptr [rip + total_lines]],  0
	jmp	.label_38
.label_40:
	mov	byte ptr [byte ptr [rip + print_linelength]],  1
	nop	dword ptr [rax]
.label_38:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x6b
	jle	.label_48
	cmp	eax, 0x76
	jg	.label_55
	cmp	eax, 0x6c
	je	.label_37
	cmp	eax, 0x6d
	jne	.label_12
	mov	byte ptr [byte ptr [rip + print_chars]],  1
	jmp	.label_38
	nop	dword ptr [rax + rax]
.label_48:
	cmp	eax, 0x4b
	jle	.label_39
	cmp	eax, 0x4c
	je	.label_40
	cmp	eax, 0x63
	jne	.label_12
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	jmp	.label_38
	nop	dword ptr [rax]
.label_55:
	cmp	eax, 0x77
	je	.label_45
	cmp	eax, 0x80
	jne	.label_12
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_38
.label_37:
	mov	byte ptr [byte ptr [rip + print_lines]],  1
	jmp	.label_38
.label_45:
	mov	byte ptr [byte ptr [rip + print_words]],  1
	jmp	.label_38
.label_39:
	cmp	eax, -1
	jne	.label_57
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	and	al, 1
	jne	.label_14
	mov	al,  byte ptr [byte ptr [rip + print_words]]
	and	al, 1
	jne	.label_14
	mov	al,  byte ptr [byte ptr [rip + print_chars]]
	and	al, 1
	jne	.label_14
	mov	al,  byte ptr [byte ptr [rip + print_bytes]]
	and	al, 1
	jne	.label_14
	mov	al,  byte ptr [byte ptr [rip + print_linelength]]
	and	al, 1
	jne	.label_14
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	mov	byte ptr [byte ptr [rip + print_words]],  1
	mov	byte ptr [byte ptr [rip + print_lines]],  1
.label_14:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r14, r14
	je	.label_27
	cmp	eax, ebp
	jl	.label_29
	movzx	eax, byte ptr [r14]
	cmp	eax, 0x2d
	jne	.label_58
	cmp	byte ptr [r14 + 1], 0
	je	.label_34
.label_58:
	mov	esi, OFFSET FLAT:.str.20
	mov	rdi, r14
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_35
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_27:
	sub	ebp, eax
	lea	rax, [rbx + rax*8]
	mov	r15d, OFFSET FLAT:main.stdin_only
	cmovg	r15, rax
	movsxd	rax, ebp
	mov	r13d, 1
	cmovg	r13, rax
	mov	rdi, r15
	call	argv_iter_init_argv
	mov	rbx, rax
	xor	eax, eax
.label_41:
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_54
.label_34:
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_35:
	mov	rdi, rbx
	call	fileno
	lea	rsi, [rsp + 0x28]
	mov	edi, eax
	call	__fstat
	test	eax, eax
	jne	.label_13
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x8000
	jne	.label_13
	mov	rax, qword ptr [rsp + 0x58]
	cvtsi2sd	xmm0, rax
	movsd	qword ptr [rsp + 0x20], xmm0
	call	physmem_available
	movapd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_23]]
	movsd	xmm0,  qword ptr [word ptr [rip + label_24]]
	ucomisd	xmm1, xmm0
	ja	.label_25
	call	physmem_available
	mulsd	xmm0,  qword ptr [word ptr [rip + label_23]]
.label_25:
	ucomisd	xmm0, qword ptr [rsp + 0x20]
	jae	.label_32
.label_13:
	mov	rdi, rbx
	call	argv_iter_init_stream
	mov	rbx, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	xor	r13d, r13d
.label_54:
	test	rbx, rbx
	je	.label_36
	mov	rdi, r13
	mov	rsi, r15
	call	get_input_fstatus
	mov	qword ptr [rsp + 0x20], rax
	mov	rdi, r13
	mov	rsi, rax
	call	compute_number_width
	mov	dword ptr [dword ptr [rip + number_width]],  eax
	lea	rsi, [rsp + 0x28]
	mov	rdi, rbx
	call	argv_iter
	mov	r15, rax
	mov	r12b, 1
	test	r15, r15
	mov	rbp, r14
	je	.label_43
	mov	r12b, 1
	xor	r14d, r14d
	jmp	.label_20
.label_21:
	movzx	ecx, byte ptr [r15]
	cmp	ecx, 0x2d
	jne	.label_49
	cmp	byte ptr [r15 + 1], 0
	je	.label_50
	xor	eax, eax
	jmp	.label_17
.label_49:
	xor	eax, eax
	jmp	.label_53
.label_50:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, qword ptr [rsp + 0x10]
	call	error
	mov	al, 1
	jmp	.label_17
.label_20:
	test	rbp, rbp
	je	.label_18
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_19
	cmp	byte ptr [rbp + 1], 0
	je	.label_21
	xor	eax, eax
	jmp	.label_17
	nop	dword ptr [rax + rax]
.label_18:
	xor	eax, eax
	jmp	.label_17
	nop	word ptr cs:[rax + rax]
.label_19:
	xor	eax, eax
.label_17:
	mov	cl, byte ptr [r15]
.label_53:
	test	cl, cl
	je	.label_30
	test	al, al
	je	.label_16
	xor	r12d, r12d
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_30:
	test	rbp, rbp
	je	.label_26
	mov	rdi, rbx
	call	argv_iter_n_args
	mov	r12, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	r15, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	r9, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.29
	xor	eax, eax
	mov	rcx, r15
	mov	r8, r12
	xor	r12d, r12d
	call	error
	jmp	.label_22
	nop	word ptr cs:[rax + rax]
.label_16:
	test	r13, r13
	mov	rax, r14
	cmove	rax, r13
	imul	rsi, rax, 0x98
	add	rsi, qword ptr [rsp + 0x20]
	mov	rdi, r15
	call	wc_file
	and	al, r12b
	mov	r12b, al
	jmp	.label_22
.label_26:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	nop	dword ptr [rax]
.label_22:
	test	r13, r13
	jne	.label_46
	mov	rax, qword ptr [rsp + 0x20]
	mov	dword ptr [rax], 1
.label_46:
	inc	r14
	mov	rdi, rbx
	lea	rsi, [rsp + 0x28]
	call	argv_iter
	mov	r15, rax
	test	r15, r15
	jne	.label_20
.label_43:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	eax, 2
	je	.label_28
	mov	r14, rbx
	cmp	eax, 4
	jne	.label_31
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	rbx, r14
	mov	rbp, qword ptr [rsp + 0x18]
	jmp	.label_11
.label_28:
	test	rbp, rbp
	jne	.label_42
	test	r12b, r12b
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_11
	mov	rdi, rbx
	call	argv_iter_n_args
	test	rax, rax
	jne	.label_11
	xor	edi, edi
	mov	rsi, qword ptr [rsp + 0x20]
	call	wc_file
	and	al, r12b
	mov	r12b, al
	jmp	.label_11
.label_42:
	mov	rbp, qword ptr [rsp + 0x18]
.label_11:
	test	bpl, bpl
	je	.label_52
	lea	rdi, [rsp + 0xb8]
	call	readtokens0_free
.label_52:
	mov	rdi, rbx
	call	argv_iter_n_args
	cmp	rax, 2
	jb	.label_51
	mov	r14, rbx
	mov	rbx,  qword ptr [word ptr [rip + total_lines]]
	mov	rbp,  qword ptr [word ptr [rip + total_words]]
	mov	r15,  qword ptr [word ptr [rip + total_chars]]
	mov	qword ptr [rsp + 0x18], r12
	mov	r12,  qword ptr [word ptr [rip + total_bytes]]
	mov	r13,  qword ptr [word ptr [rip + max_line_length]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rbx, r14
	mov	rsi, rbp
	mov	rdx, r15
	mov	rcx, r12
	mov	r12, qword ptr [rsp + 0x18]
	mov	r8, r13
	mov	r9, rax
	call	write_counts
.label_51:
	mov	rdi, rbx
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_44
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_15
.label_44:
	not	r12b
	and	r12b, 1
	movzx	eax, r12b
	add	rsp, 0x1d8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_32:
	lea	rbp, [rsp + 0xb8]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_47
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_47
	mov	r13, qword ptr [rsp + 0xb8]
	mov	r15, qword ptr [rsp + 0xc0]
	mov	rdi, r15
	call	argv_iter_init_argv
	mov	rbx, rax
	mov	al, 1
	jmp	.label_41
.label_57:
	cmp	eax, 0xffffff7d
	je	.label_56
	cmp	eax, 0xffffff7e
	jne	.label_12
	xor	edi, edi
	call	usage
.label_56:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	qword ptr [rsp], 0
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.14
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_12:
	mov	edi, 1
	call	usage
.label_36:
	call	xalloc_die
.label_31:
	cmp	eax, 3
	jne	.label_33
	call	xalloc_die
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbx + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_15:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	error
.label_33:
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402650

	.globl get_input_fstatus
	.type get_input_fstatus, @function
get_input_fstatus:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	r14, rdi
	test	r14, r14
	mov	edi, 1
	cmovne	rdi, r14
	mov	esi, 0x98
	call	xnmalloc
	mov	r15, rax
	test	r14, r14
	je	.label_64
	cmp	r14, 1
	jne	.label_61
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	and	eax, 1
	movzx	ecx,  byte ptr [byte ptr [rip + print_words]]
	and	ecx, 1
	add	ecx, eax
	movzx	eax,  byte ptr [byte ptr [rip + print_chars]]
	and	eax, 1
	add	eax, ecx
	movzx	ecx,  byte ptr [byte ptr [rip + print_bytes]]
	and	ecx, 1
	add	ecx, eax
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	add	eax, ecx
	cmp	eax, 1
	jne	.label_61
.label_64:
	mov	dword ptr [r15], 1
	jmp	.label_60
.label_61:
	mov	rbx, r15
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_65:
	mov	rax, qword ptr [r12]
	test	rax, rax
	je	.label_59
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_63
	cmp	byte ptr [rax + 1], 0
	je	.label_59
.label_63:
	mov	rdi, qword ptr [r12]
	mov	rsi, rbx
	call	stat
	jmp	.label_62
	nop	word ptr cs:[rax + rax]
.label_59:
	xor	edi, edi
	mov	rsi, rbx
	call	__fstat
.label_62:
	mov	dword ptr [rbx - 8], eax
	add	rbx, 0x98
	add	r12, 8
	dec	r14
	jne	.label_65
.label_60:
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x402740

	.globl compute_number_width
	.type compute_number_width, @function
compute_number_width:
	mov	ecx, 1
	test	rdi, rdi
	je	.label_66
	cmp	dword ptr [rsi], 0
	jg	.label_66
	add	rsi, 0x38
	mov	r9d, 1
	xor	r8d, r8d
	mov	eax, 0xf000
	nop	dword ptr [rax]
.label_67:
	cmp	dword ptr [rsi - 0x38], 0
	jne	.label_68
	mov	ecx, dword ptr [rsi - 0x18]
	and	ecx, eax
	cmp	ecx, 0x8000
	jne	.label_70
	add	r8, qword ptr [rsi]
	jmp	.label_68
.label_70:
	mov	r9d, 7
	nop	
.label_68:
	add	rsi, 0x98
	dec	rdi
	jne	.label_67
	mov	ecx, 1
	cmp	r8, 9
	jbe	.label_71
	movabs	rsi, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_69:
	inc	ecx
	mov	rax, r8
	mul	rsi
	shr	rdx, 3
	cmp	r8, 0x63
	mov	r8, rdx
	ja	.label_69
.label_71:
	cmp	ecx, r9d
	cmovl	ecx, r9d
.label_66:
	mov	eax, ecx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4027e0

	.globl wc_file
	.type wc_file, @function
wc_file:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_72
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_74
	cmp	byte ptr [rbx + 1], 0
	je	.label_72
.label_74:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_73
	xor	ecx, ecx
	mov	edi, ebp
	mov	rsi, rbx
	mov	rdx, r14
	call	wc
	mov	r14b, al
	mov	edi, ebp
	call	close
	test	eax, eax
	je	.label_75
.label_73:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r14d, r14d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_75
.label_72:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, rbx
	mov	rdx, r14
	call	wc
	mov	r14b, al
.label_75:
	mov	al, r14b
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402890

	.globl write_counts
	.type write_counts, @function
write_counts:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r15, r9
	mov	qword ptr [rsp + 8], r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	ebx, OFFSET FLAT:label_76
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_77
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_76
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_77:
	movzx	eax,  byte ptr [byte ptr [rip + print_words]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_83
	mov	r14d,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	mov	rdi, rbp
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, r14d
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_83:
	movzx	eax,  byte ptr [byte ptr [rip + print_chars]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_82
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	mov	rdi, r13
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_82:
	movzx	eax,  byte ptr [byte ptr [rip + print_bytes]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_81
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	mov	rdi, r12
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_81:
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_80
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
.label_80:
	test	r15, r15
	je	.label_78
	mov	esi, 0xa
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_79
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
.label_79:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.56
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_78:
	mov	edi, 0xa
	call	putchar_unlocked
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
	#Procedure 0x402a30

	.globl wc
	.type wc, @function
wc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4068
	mov	r15, rcx
	mov	r12, rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	dword ptr [rsp + 0x34], edi
	test	rsi, rsi
	mov	rax, rsi
	jne	.label_100
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
.label_100:
	mov	qword ptr [rsp], rax
	call	__ctype_get_mb_cur_max
	mov	cl,  byte ptr [byte ptr [rip + print_bytes]]
	and	cl, 1
	cmp	rax, 2
	jb	.label_127
	mov	dil,  byte ptr [byte ptr [rip + print_chars]]
	and	dil, 1
	jmp	.label_118
.label_127:
	or	cl,  byte ptr [byte ptr [rip + print_chars]]
	and	cl, 1
	xor	edi, edi
.label_118:
	mov	bl,  byte ptr [byte ptr [rip + print_linelength]]
	or	bl,  byte ptr [byte ptr [rip + print_words]]
	test	cl, cl
	sete	al
	test	dil, dil
	setne	r14b
	or	r14b, al
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	and	al, 1
	jne	.label_123
	test	bl, 1
	jne	.label_123
	test	r14b, r14b
	je	.label_134
.label_123:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	ebp, edi
	mov	edi, dword ptr [rsp + 0x34]
	call	fdadvise
	mov	edi, ebp
.label_134:
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	or	al, bl
	or	al, r14b
	test	al, 1
	je	.label_137
	test	dil, dil
	mov	dword ptr [rsp + 0xc], edi
	setne	al
	or	bl, al
	test	bl, 1
	je	.label_140
	call	__ctype_get_mb_cur_max
	xor	r12d, r12d
	cmp	rax, 2
	jb	.label_89
	mov	qword ptr [rsp + 0x58], 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	xor	ebx, ebx
	nop	dword ptr [rax]
.label_139:
	xor	r12d, r12d
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_135:
	lea	rsi, [r13 + 1]
	cmp	r15, 0x4000
	sete	al
	movzx	eax, al
	cmovne	rsi, r13
	sub	r15, rax
	lea	rdi, [rsp + 0x60]
	mov	rdx, r15
	call	memmove
	mov	r12, r15
.label_112:
	lea	rsi, [rsp + r12 + 0x60]
	mov	edx, 0x4000
	sub	rdx, r12
	mov	edi, dword ptr [rsp + 0x34]
	call	safe_read
	cmp	rax, -1
	je	.label_128
	mov	rcx, rbx
	mov	bpl, 1
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	je	.label_131
	add	rbx, rax
	mov	qword ptr [rsp + 0x18], rbx
	add	r12, rax
	mov	r15, r12
	lea	r13, [rsp + 0x60]
	mov	rbx, rcx
	nop	word ptr cs:[rax + rax]
.label_124:
	test	bl, 1
	jne	.label_85
	movsx	ebp, byte ptr [r13]
	mov	edi, ebp
	call	is_basic
	test	al, al
	je	.label_85
	mov	r12, rbx
	mov	dword ptr [rsp + 0x54], ebp
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_87
	nop	word ptr cs:[rax + rax]
.label_85:
	mov	rbp, qword ptr [rsp + 0x58]
	lea	rdi, [rsp + 0x54]
	mov	rsi, r13
	mov	rdx, r15
	lea	rcx, [rsp + 0x58]
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_102
	cmp	rbx, -2
	je	.label_105
	lea	rdi, [rsp + 0x58]
	call	mbsinit
	test	eax, eax
	sete	r12b
	test	rbx, rbx
	je	.label_109
	mov	al, 1
	mov	ebp, dword ptr [rsp + 0x54]
.label_87:
	lea	ecx, [rbp - 9]
	cmp	ecx, 4
	ja	.label_116
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_121]]
.label_439:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_94
	nop	word ptr cs:[rax + rax]
.label_102:
	inc	r13
	dec	r15
	mov	bl, 1
	jmp	.label_125
.label_116:
	cmp	ebp, 0x20
	jne	.label_97
	inc	qword ptr [rsp + 0x48]
	jmp	.label_94
.label_109:
	mov	dword ptr [rsp + 0x54], 0
	xor	ebp, ebp
	mov	ebx, 1
	jmp	.label_132
.label_440:
	inc	qword ptr [rsp + 0x20]
.label_441:
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_94
.label_97:
	test	al, al
	je	.label_141
.label_132:
	mov	edi, ebp
	call	iswprint
	test	eax, eax
	je	.label_101
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_98
	mov	edi, dword ptr [rsp + 0x54]
	call	wcwidth
	test	eax, eax
	mov	ecx, 0
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x48], rax
.label_98:
	mov	edi, dword ptr [rsp + 0x54]
	call	iswspace
	test	eax, eax
	jne	.label_94
	mov	edi, dword ptr [rsp + 0x54]
	call	iswnbspace
	test	eax, eax
	jne	.label_94
	jmp	.label_108
.label_141:
	movsx	edi, byte ptr [r13]
	call	to_uchar
	movzx	ebp, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	je	.label_101
	inc	qword ptr [rsp + 0x48]
	test	ah, 0x20
	jne	.label_94
.label_108:
	mov	r14b, 1
	jmp	.label_101
	nop	dword ptr [rax]
.label_94:
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x38], rax
	xor	r14d, r14d
.label_101:
	add	r13, rbx
	sub	r15, rbx
	inc	qword ptr [rsp + 0x40]
	mov	rbx, r12
.label_125:
	test	r15, r15
	jne	.label_124
	jmp	.label_139
	nop	dword ptr [rax]
.label_105:
	mov	qword ptr [rsp + 0x58], rbp
	mov	bl, 1
	test	r15, r15
	mov	r12d, 0
	je	.label_112
	jmp	.label_135
.label_137:
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [r12]
	test	eax, eax
	jle	.label_136
	lea	rsi, [r12 + 8]
	mov	edi, dword ptr [rsp + 0x34]
	call	__fstat
	mov	dword ptr [r12], eax
.label_136:
	xor	ebx, ebx
	test	eax, eax
	jne	.label_88
	lea	rdi, [r12 + 8]
	call	usable_st_size
	xor	ebx, ebx
	test	al, al
	je	.label_88
	mov	r14, qword ptr [r12 + 0x38]
	xor	ebx, ebx
	test	r14, r14
	js	.label_88
	test	r15, r15
	jns	.label_93
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 0x34]
	call	lseek
	mov	r15, rax
.label_93:
	xor	edx, edx
	mov	rax, r14
	div	qword ptr [word ptr [rip + page_size]]
	test	rdx, rdx
	je	.label_99
	xor	r12d, r12d
	sub	r14, r15
	cmovb	r14, r12
	mov	bpl, 1
	mov	rbx, r14
	jmp	.label_86
.label_140:
	xor	r13d, r13d
	lea	r14, [rsp + 0x60]
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_110
	nop	dword ptr [rax + rax]
.label_91:
	add	r13, r12
	mov	rcx, rbp
	sub	rcx, r15
	mov	rax, r12
	movabs	rdx, 0x8888888888888889
	mul	rdx
	shr	rdx, 3
	cmp	rcx, rdx
	setbe	bl
	mov	r15, rbp
.label_110:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, r14
	call	safe_read
	mov	r12, rax
	mov	bpl, 1
	test	r12, r12
	je	.label_126
	cmp	r12, -1
	je	.label_130
	test	bl, bl
	mov	rax, r12
	mov	rcx, r14
	mov	rbp, r15
	je	.label_95
	mov	esi, 0xa
	mov	rdi, r14
	mov	rdx, r12
	call	memchr
	test	rax, rax
	mov	rbp, r15
	je	.label_91
	lea	rbx, [rsp + r12 + 0x60]
	mov	rbp, r15
	nop	dword ptr [rax]
.label_122:
	inc	rax
	inc	rbp
	mov	rdx, rbx
	sub	rdx, rax
	mov	esi, 0xa
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_122
	jmp	.label_91
	nop	word ptr cs:[rax + rax]
.label_95:
	movzx	edx, byte ptr [rcx]
	inc	rcx
	cmp	edx, 0xa
	sete	dl
	movzx	edx, dl
	add	rbp, rdx
	dec	rax
	jne	.label_95
	jmp	.label_91
.label_89:
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	xor	r13d, r13d
	jmp	.label_103
	nop	dword ptr [rax + rax]
.label_113:
	mov	rax, qword ptr [rsp + 0x40]
	add	qword ptr [rsp + 0x18], rax
.label_103:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x34]
	lea	rsi, [rsp + 0x60]
	call	safe_read
	cmp	rax, -1
	je	.label_117
	mov	bpl, 1
	test	rax, rax
	je	.label_120
	mov	rbx, rax
	mov	qword ptr [rsp + 0x40], rax
	lea	rbp, [rsp + 0x60]
	jmp	.label_111
.label_96:
	mov	qword ptr [rsp + 0x48], r12
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	test	ah, 0x40
	jne	.label_129
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_133
.label_129:
	inc	r13
	test	ah, 0x20
	jne	.label_115
	mov	edi, r12d
	call	isnbspace
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x48]
	jne	.label_92
	mov	r14b, 1
	jmp	.label_133
.label_115:
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_111:
	movsx	edi, byte ptr [rbp]
	lea	eax, [rdi - 9]
	cmp	eax, 4
	ja	.label_84
	jmp	qword ptr [word ptr [+ (rax * 8) + label_107]]
.label_477:
	mov	eax, r13d
	and	eax, 7
	neg	rax
	lea	r13, [r13 + rax + 8]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_84:
	cmp	edi, 0x20
	jne	.label_96
	inc	r13
	jmp	.label_92
.label_478:
	inc	qword ptr [rsp + 0x20]
.label_479:
	cmp	r13, r12
	cmova	r12, r13
	xor	r13d, r13d
.label_92:
	and	r14b, 1
	movzx	eax, r14b
	add	r15, rax
	xor	r14d, r14d
.label_133:
	inc	rbp
	dec	rbx
	jne	.label_111
	jmp	.label_113
.label_126:
	xor	r14d, r14d
	jmp	.label_114
.label_130:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r14d, r14d
	xor	ebp, ebp
.label_114:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbx, r13
	xor	r13d, r13d
	xor	r12d, r12d
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_106
.label_128:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
	mov	rbx, qword ptr [rsp + 0x18]
.label_131:
	mov	r12, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x48]
	cmp	rax, r12
	cmova	r12, rax
	and	r14b, 1
	movzx	r14d, r14b
	add	r14, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 0xc]
	mov	r15, qword ptr [rsp + 0x20]
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_106
.label_117:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_120:
	cmp	r13, r12
	cmova	r12, r13
	and	r14b, 1
	movzx	r14d, r14b
	add	r14, r15
	xor	r13d, r13d
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbx, qword ptr [rsp + 0x18]
	mov	r15, qword ptr [rsp + 0x20]
	jmp	.label_106
.label_99:
	mov	rax, qword ptr [r12 + 0x40]
	lea	rcx, [rax + 1]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rax, r14
	div	rcx
	xor	ebx, ebx
	test	r15, r15
	js	.label_88
	sub	r14, rdx
	mov	rbp, r14
	sub	rbp, r15
	jle	.label_88
	mov	edx, 1
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, r14
	call	lseek
	xor	ebx, ebx
	test	rax, rax
	cmovns	rbx, rbp
.label_88:
	xor	r12d, r12d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x34]
	call	fdadvise
	lea	r14, [rsp + 0x60]
	jmp	.label_138
	nop	dword ptr [rax]
.label_90:
	add	rbx, rax
.label_138:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, r14
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_86
	cmp	rax, -1
	jne	.label_90
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	xor	r13d, r13d
	xor	r14d, r14d
	xor	r15d, r15d
	xor	ebp, ebp
	jmp	.label_104
.label_86:
	xor	r13d, r13d
	xor	r14d, r14d
	xor	r15d, r15d
.label_104:
	mov	eax, dword ptr [rsp + 0xc]
	mov	r9, qword ptr [rsp + 0x10]
.label_106:
	movzx	eax, al
	movzx	ecx,  byte ptr [byte ptr [rip + print_chars]]
	and	ecx, 1
	cmp	eax, ecx
	cmovb	r13, rbx
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, r12
	call	write_counts
	add	qword ptr [word ptr [rip + total_lines]],  r15
	add	qword ptr [word ptr [rip + total_words]],  r14
	add	qword ptr [word ptr [rip + total_chars]],  r13
	add	qword ptr [word ptr [rip + total_bytes]],  rbx
	cmp	r12,  qword ptr [word ptr [rip + max_line_length]]
	jbe	.label_119
	mov	qword ptr [word ptr [rip + max_line_length]],  r12
.label_119:
	mov	al, bpl
	add	rsp, 0x4068
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
	#Procedure 0x4032d0

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_142
	mov	al, 1
	ret	
.label_142:
	xor	eax, eax
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4032f0

	.globl iswnbspace
	.type iswnbspace, @function
iswnbspace:
	xor	eax, eax
	cmp	byte ptr [byte ptr [rip + posixly_correct]],  0
	jne	.label_143
	mov	eax, 1
	cmp	edi, 0x202e
	jg	.label_144
	cmp	edi, 0xa0
	je	.label_143
	cmp	edi, 0x2007
	je	.label_143
	jmp	.label_145
.label_144:
	cmp	edi, 0x202f
	je	.label_143
	cmp	edi, 0x2060
	je	.label_143
.label_145:
	xor	eax, eax
.label_143:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403330

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403340

	.globl isnbspace
	.type isnbspace, @function
isnbspace:
	push	rax
	call	btowc
	mov	edi, eax
	pop	rax
	jmp	iswnbspace
	nop	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403350

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_146
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_146:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403380

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_147
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_147:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4033b0

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	test	rcx, rcx
	je	.label_148
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_151
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_149
.label_148:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_150
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_149
.label_151:
	mov	rdi, qword ptr [rbx]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	xor	eax, eax
	jmp	.label_149
.label_150:
	mov	dword ptr [r14], 2
	xor	eax, eax
.label_149:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403440

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_152
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_152:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403460

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_153
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_153:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403480
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403490
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_156
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_154
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_154
.label_156:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_157
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_154:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_155
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_157:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_155:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x403560

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403570
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_158
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	fdadvise
.label_158:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403590

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_159:
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
	ja	.label_159
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4035e0
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_160
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_160:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403600
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	cmp	rax, rsi
	je	.label_161
	mov	qword ptr [r14], rax
	jmp	.label_162
.label_161:
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	qword ptr [r14], r15
.label_162:
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_163
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_163:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403650

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	eax, edi
	shr	eax, 3
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	bt	eax, edi
	setb	al
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403670

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_168
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_165
.label_168:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_169
	movsd	xmm0,  qword ptr [word ptr [rip + label_164]]
	jmp	.label_165
.label_169:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_166]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_167]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
.label_165:
	add	rsp, 0x70
	pop	rbx
	ret	
	.section	.text
	.align	16
	#Procedure 0x4036f0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_172
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_170
.label_172:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_173
	call	physmem_total
	mulsd	xmm0,  qword ptr [word ptr [rip + label_171]]
	jmp	.label_170
.label_173:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_166]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_167]]
	subpd	xmm0, xmm2
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	movq	xmm0, qword ptr [rsp + 0x38]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
.label_170:
	add	rsp, 0x70
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4037a0

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_174
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_175
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_175
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_176
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_176:
	mov	rbx, r14
.label_175:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_174:
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
	#Procedure 0x403850
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
	#Procedure 0x403890
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
	#Procedure 0x4038a0
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
	#Procedure 0x4038b0

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
	#Procedure 0x4038f0
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
	#Procedure 0x403910

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_177
	test	rdx, rdx
	je	.label_177
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_177:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403940
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
	#Procedure 0x4039c0

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
.label_241:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_226
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_219]]
.label_496:
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
.label_497:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_246
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_246
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_271:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_260
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_260:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_271
.label_246:
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
	jmp	.label_195
.label_489:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_195
.label_492:
	mov	al, 1
.label_490:
	mov	r15b, 1
.label_493:
	test	r15b, 1
	mov	cl, 1
	je	.label_202
	mov	cl, al
.label_202:
	mov	al, cl
.label_491:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_210
	test	r10, r10
	je	.label_297
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_298
.label_210:
	xor	ecx, ecx
	jmp	.label_298
.label_494:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_180
	test	r10, r10
	je	.label_190
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_192
.label_495:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_195
.label_297:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_298:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_195
.label_180:
	xor	eax, eax
	jmp	.label_192
.label_190:
	mov	eax, 1
.label_192:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_195:
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
	jmp	.label_284
	nop	dword ptr [rax + rax]
.label_198:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_284:
	cmp	rbp, -1
	je	.label_283
	cmp	rsi, rbp
	jne	.label_286
	jmp	.label_280
	nop	dword ptr [rax]
.label_283:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_280
.label_286:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_291
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_259
	cmp	rbp, -1
	jne	.label_259
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
.label_259:
	cmp	rbx, rbp
	jbe	.label_187
.label_291:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_230:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_194
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_196]]
.label_529:
	test	rsi, rsi
	jne	.label_201
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_187:
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
	jne	.label_224
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_230
	jmp	.label_240
.label_224:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_230
.label_533:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_252
	test	rsi, rsi
	jne	.label_255
	cmp	rbp, 1
	je	.label_204
	xor	r15d, r15d
	jmp	.label_178
.label_522:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_258
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_240
	cmp	edi, 2
	jne	.label_266
	mov	al, r11b
	and	al, 1
	jne	.label_269
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_273
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_273:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_245
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_245:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_285
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_285:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_186
.label_523:
	mov	bl, 0x62
	jmp	.label_235
.label_524:
	mov	cl, 0x74
	jmp	.label_295
.label_525:
	mov	bl, 0x76
	jmp	.label_235
.label_526:
	mov	bl, 0x66
	jmp	.label_235
.label_527:
	mov	cl, 0x72
	jmp	.label_295
.label_530:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_296
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_193
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
	jae	.label_183
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_183:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_205
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_205:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_213
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_213:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_222
.label_531:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_229
	cmp	r14d, 2
	jne	.label_232
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_193
.label_232:
	mov	rdi, r14
	jmp	.label_201
.label_532:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_237
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_193
	mov	rdi, r14
	jmp	.label_244
.label_194:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_247
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
.label_272:
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
	ja	.label_263
	test	dl, dl
	je	.label_263
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_178
.label_252:
	test	rsi, rsi
	jne	.label_281
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_281
.label_204:
	mov	dl, 1
.label_528:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_240
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_178
.label_258:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_201
	mov	r14, rdi
	inc	rsi
	jmp	.label_284
.label_296:
	mov	rdi, r14
.label_222:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_178
.label_237:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_295
.label_244:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_231
.label_295:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_240
.label_235:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_178
	jmp	.label_185
.label_247:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_189
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_189:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_264:
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
	je	.label_218
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_223
	cmp	rbp, -2
	je	.label_234
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_236
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_253:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_248
	bt	rsi, rdx
	jb	.label_251
.label_248:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_253
.label_236:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_227
	xor	r15d, r15d
.label_227:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_264
	jmp	.label_272
.label_281:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_178
.label_229:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_201
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_201
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_201
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_287
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_289
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_240
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_292
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_292:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_233
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_233:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_181
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_181:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_182
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_182:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_178
.label_201:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_178:
	test	r12b, r12b
	je	.label_275
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_208
	jmp	.label_215
	nop	word ptr cs:[rax + rax]
.label_275:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_215
.label_208:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_220
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_231
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_215:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_185
	jmp	.label_231
.label_220:
	mov	bl, r13b
	mov	rsi, r14
.label_185:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_240
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_249
	mov	al, r11b
	and	al, 1
	jne	.label_249
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_254
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_254:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_242
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_242:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_267
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_267:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_249:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_276
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_276:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_191
.label_255:
	xor	r15d, r15d
	jmp	.label_178
.label_263:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_288
	nop	word ptr cs:[rax + rax]
.label_290:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_288:
	test	dl, dl
	je	.label_293
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_179
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_199:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_179
	nop	word ptr [rax + rax]
.label_293:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_193
	cmp	r14d, 2
	jne	.label_197
	mov	al, r11b
	and	al, 1
	jne	.label_197
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_200
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_200:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_207
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_207:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_214
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_214:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_197:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_294
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_294:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_209
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_209:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_261
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_261:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_179:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_231
	test	r11b, 1
	je	.label_270
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_265
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_268
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_268:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_212
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_212:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_265
	nop	word ptr cs:[rax + rax]
.label_270:
	mov	r14, rdi
.label_265:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_290
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_290
.label_231:
	test	r11b, 1
	je	.label_243
	and	al, 1
	jne	.label_243
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_257
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_257:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_299
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_299:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_191
	nop	dword ptr [rax + rax]
.label_243:
	mov	bl, r13b
	mov	r14, rdi
.label_191:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_198
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_198
.label_266:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_186
.label_269:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_186:
	cmp	rcx, r10
	jae	.label_211
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_211:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_250
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_282
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_239
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_188
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_188:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_238
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_238:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_178
.label_250:
	xor	r15d, r15d
	jmp	.label_178
.label_282:
	xor	r15d, r15d
	jmp	.label_178
.label_239:
	xor	r15d, r15d
	jmp	.label_178
.label_218:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_256
.label_223:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_262
.label_234:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_217
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_277:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_274
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_277
	xor	r15d, r15d
	jmp	.label_256
.label_217:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_262:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_256:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_272
.label_274:
	xor	r15d, r15d
	jmp	.label_256
.label_287:
	xor	r15d, r15d
	jmp	.label_178
.label_289:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_178
	nop	dword ptr [rax + rax]
.label_280:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_216
	or	dl, al
	je	.label_193
.label_216:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_184
	or	dl, al
	jne	.label_184
	test	r8b, 1
	jne	.label_206
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_184
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_241
.label_184:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_203
	test	cl, cl
	jne	.label_203
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_203
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_221:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_278
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_278:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_221
.label_203:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_228
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_228
.label_240:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_225:
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
.label_279:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_228:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_251:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_225
.label_193:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_225
.label_206:
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
	jmp	.label_279
.label_226:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404bd0
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
	#Procedure 0x404be0

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
	je	.label_300
	mov	qword ptr [rax], rbx
.label_300:
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
	#Procedure 0x404ce0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_301
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_304:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_304
.label_301:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_305
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_302]], OFFSET FLAT:slot0
.label_305:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_303
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_303:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404d80

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x404d90

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
	js	.label_306
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_311
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_307
.label_311:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_310
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
	jne	.label_309
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_309:
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
.label_307:
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
	ja	.label_312
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_308
	mov	rdi, rbx
	call	free
.label_308:
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
.label_312:
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
.label_306:
	call	abort
.label_310:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f60

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x404f70
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
	#Procedure 0x404f80
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
	#Procedure 0x404f90

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
	#Procedure 0x404fd0

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
	je	.label_313
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
.label_313:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405030

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
	#Procedure 0x405070

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
	#Procedure 0x405090
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
	#Procedure 0x4050b0

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
	mov	rcx,  qword ptr [word ptr [rip + label_314]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_315]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_316]]
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
	#Procedure 0x405120

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
	#Procedure 0x405130

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405140
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405150

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
	#Procedure 0x4051a0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4051b0

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
	mov	rax,  qword ptr [word ptr [rip + label_314]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_315]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_316]]
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
	#Procedure 0x405220
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
	#Procedure 0x405240
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
	#Procedure 0x405260

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405270
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
	#Procedure 0x405280

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405290
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
	#Procedure 0x4052a0

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
	jne	.label_318
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
	je	.label_317
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_318
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_318
.label_317:
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
	je	.label_319
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_318
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_318
.label_319:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_318:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405380

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
	je	.label_321
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_322
	jmp	.label_320
.label_321:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_320
.label_322:
	mov	eax, 1
	test	bpl, bpl
	je	.label_320
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
.label_320:
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
	#Procedure 0x405410

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
	je	.label_325
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_323
	jmp	.label_324
.label_325:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_324
.label_323:
	mov	eax, 1
	test	bpl, bpl
	je	.label_324
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
.label_324:
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
	#Procedure 0x4054a0

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
	je	.label_326
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_328
	jmp	.label_327
.label_326:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_327
.label_328:
	mov	eax, 1
	test	bpl, bpl
	je	.label_327
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
.label_327:
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
	#Procedure 0x405520

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
	je	.label_331
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_331:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_329
.label_330:
	mov	eax, 1
	test	bpl, bpl
	je	.label_329
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
.label_329:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405590

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
	je	.label_334
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_332
	jmp	.label_333
.label_334:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_333
.label_332:
	mov	eax, 1
	test	bpl, bpl
	je	.label_333
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_333:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405600

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
	je	.label_336
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_337
	jmp	.label_335
.label_336:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_335
.label_337:
	mov	eax, 1
	test	bpl, bpl
	je	.label_335
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_335:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405650

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
	je	.label_340
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_339
	jmp	.label_338
.label_340:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_338
.label_339:
	mov	eax, 1
	test	bpl, bpl
	je	.label_338
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_338:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4056a0

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_343
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_342
	jmp	.label_341
.label_343:
	mov	eax, 1
	test	cl, cl
	je	.label_341
.label_342:
	xor	eax, eax
.label_341:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4056d0

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	xor	esi, esi
	xor	edx, edx
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_begin
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405740

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	call	_obstack_free
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	mov	rdi, rbx
	pop	rbx
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405770

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_344
	lea	r15, [rbx + 0x18]
	nop	dword ptr [rax]
.label_347:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	jne	.label_348
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
.label_348:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_353
	mov	rdi, rbx
	call	save_token
.label_353:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_347
.label_344:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_349
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_352
	lea	rdi, [rbx + 0x18]
	mov	esi, 1
	call	_obstack_newchunk
.label_352:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_349:
	mov	rax, qword ptr [rbx + 0x90]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	ja	.label_345
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
.label_345:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [rbx + 0x88]
	add	rcx, 8
	mov	qword ptr [rbx + 0x88], rcx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rcx, rax
	jne	.label_354
	or	byte ptr [rbx + 0xc0], 2
.label_354:
	mov	rdx, qword ptr [rbx + 0xa0]
	mov	rcx, qword ptr [rbx + 0x88]
	add	rcx, rdx
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0x88], rdx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rdx, rsi
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdx, rdi
	jbe	.label_351
	mov	qword ptr [rbx + 0x88], rcx
.label_351:
	mov	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	cmp	qword ptr [rbx + 0xe0], rax
	jne	.label_350
	or	byte ptr [rbx + 0x118], 2
.label_350:
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rbx + 0xe0]
	add	rcx, rdx
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0xe0], rdx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rdx, rsi
	mov	rdi, rcx
	sub	rdi, rsi
	cmp	rdx, rdi
	jbe	.label_346
	mov	qword ptr [rbx + 0xe0], rcx
.label_346:
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405930

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	r14, qword ptr [rbx + 0x30]
	cmp	r14, r15
	jne	.label_355
	or	byte ptr [rbx + 0x68], 2
.label_355:
	mov	rcx, qword ptr [rbx + 0x48]
	mov	rax, qword ptr [rbx + 0x30]
	add	rax, rcx
	not	rcx
	and	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rax, qword ptr [rbx + 0x38]
	sub	rcx, rdx
	mov	rsi, rax
	sub	rsi, rdx
	cmp	rcx, rsi
	jbe	.label_357
	mov	qword ptr [rbx + 0x30], rax
.label_357:
	dec	r14
	mov	rax, qword ptr [rbx + 0x30]
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x90]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	ja	.label_356
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
.label_356:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	sub	r14, r15
	mov	rax, qword ptr [rbx + 0xe8]
	sub	rax, qword ptr [rbx + 0xe0]
	cmp	rax, 7
	ja	.label_358
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
.label_358:
	mov	rax, qword ptr [rbx + 0xe0]
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405a00

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
.label_360:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_359
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_360
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
	jb	.label_359
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	je	.label_360
.label_359:
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
	#Procedure 0x405a90

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
	je	.label_364
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_362
.label_364:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_362:
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
	ja	.label_370
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_369]]
.label_459:
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
.label_370:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_368
.label_460:
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
.label_461:
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
.label_462:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_365
.label_463:
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
	jmp	.label_367
.label_464:
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
	jmp	.label_361
.label_465:
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
.label_361:
	mov	qword ptr [rsp + 0x10], rdi
.label_367:
	mov	qword ptr [rsp + 8], rsi
.label_365:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_363
.label_467:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_368:
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
	jmp	.label_366
.label_466:
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
.label_366:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_363:
	call	__fprintf_chk
.label_458:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d80
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_371:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_371
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405db0

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_373:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_372
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_374
	nop	dword ptr [rax]
.label_372:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_374:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_375
	inc	r9
	cmp	r9, 0xa
	jb	.label_373
.label_375:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x405e10

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_376
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_376:
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
	#Procedure 0x405ea0
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
	#Procedure 0x405f20

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_377
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_377:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_378
	test	rax, rax
	je	.label_379
.label_378:
	pop	rbx
	ret	
.label_379:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405f70
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_380
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_380:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405fa0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_381
	test	rbx, rbx
	jne	.label_381
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_381:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_383
	test	rax, rax
	je	.label_382
.label_383:
	pop	rbx
	ret	
.label_382:
	call	xalloc_die
	.section	.text
	.align	16
	#Procedure 0x405fd0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_384
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_387
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_385
.label_384:
	test	rcx, rcx
	jne	.label_388
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_388:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_386
.label_385:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_387:
	call	xalloc_die
.label_386:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406050

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406060
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406070
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
	#Procedure 0x4060a0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_389
	call	rpl_calloc
	test	rax, rax
	je	.label_389
	pop	rcx
	ret	
.label_389:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4060d0

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
	#Procedure 0x406100
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
	#Procedure 0x406120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
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
	#Procedure 0x406150

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_390
	test	rsi, rsi
	mov	ecx, 1
	je	.label_391
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_391
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_390:
	mov	ecx, 1
.label_391:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4061a0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_393
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_392
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_393
.label_392:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_393
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_394
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_394:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_393:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406220

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_395
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_395
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_395:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406250

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_396
	ret	
.label_396:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406270

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
	jne	.label_397
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_397
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_398
.label_397:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_398:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_399
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_399:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x4062e0

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
	je	.label_400
	cmp	r15, -2
	jb	.label_400
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_400
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_400:
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
	#Procedure 0x406340

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406360

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	mov	rsi, rax
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_401
	lea	rcx, [rax + r15 + 0x10]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	mov	qword ptr [r14 + 0x18], rbx
	mov	rcx, qword ptr [r14]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [r14 + 0x50], 0xf9
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_401:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406400

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_402
	test	al, al
	jne	.label_402
	mov	r15, qword ptr [r13 + 8]
	mov	rdi, r13
	mov	rsi, rbx
	call	call_chunkfun
	mov	r12, rax
	test	r12, r12
	je	.label_402
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	add	rbx, r12
	mov	qword ptr [r13 + 0x20], rbx
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	lea	rax, [r12 + rbx + 0x10]
	not	rbx
	and	rbx, rax
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	jne	.label_403
	mov	rax, qword ptr [r13 + 0x30]
	lea	rcx, [r15 + rax + 0x10]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_403
	mov	rax, qword ptr [r15 + 8]
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	call	call_freefun
.label_403:
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
.label_402:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4064f0

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_404
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x38]
.label_404:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406510

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_405
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_405:
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406530

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_406
	nop	word ptr cs:[rax + rax]
.label_409:
	mov	rcx, qword ptr [rcx + 8]
.label_406:
	test	rcx, rcx
	je	.label_407
	cmp	rcx, rsi
	jae	.label_409
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_409
	jmp	.label_408
.label_407:
	xor	eax, eax
.label_408:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406560

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	push	r15
	push	r14
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	mov	rsi, qword ptr [r15 + 8]
	test	rsi, rsi
	je	.label_410
	nop	word ptr cs:[rax + rax]
.label_414:
	cmp	rsi, r14
	jae	.label_411
	cmp	qword ptr [rsi], r14
	jae	.label_413
.label_411:
	mov	rbx, qword ptr [rsi + 8]
	mov	rdi, r15
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_414
.label_410:
	test	r14, r14
	je	.label_412
	call	abort
.label_413:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_412:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4065d0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_415
	nop	dword ptr [rax + rax]
.label_416:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_415:
	test	rcx, rcx
	jne	.label_416
	ret	
	.section	.text
	.align	16
	#Procedure 0x4065f0

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406630
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_417
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_417
.label_418:
	ret	
.label_417:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_418
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406660
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_419
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_419:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406680
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406690
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
	#Procedure 0x4066a0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_420
.label_421:
	ret	
.label_420:
	cmp	edi, 0x7f
	je	.label_421
	xor	eax, eax
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4066c0
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
	#Procedure 0x4066d0
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
	#Procedure 0x4066e0
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
	#Procedure 0x4066f0
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
	#Procedure 0x406700
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_422
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_422
.label_423:
	ret	
.label_422:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_423
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406730
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_424
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_424:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406750

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
	#Procedure 0x406760
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_425
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_425:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406780
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
	#Procedure 0x406790
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
	#Procedure 0x4067a0

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
	je	.label_426
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_427
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_427
.label_426:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_427
	test	cl, cl
	jne	.label_427
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_427:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406810

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_429
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_430
	cmp	byte ptr [rax + 1], 0
	je	.label_428
.label_430:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_429
.label_428:
	xor	ebx, ebx
.label_429:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x406850

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_0
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_431
	mov	rax, rcx
.label_431:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406880

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
	.align	16
	#Procedure 0x406950

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x406960

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
