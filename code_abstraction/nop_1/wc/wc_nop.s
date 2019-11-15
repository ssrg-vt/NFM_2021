	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl usage
	.type usage, @function
usage:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	push	rbx
	push	rax
	lea	rdi, [rdi]
	mov	ebp, edi
	mov	rsp, rsp
	test	ebp, ebp
	jne	.label_7
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	edi, 1
	mov	rbp, rbp
	xor	eax, eax
	mov	rsi, rcx
	mov	rsp, rsp
	mov	rcx, rdx
	call	__printf_chk
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_stdin_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	nop	
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	rbp, rbp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.5
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_ancillary_info
	mov	edi, ebp
	mov	rsp, rsp
	call	exit
.label_7:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	lea	rsi, [rsi]
	mov	esi, 1
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	rsp, rsp
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401d80

	.globl emit_stdin_note
	.type emit_stdin_note, @function
emit_stdin_note:
	lea	rdi, [rdi]
	push	rax
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	pop	rax
	lea	rdi, [rdi]
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x401dc0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	nop	
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.32
	nop	
.label_8:
	nop	
	mov	edi, OFFSET FLAT:.str.7
	nop	
	call	strcmp
	nop	
	test	eax, eax
	mov	rsp, rsp
	je	.label_10
	nop	
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	mov	rsp, rsp
	test	rsi, rsi
	mov	rbp, rbp
	jne	.label_8
.label_10:
	mov	rax, qword ptr [rbx + 8]
	mov	rbp, rbp
	test	rax, rax
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:.str.7
	lea	rsi, [rsi]
	cmovne	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.40
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.17
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:.str.18
	nop	
	xor	eax, eax
	call	__printf_chk
	mov	rbp, rbp
	mov	edi, 5
	xor	esi, esi
	call	setlocale
	test	rax, rax
	nop	
	je	.label_9
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_9
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
.label_9:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.44
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.7
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	mov	rbp, rbp
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.46
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	nop	
	xor	eax, eax
	mov	rsi, rdx
	mov	rdx, rbx
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r14
	jmp	__printf_chk
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x401f30

	.globl main
	.type main, @function
main:
	nop	
	push	rbp
	push	r15
	lea	rdi, [rdi]
	push	r14
	nop	
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x1d8
	mov	rsp, rsp
	mov	rbx, rsi
	mov	ebp, edi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbx]
	nop	
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	nop	
	mov	edi, OFFSET FLAT:.str.9
	mov	esi, OFFSET FLAT:.str.10
	call	bindtextdomain
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str.9
	call	textdomain
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rsp, rsp
	call	getpagesize
	cdqe	
	mov	qword ptr [word ptr [rip + page_size]],  rax
	mov	rbp, rbp
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	nop	
	xor	r14d, r14d
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	xor	ecx, ecx
	lea	rdi, [rdi]
	call	setvbuf
	mov	edi, OFFSET FLAT:.str.11
	call	getenv
	test	rax, rax
	setne	byte ptr [byte ptr [rip + posixly_correct]]
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_bytes]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_chars]],  0
	mov	byte ptr [byte ptr [rip + print_words]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_lines]],  0
	mov	rsp, rsp
	mov	byte ptr [byte ptr [rip + print_linelength]],  0
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + max_line_length]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + total_bytes]],  0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rip + total_chars]],  0
	mov	qword ptr [word ptr [rip + total_words]],  0
	mov	qword ptr [word ptr [rip + total_lines]],  0
	jmp	.label_13
.label_18:
	lea	rsi, [rsi]
	mov	byte ptr [byte ptr [rip + print_linelength]],  1
	nop	word ptr cs:[rax + rax]
.label_13:
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	nop	
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, rbx
	call	getopt_long
	cmp	eax, 0x6b
	jle	.label_39
	cmp	eax, 0x76
	mov	rsp, rsp
	jg	.label_41
	cmp	eax, 0x6c
	je	.label_42
	nop	
	cmp	eax, 0x6d
	mov	rsp, rsp
	jne	.label_12
	mov	byte ptr [byte ptr [rip + print_chars]],  1
	mov	rbp, rbp
	jmp	.label_13
	nop	dword ptr [rax]
.label_39:
	cmp	eax, 0x4b
	jle	.label_50
	mov	rsp, rsp
	cmp	eax, 0x4c
	lea	rdi, [rdi]
	je	.label_18
	nop	
	cmp	eax, 0x63
	mov	rbp, rbp
	jne	.label_12
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	lea	rsi, [rsi]
	jmp	.label_13
	nop	dword ptr [rax]
.label_41:
	mov	rsp, rsp
	cmp	eax, 0x77
	je	.label_19
	cmp	eax, 0x80
	jne	.label_12
	lea	rsi, [rsi]
	mov	r14,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_13
.label_42:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_lines]],  1
	jmp	.label_13
.label_19:
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_words]],  1
	lea	rdi, [rdi]
	jmp	.label_13
.label_50:
	lea	rdi, [rdi]
	cmp	eax, -1
	lea	rsi, [rsi]
	jne	.label_22
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	and	al, 1
	jne	.label_24
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_words]]
	lea	rdi, [rdi]
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_24
	mov	al,  byte ptr [byte ptr [rip + print_chars]]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	jne	.label_24
	mov	al,  byte ptr [byte ptr [rip + print_bytes]]
	and	al, 1
	jne	.label_24
	lea	rdi, [rdi]
	mov	al,  byte ptr [byte ptr [rip + print_linelength]]
	lea	rsi, [rsi]
	and	al, 1
	lea	rsi, [rsi]
	jne	.label_24
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	mov	byte ptr [byte ptr [rip + print_words]],  1
	mov	byte ptr [byte ptr [rip + print_lines]],  1
.label_24:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	r14, r14
	je	.label_44
	cmp	eax, ebp
	mov	rbp, rbp
	jl	.label_31
	movzx	eax, byte ptr [r14]
	mov	rbp, rbp
	cmp	eax, 0x2d
	jne	.label_51
	lea	rdi, [rdi]
	cmp	byte ptr [r14 + 1], 0
	je	.label_53
.label_51:
	nop	
	mov	esi, OFFSET FLAT:.str.20
	mov	rsp, rsp
	mov	rdi, r14
	lea	rdi, [rdi]
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_58
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.21
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rdi, [rdi]
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, r14
	lea	rdi, [rdi]
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_44:
	nop	
	sub	ebp, eax
	lea	rax, [rbx + rax*8]
	mov	r15d, OFFSET FLAT:main.stdin_only
	cmovg	r15, rax
	movsxd	rax, ebp
	mov	r13d, 1
	cmovg	r13, rax
	mov	rdi, r15
	lea	rsi, [rsi]
	call	argv_iter_init_argv
	mov	rbx, rax
	lea	rdi, [rdi]
	xor	eax, eax
.label_54:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_37
.label_53:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_58:
	mov	rsp, rsp
	mov	rdi, rbx
	nop	
	call	fileno
	lea	rsi, [rsp + 0x28]
	mov	edi, eax
	mov	rbp, rbp
	call	__fstat
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	jne	.label_46
	lea	rdi, [rdi]
	mov	eax, 0xf000
	mov	rbp, rbp
	and	eax, dword ptr [rsp + 0x40]
	nop	
	cmp	eax, 0x8000
	jne	.label_46
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	nop	
	cvtsi2sd	xmm0, rax
	nop	
	movsd	qword ptr [rsp + 0x20], xmm0
	call	physmem_available
	mov	rbp, rbp
	movapd	xmm1, xmm0
	mulsd	xmm1,  qword ptr [word ptr [rip + label_36]]
	movsd	xmm0,  qword ptr [word ptr [rip + label_56]]
	lea	rdi, [rdi]
	ucomisd	xmm1, xmm0
	nop	
	ja	.label_57
	mov	rbp, rbp
	call	physmem_available
	mov	rbp, rbp
	mulsd	xmm0,  qword ptr [word ptr [rip + label_36]]
.label_57:
	lea	rdi, [rdi]
	ucomisd	xmm0, qword ptr [rsp + 0x20]
	jae	.label_17
.label_46:
	mov	rdi, rbx
	call	argv_iter_init_stream
	mov	rbx, rax
	lea	rsi, [rsi]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	nop	
	xor	r15d, r15d
	nop	
	xor	r13d, r13d
.label_37:
	test	rbx, rbx
	je	.label_28
	mov	rdi, r13
	lea	rsi, [rsi]
	mov	rsi, r15
	call	get_input_fstatus
	mov	qword ptr [rsp + 0x20], rax
	nop	
	mov	rdi, r13
	nop	
	mov	rsi, rax
	call	compute_number_width
	mov	dword ptr [dword ptr [rip + number_width]],  eax
	lea	rsi, [rsp + 0x28]
	mov	rdi, rbx
	call	argv_iter
	mov	r15, rax
	mov	r12b, 1
	test	r15, r15
	nop	
	mov	rbp, r14
	je	.label_38
	lea	rsi, [rsi]
	mov	r12b, 1
	lea	rdi, [rdi]
	xor	r14d, r14d
	jmp	.label_23
.label_52:
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [r15]
	lea	rsi, [rsi]
	cmp	ecx, 0x2d
	mov	rsp, rsp
	jne	.label_45
	cmp	byte ptr [r15 + 1], 0
	je	.label_49
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_32
.label_45:
	xor	eax, eax
	jmp	.label_43
.label_49:
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	qword ptr [rsp + 0x10], rax
	lea	rdi, [rdi]
	mov	edi, 4
	lea	rdi, [rdi]
	mov	rsi, r15
	mov	rbp, rbp
	call	quotearg_style
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	call	error
	mov	al, 1
	jmp	.label_32
	nop	dword ptr [rax + rax]
.label_23:
	mov	rbp, rbp
	test	rbp, rbp
	nop	
	je	.label_20
	movzx	eax, byte ptr [rbp]
	nop	
	cmp	eax, 0x2d
	jne	.label_30
	cmp	byte ptr [rbp + 1], 0
	nop	
	je	.label_52
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_20:
	xor	eax, eax
	jmp	.label_32
	nop	word ptr cs:[rax + rax]
.label_30:
	xor	eax, eax
.label_32:
	mov	rsp, rsp
	mov	cl, byte ptr [r15]
.label_43:
	test	cl, cl
	je	.label_35
	test	al, al
	je	.label_55
	xor	r12d, r12d
	jmp	.label_15
	nop	dword ptr [rax]
.label_35:
	test	rbp, rbp
	je	.label_33
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	argv_iter_n_args
	nop	
	mov	r12, rax
	nop	
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	r15, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	r9, rax
	xor	edi, edi
	nop	
	xor	esi, esi
	nop	
	mov	edx, OFFSET FLAT:.str.29
	xor	eax, eax
	mov	rcx, r15
	nop	
	mov	r8, r12
	nop	
	xor	r12d, r12d
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	jmp	.label_15
	nop	word ptr cs:[rax + rax]
.label_55:
	mov	rbp, rbp
	test	r13, r13
	mov	rax, r14
	cmove	rax, r13
	mov	rbp, rbp
	imul	rsi, rax, 0x98
	add	rsi, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	mov	rdi, r15
	mov	rsp, rsp
	call	wc_file
	and	al, r12b
	lea	rsi, [rsi]
	mov	r12b, al
	jmp	.label_15
.label_33:
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	call	error
	nop	word ptr cs:[rax + rax]
.label_15:
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	jne	.label_11
	mov	rax, qword ptr [rsp + 0x20]
	nop	
	mov	dword ptr [rax], 1
.label_11:
	nop	
	inc	r14
	mov	rdi, rbx
	lea	rsi, [rsp + 0x28]
	mov	rbp, rbp
	call	argv_iter
	nop	
	mov	r15, rax
	test	r15, r15
	jne	.label_23
.label_38:
	nop	
	mov	eax, dword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	cmp	eax, 2
	je	.label_48
	lea	rdi, [rdi]
	mov	r14, rbx
	cmp	eax, 4
	lea	rsi, [rsi]
	jne	.label_27
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	r15d, dword ptr [rax]
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rsp, rsp
	xor	edi, edi
	mov	esi, 3
	nop	
	mov	rdx, rbp
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbx
	call	error
	mov	rbp, rbp
	mov	rbx, r14
	mov	rbp, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	jmp	.label_21
.label_48:
	lea	rsi, [rsi]
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_25
	test	r12b, r12b
	mov	rbp, qword ptr [rsp + 0x18]
	je	.label_21
	mov	rdi, rbx
	mov	rsp, rsp
	call	argv_iter_n_args
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	jne	.label_21
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	call	wc_file
	and	al, r12b
	mov	r12b, al
	jmp	.label_21
.label_25:
	mov	rbp, rbp
	mov	rbp, qword ptr [rsp + 0x18]
.label_21:
	test	bpl, bpl
	je	.label_40
	lea	rdi, [rdi]
	lea	rdi, [rsp + 0xb8]
	call	readtokens0_free
.label_40:
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rbp, rbp
	call	argv_iter_n_args
	cmp	rax, 2
	lea	rdi, [rdi]
	jb	.label_47
	mov	r14, rbx
	nop	
	mov	rbx,  qword ptr [word ptr [rip + total_lines]]
	nop	
	mov	rbp,  qword ptr [word ptr [rip + total_words]]
	mov	rsp, rsp
	mov	r15,  qword ptr [word ptr [rip + total_chars]]
	mov	qword ptr [rsp + 0x18], r12
	lea	rdi, [rdi]
	mov	r12,  qword ptr [word ptr [rip + total_bytes]]
	lea	rsi, [rsi]
	mov	r13,  qword ptr [word ptr [rip + max_line_length]]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rdi, rbx
	mov	rbx, r14
	mov	rsi, rbp
	mov	rdx, r15
	lea	rsi, [rsi]
	mov	rcx, r12
	mov	r12, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	mov	r8, r13
	lea	rdi, [rdi]
	mov	r9, rax
	mov	rsp, rsp
	call	write_counts
.label_47:
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 0x20]
	call	free
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_14
	nop	
	xor	edi, edi
	nop	
	call	close
	nop	
	test	eax, eax
	jne	.label_26
.label_14:
	nop	
	not	r12b
	mov	rbp, rbp
	and	r12b, 1
	lea	rdi, [rdi]
	movzx	eax, r12b
	add	rsp, 0x1d8
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_17:
	lea	rbp, [rsp + 0xb8]
	mov	rdi, rbp
	nop	
	call	readtokens0_init
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	mov	rbp, rbp
	test	al, al
	je	.label_16
	mov	rdi, rbx
	mov	rbp, rbp
	call	rpl_fclose
	test	eax, eax
	jne	.label_16
	mov	r13, qword ptr [rsp + 0xb8]
	nop	
	mov	r15, qword ptr [rsp + 0xc0]
	mov	rdi, r15
	lea	rsi, [rsi]
	call	argv_iter_init_argv
	lea	rdi, [rdi]
	mov	rbx, rax
	mov	rsp, rsp
	mov	al, 1
	jmp	.label_54
.label_22:
	cmp	eax, 0xffffff7d
	lea	rsi, [rsi]
	je	.label_29
	lea	rsi, [rsi]
	cmp	eax, 0xffffff7e
	nop	
	jne	.label_12
	xor	edi, edi
	call	usage
.label_29:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, OFFSET FLAT:.str.17
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.14
	lea	rdi, [rdi]
	mov	r9d, OFFSET FLAT:.str.15
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	nop	
	call	exit
.label_12:
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_28:
	mov	rsp, rsp
	call	xalloc_die
.label_27:
	nop	
	cmp	eax, 3
	lea	rdi, [rdi]
	jne	.label_34
	nop	
	call	xalloc_die
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rax
	nop	
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [rbx + rax*8]
	nop	
	mov	edi, 4
	lea	rdi, [rdi]
	call	quotearg_style
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	rbp, rbp
	xor	edi, edi
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rsp, rsp
	call	error
	mov	rsp, rsp
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, rbx
	call	__fprintf_chk
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	call	usage
.label_26:
	lea	rdi, [rdi]
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	xor	eax, eax
	call	error
.label_34:
	mov	rsp, rsp
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_16:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	edi, 4
	mov	rsi, r14
	call	quotearg_style
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	mov	edi, 1
	mov	rbp, rbp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl get_input_fstatus
	.type get_input_fstatus, @function
get_input_fstatus:
	push	r15
	nop	
	push	r14
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	lea	rsi, [rsi]
	mov	r12, rsi
	mov	rbp, rbp
	mov	r14, rdi
	test	r14, r14
	lea	rsi, [rsi]
	mov	edi, 1
	cmovne	rdi, r14
	mov	rbp, rbp
	mov	esi, 0x98
	lea	rsi, [rsi]
	call	xnmalloc
	mov	r15, rax
	mov	rsp, rsp
	test	r14, r14
	je	.label_63
	lea	rdi, [rdi]
	cmp	r14, 1
	jne	.label_60
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + print_words]]
	and	ecx, 1
	lea	rdi, [rdi]
	add	ecx, eax
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_chars]]
	lea	rsi, [rsi]
	and	eax, 1
	add	eax, ecx
	movzx	ecx,  byte ptr [byte ptr [rip + print_bytes]]
	and	ecx, 1
	lea	rdi, [rdi]
	add	ecx, eax
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	lea	rsi, [rsi]
	add	eax, ecx
	cmp	eax, 1
	lea	rdi, [rdi]
	jne	.label_60
.label_63:
	nop	
	mov	dword ptr [r15], 1
	mov	rbp, rbp
	jmp	.label_59
.label_60:
	mov	rbx, r15
	add	rbx, 8
	nop	word ptr [rax + rax]
.label_62:
	lea	rsi, [rsi]
	mov	rax, qword ptr [r12]
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_64
	mov	rsp, rsp
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_61
	cmp	byte ptr [rax + 1], 0
	je	.label_64
.label_61:
	mov	rdi, qword ptr [r12]
	lea	rdi, [rdi]
	mov	rsi, rbx
	call	stat
	jmp	.label_65
	nop	word ptr cs:[rax + rax]
.label_64:
	mov	rsp, rsp
	xor	edi, edi
	mov	rsi, rbx
	call	__fstat
.label_65:
	mov	dword ptr [rbx - 8], eax
	add	rbx, 0x98
	lea	rdi, [rdi]
	add	r12, 8
	dec	r14
	jne	.label_62
.label_59:
	mov	rsp, rsp
	mov	rax, r15
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402ae0

	.globl compute_number_width
	.type compute_number_width, @function
compute_number_width:
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsp, rsp
	test	rdi, rdi
	je	.label_66
	nop	
	cmp	dword ptr [rsi], 0
	mov	rsp, rsp
	jg	.label_66
	add	rsi, 0x38
	mov	rbp, rbp
	mov	r9d, 1
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	eax, 0xf000
	nop	dword ptr [rax]
.label_70:
	mov	rbp, rbp
	cmp	dword ptr [rsi - 0x38], 0
	mov	rbp, rbp
	jne	.label_68
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rsi - 0x18]
	and	ecx, eax
	cmp	ecx, 0x8000
	lea	rdi, [rdi]
	jne	.label_69
	mov	rbp, rbp
	add	r8, qword ptr [rsi]
	lea	rsi, [rsi]
	jmp	.label_68
.label_69:
	mov	r9d, 7
.label_68:
	mov	rsp, rsp
	add	rsi, 0x98
	mov	rbp, rbp
	dec	rdi
	jne	.label_70
	mov	ecx, 1
	cmp	r8, 9
	lea	rdi, [rdi]
	jbe	.label_67
	mov	rsp, rsp
	movabs	rsi, 0xcccccccccccccccd
	nop	dword ptr [rax]
.label_71:
	inc	ecx
	mov	rax, r8
	mov	rbp, rbp
	mul	rsi
	lea	rdi, [rdi]
	shr	rdx, 3
	lea	rsi, [rsi]
	cmp	r8, 0x63
	mov	rsp, rsp
	mov	r8, rdx
	ja	.label_71
.label_67:
	mov	rbp, rbp
	cmp	ecx, r9d
	cmovl	ecx, r9d
.label_66:
	mov	rbp, rbp
	mov	eax, ecx
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl wc_file
	.type wc_file, @function
wc_file:
	push	rbp
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	mov	r14, rsi
	nop	
	mov	rbx, rdi
	lea	rdi, [rdi]
	test	rbx, rbx
	mov	rbp, rbp
	je	.label_72
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbx]
	cmp	eax, 0x2d
	jne	.label_73
	cmp	byte ptr [rbx + 1], 0
	lea	rsi, [rsi]
	je	.label_72
.label_73:
	nop	
	xor	esi, esi
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rbp, rbp
	call	open
	mov	rbp, rbp
	mov	ebp, eax
	nop	
	cmp	ebp, -1
	je	.label_74
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edi, ebp
	nop	
	mov	rsi, rbx
	lea	rsi, [rsi]
	mov	rdx, r14
	mov	rsp, rsp
	call	wc
	mov	r14b, al
	mov	edi, ebp
	mov	rbp, rbp
	call	close
	mov	rbp, rbp
	test	eax, eax
	je	.label_75
.label_74:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	xor	r14d, r14d
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, rbx
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	jmp	.label_75
.label_72:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	mov	rsp, rsp
	xor	edi, edi
	mov	rcx, -1
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r14
	lea	rdi, [rdi]
	call	wc
	mov	r14b, al
.label_75:
	mov	al, r14b
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x402cc0

	.globl write_counts
	.type write_counts, @function
write_counts:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x28
	mov	rbp, rbp
	mov	r15, r9
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbp, rsi
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:label_76
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 1
	jne	.label_77
	mov	rsp, rsp
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	nop	
	mov	esi, OFFSET FLAT:label_76
	nop	
	xor	eax, eax
	mov	edx, ebx
	mov	rsp, rsp
	call	__printf_chk
	lea	rdi, [rdi]
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_77:
	movzx	eax,  byte ptr [byte ptr [rip + print_words]]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	nop	
	jne	.label_82
	mov	rbp, rbp
	mov	r14d,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x10]
	nop	
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	umaxtostr
	mov	rcx, rax
	nop	
	mov	edi, 1
	mov	rsp, rsp
	xor	eax, eax
	mov	rsi, rbx
	nop	
	mov	edx, r14d
	call	__printf_chk
	mov	rbp, rbp
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_82:
	lea	rsi, [rsi]
	movzx	eax,  byte ptr [byte ptr [rip + print_chars]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_83
	nop	
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	mov	rsp, rsp
	mov	rdi, r13
	call	umaxtostr
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, ebp
	mov	rbp, rbp
	call	__printf_chk
	nop	
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_83:
	movzx	eax,  byte ptr [byte ptr [rip + print_bytes]]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_80
	mov	rsp, rsp
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	mov	rsp, rsp
	lea	rsi, [rsp + 0x10]
	nop	
	mov	rdi, r12
	nop	
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	nop	
	mov	rsi, rbx
	mov	edx, ebp
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_80:
	nop	
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 1
	jne	.label_81
	mov	ebp,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsi]
	lea	rsi, [rsp + 0x10]
	mov	rdi, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	call	umaxtostr
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rsp, rsp
	mov	edx, ebp
	lea	rsi, [rsi]
	call	__printf_chk
.label_81:
	test	r15, r15
	je	.label_78
	mov	esi, 0xa
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_79
	lea	rsi, [rsi]
	xor	edi, edi
	nop	
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	r15, rax
.label_79:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.56
	mov	rsp, rsp
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_78:
	mov	rbp, rbp
	mov	edi, 0xa
	call	putchar_unlocked
	lea	rdi, [rdi]
	add	rsp, 0x28
	lea	rsi, [rsi]
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
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
	#Procedure 0x402f00

	.globl wc
	.type wc, @function
wc:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x4068
	mov	r15, rcx
	mov	rsp, rsp
	mov	r12, rdx
	mov	qword ptr [rsp + 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x34], edi
	test	rsi, rsi
	lea	rdi, [rdi]
	mov	rax, rsi
	lea	rsi, [rsi]
	jne	.label_84
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
.label_84:
	mov	qword ptr [rsp], rax
	call	__ctype_get_mb_cur_max
	nop	
	mov	cl,  byte ptr [byte ptr [rip + print_bytes]]
	lea	rsi, [rsi]
	and	cl, 1
	cmp	rax, 2
	jb	.label_112
	mov	dil,  byte ptr [byte ptr [rip + print_chars]]
	and	dil, 1
	jmp	.label_118
.label_112:
	nop	
	or	cl,  byte ptr [byte ptr [rip + print_chars]]
	and	cl, 1
	xor	edi, edi
.label_118:
	mov	rbp, rbp
	mov	bl,  byte ptr [byte ptr [rip + print_linelength]]
	mov	rsp, rsp
	or	bl,  byte ptr [byte ptr [rip + print_words]]
	lea	rsi, [rsi]
	test	cl, cl
	nop	
	sete	al
	nop	
	test	dil, dil
	lea	rdi, [rdi]
	setne	r14b
	or	r14b, al
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	lea	rdi, [rdi]
	and	al, 1
	jne	.label_125
	test	bl, 1
	lea	rsi, [rsi]
	jne	.label_125
	test	r14b, r14b
	nop	
	je	.label_132
.label_125:
	mov	rsp, rsp
	xor	esi, esi
	mov	rbp, rbp
	xor	edx, edx
	mov	ecx, 2
	nop	
	mov	ebp, edi
	nop	
	mov	edi, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	call	fdadvise
	lea	rdi, [rdi]
	mov	edi, ebp
.label_132:
	lea	rsi, [rsi]
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	mov	rbp, rbp
	or	al, bl
	mov	rbp, rbp
	or	al, r14b
	nop	
	test	al, 1
	je	.label_141
	test	dil, dil
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], edi
	lea	rsi, [rsi]
	setne	al
	or	bl, al
	lea	rsi, [rsi]
	test	bl, 1
	lea	rdi, [rdi]
	je	.label_90
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	lea	rsi, [rsi]
	xor	r12d, r12d
	lea	rsi, [rsi]
	cmp	rax, 2
	jb	.label_105
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x58], 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x28], rax
	mov	eax, 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	nop	
	mov	eax, 0
	mov	qword ptr [rsp + 0x40], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x38], rax
	mov	rsp, rsp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rax
	xor	ebx, ebx
.label_103:
	xor	r12d, r12d
	jmp	.label_114
	nop	word ptr cs:[rax + rax]
.label_97:
	lea	rdi, [rdi]
	lea	rsi, [r13 + 1]
	mov	rbp, rbp
	cmp	r15, 0x4000
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmovne	rsi, r13
	sub	r15, rax
	nop	
	lea	rdi, [rsp + 0x60]
	mov	rbp, rbp
	mov	rdx, r15
	nop	
	call	memmove
	lea	rdi, [rdi]
	mov	r12, r15
.label_114:
	mov	rsp, rsp
	lea	rsi, [rsp + r12 + 0x60]
	mov	edx, 0x4000
	lea	rsi, [rsi]
	sub	rdx, r12
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x34]
	call	safe_read
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_88
	mov	rcx, rbx
	mov	bpl, 1
	test	rax, rax
	mov	rbx, qword ptr [rsp + 0x18]
	mov	rbp, rbp
	je	.label_93
	add	rbx, rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], rbx
	mov	rsp, rsp
	add	r12, rax
	mov	r15, r12
	lea	r13, [rsp + 0x60]
	mov	rsp, rsp
	mov	rbx, rcx
	nop	word ptr cs:[rax + rax]
.label_133:
	mov	rsp, rsp
	test	bl, 1
	jne	.label_113
	movsx	ebp, byte ptr [r13]
	lea	rdi, [rdi]
	mov	edi, ebp
	call	is_basic
	test	al, al
	lea	rdi, [rdi]
	je	.label_113
	mov	r12, rbx
	mov	dword ptr [rsp + 0x54], ebp
	nop	
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_121
	nop	
.label_113:
	nop	
	mov	rbp, qword ptr [rsp + 0x58]
	nop	
	lea	rdi, [rsp + 0x54]
	mov	rsi, r13
	mov	rdx, r15
	lea	rcx, [rsp + 0x58]
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_128
	lea	rsi, [rsi]
	cmp	rbx, -2
	mov	rbp, rbp
	je	.label_110
	lea	rdi, [rsp + 0x58]
	nop	
	call	mbsinit
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	sete	r12b
	test	rbx, rbx
	je	.label_135
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	ebp, dword ptr [rsp + 0x54]
.label_121:
	lea	ecx, [rbp - 9]
	cmp	ecx, 4
	lea	rdi, [rdi]
	ja	.label_106
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_123]]
.label_462:
	mov	rax, qword ptr [rsp + 0x48]
	mov	rcx, rax
	lea	rsi, [rsi]
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x48], rcx
	jmp	.label_95
	nop	
.label_128:
	inc	r13
	dec	r15
	mov	bl, 1
	lea	rsi, [rsi]
	jmp	.label_111
.label_106:
	lea	rdi, [rdi]
	cmp	ebp, 0x20
	lea	rsi, [rsi]
	jne	.label_94
	mov	rbp, rbp
	inc	qword ptr [rsp + 0x48]
	nop	
	jmp	.label_95
.label_135:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x54], 0
	xor	ebp, ebp
	mov	rbp, rbp
	mov	ebx, 1
	jmp	.label_98
.label_463:
	lea	rsi, [rsi]
	inc	qword ptr [rsp + 0x20]
.label_464:
	nop	
	mov	rax, qword ptr [rsp + 0x28]
	mov	rcx, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	cmp	rcx, rax
	mov	rbp, rbp
	cmova	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x28], rax
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x48], rax
	jmp	.label_95
.label_94:
	test	al, al
	je	.label_126
.label_98:
	mov	edi, ebp
	call	iswprint
	lea	rsi, [rsi]
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_96
	lea	rdi, [rdi]
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	nop	
	cmp	eax, 1
	jne	.label_119
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x54]
	call	wcwidth
	mov	rbp, rbp
	test	eax, eax
	nop	
	mov	ecx, 0
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x48], rax
.label_119:
	mov	edi, dword ptr [rsp + 0x54]
	call	iswspace
	test	eax, eax
	mov	rbp, rbp
	jne	.label_95
	mov	edi, dword ptr [rsp + 0x54]
	lea	rsi, [rsi]
	call	iswnbspace
	test	eax, eax
	jne	.label_95
	jmp	.label_120
.label_126:
	lea	rsi, [rsi]
	movsx	edi, byte ptr [r13]
	mov	rsp, rsp
	call	to_uchar
	lea	rsi, [rsi]
	movzx	ebp, al
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	movzx	eax, word ptr [rax + rbp*2]
	nop	
	test	ah, 0x40
	mov	rsp, rsp
	je	.label_96
	mov	rbp, rbp
	inc	qword ptr [rsp + 0x48]
	nop	
	test	ah, 0x20
	jne	.label_95
.label_120:
	mov	rbp, rbp
	mov	r14b, 1
	lea	rsi, [rsi]
	jmp	.label_96
.label_95:
	lea	rsi, [rsi]
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x38], rax
	xor	r14d, r14d
.label_96:
	lea	rsi, [rsi]
	add	r13, rbx
	lea	rdi, [rdi]
	sub	r15, rbx
	inc	qword ptr [rsp + 0x40]
	mov	rbx, r12
.label_111:
	test	r15, r15
	jne	.label_133
	jmp	.label_103
	nop	word ptr cs:[rax + rax]
.label_110:
	mov	qword ptr [rsp + 0x58], rbp
	lea	rdi, [rdi]
	mov	bl, 1
	lea	rdi, [rdi]
	test	r15, r15
	mov	r12d, 0
	mov	rbp, rbp
	je	.label_114
	mov	rsp, rsp
	jmp	.label_97
.label_141:
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xc], edi
	mov	eax, dword ptr [r12]
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jle	.label_129
	mov	rsp, rsp
	lea	rsi, [r12 + 8]
	mov	edi, dword ptr [rsp + 0x34]
	call	__fstat
	mov	dword ptr [r12], eax
.label_129:
	xor	ebx, ebx
	nop	
	test	eax, eax
	jne	.label_86
	lea	rdi, [r12 + 8]
	nop	
	call	usable_st_size
	xor	ebx, ebx
	mov	rbp, rbp
	test	al, al
	je	.label_86
	mov	r14, qword ptr [r12 + 0x38]
	mov	rsp, rsp
	xor	ebx, ebx
	test	r14, r14
	js	.label_86
	test	r15, r15
	lea	rsi, [rsi]
	jns	.label_91
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 0x34]
	call	lseek
	mov	r15, rax
.label_91:
	xor	edx, edx
	mov	rax, r14
	div	qword ptr [word ptr [rip + page_size]]
	mov	rsp, rsp
	test	rdx, rdx
	mov	rsp, rsp
	je	.label_100
	xor	r12d, r12d
	lea	rdi, [rdi]
	sub	r14, r15
	cmovb	r14, r12
	mov	bpl, 1
	mov	rbx, r14
	mov	rbp, rbp
	jmp	.label_99
.label_90:
	xor	r13d, r13d
	mov	rbp, rbp
	lea	r14, [rsp + 0x60]
	mov	rbp, rbp
	xor	r15d, r15d
	xor	ebx, ebx
	jmp	.label_116
	nop	dword ptr [rax]
.label_89:
	add	r13, r12
	mov	rsp, rsp
	mov	rcx, rbp
	sub	rcx, r15
	lea	rsi, [rsi]
	mov	rax, r12
	movabs	rdx, 0x8888888888888889
	mul	rdx
	shr	rdx, 3
	mov	rbp, rbp
	cmp	rcx, rdx
	setbe	bl
	mov	r15, rbp
.label_116:
	mov	edx, 0x4000
	lea	rdi, [rdi]
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, r14
	call	safe_read
	lea	rdi, [rdi]
	mov	r12, rax
	mov	bpl, 1
	mov	rsp, rsp
	test	r12, r12
	je	.label_131
	mov	rbp, rbp
	cmp	r12, -1
	lea	rdi, [rdi]
	je	.label_136
	mov	rsp, rsp
	test	bl, bl
	mov	rax, r12
	lea	rsi, [rsi]
	mov	rcx, r14
	mov	rbp, r15
	mov	rsp, rsp
	je	.label_109
	mov	esi, 0xa
	mov	rsp, rsp
	mov	rdi, r14
	mov	rdx, r12
	nop	
	call	memchr
	mov	rsp, rsp
	test	rax, rax
	nop	
	mov	rbp, r15
	je	.label_89
	lea	rbx, [rsp + r12 + 0x60]
	lea	rdi, [rdi]
	mov	rbp, r15
	nop	dword ptr [rax]
.label_134:
	inc	rax
	inc	rbp
	mov	rdx, rbx
	sub	rdx, rax
	mov	rbp, rbp
	mov	esi, 0xa
	nop	
	mov	rdi, rax
	call	memchr
	nop	
	test	rax, rax
	jne	.label_134
	mov	rsp, rsp
	jmp	.label_89
	nop	dword ptr [rax + rax]
.label_109:
	movzx	edx, byte ptr [rcx]
	lea	rdi, [rdi]
	inc	rcx
	nop	
	cmp	edx, 0xa
	nop	
	sete	dl
	nop	
	movzx	edx, dl
	lea	rsi, [rsi]
	add	rbp, rdx
	dec	rax
	jne	.label_109
	mov	rsp, rsp
	jmp	.label_89
.label_105:
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	xor	r15d, r15d
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x20], rax
	xor	r14d, r14d
	xor	r13d, r13d
	mov	rbp, rbp
	jmp	.label_124
	nop	word ptr [rax + rax]
.label_115:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	add	qword ptr [rsp + 0x18], rax
.label_124:
	mov	rbp, rbp
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	lea	rsi, [rsp + 0x60]
	mov	rsp, rsp
	call	safe_read
	lea	rdi, [rdi]
	cmp	rax, -1
	je	.label_137
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rbp, rbp
	test	rax, rax
	mov	rsp, rsp
	je	.label_139
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x40], rax
	lea	rbp, [rsp + 0x60]
	jmp	.label_127
.label_130:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x48], r12
	call	to_uchar
	movzx	r12d, al
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + r12*2]
	test	ah, 0x40
	jne	.label_122
	mov	r12, qword ptr [rsp + 0x48]
	mov	rsp, rsp
	jmp	.label_102
.label_122:
	lea	rdi, [rdi]
	inc	r13
	test	ah, 0x20
	jne	.label_107
	mov	edi, r12d
	call	isnbspace
	lea	rdi, [rdi]
	test	eax, eax
	mov	r12, qword ptr [rsp + 0x48]
	jne	.label_87
	mov	r14b, 1
	jmp	.label_102
.label_107:
	mov	r12, qword ptr [rsp + 0x48]
	jmp	.label_87
	nop	
.label_127:
	mov	rbp, rbp
	movsx	edi, byte ptr [rbp]
	lea	eax, [rdi - 9]
	cmp	eax, 4
	nop	
	ja	.label_117
	nop	
	jmp	qword ptr [word ptr [+ (rax * 8) + label_85]]
.label_466:
	mov	eax, r13d
	mov	rbp, rbp
	and	eax, 7
	nop	
	neg	rax
	lea	r13, [r13 + rax + 8]
	jmp	.label_87
	nop	dword ptr [rax]
.label_117:
	cmp	edi, 0x20
	mov	rsp, rsp
	jne	.label_130
	inc	r13
	jmp	.label_87
.label_467:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0x20]
.label_468:
	cmp	r13, r12
	cmova	r12, r13
	xor	r13d, r13d
.label_87:
	mov	rbp, rbp
	and	r14b, 1
	mov	rbp, rbp
	movzx	eax, r14b
	mov	rsp, rsp
	add	r15, rax
	mov	rbp, rbp
	xor	r14d, r14d
.label_102:
	nop	
	inc	rbp
	mov	rsp, rsp
	dec	rbx
	lea	rdi, [rdi]
	jne	.label_127
	mov	rbp, rbp
	jmp	.label_115
.label_131:
	lea	rdi, [rdi]
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_140
.label_136:
	lea	rsi, [rsi]
	call	__errno_location
	mov	rsp, rsp
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	lea	rsi, [rsi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	call	error
	xor	r14d, r14d
	lea	rdi, [rdi]
	xor	ebp, ebp
.label_140:
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	mov	rbx, r13
	xor	r13d, r13d
	nop	
	xor	r12d, r12d
	lea	rdi, [rdi]
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_101
.label_88:
	call	__errno_location
	mov	rbp, rbp
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	mov	rsp, rsp
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 3
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	call	error
	mov	rbp, rbp
	mov	rbx, qword ptr [rsp + 0x18]
.label_93:
	mov	r12, qword ptr [rsp + 0x28]
	mov	rax, qword ptr [rsp + 0x48]
	cmp	rax, r12
	cmova	r12, rax
	mov	rsp, rsp
	and	r14b, 1
	movzx	r14d, r14b
	add	r14, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x40]
	jmp	.label_101
.label_137:
	call	__errno_location
	lea	rsi, [rsi]
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp]
	call	quotearg_n_style_colon
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	esi, ebx
	call	error
.label_139:
	cmp	r13, r12
	cmova	r12, r13
	mov	rsp, rsp
	and	r14b, 1
	nop	
	movzx	r14d, r14b
	add	r14, r15
	xor	r13d, r13d
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 0xc]
	mov	rbx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jmp	.label_101
.label_100:
	mov	rax, qword ptr [r12 + 0x40]
	mov	rsp, rsp
	lea	rcx, [rax + 1]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rsp, rsp
	mov	rax, r14
	lea	rsi, [rsi]
	div	rcx
	nop	
	xor	ebx, ebx
	test	r15, r15
	js	.label_86
	sub	r14, rdx
	mov	rbp, r14
	lea	rsi, [rsi]
	sub	rbp, r15
	nop	
	jle	.label_86
	mov	edx, 1
	nop	
	mov	edi, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	lseek
	xor	ebx, ebx
	mov	rsp, rsp
	test	rax, rax
	lea	rdi, [rdi]
	cmovns	rbx, rbp
.label_86:
	xor	r12d, r12d
	xor	esi, esi
	lea	rsi, [rsi]
	xor	edx, edx
	mov	rsp, rsp
	mov	ecx, 2
	mov	rbp, rbp
	mov	edi, dword ptr [rsp + 0x34]
	call	fdadvise
	nop	
	lea	r14, [rsp + 0x60]
	jmp	.label_92
	nop	word ptr cs:[rax + rax]
.label_104:
	mov	rbp, rbp
	add	rbx, rax
.label_92:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x34]
	lea	rsi, [rsi]
	mov	rsi, r14
	call	safe_read
	lea	rdi, [rdi]
	mov	bpl, 1
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_99
	cmp	rax, -1
	mov	rsp, rsp
	jne	.label_104
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp]
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	call	error
	mov	rbp, rbp
	xor	r13d, r13d
	xor	r14d, r14d
	xor	r15d, r15d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	
	jmp	.label_108
.label_99:
	mov	rbp, rbp
	xor	r13d, r13d
	lea	rdi, [rdi]
	xor	r14d, r14d
	xor	r15d, r15d
.label_108:
	mov	eax, dword ptr [rsp + 0xc]
	mov	r9, qword ptr [rsp + 0x10]
.label_101:
	movzx	eax, al
	lea	rdi, [rdi]
	movzx	ecx,  byte ptr [byte ptr [rip + print_chars]]
	mov	rsp, rsp
	and	ecx, 1
	mov	rbp, rbp
	cmp	eax, ecx
	lea	rdi, [rdi]
	cmovb	r13, rbx
	mov	rsp, rsp
	mov	rdi, r15
	nop	
	mov	rsi, r14
	mov	rdx, r13
	mov	rcx, rbx
	mov	r8, r12
	mov	rsp, rsp
	call	write_counts
	add	qword ptr [word ptr [rip + total_lines]],  r15
	add	qword ptr [word ptr [rip + total_words]],  r14
	mov	rbp, rbp
	add	qword ptr [word ptr [rip + total_chars]],  r13
	add	qword ptr [word ptr [rip + total_bytes]],  rbx
	cmp	r12,  qword ptr [word ptr [rip + max_line_length]]
	jbe	.label_138
	mov	qword ptr [word ptr [rip + max_line_length]],  r12
.label_138:
	nop	
	mov	al, bpl
	add	rsp, 0x4068
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a40

	.globl usable_st_size
	.type usable_st_size, @function
usable_st_size:
	mov	eax, 0x2000
	or	eax, dword ptr [rdi + 0x18]
	lea	rsi, [rsi]
	and	eax, 0xf000
	cmp	eax, 0xa000
	mov	rbp, rbp
	jne	.label_142
	lea	rsi, [rsi]
	mov	al, 1
	ret	
.label_142:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403a70

	.globl iswnbspace
	.type iswnbspace, @function
iswnbspace:
	xor	eax, eax
	cmp	byte ptr [byte ptr [rip + posixly_correct]],  0
	jne	.label_143
	mov	eax, 1
	cmp	edi, 0x202e
	jg	.label_145
	cmp	edi, 0xa0
	nop	
	je	.label_143
	cmp	edi, 0x2007
	je	.label_143
	lea	rdi, [rdi]
	jmp	.label_144
.label_145:
	mov	rsp, rsp
	cmp	edi, 0x202f
	mov	rsp, rsp
	je	.label_143
	cmp	edi, 0x2060
	lea	rsi, [rsi]
	je	.label_143
.label_144:
	mov	rsp, rsp
	xor	eax, eax
.label_143:
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403ac0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ad0

	.globl isnbspace
	.type isnbspace, @function
isnbspace:
	mov	rbp, rbp
	push	rax
	call	btowc
	lea	rsi, [rsi]
	mov	edi, eax
	pop	rax
	lea	rdi, [rdi]
	jmp	iswnbspace
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403af0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	rsp, rsp
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_146
	nop	
	mov	qword ptr [rax], 0
	mov	rbp, rbp
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rbp, rbp
	mov	rcx, rax
.label_146:
	mov	rax, rcx
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b40

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rdi
	mov	edi, 0x30
	lea	rdi, [rdi]
	call	malloc
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	rsp, rsp
	test	rax, rax
	lea	rsi, [rsi]
	je	.label_147
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	lea	rsi, [rsi]
	movups	xmmword ptr [rax + 0x18], xmm0
	mov	rbp, rbp
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_147:
	nop	
	mov	rax, rcx
	nop	
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403b90

	.globl argv_iter
	.type argv_iter, @function
argv_iter:
	push	r14
	mov	rsp, rsp
	push	rbx
	push	rax
	mov	r14, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	test	rcx, rcx
	je	.label_148
	lea	rsi, [rsi]
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	mov	rsp, rsp
	call	getdelim
	test	rax, rax
	js	.label_149
	mov	dword ptr [r14], 1
	mov	rsp, rsp
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_150
.label_148:
	mov	rax, qword ptr [rbx + 0x28]
	nop	
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	je	.label_151
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	jmp	.label_150
.label_149:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbx]
	lea	rdi, [rdi]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	mov	rbp, rbp
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	mov	rbp, rbp
	xor	eax, eax
	jmp	.label_150
.label_151:
	mov	rbp, rbp
	mov	dword ptr [r14], 2
	lea	rdi, [rdi]
	xor	eax, eax
.label_150:
	add	rsp, 8
	nop	
	pop	rbx
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c50

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	mov	rbp, rbp
	cmp	qword ptr [rdi], 0
	je	.label_152
	nop	
	mov	rax, qword ptr [rdi + 8]
	nop	
	ret	
.label_152:
	mov	rax, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	sub	rax, qword ptr [rdi + 0x20]
	mov	rbp, rbp
	sar	rax, 3
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403c80

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	mov	rsp, rsp
	push	rbx
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	cmp	qword ptr [rbx], 0
	lea	rdi, [rdi]
	je	.label_153
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_153:
	mov	rdi, rbx
	lea	rdi, [rdi]
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403cb0
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
	#Procedure 0x403cc0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403cd0

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
	je	.label_155
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_154
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_154
.label_155:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_157
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_154:
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
	jne	.label_156
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
.label_157:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_156:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
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
	#Procedure 0x403dd0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403de0
	.globl fadvise
	.type fadvise, @function
fadvise:

	lea	rdi, [rdi]
	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_158
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
.label_158:
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403e10

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_159:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rdi, [rdi]
	mul	r8
	mov	rsp, rsp
	shr	rdx, 3
	lea	eax, [rdx + rdx]
	mov	rbp, rbp
	lea	eax, [rax + rax*4]
	mov	edi, ecx
	sub	edi, eax
	or	edi, 0x30
	lea	rsi, [rsi]
	mov	byte ptr [rsi - 1], dil
	mov	rbp, rbp
	dec	rsi
	cmp	rcx, 9
	mov	rcx, rdx
	ja	.label_159
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x403e70
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_160
	lea	rdi, [rdi]
	mov	edi, ebx
	call	iswcntrl
	mov	rsp, rsp
	test	eax, eax
	lea	rsi, [rsi]
	sete	al
	movzx	eax, al
.label_160:
	mov	rsp, rsp
	pop	rbx
	lea	rdi, [rdi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403ea0
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	lea	rdi, [rdi]
	push	r14
	lea	rdi, [rdi]
	push	rbx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	r14, rdi
	mov	rax, qword ptr [rbx]
	lea	rsi, [rbx + 0x18]
	mov	rbp, rbp
	cmp	rax, rsi
	mov	rsp, rsp
	je	.label_161
	mov	rbp, rbp
	mov	qword ptr [r14], rax
	mov	rbp, rbp
	jmp	.label_162
.label_161:
	lea	rdi, [rdi]
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rbp, rbp
	mov	qword ptr [r14], r15
.label_162:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	al, byte ptr [rbx + 0x10]
	lea	rdi, [rdi]
	test	al, al
	mov	rsp, rsp
	mov	byte ptr [r14 + 0x10], al
	je	.label_163
	mov	eax, dword ptr [rbx + 0x14]
	mov	dword ptr [r14 + 0x14], eax
.label_163:
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x403f20

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	rsp, rsp
	mov	eax, edi
	mov	rbp, rbp
	shr	eax, 3
	mov	rsp, rsp
	and	eax, 0x1c
	mov	eax,  dword ptr [dword ptr [rax + is_basic_table]]
	nop	
	bt	eax, edi
	mov	rsp, rsp
	setb	al
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	16
	#Procedure 0x403f50

	.globl physmem_total
	.type physmem_total, @function
physmem_total:
	push	rbx
	sub	rsp, 0x70
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	rsp, rsp
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	nop	
	or	rcx, rbx
	js	.label_169
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_165
.label_169:
	mov	rbp, rbp
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_168
	nop	
	movsd	xmm0,  qword ptr [word ptr [rip + label_164]]
	jmp	.label_165
.label_168:
	mov	rsp, rsp
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_166]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_167]]
	mov	rsp, rsp
	pshufd	xmm1, xmm0, 0x4e
	mov	rsp, rsp
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	nop	
	xorps	xmm0, xmm0
	nop	
	cvtsi2sd	xmm0, rax
	mov	rbp, rbp
	mulsd	xmm0, xmm1
.label_165:
	nop	
	add	rsp, 0x70
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x403ff0

	.globl physmem_available
	.type physmem_available, @function
physmem_available:
	mov	rsp, rsp
	push	rbx
	sub	rsp, 0x70
	lea	rsi, [rsi]
	mov	edi, 0x56
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	mov	rbp, rbp
	js	.label_170
	lea	rdi, [rdi]
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	nop	
	jmp	.label_172
.label_170:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	mov	rsp, rsp
	je	.label_173
	call	physmem_total
	mulsd	xmm0,  qword ptr [word ptr [rip + label_171]]
	jmp	.label_172
.label_173:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_166]]
	punpckldq	xmm0, xmm1
	mov	rsp, rsp
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_167]]
	subpd	xmm0, xmm2
	mov	rsp, rsp
	pshufd	xmm3, xmm0, 0x4e
	addpd	xmm3, xmm0
	mov	rbp, rbp
	movq	xmm0, qword ptr [rsp + 0x38]
	lea	rsi, [rsi]
	punpckldq	xmm0, xmm1
	subpd	xmm0, xmm2
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	addsd	xmm1, xmm3
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	lea	rsi, [rsi]
	mulsd	xmm0, xmm1
.label_172:
	add	rsp, 0x70
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4040d0

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
	je	.label_174
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
	jl	.label_176
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_176
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
	jne	.label_175
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_175:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_176:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_174:
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
	#Procedure 0x4041c0
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
	#Procedure 0x404210
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
	#Procedure 0x404230
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
	#Procedure 0x404250

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
	#Procedure 0x4042c0
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
	#Procedure 0x4042e0

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
	je	.label_177
	test	rdx, rdx
	nop	
	je	.label_177
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_177:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x404320
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
	#Procedure 0x4043c0

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
.label_245:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_272
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_235]]
.label_481:
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
.label_482:
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
	jne	.label_259
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_259
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_288:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_244
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_244:
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
	jne	.label_288
.label_259:
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
	jmp	.label_180
.label_474:
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
	jmp	.label_180
.label_477:
	mov	rsp, rsp
	mov	al, 1
.label_475:
	mov	r15b, 1
.label_478:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_207
	mov	cl, al
.label_207:
	lea	rdi, [rdi]
	mov	al, cl
.label_476:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_212
	test	r10, r10
	je	.label_221
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_226
.label_212:
	xor	ecx, ecx
	jmp	.label_226
.label_479:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_236
	test	r10, r10
	je	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_269
.label_480:
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
	jmp	.label_180
.label_221:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_226:
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
	jmp	.label_180
.label_236:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_269
.label_239:
	mov	rbp, rbp
	mov	eax, 1
.label_269:
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
.label_180:
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
	jmp	.label_210
	nop	word ptr [rax + rax]
.label_185:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_210:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_230
	cmp	rsi, rbp
	jne	.label_233
	jmp	.label_234
	nop	word ptr cs:[rax + rax]
.label_230:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_234
.label_233:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_240
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_189
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_189
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
.label_189:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_273
.label_240:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_190:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_280
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_289]]
.label_503:
	test	rsi, rsi
	jne	.label_193
	jmp	.label_228
	nop	word ptr [rax + rax]
.label_273:
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
	jne	.label_184
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
	je	.label_190
	mov	rsp, rsp
	jmp	.label_182
.label_184:
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
	jmp	.label_190
.label_507:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_215
	test	rsi, rsi
	nop	
	jne	.label_223
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_228
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_183
.label_496:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_217
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_182
	cmp	edi, 2
	nop	
	jne	.label_242
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_243
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_296
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_296:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_254
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_254:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_278
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_278:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_211
.label_497:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_279
.label_498:
	mov	cl, 0x74
	jmp	.label_187
.label_499:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_279
.label_500:
	mov	bl, 0x66
	jmp	.label_279
.label_501:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_187
.label_504:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_197
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_216
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
	jae	.label_268
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_268:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_196
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_196:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_201
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_201:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_213
.label_505:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_291
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_232
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_216
.label_232:
	mov	rdi, r14
	jmp	.label_193
.label_506:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_238
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_216
	mov	rdi, r14
	jmp	.label_246
.label_280:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_248
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
.label_188:
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
	ja	.label_270
	test	dl, dl
	mov	rsp, rsp
	je	.label_270
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_183
.label_215:
	test	rsi, rsi
	jne	.label_286
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_286
.label_228:
	mov	rbp, rbp
	mov	dl, 1
.label_502:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_182
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_183
.label_217:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_193
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_210
.label_197:
	mov	rdi, r14
.label_213:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_183
.label_238:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_187
.label_246:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_192
.label_187:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_182
.label_279:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_183
	lea	rsi, [rsi]
	jmp	.label_204
.label_248:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_206
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
.label_206:
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
.label_297:
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
	je	.label_294
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
	je	.label_252
	cmp	rbp, -2
	nop	
	je	.label_265
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	lea	rdi, [rdi]
	movzx	eax, al
	lea	rdi, [rdi]
	cmp	eax, 1
	mov	rbp, rbp
	jne	.label_277
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_284:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_271
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_283
.label_271:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_284
.label_277:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_203
	xor	r15d, r15d
.label_203:
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
	je	.label_297
	jmp	.label_188
.label_286:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_183
.label_291:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_193
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_193
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_193
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_202
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_209
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_182
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_298
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_298:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_256
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_256:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_231
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_231:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_224
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_224:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_183
.label_193:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_183:
	test	r12b, r12b
	je	.label_222
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_275
	jmp	.label_276
	nop	word ptr cs:[rax + rax]
.label_222:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_276
.label_275:
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
	jne	.label_282
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_192
	jmp	.label_204
	nop	word ptr cs:[rax + rax]
.label_276:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_204
	jmp	.label_192
.label_282:
	mov	bl, r13b
	mov	rsi, r14
.label_204:
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
	jae	.label_237
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_237:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_198
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_208
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_186:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_227
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_227:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_191
.label_223:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_183
.label_270:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_295
	nop	word ptr cs:[rax + rax]
.label_200:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_295:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_251
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_253
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_260
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_260:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_253
	nop	dword ptr [rax]
.label_251:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_216
	cmp	r14d, 2
	jne	.label_249
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_249
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_287
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_287:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_293
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_293:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_181
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_181:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_249:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_266
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_266:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_264
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
.label_264:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_218
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
.label_218:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_253:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_192
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_247
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_194
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_250:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_261
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_261:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_194
	nop	word ptr cs:[rax + rax]
.label_247:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_194:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_200
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_200
	nop	word ptr cs:[rax + rax]
.label_192:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_292
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_292
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_262
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_262:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_179
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_179:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_191
	nop	word ptr cs:[rax + rax]
.label_292:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_191:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_185
.label_242:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_211
.label_243:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_211:
	cmp	rcx, r10
	jae	.label_219
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_219:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_229
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_267
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_241
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_178
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_178:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_258
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_258:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_183
.label_229:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_183
.label_267:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_183
.label_241:
	xor	r15d, r15d
	jmp	.label_183
.label_294:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_195
.label_252:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_285
.label_265:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_290
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_299:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_214
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_299
	xor	r15d, r15d
	nop	
	jmp	.label_195
.label_290:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_285:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_195:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_188
.label_214:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_195
.label_202:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_183
.label_209:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_234:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_205
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_216
.label_205:
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
	je	.label_225
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_225
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_257
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_225
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
	je	.label_245
.label_225:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_255
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_255
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_255
	inc	rdx
	nop	dword ptr [rax + rax]
.label_274:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_263
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_263:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_274
.label_255:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_281
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_281
.label_182:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_199:
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
.label_220:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_281:
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
.label_283:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_199
.label_216:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_199
.label_257:
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
	jmp	.label_220
.label_272:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405b10
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
	#Procedure 0x405b30

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
	je	.label_300
	mov	qword ptr [rax], rbx
.label_300:
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
	#Procedure 0x405c80
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_301
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_305:
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
	jl	.label_305
.label_301:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_304
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_302]], OFFSET FLAT:slot0
.label_304:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_303
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_303:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x405d40

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	16
	#Procedure 0x405d50

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
	js	.label_311
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_307
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_308
.label_307:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_312
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
	jne	.label_310
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_310:
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
.label_308:
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
	ja	.label_309
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
	je	.label_306
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_306:
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
.label_309:
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
.label_311:
	lea	rdi, [rdi]
	call	abort
.label_312:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x405fc0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x405fd0
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
	#Procedure 0x405ff0
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
	#Procedure 0x406010

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
	#Procedure 0x406070

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
	je	.label_313
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
.label_313:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x4060e0

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
	#Procedure 0x406140

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
	#Procedure 0x406160
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
	#Procedure 0x406180

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
	mov	rcx,  qword ptr [word ptr [rip + label_314]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_315]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_316]]
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
	#Procedure 0x406220

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
	#Procedure 0x406240

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
	#Procedure 0x406250
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406260

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
	#Procedure 0x4062d0

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
	#Procedure 0x4062e0

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
	mov	rax,  qword ptr [word ptr [rip + label_314]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_315]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_316]]
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
	#Procedure 0x406370
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
	#Procedure 0x4063a0
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
	#Procedure 0x4063d0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4063e0
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
	#Procedure 0x406400

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406410
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
	#Procedure 0x406420

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
	jne	.label_317
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
	je	.label_318
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_317
	nop	
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_317
.label_318:
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
	je	.label_319
	nop	
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_317
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_317
.label_319:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_317:
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
	#Procedure 0x406550

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
	je	.label_321
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_320
	jmp	.label_322
.label_321:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_322
.label_320:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_322
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
.label_322:
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
	#Procedure 0x406610

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
	je	.label_325
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_324
	lea	rsi, [rsi]
	jmp	.label_323
.label_325:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_323
.label_324:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_323
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
.label_323:
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
	#Procedure 0x406700

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
	je	.label_328
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_327
	jmp	.label_326
.label_328:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_326
.label_327:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_326
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
.label_326:
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
	#Procedure 0x4067d0

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
	je	.label_331
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_330
	jmp	.label_329
.label_331:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_329
.label_330:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_329
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
.label_329:
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
	#Procedure 0x406870

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
	je	.label_334
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_333
	nop	
	jmp	.label_332
.label_334:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_332
.label_333:
	mov	eax, 1
	test	bpl, bpl
	je	.label_332
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
.label_332:
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
	#Procedure 0x406910

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
	je	.label_337
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_336
	lea	rsi, [rsi]
	jmp	.label_335
.label_337:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_335
.label_336:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_335
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
.label_335:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4069a0

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
	je	.label_340
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_339
	jmp	.label_338
.label_340:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_338
.label_339:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_338
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_338:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406a10

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
	je	.label_341
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_343
	mov	rbp, rbp
	jmp	.label_342
.label_341:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_342
.label_343:
	xor	eax, eax
.label_342:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406a60

	.globl readtokens0_init
	.type readtokens0_init, @function
readtokens0_init:
	mov	rbp, rbp
	push	rbx
	mov	rbx, rdi
	mov	rsp, rsp
	lea	rdi, [rbx + 0x18]
	lea	rsi, [rsi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rbx], xmm0
	mov	qword ptr [rbx + 0x10], 0
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	lea	rdi, [rbx + 0x70]
	lea	rsi, [rsi]
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	call	_obstack_begin
	add	rbx, 0xc8
	mov	rsp, rsp
	xor	esi, esi
	xor	edx, edx
	lea	rdi, [rdi]
	mov	ecx, OFFSET FLAT:malloc
	nop	
	mov	r8d, OFFSET FLAT:free
	mov	rdi, rbx
	pop	rbx
	nop	
	jmp	_obstack_begin
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406ae0

	.globl readtokens0_free
	.type readtokens0_free, @function
readtokens0_free:
	push	rbx
	mov	rbx, rdi
	lea	rdi, [rbx + 0x18]
	xor	esi, esi
	lea	rdi, [rdi]
	call	_obstack_free
	lea	rdi, [rdi]
	lea	rdi, [rbx + 0x70]
	xor	esi, esi
	lea	rsi, [rsi]
	call	_obstack_free
	add	rbx, 0xc8
	xor	esi, esi
	nop	
	mov	rdi, rbx
	pop	rbx
	mov	rbp, rbp
	jmp	_obstack_free
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x406b20

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	mov	rbp, rbp
	push	rbx
	mov	rsp, rsp
	push	rax
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	mov	rsp, rsp
	cmp	ebp, -1
	je	.label_354
	lea	rdi, [rdi]
	lea	r15, [rbx + 0x18]
.label_347:
	mov	rax, qword ptr [rbx + 0x38]
	cmp	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	jne	.label_346
	lea	rdi, [rdi]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	_obstack_newchunk
.label_346:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	nop	
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], bpl
	mov	rsp, rsp
	test	ebp, ebp
	mov	rbp, rbp
	jne	.label_352
	mov	rdi, rbx
	call	save_token
.label_352:
	lea	rsi, [rsi]
	mov	rdi, r14
	call	fgetc
	lea	rdi, [rdi]
	mov	ebp, eax
	cmp	ebp, -1
	nop	
	jne	.label_347
.label_354:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	nop	
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_350
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_349
	lea	rdi, [rbx + 0x18]
	mov	rsp, rsp
	mov	esi, 1
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_349:
	mov	rax, qword ptr [rbx + 0x30]
	lea	rdi, [rdi]
	lea	rcx, [rax + 1]
	mov	rsp, rsp
	mov	qword ptr [rbx + 0x30], rcx
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	nop	
	call	save_token
.label_350:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0x90]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	mov	rsp, rsp
	ja	.label_353
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_353:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], 0
	mov	rcx, qword ptr [rbx + 0x88]
	mov	rbp, rbp
	add	rcx, 8
	nop	
	mov	qword ptr [rbx + 0x88], rcx
	nop	
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rcx, rax
	lea	rdi, [rdi]
	jne	.label_348
	or	byte ptr [rbx + 0xc0], 2
.label_348:
	mov	rdx, qword ptr [rbx + 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbx + 0x88]
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rbp, rbp
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0x88], rdx
	mov	rsi, qword ptr [rbx + 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rdx, rsi
	mov	rdi, rcx
	mov	rbp, rbp
	sub	rdi, rsi
	cmp	rdx, rdi
	nop	
	jbe	.label_344
	lea	rsi, [rsi]
	mov	qword ptr [rbx + 0x88], rcx
.label_344:
	nop	
	mov	rcx, qword ptr [rbx + 0x88]
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xd8]
	cmp	qword ptr [rbx + 0xe0], rax
	mov	rbp, rbp
	jne	.label_351
	or	byte ptr [rbx + 0x118], 2
.label_351:
	nop	
	mov	rdx, qword ptr [rbx + 0xf8]
	mov	rcx, qword ptr [rbx + 0xe0]
	lea	rdi, [rdi]
	add	rcx, rdx
	lea	rsi, [rsi]
	not	rdx
	and	rdx, rcx
	mov	qword ptr [rbx + 0xe0], rdx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rdx, rsi
	mov	rdi, rcx
	lea	rsi, [rsi]
	sub	rdi, rsi
	mov	rbp, rbp
	cmp	rdx, rdi
	jbe	.label_345
	nop	
	mov	qword ptr [rbx + 0xe0], rcx
.label_345:
	nop	
	mov	rcx, qword ptr [rbx + 0xe0]
	mov	qword ptr [rbx + 0xd8], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	lea	rsi, [rsi]
	call	ferror
	mov	rsp, rsp
	test	eax, eax
	sete	al
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x406d80

	.globl save_token
	.type save_token, @function
save_token:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdi
	mov	r15, qword ptr [rbx + 0x28]
	mov	rsp, rsp
	mov	r14, qword ptr [rbx + 0x30]
	nop	
	cmp	r14, r15
	lea	rsi, [rsi]
	jne	.label_355
	or	byte ptr [rbx + 0x68], 2
.label_355:
	mov	rcx, qword ptr [rbx + 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x30]
	add	rax, rcx
	lea	rsi, [rsi]
	not	rcx
	and	rcx, rax
	mov	qword ptr [rbx + 0x30], rcx
	mov	rdx, qword ptr [rbx + 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x38]
	sub	rcx, rdx
	mov	rsi, rax
	lea	rsi, [rsi]
	sub	rsi, rdx
	lea	rdi, [rdi]
	cmp	rcx, rsi
	jbe	.label_356
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x30], rax
.label_356:
	lea	rdi, [rdi]
	dec	r14
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x90]
	nop	
	sub	rax, qword ptr [rbx + 0x88]
	cmp	rax, 7
	lea	rdi, [rdi]
	ja	.label_357
	nop	
	lea	rdi, [rbx + 0x70]
	nop	
	mov	esi, 8
	lea	rsi, [rsi]
	call	_obstack_newchunk
.label_357:
	mov	rax, qword ptr [rbx + 0x88]
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rsp, rsp
	sub	r14, r15
	mov	rbp, rbp
	mov	rax, qword ptr [rbx + 0xe8]
	sub	rax, qword ptr [rbx + 0xe0]
	cmp	rax, 7
	ja	.label_358
	mov	rbp, rbp
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	lea	rdi, [rdi]
	call	_obstack_newchunk
.label_358:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbx + 0xe0]
	lea	rsi, [rsi]
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	nop	
	pop	r15
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x406e90

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
.label_359:
	lea	rsi, [rsi]
	mov	edi, r15d
	mov	rsp, rsp
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_360
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	lea	rdi, [rdi]
	je	.label_359
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
	jb	.label_360
	lea	rsi, [rsi]
	cmp	eax, 0x16
	mov	rbx, rcx
	mov	r13, rbp
	mov	rsp, rsp
	je	.label_359
.label_360:
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
	#Procedure 0x406f70

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
	je	.label_368
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
	jmp	.label_370
.label_368:
	mov	edx, OFFSET FLAT:.str.1_2
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsp, rsp
	mov	rcx, rbx
	mov	r8, r9
	nop	
	call	__fprintf_chk
.label_370:
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
	ja	.label_366
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_362]]
.label_448:
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
.label_366:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_365
.label_449:
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
.label_450:
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
.label_451:
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
	jmp	.label_367
.label_452:
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
	jmp	.label_364
.label_453:
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
	jmp	.label_363
.label_454:
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
.label_363:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_364:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_367:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_361
.label_456:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_365:
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
	jmp	.label_369
.label_455:
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
.label_369:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_361:
	mov	rbp, rbp
	call	__fprintf_chk
.label_447:
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
	#Procedure 0x407360
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_371:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_371
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407390

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_375:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_372
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_374
	nop	word ptr cs:[rax + rax]
.label_372:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_374:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_373
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_375
.label_373:
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
	#Procedure 0x407420

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_376
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
.label_376:
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
	#Procedure 0x4074d0
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
	#Procedure 0x407560

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
	jb	.label_377
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_377:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_378
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_379
.label_378:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_379:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4075d0
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
	jb	.label_380
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_380:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407610

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_381
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_381
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_381:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_382
	test	rax, rax
	nop	
	je	.label_383
.label_382:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_383:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407660

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_384
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_385
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_386
.label_384:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_387
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_387:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_388
.label_386:
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
.label_385:
	call	xalloc_die
.label_388:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407700

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407710
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407720
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
	#Procedure 0x407760
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
	jb	.label_389
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_389
	pop	rcx
	ret	
.label_389:
	call	xalloc_die
	nop	
	.section	.text
	.align	16
	#Procedure 0x407790

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
	#Procedure 0x4077e0
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
	#Procedure 0x407800

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbx
	mov	ebx,  dword ptr [dword ptr [rip + exit_failure]]
	nop	
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.1_3
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
	#Procedure 0x407850

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_390
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_391
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
	je	.label_391
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
.label_390:
	mov	ecx, 1
.label_391:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x4078c0

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
	js	.label_392
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_393
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
	je	.label_392
.label_393:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_392
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_394
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_394:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_392:
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
	#Procedure 0x407980

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_395
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_395
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_395:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	16
	#Procedure 0x4079b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_396
	mov	rbp, rbp
	ret	
.label_396:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	16
	#Procedure 0x4079d0

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
	jne	.label_399
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_399
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_397
.label_399:
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
.label_397:
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
	je	.label_398
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_398:
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
	#Procedure 0x407a80

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
	je	.label_400
	nop	
	cmp	r15, -2
	jb	.label_400
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_400
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_400:
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
	#Procedure 0x407b10

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	nop	
	mov	qword ptr [rdi + 0x40], r8
	and	byte ptr [rdi + 0x50], 0xfe
	nop	
	call	_obstack_begin_worker
	mov	eax, 1
	mov	rsp, rsp
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl _obstack_begin_worker
	.type _obstack_begin_worker, @function
_obstack_begin_worker:
	mov	rbp, rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	rbx
	mov	rbp, rbp
	mov	r14, rdi
	nop	
	test	rdx, rdx
	mov	rbp, rbp
	mov	ebx, 0x10
	mov	rsp, rsp
	cmovne	rbx, rdx
	test	rsi, rsi
	nop	
	mov	eax, 0xfe0
	lea	rsi, [rsi]
	cmovne	rax, rsi
	mov	qword ptr [r14], rax
	lea	rsi, [rsi]
	lea	r15, [rbx - 1]
	mov	rsp, rsp
	mov	qword ptr [r14 + 0x30], r15
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	call_chunkfun
	mov	qword ptr [r14 + 8], rax
	nop	
	test	rax, rax
	je	.label_401
	lea	rcx, [rax + r15 + 0x10]
	lea	rsi, [rsi]
	neg	rbx
	and	rbx, rcx
	mov	qword ptr [r14 + 0x10], rbx
	nop	
	mov	qword ptr [r14 + 0x18], rbx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [r14]
	lea	rdi, [rdi]
	add	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rax], rcx
	mov	qword ptr [r14 + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	and	byte ptr [r14 + 0x50], 0xf9
	lea	rsi, [rsi]
	pop	rbx
	mov	rsp, rsp
	pop	r14
	mov	rsp, rsp
	pop	r15
	mov	rbp, rbp
	ret	
.label_401:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	.section	.text
	.align	16
	#Procedure 0x407bf0

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	rax
	mov	qword ptr [rdi + 0x38], rcx
	mov	qword ptr [rdi + 0x40], r8
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x48], r9
	or	byte ptr [rdi + 0x50], 1
	call	_obstack_begin_worker
	mov	eax, 1
	pop	rcx
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c10

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	lea	rsi, [rsi]
	push	r12
	push	rbx
	mov	rsp, rsp
	mov	r13, rdi
	mov	rcx, qword ptr [r13]
	mov	r14, qword ptr [r13 + 0x18]
	mov	rbp, rbp
	sub	r14, qword ptr [r13 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r13 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	nop	
	add	rbx, rdx
	lea	rsi, [rsi]
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_402
	lea	rsi, [rsi]
	test	al, al
	mov	rsp, rsp
	jne	.label_402
	mov	r15, qword ptr [r13 + 8]
	nop	
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, rbx
	call	call_chunkfun
	mov	rsp, rsp
	mov	r12, rax
	lea	rsi, [rsi]
	test	r12, r12
	je	.label_402
	mov	qword ptr [r13 + 8], r12
	mov	qword ptr [r12 + 8], r15
	mov	rsp, rsp
	add	rbx, r12
	mov	rsp, rsp
	mov	qword ptr [r13 + 0x20], rbx
	lea	rsi, [rsi]
	mov	qword ptr [r12], rbx
	mov	rsi, qword ptr [r13 + 0x10]
	mov	rbx, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	lea	rax, [r12 + rbx + 0x10]
	not	rbx
	mov	rsp, rsp
	and	rbx, rax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rdx, r14
	mov	rsp, rsp
	call	memcpy
	test	byte ptr [r13 + 0x50], 2
	lea	rdi, [rdi]
	jne	.label_403
	mov	rsp, rsp
	mov	rax, qword ptr [r13 + 0x30]
	mov	rsp, rsp
	lea	rcx, [r15 + rax + 0x10]
	lea	rdi, [rdi]
	not	rax
	and	rax, rcx
	cmp	qword ptr [r13 + 0x10], rax
	jne	.label_403
	mov	rax, qword ptr [r15 + 8]
	nop	
	mov	qword ptr [r12 + 8], rax
	mov	rdi, r13
	mov	rsi, r15
	lea	rsi, [rsi]
	call	call_freefun
.label_403:
	mov	rbp, rbp
	mov	qword ptr [r13 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r13 + 0x18], r14
	lea	rsi, [rsi]
	and	byte ptr [r13 + 0x50], 0xfd
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	ret	
.label_402:
	nop	
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407d50

	.globl call_chunkfun
	.type call_chunkfun, @function
call_chunkfun:
	nop	
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_404
	mov	rdi, rsi
	nop	
	jmp	qword ptr [rax + 0x38]
.label_404:
	mov	rcx, qword ptr [rax + 0x38]
	mov	rdi, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	jmp	rcx
	nop	
	.section	.text
	.align	16
	#Procedure 0x407d70

	.globl call_freefun
	.type call_freefun, @function
call_freefun:
	mov	rax, rdi
	test	byte ptr [rax + 0x50], 1
	jne	.label_405
	mov	rdi, rsi
	jmp	qword ptr [rax + 0x40]
.label_405:
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rax + 0x48]
	jmp	rcx
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407d90

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
	mov	rbp, rbp
	je	.label_407
	lea	rsi, [rsi]
	cmp	rcx, rsi
	jae	.label_409
	lea	rdi, [rdi]
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_409
	mov	rbp, rbp
	jmp	.label_408
.label_407:
	xor	eax, eax
.label_408:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407dd0

	.globl _obstack_free
	.type _obstack_free, @function
_obstack_free:
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	rbx
	mov	r14, rsi
	mov	r15, rdi
	nop	
	mov	rsi, qword ptr [r15 + 8]
	mov	rsp, rsp
	test	rsi, rsi
	je	.label_410
	nop	
.label_413:
	cmp	rsi, r14
	mov	rbp, rbp
	jae	.label_411
	cmp	qword ptr [rsi], r14
	jae	.label_412
.label_411:
	mov	rbx, qword ptr [rsi + 8]
	lea	rsi, [rsi]
	mov	rdi, r15
	mov	rsp, rsp
	call	call_freefun
	or	byte ptr [r15 + 0x50], 2
	nop	
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_413
.label_410:
	test	r14, r14
	je	.label_414
	call	abort
.label_412:
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x18], r14
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x10], r14
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rsp, rsp
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_414:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e60

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rbp, rbp
	mov	rcx, qword ptr [rdi + 8]
	nop	
	xor	eax, eax
	jmp	.label_415
	nop	dword ptr [rax]
.label_416:
	sub	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_415:
	mov	rbp, rbp
	test	rcx, rcx
	nop	
	jne	.label_416
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407e90

	.globl print_and_abort
	.type print_and_abort, @function
print_and_abort:
	nop
	push	rbx
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_3
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_2
	nop	
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x407ee0
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
	#Procedure 0x407f10
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
	#Procedure 0x407f30
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x407f40
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
	#Procedure 0x407f50
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
	#Procedure 0x407f70
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
	#Procedure 0x407f80
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
	#Procedure 0x407f90
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
	#Procedure 0x407fa0
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
	#Procedure 0x407fb0
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
	#Procedure 0x407fe0
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
	#Procedure 0x408000

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
	#Procedure 0x408010
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
	#Procedure 0x408030
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
	#Procedure 0x408040
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
	#Procedure 0x408050

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
	je	.label_427
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_426
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_426
.label_427:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_426
	test	cl, cl
	jne	.label_426
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_426:
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
	#Procedure 0x4080f0

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
	je	.label_429
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_428
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_430
.label_428:
	nop	
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_429
.label_430:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_429:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	16
	#Procedure 0x408140

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
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_431
	nop	
	mov	rax, rcx
.label_431:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	16
	#Procedure 0x408180

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
	nop	dword ptr [rax]
	.section	.text
	.align	16
	#Procedure 0x408250

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
	.section .text
	.align	16
	#Procedure 0x408260

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
