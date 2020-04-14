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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.31
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.7
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.45
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.7
	mov	ecx, OFFSET FLAT:.str.46
	xor	eax, eax
	call	__printf_chk
	mov	edi, ebp
	call	exit
.label_9:
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
	nop	
	.section	.text
	.align	32
	#Procedure 0x401da0

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
	mov	r14, rsi
	mov	ebp, edi
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_2
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
	xor	ebx, ebx
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
	jmp	.label_14
.label_43:
	mov	byte ptr [byte ptr [rip + print_linelength]],  1
	nop	dword ptr [rax]
.label_14:
	mov	edx, OFFSET FLAT:.str.12
	mov	ecx, OFFSET FLAT:longopts
	xor	r8d, r8d
	mov	edi, ebp
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x6b
	jle	.label_35
	cmp	eax, 0x76
	jg	.label_36
	cmp	eax, 0x6c
	je	.label_38
	cmp	eax, 0x6d
	jne	.label_39
	mov	byte ptr [byte ptr [rip + print_chars]],  1
	jmp	.label_14
	nop	dword ptr [rax + rax]
.label_35:
	cmp	eax, 0x4b
	jle	.label_42
	cmp	eax, 0x4c
	je	.label_43
	cmp	eax, 0x63
	jne	.label_39
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	jmp	.label_14
	nop	dword ptr [rax]
.label_36:
	cmp	eax, 0x77
	je	.label_48
	cmp	eax, 0x80
	jne	.label_39
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_14
.label_38:
	mov	byte ptr [byte ptr [rip + print_lines]],  1
	jmp	.label_14
.label_48:
	mov	byte ptr [byte ptr [rip + print_words]],  1
	jmp	.label_14
.label_42:
	cmp	eax, -1
	jne	.label_53
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	and	al, 1
	jne	.label_55
	mov	al,  byte ptr [byte ptr [rip + print_words]]
	and	al, 1
	jne	.label_55
	mov	al,  byte ptr [byte ptr [rip + print_chars]]
	and	al, 1
	jne	.label_55
	mov	al,  byte ptr [byte ptr [rip + print_bytes]]
	and	al, 1
	jne	.label_55
	mov	al,  byte ptr [byte ptr [rip + print_linelength]]
	and	al, 1
	jne	.label_55
	mov	byte ptr [byte ptr [rip + print_bytes]],  1
	mov	byte ptr [byte ptr [rip + print_words]],  1
	mov	byte ptr [byte ptr [rip + print_lines]],  1
.label_55:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	test	rbx, rbx
	je	.label_62
	cmp	eax, ebp
	jl	.label_63
	mov	rbp, rbx
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_65
	cmp	byte ptr [rbp + 1], 0
	je	.label_66
.label_65:
	mov	esi, OFFSET FLAT:.str.20
	mov	rdi, rbp
	call	fopen
	mov	rbx, rax
	test	rbx, rbx
	jne	.label_69
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.21
	mov	edx, 5
	call	dcgettext
	mov	rsi, rbp
	mov	rbp, rax
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rbp
	call	error
.label_62:
	sub	ebp, eax
	lea	rax, [r14 + rax*8]
	mov	r14d, OFFSET FLAT:main.stdin_only
	cmovg	r14, rax
	movsxd	rax, ebp
	mov	r13d, 1
	cmovg	r13, rax
	mov	rdi, r14
	call	argv_iter_init_argv
	xor	ecx, ecx
	mov	rbp, rbx
	jmp	.label_12
.label_66:
	mov	rbx,  qword ptr [word ptr [rip + stdin]]
.label_69:
	mov	rdi, rbx
	call	fileno
	lea	rdx, [rsp + 0x28]
	mov	edi, 1
	mov	esi, eax
	call	__fxstat
	test	eax, eax
	jne	.label_19
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x40]
	cmp	eax, 0x8000
	jne	.label_19
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
	jae	.label_58
.label_19:
	mov	rdi, rbx
	call	argv_iter_init_stream
	xor	ecx, ecx
	xor	r14d, r14d
	xor	r13d, r13d
.label_12:
	test	rax, rax
	je	.label_37
	mov	qword ptr [rsp + 8], rcx
	test	r13, r13
	mov	edx, 1
	cmovne	rdx, r13
	movabs	rcx, 0xd79435e50d7944
	cmp	rdx, rcx
	jae	.label_37
	mov	r12, rax
	imul	rdi, rdx, 0x98
	call	xmalloc
	mov	qword ptr [rsp + 0x10], rax
	test	r13, r13
	je	.label_61
	cmp	r13, 1
	jne	.label_46
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
	jne	.label_46
.label_61:
	mov	r15, rbp
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 1
	jmp	.label_57
.label_46:
	mov	r15, rbp
	mov	rax, qword ptr [rsp + 0x10]
	lea	rbp, [rax + 8]
	mov	rbx, r13
	nop	word ptr cs:[rax + rax]
.label_68:
	mov	rsi, qword ptr [r14]
	test	rsi, rsi
	je	.label_21
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	jne	.label_29
	cmp	byte ptr [rsi + 1], 0
	je	.label_21
.label_29:
	mov	edi, 1
	mov	rdx, rbp
	call	__xstat
	jmp	.label_64
	nop	word ptr cs:[rax + rax]
.label_21:
	mov	edi, 1
	xor	esi, esi
	mov	rdx, rbp
	call	__fxstat
.label_64:
	mov	dword ptr [rbp - 8], eax
	add	rbp, 0x98
	add	r14, 8
	dec	rbx
	jne	.label_68
.label_57:
	mov	edi, 1
	test	r13, r13
	je	.label_71
	mov	rax, qword ptr [rsp + 0x10]
	mov	ebp, dword ptr [rax]
	test	ebp, ebp
	jg	.label_71
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + 0x20]
	mov	esi, 1
	xor	ecx, ecx
	mov	edx, 0xf000
	mov	rdi, r13
	jmp	.label_74
	nop	dword ptr [rax]
.label_15:
	mov	ebp, dword ptr [rax + 0x78]
	add	rax, 0x98
.label_74:
	test	ebp, ebp
	jne	.label_11
	mov	ebp, dword ptr [rax]
	and	ebp, edx
	cmp	ebp, 0x8000
	jne	.label_76
	add	rcx, qword ptr [rax + 0x18]
	jmp	.label_11
.label_76:
	mov	esi, 7
	nop	word ptr cs:[rax + rax]
.label_11:
	dec	rdi
	jne	.label_15
	mov	edi, 1
	cmp	rcx, 9
	jbe	.label_16
	movabs	rbp, 0xcccccccccccccccd
	nop	word ptr [rax + rax]
.label_20:
	inc	edi
	mov	rax, rcx
	mul	rbp
	shr	rdx, 3
	cmp	rcx, 0x63
	mov	rcx, rdx
	ja	.label_20
.label_16:
	cmp	edi, esi
	cmovl	edi, esi
.label_71:
	mov	qword ptr [rsp + 0x18], r13
	mov	dword ptr [dword ptr [rip + number_width]],  edi
	lea	rsi, [rsp + 0x28]
	mov	rdi, r12
	call	argv_iter
	mov	rbx, rax
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	test	rbx, rbx
	mov	rbp, r15
	mov	r15, r12
	je	.label_30
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	xor	r13d, r13d
	jmp	.label_34
.label_28:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
	mov	edx, 5
	call	dcgettext
	mov	r14, r15
	mov	r15, rbp
	mov	rbp, rax
	mov	edi, 4
	mov	rsi, rbx
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	mov	rbp, r15
	mov	r15, r14
	call	error
	mov	al, 1
	jmp	.label_10
	nop	dword ptr [rax]
.label_34:
	test	rbp, rbp
	je	.label_44
	movzx	eax, byte ptr [rbp]
	cmp	eax, 0x2d
	jne	.label_45
	cmp	byte ptr [rbp + 1], 0
	je	.label_47
	xor	eax, eax
	jmp	.label_10
	nop	dword ptr [rax]
.label_44:
	xor	eax, eax
	jmp	.label_10
	nop	word ptr cs:[rax + rax]
.label_45:
	xor	eax, eax
.label_10:
	mov	cl, byte ptr [rbx]
.label_33:
	test	cl, cl
	je	.label_51
	mov	r12, rbp
	mov	r14, r15
	test	al, al
	je	.label_52
	xor	eax, eax
	jmp	.label_54
	nop	dword ptr [rax]
.label_51:
	test	rbp, rbp
	je	.label_56
	mov	rdi, r15
	mov	r14, r15
	call	argv_iter_n_args
	mov	r15, rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbp
	mov	r12, rbp
	call	quotearg_n_style_colon
	mov	rbp, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str.29
	xor	eax, eax
	mov	rcx, rbp
	mov	r8, r15
	mov	r9, rbx
	call	error
	jmp	.label_26
	nop	word ptr cs:[rax + rax]
.label_52:
	mov	rdx, qword ptr [rsp + 0x18]
	test	rdx, rdx
	mov	rax, r13
	cmove	rax, rdx
	imul	rbp, rax, 0x98
	add	rbp, qword ptr [rsp + 0x10]
	movzx	eax, cl
	cmp	eax, 0x2d
	jne	.label_72
	cmp	byte ptr [rbx + 1], 0
	je	.label_73
.label_72:
	xor	esi, esi
	xor	eax, eax
	mov	rdi, rbx
	call	open
	mov	r15d, eax
	cmp	r15d, -1
	je	.label_75
	xor	ecx, ecx
	mov	edi, r15d
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	mov	edi, r15d
	call	close
	test	eax, eax
	je	.label_18
.label_75:
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, rbx
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, r15d
	call	error
	jmp	.label_18
.label_56:
	mov	r14, r15
	mov	r12, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.28
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	call	error
	jmp	.label_26
.label_47:
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x2d
	jne	.label_27
	cmp	byte ptr [rbx + 1], 0
	je	.label_28
	xor	eax, eax
	jmp	.label_10
.label_27:
	xor	eax, eax
	jmp	.label_33
.label_73:
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	mov	rcx, -1
	mov	rsi, rbx
	mov	rdx, rbp
	call	wc
	mov	bpl, al
	nop	word ptr cs:[rax + rax]
.label_18:
	mov	rax, qword ptr [rsp + 0x20]
	and	al, bpl
.label_54:
	mov	qword ptr [rsp + 0x20], rax
.label_26:
	cmp	qword ptr [rsp + 0x18], 0
	jne	.label_41
	mov	rax, qword ptr [rsp + 0x10]
	mov	dword ptr [rax], 1
.label_41:
	inc	r13
	mov	r15, r14
	mov	rdi, r15
	lea	rsi, [rsp + 0x28]
	call	argv_iter
	mov	rbx, rax
	test	rbx, rbx
	mov	rbp, r12
	jne	.label_34
.label_30:
	mov	eax, dword ptr [rsp + 0x28]
	cmp	eax, 2
	je	.label_49
	mov	r14, r15
	mov	r12, rbp
	cmp	eax, 4
	jne	.label_50
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r12
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	call	error
	mov	r15, r14
	jmp	.label_59
.label_49:
	test	rbp, rbp
	jne	.label_60
	mov	rbx, qword ptr [rsp + 0x20]
	test	bl, bl
	je	.label_59
	mov	rdi, r15
	call	argv_iter_n_args
	test	rax, rax
	jne	.label_59
	mov	byte ptr [byte ptr [rip + have_read_stdin]],  1
	xor	edi, edi
	xor	esi, esi
	mov	rcx, -1
	mov	rdx, qword ptr [rsp + 0x10]
	call	wc
	and	al, bl
	mov	bl, al
.label_59:
	mov	rax, qword ptr [rsp + 8]
.label_22:
	test	al, al
	je	.label_67
	lea	rdi, [rsp + 0xb8]
	call	readtokens0_free
.label_67:
	mov	rdi, r15
	call	argv_iter_n_args
	cmp	rax, 2
	jb	.label_70
	mov	r14,  qword ptr [word ptr [rip + total_lines]]
	mov	rbp,  qword ptr [word ptr [rip + total_words]]
	mov	qword ptr [rsp + 0x20], r15
	mov	r15,  qword ptr [word ptr [rip + total_chars]]
	mov	r12,  qword ptr [word ptr [rip + total_bytes]]
	mov	r13,  qword ptr [word ptr [rip + max_line_length]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.30
	mov	edx, 5
	call	dcgettext
	mov	rdi, r14
	mov	rsi, rbp
	mov	rdx, r15
	mov	r15, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r8, r13
	mov	r9, rax
	call	write_counts
.label_70:
	mov	rdi, r15
	call	argv_iter_free
	mov	rdi, qword ptr [rsp + 0x10]
	call	free
	movzx	eax,  byte ptr [byte ptr [rip + have_read_stdin]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_13
	xor	edi, edi
	call	close
	test	eax, eax
	jne	.label_17
.label_13:
	not	bl
	and	bl, 1
	movzx	eax, bl
	add	rsp, 0x1d8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_60:
	mov	rax, qword ptr [rsp + 8]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_22
.label_58:
	mov	r15, rbp
	lea	rbp, [rsp + 0xb8]
	mov	rdi, rbp
	call	readtokens0_init
	mov	rdi, rbx
	mov	rsi, rbp
	call	readtokens0
	test	al, al
	je	.label_31
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_31
	mov	r13, qword ptr [rsp + 0xb8]
	mov	r14, qword ptr [rsp + 0xc0]
	mov	rdi, r14
	call	argv_iter_init_argv
	mov	cl, 1
	mov	rbp, r15
	jmp	.label_12
.label_53:
	cmp	eax, 0xffffff7d
	je	.label_40
	cmp	eax, 0xffffff7e
	jne	.label_39
	xor	edi, edi
	call	usage
.label_40:
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
.label_39:
	mov	edi, 1
	call	usage
.label_37:
	call	xalloc_die
.label_50:
	cmp	eax, 3
	jne	.label_32
	call	xalloc_die
.label_63:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rsi, qword ptr [r14 + rax*8]
	mov	edi, 4
	call	quotearg_style
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi, 1
	call	usage
.label_17:
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.19
	xor	eax, eax
	call	error
.label_32:
	mov	edi, OFFSET FLAT:.str.24
	mov	esi, OFFSET FLAT:.str.25
	mov	edx, 0x33f
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.main
	call	__assert_fail
.label_31:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.22
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	edi, 4
	mov	rsi, r15
	call	quotearg_style
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402800

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
	mov	ebx, OFFSET FLAT:label_77
	movzx	eax,  byte ptr [byte ptr [rip + print_lines]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_78
	mov	ebx,  dword ptr [dword ptr [rip + number_width]]
	lea	rsi, [rsp + 0x10]
	call	umaxtostr
	mov	rcx, rax
	mov	edi, 1
	mov	esi, OFFSET FLAT:label_77
	xor	eax, eax
	mov	edx, ebx
	call	__printf_chk
	mov	ebx, OFFSET FLAT:write_counts.format_sp_int
.label_78:
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
	jne	.label_79
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
.label_79:
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_85
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
.label_85:
	test	r15, r15
	je	.label_81
	mov	esi, 0xa
	mov	rdi, r15
	call	strchr
	test	rax, rax
	je	.label_84
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	r15, rax
.label_84:
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str.56
	xor	eax, eax
	mov	rdx, r15
	call	__printf_chk
.label_81:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rax, qword ptr [rdi + 0x28]
	cmp	rax, qword ptr [rdi + 0x30]
	jae	.label_80
	lea	rcx, [rax + 1]
	mov	qword ptr [rdi + 0x28], rcx
	mov	byte ptr [rax], 0xa
.label_86:
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_80:
	mov	esi, 0xa
	call	__overflow
	jmp	.label_86
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4029c0

	.globl wc
	.type wc, @function
wc:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x4078
	mov	r14, rcx
	mov	r12, rdx
	mov	rbp, rsi
	mov	dword ptr [rsp + 0x2c], edi
	test	rbp, rbp
	mov	rax, rbp
	jne	.label_137
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.55
	mov	edx, 5
	call	dcgettext
.label_137:
	mov	qword ptr [rsp + 8], rax
	call	__ctype_get_mb_cur_max
	mov	cl,  byte ptr [byte ptr [rip + print_bytes]]
	and	cl, 1
	cmp	rax, 2
	jb	.label_88
	mov	r13b,  byte ptr [byte ptr [rip + print_chars]]
	and	r13b, 1
	jmp	.label_92
.label_88:
	or	cl,  byte ptr [byte ptr [rip + print_chars]]
	and	cl, 1
	xor	r13d, r13d
.label_92:
	mov	bl,  byte ptr [byte ptr [rip + print_linelength]]
	or	bl,  byte ptr [byte ptr [rip + print_words]]
	test	cl, cl
	sete	al
	test	r13b, r13b
	setne	r15b
	or	r15b, al
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
	and	al, 1
	jne	.label_103
	test	bl, 1
	jne	.label_103
	test	r15b, r15b
	jne	.label_103
	xor	eax, eax
	jmp	.label_117
.label_103:
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x2c]
	call	fdadvise
	mov	al,  byte ptr [byte ptr [rip + print_lines]]
.label_117:
	or	al, bl
	or	al, r15b
	test	al, 1
	je	.label_126
	test	r13b, r13b
	setne	al
	or	bl, al
	test	bl, 1
	je	.label_131
	call	__ctype_get_mb_cur_max
	cmp	rax, 2
	jb	.label_135
	mov	dword ptr [rsp + 4], r13d
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 0x68], 0
	mov	eax, 0
	mov	qword ptr [rsp + 0x30], rax
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
	mov	qword ptr [rsp + 0x50], rax
	xor	r12d, r12d
.label_111:
	xor	ebx, ebx
	jmp	.label_119
	nop	word ptr cs:[rax + rax]
.label_127:
	lea	rsi, [r15 + 1]
	cmp	r13, 0x4000
	sete	al
	movzx	eax, al
	cmovne	rsi, r15
	sub	r13, rax
	lea	rdi, [rsp + 0x70]
	mov	rdx, r13
	call	memmove
	mov	rbx, r13
	nop	dword ptr [rax + rax]
.label_119:
	lea	rsi, [rsp + rbx + 0x70]
	mov	edx, 0x4000
	sub	rdx, rbx
	mov	edi, dword ptr [rsp + 0x2c]
	call	safe_read
	cmp	rax, -1
	je	.label_110
	mov	bpl, 1
	test	rax, rax
	je	.label_115
	add	qword ptr [rsp + 0x18], rax
	add	rbx, rax
	mov	r13, rbx
	lea	r15, [rsp + 0x70]
	jmp	.label_118
.label_100:
	mov	r14b, 1
	jmp	.label_124
	nop	word ptr cs:[rax + rax]
.label_118:
	test	r12b, 1
	jne	.label_130
	movzx	eax, byte ptr [r15]
	mov	rcx, rax
	shr	rcx, 5
	mov	ecx,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	bt	ecx, eax
	jae	.label_130
	movsx	edi, al
	mov	dword ptr [rsp + 0x64], edi
	xor	eax, eax
	mov	ebx, 1
	jmp	.label_138
	nop	dword ptr [rax]
.label_130:
	mov	rbp, qword ptr [rsp + 0x68]
	lea	rdi, [rsp + 0x64]
	mov	rsi, r15
	mov	rdx, r13
	lea	rcx, [rsp + 0x68]
	call	rpl_mbrtowc
	mov	rbx, rax
	cmp	rbx, -1
	je	.label_139
	cmp	rbx, -2
	je	.label_98
	lea	rdi, [rsp + 0x68]
	call	mbsinit
	test	eax, eax
	sete	r12b
	test	rbx, rbx
	je	.label_149
	mov	al, 1
	mov	edi, dword ptr [rsp + 0x64]
.label_138:
	lea	ecx, [rdi - 9]
	cmp	ecx, 4
	ja	.label_142
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_122]]
.label_513:
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, rax
	and	eax, 7
	neg	rax
	lea	rcx, [rcx + rax + 8]
	mov	qword ptr [rsp + 0x50], rcx
	jmp	.label_97
	nop	word ptr cs:[rax + rax]
.label_139:
	inc	r15
	dec	r13
	mov	r12b, 1
	jmp	.label_104
.label_142:
	cmp	edi, 0x20
	jne	.label_109
	inc	qword ptr [rsp + 0x50]
	jmp	.label_97
.label_149:
	mov	dword ptr [rsp + 0x64], 0
	xor	edi, edi
	mov	ebx, 1
	jmp	.label_140
.label_514:
	inc	qword ptr [rsp + 0x20]
.label_515:
	mov	rax, qword ptr [rsp + 0x30]
	mov	rcx, qword ptr [rsp + 0x50]
	cmp	rcx, rax
	cmova	rax, rcx
	mov	qword ptr [rsp + 0x30], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	jmp	.label_97
.label_109:
	test	al, al
	je	.label_90
.label_140:
	call	iswprint
	test	eax, eax
	je	.label_124
	movzx	eax,  byte ptr [byte ptr [rip + print_linelength]]
	and	eax, 1
	cmp	eax, 1
	jne	.label_155
	mov	edi, dword ptr [rsp + 0x64]
	call	wcwidth
	test	eax, eax
	mov	ecx, 0
	cmovs	eax, ecx
	cdqe	
	add	qword ptr [rsp + 0x50], rax
.label_155:
	mov	edi, dword ptr [rsp + 0x64]
	call	iswspace
	test	eax, eax
	jne	.label_97
	cmp	byte ptr [byte ptr [rip + posixly_correct]],  0
	jne	.label_100
	mov	eax, dword ptr [rsp + 0x64]
	cmp	eax, 0x202e
	jg	.label_145
	cmp	eax, 0xa0
	je	.label_97
	cmp	eax, 0x2007
	je	.label_97
	jmp	.label_100
.label_90:
	movzx	ebp, byte ptr [r15]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	je	.label_124
	inc	qword ptr [rsp + 0x50]
	test	ah, 0x20
	jne	.label_97
	jmp	.label_100
.label_145:
	cmp	eax, 0x202f
	je	.label_97
	cmp	eax, 0x2060
	jne	.label_100
	nop	dword ptr [rax]
.label_97:
	and	r14b, 1
	movzx	eax, r14b
	add	qword ptr [rsp + 0x38], rax
	xor	r14d, r14d
.label_124:
	add	r15, rbx
	sub	r13, rbx
	inc	qword ptr [rsp + 0x40]
.label_104:
	test	r13, r13
	jne	.label_118
	jmp	.label_111
	nop	dword ptr [rax]
.label_98:
	mov	qword ptr [rsp + 0x68], rbp
	mov	r12b, 1
	test	r13, r13
	mov	ebx, 0
	je	.label_119
	jmp	.label_127
.label_126:
	mov	eax, dword ptr [r12]
	test	eax, eax
	jle	.label_146
	lea	rdx, [r12 + 8]
	mov	edi, 1
	mov	esi, dword ptr [rsp + 0x2c]
	call	__fxstat
	mov	dword ptr [r12], eax
.label_146:
	xor	r15d, r15d
	test	eax, eax
	jne	.label_121
	mov	eax, 0x2000
	or	eax, dword ptr [r12 + 0x20]
	xor	r15d, r15d
	and	eax, 0xf000
	cmp	eax, 0xa000
	jne	.label_121
	mov	rbx, qword ptr [r12 + 0x38]
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_121
	test	r14, r14
	jns	.label_143
	xor	esi, esi
	mov	edx, 1
	mov	edi, dword ptr [rsp + 0x2c]
	call	lseek
	mov	r14, rax
.label_143:
	xor	edx, edx
	mov	rax, rbx
	div	qword ptr [word ptr [rip + page_size]]
	test	rdx, rdx
	je	.label_151
	mov	r9, rbp
	xor	r12d, r12d
	sub	rbx, r14
	cmovb	rbx, r12
	mov	bpl, 1
	mov	r15, rbx
	xor	r14d, r14d
	mov	eax, r13d
	xor	r13d, r13d
	xor	ebx, ebx
	jmp	.label_87
.label_131:
	mov	dword ptr [rsp + 4], r13d
	mov	qword ptr [rsp + 0x10], rbp
	xor	r12d, r12d
	xor	r14d, r14d
	xor	r15d, r15d
	jmp	.label_101
	nop	dword ptr [rax + rax]
.label_112:
	add	r12, r13
	mov	rcx, rbx
	sub	rcx, r14
	mov	rax, r13
	movabs	rdx, 0x8888888888888889
	mul	rdx
	shr	rdx, 3
	cmp	rcx, rdx
	setbe	r15b
	mov	r14, rbx
.label_101:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x2c]
	lea	rsi, [rsp + 0x70]
	call	safe_read
	mov	r13, rax
	mov	bpl, 1
	test	r13, r13
	je	.label_128
	cmp	r13, -1
	je	.label_132
	lea	rbp, [rsp + r13 + 0x70]
	test	r15b, r15b
	je	.label_134
	mov	esi, 0xa
	lea	rdi, [rsp + 0x70]
	mov	rdx, r13
	call	memchr
	test	rax, rax
	mov	rbx, r14
	je	.label_112
	nop	word ptr [rax + rax]
.label_144:
	inc	rax
	inc	rbx
	mov	rdx, rbp
	sub	rdx, rax
	mov	esi, 0xa
	mov	rdi, rax
	call	memchr
	test	rax, rax
	jne	.label_144
	jmp	.label_112
	nop	word ptr cs:[rax + rax]
.label_134:
	cmp	r13, 3
	lea	rcx, [rsp + 0x70]
	mov	rbx, r14
	jbe	.label_91
	mov	rax, r13
	and	rax, 0xfffffffffffffffc
	lea	rcx, [rsp + 0x70]
	mov	rbx, r14
	je	.label_91
	movq	xmm2, r14
	pxor	xmm0, xmm0
	lea	rcx, [r13 - 4]
	mov	rdx, rcx
	shr	rdx, 2
	bt	rcx, 2
	jb	.label_96
	movd	xmm1, dword ptr [rsp + 0x70]
	pxor	xmm5, xmm5
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	movzx	ecx, word ptr [rsp + 0x72]
	movd	xmm0, ecx
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_105]]
	pcmpeqd	xmm1, xmm6
	pshufd	xmm3, xmm1, 0xb1
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_106]]
	pand	xmm1, xmm7
	pand	xmm1, xmm3
	pcmpeqd	xmm0, xmm6
	pshufd	xmm3, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm3
	paddq	xmm1, xmm2
	mov	ecx, 4
	movdqa	xmm2, xmm1
	jmp	.label_107
.label_96:
	xor	ecx, ecx
	pxor	xmm5, xmm5
	movdqa	xmm6,  xmmword ptr [word ptr [rip + label_105]]
	movdqa	xmm7,  xmmword ptr [word ptr [rip + label_106]]
.label_107:
	test	rdx, rdx
	je	.label_108
	mov	rdx, rax
	sub	rdx, rcx
	lea	rsi, [rsp + 0x76]
	add	rcx, rsi
	movdqa	xmm1, xmm2
	nop	
.label_148:
	movd	xmm2, dword ptr [rcx - 6]
	punpcklbw	xmm2, xmm5
	punpcklwd	xmm2, xmm5
	punpckldq	xmm2, xmm5
	movzx	esi, word ptr [rcx - 4]
	movd	xmm3, esi
	punpcklbw	xmm3, xmm5
	punpcklwd	xmm3, xmm5
	punpckldq	xmm3, xmm5
	pcmpeqd	xmm2, xmm6
	pshufd	xmm4, xmm2, 0xb1
	pand	xmm2, xmm7
	pand	xmm2, xmm4
	pcmpeqd	xmm3, xmm6
	pshufd	xmm4, xmm3, 0xb1
	pand	xmm3, xmm7
	pand	xmm3, xmm4
	paddq	xmm2, xmm1
	paddq	xmm3, xmm0
	movd	xmm1, dword ptr [rcx - 2]
	punpcklbw	xmm1, xmm5
	punpcklwd	xmm1, xmm5
	punpckldq	xmm1, xmm5
	movzx	esi, word ptr [rcx]
	movd	xmm0, esi
	punpcklbw	xmm0, xmm5
	punpcklwd	xmm0, xmm5
	punpckldq	xmm0, xmm5
	pcmpeqd	xmm1, xmm6
	pshufd	xmm4, xmm1, 0xb1
	pand	xmm1, xmm7
	pand	xmm1, xmm4
	pcmpeqd	xmm0, xmm6
	pshufd	xmm4, xmm0, 0xb1
	pand	xmm0, xmm7
	pand	xmm0, xmm4
	paddq	xmm1, xmm2
	paddq	xmm0, xmm3
	add	rcx, 8
	add	rdx, -8
	jne	.label_148
.label_108:
	paddq	xmm0, xmm1
	pshufd	xmm1, xmm0, 0x4e
	paddq	xmm1, xmm0
	movq	rbx, xmm1
	cmp	r13, rax
	je	.label_112
	lea	rcx, [rsp + rax + 0x70]
	nop	dword ptr [rax + rax]
.label_91:
	movzx	eax, byte ptr [rcx]
	inc	rcx
	cmp	eax, 0xa
	sete	al
	movzx	eax, al
	add	rbx, rax
	cmp	rbp, rcx
	jne	.label_91
	jmp	.label_112
.label_135:
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	mov	dword ptr [rsp + 4], r13d
	mov	qword ptr [rsp + 0x10], rbp
	lea	r14, [rsp + 0x70]
	mov	r15d, 0
	xor	r12d, r12d
	xor	eax, eax
	mov	qword ptr [rsp + 0x20], rax
	xor	ebx, ebx
	xor	r13d, r13d
	jmp	.label_123
	nop	dword ptr [rax]
.label_136:
	mov	qword ptr [rsp + 0x50], rdx
	mov	r15, qword ptr [rsp + 0x18]
	add	r15, qword ptr [rsp + 0x40]
	lea	r14, [rsp + 0x70]
.label_123:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, r14
	call	safe_read
	cmp	rax, -1
	je	.label_94
	mov	bpl, 1
	test	rax, rax
	je	.label_99
	mov	qword ptr [rsp + 0x18], r15
	mov	r15, rax
	mov	qword ptr [rsp + 0x40], rax
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_102
.label_153:
	mov	qword ptr [rsp + 0x50], rdx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	movzx	eax, word ptr [rax + rbp*2]
	test	ah, 0x40
	jne	.label_113
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_116
.label_113:
	inc	r13
	test	ah, 0x20
	jne	.label_114
	mov	edi, ebp
	call	btowc
	cmp	byte ptr [byte ptr [rip + posixly_correct]],  0
	je	.label_125
	mov	bl, 1
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_116
.label_114:
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_89
.label_125:
	cmp	eax, 0x202e
	jg	.label_120
	cmp	eax, 0xa0
	je	.label_133
	cmp	eax, 0x2007
	jmp	.label_95
.label_120:
	cmp	eax, 0x202f
	je	.label_150
	cmp	eax, 0x2060
.label_95:
	mov	rdx, qword ptr [rsp + 0x50]
	je	.label_89
	mov	bl, 1
	jmp	.label_116
.label_133:
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_89
.label_150:
	mov	rdx, qword ptr [rsp + 0x50]
	jmp	.label_89
	nop	word ptr [rax + rax]
.label_102:
	movsx	eax, byte ptr [r14]
	movzx	ebp, al
	lea	ecx, [rax - 9]
	cmp	ecx, 4
	ja	.label_141
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_147]]
.label_549:
	mov	eax, r13d
	and	eax, 7
	neg	rax
	lea	r13, [r13 + rax + 8]
	jmp	.label_89
	nop	word ptr cs:[rax + rax]
.label_141:
	cmp	eax, 0x20
	jne	.label_153
	inc	r13
	jmp	.label_89
.label_550:
	inc	qword ptr [rsp + 0x20]
.label_551:
	cmp	r13, rdx
	cmova	rdx, r13
	xor	r13d, r13d
.label_89:
	and	bl, 1
	movzx	eax, bl
	add	r12, rax
	xor	ebx, ebx
.label_116:
	inc	r14
	dec	r15
	jne	.label_102
	jmp	.label_136
.label_128:
	xor	r13d, r13d
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 4]
	mov	r15, r12
	mov	rbx, r14
	xor	r14d, r14d
	xor	r12d, r12d
	jmp	.label_87
.label_132:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r13d, r13d
	xor	ebp, ebp
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 4]
	mov	r15, r12
	xor	r12d, r12d
	mov	rbx, r14
	xor	r14d, r14d
	jmp	.label_87
.label_110:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_115:
	mov	r12, qword ptr [rsp + 0x30]
	mov	rax, qword ptr [rsp + 0x50]
	cmp	rax, r12
	cmova	r12, rax
	and	r14b, 1
	movzx	r13d, r14b
	add	r13, qword ptr [rsp + 0x38]
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 4]
	mov	r15, qword ptr [rsp + 0x18]
	mov	rbx, qword ptr [rsp + 0x20]
	mov	r14, qword ptr [rsp + 0x40]
	jmp	.label_87
.label_94:
	call	__errno_location
	mov	r14d, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, r14d
	call	error
.label_99:
	mov	rax, qword ptr [rsp + 0x50]
	cmp	r13, rax
	cmova	rax, r13
	and	bl, 1
	movzx	r13d, bl
	add	r13, r12
	xor	r14d, r14d
	mov	r12, rax
	mov	r9, qword ptr [rsp + 0x10]
	mov	eax, dword ptr [rsp + 4]
	mov	rbx, qword ptr [rsp + 0x20]
	jmp	.label_87
.label_151:
	mov	rax, qword ptr [r12 + 0x40]
	lea	rcx, [rax + 1]
	movabs	rdx, 0x2000000000000001
	cmp	rax, rdx
	mov	edx, 0x201
	cmovae	rcx, rdx
	test	rax, rax
	cmovle	rcx, rdx
	xor	edx, edx
	mov	rax, rbx
	div	rcx
	xor	r15d, r15d
	test	r14, r14
	js	.label_121
	sub	rbx, rdx
	mov	r12, rbx
	sub	r12, r14
	jle	.label_121
	mov	edx, 1
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, rbx
	call	lseek
	xor	r15d, r15d
	test	rax, rax
	cmovns	r15, r12
.label_121:
	mov	qword ptr [rsp + 0x10], rbp
	xor	r12d, r12d
	xor	esi, esi
	xor	edx, edx
	mov	ecx, 2
	mov	edi, dword ptr [rsp + 0x2c]
	call	fdadvise
	lea	rbx, [rsp + 0x70]
	jmp	.label_93
	nop	
.label_154:
	add	r15, rax
.label_93:
	mov	edx, 0x4000
	mov	edi, dword ptr [rsp + 0x2c]
	mov	rsi, rbx
	call	safe_read
	mov	bpl, 1
	test	rax, rax
	je	.label_152
	cmp	rax, -1
	jne	.label_154
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, 3
	mov	rdx, qword ptr [rsp + 8]
	call	quotearg_n_style_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebx
	call	error
	xor	r14d, r14d
	mov	eax, r13d
	xor	r13d, r13d
	xor	ebx, ebx
	xor	ebp, ebp
	mov	r9, qword ptr [rsp + 0x10]
	jmp	.label_87
.label_152:
	xor	r14d, r14d
	mov	eax, r13d
	xor	r13d, r13d
	xor	ebx, ebx
	mov	r9, qword ptr [rsp + 0x10]
.label_87:
	movzx	eax, al
	movzx	ecx,  byte ptr [byte ptr [rip + print_chars]]
	and	ecx, 1
	cmp	eax, ecx
	cmovb	r14, r15
	mov	rdi, rbx
	mov	rsi, r13
	mov	rdx, r14
	mov	rcx, r15
	mov	r8, r12
	call	write_counts
	add	qword ptr [word ptr [rip + total_lines]],  rbx
	add	qword ptr [word ptr [rip + total_words]],  r13
	add	qword ptr [word ptr [rip + total_chars]],  r14
	add	qword ptr [word ptr [rip + total_bytes]],  r15
	cmp	r12,  qword ptr [word ptr [rip + max_line_length]]
	jbe	.label_129
	mov	qword ptr [word ptr [rip + max_line_length]],  r12
.label_129:
	mov	al, bpl
	add	rsp, 0x4078
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
	#Procedure 0x4034c0

	.globl argv_iter_init_argv
	.type argv_iter_init_argv, @function
argv_iter_init_argv:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_156
	mov	qword ptr [rax], 0
	mov	qword ptr [rax + 0x20], rbx
	mov	qword ptr [rax + 0x28], rbx
	mov	rcx, rax
.label_156:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl argv_iter_init_stream
	.type argv_iter_init_stream, @function
argv_iter_init_stream:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x30
	call	malloc
	xor	ecx, ecx
	test	rax, rax
	je	.label_157
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 0x18], xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rcx, rax
.label_157:
	mov	rax, rcx
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403520

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
	je	.label_158
	lea	rdi, [rbx + 0x10]
	lea	rsi, [rbx + 0x18]
	xor	edx, edx
	call	getdelim
	test	rax, rax
	js	.label_159
	mov	dword ptr [r14], 1
	inc	qword ptr [rbx + 8]
	mov	rax, qword ptr [rbx + 0x10]
	jmp	.label_160
.label_158:
	mov	rax, qword ptr [rbx + 0x28]
	cmp	qword ptr [rax], 0
	je	.label_161
	mov	dword ptr [r14], 1
	mov	rax, qword ptr [rbx + 0x28]
	lea	rcx, [rax + 8]
	mov	qword ptr [rbx + 0x28], rcx
	mov	rax, qword ptr [rax]
	jmp	.label_160
.label_159:
	mov	rdi, qword ptr [rbx]
	call	feof
	test	eax, eax
	sete	al
	movzx	eax, al
	lea	eax, [rax + rax + 2]
	mov	dword ptr [r14], eax
	xor	eax, eax
	jmp	.label_160
.label_161:
	mov	dword ptr [r14], 2
	xor	eax, eax
.label_160:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035b0

	.globl argv_iter_n_args
	.type argv_iter_n_args, @function
argv_iter_n_args:
	cmp	qword ptr [rdi], 0
	je	.label_162
	mov	rax, qword ptr [rdi + 8]
	ret	
.label_162:
	mov	rax, qword ptr [rdi + 0x28]
	sub	rax, qword ptr [rdi + 0x20]
	sar	rax, 3
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035d0

	.globl argv_iter_free
	.type argv_iter_free, @function
argv_iter_free:
	push	rbx
	mov	rbx, rdi
	cmp	qword ptr [rbx], 0
	je	.label_163
	mov	rdi, qword ptr [rbx + 0x10]
	call	free
.label_163:
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035f0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403600
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403610

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	rbx
	push	rax
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_167
	mov	bl,  byte ptr [byte ptr [rip + ignore_EPIPE]]
	call	__errno_location
	mov	rbp, rax
	cmp	bl, 0
	je	.label_166
	cmp	dword ptr [rbp], 0x20
	jne	.label_166
.label_167:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_165
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_166:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi,  qword ptr [word ptr [rip + file_name]]
	test	rdi, rdi
	mov	ebp, dword ptr [rbp]
	jne	.label_164
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_165:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_164:
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str.1_0
	xor	eax, eax
	mov	esi, ebp
	mov	r8, rbx
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036d0

	.globl fdadvise
	.type fdadvise, @function
fdadvise:
	jmp	posix_fadvise
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4036e0
	.globl fadvise
	.type fadvise, @function
fadvise:

	push	rbx
	mov	ebx, esi
	test	rdi, rdi
	je	.label_168
	call	fileno
	xor	esi, esi
	xor	edx, edx
	mov	edi, eax
	mov	ecx, ebx
	pop	rbx
	jmp	posix_fadvise
.label_168:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403700

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_169:
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
	ja	.label_169
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403750
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbx
	mov	ebx, edi
	call	wcwidth
	test	eax, eax
	jns	.label_170
	mov	edi, ebx
	call	iswcntrl
	test	eax, eax
	sete	al
	movzx	eax, al
.label_170:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403770
	.globl mb_copy
	.type mb_copy, @function
mb_copy:

	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rsi, qword ptr [rbx]
	lea	rax, [rbx + 0x18]
	cmp	rsi, rax
	jne	.label_171
	lea	r15, [r14 + 0x18]
	mov	rdx, qword ptr [rbx + 8]
	mov	rdi, r15
	call	memcpy
	mov	rsi, r15
.label_171:
	mov	qword ptr [r14], rsi
	mov	rax, qword ptr [rbx + 8]
	mov	qword ptr [r14 + 8], rax
	mov	rax, qword ptr [rbx + 0x10]
	test	al, al
	mov	byte ptr [r14 + 0x10], al
	je	.label_172
	shr	rax, 0x20
	mov	dword ptr [r14 + 0x14], eax
.label_172:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4037c0
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
	.align	32
	#Procedure 0x4037e0
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
	js	.label_177
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_174
.label_177:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_178
	movsd	xmm0,  qword ptr [word ptr [rip + label_173]]
	jmp	.label_174
.label_178:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_175]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_176]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	mulsd	xmm0, xmm1
.label_174:
	add	rsp, 0x70
	pop	rbx
	ret	
	.section	.text
	.align	32
	#Procedure 0x403860

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
	js	.label_186
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	mulsd	xmm0, xmm1
	jmp	.label_183
.label_186:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_179
	mov	edi, 0x55
	call	sysconf
	mov	rbx, rax
	mov	edi, 0x1e
	call	sysconf
	mov	rcx, rax
	or	rcx, rbx
	js	.label_185
	cvtsi2sd	xmm1, rax
	cvtsi2sd	xmm0, rbx
	jmp	.label_180
.label_179:
	movq	xmm0, qword ptr [rsp + 0x28]
	movdqa	xmm1,  xmmword ptr [word ptr [rip + label_175]]
	punpckldq	xmm0, xmm1
	movapd	xmm2,  xmmword ptr [word ptr [rip + label_176]]
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
	jmp	.label_183
.label_185:
	lea	rdi, [rsp]
	call	sysinfo
	test	eax, eax
	je	.label_182
	movsd	xmm0,  qword ptr [word ptr [rip + label_173]]
	jmp	.label_184
.label_182:
	movq	xmm0, qword ptr [rsp + 0x20]
	punpckldq	xmm0,  xmmword ptr [word ptr [rip + label_175]]
	subpd	xmm0,  xmmword ptr [word ptr [rip + label_176]]
	pshufd	xmm1, xmm0, 0x4e
	addpd	xmm1, xmm0
	mov	eax, dword ptr [rsp + 0x68]
	xorps	xmm0, xmm0
	cvtsi2sd	xmm0, rax
.label_180:
	mulsd	xmm0, xmm1
.label_184:
	mulsd	xmm0,  qword ptr [word ptr [rip + label_181]]
.label_183:
	add	rsp, 0x70
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403980

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_187
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_188
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_188
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_189
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_189:
	mov	rbx, r14
.label_188:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_187:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_4
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a30
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
	#Procedure 0x403a70
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
	#Procedure 0x403a80
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
	#Procedure 0x403a90
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
	#Procedure 0x403ad0
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
	#Procedure 0x403af0
	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:

	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_190
	test	rdx, rdx
	je	.label_190
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_190:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b20
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
	mov	r8, qword ptr [rbp]
	mov	rax, qword ptr [rbp + 0x28]
	mov	r9, r8
	shr	r9, 0x20
	mov	rcx, qword ptr [rbp + 0x30]
	add	rbp, 8
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], rbp
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
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403ba0

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
	mov	r15d, r8d
	mov	r13, rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	rbp, rsi
	mov	qword ptr [rsp + 0xe0], rdi
	mov	rax, qword ptr [rsp + 0x150]
	mov	qword ptr [rsp + 0x98], rax
	mov	rax, qword ptr [rsp + 0x148]
	mov	qword ptr [rsp + 0xa0], rax
	call	__ctype_get_mb_cur_max
	mov	qword ptr [rsp + 0x60], rax
	mov	r12b, bl
	shr	r12b, 1
	and	r12b, 1
	mov	eax, ebx
	and	eax, 1
	mov	dword ptr [rsp + 0x5c], eax
	and	ebx, 4
	mov	dword ptr [rsp + 0x58], ebx
	mov	r8b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0x90], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 0
	mov	qword ptr [rsp + 0xc8], rax
	mov	eax, 0
	mov	dword ptr [rsp + 0xd8], 0
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x70], rcx
.label_279:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r15d
	cmp	r15d, 0xa
	ja	.label_214
	mov	r9d, 7
	mov	dil, 1
	xor	esi, esi
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, r13
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_220]]
.label_547:
	mov	edi, OFFSET FLAT:.str.11_0
	mov	esi, r15d
	mov	r14, r10
	mov	bl, r8b
	call	gettext_quote
	mov	qword ptr [rsp + 0xa0], rax
	mov	edi, OFFSET FLAT:.str.12_0
	mov	esi, r15d
	call	gettext_quote
	mov	r8b, bl
	mov	r10, r14
	mov	qword ptr [rsp + 0x98], rax
.label_548:
	mov	byte ptr [rsp + 0x69], r8b
	mov	r13, rbp
	test	r12b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0xa0]
	jne	.label_241
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_241
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_265:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_216
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_216:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_265
.label_241:
	mov	rbp, qword ptr [rsp + 0x98]
	mov	rdi, rbp
	mov	rbx, r10
	call	strlen
	mov	r10, rbx
	mov	qword ptr [rsp + 0xc8], rax
	mov	r9d, r15d
	mov	qword ptr [rsp + 0xb8], rbp
	mov	dil, 1
	mov	sil, r12b
	mov	rbp, r13
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r11, qword ptr [rsp + 0xa8]
	jmp	.label_194
.label_540:
	xor	r9d, r9d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	dil, al
	xor	esi, esi
	jmp	.label_194
.label_543:
	mov	al, 1
.label_541:
	mov	r12b, 1
.label_544:
	test	r12b, 1
	mov	cl, 1
	je	.label_289
	mov	cl, al
.label_289:
	mov	al, cl
.label_542:
	mov	r9d, 2
	test	r12b, 1
	jne	.label_292
	test	r10, r10
	je	.label_295
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_296
.label_292:
	xor	ecx, ecx
	jmp	.label_296
.label_545:
	mov	r9d, 5
	test	r12b, 1
	jne	.label_263
	test	r10, r10
	je	.label_310
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_219
.label_546:
	mov	dil, 1
	mov	r9d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	sil, 1
	jmp	.label_194
.label_295:
	mov	ecx, 1
	nop	dword ptr [rax]
.label_296:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xb8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xc8], rcx
	mov	dil, al
	mov	sil, r12b
	jmp	.label_194
.label_263:
	xor	eax, eax
	jmp	.label_219
.label_310:
	mov	eax, 1
.label_219:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xb8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xc8], rax
	mov	dil, 1
	mov	sil, r12b
	nop	dword ptr [rax + rax]
.label_194:
	mov	qword ptr [rsp + 0x80], rsi
	mov	byte ptr [rsp + 0x8f], dil
	cmp	qword ptr [rsp + 0x140], 0
	setne	dl
	cmp	r9d, 2
	setne	r15b
	sete	al
	mov	cl, dil
	and	cl, 1
	mov	byte ptr [rsp + 0xb6], cl
	sete	byte ptr [rsp + 0x6b]
	mov	bl, r15b
	and	bl, cl
	mov	byte ptr [rsp + 0xd7], bl
	cmp	qword ptr [rsp + 0xc8], 0
	setne	r13b
	mov	r12b, r13b
	and	r12b, bl
	mov	byte ptr [rsp + 0xc6], r12b
	mov	bl, sil
	and	bl, 1
	mov	byte ptr [rsp + 0xc7], bl
	sete	cl
	and	al, bl
	mov	byte ptr [rsp + 0x7f], al
	and	dl, bl
	mov	byte ptr [rsp + 0xc5], dl
	or	cl, r15b
	mov	byte ptr [rsp + 0xb7], cl
	and	dil, sil
	and	dil, r13b
	mov	byte ptr [rsp + 0x6a], dil
	xor	edi, edi
	mov	r14d, dword ptr [rsp + 0xd8]
	jmp	.label_229
.label_277:
	inc	rdi
.label_229:
	cmp	rbp, -1
	je	.label_269
	cmp	rdi, rbp
	jne	.label_272
	jmp	.label_273
	nop	word ptr cs:[rax + rax]
.label_269:
	mov	r13, -1
	cmp	byte ptr [r11 + rdi], 0
	je	.label_207
.label_272:
	test	r12b, r12b
	je	.label_281
	mov	rax, qword ptr [rsp + 0xc8]
	lea	rbx, [rdi + rax]
	cmp	rax, 2
	jb	.label_283
	cmp	rbp, -1
	jne	.label_283
	mov	eax, r14d
	mov	r14, rdi
	mov	rdi, r11
	mov	rbp, r10
	mov	r15b, r8b
	mov	r13, r9
	mov	dword ptr [rsp + 0xd8], eax
	mov	r12, r11
	call	strlen
	mov	rdi, r14
	mov	r11, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	r14d, dword ptr [rsp + 0xd8]
	mov	r9, r13
	mov	r8b, r15b
	mov	r10, rbp
	mov	rbp, rax
.label_283:
	cmp	rbx, rbp
	jbe	.label_301
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_257
	nop	word ptr [rax + rax]
.label_281:
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_257
.label_301:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	r12, rbp
	mov	r13, r9
	mov	r15b, r8b
	mov	rbx, r10
	mov	r14, rdi
	lea	rdi, [r11 + r14]
	mov	rbp, r11
	mov	rsi, qword ptr [rsp + 0xb8]
	mov	rdx, qword ptr [rsp + 0xc8]
	call	memcmp
	test	eax, eax
	sete	al
	mov	dword ptr [rsp + 0xec], eax
	jne	.label_205
	cmp	byte ptr [rsp + 0xc7], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	je	.label_257
	jmp	.label_193
.label_205:
	mov	r10, rbx
	mov	r8b, r15b
	mov	r9, r13
	mov	r11, rbp
	mov	rbp, r12
	mov	r12b, byte ptr [rsp + 0xc6]
	mov	rdi, r14
	mov	r14d, dword ptr [rsp + 0xd8]
	nop	word ptr cs:[rax + rax]
.label_257:
	movzx	r15d, byte ptr [r11 + rdi]
	cmp	r15, 0x7e
	ja	.label_244
	xor	edx, edx
	mov	r13b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r15 * 8) + label_234]]
.label_466:
	test	rdi, rdi
	jne	.label_221
	jmp	.label_249
.label_470:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_245
	test	rdi, rdi
	jne	.label_248
	cmp	rbp, 1
	je	.label_249
	xor	r13d, r13d
	jmp	.label_204
.label_459:
	cmp	byte ptr [rsp + 0xb6], 0
	je	.label_252
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_193
	cmp	r9d, 2
	jne	.label_258
	mov	al, r14b
	and	al, 1
	jne	.label_260
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_264
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_264:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_208
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_211
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_211:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r14b, 1
	mov	rcx, rax
	jmp	.label_285
.label_460:
	mov	bl, 0x62
	jmp	.label_192
.label_461:
	mov	cl, 0x74
	jmp	.label_238
.label_462:
	mov	bl, 0x76
	jmp	.label_192
.label_463:
	mov	bl, 0x66
	jmp	.label_192
.label_464:
	mov	cl, 0x72
	jmp	.label_238
.label_467:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	cmp	r9d, 2
	jne	.label_293
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_298
	test	r10, r10
	sete	al
	mov	rcx, qword ptr [rsp + 0x90]
	mov	rdx, rcx
	test	rdx, rdx
	setne	cl
	or	cl, al
	cmove	rdx, r10
	mov	qword ptr [rsp + 0x90], rdx
	mov	eax, 0
	cmove	r10, rax
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_303
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_303:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_201
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_201:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_287
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_287:
	add	qword ptr [rsp + 0xf0], 3
	xor	r14d, r14d
.label_293:
	xor	eax, eax
	mov	r13b, 1
	jmp	.label_204
.label_468:
	cmp	r9d, 5
	je	.label_236
	cmp	r9d, 2
	jne	.label_221
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_221
	jmp	.label_225
.label_469:
	cmp	r9d, 2
	jne	.label_227
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_230
	jmp	.label_235
.label_244:
	mov	qword ptr [rsp + 0x30], r9
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x48], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_237
	mov	r13d, r14d
	mov	r14, r11
	mov	rbx, rdi
	call	__ctype_b_loc
	mov	rdi, rbx
	mov	r11, r14
	mov	r14d, r13d
	mov	rax, qword ptr [rax]
	movzx	r13d, word ptr [rax + r15*2]
	shr	r13d, 0xe
	and	r13b, 1
	mov	eax, 1
.label_215:
	and	r13b, 1
	mov	cl, r13b
	or	cl, byte ptr [rsp + 0x6b]
	cmp	rax, 1
	mov	r10, qword ptr [rsp + 0x48]
	mov	r8b, byte ptr [rsp + 0x69]
	mov	r9, qword ptr [rsp + 0x30]
	ja	.label_254
	test	cl, cl
	je	.label_254
	xor	eax, eax
	jmp	.label_204
.label_245:
	test	rdi, rdi
	jne	.label_268
	mov	cl, byte ptr [r11 + 1]
	test	cl, cl
	jne	.label_268
.label_249:
	mov	dl, 1
.label_465:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_271
	xor	eax, eax
	mov	r13b, dl
	jmp	.label_204
.label_252:
	cmp	dword ptr [rsp + 0x5c], 0
	jne	.label_277
	jmp	.label_221
.label_227:
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r15b
	je	.label_238
.label_230:
	xor	eax, eax
	xor	r13d, r13d
	jmp	.label_210
.label_238:
	cmp	byte ptr [rsp + 0xb7], 0
	mov	bl, cl
	je	.label_286
.label_192:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r13d, 0
	je	.label_204
	jmp	.label_213
.label_237:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_290
	mov	rbp, rdi
	mov	rdi, r11
	mov	rbx, r11
	call	strlen
	mov	rdi, rbp
	mov	r11, rbx
	mov	rbp, rax
.label_290:
	mov	qword ptr [rsp + 0x40], rbp
	lea	rax, [r11 + rdi]
	mov	qword ptr [rsp + 0x28], rax
	mov	r13b, 1
	xor	eax, eax
	lea	rbx, [rsp + 0x100]
.label_242:
	mov	qword ptr [rsp + 0xd8], rax
	mov	qword ptr [rsp + 0x50], rdi
	lea	rax, [rax + rdi]
	mov	qword ptr [rsp + 0x38], rax
	lea	rsi, [r11 + rax]
	mov	rdx, rbp
	sub	rdx, rax
	lea	rdi, [rsp + 0xfc]
	mov	rcx, rbx
	call	rpl_mbrtowc
	mov	rbp, rax
	test	rbp, rbp
	je	.label_200
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x48]
	movabs	rsi, 0x20000002b
	je	.label_203
	cmp	rbp, -2
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_209
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_196
	mov	rax, qword ptr [rsp + 0xd8]
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rax, [rcx + rax]
	mov	ecx, 1
.label_226:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_223
	bt	rsi, rdx
	jb	.label_224
.label_223:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_226
.label_196:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_314
	xor	r13d, r13d
.label_314:
	mov	rax, qword ptr [rsp + 0xd8]
	add	rax, rbp
	mov	rdi, rbx
	mov	rbp, rax
	call	mbsinit
	test	eax, eax
	mov	rax, rbp
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_242
	jmp	.label_215
.label_268:
	mov	rbp, -1
	xor	r13d, r13d
	jmp	.label_204
.label_236:
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_221
	lea	rcx, [rdi + 2]
	cmp	rcx, rbp
	jae	.label_221
	movzx	eax, byte ptr [rdi + r11 + 1]
	cmp	eax, 0x3f
	jne	.label_221
	movsx	edx, byte ptr [r11 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_261
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_266
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_302
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_275
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rsi], 0x3f
.label_275:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_280
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_280:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_247
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x22
.label_247:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_307
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], 0x3f
.label_307:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rdi, rcx
	mov	r15b, dl
	xor	r13d, r13d
	jmp	.label_204
.label_221:
	xor	eax, eax
	xor	r13d, r13d
.label_204:
	cmp	byte ptr [rsp + 0xd7], 0
	je	.label_306
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_309
	jmp	.label_191
	nop	word ptr [rax + rax]
.label_306:
	cmp	byte ptr [rsp + 0xc5], 0
	je	.label_191
.label_309:
	mov	cl, r15b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r15b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_195
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	jmp	.label_202
	nop	word ptr cs:[rax + rax]
.label_191:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
.label_202:
	mov	bl, r15b
	je	.label_210
	jmp	.label_213
.label_195:
	mov	bl, r15b
.label_213:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_193
	cmp	r9d, 2
	jne	.label_218
	mov	al, r14b
	and	al, 1
	jne	.label_218
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_233
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_233:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_278
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_278:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_232
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_232:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_218:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_246
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_246:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_291
.label_248:
	xor	r13d, r13d
	jmp	.label_204
.label_254:
	add	rax, rdi
	mov	qword ptr [rsp + 0xd8], rax
	xor	eax, eax
	jmp	.label_256
	nop	word ptr [rax + rax]
.label_250:
	inc	qword ptr [rsp + 0xf0]
	mov	r15b, byte ptr [r11 + rdi + 1]
	mov	rdi, rdx
.label_256:
	test	cl, cl
	je	.label_267
	mov	edx, dword ptr [rsp + 0xec]
	test	dl, 1
	je	.label_212
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_270
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
.label_270:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_212
	nop	word ptr [rax + rax]
.label_267:
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_193
	cmp	r9d, 2
	jne	.label_284
	mov	al, r14b
	and	al, 1
	jne	.label_284
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_288
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_288:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_313
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_313:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_255
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_255:
	add	qword ptr [rsp + 0xf0], 3
	mov	r14b, 1
.label_284:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_315
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_315:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_198
	mov	dl, r15b
	shr	dl, 6
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_198:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_297
	mov	dl, r15b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
.label_297:
	add	qword ptr [rsp + 0xf0], 3
	and	r15b, 7
	or	r15b, 0x30
	mov	al, 1
.label_212:
	lea	rdx, [rdi + 1]
	cmp	qword ptr [rsp + 0xd8], rdx
	jbe	.label_210
	test	r14b, 1
	je	.label_274
	mov	bl, al
	and	bl, 1
	jne	.label_274
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_217
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
	mov	rdi, rbx
.label_217:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_239
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
	mov	rdi, rbx
.label_239:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_274:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_250
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, rdi
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], r15b
	mov	rdi, rbx
	jmp	.label_250
	nop	dword ptr [rax]
.label_210:
	test	r14b, 1
	je	.label_262
	and	al, 1
	jne	.label_262
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_253
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_253:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_240
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_240:
	add	qword ptr [rsp + 0xf0], 2
	xor	r14d, r14d
.label_262:
	mov	bl, r15b
.label_291:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_282
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
.label_282:
	inc	qword ptr [rsp + 0xf0]
	shl	r13b, 7
	sar	r13b, 7
	and	r13b, r8b
	mov	r8b, r13b
	jmp	.label_277
.label_258:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_285
.label_260:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_285:
	cmp	rcx, r10
	jae	.label_294
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_294:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r15b, 0x30
	cmp	r9d, 2
	je	.label_300
	lea	rdx, [rdi + 1]
	cmp	rdx, rbp
	jae	.label_308
	mov	dl, byte ptr [r11 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_311
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
.label_312:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_197
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
.label_197:
	add	rcx, 3
	xor	r13d, r13d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_204
.label_300:
	xor	r13d, r13d
	jmp	.label_204
.label_308:
	xor	r13d, r13d
	jmp	.label_204
.label_311:
	xor	r13d, r13d
	jmp	.label_204
.label_203:
	xor	r13d, r13d
.label_200:
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_215
.label_209:
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, qword ptr [rsp + 0x38]
	cmp	rbp, rcx
	jbe	.label_222
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
.label_304:
	cmp	byte ptr [r11 + rcx], 0
	je	.label_228
	lea	rcx, [rax + rdi + 1]
	inc	rax
	cmp	rcx, rbp
	jb	.label_304
	xor	r13d, r13d
	jmp	.label_215
.label_222:
	xor	r13d, r13d
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rax, qword ptr [rsp + 0xd8]
	jmp	.label_215
.label_228:
	xor	r13d, r13d
	jmp	.label_215
.label_261:
	xor	r13d, r13d
	jmp	.label_204
.label_266:
	xor	r13d, r13d
	jmp	.label_204
	nop	dword ptr [rax]
.label_273:
	mov	r13, rdi
.label_207:
	cmp	r9d, 2
	setne	al
	cmp	qword ptr [rsp + 0xf0], 0
	setne	dl
	cmp	byte ptr [rsp + 0xc7], 0
	je	.label_251
	or	al, dl
	je	.label_206
.label_251:
	mov	dword ptr [rsp + 0xd8], r14d
	mov	qword ptr [rsp + 0xa8], r11
	cmp	r9d, 2
	setne	al
	cmp	byte ptr [rsp + 0xc7], 0
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	mov	bl, byte ptr [rsp + 0x8f]
	mov	rsi, qword ptr [rsp + 0x80]
	je	.label_259
	or	al, dl
	jne	.label_259
	test	r8b, 1
	jne	.label_276
	cmp	qword ptr [rsp + 0x90], 0
	je	.label_259
	test	r10, r10
	mov	r15d, r9d
	mov	al, bl
	mov	r12b, sil
	mov	rbp, qword ptr [rsp + 0x90]
	je	.label_279
.label_259:
	mov	rdx, qword ptr [rsp + 0xb8]
	test	rdx, rdx
	je	.label_243
	cmp	byte ptr [rsp + 0xc7], 0
	jne	.label_243
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_243
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_299:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_199:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_299
.label_243:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_305
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_305
.label_271:
	mov	r9d, 2
	jmp	.label_193
.label_224:
	mov	r9d, 2
	mov	r11, qword ptr [rsp + 0xa8]
	mov	rbp, qword ptr [rsp + 0x40]
	jmp	.label_193
.label_206:
	mov	rbp, r13
	jmp	.label_193
.label_286:
	mov	r9d, 2
.label_193:
	cmp	byte ptr [rsp + 0xb6], 0
	mov	r8d, 4
	cmove	r8d, r9d
	cmp	r9d, 2
	cmovne	r8d, r9d
	mov	r9d, dword ptr [rsp + 0x6c]
	and	r9d, 0xfffffffd
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], 0
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, r10
	mov	rdx, r11
	mov	rcx, rbp
.label_231:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_305:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_276:
	mov	rax, qword ptr [rsp + 0x98]
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, qword ptr [rsp + 0xa0]
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x140]
	mov	qword ptr [rsp], rax
	mov	r8d, 5
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0x90]
	mov	rdx, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r9d, dword ptr [rsp + 0x6c]
	jmp	.label_231
.label_298:
	mov	r9d, 2
	jmp	.label_193
.label_235:
	mov	r9d, 2
	jmp	.label_193
.label_225:
	mov	r9d, 2
	jmp	.label_193
.label_302:
	mov	r9d, 5
	jmp	.label_193
.label_214:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404d30
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r12, rsi
	mov	rbx, rdi
	mov	qword ptr [rsp + 0x20], rbx
	test	rdx, rdx
	mov	r14d, OFFSET FLAT:default_quoting_options
	cmovne	r14, rdx
	call	__errno_location
	mov	qword ptr [rsp + 0x28], rax
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rsp + 0x34], ecx
	mov	r8d, dword ptr [r14]
	mov	ebp, dword ptr [r14 + 4]
	or	ebp, 1
	lea	r15, [r14 + 8]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	xor	edi, edi
	xor	esi, esi
	mov	rdx, rbx
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	rbx, rax
	inc	rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	r8d, dword ptr [r14]
	mov	rax, qword ptr [r14 + 0x28]
	mov	rcx, qword ptr [r14 + 0x30]
	mov	qword ptr [rsp + 0x10], rcx
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp], r15
	mov	rdi, r13
	mov	rsi, rbx
	mov	rdx, qword ptr [rsp + 0x20]
	mov	rcx, r12
	mov	r9d, ebp
	call	quotearg_buffer_restyled
	mov	eax, dword ptr [rsp + 0x34]
	mov	rcx, qword ptr [rsp + 0x28]
	mov	dword ptr [rcx], eax
	mov	rax, r13
	add	rsp, 0x38
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
	#Procedure 0x404e00
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
	call	xmalloc
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
	je	.label_316
	mov	qword ptr [rax], rbx
.label_316:
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
	#Procedure 0x404f00
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_317
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_319:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_319
.label_317:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_320
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_321]], OFFSET FLAT:slot0
.label_320:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_318
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_318:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404fa0
	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404fb0

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
	js	.label_322
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_327
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_323
.label_327:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_326
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
	jne	.label_325
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_325:
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
.label_323:
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
	ja	.label_328
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_324
	mov	rdi, rbx
	call	free
.label_324:
	mov	rdi, r14
	call	xmalloc
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
.label_328:
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
.label_322:
	call	abort
.label_326:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405180
	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:

	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405190
	.globl quotearg
	.type quotearg, @function
quotearg:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4051b0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:default_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4051d0
	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:

	sub	rsp, 0x78
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_329
	mov	dword ptr [rsp + 8], esi
	mov	ecx, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_329:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405240
	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	esi, 0xa
	je	.label_330
	mov	dword ptr [rsp + 8], esi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rax, [rsp + 8]
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_330:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:
	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_331
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	mov	rdx, -1
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_331:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405320
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	sub	rsp, 0x78
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x60], xmm0
	movaps	xmmword ptr [rsp + 0x50], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm0
	mov	dword ptr [rsp + 0x70], 0
	cmp	edi, 0xa
	je	.label_332
	mov	dword ptr [rsp + 8], edi
	mov	eax, dword ptr [rsp + 0x70]
	mov	dword ptr [rsp + 0x3c], eax
	movaps	xmm0, xmmword ptr [rsp + 0x40]
	movaps	xmm1, xmmword ptr [rsp + 0x50]
	movaps	xmm2, xmmword ptr [rsp + 0x60]
	movups	xmmword ptr [rsp + 0x2c], xmm2
	movups	xmmword ptr [rsp + 0x1c], xmm1
	movups	xmmword ptr [rsp + 0xc], xmm0
	lea	rcx, [rsp + 8]
	xor	edi, edi
	call	quotearg_n_options
	add	rsp, 0x78
	ret	
.label_332:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405390
	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:

	sub	rsp, 0x38
	mov	ecx, edx
	mov	r8, rsi
	mov	rdx, rdi
	mov	rsi,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rsi
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	al, cl
	shr	al, 5
	movzx	eax, al
	mov	esi, dword ptr [rsp + rax*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rax*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, r8
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405400
	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:

	sub	rsp, 0x38
	mov	ecx, esi
	mov	rax, rdi
	mov	rdx,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rdx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dl, cl
	shr	dl, 5
	movzx	edx, dl
	mov	esi, dword ptr [rsp + rdx*4 + 8]
	mov	edi, esi
	shr	edi, cl
	not	edi
	and	edi, 1
	shl	edi, cl
	xor	edi, esi
	mov	dword ptr [rsp + rdx*4 + 8], edi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405470

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	sub	rsp, 0x38
	mov	rax, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4054d0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	sub	rsp, 0x38
	mov	rax, rsi
	mov	rdx, rdi
	mov	rcx,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	or	byte ptr [rsp + 0xf], 4
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405530

	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:
	sub	rsp, 0xa8
	mov	rax, rdx
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x90], xmm0
	movaps	xmmword ptr [rsp + 0x80], xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	dword ptr [rsp + 0xa0], 0
	cmp	esi, 0xa
	je	.label_336
	mov	ecx, dword ptr [rsp + 0xa0]
	mov	dword ptr [rsp + 0x30], ecx
	movaps	xmm0, xmmword ptr [rsp + 0x70]
	movaps	xmm1, xmmword ptr [rsp + 0x80]
	movaps	xmm2, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x20], xmm2
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp + 0x38], esi
	mov	ecx, dword ptr [rsp + 0x30]
	mov	dword ptr [rsp + 0x6c], ecx
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmm2, xmmword ptr [rsp + 0x20]
	movups	xmmword ptr [rsp + 0x5c], xmm2
	movups	xmmword ptr [rsp + 0x4c], xmm1
	movups	xmmword ptr [rsp + 0x3c], xmm0
	or	byte ptr [rsp + 0x47], 4
	lea	rcx, [rsp + 0x38]
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0xa8
	ret	
.label_336:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055e0
	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_337
	test	rdx, rdx
	je	.label_337
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rdx, -1
	mov	rsi, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_337:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rsi, rsi
	je	.label_338
	test	rdx, rdx
	je	.label_338
	mov	qword ptr [rsp + 0x28], rsi
	mov	qword ptr [rsp + 0x30], rdx
	lea	rax, [rsp]
	mov	rsi, rcx
	mov	rdx, r8
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_338:
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4056c0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	sub	rsp, 0x38
	mov	rax, rdx
	mov	rcx,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_339
	test	rsi, rsi
	je	.label_339
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rcx, [rsp]
	xor	edi, edi
	mov	rdx, -1
	mov	rsi, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_339:
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405730
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	sub	rsp, 0x38
	mov	rax,  qword ptr [word ptr [rip + label_333]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_334]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_335]]
	movaps	xmmword ptr [rsp + 0x10], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + default_quoting_options]]
	movaps	xmmword ptr [rsp], xmm0
	mov	dword ptr [rsp], 0xa
	test	rdi, rdi
	je	.label_340
	test	rsi, rsi
	je	.label_340
	mov	qword ptr [rsp + 0x28], rdi
	mov	qword ptr [rsp + 0x30], rsi
	lea	rax, [rsp]
	xor	edi, edi
	mov	rsi, rdx
	mov	rdx, rcx
	mov	rcx, rax
	call	quotearg_n_options
	add	rsp, 0x38
	ret	
.label_340:
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4057a0
	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:

	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057b0
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	mov	rax, rsi
	mov	rdx, rdi
	xor	edi, edi
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rdx
	mov	rdx, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057d0
	.globl quote_n
	.type quote_n, @function
quote_n:

	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4057f0
	.globl quote
	.type quote, @function
quote:

	mov	rax, rdi
	xor	edi, edi
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:quote_quoting_options
	mov	rsi, rax
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405810

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	rbx, rdi
	xor	edi, edi
	mov	edx, 5
	mov	rsi, rbx
	call	dcgettext
	cmp	rax, rbx
	jne	.label_342
	call	locale_charset
	movsx	ecx, byte ptr [rax]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x47
	je	.label_344
	cmp	ecx, 0x55
	jne	.label_341
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x54
	jne	.label_341
	movsx	ecx, byte ptr [rax + 2]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x46
	jne	.label_341
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x2d
	jne	.label_341
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x38
	jne	.label_341
	cmp	byte ptr [rax + 5], 0
	jne	.label_341
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_342
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_342
.label_344:
	movsx	ecx, byte ptr [rax + 1]
	and	ecx, 0xffffffdf
	cmp	ecx, 0x42
	jne	.label_341
	movzx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x31
	jne	.label_341
	movzx	ecx, byte ptr [rax + 3]
	cmp	ecx, 0x38
	jne	.label_341
	movzx	ecx, byte ptr [rax + 4]
	cmp	ecx, 0x30
	jne	.label_341
	movzx	ecx, byte ptr [rax + 5]
	cmp	ecx, 0x33
	jne	.label_341
	movzx	ecx, byte ptr [rax + 6]
	cmp	ecx, 0x30
	jne	.label_341
	cmp	byte ptr [rax + 7], 0
	je	.label_343
.label_341:
	cmp	ebp, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_342:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_343:
	mov	eax, OFFSET FLAT:.str.17_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_342
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_342
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405900

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
	.align	32
	#Procedure 0x405970

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
	.align	32
	#Procedure 0x4059a0

	.globl readtokens0
	.type readtokens0, @function
readtokens0:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	je	.label_355
	lea	r12, [rbx + 0x30]
	lea	r15, [rbx + 0x18]
	nop	word ptr cs:[rax + rax]
.label_347:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_349
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_349:
	lea	rcx, [rax + 1]
	mov	qword ptr [r12], rcx
	mov	byte ptr [rax], bpl
	test	ebp, ebp
	jne	.label_345
	mov	rdi, rbx
	call	save_token
.label_345:
	mov	rdi, r14
	call	fgetc
	mov	ebp, eax
	cmp	ebp, -1
	jne	.label_347
	jmp	.label_350
.label_355:
	lea	r15, [rbx + 0x18]
	lea	r12, [rbx + 0x30]
.label_350:
	mov	rax, qword ptr [rbx + 0x30]
	cmp	rax, qword ptr [rbx + 0x28]
	je	.label_351
	cmp	qword ptr [rbx + 0x38], rax
	jne	.label_353
	mov	esi, 1
	mov	rdi, r15
	call	_obstack_newchunk
	mov	rax, qword ptr [r12]
.label_353:
	lea	rcx, [rax + 1]
	mov	qword ptr [rbx + 0x30], rcx
	mov	byte ptr [rax], 0
	mov	rdi, rbx
	call	save_token
.label_351:
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_348
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_348:
	mov	qword ptr [rax], 0
	mov	rdx, qword ptr [rbx + 0x88]
	add	rdx, 8
	mov	qword ptr [rbx + 0x88], rdx
	mov	rax, qword ptr [rbx + 0x80]
	cmp	rdx, rax
	jne	.label_356
	or	byte ptr [rbx + 0xc0], 2
.label_356:
	mov	rcx, qword ptr [rbx + 0xa0]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0x88], rcx
	mov	rsi, qword ptr [rbx + 0x78]
	mov	rbp, qword ptr [rbx + 0x90]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_354
	mov	qword ptr [rbx + 0x88], rbp
	mov	rcx, rbp
.label_354:
	mov	qword ptr [rbx + 0x80], rcx
	mov	qword ptr [rbx + 8], rax
	mov	rax, qword ptr [rbx + 0xd8]
	mov	rdx, qword ptr [rbx + 0xe0]
	cmp	rdx, rax
	jne	.label_352
	or	byte ptr [rbx + 0x118], 2
.label_352:
	mov	rcx, qword ptr [rbx + 0xf8]
	add	rdx, rcx
	not	rcx
	and	rcx, rdx
	mov	qword ptr [rbx + 0xe0], rcx
	mov	rsi, qword ptr [rbx + 0xd0]
	mov	rbp, qword ptr [rbx + 0xe8]
	mov	rdi, rcx
	sub	rdi, rsi
	mov	rdx, rbp
	sub	rdx, rsi
	cmp	rdi, rdx
	jbe	.label_346
	mov	qword ptr [rbx + 0xe0], rbp
	mov	rcx, rbp
.label_346:
	mov	qword ptr [rbx + 0xd8], rcx
	mov	qword ptr [rbx + 0x10], rax
	mov	rdi, r14
	call	ferror
	test	eax, eax
	sete	al
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405b70

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
	jne	.label_357
	or	byte ptr [rbx + 0x68], 2
.label_357:
	mov	rax, qword ptr [rbx + 0x48]
	lea	rcx, [rax + r14]
	not	rax
	and	rax, rcx
	mov	qword ptr [rbx + 0x30], rax
	mov	rdx, qword ptr [rbx + 0x20]
	mov	rcx, qword ptr [rbx + 0x38]
	mov	rsi, rax
	sub	rsi, rdx
	mov	rdi, rcx
	sub	rdi, rdx
	cmp	rsi, rdi
	jbe	.label_358
	mov	qword ptr [rbx + 0x30], rcx
	mov	rax, rcx
.label_358:
	dec	r14
	mov	qword ptr [rbx + 0x28], rax
	mov	rax, qword ptr [rbx + 0x88]
	mov	rcx, qword ptr [rbx + 0x90]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_359
	lea	rdi, [rbx + 0x70]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0x88]
.label_359:
	sub	r14, r15
	mov	qword ptr [rax], r15
	add	qword ptr [rbx + 0x88], 8
	mov	rax, qword ptr [rbx + 0xe0]
	mov	rcx, qword ptr [rbx + 0xe8]
	sub	rcx, rax
	cmp	rcx, 8
	jae	.label_360
	lea	rdi, [rbx + 0xc8]
	mov	esi, 8
	call	_obstack_newchunk
	mov	rax, qword ptr [rbx + 0xe0]
.label_360:
	mov	qword ptr [rax], r14
	add	qword ptr [rbx + 0xe0], 8
	inc	qword ptr [rbx]
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405c40

	.globl safe_read
	.type safe_read, @function
safe_read:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdx
	mov	r14, rsi
	mov	r15d, edi
.label_362:
	mov	edi, r15d
	mov	rsi, r14
	mov	rdx, rbx
	call	read
	mov	rbp, rax
	test	rbp, rbp
	jns	.label_361
	call	__errno_location
	mov	eax, dword ptr [rax]
	cmp	eax, 4
	je	.label_362
	cmp	rbx, 0x7ff00001
	jb	.label_361
	cmp	eax, 0x16
	mov	ebx, 0x7ff00000
	je	.label_362
.label_361:
	mov	rax, rbp
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405ca0

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
	je	.label_367
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_366
.label_367:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_366:
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
	ja	.label_371
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_363]]
.label_503:
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
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	jmp	.label_370
.label_504:
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
.label_505:
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
.label_506:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_369
.label_507:
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
	jmp	.label_368
.label_508:
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
	jmp	.label_365
.label_509:
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
.label_365:
	mov	qword ptr [rsp + 0x10], rdi
.label_368:
	mov	qword ptr [rsp + 8], rsi
.label_369:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_372
.label_511:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_370:
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
	jmp	.label_364
.label_510:
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
.label_364:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_372:
	call	__fprintf_chk
.label_502:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405f90
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_373:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_373
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405fc0
	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:

	sub	rsp, 0x58
	mov	r10d, dword ptr [r8]
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_376:
	cmp	r10d, 0x28
	ja	.label_374
	movsxd	r11, r10d
	add	r11, qword ptr [r8 + 0x10]
	add	r10d, 8
	mov	dword ptr [r8], r10d
	jmp	.label_375
	nop	word ptr cs:[rax + rax]
.label_374:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_375:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_377
	inc	r9
	cmp	r9, 0xa
	jb	.label_376
.label_377:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406020

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0x128
	test	al, al
	je	.label_378
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_378:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0x130]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x20
	xor	r9d, r9d
	mov	r8d, dword ptr [rsp + 0xb0]
	nop	word ptr cs:[rax + rax]
.label_382:
	cmp	r8d, 0x28
	ja	.label_379
	movsxd	r10, r8d
	add	r10, qword ptr [rsp + 0xc0]
	add	r8d, 8
	mov	dword ptr [rsp + 0xb0], r8d
	jmp	.label_381
	nop	
.label_379:
	mov	r10, qword ptr [rsp + 0xb8]
	lea	rax, [r10 + 8]
	mov	qword ptr [rsp + 0xb8], rax
.label_381:
	mov	rax, qword ptr [r10]
	mov	qword ptr [rsp + r9*8 + 0xd0], rax
	test	rax, rax
	je	.label_380
	inc	r9
	cmp	r9, 0xa
	jb	.label_382
.label_380:
	lea	r8, [rsp + 0xd0]
	call	version_etc_arn
	add	rsp, 0x128
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406120
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
	.align	32
	#Procedure 0x4061a0
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbx
	mov	rbx, rsi
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rdi
	jb	.label_383
	imul	rbx, rdi
	mov	rdi, rbx
	call	malloc
	test	rbx, rbx
	je	.label_384
	test	rax, rax
	je	.label_383
.label_384:
	pop	rbx
	ret	
.label_383:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_385
	test	rax, rax
	je	.label_386
.label_385:
	pop	rbx
	ret	
.label_386:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406200
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbx
	mov	rbx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rsi
	jb	.label_387
	imul	rbx, rsi
	test	rdi, rdi
	je	.label_388
	test	rbx, rbx
	jne	.label_388
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_388:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_389
	test	rax, rax
	je	.label_387
.label_389:
	pop	rbx
	ret	
.label_387:
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406250

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_390
	test	rbx, rbx
	jne	.label_390
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_390:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_392
	test	rax, rax
	je	.label_391
.label_392:
	pop	rbx
	ret	
.label_391:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x406280
	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:

	push	rbx
	mov	rbx, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_393
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jbe	.label_395
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_394
.label_393:
	test	rcx, rcx
	jne	.label_398
	mov	eax, 0x80
	xor	edx, edx
	div	rbx
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_398:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rbx
	cmp	rax, rcx
	jb	.label_396
.label_394:
	mov	qword ptr [rsi], rcx
	imul	rbx, rcx
	test	rdi, rdi
	je	.label_397
	test	rbx, rbx
	jne	.label_397
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_397:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_399
	test	rax, rax
	je	.label_395
.label_399:
	pop	rbx
	ret	
.label_395:
	call	xalloc_die
.label_396:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406320
	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:

	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_400
	test	rax, rax
	je	.label_401
.label_400:
	pop	rbx
	ret	
.label_401:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406340
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbx
	mov	rax, qword ptr [rsi]
	test	rdi, rdi
	je	.label_402
	movabs	rcx, 0x5555555555555554
	cmp	rax, rcx
	jae	.label_405
	mov	rbx, rax
	shr	rbx, 1
	add	rbx, rax
	inc	rbx
	mov	qword ptr [rsi], rbx
	jne	.label_406
	call	free
	xor	eax, eax
	jmp	.label_403
.label_402:
	test	rax, rax
	mov	ebx, 0x80
	cmovne	rbx, rax
	test	rbx, rbx
	js	.label_404
	mov	qword ptr [rsi], rbx
.label_406:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_403
	test	rax, rax
	je	.label_404
.label_403:
	pop	rbx
	ret	
.label_404:
	call	xalloc_die
.label_405:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063b0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	call	malloc
	mov	r14, rax
	test	rbx, rbx
	je	.label_408
	test	r14, r14
	je	.label_407
.label_408:
	xor	esi, esi
	mov	rdi, r14
	mov	rdx, rbx
	call	memset
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_407:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063f0
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_409
	call	rpl_calloc
	test	rax, rax
	je	.label_409
	pop	rcx
	ret	
.label_409:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406420

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rsi
	mov	r14, rdi
	mov	rdi, rbx
	call	malloc
	mov	r15, rax
	test	rbx, rbx
	je	.label_410
	test	r15, r15
	je	.label_411
.label_410:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_411:
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406460
	.globl xstrdup
	.type xstrdup, @function
xstrdup:

	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	call	strlen
	mov	rbx, rax
	lea	rdi, [rbx + 1]
	call	malloc
	mov	r15, rax
	inc	rbx
	je	.label_413
	test	r15, r15
	je	.label_412
.label_413:
	mov	rdi, r15
	mov	rsi, r14
	mov	rdx, rbx
	call	memcpy
	mov	rax, r15
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_412:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4064b0

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
	mov	edx, OFFSET FLAT:.str_0
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x4064e0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_414
	test	rsi, rsi
	mov	ecx, 1
	je	.label_415
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_415
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_414:
	mov	ecx, 1
.label_415:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406530

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_416
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_418
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_416
.label_418:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_416
	call	__errno_location
	mov	r14, rax
	mov	ebp, dword ptr [r14]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_417
	mov	dword ptr [r14], ebp
	mov	eax, 0xffffffff
.label_417:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_416:
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fclose
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_419
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_419
	test	byte ptr [rbx + 1], 1
	je	.label_419
	xor	esi, esi
	mov	edx, 1
	mov	rdi, rbx
	call	rpl_fseeko
.label_419:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4065f0

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
	jne	.label_420
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_420
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_421
.label_420:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_421:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_422
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_422:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406660

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
	je	.label_423
	cmp	r15, -2
	jb	.label_423
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_423
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_423:
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
	#Procedure 0x4066c0

	.globl _obstack_begin
	.type _obstack_begin, @function
_obstack_begin:
	push	r15
	push	r14
	push	rbx
	mov	r14, rdi
	mov	qword ptr [r14 + 0x38], rcx
	mov	qword ptr [r14 + 0x40], r8
	and	byte ptr [r14 + 0x50], 0xfe
	test	rdx, rdx
	mov	ebx, 0x10
	cmovne	rbx, rdx
	test	rsi, rsi
	mov	edi, 0xfe0
	cmovne	rdi, rsi
	mov	qword ptr [r14], rdi
	lea	r15, [rbx - 1]
	mov	qword ptr [r14 + 0x30], r15
	call	rcx
	mov	qword ptr [r14 + 8], rax
	test	rax, rax
	je	.label_424
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
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_424:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406750

	.globl _obstack_begin_1
	.type _obstack_begin_1, @function
_obstack_begin_1:
	push	r15
	push	r14
	push	rbx
	mov	rbx, rdi
	mov	qword ptr [rbx + 0x38], rcx
	mov	qword ptr [rbx + 0x40], r8
	mov	qword ptr [rbx + 0x48], r9
	or	byte ptr [rbx + 0x50], 1
	test	rdx, rdx
	mov	r14d, 0x10
	cmovne	r14, rdx
	test	rsi, rsi
	mov	eax, 0xfe0
	cmovne	rax, rsi
	mov	qword ptr [rbx], rax
	lea	r15, [r14 - 1]
	mov	qword ptr [rbx + 0x30], r15
	mov	rdi, r9
	mov	rsi, rax
	call	rcx
	mov	qword ptr [rbx + 8], rax
	test	rax, rax
	je	.label_425
	lea	rcx, [rax + r15 + 0x10]
	neg	r14
	and	r14, rcx
	mov	qword ptr [rbx + 0x10], r14
	mov	qword ptr [rbx + 0x18], r14
	mov	rcx, qword ptr [rbx]
	add	rcx, rax
	mov	qword ptr [rax], rcx
	mov	qword ptr [rbx + 0x20], rcx
	mov	qword ptr [rax + 8], 0
	and	byte ptr [rbx + 0x50], 0xf9
	mov	eax, 1
	pop	rbx
	pop	r14
	pop	r15
	ret	
.label_425:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4067e0

	.globl _obstack_newchunk
	.type _obstack_newchunk, @function
_obstack_newchunk:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r12, rdi
	mov	rcx, qword ptr [r12]
	mov	r14, qword ptr [r12 + 0x18]
	sub	r14, qword ptr [r12 + 0x10]
	lea	rdx, [r14 + rsi]
	add	rdx, qword ptr [r12 + 0x30]
	setb	al
	mov	rbx, r14
	shr	rbx, 3
	add	rbx, 0x64
	add	rbx, rdx
	cmovb	rbx, rdx
	cmp	rbx, rcx
	cmovb	rbx, rcx
	add	rsi, r14
	jb	.label_426
	test	al, al
	jne	.label_426
	mov	r15, qword ptr [r12 + 8]
	test	byte ptr [r12 + 0x50], 1
	jne	.label_430
	mov	rdi, rbx
	call	qword ptr [r12 + 0x38]
	jmp	.label_429
.label_430:
	mov	rdi, qword ptr [r12 + 0x48]
	mov	rsi, rbx
	call	qword ptr [r12 + 0x38]
.label_429:
	mov	r13, rax
	test	r13, r13
	je	.label_426
	mov	qword ptr [r12 + 8], r13
	mov	qword ptr [r13 + 8], r15
	add	rbx, r13
	mov	qword ptr [r12 + 0x20], rbx
	mov	qword ptr [r13], rbx
	mov	rsi, qword ptr [r12 + 0x10]
	mov	qword ptr [rsp + 8], rsi
	mov	rbp, qword ptr [r12 + 0x30]
	lea	rbx, [r13 + rbp + 0x10]
	mov	qword ptr [rsp + 0x10], r15
	mov	r15, rbp
	not	r15
	and	rbx, r15
	mov	rdi, rbx
	mov	rdx, r14
	call	memcpy
	test	byte ptr [r12 + 0x50], 2
	jne	.label_428
	mov	rax, qword ptr [rsp + 0x10]
	lea	rax, [rax + rbp + 0x10]
	and	rax, r15
	cmp	qword ptr [rsp + 8], rax
	jne	.label_428
	mov	rcx, qword ptr [rsp + 0x10]
	mov	rax, qword ptr [rcx + 8]
	mov	qword ptr [r13 + 8], rax
	test	byte ptr [r12 + 0x50], 1
	mov	rsi, rcx
	jne	.label_427
	mov	rdi, rsi
	call	qword ptr [r12 + 0x40]
	jmp	.label_428
.label_427:
	mov	rdi, qword ptr [r12 + 0x48]
	call	qword ptr [r12 + 0x40]
.label_428:
	mov	qword ptr [r12 + 0x10], rbx
	add	r14, rbx
	mov	qword ptr [r12 + 0x18], r14
	and	byte ptr [r12 + 0x50], 0xfd
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_426:
	call	qword ptr [word ptr [rip + obstack_alloc_failed_handler]]
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406920

	.globl _obstack_allocated_p
	.type _obstack_allocated_p, @function
_obstack_allocated_p:
	mov	rcx, qword ptr [rdi + 8]
	jmp	.label_431
	nop	word ptr cs:[rax + rax]
.label_434:
	mov	rcx, qword ptr [rcx + 8]
.label_431:
	test	rcx, rcx
	je	.label_432
	cmp	rcx, rsi
	jae	.label_434
	mov	eax, 1
	cmp	qword ptr [rcx], rsi
	jb	.label_434
	jmp	.label_433
.label_432:
	xor	eax, eax
.label_433:
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406950

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
	je	.label_438
	nop	word ptr cs:[rax + rax]
.label_440:
	cmp	rsi, r14
	jae	.label_435
	cmp	qword ptr [rsi], r14
	jae	.label_439
.label_435:
	mov	rbx, qword ptr [rsi + 8]
	test	byte ptr [r15 + 0x50], 1
	jne	.label_441
	mov	rdi, rsi
	call	qword ptr [r15 + 0x40]
	jmp	.label_437
	nop	
.label_441:
	mov	rdi, qword ptr [r15 + 0x48]
	call	qword ptr [r15 + 0x40]
.label_437:
	or	byte ptr [r15 + 0x50], 2
	test	rbx, rbx
	mov	rsi, rbx
	jne	.label_440
.label_438:
	test	r14, r14
	je	.label_436
	call	abort
.label_439:
	mov	qword ptr [r15 + 0x18], r14
	mov	qword ptr [r15 + 0x10], r14
	mov	rax, qword ptr [rsi]
	mov	qword ptr [r15 + 0x20], rax
	mov	qword ptr [r15 + 8], rsi
.label_436:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069d0

	.globl _obstack_memory_used
	.type _obstack_memory_used, @function
_obstack_memory_used:
	mov	rcx, qword ptr [rdi + 8]
	xor	eax, eax
	jmp	.label_442
	nop	dword ptr [rax + rax]
.label_443:
	sub	rax, rcx
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rcx + 8]
.label_442:
	test	rcx, rcx
	jne	.label_443
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069f0

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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rdi, rbx
	call	__fprintf_chk
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406a30

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	push	r14
	push	rbx
	mov	rbx, rdi
	call	__fpending
	mov	r14, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, rbx
	call	rpl_fclose
	test	bpl, 0x20
	jne	.label_445
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_444
	test	cl, cl
	jne	.label_444
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
	jmp	.label_444
.label_445:
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_444
	call	__errno_location
	mov	dword ptr [rax], 0
.label_444:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a90

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_447
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_448
	cmp	byte ptr [rax + 1], 0
	je	.label_446
.label_448:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_447
.label_446:
	xor	ebx, ebx
.label_447:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rax
	mov	edi, 0xe
	call	rpl_nl_langinfo
	test	rax, rax
	mov	ecx, OFFSET FLAT:.str_2
	cmovne	rcx, rax
	mov	eax, OFFSET FLAT:.str.1_5
	cmp	byte ptr [rcx], 0
	je	.label_449
	mov	rax, rcx
.label_449:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section .text
	.align	32
	#Procedure 0x406b00

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