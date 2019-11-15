	.section	.text
	.align	32
	#Procedure 0x401e00

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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.3
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	mov	edx, 3
	xor	eax, eax
	mov	rsi, rcx
	call	__printf_chk
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
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
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
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402010

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
	push	rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.29
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	pop	rax
	jmp	fputs_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402040

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.30
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.14
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
	mov	ebx, OFFSET FLAT:.str.14
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.38
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
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.42
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.14
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.14
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.43
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.44
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
	#Procedure 0x402160

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	r14, rsi
	mov	r12d, edi
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdi, qword ptr [r14]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	mov	edi, OFFSET FLAT:.str.16
	mov	esi, OFFSET FLAT:.str.17_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.16
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	qword ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x20], -1
	xor	r15d, r15d
	movabs	rbp, 0x3fffffffffffffff
	movabs	r13, 0x7fffffffffffffff
	jmp	.label_13
.label_659:
	mov	byte ptr [rsp + 0x2e], 1
	nop	dword ptr [rax + rax]
.label_13:
	mov	edx, OFFSET FLAT:.str.18_0
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	edi, r12d
	mov	rsi, r14
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_12
	lea	ecx, [rax - 0x73]
	cmp	ecx, 0xd
	ja	.label_14
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_15]]
.label_655:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	call	dcgettext
	mov	dword ptr [rsp], 0
	xor	esi, esi
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.22
	mov	rdi, rbx
	mov	rcx, r13
	mov	r9, rax
	call	xnumtoumax
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_13
.label_14:
	cmp	eax, 0x6e
	je	.label_26
	cmp	eax, 0x66
	jne	.label_17
	mov	byte ptr [rsp + 0x10], 1
	jmp	.label_13
.label_656:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	test	rsi, rsi
	je	.label_28
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.21
	mov	edx, OFFSET FLAT:remove_args
	mov	ecx, OFFSET FLAT:remove_methods
	mov	r8d, 4
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + remove_methods]]
	mov	dword ptr [rsp + 0x28], eax
	jmp	.label_13
.label_657:
	mov	byte ptr [rsp + 0x2c], 1
	jmp	.label_13
.label_658:
	mov	byte ptr [rsp + 0x2d], 1
	jmp	.label_13
.label_660:
	test	r15, r15
	je	.label_23
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rdi, r15
	call	strcmp
	test	eax, eax
	jne	.label_25
.label_23:
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	jmp	.label_13
.label_26:
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	mov	edx, 5
	call	dcgettext
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, rbp
	mov	r8, rax
	call	xdectoumax
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_13
.label_28:
	mov	dword ptr [rsp + 0x28], 3
	jmp	.label_13
.label_12:
	cmp	eax, -1
	jne	.label_20
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, r12d
	je	.label_22
	mov	rsi, -1
	mov	rdi, r15
	call	randint_all_new
	mov	qword ptr [word ptr [rip + randint_source]],  rax
	test	rax, rax
	je	.label_27
	mov	edi, OFFSET FLAT:clear_random_data
	call	atexit
	xor	eax, eax
	cmp	ebx, r12d
	jge	.label_11
	sub	r12d, ebx
	lea	rbp, [r14 + rbx*8]
	mov	bl, 1
	lea	r14, [rsp + 0x10]
	nop	dword ptr [rax]
.label_24:
	mov	rdx, qword ptr [rbp]
	xor	edi, edi
	mov	esi, 3
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	r15, rax
	mov	rax, qword ptr [rbp]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_18
	cmp	byte ptr [rax + 1], 0
	je	.label_19
.label_18:
	mov	rdi, qword ptr [rbp]
	mov	rdx,  qword ptr [word ptr [rip + randint_source]]
	mov	rsi, r15
	mov	rcx, r14
	call	wipefile
	jmp	.label_21
.label_19:
	mov	rsi,  qword ptr [word ptr [rip + randint_source]]
	mov	rdi, r15
	mov	rdx, r14
	call	wipefd
	nop	word ptr [rax + rax]
.label_21:
	and	bl, al
	mov	rdi, r15
	call	free
	add	rbp, 8
	dec	r12d
	jne	.label_24
	xor	bl, 1
	movzx	eax, bl
.label_11:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_20:
	cmp	eax, 0xffffff7d
	je	.label_16
	cmp	eax, 0xffffff7e
	jne	.label_17
	xor	edi, edi
	call	usage
.label_16:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.25
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_17:
	mov	edi, 1
	call	usage
.label_22:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.26
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
.label_27:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r15
	call	quotearg_n_style_colon
	mov	rcx, rax
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebx
	call	error
.label_25:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402500

	.globl clear_random_data
	.type clear_random_data, @function
clear_random_data:
	mov	rdi,  qword ptr [word ptr [rip + randint_source]]
	jmp	randint_all_free
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402510

	.globl wipefd
	.type wipefd, @function
wipefd:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	edi, 1
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	test	eax, eax
	js	.label_31
	test	ah, 4
	jne	.label_32
	mov	edi, 1
	mov	rsi, r14
	mov	rdx, rbx
	mov	rcx, r15
	call	do_wipefd
	mov	bl, al
	jmp	.label_30
.label_31:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.58
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	jmp	.label_29
.label_32:
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.59
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_29:
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_30:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0

	.globl wipefile
	.type wipefile, @function
wipefile:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rcx
	mov	r12, rdx
	mov	r14, rsi
	mov	r13, rdi
	mov	esi, 0x101
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_35
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	jne	.label_34
	cmp	byte ptr [r15], 0
	je	.label_34
	mov	esi, 0x80
	mov	rdi, r13
	call	chmod
	test	eax, eax
	jne	.label_34
	mov	esi, 0x101
	xor	eax, eax
	mov	rdi, r13
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	js	.label_34
.label_35:
	mov	edi, ebx
	mov	rsi, r14
	mov	rdx, r12
	mov	rcx, r15
	call	do_wipefd
	mov	bpl, al
	mov	edi, ebx
	call	close
	test	eax, eax
	je	.label_36
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_37
.label_34:
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.75
.label_37:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r14
	call	error
.label_33:
	mov	al, bl
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_36:
	test	bpl, bpl
	je	.label_38
	mov	bl, 1
	cmp	dword ptr [r15 + 0x18], 0
	je	.label_33
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	wipename
	mov	bl, al
	jmp	.label_33
.label_38:
	xor	ebx, ebx
	jmp	.label_33
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4026b0

	.globl do_wipefd
	.type do_wipefd, @function
do_wipefd:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xd8
	mov	rbx, rcx
	mov	r13, rdx
	mov	qword ptr [rsp + 0x38], rsi
	mov	r15d, edi
	xor	r12d, r12d
	cmp	byte ptr [rbx + 0x1c], 0
	je	.label_51
	movzx	r12d, byte ptr [rbx + 0x1e]
	add	r12, qword ptr [rbx + 8]
.label_51:
	lea	rsi, [rsp + 0x48]
	mov	edi, r15d
	call	__fstat
	test	eax, eax
	je	.label_61
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	jmp	.label_41
.label_61:
	mov	ebp, 0xf000
	mov	eax, dword ptr [rsp + 0x60]
	and	eax, ebp
	cmp	eax, 0x2000
	jne	.label_45
	mov	edi, r15d
	call	isatty
	test	eax, eax
	jne	.label_52
.label_45:
	and	ebp, dword ptr [rsp + 0x60]
	cmp	ebp, 0xc000
	je	.label_52
	cmp	ebp, 0x8000
	je	.label_55
	cmp	ebp, 0x1000
	jne	.label_56
.label_52:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
.label_58:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_41:
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	call	error
.label_63:
	mov	al, bpl
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_55:
	cmp	qword ptr [rsp + 0x78], 0
	js	.label_43
.label_56:
	movabs	r14, 0x2000000000000001
	mov	rdi, qword ptr [rbx + 8]
	mov	esi, 4
	call	xnmalloc
	mov	qword ptr [rsp + 0x28], rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	cmp	rcx, -1
	je	.label_53
	xor	ebp, ebp
	cmp	eax, 0x8000
	jne	.label_57
	mov	qword ptr [rsp + 0x10], r12
	mov	dword ptr [rsp + 0x34], r15d
	mov	rbp, qword ptr [rsp + 0x78]
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rax, r14
	mov	ecx, 0x200
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rdx, rax
	cmovg	rdx, rax
	cmp	rbp, rdx
	jl	.label_39
	xor	ebp, ebp
	jmp	.label_39
.label_53:
	cmp	eax, 0x8000
	jne	.label_64
	mov	dword ptr [rsp + 0x34], r15d
	mov	rdi, qword ptr [rsp + 0x78]
	xor	ebp, ebp
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_50
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], r12
	jmp	.label_39
.label_57:
	mov	qword ptr [rsp + 0x10], r12
	mov	dword ptr [rsp + 0x34], r15d
	jmp	.label_39
.label_43:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.62
	jmp	.label_58
.label_64:
	mov	qword ptr [rsp + 0x10], r12
	xor	ebp, ebp
	xor	esi, esi
	mov	edx, 2
	mov	edi, r15d
	mov	dword ptr [rsp + 0x34], r15d
	call	lseek
	test	rax, rax
	mov	rcx, -1
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	jmp	.label_39
.label_50:
	mov	qword ptr [rsp + 0x10], r12
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rax, r14
	mov	ecx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rax
	test	rax, rax
	cmovle	rsi, rcx
	mov	rax, rdi
	cqo	
	idiv	rsi
	xor	ebp, ebp
	cmp	rdi, rsi
	cmovl	rbp, rdi
	test	rdi, rdi
	cmove	rbp, rdi
	test	rdx, rdx
	je	.label_47
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rax, r14
	mov	ecx, 0x200
	mov	esi, 0x200
	cmovb	rsi, rax
	test	rax, rax
	cmovle	rsi, rcx
	sub	rsi, rdx
	movabs	rax, 0x7fffffffffffffff
	sub	rax, rdi
	cmp	rsi, rax
	cmovle	rax, rsi
	add	rdi, rax
	mov	qword ptr [rsp + 0x18], rdi
	jmp	.label_39
.label_47:
	mov	qword ptr [rsp + 0x18], rdi
.label_39:
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rsp + 0x28]
	mov	rdx, r13
	call	genpattern
	mov	rdi, r13
	call	randint_get_source
	mov	r12, rax
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	lea	r13, [rsp + 0x48]
	lea	r15, [rsp + 0x40]
	jmp	.label_54
	nop	word ptr cs:[rax + rax]
.label_48:
	xor	ebp, ebp
.label_54:
	test	rbp, rbp
	je	.label_59
	xor	r14d, r14d
	jmp	.label_60
	nop	dword ptr [rax]
.label_59:
	mov	rax, qword ptr [rsp + 0x18]
	test	rax, rax
	mov	rbp, rax
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	mov	r14, qword ptr [rsp + 0x10]
	je	.label_62
.label_60:
	mov	qword ptr [rsp + 0x40], rbp
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_42:
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rbx + 0x1e]
	add	rcx, rax
	cmp	rbp, rcx
	jae	.label_48
	xor	r8d, r8d
	cmp	rbp, rax
	jae	.label_49
	mov	rax, qword ptr [rsp + 0x28]
	mov	r8d, dword ptr [rax + rbp*4]
.label_49:
	inc	rbp
	mov	qword ptr [rsp + 8], r14
	mov	qword ptr [rsp], rbp
	mov	edi, dword ptr [rsp + 0x34]
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, r15
	mov	r9, r12
	call	dopass
	test	eax, eax
	je	.label_42
	xor	ecx, ecx
	mov	qword ptr [rsp + 0x20], rcx
	test	eax, eax
	jns	.label_42
	xor	ebp, ebp
.label_44:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	and	bpl, 1
	jmp	.label_63
.label_62:
	cmp	dword ptr [rbx + 0x18], 0
	je	.label_40
	xor	esi, esi
	mov	edi, dword ptr [rsp + 0x34]
	call	ftruncate
	test	eax, eax
	je	.label_46
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	cmp	eax, 0x8000
	mov	rbp, qword ptr [rsp + 0x20]
	jne	.label_44
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	call	error
	jmp	.label_44
.label_40:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_44
.label_46:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_44
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402a80

	.globl genpattern
	.type genpattern, @function
genpattern:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	r12, rdi
	mov	ebx, OFFSET FLAT:patterns
	xor	r15d, r15d
	test	rsi, rsi
	je	.label_65
	mov	rcx, r12
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_79
	nop	word ptr cs:[rax + rax]
.label_81:
	lea	rdx, [rbp*4]
	mov	r14, rcx
	mov	rdi, r14
	mov	rsi, rbx
	call	memcpy
	mov	rcx, r14
	lea	rbx, [rbx + rbp*4]
	lea	rcx, [rcx + rbp*4]
.label_79:
	mov	r14, r13
	jmp	.label_74
	nop	word ptr cs:[rax + rax]
.label_71:
	add	r15, rbp
	mov	r14, rax
.label_74:
	mov	rax, rbx
	nop	dword ptr [rax]
.label_73:
	mov	rbx, rax
	movsxd	rbp, dword ptr [rbx]
	test	rbp, rbp
	mov	eax, OFFSET FLAT:patterns
	je	.label_73
	add	rbx, 4
	test	ebp, ebp
	jns	.label_69
	neg	rbp
	mov	rax, r14
	sub	rax, rbp
	ja	.label_71
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
.label_69:
	mov	r13, r14
	sub	r13, rbp
	jae	.label_81
	cmp	r14, 2
	jb	.label_66
	lea	rax, [r14 + r14*2]
	cmp	rax, rbp
	jb	.label_66
	nop	
.label_80:
	mov	r13, rcx
	cmp	rbp, r14
	je	.label_72
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	call	randint_choose
	cmp	rax, r14
	jae	.label_77
.label_72:
	mov	eax, dword ptr [rbx]
	mov	rcx, r13
	mov	dword ptr [rcx], eax
	add	rcx, 4
	dec	r14
	jmp	.label_78
.label_77:
	mov	rcx, r13
.label_78:
	add	rbx, 4
	dec	rbp
	test	r14, r14
	jne	.label_80
	jmp	.label_68
.label_75:
	add	r15, r14
.label_68:
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_65
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbx, rax
	sub	rbx, r15
	dec	r15
	dec	rax
	mov	qword ptr [rsp], rax
	xor	ebp, ebp
	mov	r13, r15
	xor	r14d, r14d
	nop	word ptr [rax + rax]
.label_67:
	cmp	r13, r15
	jbe	.label_76
	lea	rsi, [rbp + rbx]
	mov	rdi, qword ptr [rsp + 8]
	call	randint_choose
	add	rax, r14
	mov	ecx, dword ptr [r12 + r14*4]
	mov	edx, dword ptr [r12 + rax*4]
	mov	dword ptr [r12 + r14*4], edx
	mov	dword ptr [r12 + rax*4], ecx
	jmp	.label_70
	nop	dword ptr [rax]
.label_76:
	add	r13, qword ptr [rsp]
	mov	eax, dword ptr [r12 + r14*4]
	mov	dword ptr [r12 + rbx*4], eax
	inc	rbx
	mov	dword ptr [r12 + r14*4], 0xffffffff
.label_70:
	sub	r13, r15
	inc	r14
	dec	rbp
	cmp	qword ptr [rsp + 0x10], r14
	jne	.label_67
.label_65:
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_66:
	add	r15, r14
	jmp	.label_68
	nop	
	.section	.text
	.align	32
	#Procedure 0x402c30

	.globl dopass
	.type dopass, @function
dopass:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x878
	mov	qword ptr [rsp + 0x68], r9
	mov	ebx, r8d
	mov	dword ptr [rsp + 0x84], ebx
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0xa8], rdx
	mov	qword ptr [rsp + 0xb8], rsi
	mov	r15d, edi
	mov	dword ptr [rsp + 0xa0], r15d
	mov	r12, qword ptr [rcx]
	call	getpagesize
	movsxd	rbp, eax
	mov	edi, ebx
	call	periodic_pattern
	test	al, al
	mov	eax, 0xf000
	mov	r13d, 0x10000
	cmovne	r13, rax
	mov	rax, r13
	or	rax, 2
	movabs	rcx, 0xaaaaaaaaaaaaaaab
	mul	rcx
	shr	rdx, 1
	lea	r14, [rdx + rdx*2]
	lea	rdi, [rbp + r14 - 1]
	call	xmalloc
	mov	qword ptr [rsp + 0x70], rax
	mov	rdi, rax
	mov	rsi, rbp
	mov	ebp, r15d
	call	ptr_align
	mov	r15, rax
	mov	qword ptr [rsp + 0x98], r15
	test	r12, r12
	setg	al
	cmp	r12, r13
	setb	cl
	and	cl, al
	mov	byte ptr [rsp + 0xa7], cl
	jne	.label_114
	mov	esi, 1
	mov	edi, ebp
	call	direct_mode
.label_114:
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0xb8]
	call	dorewind
	test	al, al
	je	.label_82
	mov	ebx, dword ptr [rsp + 0x84]
	test	ebx, ebx
	js	.label_84
	mov	rdi, r12
	call	known
	test	al, al
	mov	rdx, r14
	cmovne	rdx, r12
	cmp	r12, r14
	cmovae	rdx, r14
	mov	edi, ebx
	mov	rsi, r15
	call	fillpattern
	lea	rsi, [rsp + 0x871]
	mov	rdi, r15
	jmp	.label_94
.label_82:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.64
	jmp	.label_93
.label_84:
	lea	rsi, [rsp + 0x871]
	xor	edi, edi
.label_94:
	call	passname
	mov	rcx, qword ptr [rsp + 0x8b0]
	mov	r14, qword ptr [rsp + 0x8b8]
	test	r14, r14
	mov	rbx, r13
	mov	r13, rcx
	mov	qword ptr [rsp + 0x60], rbx
	je	.label_98
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rax, [rsp + 0x871]
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	r8, r13
	mov	r9, r14
	call	error
	xor	edi, edi
	call	time
	add	rax, 5
.label_98:
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, OFFSET FLAT:.str_0
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	xor	r13d, r13d
	jmp	.label_103
.label_107:
	mov	r15, qword ptr [rsp + 0x98]
	nop	word ptr cs:[rax + rax]
.label_103:
	mov	rdi, r12
	call	known
	mov	byte ptr [rsp + 0xb7], al
	test	al, al
	mov	r14, rbx
	je	.label_85
	mov	rax, r12
	sub	rax, r13
	cmp	rax, rbx
	mov	r14, rbx
	jae	.label_85
	cmp	r12, r13
	mov	r14, rax
	jle	.label_88
.label_85:
	mov	qword ptr [rsp + 0x78], r12
	cmp	dword ptr [rsp + 0x84], 0
	jns	.label_90
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, r15
	mov	rdx, r14
	call	randread
.label_90:
	mov	qword ptr [rsp + 0xb8], r13
	test	r14, r14
	je	.label_96
	mov	al, byte ptr [rsp + 0xb7]
	xor	al, 1
	mov	byte ptr [rsp + 0x97], al
	xor	r13d, r13d
	nop	word ptr cs:[rax + rax]
.label_111:
	lea	rsi, [r15 + r13]
	mov	rdx, r14
	sub	rdx, r13
	mov	edi, ebp
	call	write
	mov	r12, rax
	test	r12, r12
	jg	.label_112
	cmp	byte ptr [rsp + 0xb7], 0
	jne	.label_108
	test	r12, r12
	je	.label_109
	call	__errno_location
	cmp	dword ptr [rax], 0x1c
	je	.label_109
.label_108:
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	test	byte ptr [rsp + 0xa7], 1
	jne	.label_115
	cmp	dword ptr [r15], 0x16
	jne	.label_115
	xor	esi, esi
	mov	ebp, dword ptr [rsp + 0xa0]
	mov	edi, ebp
	call	direct_mode
	mov	byte ptr [rsp + 0xa7], 1
	xor	r12d, r12d
	jmp	.label_118
	nop	dword ptr [rax]
.label_115:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rdi, [r13 + rax]
	lea	rsi, [rsp + 0x350]
	call	umaxtostr
	mov	rbx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, r12
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	r8, rbx
	call	error
	cmp	ebp, 5
	setne	al
	or	al, byte ptr [rsp + 0x97]
	jne	.label_95
	mov	r12, r13
	or	r12, 0x1ff
	cmp	r12, r14
	jae	.label_95
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [r12 + rax + 1]
	xor	edx, edx
	mov	ebp, dword ptr [rsp + 0xa0]
	mov	edi, ebp
	call	lseek
	cmp	rax, -1
	je	.label_105
	inc	r12
	sub	r12, r13
	mov	al, 1
	mov	qword ptr [rsp + 0x88], rax
.label_118:
	mov	r15, qword ptr [rsp + 0x98]
.label_112:
	add	r13, r12
	cmp	r14, r13
	ja	.label_111
.label_83:
	mov	r14, qword ptr [rsp + 0xa8]
	mov	r12, qword ptr [rsp + 0x78]
.label_86:
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x8b8]
	jmp	.label_116
	nop	word ptr [rax + rax]
.label_96:
	xor	r13d, r13d
	mov	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x8b8]
	mov	r14, qword ptr [rsp + 0xa8]
.label_116:
	movabs	rax, 0x7fffffffffffffff
	mov	rdx, qword ptr [rsp + 0xb8]
	sub	rax, rdx
	cmp	rax, r13
	jb	.label_87
	mov	qword ptr [rsp + 0xa8], r14
	add	rdx, r13
	test	rcx, rcx
	mov	r13, rdx
	je	.label_103
	cmp	r13, r12
	jne	.label_89
	mov	rax, qword ptr [rsp + 0x40]
	cmp	byte ptr [rax], 0
	jne	.label_91
.label_89:
	xor	edi, edi
	call	time
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0x48], rax
	jg	.label_103
.label_91:
	mov	qword ptr [rsp + 0x98], r15
	mov	edx, 0x1b2
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r13
	lea	rsi, [rsp + 0x350]
	call	human_readable
	mov	r15, r12
	mov	r12, rax
	cmp	r13, r15
	je	.label_101
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	je	.label_106
.label_101:
	mov	qword ptr [rsp + 0xb8], r13
	mov	rdi, r15
	call	known
	test	al, al
	mov	r13, qword ptr [rsp + 0x8b0]
	mov	r14, r13
	je	.label_110
	mov	dword ptr [rsp + 0xa0], ebp
	test	r15, r15
	mov	r13d, 0x64
	mov	r14, qword ptr [rsp + 0xb8]
	je	.label_113
	movabs	rax, 0x28f5c28f5c28f5c
	cmp	r14, rax
	ja	.label_117
	imul	rax, r14, 0x64
	xor	edx, edx
	div	r15
	jmp	.label_119
.label_109:
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rsp + 0xb8]
	sub	rax, rcx
	cmp	r13, rax
	ja	.label_83
	lea	r12, [r13 + rcx]
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rax], r12
	mov	r14, qword ptr [rsp + 0xa8]
	jmp	.label_86
.label_110:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.69
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	qword ptr [rsp + 8], r12
	lea	rax, [rsp + 0x871]
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r8, r14
	mov	r9, qword ptr [rsp + 0x8b8]
	call	error
	jmp	.label_99
.label_106:
	mov	r12, r15
	mov	r15, qword ptr [rsp + 0x98]
	jmp	.label_103
.label_117:
	mov	rax, r15
	movabs	rcx, 0xa3d70a3d70a3d70b
	imul	rcx
	mov	rcx, rdx
	add	rcx, r15
	mov	rax, rcx
	shr	rax, 0x3f
	sar	rcx, 6
	add	rcx, rax
	xor	edx, edx
	mov	rax, r14
	div	rcx
.label_119:
	mov	r13, rax
.label_113:
	mov	edx, 0x1b0
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r15
	lea	rsi, [rsp + 0xc0]
	call	human_readable
	mov	rbp, rax
	cmp	r14, r15
	cmove	r12, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	dword ptr [rsp + 0x18], r13d
	mov	qword ptr [rsp + 0x10], rbp
	mov	qword ptr [rsp + 8], r12
	lea	rax, [rsp + 0x871]
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x8b0]
	mov	r9, qword ptr [rsp + 0x8b8]
	call	error
	mov	ebp, dword ptr [rsp + 0xa0]
.label_99:
	mov	qword ptr [rsp + 0xa8], r13
	mov	edx, 0x28c
	lea	r14, [rsp + 0x5e0]
	mov	rdi, r14
	mov	rsi, r12
	call	__strcpy_chk
	mov	rax, qword ptr [rsp + 0x50]
	lea	rax, [rax + 5]
	mov	qword ptr [rsp + 0x48], rax
	mov	edi, ebp
	mov	rsi, r13
	call	dosync
	test	eax, eax
	je	.label_104
	call	__errno_location
	mov	cl, 1
	mov	qword ptr [rsp + 0x88], rcx
	cmp	dword ptr [rax], 5
	mov	qword ptr [rsp + 0x40], r14
	mov	r12, r15
	mov	r13, qword ptr [rsp + 0xb8]
	je	.label_107
	jmp	.label_95
.label_104:
	mov	qword ptr [rsp + 0x40], r14
	mov	r12, r15
	mov	r13, qword ptr [rsp + 0xb8]
	mov	r15, qword ptr [rsp + 0x98]
	jmp	.label_103
.label_105:
	mov	ebx, dword ptr [r15]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
.label_93:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0xa8]
.label_92:
	call	error
.label_95:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_102:
	mov	eax, 0xffffffff
.label_100:
	add	rsp, 0x878
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_87:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.68
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	jmp	.label_92
.label_88:
	mov	edi, ebp
	mov	rsi, qword ptr [rsp + 0xa8]
	call	dosync
	test	eax, eax
	je	.label_97
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rax, qword ptr [rsp + 0x88]
	and	al, 1
	cmp	ebp, 5
	movzx	ecx, al
	mov	eax, 1
	cmovne	eax, ecx
	je	.label_100
	jmp	.label_102
.label_97:
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rax, qword ptr [rsp + 0x88]
	and	al, 1
	movzx	eax, al
	jmp	.label_100
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033c0

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	dec	rsi
	jmp	randint_genmax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4033d0

	.globl periodic_pattern
	.type periodic_pattern, @function
periodic_pattern:
	test	edi, edi
	jle	.label_120
	mov	ecx, edi
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	mov	ecx, edi
	shr	ecx, 4
	movzx	ecx, cl
	movzx	eax, ah
	movzx	edx, dil
	cmp	ecx, edx
	setne	dl
	cmp	ecx, eax
	setne	al
	or	al, dl
	ret	
.label_120:
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403410

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	mov	rax, rcx
	div	rsi
	sub	rcx, rdx
	mov	rax, rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403430

	.globl direct_mode
	.type direct_mode, @function
direct_mode:
	push	rbp
	push	rbx
	push	rax
	mov	ebp, esi
	mov	ebx, edi
	mov	esi, 3
	xor	eax, eax
	call	rpl_fcntl
	test	eax, eax
	jle	.label_121
	mov	ecx, eax
	or	ecx, 0x4000
	mov	edx, eax
	and	edx, 0xffffbfff
	test	bpl, bpl
	cmovne	edx, ecx
	cmp	edx, eax
	jne	.label_122
.label_121:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_122:
	mov	esi, 4
	xor	eax, eax
	mov	edi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	rpl_fcntl
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403480

	.globl dorewind
	.type dorewind, @function
dorewind:
	push	rbx
	sub	rsp, 0x10
	mov	ebx, edi
	mov	eax, 0xf000
	and	eax, dword ptr [rsi + 0x18]
	cmp	eax, 0x2000
	jne	.label_123
	mov	word ptr [rsp + 8], 6
	mov	dword ptr [rsp + 0xc], 1
	lea	rdx, [rsp + 8]
	mov	esi, 0x40086d01
	xor	eax, eax
	mov	edi, ebx
	call	ioctl
	test	eax, eax
	mov	al, 1
	je	.label_124
.label_123:
	xor	esi, esi
	xor	edx, edx
	mov	edi, ebx
	call	lseek
	mov	rbx, rax
	test	rbx, rbx
	jle	.label_125
	call	__errno_location
	mov	dword ptr [rax], 0x16
.label_125:
	test	rbx, rbx
	sete	al
.label_124:
	add	rsp, 0x10
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4034f0

	.globl known
	.type known, @function
known:
	test	rdi, rdi
	setns	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403500

	.globl fillpattern
	.type fillpattern, @function
fillpattern:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbp, rsi
	mov	ecx, edi
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	or	eax, ecx
	mov	ecx, edi
	shr	ecx, 4
	mov	byte ptr [rbp], cl
	mov	byte ptr [rbp + 1], ah
	mov	byte ptr [rbp + 2], dil
	mov	r12d, edi
	mov	ebx, 3
	cmp	r14, 6
	jb	.label_126
	mov	r15, r14
	shr	r15, 1
.label_130:
	lea	rdi, [rbp + rbx]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, rbx
	cmp	rbx, r15
	jbe	.label_130
.label_126:
	cmp	rbx, r14
	jae	.label_128
	lea	rdi, [rbp + rbx]
	mov	rdx, r14
	sub	rdx, rbx
	mov	rsi, rbp
	call	memcpy
.label_128:
	xor	eax, eax
	mov	ecx, r12d
	test	ch, 0x10
	je	.label_127
	test	r14, r14
	je	.label_127
	nop	
.label_129:
	xor	byte ptr [rbp + rax], 0x80
	add	rax, 0x200
	cmp	rax, r14
	jb	.label_129
.label_127:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4035a0

	.globl passname
	.type passname, @function
passname:
	mov	r10, rsi
	test	rdi, rdi
	je	.label_131
	push	rax
	movzx	r8d, byte ptr [rdi]
	movzx	r9d, byte ptr [rdi + 1]
	movzx	eax, byte ptr [rdi + 2]
	mov	dword ptr [rsp], eax
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdi, r10
	call	__sprintf_chk
	pop	rax
	ret	
.label_131:
	mov	byte ptr [r10 + 6], 0
	mov	word ptr [r10 + 4], 0x6d6f
	mov	dword ptr [r10], 0x646e6172
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4035f0

	.globl dosync
	.type dosync, @function
dosync:
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	mov	r14, rsi
	mov	ebp, edi
	call	fdatasync
	xor	r12d, r12d
	test	eax, eax
	je	.label_132
	call	__errno_location
	mov	r15, rax
	mov	ebx, dword ptr [r15]
	mov	edi, ebx
	call	ignorable_sync_errno
	test	al, al
	je	.label_135
	mov	edi, ebp
	call	fsync
	test	eax, eax
	je	.label_132
	mov	ebx, dword ptr [r15]
	mov	edi, ebx
	call	ignorable_sync_errno
	test	al, al
	je	.label_134
	call	sync
	jmp	.label_132
.label_135:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	jmp	.label_133
.label_134:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.74
.label_133:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	mov	rcx, r14
	call	error
	mov	dword ptr [r15], ebx
	mov	r12d, 0xffffffff
.label_132:
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403690

	.globl ignorable_sync_errno
	.type ignorable_sync_errno, @function
ignorable_sync_errno:
	add	edi, -9
	cmp	edi, 0xd
	ja	.label_136
	mov	eax, 0x3001
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_136:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4036b0

	.globl wipename
	.type wipename, @function
wipename:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x20], rsi
	mov	r15, rdi
	call	xstrdup
	mov	rbx, rax
	mov	rdi, rbx
	call	last_component
	mov	r12, rax
	mov	rdi, rbx
	call	dir_name
	mov	r13, rax
	xor	edi, edi
	mov	esi, 3
	mov	rdx, r13
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	mov	qword ptr [rsp + 0x28], rax
	mov	r14d, 0xffffffff
	cmp	dword ptr [rbp + 0x18], 3
	jne	.label_137
	mov	esi, 0x10900
	xor	eax, eax
	mov	rdi, r13
	call	open_safer
	mov	r14d, eax
.label_137:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	byte ptr [rax + 0x1c], 0
	je	.label_144
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
.label_144:
	mov	qword ptr [rsp], r13
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 0x30]
	cmp	dword ptr [rax + 0x18], 1
	je	.label_149
	mov	rdi, r12
	call	base_len
	mov	r13, rax
	test	r13, r13
	je	.label_149
	mov	rax, r12
	sub	rax, rbx
	add	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	nop	word ptr cs:[rax + rax]
.label_138:
	mov	esi, 0x30
	mov	rdi, r12
	mov	rdx, r13
	call	memset
	mov	byte ptr [r12 + r13], 0
	nop	word ptr cs:[rax + rax]
.label_146:
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r15
	mov	rcx, rbx
	call	renameatu
	test	eax, eax
	je	.label_150
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_139
	mov	rdi, r12
	mov	rsi, r13
	call	incname
	test	al, al
	jne	.label_146
	jmp	.label_139
	nop	
.label_150:
	test	r14d, r14d
	js	.label_141
	mov	edi, r14d
	mov	rsi, qword ptr [rsp + 0x28]
	call	dosync
	test	eax, eax
	je	.label_141
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_141:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	byte ptr [rax + 0x1c], 0
	je	.label_145
	mov	rax, qword ptr [rsp + 0x18]
	test	al, 1
	mov	rbp, r15
	cmovne	rbp, qword ptr [rsp + 0x20]
	xor	eax, eax
	mov	qword ptr [rsp + 0x18], rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_145:
	lea	rdx, [r13 + 1]
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	call	memcpy
.label_139:
	dec	r13
	jne	.label_138
.label_149:
	mov	rdi, r15
	call	unlink
	test	eax, eax
	je	.label_142
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
	mov	r15, qword ptr [rsp]
	jmp	.label_147
.label_142:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	byte ptr [rax + 0x1c], 0
	mov	r15, qword ptr [rsp]
	je	.label_148
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
.label_148:
	mov	r12, qword ptr [rsp + 8]
.label_147:
	test	r14d, r14d
	js	.label_140
	mov	edi, r14d
	mov	rsi, qword ptr [rsp + 0x28]
	call	dosync
	test	eax, eax
	je	.label_143
	xor	r12d, r12d
.label_143:
	mov	edi, r14d
	call	close
	test	eax, eax
	je	.label_140
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x28]
	call	error
.label_140:
	mov	rdi, rbx
	call	free
	mov	rdi, r15
	call	free
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	and	r12b, 1
	mov	al, r12b
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
	#Procedure 0x4039a0

	.globl incname
	.type incname, @function
incname:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rsi
	mov	r14, rdi
	nop	word ptr [rax + rax]
.label_152:
	test	rbx, rbx
	je	.label_151
	movsx	esi, byte ptr [r14 + rbx - 1]
	mov	edi, OFFSET FLAT:nameset
	mov	edx, 0x41
	call	memchr
	test	rax, rax
	je	.label_153
	lea	rcx, [rbx - 1]
	mov	al, byte ptr [rax + 1]
	test	al, al
	mov	dl, 0x30
	je	.label_155
	mov	dl, al
.label_155:
	mov	byte ptr [r14 + rbx - 1], dl
	mov	al, 1
	mov	rbx, rcx
	je	.label_152
	jmp	.label_154
.label_151:
	xor	eax, eax
.label_154:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_153:
	mov	edi, OFFSET FLAT:.str.81
	mov	esi, OFFSET FLAT:.str.82
	mov	edx, 0x40c
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.incname
	call	__assert_fail
	nop	
	.section	.text
	.align	32
	#Procedure 0x403a10

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	edi, 1
	jmp	usage
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403a20

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
	je	.label_157
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	
.label_156:
	mov	rdi, r15
	mov	rsi, r12
	mov	rdx, rbx
	call	strncmp
	test	eax, eax
	jne	.label_162
	mov	rdi, r15
	call	strlen
	cmp	rax, rbx
	je	.label_159
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_161
	mov	rax, qword ptr [rsp + 8]
	test	rax, rax
	je	.label_160
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	add	rdi, rax
	mov	rsi, r14
	mov	rdx, r13
	call	memcmp
	test	eax, eax
	je	.label_162
.label_160:
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_162
.label_161:
	mov	qword ptr [rsp + 0x18], rbp
	nop	word ptr [rax + rax]
.label_162:
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	inc	rbp
	add	r14, r13
	test	r15, r15
	jne	.label_156
	jmp	.label_158
.label_157:
	mov	qword ptr [rsp + 0x18], -1
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
.label_158:
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	cmove	rbp, qword ptr [rsp + 0x18]
.label_159:
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
	#Procedure 0x403b20

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
	je	.label_163
	mov	esi, OFFSET FLAT:.str.1_0
	jmp	.label_164
.label_163:
	mov	esi, OFFSET FLAT:.str_2
.label_164:
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
	#Procedure 0x403b90

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
	je	.label_166
	xor	r12d, r12d
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_168:
	test	rbp, rbp
	je	.label_165
	mov	rdi, r12
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	je	.label_167
.label_165:
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
	jmp	.label_169
	nop	word ptr cs:[rax + rax]
.label_167:
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
.label_169:
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	jne	.label_168
.label_166:
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
	#Procedure 0x403c90

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
	jns	.label_170
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
.label_170:
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
	#Procedure 0x403d00
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
	je	.label_171
	add	rbx, 8
	nop	word ptr cs:[rax + rax]
.label_172:
	mov	rdi, r12
	mov	rsi, r15
	mov	rdx, r14
	call	memcmp
	test	eax, eax
	mov	rax, r13
	je	.label_171
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	test	r13, r13
	mov	eax, 0
	jne	.label_172
.label_171:
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
	#Procedure 0x403d70
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d80
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d90

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_173
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_175
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_175
.label_173:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_174
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_175:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_3
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_176
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_174:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_176:
	mov	rdi, rbx
	call	quotearg_colon
	mov	rcx, rax
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_4
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
	#Procedure 0x403e50

	.globl dir_name
	.type dir_name, @function
dir_name:
	push	rax
	call	mdir_name
	test	rax, rax
	je	.label_177
	pop	rcx
	ret	
.label_177:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403e70

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
.label_179:
	mov	rax, rcx
	cmp	r14, rax
	jae	.label_178
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_179
.label_178:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x403eb0

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
	je	.label_180
	mov	rdi, r14
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	jne	.label_181
	mov	byte ptr [r14 + rbx], 0x2e
	mov	ebx, 1
.label_181:
	mov	byte ptr [r14 + rbx], 0
	mov	rax, r14
.label_180:
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f10

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_182:
	movzx	eax, byte ptr [rdi + 1]
	inc	rdi
	cmp	eax, 0x2f
	je	.label_182
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_185
	nop	word ptr cs:[rax + rax]
.label_184:
	inc	rax
	mov	cl, dl
.label_185:
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	je	.label_184
	test	sil, sil
	je	.label_186
	mov	dl, cl
	and	dl, 1
	je	.label_183
	xor	ecx, ecx
.label_183:
	test	dl, dl
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_184
.label_186:
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403f70

	.globl base_len
	.type base_len, @function
base_len:
	push	rbx
	mov	rbx, rdi
	call	strlen
	mov	rcx, rax
	nop	dword ptr [rax]
.label_188:
	mov	rax, rcx
	cmp	rax, 2
	jb	.label_187
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_188
.label_187:
	pop	rbx
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403fa0

	.globl open_safer
	.type open_safer, @function
open_safer:
	sub	rsp, 0xc8
	test	al, al
	je	.label_189
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_189:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	xor	edx, edx
	test	sil, 0x40
	je	.label_192
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	lea	rax, [rsp + 0xd0]
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	dword ptr [rsp + 0xb0], 0x10
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_191
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_190
.label_191:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_190:
	mov	edx, dword ptr [rax]
.label_192:
	xor	eax, eax
	call	open
	mov	edi, eax
	call	fd_safer
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404080

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x98
	mov	r13, r8
	mov	r15, rcx
	mov	r12d, edx
	mov	r14, rsi
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r12d
	and	eax, 3
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, r12d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x4c], eax
	mov	eax, 0x400
	mov	ecx, 0x3e8
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x74], ecx
	call	localeconv
	mov	rbx, rax
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, OFFSET FLAT:.str_5
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	mov	rbp, qword ptr [rbx + 8]
	mov	rbx, qword ptr [rbx + 0x10]
	mov	rdi, rbp
	call	strlen
	cmp	rax, 0x11
	mov	ecx, OFFSET FLAT:.str_0
	cmovb	rcx, rbp
	lea	rax, [r14 + 0x287]
	mov	qword ptr [rsp + 0x68], rax
	cmp	r13, r15
	jbe	.label_196
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	test	r15, r15
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	je	.label_204
	xor	edx, edx
	mov	rax, r12
	div	r15
	test	rdx, rdx
	jne	.label_204
	xor	edx, edx
	mov	rax, r12
	div	r15
	mov	rsi, rax
	xor	edx, edx
	mov	rax, rdi
	div	rsi
	mov	r14, rax
	add	rdx, rdx
	lea	rax, [rdx + rdx*4]
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	cmp	rdx, rsi
	movzx	ebp, al
	cmovae	ebp, edi
	jmp	.label_211
.label_196:
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	xor	edx, edx
	mov	rax, r15
	div	r13
	test	rdx, rdx
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	jne	.label_204
	xor	ebp, ebp
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	rcx, rax
	mov	r14, rcx
	imul	r14, rdi
	xor	edx, edx
	mov	rax, r14
	div	rcx
	cmp	rax, rdi
	mov	ecx, 0
	jne	.label_204
.label_211:
	mov	qword ptr [rsp + 0x38], rbx
	mov	r15d, r8d
	and	r15d, 0x10
	mov	ebx, 0xffffffff
	je	.label_228
	mov	r9d, dword ptr [rsp + 0x74]
	mov	edi, r9d
	xor	ebx, ebx
	cmp	rdi, r14
	jbe	.label_194
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
	nop	dword ptr [rax]
.label_194:
	xor	edx, edx
	mov	rax, r14
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	mov	esi, ebp
	sar	esi, 1
	xor	edx, edx
	mov	r14, rax
	mov	eax, ecx
	div	r9d
	lea	edx, [rsi + rdx*2]
	cmp	edx, r9d
	mov	ecx, eax
	jae	.label_200
	add	edx, ebp
	setne	al
	movzx	ebp, al
	jmp	.label_208
.label_200:
	add	edx, ebp
	cmp	r9d, edx
	sbb	ebp, ebp
	and	ebp, 1
	or	ebp, 2
.label_208:
	inc	ebx
	cmp	ebx, 7
	jg	.label_212
	cmp	rdi, r14
	jbe	.label_194
.label_212:
	cmp	r14, 9
	ja	.label_213
	mov	eax, dword ptr [rsp + 0x64]
	cmp	eax, 1
	jne	.label_219
	mov	eax, ecx
	and	eax, 1
	add	eax, ebp
	cmp	eax, 2
	ja	.label_198
	jmp	.label_218
.label_204:
	mov	qword ptr [rsp + 0x80], r12
	test	r12, r12
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_220]]
	mov	qword ptr [rsp + 0x88], rdi
	test	rdi, rdi
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x88]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_220]]
	mov	qword ptr [rsp + 0x90], r15
	test	r15, r15
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_220]]
	fdivrp	st(2)
	fmulp	st(1)
	test	r8b, 0x10
	jne	.label_221
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x64]
	call	adjust_value
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_1
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ebx, 0xffffffff
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_207
.label_221:
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	mov	eax, dword ptr [rsp + 0x74]
	mov	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	fldz	
	nop	word ptr cs:[rax + rax]
.label_217:
	fstp	st(0)
	fmul	st(1), st(0)
	inc	ebx
	fld	st(0)
	fmul	st(2)
	cmp	ebx, 7
	jg	.label_193
	fxch	st(3)
	fucomi	st(3)
	fstp	st(3)
	fldz	
	jae	.label_217
.label_193:
	fstp	st(1)
	fstp	st(0)
	fdivp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	mov	ebp, dword ptr [rsp + 0x64]
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.3_1
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ecx, dword ptr [rsp + 0x4c]
	shr	ecx, 5
	xor	ecx, 1
	or	rcx, 2
	mov	rdx, qword ptr [rsp + 0x40]
	add	rcx, rdx
	cmp	rcx, rax
	mov	r15, qword ptr [rsp + 0x68]
	jb	.label_226
	fld	xword ptr [rsp + 0x20]
	inc	rdx
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_230
	fstp	st(0)
	jmp	.label_209
.label_228:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
.label_230:
	movzx	ecx, byte ptr [rax + r14 - 1]
	cmp	ecx, 0x30
	fstp	xword ptr [rsp + 0x20]
	jne	.label_209
.label_226:
	mov	qword ptr [rsp + 0x40], r12
	fld	dword ptr [dword ptr [rip + label_203]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x20]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	call	adjust_value
	fld	xword ptr [rsp + 0x14]
	fdivp	st(1)
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_1
	xor	eax, eax
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	jmp	.label_207
.label_209:
	mov	qword ptr [rsp + 0x40], r12
	mov	r12, rdx
.label_207:
	mov	rbp, r15
	sub	rbp, rax
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	call	memmove
	mov	r13, r15
	sub	r13, r12
	mov	r8d, dword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x40]
	jmp	.label_222
.label_213:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
.label_219:
	test	eax, eax
	jne	.label_218
	test	ebp, ebp
	je	.label_218
.label_198:
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_218
	inc	r14
	xor	ecx, ecx
	cmp	r14, 9
	mov	ebp, 0
	ja	.label_225
.label_218:
	test	r8b, 8
	je	.label_195
	test	ecx, ecx
	jne	.label_195
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
.label_195:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x58]
	lea	r13, [rax + 0x286]
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	xor	ebp, ebp
	xor	ecx, ecx
	jmp	.label_197
.label_225:
	xor	ebp, ebp
	mov	r13, qword ptr [rsp + 0x68]
	mov	r14d, 0xa
.label_197:
	mov	eax, dword ptr [rsp + 0x64]
	test	eax, eax
	je	.label_202
	cmp	eax, 1
	jne	.label_205
	movsxd	rax, ebp
	mov	edx, r14d
	and	edx, 1
	add	rdx, rax
	setne	al
	movzx	eax, al
	add	eax, ecx
	cmp	eax, 5
	jg	.label_206
	jmp	.label_205
.label_202:
	add	ecx, ebp
	jle	.label_205
.label_206:
	inc	r14
	mov	eax, dword ptr [rsp + 0x74]
	cmp	ebx, 7
	jg	.label_205
	test	r15d, r15d
	je	.label_205
	cmp	r14, rax
	jne	.label_205
	inc	ebx
	mov	r14d, 1
	test	r8b, 8
	jne	.label_205
	mov	byte ptr [r13 - 1], 0x30
	dec	r13
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	mov	r14d, 1
.label_205:
	mov	r15, qword ptr [rsp + 0x68]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, r13
	nop	word ptr cs:[rax + rax]
.label_224:
	mov	rax, r14
	mul	rcx
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	esi, r14d
	sub	esi, eax
	or	sil, 0x30
	mov	byte ptr [rbp - 1], sil
	dec	rbp
	shr	rdx, 3
	cmp	r14, 9
	mov	r14, rdx
	ja	.label_224
	mov	r14, qword ptr [rsp + 0x58]
.label_222:
	test	r8b, 4
	je	.label_229
	sub	r13, rbp
	mov	rdi, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	call	group_number
	mov	r8d, ebp
	mov	rbp, rax
.label_229:
	mov	eax, dword ptr [rsp + 0x74]
	test	r8b, r8b
	jns	.label_199
	test	ebx, ebx
	jns	.label_201
	xor	ebx, ebx
	cmp	r12, 2
	jb	.label_201
	mov	eax, eax
	xor	ecx, ecx
	mov	edx, 1
	nop	
.label_227:
	mov	ebx, 8
	cmp	ecx, 7
	je	.label_201
	inc	ecx
	imul	rdx, rax
	cmp	rdx, r12
	mov	ebx, ecx
	jb	.label_227
.label_201:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	je	.label_210
	mov	ecx, ebx
	or	ecx, eax
	je	.label_210
	mov	byte ptr [r14 + 0x287], 0x20
	add	r14, 0x288
	mov	r15, r14
.label_210:
	test	ebx, ebx
	je	.label_214
	cmp	dword ptr [rsp + 0x4c], 0
	jne	.label_215
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_216
.label_215:
	movsxd	rcx, ebx
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_216:
	mov	byte ptr [r15], cl
	inc	r15
.label_214:
	test	eax, eax
	je	.label_199
	cmp	dword ptr [rsp + 0x4c], 0
	je	.label_223
	test	ebx, ebx
	je	.label_223
	mov	byte ptr [r15], 0x69
	inc	r15
.label_223:
	mov	byte ptr [r15], 0x42
	inc	r15
.label_199:
	mov	byte ptr [r15], 0
	mov	rax, rbp
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
	#Procedure 0x4046e0

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	fld	xword ptr [rsp + 8]
	cmp	edi, 1
	je	.label_231
	fld	xword ptr [word ptr [rip + label_233]]
	fucomip	st(1)
	jbe	.label_231
	fld	dword ptr [dword ptr [rip + label_232]]
	fld	st(1)
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	mov	ax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	fnstcw	word ptr [rsp - 0x24]
	mov	ax, word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	cmovb	rax, qword ptr [rsp - 0x20]
	test	edi, edi
	sete	sil
	mov	qword ptr [rsp - 0x10], rax
	test	rax, rax
	setns	dl
	movzx	edx, dl
	fild	qword ptr [rsp - 0x10]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_220]]
	fucomip	st(1)
	fstp	st(0)
	setp	dl
	setne	cl
	or	cl, dl
	and	cl, sil
	movzx	ecx, cl
	add	rcx, rax
	mov	qword ptr [rsp - 8], rcx
	setns	al
	movzx	eax, al
	fild	qword ptr [rsp - 8]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_220]]
.label_231:
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4047b0

	.globl group_number
	.type group_number, @function
group_number:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdx
	mov	r12, rsi
	mov	rbx, rdi
	mov	rdi, rcx
	call	strlen
	mov	r14, rax
	lea	rdi, [rsp + 0x10]
	mov	rsi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	neg	r13
	mov	rbp, -1
	jmp	.label_236
	nop	dword ptr [rax]
.label_235:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_236:
	movzx	eax, byte ptr [r15]
	test	rax, rax
	je	.label_234
	cmp	eax, 0x7f
	cmovae	rax, r12
	inc	r15
	mov	rbp, rax
.label_234:
	cmp	r12, rbp
	cmovb	rbp, r12
	sub	rbx, rbp
	mov	rax, r12
	sub	rax, rbp
	lea	rsi, [rsp + rax + 0x10]
	mov	rdi, rbx
	mov	rdx, rbp
	call	memcpy
	sub	r12, rbp
	jne	.label_235
	mov	rax, rbx
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404860
	.globl human_options
	.type human_options, @function
human_options:

	push	rbx
	mov	rbx, rdx
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	cmp	qword ptr [rbx], 0
	jne	.label_237
	call	default_block_size
	mov	qword ptr [rbx], rax
	mov	eax, 4
.label_237:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404890

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	r14, rdx
	mov	r15, rsi
	test	rdi, rdi
	jne	.label_242
	mov	edi, OFFSET FLAT:.str.4_1
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	jne	.label_242
	mov	edi, OFFSET FLAT:.str.5_0
	call	getenv
	mov	rdi, rax
	test	rdi, rdi
	je	.label_246
.label_242:
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	cmovne	rbx, rdi
	movzx	ebp, al
	shl	ebp, 2
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_244
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_238:
	mov	dword ptr [r14], ebp
	xor	eax, eax
	jmp	.label_239
.label_244:
	lea	rsi, [rsp]
	xor	edx, edx
	mov	r8d, OFFSET FLAT:.str.6_0
	mov	rdi, rbx
	mov	rcx, r15
	call	xstrtoumax
	test	eax, eax
	je	.label_243
	mov	dword ptr [r14], 0
.label_239:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_243:
	mov	al, byte ptr [rbx]
	add	al, 0xd0
	movzx	eax, al
	cmp	eax, 0xa
	jb	.label_238
	mov	rax, qword ptr [rsp]
.label_241:
	cmp	rax, rbx
	je	.label_240
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	jae	.label_241
	jmp	.label_238
.label_246:
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_238
.label_240:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	movzx	edx, byte ptr [rax - 1]
	cmp	edx, 0x42
	cmove	ecx, ebp
	jne	.label_245
	movzx	eax, byte ptr [rax - 2]
	cmp	eax, 0x69
	jne	.label_238
.label_245:
	or	ecx, 0x20
	mov	ebp, ecx
	jmp	.label_238
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049b0

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	push	rax
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	test	rax, rax
	mov	ecx, 0x200
	mov	eax, 0x400
	cmovne	rax, rcx
	pop	rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4049d0

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	word ptr cs:[rax + rax]
.label_247:
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
	ja	.label_247
	mov	rax, rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_248
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_249
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_249
	mov	esi, OFFSET FLAT:.str.2_2
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_250
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_250:
	mov	rbx, r14
.label_249:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_248:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	edi, OFFSET FLAT:.str_6
	mov	esi, 0x37
	mov	edx, 1
	call	fwrite
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ad0
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
	#Procedure 0x404b10
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
	#Procedure 0x404b20
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
	#Procedure 0x404b30

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
	#Procedure 0x404b70
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
	#Procedure 0x404b90

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_251
	test	rdx, rdx
	je	.label_251
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_251:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404bc0
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
	#Procedure 0x404c40

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
.label_365:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_347
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_319]]
.label_613:
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
.label_614:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_335
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_335
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_364:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_353
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_353:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_364
.label_335:
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
	jmp	.label_269
.label_606:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_269
.label_609:
	mov	al, 1
.label_607:
	mov	r15b, 1
.label_610:
	test	r15b, 1
	mov	cl, 1
	je	.label_332
	mov	cl, al
.label_332:
	mov	al, cl
.label_608:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_267
	test	r10, r10
	je	.label_286
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_285
.label_267:
	xor	ecx, ecx
	jmp	.label_285
.label_611:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_289
	test	r10, r10
	je	.label_339
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_295
.label_612:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_269
.label_286:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_285:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_269
.label_289:
	xor	eax, eax
	jmp	.label_295
.label_339:
	mov	eax, 1
.label_295:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_269:
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
	jmp	.label_271
	nop	dword ptr [rax + rax]
.label_301:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_271:
	cmp	rbp, -1
	je	.label_257
	cmp	rsi, rbp
	jne	.label_259
	jmp	.label_262
	nop	dword ptr [rax]
.label_257:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_262
.label_259:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_268
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_270
	cmp	rbp, -1
	jne	.label_270
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
.label_270:
	cmp	rbx, rbp
	jbe	.label_293
.label_268:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_254:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_296
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_265]]
.label_591:
	test	rsi, rsi
	jne	.label_252
	jmp	.label_305
	nop	word ptr cs:[rax + rax]
.label_293:
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
	jne	.label_325
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_254
	jmp	.label_272
.label_325:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_254
.label_595:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_342
	test	rsi, rsi
	jne	.label_345
	cmp	rbp, 1
	je	.label_305
	xor	r15d, r15d
	jmp	.label_263
.label_584:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_350
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_272
	cmp	edi, 2
	jne	.label_358
	mov	al, r11b
	and	al, 1
	jne	.label_362
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_366
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_366:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_352
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_352:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_258
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_258:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_273
.label_585:
	mov	bl, 0x62
	jmp	.label_275
.label_586:
	mov	cl, 0x74
	jmp	.label_277
.label_587:
	mov	bl, 0x76
	jmp	.label_275
.label_588:
	mov	bl, 0x66
	jmp	.label_275
.label_589:
	mov	cl, 0x72
	jmp	.label_277
.label_592:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_283
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
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
	jae	.label_291
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_291:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_307
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_307:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_313
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_313:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_323
.label_593:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_327
	cmp	r14d, 2
	jne	.label_328
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
.label_328:
	mov	rdi, r14
	jmp	.label_252
.label_594:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_331
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
	mov	rdi, r14
	jmp	.label_333
.label_296:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_336
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
.label_261:
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
	ja	.label_355
	test	dl, dl
	je	.label_355
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_263
.label_342:
	test	rsi, rsi
	jne	.label_255
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_255
.label_305:
	mov	dl, 1
.label_590:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_272
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_263
.label_350:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_252
	mov	r14, rdi
	inc	rsi
	jmp	.label_271
.label_283:
	mov	rdi, r14
.label_323:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_263
.label_331:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_277
.label_333:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_280
.label_277:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_272
.label_275:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_263
	jmp	.label_292
.label_336:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_294
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_294:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_357:
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
	je	.label_318
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_324
	cmp	rbp, -2
	je	.label_329
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_330
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_343:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_337
	bt	rsi, rdx
	jb	.label_341
.label_337:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_343
.label_330:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_349
	xor	r15d, r15d
.label_349:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_357
	jmp	.label_261
.label_255:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_263
.label_327:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_252
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_252
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_252
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_260
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_303
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_272
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_276
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_276:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_310:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_290
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_290:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_348
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_348:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_263
.label_252:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_263:
	test	r12b, r12b
	je	.label_315
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_309
	jmp	.label_317
	nop	word ptr cs:[rax + rax]
.label_315:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_317
.label_309:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_320
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_280
	jmp	.label_292
	nop	word ptr cs:[rax + rax]
.label_317:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_292
	jmp	.label_280
.label_320:
	mov	bl, r13b
	mov	rsi, r14
.label_292:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_272
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_340
	mov	al, r11b
	and	al, 1
	jne	.label_340
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_344
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_344:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_368
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_368:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_359
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_340:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_370
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_370:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_256
.label_345:
	xor	r15d, r15d
	jmp	.label_263
.label_355:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_264
	nop	word ptr cs:[rax + rax]
.label_266:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_264:
	test	dl, dl
	je	.label_351
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_288
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_363
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_363:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_288
	nop	word ptr [rax + rax]
.label_351:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
	cmp	r14d, 2
	jne	.label_299
	mov	al, r11b
	and	al, 1
	jne	.label_299
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_302
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_302:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_308
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_308:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_314
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_314:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_299:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_279
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_279:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_367
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_367:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_334
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_334:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_288:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_280
	test	r11b, 1
	je	.label_356
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_253
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_361
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_361:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_338
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_338:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_253
	nop	word ptr cs:[rax + rax]
.label_356:
	mov	r14, rdi
.label_253:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_266
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_266
.label_280:
	test	r11b, 1
	je	.label_278
	and	al, 1
	jne	.label_278
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_321
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_321:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_287
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_287:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_256
	nop	dword ptr [rax + rax]
.label_278:
	mov	bl, r13b
	mov	r14, rdi
.label_256:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_301
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_301
.label_358:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_273
.label_362:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_273:
	cmp	rcx, r10
	jae	.label_311
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_311:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_316
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_326
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_282
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_306
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_306:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_371
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_371:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_263
.label_316:
	xor	r15d, r15d
	jmp	.label_263
.label_326:
	xor	r15d, r15d
	jmp	.label_263
.label_282:
	xor	r15d, r15d
	jmp	.label_263
.label_318:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_298
.label_324:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_354
.label_329:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_360
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_372:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_369
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_372
	xor	r15d, r15d
	jmp	.label_298
.label_360:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_354:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_298:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_261
.label_369:
	xor	r15d, r15d
	jmp	.label_298
.label_260:
	xor	r15d, r15d
	jmp	.label_263
.label_303:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_263
	nop	dword ptr [rax + rax]
.label_262:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_274
	or	dl, al
	je	.label_281
.label_274:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_284
	or	dl, al
	jne	.label_284
	test	r8b, 1
	jne	.label_346
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_284
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_365
.label_284:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_304
	test	cl, cl
	jne	.label_304
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_304
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_322:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_312
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_312:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_322
.label_304:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_300
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_300
.label_272:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_297:
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
.label_373:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_300:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_341:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_297
.label_281:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_297
.label_346:
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
	jmp	.label_373
.label_347:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405e50
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
	#Procedure 0x405e60

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
	je	.label_374
	mov	qword ptr [rax], rbx
.label_374:
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
	#Procedure 0x405f60
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_375
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_377:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_377
.label_375:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_378
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_379]], OFFSET FLAT:slot0
.label_378:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_376
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_376:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406000

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x406010

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
	js	.label_380
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_385
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_381
.label_385:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_384
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
	jne	.label_383
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_383:
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
.label_381:
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
	ja	.label_386
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_382
	mov	rdi, rbx
	call	free
.label_382:
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
.label_386:
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
.label_380:
	call	abort
.label_384:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061e0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4061f0
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
	#Procedure 0x406200
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
	#Procedure 0x406210

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
	#Procedure 0x406250

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
	je	.label_387
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
.label_387:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4062b0

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
	#Procedure 0x4062f0
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
	#Procedure 0x406310
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
	#Procedure 0x406330

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
	mov	rcx,  qword ptr [word ptr [rip + label_388]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_389]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_390]]
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
	#Procedure 0x4063a0

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
	#Procedure 0x4063b0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063c0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4063d0

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
	#Procedure 0x406420

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406430

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
	mov	rax,  qword ptr [word ptr [rip + label_388]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_389]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_390]]
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
	#Procedure 0x4064a0
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
	#Procedure 0x4064c0
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
	#Procedure 0x4064e0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4064f0
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
	#Procedure 0x406500

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406510

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
	#Procedure 0x406520

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
	jne	.label_392
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
	je	.label_391
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_392
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_392
.label_391:
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
	je	.label_393
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_392
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_392
.label_393:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_392:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406600

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
	je	.label_395
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_396
	jmp	.label_394
.label_395:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_394
.label_396:
	mov	eax, 1
	test	bpl, bpl
	je	.label_394
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
.label_394:
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
	#Procedure 0x406690

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
	je	.label_399
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_397
	jmp	.label_398
.label_399:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_398
.label_397:
	mov	eax, 1
	test	bpl, bpl
	je	.label_398
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
.label_398:
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
	#Procedure 0x406720

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
	je	.label_401
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_402
	jmp	.label_400
.label_401:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_400
.label_402:
	mov	eax, 1
	test	bpl, bpl
	je	.label_400
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
.label_400:
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
	#Procedure 0x4067a0

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
	je	.label_405
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_404
	jmp	.label_403
.label_405:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_403
.label_404:
	mov	eax, 1
	test	bpl, bpl
	je	.label_403
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
.label_403:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406810

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
	je	.label_408
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_406
	jmp	.label_407
.label_408:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_407
.label_406:
	mov	eax, 1
	test	bpl, bpl
	je	.label_407
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_407:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406880

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
	je	.label_409
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_411
	jmp	.label_410
.label_409:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_410
.label_411:
	mov	eax, 1
	test	bpl, bpl
	je	.label_410
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_410:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4068d0

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
	je	.label_414
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_413
	jmp	.label_412
.label_414:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_412
.label_413:
	mov	eax, 1
	test	bpl, bpl
	je	.label_412
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_412:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406920

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_417
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_416
	jmp	.label_415
.label_417:
	mov	eax, 1
	test	cl, cl
	je	.label_415
.label_416:
	xor	eax, eax
.label_415:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x406950

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbx, rdi
	mov	edi, 0x18
	call	xmalloc
	mov	qword ptr [rax], rbx
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406970

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_418
	mov	rdi, rax
	pop	rax
	jmp	randint_new
.label_418:
	xor	eax, eax
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406990

	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4069a0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r13, rsi
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	lea	rbp, [r13 + 1]
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	dword ptr [rax]
.label_422:
	cmp	rbx, r13
	jae	.label_419
	mov	rax, rbx
	xor	r14d, r14d
	nop	dword ptr [rax + rax]
.label_425:
	mov	rdi, rax
	call	shift_left
	add	rax, 0xff
	inc	r14
	cmp	rax, r13
	jb	.label_425
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rdx, r14
	call	randread
	mov	rbp, r12
	nop	dword ptr [rax]
.label_423:
	mov	rdi, r15
	call	shift_left
	movzx	r15d, byte ptr [rbp]
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	inc	rbp
	cmp	rbx, r13
	jb	.label_423
	mov	rcx, r15
	mov	rbp, qword ptr [rsp + 0x10]
	jmp	.label_421
	nop	word ptr cs:[rax + rax]
.label_419:
	mov	rcx, r15
.label_421:
	mov	rsi, rbx
	sub	rsi, r13
	je	.label_420
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	ja	.label_422
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	qword ptr [rcx + 0x10], rax
	mov	rcx, r15
	jmp	.label_424
.label_420:
	xorps	xmm0, xmm0
	mov	rax, qword ptr [rsp]
	movups	xmmword ptr [rax], xmm0
.label_424:
	mov	rax, rcx
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
	#Procedure 0x406ae0

	.globl shift_left
	.type shift_left, @function
shift_left:
	shl	rdi, 8
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406af0

	.globl randint_free
	.type randint_free, @function
randint_free:
	push	rbx
	mov	rbx, rdi
	mov	esi, 0x18
	call	explicit_bzero
	mov	rdi, rbx
	pop	rbx
	jmp	free
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b10

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	eax, r14d
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406b50

	.globl randread_new
	.type randread_new, @function
randread_new:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r15, rsi
	mov	rbx, rdi
	test	r15, r15
	je	.label_428
	test	rbx, rbx
	je	.label_426
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, rbx
	call	fopen_safer
	mov	r12, rax
	xor	r14d, r14d
	test	r12, r12
	je	.label_427
	mov	rdi, r12
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	cmp	r15, 0x1000
	mov	ecx, 0x1000
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rdi, r12
	call	setvbuf
	jmp	.label_427
.label_428:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	jmp	simple_new
.label_426:
	xor	edi, edi
	mov	rsi, rbx
	call	simple_new
	mov	r14, rax
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	call	get_nonce
	mov	rdi, rbx
	call	isaac_seed
.label_427:
	mov	rax, r14
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406c00

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	push	rbx
	push	rax
	mov	r14, rsi
	mov	rbx, rdi
	mov	edi, 0x1038
	call	xmalloc
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406c30

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_2
	xor	esi, esi
	xor	eax, eax
	call	open
	mov	ebp, eax
	test	ebp, ebp
	js	.label_430
	cmp	rbx, 0x800
	mov	edx, 0x800
	cmovbe	rdx, rbx
	mov	edi, ebp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	mov	edi, ebp
	call	close
	xor	r15d, r15d
	test	rbx, rbx
	js	.label_430
	cmp	rbx, 0x7ff
	mov	r15, rbx
	ja	.label_429
.label_430:
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	xor	esi, esi
	mov	rdi, rbp
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_429
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_429
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rsi, [rsp + 8]
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_429
	mov	eax, 0x800
	sub	rax, rbx
	cmp	rax, 4
	mov	r15d, 4
	cmovbe	r15, rax
	call	getuid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	cmp	r15, 0x7ff
	ja	.label_429
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getgid
	mov	dword ptr [rsp + 8], eax
	add	r14, r15
	lea	rsi, [rsp + 8]
	mov	rdi, r14
	mov	rdx, rbx
	call	memcpy
.label_429:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x406dd0
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406de0
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl randread
	.type randread, @function
randread:
	cmp	qword ptr [rdi], 0
	je	.label_431
	jmp	readsource
.label_431:
	add	rdi, 0x18
	jmp	readisaac
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406e10

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	mov	r13, rdx
	mov	r14, rsi
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	call	fread_unlocked
	mov	rbx, rax
	call	__errno_location
	mov	r12, rax
	cmp	rbx, r13
	je	.label_433
	nop	word ptr cs:[rax + rax]
.label_432:
	sub	r13, rbx
	add	r14, rbx
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	mov	rdi, r14
	mov	rdx, r13
	call	fread_unlocked
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_432
.label_433:
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406ea0

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	push	rax
	mov	r15, rdx
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	sub	rsi, r12
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_434
	lea	rbp, [r14 + 8]
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	add	rbx, r12
	sub	r15, r12
	xor	r12d, r12d
	nop	dword ptr [rax + rax]
.label_435:
	cmp	r15, 0x800
	jb	.label_437
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	add	rbx, 0x800
	add	r15, -0x800
	jne	.label_435
	jmp	.label_436
.label_437:
	mov	rdi, rbp
	mov	rsi, r13
	call	isaac_refill
	mov	r12d, 0x800
	mov	rsi, r13
.label_434:
	mov	rdi, rbx
	mov	rdx, r15
	call	memcpy
	sub	r12, r15
.label_436:
	mov	qword ptr [r14], r12
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
	#Procedure 0x406f50

	.globl randread_free
	.type randread_free, @function
randread_free:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	mov	esi, 0x1038
	call	explicit_bzero
	mov	rdi, rbx
	call	free
	test	r14, r14
	je	.label_438
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	pop	r14
	jmp	rpl_fclose
.label_438:
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x406f90

	.globl randread_error
	.type randread_error, @function
randread_error:
	push	rbp
	push	r15
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_439
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	jne	.label_441
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_440
.label_441:
	mov	esi, OFFSET FLAT:.str.2_3
.label_440:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	xor	eax, eax
	mov	edi, r14d
	mov	esi, r15d
	mov	rdx, rbp
	call	error
.label_439:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x406ff0

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	mov	rax, qword ptr [r14 + 0x810]
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	mov	r15, r14
	nop	dword ptr [rax]
.label_443:
	mov	qword ptr [rsp + 0x10], rbp
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	mov	rdi, r13
	call	just
	mov	rbp, rax
	shr	rbp, 5
	xor	rbp, r13
	add	rbp, qword ptr [r15 + 0x408]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, qword ptr [rsp]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_443
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	mov	qword ptr [rsp + 0x10], rax
	nop	dword ptr [rax + rax]
.label_442:
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rbx, qword ptr [rcx]
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 8]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	call	just
	mov	rbx, rax
	shr	rbx, 5
	xor	rbx, r13
	add	rbx, qword ptr [r15 - 0x3f8]
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 8], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	add	r12, qword ptr [r15 - 0x3f0]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbx
	call	ind
	add	rbp, r12
	add	rbp, rax
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	shr	rbx, 0x21
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rcx, r15
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_442
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
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
	#Procedure 0x407350

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407360

	.globl just
	.type just, @function
just:
	mov	rax, rdi
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407370

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	movabs	rdx, 0x48fe4a0fa5a09315
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_444:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	r12, rax
	add	r15, r14
	mov	qword ptr [rsp], r15
	sub	rbx, r12
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	call	just
	mov	r15, rax
	shr	r15, 0xe
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	mov	qword ptr [rsp + 0x10], rbx
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	sub	r13, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	mov	rdx, qword ptr [rsp + 0x30]
	mov	rax, r13
	add	rdx, rax
	sub	r12, rbx
	shl	r13, 0xe
	xor	r13, qword ptr [rsp + 8]
	add	rax, r12
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_444
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_445:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	add	r13, rdi
	sub	rbp, r14
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	mov	rdi, qword ptr [rsp + 0x20]
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	add	rbp, r12
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_445
	xorps	xmm0, xmm0
	movups	xmmword ptr [rdi + 0x800], xmm0
	mov	qword ptr [rdi + 0x810], 0
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4076b0

	.globl renameatu
	.type renameatu, @function
renameatu:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x128
	mov	r13d, r8d
	mov	r12, rcx
	mov	r14d, edx
	mov	rbp, rsi
	mov	r15d, edi
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	mov	r8, r12
	mov	r9d, r13d
	call	syscall
	mov	rbx, rax
	call	__errno_location
	test	ebx, ebx
	jns	.label_448
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x16
	je	.label_446
	cmp	ecx, 0x5f
	je	.label_446
	cmp	ecx, 0x26
	jne	.label_448
.label_446:
	test	r13d, r13d
	je	.label_452
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_453
	mov	edi, 0x5f
	jmp	.label_456
.label_452:
	mov	qword ptr [rsp], rax
	xor	r13d, r13d
.label_450:
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	call	strlen
	test	rbx, rbx
	je	.label_451
	test	rax, rax
	je	.label_451
	movzx	ecx, byte ptr [rbx + rbp - 1]
	cmp	ecx, 0x2f
	je	.label_455
	movzx	eax, byte ptr [rax + r12 - 1]
	cmp	eax, 0x2f
	jne	.label_451
.label_455:
	lea	rdx, [rsp + 0x98]
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_448
	test	r13b, r13b
	je	.label_454
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	je	.label_451
	mov	edi, 2
	jmp	.label_457
.label_453:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_449
	mov	rax, qword ptr [rsp]
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	je	.label_450
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	jne	.label_448
.label_449:
	mov	edi, 0x11
.label_456:
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_448
.label_454:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	call	lstatat
	test	eax, eax
	je	.label_458
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	jne	.label_448
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_448
	jmp	.label_451
.label_458:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	cmp	ecx, 0x4000
	jne	.label_447
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_459
.label_451:
	mov	edi, r15d
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	mov	ebx, eax
.label_448:
	mov	eax, ebx
	add	rsp, 0x128
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_447:
	mov	edi, 0x14
	jmp	.label_457
.label_459:
	mov	edi, 0x15
.label_457:
	call	errno_fail
	jmp	.label_448
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407890

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	mov	dword ptr [rax], ebx
	pop	rbx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078a0
	.globl statat
	.type statat, @function
statat:

	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078b0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4078c0

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
	ja	.label_460
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
	jmp	.label_461
.label_460:
	mov	eax, ebx
.label_461:
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
	#Procedure 0x407910

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
	je	.label_465
	mov	edx, OFFSET FLAT:.str_8
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_464
.label_465:
	mov	edx, OFFSET FLAT:.str.1_3
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_464:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_3
	mov	edx, 5
	call	dcgettext
	mov	rdi, rax
	mov	rsi, r14
	call	fputs_unlocked
	cmp	r12, 9
	ja	.label_470
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_471]]
.label_673:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_470:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_469
.label_674:
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
.label_675:
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
.label_676:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_467
.label_677:
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
	jmp	.label_468
.label_678:
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
	jmp	.label_463
.label_679:
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
.label_463:
	mov	qword ptr [rsp + 0x10], rdi
.label_468:
	mov	qword ptr [rsp + 8], rsi
.label_467:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_462
.label_681:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_469:
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
	jmp	.label_466
.label_680:
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
.label_466:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_462:
	call	__fprintf_chk
.label_672:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c00
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_472:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_472
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407c30

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_476:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_473
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_474
	nop	dword ptr [rax]
.label_473:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_474:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_475
	inc	r9
	cmp	r9, 0xa
	jb	.label_476
.label_475:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x407c90

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_477
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_477:
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
	#Procedure 0x407d20
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	#Procedure 0x407da0

	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_478
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_478:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407dd0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_479
	test	rax, rax
	je	.label_480
.label_479:
	pop	rbx
	ret	
.label_480:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407df0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_481
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_481:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407e20

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_482
	test	rbx, rbx
	jne	.label_482
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_482:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_484
	test	rax, rax
	je	.label_483
.label_484:
	pop	rbx
	ret	
.label_483:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x407e50

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_485
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_488
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_486
.label_485:
	test	rcx, rcx
	jne	.label_489
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_489:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_487
.label_486:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_488:
	call	xalloc_die
.label_487:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ed0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ee0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407ef0
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
	#Procedure 0x407f20
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_490
	call	rpl_calloc
	test	rax, rax
	je	.label_490
	pop	rcx
	ret	
.label_490:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407f50

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
	#Procedure 0x407f80

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
	#Procedure 0x407fa0

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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x407fd0

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
	je	.label_494
	cmp	eax, 1
	je	.label_496
	test	eax, eax
	jne	.label_491
	mov	rbx, qword ptr [rsp]
	cmp	rbx, r12
	jb	.label_492
	cmp	rbx, r15
	jbe	.label_493
.label_492:
	call	__errno_location
	cmp	rbx, 0x40000000
	jb	.label_495
	mov	dword ptr [rax], 0x4b
	jmp	.label_491
.label_494:
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_491
.label_496:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	jmp	.label_491
.label_495:
	mov	dword ptr [rax], 0x22
.label_491:
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
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	mov	edi, ebp
	mov	esi, ebx
	mov	rcx, r14
	call	error
.label_493:
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
	#Procedure 0x4080a0

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
	#Procedure 0x4080d0

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
	jae	.label_514
	mov	qword ptr [rsp], rcx
	call	__errno_location
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	word ptr cs:[rax + rax]
.label_507:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_507
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	movzx	eax, al
	mov	r15d, 4
	cmp	eax, 0x2d
	je	.label_506
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	mov	edx, r14d
	call	strtoumax
	mov	rcx, rbp
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	cmp	rax, rbx
	je	.label_516
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rbp, r13
	je	.label_518
	cmp	eax, 0x22
	jne	.label_506
	mov	r12d, 1
.label_518:
	test	rbp, rbp
	jne	.label_500
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	jmp	.label_502
.label_516:
	mov	rbp, r13
	test	rbp, rbp
	je	.label_506
	mov	rbx, rcx
	movsx	esi, byte ptr [rax]
	test	esi, esi
	je	.label_506
	mov	rdi, rbp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_506
	mov	qword ptr [rsp + 8], 1
	xor	r12d, r12d
.label_500:
	mov	rax, qword ptr [rcx]
	movsx	ebx, byte ptr [rax]
	test	ebx, ebx
	je	.label_515
	mov	r13, rcx
	mov	rdi, rbp
	mov	esi, ebx
	call	strchr
	test	rax, rax
	je	.label_509
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	cmp	ebx, 0x2f
	ja	.label_521
	movabs	rax, 0x814400308945
	bt	rax, rbx
	jae	.label_503
	mov	esi, 0x30
	mov	rdi, rbp
	call	strchr
	mov	r14d, 1
	mov	rbx, r13
	test	rax, rax
	je	.label_498
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	je	.label_512
	cmp	ecx, 0x44
	je	.label_512
	cmp	ecx, 0x69
	jne	.label_498
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	cmp	eax, 0x42
	je	.label_498
	mov	r14d, 1
	jmp	.label_498
.label_512:
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_498:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	jg	.label_497
	lea	ecx, [rax - 0x42]
	cmp	ecx, 0xe
	ja	.label_501
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_520]]
.label_619:
	lea	rdi, [rsp + 8]
	mov	esi, 0x400
	jmp	.label_505
.label_497:
	cmp	eax, 0x73
	jg	.label_508
	lea	ecx, [rax - 0x62]
	cmp	ecx, 0xb
	ja	.label_510
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_504]]
.label_631:
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_505
.label_501:
	cmp	eax, 0x54
	je	.label_513
	cmp	eax, 0x59
	jne	.label_509
	lea	rdi, [rsp + 8]
	mov	edx, 8
	jmp	.label_499
.label_508:
	cmp	eax, 0x74
	je	.label_513
	cmp	eax, 0x77
	jne	.label_509
	lea	rdi, [rsp + 8]
	mov	esi, 2
.label_505:
	call	bkm_scale
	jmp	.label_517
.label_621:
	lea	rdi, [rsp + 8]
	mov	edx, 3
	jmp	.label_499
.label_622:
	lea	rdi, [rsp + 8]
	mov	edx, 1
	jmp	.label_499
.label_623:
	lea	rdi, [rsp + 8]
	mov	edx, 2
	jmp	.label_499
.label_513:
	lea	rdi, [rsp + 8]
	mov	edx, 4
	jmp	.label_499
.label_510:
	cmp	eax, 0x5a
	jne	.label_509
	lea	rdi, [rsp + 8]
	mov	edx, 7
	jmp	.label_499
.label_509:
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	mov	qword ptr [rcx], rax
	or	r12d, 2
	jmp	.label_511
.label_620:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_499
.label_624:
	lea	rdi, [rsp + 8]
	mov	edx, 5
.label_499:
	mov	esi, r15d
	call	bkm_scale_by_power
.label_517:
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	cmp	byte ptr [rcx + r14], 0
	je	.label_519
	or	eax, 2
.label_519:
	mov	r12d, eax
.label_515:
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_502:
	mov	qword ptr [rcx], rax
.label_511:
	mov	r15d, r12d
.label_506:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_521:
	mov	rbx, r13
	jmp	.label_498
.label_503:
	mov	rbx, r13
	jmp	.label_498
.label_514:
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083e0

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
	#Procedure 0x408410

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
	je	.label_522
	nop	word ptr cs:[rax + rax]
.label_523:
	mov	rdi, r15
	mov	esi, r14d
	call	bkm_scale
	or	ebx, eax
	dec	ebp
	jne	.label_523
.label_522:
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
	#Procedure 0x408450

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_524
	test	rsi, rsi
	mov	ecx, 1
	je	.label_525
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_525
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_524:
	mov	ecx, 1
.label_525:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4084a0

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	jmp	memset
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4084b0

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_526
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_528
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_526
.label_528:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_526
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_527
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_527:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_526:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408530

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	je	.label_539
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_539:
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
	ja	.label_531
	mov	eax, 0xa0a
	bt	eax, esi
	jb	.label_540
	mov	eax, 0x514
	bt	eax, esi
	jb	.label_529
	test	esi, esi
	jne	.label_531
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_532
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_530
.label_531:
	lea	eax, [rsi - 0x400]
	cmp	eax, 8
	ja	.label_534
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_529
	mov	ecx, 0x102
	bt	ecx, eax
	jae	.label_533
.label_540:
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_529:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_537
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_536
.label_537:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_536:
	mov	edx, dword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_533:
	cmp	eax, 6
	jne	.label_534
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_541
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_542
.label_534:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_535
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_538
.label_532:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_530:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	ret	
.label_541:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_542:
	mov	esi, dword ptr [rax]
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	ret	
.label_535:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_538:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408740

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
	#Procedure 0x408750

	.globl rpl_fcntl_DUPFD_CLOEXEC
	.type rpl_fcntl_DUPFD_CLOEXEC, @function
rpl_fcntl_DUPFD_CLOEXEC:
	push	rbp
	push	r14
	push	rbx
	mov	r14d, esi
	mov	ebp, edi
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0
	js	.label_544
	mov	esi, 0x406
	xor	eax, eax
	mov	edi, ebp
	mov	edx, r14d
	call	fcntl
	mov	ebx, eax
	test	ebx, ebx
	jns	.label_546
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	jne	.label_546
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_543
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_547
.label_546:
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	jmp	.label_547
.label_544:
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_547:
	test	ebx, ebx
	js	.label_543
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_543
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_545
	or	ecx, 1
	mov	esi, 2
	xor	eax, eax
	mov	edi, ebx
	mov	edx, ecx
	call	fcntl
	cmp	eax, -1
	jne	.label_543
.label_545:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_543:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408820

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_548
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_548
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_548:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408850

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_549
	ret	
.label_549:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408870

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
	jne	.label_550
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_550
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_551
.label_550:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_551:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_552
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_552:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4088e0

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
	je	.label_553
	cmp	r15, -2
	jb	.label_553
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_553
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_553:
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
	#Procedure 0x408940
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_554
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_554
.label_555:
	ret	
.label_554:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_555
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408970
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_556
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_556:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408990
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089a0
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
	#Procedure 0x4089b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_557
.label_558:
	ret	
.label_557:
	cmp	edi, 0x7f
	je	.label_558
	xor	eax, eax
	jmp	.label_558
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4089d0
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
	#Procedure 0x4089e0
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
	#Procedure 0x4089f0
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
	#Procedure 0x408a00
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
	#Procedure 0x408a10
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_559
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_559
.label_560:
	ret	
.label_559:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_560
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408a40
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_561
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_561:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

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
	#Procedure 0x408a70
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_562
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_562:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408a90
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
	#Procedure 0x408aa0
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
	#Procedure 0x408ab0

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
	je	.label_564
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_563
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_563
.label_564:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_563
	test	cl, cl
	jne	.label_563
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_563:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408b20

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	push	rbp
	push	r14
	push	rbx
	mov	r14, rsi
	call	fopen
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_565
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_569
	mov	edi, eax
	call	dup_safer
	mov	ebp, eax
	test	ebp, ebp
	js	.label_566
	mov	rdi, rbx
	call	rpl_fclose
	test	eax, eax
	jne	.label_567
	mov	edi, ebp
	mov	rsi, r14
	call	fdopen
	test	rax, rax
	jne	.label_565
.label_567:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	call	close
	mov	dword ptr [rbx], r14d
	jmp	.label_568
.label_569:
	mov	rax, rbx
	jmp	.label_565
.label_566:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	rdi, rbx
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_568:
	xor	eax, eax
.label_565:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408bb0

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_571
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_572
	cmp	byte ptr [rax + 1], 0
	je	.label_570
.label_572:
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_571
.label_570:
	xor	ebx, ebx
.label_571:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x408bf0

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
	je	.label_573
	mov	rax, rcx
.label_573:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408c20

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
	#Procedure 0x408c30

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
	#Procedure 0x408d00

	.globl __fstat
	.type __fstat, @function
__fstat:
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstat
	nop	
	.section .text
	.align	32
	#Procedure 0x408d10

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
