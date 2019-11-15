	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl usage
	.type usage, @function
usage:
	nop	
	push	rbp
	mov	rbp, rbp
	push	rbx
	nop	
	push	rax
	lea	rsi, [rsi]
	mov	ebp, edi
	test	ebp, ebp
	jne	.label_7
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	rdx,  qword ptr [word ptr [rip + program_name]]
	mov	rbp, rbp
	mov	edi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rsi, rcx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.3
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	call	emit_mandatory_arg_note
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.4
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, 3
	xor	eax, eax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	__printf_chk
	mov	rsp, rsp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.5
	nop	
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.6
	mov	edx, 5
	call	dcgettext
	nop	
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.7
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.9
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.10
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.11
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	call	fputs_unlocked
	mov	rsp, rsp
	call	emit_ancillary_info
	lea	rsi, [rsi]
	mov	edi, ebp
	call	exit
.label_7:
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str
	mov	edx, 5
	nop	
	call	dcgettext
	nop	
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + program_name]]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__fprintf_chk
	mov	edi, ebp
	call	exit
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020b0

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
	lea	rdi, [rdi]
	pop	rax
	mov	rsp, rsp
	jmp	fputs_unlocked
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4020e0

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	nop	
	push	rbx
	lea	rdi, [rdi]
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.30
	nop	word ptr cs:[rax + rax]
.label_9:
	mov	edi, OFFSET FLAT:.str.14
	call	strcmp
	lea	rsi, [rsi]
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbx + 0x10]
	add	rbx, 0x10
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	jne	.label_9
.label_8:
	mov	rsp, rsp
	mov	rax, qword ptr [rbx + 8]
	test	rax, rax
	nop	
	mov	ebx, OFFSET FLAT:.str.14
	nop	
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
	lea	rdi, [rdi]
	call	__printf_chk
	lea	rdi, [rdi]
	mov	edi, 5
	xor	esi, esi
	mov	rbp, rbp
	call	setlocale
	mov	rsp, rsp
	test	rax, rax
	nop	
	je	.label_10
	mov	esi, OFFSET FLAT:.str.40
	mov	edx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	strncmp
	mov	rsp, rsp
	test	eax, eax
	je	.label_10
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.41
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
.label_10:
	xor	edi, edi
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	r14d, OFFSET FLAT:.str.14
	mov	edi, 1
	nop	
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.14
	xor	eax, eax
	mov	rsp, rsp
	call	__printf_chk
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.43
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	nop	
	mov	rdx, rax
	mov	rbp, rbp
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.44
	mov	ecx, OFFSET FLAT:.str_0
	cmove	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rdx
	mov	rbp, rbp
	mov	rdx, rbx
	nop	
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	nop	
	pop	r14
	mov	rbp, rbp
	jmp	__printf_chk
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270

	.globl main
	.type main, @function
main:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	push	r15
	mov	rsp, rsp
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0x38
	mov	r14, rsi
	mov	r12d, edi
	mov	rsp, rsp
	xorps	xmm0, xmm0
	nop	
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmmword ptr [rsp + 0x10], xmm0
	mov	rdi, qword ptr [r14]
	lea	rdi, [rdi]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	call	setlocale
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str.16
	lea	rdi, [rdi]
	mov	esi, OFFSET FLAT:.str.17_0
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.16
	mov	rsp, rsp
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], 3
	mov	qword ptr [rsp + 0x20], -1
	nop	
	xor	r15d, r15d
	mov	rbp, rbp
	movabs	rbp, 0x3fffffffffffffff
	mov	rbp, rbp
	movabs	r13, 0x7fffffffffffffff
	mov	rbp, rbp
	jmp	.label_14
.label_669:
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x2e], 1
	nop	dword ptr [rax]
.label_14:
	mov	rsp, rsp
	mov	edx, OFFSET FLAT:.str.18_0
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:long_opts
	xor	r8d, r8d
	mov	rbp, rbp
	mov	edi, r12d
	mov	rsi, r14
	mov	rsp, rsp
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_22
	nop	
	lea	ecx, [rax - 0x73]
	lea	rsi, [rsi]
	cmp	ecx, 0xd
	lea	rsi, [rsi]
	ja	.label_23
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_13]]
.label_665:
	mov	rbp, rbp
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.23
	mov	edx, 5
	lea	rdi, [rdi]
	call	dcgettext
	mov	dword ptr [rsp], 0
	mov	rsp, rsp
	xor	esi, esi
	mov	rsp, rsp
	xor	edx, edx
	mov	rsp, rsp
	mov	r8d, OFFSET FLAT:.str.22
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rcx, r13
	mov	r9, rax
	call	xnumtoumax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_14
.label_23:
	lea	rsi, [rsi]
	cmp	eax, 0x6e
	mov	rbp, rbp
	je	.label_21
	cmp	eax, 0x66
	jne	.label_19
	mov	rsp, rsp
	mov	byte ptr [rsp + 0x10], 1
	jmp	.label_14
.label_666:
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	lea	rsi, [rsi]
	test	rsi, rsi
	nop	
	je	.label_25
	nop	
	mov	r9,  qword ptr [word ptr [rip + argmatch_die]]
	mov	edi, OFFSET FLAT:.str.21
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:remove_args
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:remove_methods
	mov	r8d, 4
	mov	rsp, rsp
	call	__xargmatch_internal
	mov	eax,  dword ptr [dword ptr [+ (rax * 4) + remove_methods]]
	nop	
	mov	dword ptr [rsp + 0x28], eax
	lea	rsi, [rsi]
	jmp	.label_14
.label_667:
	lea	rsi, [rsi]
	mov	byte ptr [rsp + 0x2c], 1
	lea	rsi, [rsi]
	jmp	.label_14
.label_668:
	mov	byte ptr [rsp + 0x2d], 1
	nop	
	jmp	.label_14
.label_670:
	mov	rsp, rsp
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_24
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [rip + optarg]]
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	strcmp
	test	eax, eax
	jne	.label_12
.label_24:
	lea	rsi, [rsi]
	mov	r15,  qword ptr [word ptr [rip + optarg]]
	lea	rdi, [rdi]
	jmp	.label_14
.label_21:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.19
	nop	
	mov	edx, 5
	call	dcgettext
	lea	rdi, [rdi]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:.str_0
	xor	r9d, r9d
	mov	rdi, rbx
	mov	rdx, rbp
	lea	rsi, [rsi]
	mov	r8, rax
	call	xdectoumax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rax
	jmp	.label_14
.label_25:
	mov	dword ptr [rsp + 0x28], 3
	lea	rdi, [rdi]
	jmp	.label_14
.label_22:
	mov	rsp, rsp
	cmp	eax, -1
	jne	.label_26
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	cmp	ebx, r12d
	je	.label_11
	mov	rsi, -1
	mov	rdi, r15
	call	randint_all_new
	mov	qword ptr [word ptr [rip + randint_source]],  rax
	nop	
	test	rax, rax
	je	.label_16
	lea	rsi, [rsi]
	mov	edi, OFFSET FLAT:clear_random_data
	mov	rsp, rsp
	call	atexit
	lea	rdi, [rdi]
	xor	eax, eax
	cmp	ebx, r12d
	nop	
	jge	.label_27
	sub	r12d, ebx
	mov	rsp, rsp
	lea	rbp, [r14 + rbx*8]
	lea	rsi, [rsi]
	mov	bl, 1
	lea	r14, [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_28:
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	nop	
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rdi, rax
	call	xstrdup
	mov	rsp, rsp
	mov	r15, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp]
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x2d
	jne	.label_15
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_17
.label_15:
	mov	rdi, qword ptr [rbp]
	mov	rdx,  qword ptr [word ptr [rip + randint_source]]
	mov	rsi, r15
	mov	rcx, r14
	call	wipefile
	jmp	.label_20
.label_17:
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [rip + randint_source]]
	mov	rbp, rbp
	mov	rdi, r15
	nop	
	mov	rdx, r14
	call	wipefd
	nop	word ptr [rax + rax]
.label_20:
	nop	
	and	bl, al
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	lea	rdi, [rdi]
	add	rbp, 8
	lea	rdi, [rdi]
	dec	r12d
	nop	
	jne	.label_28
	nop	
	xor	bl, 1
	movzx	eax, bl
.label_27:
	mov	rsp, rsp
	add	rsp, 0x38
	nop	
	pop	rbx
	pop	r12
	lea	rsi, [rsi]
	pop	r13
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
.label_26:
	lea	rdi, [rdi]
	cmp	eax, 0xffffff7d
	je	.label_18
	cmp	eax, 0xffffff7e
	jne	.label_19
	xor	edi, edi
	lea	rsi, [rsi]
	call	usage
.label_18:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.14
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.25
	xor	r9d, r9d
	lea	rsi, [rsi]
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_19:
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_11:
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.26
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	mov	edi, 1
	mov	rsp, rsp
	call	usage
.label_16:
	call	__errno_location
	mov	ebx, dword ptr [rax]
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, 3
	lea	rsi, [rsi]
	mov	rdx, r15
	lea	rdi, [rdi]
	call	quotearg_n_style_colon
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	edi, 1
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rbp, rbp
	call	error
.label_12:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	nop	
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	edi, 1
	lea	rsi, [rsi]
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	call	error
	.section	.text
	.align	32
	#Procedure 0x402740

	.globl clear_random_data
	.type clear_random_data, @function
clear_random_data:
	mov	rdi,  qword ptr [word ptr [rip + randint_source]]
	lea	rsi, [rsi]
	jmp	randint_all_free
	nop	
	.section	.text
	.align	32
	#Procedure 0x402750

	.globl wipefd
	.type wipefd, @function
wipefd:
	push	rbp
	push	r15
	nop	
	push	r14
	push	rbx
	lea	rsi, [rsi]
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	mov	rsp, rsp
	mov	rbx, rsi
	nop	
	mov	r14, rdi
	lea	rdi, [rdi]
	mov	edi, 1
	mov	esi, 3
	mov	rsp, rsp
	xor	eax, eax
	call	rpl_fcntl
	nop	
	test	eax, eax
	lea	rdi, [rdi]
	js	.label_29
	test	ah, 4
	mov	rsp, rsp
	jne	.label_32
	mov	edi, 1
	mov	rsi, r14
	mov	rsp, rsp
	mov	rdx, rbx
	mov	rcx, r15
	call	do_wipefd
	mov	bl, al
	jmp	.label_30
.label_29:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebx, ebx
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.58
	mov	rbp, rbp
	mov	edx, 5
	mov	rsp, rsp
	call	dcgettext
	nop	
	mov	rcx, rax
	mov	rsp, rsp
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, ebp
	jmp	.label_31
.label_32:
	lea	rsi, [rsi]
	xor	ebx, ebx
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.59
	mov	rbp, rbp
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
.label_31:
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, r14
	call	error
.label_30:
	mov	rsp, rsp
	mov	al, bl
	lea	rdi, [rdi]
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402840

	.globl wipefile
	.type wipefile, @function
wipefile:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	lea	rsi, [rsi]
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	r15, rcx
	mov	rbp, rbp
	mov	r12, rdx
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	r13, rdi
	mov	rsp, rsp
	mov	esi, 0x101
	xor	eax, eax
	call	open_safer
	mov	ebx, eax
	test	ebx, ebx
	mov	rsp, rsp
	jns	.label_38
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0xd
	mov	rsp, rsp
	jne	.label_34
	cmp	byte ptr [r15], 0
	lea	rsi, [rsi]
	je	.label_34
	nop	
	mov	esi, 0x80
	mov	rdi, r13
	call	chmod
	nop	
	test	eax, eax
	jne	.label_34
	mov	esi, 0x101
	xor	eax, eax
	mov	rsp, rsp
	mov	rdi, r13
	mov	rsp, rsp
	call	open_safer
	lea	rsi, [rsi]
	mov	ebx, eax
	test	ebx, ebx
	js	.label_34
.label_38:
	mov	edi, ebx
	mov	rsi, r14
	lea	rdi, [rdi]
	mov	rdx, r12
	mov	rbp, rbp
	mov	rcx, r15
	call	do_wipefd
	nop	
	mov	bpl, al
	mov	edi, ebx
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_36
	lea	rdi, [rdi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	nop	
	xor	ebx, ebx
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.76
	jmp	.label_33
.label_34:
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	mov	ebp, dword ptr [rax]
	lea	rdi, [rdi]
	xor	ebx, ebx
	mov	rbp, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.75
.label_33:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, r14
	nop	
	call	error
.label_35:
	lea	rdi, [rdi]
	mov	al, bl
	add	rsp, 8
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_36:
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_37
	lea	rsi, [rsi]
	mov	bl, 1
	mov	rbp, rbp
	cmp	dword ptr [r15 + 0x18], 0
	je	.label_35
	mov	rdi, r13
	mov	rsi, r14
	mov	rdx, r15
	call	wipename
	mov	bl, al
	nop	
	jmp	.label_35
.label_37:
	xor	ebx, ebx
	jmp	.label_35
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4029b0

	.globl do_wipefd
	.type do_wipefd, @function
do_wipefd:
	mov	rbp, rbp
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	lea	rdi, [rdi]
	push	rbx
	sub	rsp, 0xd8
	mov	rbx, rcx
	mov	r13, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x38], rsi
	mov	r15d, edi
	mov	rsp, rsp
	xor	r12d, r12d
	lea	rsi, [rsi]
	cmp	byte ptr [rbx + 0x1c], 0
	mov	rbp, rbp
	je	.label_54
	mov	rsp, rsp
	movzx	r12d, byte ptr [rbx + 0x1e]
	mov	rsp, rsp
	add	r12, qword ptr [rbx + 8]
.label_54:
	lea	rsi, [rsp + 0x48]
	lea	rsi, [rsi]
	mov	edi, r15d
	lea	rsi, [rsi]
	call	__fstat
	test	eax, eax
	je	.label_44
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.60
	mov	edx, 5
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	lea	rsi, [rsi]
	jmp	.label_45
.label_44:
	mov	ebp, 0xf000
	mov	eax, dword ptr [rsp + 0x60]
	and	eax, ebp
	cmp	eax, 0x2000
	jne	.label_58
	mov	edi, r15d
	lea	rsi, [rsi]
	call	isatty
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_62
.label_58:
	lea	rdi, [rdi]
	and	ebp, dword ptr [rsp + 0x60]
	lea	rsi, [rsi]
	cmp	ebp, 0xc000
	je	.label_62
	cmp	ebp, 0x8000
	nop	
	je	.label_63
	lea	rdi, [rdi]
	cmp	ebp, 0x1000
	jne	.label_39
.label_62:
	xor	ebp, ebp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.61
.label_60:
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	xor	esi, esi
	nop	
	xor	eax, eax
.label_45:
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x38]
	call	error
.label_59:
	nop	
	mov	al, bpl
	mov	rsp, rsp
	add	rsp, 0xd8
	pop	rbx
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_63:
	cmp	qword ptr [rsp + 0x78], 0
	js	.label_61
.label_39:
	lea	rsi, [rsi]
	movabs	r14, 0x2000000000000001
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbx + 8]
	mov	rbp, rbp
	mov	esi, 4
	call	xnmalloc
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rcx, qword ptr [rbx + 0x10]
	mov	qword ptr [rsp + 0x18], rcx
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0x60]
	cmp	rcx, -1
	nop	
	je	.label_41
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	cmp	eax, 0x8000
	mov	rbp, rbp
	jne	.label_49
	mov	qword ptr [rsp + 0x10], r12
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x34], r15d
	mov	rbp, qword ptr [rsp + 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rax, r14
	mov	ecx, 0x200
	lea	rsi, [rsi]
	mov	edx, 0x200
	cmovb	rdx, rax
	test	rax, rax
	cmovle	rdx, rcx
	mov	rax, qword ptr [rsp + 0x18]
	cmp	rdx, rax
	cmovg	rdx, rax
	mov	rsp, rsp
	cmp	rbp, rdx
	mov	rbp, rbp
	jl	.label_43
	mov	rbp, rbp
	xor	ebp, ebp
	jmp	.label_43
.label_41:
	cmp	eax, 0x8000
	jne	.label_56
	mov	dword ptr [rsp + 0x34], r15d
	mov	rdi, qword ptr [rsp + 0x78]
	xor	ebp, ebp
	cmp	byte ptr [rbx + 0x1d], 0
	je	.label_47
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x18], rdi
	mov	qword ptr [rsp + 0x10], r12
	jmp	.label_43
.label_49:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], r12
	mov	dword ptr [rsp + 0x34], r15d
	lea	rsi, [rsi]
	jmp	.label_43
.label_61:
	lea	rsi, [rsi]
	xor	ebp, ebp
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.62
	jmp	.label_60
.label_56:
	mov	qword ptr [rsp + 0x10], r12
	mov	rbp, rbp
	xor	ebp, ebp
	xor	esi, esi
	mov	edx, 2
	mov	edi, r15d
	mov	dword ptr [rsp + 0x34], r15d
	nop	
	call	lseek
	test	rax, rax
	mov	rcx, -1
	cmovg	rcx, rax
	mov	qword ptr [rsp + 0x18], rcx
	lea	rdi, [rdi]
	jmp	.label_43
.label_47:
	mov	qword ptr [rsp + 0x10], r12
	mov	rax, qword ptr [rsp + 0x80]
	mov	rsp, rsp
	cmp	rax, r14
	mov	rsp, rsp
	mov	ecx, 0x200
	mov	esi, 0x200
	mov	rbp, rbp
	cmovb	rsi, rax
	test	rax, rax
	cmovle	rsi, rcx
	mov	rax, rdi
	nop	
	cqo	
	lea	rdi, [rdi]
	idiv	rsi
	nop	
	xor	ebp, ebp
	cmp	rdi, rsi
	lea	rsi, [rsi]
	cmovl	rbp, rdi
	test	rdi, rdi
	cmove	rbp, rdi
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_52
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x80]
	cmp	rax, r14
	nop	
	mov	ecx, 0x200
	lea	rsi, [rsi]
	mov	esi, 0x200
	cmovb	rsi, rax
	test	rax, rax
	lea	rsi, [rsi]
	cmovle	rsi, rcx
	lea	rsi, [rsi]
	sub	rsi, rdx
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	sub	rax, rdi
	cmp	rsi, rax
	cmovle	rax, rsi
	mov	rsp, rsp
	add	rdi, rax
	mov	qword ptr [rsp + 0x18], rdi
	mov	rbp, rbp
	jmp	.label_43
.label_52:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rdi
.label_43:
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbx + 8]
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	mov	rdx, r13
	call	genpattern
	nop	
	mov	rdi, r13
	lea	rdi, [rdi]
	call	randint_get_source
	nop	
	mov	r12, rax
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	lea	r13, [rsp + 0x48]
	mov	rsp, rsp
	lea	r15, [rsp + 0x40]
	lea	rsi, [rsi]
	jmp	.label_64
.label_40:
	xor	ebp, ebp
.label_64:
	test	rbp, rbp
	lea	rdi, [rdi]
	je	.label_50
	xor	r14d, r14d
	mov	rsp, rsp
	jmp	.label_53
	nop	word ptr cs:[rax + rax]
.label_50:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	test	rax, rax
	mov	rsp, rsp
	mov	rbp, rax
	mov	rbp, rbp
	mov	eax, 0
	mov	qword ptr [rsp + 0x18], rax
	nop	
	mov	r14, qword ptr [rsp + 0x10]
	nop	
	je	.label_57
.label_53:
	mov	qword ptr [rsp + 0x40], rbp
	mov	rsp, rsp
	xor	ebp, ebp
	nop	dword ptr [rax + rax]
.label_42:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 8]
	movzx	ecx, byte ptr [rbx + 0x1e]
	mov	rsp, rsp
	add	rcx, rax
	cmp	rbp, rcx
	jae	.label_40
	lea	rdi, [rdi]
	xor	r8d, r8d
	cmp	rbp, rax
	mov	rbp, rbp
	jae	.label_46
	mov	rax, qword ptr [rsp + 0x28]
	nop	
	mov	r8d, dword ptr [rax + rbp*4]
.label_46:
	mov	rbp, rbp
	inc	rbp
	nop	
	mov	qword ptr [rsp + 8], r14
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rbp
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	mov	rsi, r13
	mov	rdx, qword ptr [rsp + 0x38]
	mov	rsp, rsp
	mov	rcx, r15
	mov	r9, r12
	lea	rsi, [rsi]
	call	dopass
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_42
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x20], rcx
	lea	rsi, [rsi]
	test	eax, eax
	mov	rbp, rbp
	jns	.label_42
	nop	
	xor	ebp, ebp
.label_48:
	mov	rdi, qword ptr [rsp + 0x28]
	call	free
	mov	rsp, rsp
	and	bpl, 1
	mov	rbp, rbp
	jmp	.label_59
.label_57:
	cmp	dword ptr [rbx + 0x18], 0
	je	.label_51
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rsp + 0x34]
	mov	rbp, rbp
	call	ftruncate
	mov	rsp, rsp
	test	eax, eax
	nop	
	je	.label_55
	nop	
	mov	eax, 0xf000
	lea	rdi, [rdi]
	and	eax, dword ptr [rsp + 0x60]
	nop	
	cmp	eax, 0x8000
	mov	rbp, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	jne	.label_48
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.63
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebx
	mov	rsp, rsp
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0x38]
	mov	rbp, rbp
	call	error
	jmp	.label_48
.label_51:
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_48
.label_55:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0x20]
	jmp	.label_48
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ec0

	.globl genpattern
	.type genpattern, @function
genpattern:
	push	rbp
	lea	rsi, [rsi]
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	qword ptr [rsp + 8], rdx
	mov	qword ptr [rsp + 0x10], rsi
	mov	rbp, rbp
	mov	r12, rdi
	mov	ebx, OFFSET FLAT:patterns
	lea	rsi, [rsi]
	xor	r15d, r15d
	nop	
	test	rsi, rsi
	mov	rbp, rbp
	je	.label_65
	mov	rcx, r12
	mov	r13, qword ptr [rsp + 0x10]
	jmp	.label_80
	nop	word ptr cs:[rax + rax]
.label_66:
	mov	rsp, rsp
	lea	rdx, [rbp*4]
	mov	r14, rcx
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	memcpy
	mov	rcx, r14
	mov	rsp, rsp
	lea	rbx, [rbx + rbp*4]
	lea	rcx, [rcx + rbp*4]
.label_80:
	mov	r14, r13
	lea	rdi, [rdi]
	jmp	.label_81
	nop	word ptr cs:[rax + rax]
.label_67:
	mov	rbp, rbp
	add	r15, rbp
	nop	
	mov	r14, rax
.label_81:
	mov	rbp, rbp
	mov	rax, rbx
.label_73:
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	movsxd	rbp, dword ptr [rbx]
	nop	
	test	rbp, rbp
	mov	eax, OFFSET FLAT:patterns
	lea	rsi, [rsi]
	je	.label_73
	add	rbx, 4
	test	ebp, ebp
	jns	.label_72
	neg	rbp
	mov	rax, r14
	sub	rax, rbp
	mov	rsp, rsp
	ja	.label_67
	mov	rbp, rbp
	jmp	.label_74
	nop	dword ptr [rax + rax]
.label_72:
	mov	r13, r14
	lea	rdi, [rdi]
	sub	r13, rbp
	jae	.label_66
	cmp	r14, 2
	mov	rbp, rbp
	jb	.label_71
	lea	rax, [r14 + r14*2]
	cmp	rax, rbp
	jb	.label_71
	nop	dword ptr [rax]
.label_70:
	lea	rdi, [rdi]
	mov	r13, rcx
	cmp	rbp, r14
	nop	
	je	.label_69
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, rbp
	mov	rsp, rsp
	call	randint_choose
	cmp	rax, r14
	jae	.label_76
.label_69:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbx]
	mov	rsp, rsp
	mov	rcx, r13
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	mov	rsp, rsp
	add	rcx, 4
	lea	rsi, [rsi]
	dec	r14
	lea	rsi, [rsi]
	jmp	.label_78
.label_76:
	mov	rcx, r13
.label_78:
	add	rbx, 4
	mov	rsp, rsp
	dec	rbp
	test	r14, r14
	nop	
	jne	.label_70
	jmp	.label_75
.label_74:
	add	r15, r14
.label_75:
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x10], 0
	je	.label_65
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rbx, rax
	sub	rbx, r15
	lea	rdi, [rdi]
	dec	r15
	mov	rbp, rbp
	dec	rax
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	xor	ebp, ebp
	mov	r13, r15
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_79:
	cmp	r13, r15
	jbe	.label_77
	mov	rsp, rsp
	lea	rsi, [rbp + rbx]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 8]
	call	randint_choose
	lea	rdi, [rdi]
	add	rax, r14
	mov	ecx, dword ptr [r12 + r14*4]
	mov	rbp, rbp
	mov	edx, dword ptr [r12 + rax*4]
	mov	rbp, rbp
	mov	dword ptr [r12 + r14*4], edx
	mov	dword ptr [r12 + rax*4], ecx
	jmp	.label_68
	nop	dword ptr [rax + rax]
.label_77:
	nop	
	add	r13, qword ptr [rsp]
	mov	eax, dword ptr [r12 + r14*4]
	mov	dword ptr [r12 + rbx*4], eax
	mov	rbp, rbp
	inc	rbx
	nop	
	mov	dword ptr [r12 + r14*4], 0xffffffff
.label_68:
	sub	r13, r15
	inc	r14
	dec	rbp
	cmp	qword ptr [rsp + 0x10], r14
	jne	.label_79
.label_65:
	add	rsp, 0x18
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	nop	
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	pop	r15
	lea	rdi, [rdi]
	pop	rbp
	ret	
.label_71:
	mov	rbp, rbp
	add	r15, r14
	lea	rsi, [rsi]
	jmp	.label_75
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403110

	.globl dopass
	.type dopass, @function
dopass:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rbp, rbp
	push	r14
	mov	rbp, rbp
	push	r13
	lea	rdi, [rdi]
	push	r12
	nop	
	push	rbx
	sub	rsp, 0x878
	mov	qword ptr [rsp + 0x68], r9
	mov	ebx, r8d
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x84], ebx
	mov	qword ptr [rsp + 0x58], rcx
	mov	qword ptr [rsp + 0xa8], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0xb8], rsi
	mov	rbp, rbp
	mov	r15d, edi
	mov	dword ptr [rsp + 0xa0], r15d
	mov	r12, qword ptr [rcx]
	call	getpagesize
	mov	rsp, rsp
	movsxd	rbp, eax
	mov	edi, ebx
	call	periodic_pattern
	test	al, al
	mov	eax, 0xf000
	mov	r13d, 0x10000
	nop	
	cmovne	r13, rax
	mov	rbp, rbp
	mov	rax, r13
	or	rax, 2
	movabs	rcx, 0xaaaaaaaaaaaaaaab
	mov	rbp, rbp
	mul	rcx
	shr	rdx, 1
	lea	rdi, [rdi]
	lea	r14, [rdx + rdx*2]
	lea	rdi, [rdi]
	lea	rdi, [rbp + r14 - 1]
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rbp
	mov	ebp, r15d
	call	ptr_align
	mov	r15, rax
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x98], r15
	nop	
	test	r12, r12
	setg	al
	cmp	r12, r13
	lea	rsi, [rsi]
	setb	cl
	and	cl, al
	mov	byte ptr [rsp + 0xa7], cl
	jne	.label_113
	lea	rdi, [rdi]
	mov	esi, 1
	mov	rsp, rsp
	mov	edi, ebp
	call	direct_mode
.label_113:
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xb8]
	call	dorewind
	test	al, al
	je	.label_87
	mov	rsp, rsp
	mov	ebx, dword ptr [rsp + 0x84]
	test	ebx, ebx
	mov	rsp, rsp
	js	.label_88
	mov	rdi, r12
	call	known
	mov	rsp, rsp
	test	al, al
	lea	rdi, [rdi]
	mov	rdx, r14
	lea	rsi, [rsi]
	cmovne	rdx, r12
	lea	rdi, [rdi]
	cmp	r12, r14
	cmovae	rdx, r14
	lea	rdi, [rdi]
	mov	edi, ebx
	mov	rsi, r15
	lea	rdi, [rdi]
	call	fillpattern
	lea	rsi, [rsp + 0x871]
	nop	
	mov	rdi, r15
	mov	rbp, rbp
	jmp	.label_101
.label_87:
	mov	rbp, rbp
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.64
	nop	
	jmp	.label_104
.label_88:
	lea	rsi, [rsp + 0x871]
	xor	edi, edi
.label_101:
	mov	rsp, rsp
	call	passname
	mov	rcx, qword ptr [rsp + 0x8b0]
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x8b8]
	mov	rbp, rbp
	test	r14, r14
	nop	
	mov	rbx, r13
	mov	r13, rcx
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x60], rbx
	lea	rdi, [rdi]
	je	.label_110
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.65
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	lea	rax, [rsp + 0x871]
	nop	
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	edi, 0
	nop	
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rsp + 0xa8]
	mov	r8, r13
	mov	r9, r14
	call	error
	lea	rdi, [rdi]
	xor	edi, edi
	call	time
	add	rax, 5
.label_110:
	mov	qword ptr [rsp + 0x48], rax
	mov	eax, OFFSET FLAT:.str_0
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x40], rax
	xor	eax, eax
	mov	qword ptr [rsp + 0x88], rax
	mov	rbp, rbp
	xor	eax, eax
	mov	qword ptr [rsp + 0x50], rax
	lea	rsi, [rsi]
	xor	r13d, r13d
	jmp	.label_84
.label_96:
	mov	r15, qword ptr [rsp + 0x98]
	nop	word ptr cs:[rax + rax]
.label_84:
	lea	rdi, [rdi]
	mov	rdi, r12
	call	known
	mov	byte ptr [rsp + 0xb7], al
	test	al, al
	mov	rsp, rsp
	mov	r14, rbx
	je	.label_83
	lea	rdi, [rdi]
	mov	rax, r12
	sub	rax, r13
	lea	rdi, [rdi]
	cmp	rax, rbx
	lea	rsi, [rsi]
	mov	r14, rbx
	jae	.label_83
	lea	rdi, [rdi]
	cmp	r12, r13
	mov	r14, rax
	jle	.label_107
.label_83:
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x78], r12
	cmp	dword ptr [rsp + 0x84], 0
	mov	rsp, rsp
	jns	.label_89
	mov	rdi, qword ptr [rsp + 0x68]
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	randread
.label_89:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], r13
	mov	rsp, rsp
	test	r14, r14
	je	.label_114
	mov	al, byte ptr [rsp + 0xb7]
	xor	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rsp + 0x97], al
	lea	rdi, [rdi]
	xor	r13d, r13d
	nop	dword ptr [rax + rax]
.label_109:
	lea	rsi, [r15 + r13]
	mov	rdx, r14
	lea	rsi, [rsi]
	sub	rdx, r13
	mov	edi, ebp
	lea	rsi, [rsi]
	call	write
	mov	rbp, rbp
	mov	r12, rax
	test	r12, r12
	jg	.label_117
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xb7], 0
	mov	rsp, rsp
	jne	.label_91
	test	r12, r12
	je	.label_97
	lea	rsi, [rsi]
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0x1c
	mov	rbp, rbp
	je	.label_97
.label_91:
	mov	rsp, rsp
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsi]
	test	byte ptr [rsp + 0xa7], 1
	mov	rbp, rbp
	jne	.label_100
	mov	rsp, rsp
	cmp	dword ptr [r15], 0x16
	jne	.label_100
	lea	rsi, [rsi]
	xor	esi, esi
	mov	ebp, dword ptr [rsp + 0xa0]
	lea	rdi, [rdi]
	mov	edi, ebp
	lea	rsi, [rsi]
	call	direct_mode
	mov	byte ptr [rsp + 0xa7], 1
	mov	rbp, rbp
	xor	r12d, r12d
	jmp	.label_108
	nop	dword ptr [rax]
.label_100:
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.66
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	r12, rax
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rdi, [r13 + rax]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x350]
	call	umaxtostr
	mov	rbx, rax
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	esi, ebp
	mov	rbp, rbp
	mov	rdx, r12
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	r8, rbx
	call	error
	cmp	ebp, 5
	mov	rbp, rbp
	setne	al
	lea	rdi, [rdi]
	or	al, byte ptr [rsp + 0x97]
	lea	rdi, [rdi]
	jne	.label_86
	nop	
	mov	r12, r13
	lea	rdi, [rdi]
	or	r12, 0x1ff
	nop	
	cmp	r12, r14
	jae	.label_86
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rsi, [r12 + rax + 1]
	xor	edx, edx
	mov	ebp, dword ptr [rsp + 0xa0]
	mov	rsp, rsp
	mov	edi, ebp
	call	lseek
	cmp	rax, -1
	mov	rbp, rbp
	je	.label_103
	inc	r12
	sub	r12, r13
	nop	
	mov	al, 1
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x88], rax
.label_108:
	mov	rbp, rbp
	mov	r15, qword ptr [rsp + 0x98]
.label_117:
	add	r13, r12
	cmp	r14, r13
	ja	.label_109
.label_95:
	mov	r14, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	mov	r12, qword ptr [rsp + 0x78]
.label_99:
	mov	rbx, qword ptr [rsp + 0x60]
	mov	rcx, qword ptr [rsp + 0x8b8]
	nop	
	jmp	.label_112
	nop	dword ptr [rax + rax]
.label_114:
	nop	
	xor	r13d, r13d
	lea	rsi, [rsi]
	mov	r12, qword ptr [rsp + 0x78]
	mov	rcx, qword ptr [rsp + 0x8b8]
	mov	r14, qword ptr [rsp + 0xa8]
.label_112:
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	rdx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	sub	rax, rdx
	cmp	rax, r13
	jb	.label_119
	mov	qword ptr [rsp + 0xa8], r14
	add	rdx, r13
	mov	rbp, rbp
	test	rcx, rcx
	mov	r13, rdx
	mov	rsp, rsp
	je	.label_84
	mov	rbp, rbp
	cmp	r13, r12
	jne	.label_93
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x40]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	jne	.label_94
.label_93:
	xor	edi, edi
	call	time
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x50], rax
	cmp	qword ptr [rsp + 0x48], rax
	mov	rsp, rsp
	jg	.label_84
.label_94:
	mov	qword ptr [rsp + 0x98], r15
	mov	edx, 0x1b2
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r13
	lea	rdi, [rdi]
	lea	rsi, [rsp + 0x350]
	call	human_readable
	mov	rsp, rsp
	mov	r15, r12
	mov	rbp, rbp
	mov	r12, rax
	lea	rdi, [rdi]
	cmp	r13, r15
	mov	rsp, rsp
	je	.label_116
	mov	rdi, qword ptr [rsp + 0x40]
	mov	rbp, rbp
	mov	rsi, r12
	call	strcmp
	test	eax, eax
	lea	rdi, [rdi]
	je	.label_111
.label_116:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0xb8], r13
	mov	rdi, r15
	lea	rsi, [rsi]
	call	known
	mov	rsp, rsp
	test	al, al
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0x8b0]
	mov	rsp, rsp
	mov	r14, r13
	nop	
	je	.label_115
	mov	dword ptr [rsp + 0xa0], ebp
	test	r15, r15
	mov	r13d, 0x64
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0xb8]
	je	.label_82
	mov	rsp, rsp
	movabs	rax, 0x28f5c28f5c28f5c
	cmp	r14, rax
	ja	.label_85
	imul	rax, r14, 0x64
	xor	edx, edx
	div	r15
	jmp	.label_92
.label_97:
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	rcx, qword ptr [rsp + 0xb8]
	mov	rbp, rbp
	sub	rax, rcx
	cmp	r13, rax
	lea	rsi, [rsi]
	ja	.label_95
	lea	r12, [r13 + rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0x58]
	mov	qword ptr [rax], r12
	mov	r14, qword ptr [rsp + 0xa8]
	jmp	.label_99
.label_115:
	nop	
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.69
	mov	rsp, rsp
	mov	edx, 5
	call	dcgettext
	mov	rsp, rsp
	mov	rcx, rax
	mov	qword ptr [rsp + 8], r12
	mov	rbp, rbp
	lea	rax, [rsp + 0x871]
	nop	
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	edi, 0
	lea	rsi, [rsi]
	mov	esi, 0
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	r13, qword ptr [rsp + 0xa8]
	lea	rsi, [rsi]
	mov	rcx, r13
	lea	rdi, [rdi]
	mov	r8, r14
	mov	r9, qword ptr [rsp + 0x8b8]
	call	error
	jmp	.label_118
.label_111:
	lea	rsi, [rsi]
	mov	r12, r15
	nop	
	mov	r15, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	jmp	.label_84
.label_85:
	mov	rax, r15
	movabs	rcx, 0xa3d70a3d70a3d70b
	imul	rcx
	nop	
	mov	rcx, rdx
	mov	rbp, rbp
	add	rcx, r15
	lea	rdi, [rdi]
	mov	rax, rcx
	nop	
	shr	rax, 0x3f
	lea	rsi, [rsi]
	sar	rcx, 6
	lea	rsi, [rsi]
	add	rcx, rax
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r14
	nop	
	div	rcx
.label_92:
	mov	r13, rax
.label_82:
	nop	
	mov	edx, 0x1b0
	lea	rdi, [rdi]
	mov	ecx, 1
	mov	r8d, 1
	mov	rdi, r15
	lea	rsi, [rsp + 0xc0]
	call	human_readable
	mov	rbp, rax
	cmp	r14, r15
	lea	rdi, [rdi]
	cmove	r12, rbp
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.70
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	rbp, rbp
	mov	dword ptr [rsp + 0x18], r13d
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbp
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r12
	lea	rdi, [rdi]
	lea	rax, [rsp + 0x871]
	mov	rbp, rbp
	mov	qword ptr [rsp], rax
	mov	edi, 0
	mov	esi, 0
	xor	eax, eax
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	r13, qword ptr [rsp + 0xa8]
	mov	rcx, r13
	mov	r8, qword ptr [rsp + 0x8b0]
	mov	r9, qword ptr [rsp + 0x8b8]
	mov	rbp, rbp
	call	error
	mov	ebp, dword ptr [rsp + 0xa0]
.label_118:
	mov	qword ptr [rsp + 0xa8], r13
	mov	edx, 0x28c
	lea	r14, [rsp + 0x5e0]
	mov	rdi, r14
	mov	rbp, rbp
	mov	rsi, r12
	lea	rdi, [rdi]
	call	__strcpy_chk
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x50]
	nop	
	lea	rax, [rax + 5]
	mov	qword ptr [rsp + 0x48], rax
	lea	rsi, [rsi]
	mov	edi, ebp
	mov	rsi, r13
	call	dosync
	mov	rsp, rsp
	test	eax, eax
	je	.label_106
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	mov	cl, 1
	nop	
	mov	qword ptr [rsp + 0x88], rcx
	mov	rsp, rsp
	cmp	dword ptr [rax], 5
	mov	qword ptr [rsp + 0x40], r14
	mov	r12, r15
	nop	
	mov	r13, qword ptr [rsp + 0xb8]
	je	.label_96
	lea	rsi, [rsi]
	jmp	.label_86
.label_106:
	mov	qword ptr [rsp + 0x40], r14
	mov	r12, r15
	lea	rdi, [rdi]
	mov	r13, qword ptr [rsp + 0xb8]
	mov	r15, qword ptr [rsp + 0x98]
	mov	rbp, rbp
	jmp	.label_84
.label_103:
	mov	ebx, dword ptr [r15]
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.67
.label_104:
	mov	edx, 5
	nop	
	call	dcgettext
	lea	rsi, [rsi]
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	esi, ebx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xa8]
.label_90:
	call	error
.label_86:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
.label_105:
	mov	eax, 0xffffffff
.label_102:
	mov	rsp, rsp
	add	rsp, 0x878
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	mov	rbp, rbp
	pop	r14
	mov	rsp, rsp
	pop	r15
	nop	
	pop	rbp
	nop	
	ret	
.label_119:
	xor	edi, edi
	nop	
	mov	esi, OFFSET FLAT:.str.68
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	xor	edi, edi
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, r14
	nop	
	jmp	.label_90
.label_107:
	nop	
	mov	edi, ebp
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0xa8]
	call	dosync
	mov	rsp, rsp
	test	eax, eax
	je	.label_98
	lea	rsi, [rsi]
	call	__errno_location
	mov	ebp, dword ptr [rax]
	nop	
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0x88]
	lea	rdi, [rdi]
	and	al, 1
	cmp	ebp, 5
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	eax, 1
	cmovne	eax, ecx
	je	.label_102
	lea	rsi, [rsi]
	jmp	.label_105
.label_98:
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x70]
	call	free
	mov	rax, qword ptr [rsp + 0x88]
	nop	
	and	al, 1
	movzx	eax, al
	nop	
	jmp	.label_102
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ad0

	.globl randint_choose
	.type randint_choose, @function
randint_choose:
	dec	rsi
	jmp	randint_genmax
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ae0

	.globl periodic_pattern
	.type periodic_pattern, @function
periodic_pattern:
	mov	rsp, rsp
	test	edi, edi
	jle	.label_120
	nop	
	mov	ecx, edi
	mov	rbp, rbp
	and	ecx, 0xfff
	mov	eax, ecx
	shl	eax, 0xc
	mov	rsp, rsp
	or	eax, ecx
	mov	rbp, rbp
	mov	ecx, edi
	shr	ecx, 4
	mov	rbp, rbp
	movzx	ecx, cl
	movzx	eax, ah
	nop	
	movzx	edx, dil
	cmp	ecx, edx
	setne	dl
	cmp	ecx, eax
	nop	
	setne	al
	nop	
	or	al, dl
	ret	
.label_120:
	lea	rsi, [rsi]
	xor	eax, eax
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl ptr_align
	.type ptr_align, @function
ptr_align:
	lea	rcx, [rdi + rsi - 1]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, rcx
	nop	
	div	rsi
	sub	rcx, rdx
	mov	rsp, rsp
	mov	rax, rcx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403b50

	.globl direct_mode
	.type direct_mode, @function
direct_mode:
	push	rbp
	lea	rdi, [rdi]
	push	rbx
	nop	
	push	rax
	mov	ebp, esi
	mov	ebx, edi
	nop	
	mov	esi, 3
	nop	
	xor	eax, eax
	call	rpl_fcntl
	mov	rbp, rbp
	test	eax, eax
	jle	.label_121
	mov	ecx, eax
	or	ecx, 0x4000
	nop	
	mov	edx, eax
	mov	rbp, rbp
	and	edx, 0xffffbfff
	mov	rbp, rbp
	test	bpl, bpl
	cmovne	edx, ecx
	cmp	edx, eax
	jne	.label_122
.label_121:
	add	rsp, 8
	pop	rbx
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
.label_122:
	mov	rbp, rbp
	mov	esi, 4
	xor	eax, eax
	mov	rsp, rsp
	mov	edi, ebx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	rpl_fcntl
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403bc0

	.globl dorewind
	.type dorewind, @function
dorewind:
	push	rbx
	sub	rsp, 0x10
	mov	ebx, edi
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsi + 0x18]
	mov	rsp, rsp
	cmp	eax, 0x2000
	lea	rsi, [rsi]
	jne	.label_123
	nop	
	mov	word ptr [rsp + 8], 6
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xc], 1
	mov	rbp, rbp
	lea	rdx, [rsp + 8]
	mov	esi, 0x40086d01
	nop	
	xor	eax, eax
	mov	edi, ebx
	mov	rbp, rbp
	call	ioctl
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	al, 1
	je	.label_125
.label_123:
	nop	
	xor	esi, esi
	xor	edx, edx
	nop	
	mov	edi, ebx
	lea	rsi, [rsi]
	call	lseek
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	jle	.label_124
	call	__errno_location
	mov	rbp, rbp
	mov	dword ptr [rax], 0x16
.label_124:
	mov	rsp, rsp
	test	rbx, rbx
	sete	al
.label_125:
	mov	rsp, rsp
	add	rsp, 0x10
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403c60

	.globl known
	.type known, @function
known:
	mov	rbp, rbp
	test	rdi, rdi
	mov	rsp, rsp
	setns	al
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403c70

	.globl fillpattern
	.type fillpattern, @function
fillpattern:
	push	rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	push	rbx
	mov	r14, rdx
	mov	rbp, rbp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	ecx, edi
	and	ecx, 0xfff
	mov	rbp, rbp
	mov	eax, ecx
	mov	rsp, rsp
	shl	eax, 0xc
	lea	rsi, [rsi]
	or	eax, ecx
	mov	rbp, rbp
	mov	ecx, edi
	nop	
	shr	ecx, 4
	lea	rsi, [rsi]
	mov	byte ptr [rbp], cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp + 1], ah
	mov	rbp, rbp
	mov	byte ptr [rbp + 2], dil
	lea	rsi, [rsi]
	mov	r12d, edi
	nop	
	mov	ebx, 3
	cmp	r14, 6
	jb	.label_126
	mov	rbp, rbp
	mov	r15, r14
	shr	r15, 1
	nop	word ptr cs:[rax + rax]
.label_127:
	lea	rsi, [rsi]
	lea	rdi, [rbp + rbx]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	mov	rbp, rbp
	add	rbx, rbx
	cmp	rbx, r15
	jbe	.label_127
.label_126:
	lea	rsi, [rsi]
	cmp	rbx, r14
	jae	.label_130
	lea	rdi, [rbp + rbx]
	mov	rdx, r14
	sub	rdx, rbx
	mov	rsp, rsp
	mov	rsi, rbp
	call	memcpy
.label_130:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, r12d
	mov	rbp, rbp
	test	ch, 0x10
	je	.label_128
	test	r14, r14
	mov	rsp, rsp
	je	.label_128
	nop	word ptr cs:[rax + rax]
.label_129:
	xor	byte ptr [rbp + rax], 0x80
	mov	rsp, rsp
	add	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, r14
	lea	rsi, [rsi]
	jb	.label_129
.label_128:
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403d70

	.globl passname
	.type passname, @function
passname:
	lea	rdi, [rdi]
	mov	r10, rsi
	lea	rsi, [rsi]
	test	rdi, rdi
	nop	
	je	.label_131
	lea	rsi, [rsi]
	push	rax
	lea	rsi, [rsi]
	movzx	r8d, byte ptr [rdi]
	lea	rsi, [rsi]
	movzx	r9d, byte ptr [rdi + 1]
	movzx	eax, byte ptr [rdi + 2]
	lea	rsi, [rsi]
	mov	dword ptr [rsp], eax
	mov	esi, 1
	nop	
	mov	rdx, -1
	nop	
	mov	ecx, OFFSET FLAT:.str.71
	xor	eax, eax
	mov	rdi, r10
	mov	rsp, rsp
	call	__sprintf_chk
	lea	rsi, [rsi]
	pop	rax
	ret	
.label_131:
	mov	byte ptr [r10 + 6], 0
	lea	rdi, [rdi]
	mov	word ptr [r10 + 4], 0x6d6f
	mov	dword ptr [r10], 0x646e6172
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403de0

	.globl dosync
	.type dosync, @function
dosync:
	nop	
	push	rbp
	push	r15
	push	r14
	push	r12
	push	rbx
	nop	
	mov	r14, rsi
	lea	rdi, [rdi]
	mov	ebp, edi
	lea	rsi, [rsi]
	call	fdatasync
	nop	
	xor	r12d, r12d
	lea	rsi, [rsi]
	test	eax, eax
	je	.label_135
	call	__errno_location
	mov	rbp, rbp
	mov	r15, rax
	lea	rdi, [rdi]
	mov	ebx, dword ptr [r15]
	mov	rsp, rsp
	mov	edi, ebx
	mov	rbp, rbp
	call	ignorable_sync_errno
	lea	rdi, [rdi]
	test	al, al
	mov	rbp, rbp
	je	.label_133
	lea	rdi, [rdi]
	mov	edi, ebp
	call	fsync
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_135
	lea	rsi, [rsi]
	mov	ebx, dword ptr [r15]
	mov	edi, ebx
	lea	rdi, [rdi]
	call	ignorable_sync_errno
	test	al, al
	lea	rdi, [rdi]
	je	.label_134
	call	sync
	jmp	.label_135
.label_133:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.73
	mov	rsp, rsp
	jmp	.label_132
.label_134:
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.74
.label_132:
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	nop	
	xor	edi, edi
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, ebx
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, r14
	lea	rdi, [rdi]
	call	error
	nop	
	mov	dword ptr [r15], ebx
	mov	r12d, 0xffffffff
.label_135:
	mov	eax, r12d
	pop	rbx
	mov	rsp, rsp
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x403ed0

	.globl ignorable_sync_errno
	.type ignorable_sync_errno, @function
ignorable_sync_errno:
	lea	rdi, [rdi]
	add	edi, -9
	lea	rsi, [rsi]
	cmp	edi, 0xd
	ja	.label_136
	mov	rbp, rbp
	mov	eax, 0x3001
	lea	rsi, [rsi]
	mov	cl, dil
	mov	rbp, rbp
	shr	eax, cl
	nop	
	and	eax, 1
	lea	rdi, [rdi]
	ret	
.label_136:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x403f00

	.globl wipename
	.type wipename, @function
wipename:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x38
	mov	rsp, rsp
	mov	rbp, rdx
	mov	qword ptr [rsp + 0x30], rbp
	mov	qword ptr [rsp + 0x20], rsi
	nop	
	mov	r15, rdi
	call	xstrdup
	nop	
	mov	rbx, rax
	mov	rdi, rbx
	call	last_component
	mov	r12, rax
	mov	rbp, rbp
	mov	rdi, rbx
	mov	rbp, rbp
	call	dir_name
	mov	r13, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 3
	lea	rdi, [rdi]
	mov	rdx, r13
	mov	rsp, rsp
	call	quotearg_n_style_colon
	mov	rdi, rax
	call	xstrdup
	nop	
	mov	qword ptr [rsp + 0x28], rax
	mov	rsp, rsp
	mov	r14d, 0xffffffff
	lea	rsi, [rsi]
	cmp	dword ptr [rbp + 0x18], 3
	mov	rbp, rbp
	jne	.label_149
	lea	rsi, [rsi]
	mov	esi, 0x10900
	mov	rbp, rbp
	xor	eax, eax
	mov	rdi, r13
	call	open_safer
	mov	r14d, eax
.label_149:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x30]
	cmp	byte ptr [rax + 0x1c], 0
	mov	rsp, rsp
	je	.label_146
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.77
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	xor	esi, esi
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
.label_146:
	lea	rsi, [rsi]
	mov	qword ptr [rsp], r13
	mov	al, 1
	mov	qword ptr [rsp + 8], rax
	nop	
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x18], 1
	mov	rbp, rbp
	je	.label_140
	mov	rdi, r12
	nop	
	call	base_len
	mov	r13, rax
	lea	rsi, [rsi]
	test	r13, r13
	lea	rdi, [rdi]
	je	.label_140
	mov	rax, r12
	sub	rax, rbx
	add	rax, r15
	mov	qword ptr [rsp + 0x10], rax
	mov	al, 1
	mov	qword ptr [rsp + 0x18], rax
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	nop	dword ptr [rax]
.label_142:
	nop	
	mov	esi, 0x30
	mov	rsp, rsp
	mov	rdi, r12
	mov	rbp, rbp
	mov	rdx, r13
	call	memset
	mov	byte ptr [r12 + r13], 0
	nop	dword ptr [rax]
.label_145:
	mov	rsp, rsp
	mov	edi, 0xffffff9c
	mov	edx, 0xffffff9c
	mov	r8d, 1
	mov	rsi, r15
	lea	rsi, [rsi]
	mov	rcx, rbx
	lea	rdi, [rdi]
	call	renameatu
	test	eax, eax
	nop	
	je	.label_139
	call	__errno_location
	cmp	dword ptr [rax], 0x11
	jne	.label_141
	mov	rdi, r12
	mov	rbp, rbp
	mov	rsi, r13
	mov	rsp, rsp
	call	incname
	test	al, al
	jne	.label_145
	jmp	.label_141
	nop	word ptr cs:[rax + rax]
.label_139:
	test	r14d, r14d
	mov	rsp, rsp
	js	.label_137
	lea	rsi, [rsi]
	mov	edi, r14d
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	dosync
	mov	rsp, rsp
	test	eax, eax
	je	.label_137
	xor	eax, eax
	mov	qword ptr [rsp + 8], rax
.label_137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x1c], 0
	nop	
	je	.label_150
	mov	rax, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, r15
	cmovne	rbp, qword ptr [rsp + 0x20]
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rax
	nop	
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.78
	mov	edx, 5
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, rbp
	mov	r8, rbx
	call	error
.label_150:
	nop	
	lea	rdx, [r13 + 1]
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x10]
	mov	rsi, r12
	mov	rsp, rsp
	call	memcpy
.label_141:
	dec	r13
	jne	.label_142
.label_140:
	lea	rsi, [rsi]
	mov	rdi, r15
	lea	rdi, [rdi]
	call	unlink
	lea	rdi, [rdi]
	test	eax, eax
	mov	rbp, rbp
	je	.label_138
	call	__errno_location
	mov	rbp, rbp
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	xor	r12d, r12d
	lea	rsi, [rsi]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.79
	lea	rsi, [rsi]
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	mov	rcx, rax
	lea	rsi, [rsi]
	xor	edi, edi
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	esi, ebp
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0x20]
	mov	rsp, rsp
	call	error
	lea	rdi, [rdi]
	mov	r15, qword ptr [rsp]
	jmp	.label_147
.label_138:
	mov	rax, qword ptr [rsp + 0x30]
	cmp	byte ptr [rax + 0x1c], 0
	mov	r15, qword ptr [rsp]
	je	.label_148
	lea	rsi, [rsi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.80
	mov	edx, 5
	lea	rsi, [rsi]
	call	dcgettext
	mov	rbp, rbp
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x20]
	call	error
.label_148:
	mov	rbp, rbp
	mov	r12, qword ptr [rsp + 8]
.label_147:
	test	r14d, r14d
	js	.label_143
	mov	rsp, rsp
	mov	edi, r14d
	mov	rsi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	dosync
	nop	
	test	eax, eax
	je	.label_144
	nop	
	xor	r12d, r12d
.label_144:
	nop	
	mov	edi, r14d
	mov	rbp, rbp
	call	close
	test	eax, eax
	nop	
	je	.label_143
	mov	rsp, rsp
	call	__errno_location
	mov	ebp, dword ptr [rax]
	xor	r12d, r12d
	nop	
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.76
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	nop	
	xor	edi, edi
	xor	eax, eax
	mov	esi, ebp
	mov	rdx, rcx
	mov	rcx, qword ptr [rsp + 0x28]
	lea	rdi, [rdi]
	call	error
.label_143:
	mov	rdi, rbx
	call	free
	mov	rsp, rsp
	mov	rdi, r15
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x28]
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	and	r12b, 1
	mov	al, r12b
	add	rsp, 0x38
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4042f0

	.globl incname
	.type incname, @function
incname:
	push	r14
	push	rbx
	push	rax
	mov	rbp, rbp
	mov	rbx, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
.label_152:
	test	rbx, rbx
	je	.label_151
	mov	rsp, rsp
	movsx	esi, byte ptr [r14 + rbx - 1]
	mov	edi, OFFSET FLAT:nameset
	lea	rdi, [rdi]
	mov	edx, 0x41
	call	memchr
	test	rax, rax
	je	.label_155
	mov	rsp, rsp
	lea	rcx, [rbx - 1]
	mov	al, byte ptr [rax + 1]
	nop	
	test	al, al
	mov	dl, 0x30
	je	.label_153
	mov	dl, al
.label_153:
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx - 1], dl
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rbx, rcx
	je	.label_152
	lea	rdi, [rdi]
	jmp	.label_154
.label_151:
	nop	
	xor	eax, eax
.label_154:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_155:
	mov	edi, OFFSET FLAT:.str.81
	mov	esi, OFFSET FLAT:.str.82
	mov	rsp, rsp
	mov	edx, 0x40c
	lea	rsi, [rsi]
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.incname
	nop	
	call	__assert_fail
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x404390

	.globl __argmatch_die
	.type __argmatch_die, @function
__argmatch_die:
	mov	rbp, rbp
	mov	edi, 1
	mov	rsp, rsp
	jmp	usage
	.section	.text
	.align	32
	#Procedure 0x4043a0

	.globl argmatch
	.type argmatch, @function
argmatch:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x28
	mov	rsp, rsp
	mov	r13, rcx
	mov	r14, rdx
	lea	rsi, [rsi]
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbp
	lea	rsi, [rsi]
	mov	r12, rdi
	call	strlen
	mov	rbx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rbp]
	test	r15, r15
	je	.label_162
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x18], -1
	nop	
	xor	eax, eax
	mov	qword ptr [rsp + 0x10], rax
	mov	rax, r14
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_159:
	mov	rbp, rbp
	mov	rdi, r15
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, rbx
	lea	rsi, [rsi]
	call	strncmp
	test	eax, eax
	jne	.label_157
	mov	rdi, r15
	mov	rsp, rsp
	call	strlen
	mov	rbp, rbp
	cmp	rax, rbx
	lea	rsi, [rsi]
	je	.label_156
	lea	rsi, [rsi]
	cmp	qword ptr [rsp + 0x18], -1
	je	.label_161
	mov	rax, qword ptr [rsp + 8]
	mov	rbp, rbp
	test	rax, rax
	je	.label_158
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x18]
	imul	rdi, r13
	lea	rdi, [rdi]
	add	rdi, rax
	mov	rsi, r14
	mov	rbp, rbp
	mov	rdx, r13
	lea	rdi, [rdi]
	call	memcmp
	test	eax, eax
	je	.label_157
.label_158:
	mov	rsp, rsp
	mov	al, 1
	mov	qword ptr [rsp + 0x10], rax
	jmp	.label_157
.label_161:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rbp
	nop	dword ptr [rax + rax]
.label_157:
	nop	
	mov	rax, qword ptr [rsp + 0x20]
	mov	r15, qword ptr [rax + rbp*8 + 8]
	lea	rsi, [rsi]
	inc	rbp
	add	r14, r13
	test	r15, r15
	nop	
	jne	.label_159
	lea	rsi, [rsi]
	jmp	.label_160
.label_162:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], -1
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	qword ptr [rsp + 0x10], rax
.label_160:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0x10]
	test	al, 1
	mov	rbp, -2
	mov	rsp, rsp
	cmove	rbp, qword ptr [rsp + 0x18]
.label_156:
	mov	rax, rbp
	add	rsp, 0x28
	mov	rsp, rsp
	pop	rbx
	pop	r12
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404520

	.globl argmatch_invalid
	.type argmatch_invalid, @function
argmatch_invalid:
	mov	rbp, rbp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r12
	lea	rdi, [rdi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r15, rsi
	lea	rdi, [rdi]
	mov	r14, rdi
	xor	edi, edi
	cmp	rdx, -1
	je	.label_163
	mov	esi, OFFSET FLAT:.str.1_0
	nop	
	jmp	.label_164
.label_163:
	nop	
	mov	esi, OFFSET FLAT:.str_2
.label_164:
	mov	rbp, rbp
	mov	edx, 5
	call	dcgettext
	mov	r12, rax
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, r15
	call	quotearg_n_style
	nop	
	mov	r15, rax
	mov	edi, 1
	lea	rsi, [rsi]
	mov	rsi, r14
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	mov	rsp, rsp
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r12
	mov	rcx, r15
	nop	
	mov	r8, rbx
	add	rsp, 8
	pop	rbx
	lea	rdi, [rdi]
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	lea	rsi, [rsi]
	jmp	error
	nop	
	.section	.text
	.align	32
	#Procedure 0x4045c0

	.globl argmatch_valid
	.type argmatch_valid, @function
argmatch_valid:
	mov	rsp, rsp
	push	rbp
	push	r15
	nop	
	push	r14
	nop	
	push	r13
	push	r12
	push	rbx
	nop	
	push	rax
	mov	r14, rdx
	mov	rsp, rsp
	mov	r13, rsi
	mov	r15, rdi
	xor	edi, edi
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:.str.2_0
	lea	rsi, [rsi]
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	mov	rbx, qword ptr [r15]
	lea	rsi, [rsi]
	test	rbx, rbx
	nop	
	je	.label_165
	xor	r12d, r12d
	lea	rdi, [rdi]
	xor	ebp, ebp
	nop	word ptr cs:[rax + rax]
.label_166:
	test	rbp, rbp
	je	.label_168
	mov	rbp, rbp
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rdx, r14
	call	memcmp
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_167
.label_168:
	lea	rsi, [rsi]
	mov	rbx,  qword ptr [word ptr [rip + stderr]]
	mov	rdi, qword ptr [r15 + rbp*8]
	call	quote
	lea	rsi, [rsi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.3_0
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rdi, rbx
	call	__fprintf_chk
	mov	r12, r13
	jmp	.label_169
	nop	
.label_167:
	mov	rax,  qword ptr [word ptr [rip + stderr]]
	mov	qword ptr [rsp], rax
	mov	rdi, rbx
	call	quote
	mov	rsp, rsp
	mov	rcx, rax
	mov	esi, 1
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.4_0
	xor	eax, eax
	mov	rdi, qword ptr [rsp]
	call	__fprintf_chk
.label_169:
	mov	rsp, rsp
	mov	rbx, qword ptr [r15 + rbp*8 + 8]
	mov	rsp, rsp
	inc	rbp
	add	r13, r14
	test	rbx, rbx
	lea	rsi, [rsi]
	jne	.label_166
.label_165:
	mov	rsi,  qword ptr [word ptr [rip + stderr]]
	mov	edi, 0xa
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	jmp	putc_unlocked
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404710

	.globl __xargmatch_internal
	.type __xargmatch_internal, @function
__xargmatch_internal:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	push	rax
	mov	r14, r9
	lea	rsi, [rsi]
	mov	r15, r8
	mov	r12, rcx
	mov	r13, rdx
	mov	rbx, rsi
	mov	rbp, rdi
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	mov	rsi, r13
	mov	rsp, rsp
	mov	rdx, r12
	mov	rcx, r15
	lea	rdi, [rdi]
	call	argmatch
	mov	rsp, rsp
	test	rax, rax
	jns	.label_170
	mov	rdi, rbp
	mov	rbp, rbp
	mov	rsi, rbx
	mov	rdx, rax
	call	argmatch_invalid
	mov	rdi, r13
	mov	rsp, rsp
	mov	rsi, r12
	lea	rdi, [rdi]
	mov	rdx, r15
	call	argmatch_valid
	mov	rsp, rsp
	call	r14
	lea	rsi, [rsi]
	mov	rax, -1
.label_170:
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	nop	
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047b0
	.globl argmatch_to_argument
	.type argmatch_to_argument, @function
argmatch_to_argument:

	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	mov	rbp, rbp
	push	rbx
	nop	
	mov	r14, rcx
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	nop	
	mov	r12, rdi
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	xor	eax, eax
	mov	rsp, rsp
	test	r13, r13
	lea	rsi, [rsi]
	je	.label_171
	lea	rsi, [rsi]
	add	rbx, 8
	nop	dword ptr [rax]
.label_172:
	mov	rdi, r12
	mov	rsp, rsp
	mov	rsi, r15
	nop	
	mov	rdx, r14
	call	memcmp
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	mov	rax, r13
	nop	
	je	.label_171
	lea	rsi, [rsi]
	mov	r13, qword ptr [rbx]
	add	rbx, 8
	add	r15, r14
	mov	rbp, rbp
	test	r13, r13
	mov	eax, 0
	jne	.label_172
.label_171:
	lea	rdi, [rdi]
	pop	rbx
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404840
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + file_name]],  rdi
	lea	rsi, [rsi]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404850
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404860

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
	je	.label_176
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_173
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	jne	.label_173
.label_176:
	mov	rsp, rsp
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_174
	pop	rbx
	nop	
	pop	r14
	nop	
	pop	rbp
	ret	
.label_173:
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
	jne	.label_175
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
.label_174:
	mov	rsp, rsp
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_175:
	mov	rbp, rbp
	mov	rdi, rbx
	nop	
	call	quotearg_colon
	mov	rcx, rax
	lea	rdi, [rdi]
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_4
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
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404960

	.globl dir_name
	.type dir_name, @function
dir_name:
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	call	mdir_name
	mov	rbp, rbp
	test	rax, rax
	je	.label_177
	pop	rcx
	ret	
.label_177:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x404980

	.globl dir_len
	.type dir_len, @function
dir_len:
	push	r14
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rsi, [rsi]
	mov	rbx, rdi
	movzx	eax, byte ptr [rbx]
	nop	
	cmp	eax, 0x2f
	sete	al
	movzx	r14d, al
	call	last_component
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, rbx
	nop	dword ptr [rax]
.label_179:
	lea	rdi, [rdi]
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	r14, rax
	mov	rsp, rsp
	jae	.label_178
	lea	rcx, [rax - 1]
	nop	
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	lea	rdi, [rdi]
	je	.label_179
.label_178:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	nop	
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4049f0

	.globl mdir_name
	.type mdir_name, @function
mdir_name:
	push	r15
	mov	rbp, rbp
	push	r14
	push	rbx
	mov	r15, rdi
	call	dir_len
	mov	rbx, rax
	mov	rsp, rsp
	test	rbx, rbx
	mov	rbp, rbp
	sete	al
	nop	
	movzx	eax, al
	nop	
	lea	rdi, [rbx + rax + 1]
	call	malloc
	mov	rsp, rsp
	mov	r14, rax
	mov	rsp, rsp
	xor	eax, eax
	test	r14, r14
	lea	rdi, [rdi]
	je	.label_181
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, r15
	mov	rdx, rbx
	call	memcpy
	test	rbx, rbx
	mov	rbp, rbp
	jne	.label_180
	mov	rsp, rsp
	mov	byte ptr [r14 + rbx], 0x2e
	nop	
	mov	ebx, 1
.label_180:
	nop	
	mov	byte ptr [r14 + rbx], 0
	mov	rsp, rsp
	mov	rax, r14
.label_181:
	pop	rbx
	nop	
	pop	r14
	mov	rsp, rsp
	pop	r15
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404a80

	.globl last_component
	.type last_component, @function
last_component:
	dec	rdi
	nop	word ptr cs:[rax + rax]
.label_182:
	nop	
	movzx	eax, byte ptr [rdi + 1]
	lea	rdi, [rdi]
	inc	rdi
	cmp	eax, 0x2f
	mov	rbp, rbp
	je	.label_182
	xor	ecx, ecx
	mov	rax, rdi
	jmp	.label_183
	nop	word ptr [rax + rax]
.label_184:
	inc	rax
	mov	rbp, rbp
	mov	cl, dl
.label_183:
	lea	rsi, [rsi]
	movzx	esi, byte ptr [rax]
	mov	dl, 1
	cmp	esi, 0x2f
	mov	rsp, rsp
	je	.label_184
	test	sil, sil
	mov	rsp, rsp
	je	.label_185
	mov	rbp, rbp
	mov	dl, cl
	and	dl, 1
	mov	rsp, rsp
	je	.label_186
	xor	ecx, ecx
.label_186:
	test	dl, dl
	lea	rsi, [rsi]
	cmovne	rdi, rax
	mov	dl, cl
	jmp	.label_184
.label_185:
	nop	
	mov	rax, rdi
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b00

	.globl base_len
	.type base_len, @function
base_len:
	mov	rsp, rsp
	push	rbx
	mov	rbx, rdi
	call	strlen
	nop	
	mov	rcx, rax
.label_188:
	mov	rbp, rbp
	mov	rax, rcx
	lea	rsi, [rsi]
	cmp	rax, 2
	mov	rsp, rsp
	jb	.label_187
	lea	rdi, [rdi]
	lea	rcx, [rax - 1]
	movzx	edx, byte ptr [rbx + rax - 1]
	cmp	edx, 0x2f
	je	.label_188
.label_187:
	lea	rsi, [rsi]
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404b40

	.globl open_safer
	.type open_safer, @function
open_safer:
	mov	rsp, rsp
	sub	rsp, 0xc8
	nop	
	test	al, al
	mov	rbp, rbp
	je	.label_189
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	lea	rsi, [rsi]
	movaps	xmmword ptr [rsp + 0x70], xmm4
	nop	
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_189:
	mov	qword ptr [rsp + 0x28], r9
	mov	qword ptr [rsp + 0x20], r8
	mov	qword ptr [rsp + 0x18], rcx
	mov	qword ptr [rsp + 0x10], rdx
	mov	rbp, rbp
	xor	edx, edx
	nop	
	test	sil, 0x40
	je	.label_190
	lea	rax, [rsp]
	mov	qword ptr [rsp + 0xc0], rax
	mov	rsp, rsp
	lea	rax, [rsp + 0xd0]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0xb8], rax
	mov	dword ptr [rsp + 0xb4], 0x30
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xb0], 0x10
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	lea	rdi, [rdi]
	ja	.label_192
	lea	rsi, [rsi]
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_191
.label_192:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rsi, [rsi]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_191:
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax]
.label_190:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rsp, rsp
	call	open
	mov	edi, eax
	mov	rsp, rsp
	call	fd_safer
	mov	rbp, rbp
	add	rsp, 0xc8
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404c60

	.globl human_readable
	.type human_readable, @function
human_readable:
	push	rbp
	mov	rsp, rsp
	push	r15
	push	r14
	push	r13
	push	r12
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x98
	mov	r13, r8
	mov	rbp, rbp
	mov	r15, rcx
	mov	r12d, edx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x50], rdi
	mov	eax, r12d
	and	eax, 3
	mov	dword ptr [rsp + 0x64], eax
	mov	eax, r12d
	and	eax, 0x20
	mov	dword ptr [rsp + 0x4c], eax
	lea	rsi, [rsi]
	mov	eax, 0x400
	mov	ecx, 0x3e8
	lea	rsi, [rsi]
	cmovne	ecx, eax
	mov	dword ptr [rsp + 0x74], ecx
	call	localeconv
	lea	rdi, [rdi]
	mov	rbx, rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx]
	mov	rdi, rbp
	call	strlen
	lea	rcx, [rax - 1]
	mov	rbp, rbp
	cmp	rcx, 0x10
	mov	ecx, 1
	cmovb	rcx, rax
	mov	qword ptr [rsp + 0x40], rcx
	mov	eax, OFFSET FLAT:.str_5
	cmovb	rax, rbp
	mov	qword ptr [rsp + 0x20], rax
	lea	rdi, [rdi]
	mov	rbp, qword ptr [rbx + 8]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbx + 0x10]
	nop	
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	strlen
	cmp	rax, 0x11
	mov	ecx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	cmovb	rcx, rbp
	nop	
	lea	rax, [r14 + 0x287]
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x68], rax
	cmp	r13, r15
	lea	rdi, [rdi]
	jbe	.label_200
	nop	
	mov	qword ptr [rsp + 0x30], rcx
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x58], r14
	lea	rdi, [rdi]
	test	r15, r15
	nop	
	mov	r8d, r12d
	mov	r12, r13
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	je	.label_196
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r12
	mov	rbp, rbp
	div	r15
	mov	rsp, rsp
	test	rdx, rdx
	jne	.label_196
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, r12
	div	r15
	mov	rsi, rax
	xor	edx, edx
	lea	rsi, [rsi]
	mov	rax, rdi
	div	rsi
	lea	rsi, [rsi]
	mov	r14, rax
	add	rdx, rdx
	nop	
	lea	rax, [rdx + rdx*4]
	nop	
	xor	edx, edx
	div	rsi
	mov	rcx, rax
	add	rdx, rdx
	setne	al
	mov	rsp, rsp
	cmp	rsi, rdx
	sbb	edi, edi
	and	edi, 1
	or	edi, 2
	nop	
	cmp	rdx, rsi
	movzx	ebp, al
	cmovae	ebp, edi
	nop	
	jmp	.label_218
.label_200:
	mov	qword ptr [rsp + 0x30], rcx
	mov	qword ptr [rsp + 0x58], r14
	lea	rsi, [rsi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rax, r15
	div	r13
	test	rdx, rdx
	lea	rdi, [rdi]
	mov	r8d, r12d
	mov	r12, r13
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x50]
	mov	rsp, rsp
	jne	.label_196
	lea	rdi, [rdi]
	xor	ebp, ebp
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r15
	div	r12
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	r14, rcx
	imul	r14, rdi
	xor	edx, edx
	mov	rax, r14
	mov	rsp, rsp
	div	rcx
	lea	rdi, [rdi]
	cmp	rax, rdi
	mov	ecx, 0
	mov	rsp, rsp
	jne	.label_196
.label_218:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	r15d, r8d
	and	r15d, 0x10
	nop	
	mov	ebx, 0xffffffff
	mov	rsp, rsp
	je	.label_211
	nop	
	mov	r9d, dword ptr [rsp + 0x74]
	mov	edi, r9d
	mov	rbp, rbp
	xor	ebx, ebx
	mov	rbp, rbp
	cmp	rdi, r14
	nop	
	jbe	.label_193
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
	nop	dword ptr [rax]
.label_193:
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, r14
	lea	rsi, [rsi]
	div	rdi
	lea	edx, [rdx + rdx*4]
	lea	ecx, [rcx + rdx*2]
	lea	rsi, [rsi]
	mov	esi, ebp
	lea	rsi, [rsi]
	sar	esi, 1
	lea	rdi, [rdi]
	xor	edx, edx
	mov	r14, rax
	mov	eax, ecx
	lea	rsi, [rsi]
	div	r9d
	mov	rbp, rbp
	lea	edx, [rsi + rdx*2]
	lea	rsi, [rsi]
	cmp	edx, r9d
	mov	ecx, eax
	nop	
	jae	.label_222
	add	edx, ebp
	setne	al
	movzx	ebp, al
	mov	rsp, rsp
	jmp	.label_227
	nop	dword ptr [rax]
.label_222:
	nop	
	add	edx, ebp
	lea	rsi, [rsi]
	cmp	r9d, edx
	nop	
	sbb	ebp, ebp
	lea	rdi, [rdi]
	and	ebp, 1
	lea	rsi, [rsi]
	or	ebp, 2
.label_227:
	mov	rsp, rsp
	inc	ebx
	cmp	ebx, 7
	jg	.label_229
	cmp	rdi, r14
	jbe	.label_193
.label_229:
	nop	
	cmp	r14, 9
	ja	.label_194
	mov	eax, dword ptr [rsp + 0x64]
	mov	rsp, rsp
	cmp	eax, 1
	mov	rsp, rsp
	jne	.label_214
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	eax, 1
	mov	rsp, rsp
	add	eax, ebp
	mov	rsp, rsp
	cmp	eax, 2
	lea	rdi, [rdi]
	ja	.label_202
	jmp	.label_201
.label_196:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x80], r12
	nop	
	test	r12, r12
	mov	rsp, rsp
	setns	al
	movzx	eax, al
	lea	rsi, [rsi]
	fild	qword ptr [rsp + 0x80]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	mov	qword ptr [rsp + 0x88], rdi
	nop	
	test	rdi, rdi
	mov	rbp, rbp
	setns	al
	lea	rdi, [rdi]
	movzx	eax, al
	fild	qword ptr [rsp + 0x88]
	nop	
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	nop	
	mov	qword ptr [rsp + 0x90], r15
	test	r15, r15
	mov	rbp, rbp
	setns	al
	nop	
	movzx	eax, al
	fild	qword ptr [rsp + 0x90]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
	fdivrp	st(2)
	fmulp	st(1)
	lea	rdi, [rdi]
	test	r8b, 0x10
	mov	rsp, rsp
	jne	.label_209
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x40], r12
	mov	qword ptr [rsp + 0x38], rbx
	mov	dword ptr [rsp + 0x50], r8d
	nop	
	fstp	xword ptr [rsp]
	mov	edi, dword ptr [rsp + 0x64]
	call	adjust_value
	mov	rbp, rbp
	fstp	xword ptr [rsp]
	xor	r12d, r12d
	nop	
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_1
	mov	rsp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r14, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rdi, r14
	call	__sprintf_chk
	mov	rdi, r14
	lea	rdi, [rdi]
	call	strlen
	mov	rbp, rbp
	mov	ebx, 0xffffffff
	nop	
	mov	r15, qword ptr [rsp + 0x68]
	jmp	.label_204
.label_209:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x38], rbx
	nop	
	mov	dword ptr [rsp + 0x50], r8d
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsp + 0x74]
	mov	eax, eax
	mov	qword ptr [rsp + 0x78], rax
	mov	rsp, rsp
	fld1	
	xor	ebx, ebx
	fild	qword ptr [rsp + 0x78]
	mov	rsp, rsp
	fldz	
	nop	dword ptr [rax]
.label_220:
	fstp	st(0)
	lea	rsi, [rsi]
	fmul	st(1), st(0)
	lea	rdi, [rdi]
	inc	ebx
	fld	st(0)
	fmul	st(2)
	nop	
	cmp	ebx, 7
	mov	rbp, rbp
	jg	.label_215
	fxch	st(3)
	fucomi	st(3)
	mov	rsp, rsp
	fstp	st(3)
	lea	rdi, [rdi]
	fldz	
	lea	rdi, [rdi]
	jae	.label_220
.label_215:
	mov	rsp, rsp
	fstp	st(1)
	mov	rbp, rbp
	fstp	st(0)
	fdivp	st(1)
	lea	rdi, [rdi]
	fld	st(0)
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp]
	lea	rdi, [rdi]
	mov	ebp, dword ptr [rsp + 0x64]
	mov	rbp, rbp
	mov	edi, ebp
	call	adjust_value
	fstp	xword ptr [rsp]
	nop	
	mov	esi, 1
	mov	rdx, -1
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.3_1
	mov	rsp, rsp
	xor	eax, eax
	mov	r14, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	mov	rdi, r14
	mov	rsp, rsp
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	mov	ecx, dword ptr [rsp + 0x4c]
	shr	ecx, 5
	xor	ecx, 1
	lea	rsi, [rsi]
	or	rcx, 2
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x40]
	add	rcx, rdx
	mov	rsp, rsp
	cmp	rcx, rax
	lea	rsi, [rsi]
	mov	r15, qword ptr [rsp + 0x68]
	jb	.label_230
	fld	xword ptr [rsp + 0x20]
	lea	rdi, [rdi]
	inc	rdx
	mov	rbp, rbp
	mov	ecx, dword ptr [rsp + 0x50]
	test	cl, 8
	jne	.label_203
	fstp	st(0)
	jmp	.label_207
.label_211:
	mov	r13, qword ptr [rsp + 0x68]
	lea	rsi, [rsi]
	jmp	.label_197
.label_203:
	movzx	ecx, byte ptr [rax + r14 - 1]
	nop	
	cmp	ecx, 0x30
	fstp	xword ptr [rsp + 0x20]
	nop	
	jne	.label_207
.label_230:
	mov	qword ptr [rsp + 0x40], r12
	mov	rsp, rsp
	fld	dword ptr [dword ptr [rip + label_213]]
	fld	st(0)
	fstp	xword ptr [rsp + 0x14]
	fld	xword ptr [rsp + 0x20]
	fmulp	st(1)
	fstp	xword ptr [rsp]
	mov	edi, ebp
	mov	rbp, rbp
	call	adjust_value
	mov	rbp, rbp
	fld	xword ptr [rsp + 0x14]
	fdivp	st(1)
	lea	rsi, [rsi]
	fstp	xword ptr [rsp]
	mov	rbp, rbp
	xor	r12d, r12d
	mov	esi, 1
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:.str.2_1
	xor	eax, eax
	mov	rdi, r14
	lea	rdi, [rdi]
	call	__sprintf_chk
	mov	rdi, r14
	call	strlen
	jmp	.label_204
.label_207:
	nop	
	mov	qword ptr [rsp + 0x40], r12
	mov	rbp, rbp
	mov	r12, rdx
.label_204:
	mov	rsp, rsp
	mov	rbp, r15
	sub	rbp, rax
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, r14
	mov	rdx, rax
	mov	rbp, rbp
	call	memmove
	mov	r13, r15
	mov	rsp, rsp
	sub	r13, r12
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rsp + 0x50]
	mov	r12, qword ptr [rsp + 0x40]
	mov	rsp, rsp
	jmp	.label_228
.label_194:
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
.label_214:
	test	eax, eax
	jne	.label_201
	nop	
	test	ebp, ebp
	nop	
	je	.label_201
.label_202:
	mov	rbp, rbp
	inc	ecx
	xor	ebp, ebp
	cmp	ecx, 0xa
	jne	.label_201
	mov	rsp, rsp
	inc	r14
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	cmp	r14, 9
	lea	rsi, [rsi]
	mov	ebp, 0
	ja	.label_205
.label_201:
	test	r8b, 8
	je	.label_210
	test	ecx, ecx
	lea	rdi, [rdi]
	jne	.label_210
	mov	r13, qword ptr [rsp + 0x68]
	jmp	.label_197
.label_210:
	add	ecx, 0x30
	mov	rax, qword ptr [rsp + 0x58]
	mov	rsp, rsp
	lea	r13, [rax + 0x286]
	nop	
	mov	byte ptr [rax + 0x286], cl
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	lea	rsi, [rsi]
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	nop	
	mov	r8d, ebp
	lea	rsi, [rsi]
	xor	ebp, ebp
	nop	
	xor	ecx, ecx
	jmp	.label_197
.label_205:
	mov	rbp, rbp
	xor	ebp, ebp
	mov	rsp, rsp
	mov	r13, qword ptr [rsp + 0x68]
	mov	rsp, rsp
	mov	r14d, 0xa
.label_197:
	mov	eax, dword ptr [rsp + 0x64]
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_224
	nop	
	cmp	eax, 1
	jne	.label_198
	movsxd	rax, ebp
	lea	rdi, [rdi]
	mov	edx, r14d
	mov	rsp, rsp
	and	edx, 1
	lea	rsi, [rsi]
	add	rdx, rax
	mov	rsp, rsp
	setne	al
	movzx	eax, al
	nop	
	add	eax, ecx
	cmp	eax, 5
	jg	.label_225
	nop	
	jmp	.label_198
.label_224:
	mov	rbp, rbp
	add	ecx, ebp
	nop	
	jle	.label_198
.label_225:
	inc	r14
	mov	rbp, rbp
	mov	eax, dword ptr [rsp + 0x74]
	mov	rbp, rbp
	cmp	ebx, 7
	lea	rdi, [rdi]
	jg	.label_198
	lea	rdi, [rdi]
	test	r15d, r15d
	lea	rsi, [rsi]
	je	.label_198
	cmp	r14, rax
	lea	rdi, [rdi]
	jne	.label_198
	inc	ebx
	mov	r14d, 1
	lea	rsi, [rsi]
	test	r8b, 8
	jne	.label_198
	mov	rsp, rsp
	mov	byte ptr [r13 - 1], 0x30
	dec	r13
	nop	
	mov	rdx, qword ptr [rsp + 0x40]
	sub	r13, rdx
	mov	rdi, r13
	mov	rsi, qword ptr [rsp + 0x20]
	mov	ebp, r8d
	call	memcpy
	mov	r8d, ebp
	lea	rdi, [rdi]
	mov	r14d, 1
.label_198:
	mov	r15, qword ptr [rsp + 0x68]
	movabs	rcx, 0xcccccccccccccccd
	mov	rbp, rbp
	mov	rbp, r13
	nop	dword ptr [rax + rax]
.label_217:
	mov	rbp, rbp
	mov	rax, r14
	mul	rcx
	nop	
	mov	eax, edx
	shr	eax, 2
	and	eax, 0x3ffffffe
	lea	eax, [rax + rax*4]
	mov	rbp, rbp
	mov	esi, r14d
	lea	rdi, [rdi]
	sub	esi, eax
	lea	rdi, [rdi]
	or	sil, 0x30
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], sil
	lea	rsi, [rsi]
	dec	rbp
	lea	rdi, [rdi]
	shr	rdx, 3
	cmp	r14, 9
	mov	r14, rdx
	ja	.label_217
	mov	rsp, rsp
	mov	r14, qword ptr [rsp + 0x58]
.label_228:
	lea	rdi, [rdi]
	test	r8b, 4
	nop	
	je	.label_226
	nop	
	sub	r13, rbp
	nop	
	mov	rdi, rbp
	mov	rsi, r13
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0x38]
	nop	
	mov	rcx, qword ptr [rsp + 0x30]
	mov	ebp, r8d
	lea	rsi, [rsi]
	call	group_number
	mov	r8d, ebp
	mov	rbp, rax
.label_226:
	nop	
	mov	eax, dword ptr [rsp + 0x74]
	test	r8b, r8b
	mov	rbp, rbp
	jns	.label_195
	test	ebx, ebx
	jns	.label_199
	lea	rsi, [rsi]
	xor	ebx, ebx
	cmp	r12, 2
	nop	
	jb	.label_199
	mov	eax, eax
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, 1
	nop	
.label_206:
	mov	ebx, 8
	nop	
	cmp	ecx, 7
	nop	
	je	.label_199
	inc	ecx
	mov	rsp, rsp
	imul	rdx, rax
	lea	rdi, [rdi]
	cmp	rdx, r12
	lea	rsi, [rsi]
	mov	ebx, ecx
	jb	.label_206
.label_199:
	mov	eax, r8d
	and	eax, 0x100
	test	r8b, 0x40
	mov	rsp, rsp
	je	.label_212
	mov	ecx, ebx
	or	ecx, eax
	je	.label_212
	mov	byte ptr [r14 + 0x287], 0x20
	nop	
	add	r14, 0x288
	lea	rsi, [rsi]
	mov	r15, r14
.label_212:
	mov	rsp, rsp
	test	ebx, ebx
	je	.label_216
	cmp	dword ptr [rsp + 0x4c], 0
	jne	.label_219
	mov	rsp, rsp
	mov	cl, 0x6b
	cmp	ebx, 1
	je	.label_221
.label_219:
	lea	rdi, [rdi]
	movsxd	rcx, ebx
	lea	rsi, [rsi]
	mov	cl,  byte ptr [byte ptr [rcx + power_letter]]
.label_221:
	mov	byte ptr [r15], cl
	inc	r15
.label_216:
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_195
	mov	rbp, rbp
	cmp	dword ptr [rsp + 0x4c], 0
	lea	rdi, [rdi]
	je	.label_223
	mov	rsp, rsp
	test	ebx, ebx
	nop	
	je	.label_223
	mov	byte ptr [r15], 0x69
	mov	rsp, rsp
	inc	r15
.label_223:
	mov	rbp, rbp
	mov	byte ptr [r15], 0x42
	inc	r15
.label_195:
	mov	byte ptr [r15], 0
	mov	rax, rbp
	add	rsp, 0x98
	pop	rbx
	mov	rsp, rsp
	pop	r12
	nop	
	pop	r13
	mov	rbp, rbp
	pop	r14
	pop	r15
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

	.globl adjust_value
	.type adjust_value, @function
adjust_value:
	lea	rsi, [rsi]
	fld	xword ptr [rsp + 8]
	lea	rsi, [rsi]
	cmp	edi, 1
	nop	
	je	.label_231
	mov	rsp, rsp
	fld	xword ptr [word ptr [rip + label_233]]
	lea	rdi, [rdi]
	fucomip	st(1)
	lea	rdi, [rdi]
	jbe	.label_231
	lea	rdi, [rdi]
	fld	dword ptr [dword ptr [rip + label_232]]
	nop	
	fld	st(1)
	lea	rsi, [rsi]
	fsub	st(1)
	fnstcw	word ptr [rsp - 0x22]
	mov	ax, word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], 0xc7f
	fldcw	word ptr [rsp - 0x22]
	mov	word ptr [rsp - 0x22], ax
	nop	
	fistp	qword ptr [rsp - 0x18]
	fldcw	word ptr [rsp - 0x22]
	mov	rbp, rbp
	fnstcw	word ptr [rsp - 0x24]
	mov	ax, word ptr [rsp - 0x24]
	mov	rsp, rsp
	mov	word ptr [rsp - 0x24], 0xc7f
	fldcw	word ptr [rsp - 0x24]
	mov	word ptr [rsp - 0x24], ax
	fld	st(1)
	fistp	qword ptr [rsp - 0x20]
	fldcw	word ptr [rsp - 0x24]
	movabs	rax, 0x8000000000000000
	xor	rax, qword ptr [rsp - 0x18]
	mov	rbp, rbp
	fxch	st(1)
	nop	
	fucomi	st(1)
	mov	rbp, rbp
	fstp	st(1)
	lea	rdi, [rdi]
	cmovb	rax, qword ptr [rsp - 0x20]
	mov	rsp, rsp
	test	edi, edi
	sete	sil
	mov	rbp, rbp
	mov	qword ptr [rsp - 0x10], rax
	test	rax, rax
	lea	rdi, [rdi]
	setns	dl
	mov	rbp, rbp
	movzx	edx, dl
	nop	
	fild	qword ptr [rsp - 0x10]
	lea	rdi, [rdi]
	fadd	dword ptr [dword ptr [+ (rdx * 4) + label_208]]
	fucomip	st(1)
	mov	rsp, rsp
	fstp	st(0)
	lea	rsi, [rsi]
	setp	dl
	setne	cl
	lea	rsi, [rsi]
	or	cl, dl
	lea	rsi, [rsi]
	and	cl, sil
	movzx	ecx, cl
	add	rcx, rax
	nop	
	mov	qword ptr [rsp - 8], rcx
	setns	al
	mov	rbp, rbp
	movzx	eax, al
	nop	
	fild	qword ptr [rsp - 8]
	lea	rdi, [rdi]
	fadd	dword ptr [dword ptr [+ (rax * 4) + label_208]]
.label_231:
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405630

	.globl group_number
	.type group_number, @function
group_number:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r13
	lea	rdi, [rdi]
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	qword ptr [rsp + 8], rcx
	mov	r15, rdx
	mov	r12, rsi
	nop	
	mov	rbx, rdi
	mov	rsp, rsp
	mov	rdi, rcx
	call	strlen
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rsi, [rsi]
	lea	rdi, [rsp + 0x10]
	lea	rsi, [rsi]
	mov	rsi, rbx
	mov	rbp, rbp
	mov	rdx, r12
	mov	rbp, rbp
	call	memcpy
	add	rbx, r12
	mov	r13, r14
	lea	rsi, [rsi]
	neg	r13
	lea	rdi, [rdi]
	mov	rbp, -1
	nop	
	jmp	.label_235
	nop	dword ptr [rax]
.label_236:
	add	rbx, r13
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 8]
	mov	rdx, r14
	call	memcpy
.label_235:
	movzx	eax, byte ptr [r15]
	lea	rdi, [rdi]
	test	rax, rax
	je	.label_234
	cmp	eax, 0x7f
	mov	rbp, rbp
	cmovae	rax, r12
	lea	rsi, [rsi]
	inc	r15
	mov	rbp, rbp
	mov	rbp, rax
.label_234:
	cmp	r12, rbp
	lea	rsi, [rsi]
	cmovb	rbp, r12
	nop	
	sub	rbx, rbp
	mov	rax, r12
	lea	rdi, [rdi]
	sub	rax, rbp
	lea	rdi, [rdi]
	lea	rsi, [rsp + rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, rbp
	mov	rsp, rsp
	call	memcpy
	mov	rbp, rbp
	sub	r12, rbp
	mov	rsp, rsp
	jne	.label_236
	lea	rdi, [rdi]
	mov	rax, rbx
	add	rsp, 0x48
	mov	rbp, rbp
	pop	rbx
	pop	r12
	nop	
	pop	r13
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405740
	.globl human_options
	.type human_options, @function
human_options:

	lea	rdi, [rdi]
	push	rbx
	nop	
	mov	rbx, rdx
	mov	rsp, rsp
	mov	rax, rsi
	mov	rsi, rbx
	mov	rdx, rax
	call	humblock
	mov	rbp, rbp
	cmp	qword ptr [rbx], 0
	lea	rdi, [rdi]
	jne	.label_237
	nop	
	call	default_block_size
	mov	rbp, rbp
	mov	qword ptr [rbx], rax
	nop	
	mov	eax, 4
.label_237:
	lea	rdi, [rdi]
	pop	rbx
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405780

	.globl humblock
	.type humblock, @function
humblock:
	push	rbp
	push	r15
	push	r14
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	rsp, rsp
	mov	r14, rdx
	nop	
	mov	r15, rsi
	test	rdi, rdi
	nop	
	jne	.label_238
	mov	edi, OFFSET FLAT:.str.4_1
	nop	
	call	getenv
	lea	rdi, [rdi]
	mov	rdi, rax
	test	rdi, rdi
	mov	rsp, rsp
	jne	.label_238
	mov	edi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	call	getenv
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	test	rdi, rdi
	je	.label_239
.label_238:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rdi]
	lea	rbx, [rdi + 1]
	cmp	eax, 0x27
	sete	al
	nop	
	cmovne	rbx, rdi
	nop	
	movzx	ebp, al
	lea	rdi, [rdi]
	shl	ebp, 2
	mov	rbp, rbp
	mov	esi, OFFSET FLAT:block_size_args
	mov	edx, OFFSET FLAT:block_size_opts
	mov	ecx, 4
	nop	
	mov	rdi, rbx
	call	argmatch
	test	eax, eax
	js	.label_240
	mov	rbp, rbp
	cdqe	
	or	ebp,  dword ptr [dword ptr [+ (rax * 4) + block_size_opts]]
	mov	qword ptr [r15], 1
.label_241:
	mov	rbp, rbp
	mov	dword ptr [r14], ebp
	nop	
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_246
.label_240:
	mov	rbp, rbp
	lea	rsi, [rsp]
	lea	rdi, [rdi]
	xor	edx, edx
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.6_0
	nop	
	mov	rdi, rbx
	lea	rdi, [rdi]
	mov	rcx, r15
	mov	rsp, rsp
	call	xstrtoumax
	test	eax, eax
	je	.label_242
	mov	rbp, rbp
	mov	dword ptr [r14], 0
.label_246:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	ret	
.label_242:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbx]
	mov	rsp, rsp
	add	al, 0xd0
	mov	rbp, rbp
	movzx	eax, al
	cmp	eax, 0xa
	lea	rdi, [rdi]
	jb	.label_241
	mov	rax, qword ptr [rsp]
	nop	word ptr cs:[rax + rax]
.label_244:
	cmp	rax, rbx
	je	.label_245
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbx + 1]
	inc	rbx
	nop	
	add	cl, 0xd0
	movzx	ecx, cl
	cmp	ecx, 0xa
	mov	rbp, rbp
	jae	.label_244
	mov	rsp, rsp
	jmp	.label_241
.label_239:
	lea	rsi, [rsi]
	call	default_block_size
	mov	qword ptr [r15], rax
	xor	ebp, ebp
	jmp	.label_241
.label_245:
	mov	ecx, ebp
	or	ecx, 0x80
	or	ebp, 0x180
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rax - 1]
	lea	rdi, [rdi]
	cmp	edx, 0x42
	mov	rsp, rsp
	cmove	ecx, ebp
	lea	rdi, [rdi]
	jne	.label_243
	movzx	eax, byte ptr [rax - 2]
	mov	rsp, rsp
	cmp	eax, 0x69
	jne	.label_241
.label_243:
	lea	rdi, [rdi]
	or	ecx, 0x20
	nop	
	mov	ebp, ecx
	lea	rsi, [rsi]
	jmp	.label_241
	nop	
	.section	.text
	.align	32
	#Procedure 0x405920

	.globl default_block_size
	.type default_block_size, @function
default_block_size:
	lea	rsi, [rsi]
	push	rax
	nop	
	mov	edi, OFFSET FLAT:.str.9_0
	call	getenv
	nop	
	test	rax, rax
	mov	ecx, 0x200
	lea	rsi, [rsi]
	mov	eax, 0x400
	cmovne	rax, rcx
	lea	rsi, [rsi]
	pop	rcx
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405950

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	mov	rcx, rdi
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x14], 0
	add	rsi, 0x14
	movabs	r8, 0xcccccccccccccccd
	nop	dword ptr [rax + rax]
.label_247:
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
	ja	.label_247
	mov	rax, rsi
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4059b0

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
	je	.label_248
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
	jl	.label_250
	lea	rdi, [r14 - 7]
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_250
	mov	esi, OFFSET FLAT:.str.2_2
	lea	rdi, [rdi]
	mov	edx, 3
	mov	rbp, rbp
	mov	rdi, r14
	lea	rsi, [rsi]
	call	strncmp
	mov	rbp, rbp
	test	eax, eax
	lea	rdi, [rdi]
	jne	.label_249
	nop	
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_249:
	lea	rsi, [rsi]
	mov	rbx, r14
.label_250:
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	ret	
.label_248:
	mov	rcx,  qword ptr [word ptr [rip + stderr]]
	mov	rbp, rbp
	mov	edi, OFFSET FLAT:.str_6
	mov	rbp, rbp
	mov	esi, 0x37
	lea	rsi, [rsi]
	mov	edx, 1
	call	fwrite
	lea	rsi, [rsi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405aa0
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
	.align	32
	#Procedure 0x405af0
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
	.align	32
	#Procedure 0x405b10
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
	.align	32
	#Procedure 0x405b30

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
	.align	32
	#Procedure 0x405ba0
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
	.align	32
	#Procedure 0x405bc0

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
	je	.label_251
	test	rdx, rdx
	nop	
	je	.label_251
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	lea	rdi, [rdi]
	ret	
.label_251:
	push	rax
	nop	
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405c00
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
	.align	32
	#Procedure 0x405ca0

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
.label_362:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rsi, [rsi]
	mov	ecx, r13d
	lea	rdi, [rdi]
	cmp	r13d, 0xa
	ja	.label_318
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	rsp, rsp
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_352]]
.label_683:
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
.label_684:
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
	jne	.label_258
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	mov	rsp, rsp
	je	.label_258
	mov	rsp, rsp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	word ptr cs:[rax + rax]
.label_297:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_286
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rsi], al
.label_286:
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
	jne	.label_297
.label_258:
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
	jmp	.label_261
.label_676:
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
	jmp	.label_261
.label_679:
	mov	rsp, rsp
	mov	al, 1
.label_677:
	mov	r15b, 1
.label_680:
	test	r15b, 1
	mov	rsp, rsp
	mov	cl, 1
	je	.label_329
	mov	cl, al
.label_329:
	lea	rdi, [rdi]
	mov	al, cl
.label_678:
	mov	r14d, 2
	mov	rsp, rsp
	test	r15b, 1
	mov	rsp, rsp
	jne	.label_334
	test	r10, r10
	je	.label_341
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	lea	rdi, [rdi]
	jmp	.label_344
.label_334:
	xor	ecx, ecx
	jmp	.label_344
.label_681:
	mov	r14d, 5
	mov	rsp, rsp
	test	r15b, 1
	jne	.label_353
	test	r10, r10
	je	.label_317
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	lea	rsi, [rsi]
	jmp	.label_274
.label_682:
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
	jmp	.label_261
.label_341:
	nop	
	mov	ecx, 1
	nop	dword ptr [rax]
.label_344:
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
	jmp	.label_261
.label_353:
	xor	eax, eax
	mov	rbp, rbp
	jmp	.label_274
.label_317:
	mov	rbp, rbp
	mov	eax, 1
.label_274:
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
.label_261:
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
	jmp	.label_295
	nop	word ptr [rax + rax]
.label_322:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	lea	rsi, [rsi]
	sar	r15b, 7
	and	r15b, r8b
	lea	rdi, [rdi]
	mov	r8b, r15b
	nop	
	inc	rsi
.label_295:
	lea	rsi, [rsi]
	cmp	rbp, -1
	je	.label_347
	cmp	rsi, rbp
	jne	.label_348
	jmp	.label_350
	nop	word ptr cs:[rax + rax]
.label_347:
	lea	rsi, [rsi]
	cmp	byte ptr [r9 + rsi], 0
	nop	
	je	.label_350
.label_348:
	mov	rbp, rbp
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_357
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_332
	mov	rsp, rsp
	cmp	rbp, -1
	lea	rdi, [rdi]
	jne	.label_332
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
.label_332:
	lea	rsi, [rsi]
	cmp	rbx, rbp
	jbe	.label_270
.label_357:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	dword ptr [rsp + 0xec], 0
.label_315:
	mov	rsp, rsp
	movzx	r13d, byte ptr [r9 + rsi]
	mov	rsp, rsp
	cmp	r13, 0x7e
	nop	
	ja	.label_278
	lea	rsi, [rsi]
	xor	edx, edx
	nop	
	mov	r15b, 1
	mov	rbp, rbp
	mov	cl, 0x6e
	mov	bl, 0x61
	nop	
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_287]]
.label_698:
	test	rsi, rsi
	jne	.label_294
	jmp	.label_296
	nop	word ptr [rax + rax]
.label_270:
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
	jne	.label_312
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
	je	.label_315
	mov	rsp, rsp
	jmp	.label_262
.label_312:
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
	jmp	.label_315
.label_702:
	xor	eax, eax
	cmp	rbp, -1
	lea	rsi, [rsi]
	je	.label_293
	test	rsi, rsi
	nop	
	jne	.label_342
	cmp	rbp, 1
	lea	rsi, [rsi]
	je	.label_296
	mov	rsp, rsp
	xor	r15d, r15d
	jmp	.label_257
.label_691:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_363
	lea	rsi, [rsi]
	cmp	byte ptr [rsp + 0xcf], 0
	nop	
	jne	.label_262
	cmp	edi, 2
	nop	
	jne	.label_359
	lea	rdi, [rdi]
	mov	al, r11b
	and	al, 1
	nop	
	jne	.label_361
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_365
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], 0x27
.label_365:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_253
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_253:
	nop	
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_304
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	rsp, rsp
	mov	r11b, 1
	nop	
	mov	rcx, rax
	jmp	.label_269
.label_692:
	mov	bl, 0x62
	lea	rsi, [rsi]
	jmp	.label_277
.label_693:
	mov	cl, 0x74
	jmp	.label_284
.label_694:
	mov	bl, 0x76
	lea	rdi, [rdi]
	jmp	.label_277
.label_695:
	mov	bl, 0x66
	jmp	.label_277
.label_696:
	nop	
	mov	cl, 0x72
	mov	rsp, rsp
	jmp	.label_284
.label_699:
	lea	rsi, [rsi]
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	rbp, rbp
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 2
	jne	.label_343
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_281
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
	jae	.label_303
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	mov	byte ptr [rax + rcx], 0x27
.label_303:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_319
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x5c
.label_319:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	lea	rdi, [rdi]
	jae	.label_325
	mov	rcx, qword ptr [rsp + 0xe0]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_325:
	nop	
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	mov	rbp, rbp
	jmp	.label_335
.label_700:
	lea	rdi, [rdi]
	mov	r14, rdi
	lea	rdi, [rdi]
	cmp	r14d, 5
	mov	rsp, rsp
	je	.label_280
	cmp	r14d, 2
	lea	rdi, [rdi]
	jne	.label_349
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_281
.label_349:
	mov	rdi, r14
	jmp	.label_294
.label_701:
	mov	r14, rdi
	nop	
	cmp	r14d, 2
	mov	rsp, rsp
	jne	.label_355
	nop	
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_281
	mov	rdi, r14
	jmp	.label_364
.label_278:
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	lea	rsi, [rsi]
	jne	.label_367
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
.label_313:
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
	ja	.label_268
	test	dl, dl
	mov	rsp, rsp
	je	.label_268
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_257
.label_293:
	test	rsi, rsi
	jne	.label_291
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_291
.label_296:
	mov	rbp, rbp
	mov	dl, 1
.label_697:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_262
	lea	rdi, [rdi]
	xor	eax, eax
	mov	r15b, dl
	mov	rbp, rbp
	jmp	.label_257
.label_363:
	cmp	dword ptr [rsp + 0x5c], 0
	mov	rbp, rbp
	je	.label_294
	lea	rsi, [rsi]
	mov	r14, rdi
	inc	rsi
	jmp	.label_295
.label_343:
	mov	rdi, r14
.label_335:
	xor	eax, eax
	nop	
	mov	r15b, 1
	lea	rdi, [rdi]
	jmp	.label_257
.label_355:
	mov	rdi, r14
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0x6a], 0
	nop	
	mov	cl, r13b
	nop	
	je	.label_284
.label_364:
	lea	rsi, [rsi]
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_298
.label_284:
	mov	rsp, rsp
	cmp	byte ptr [rsp + 0xa7], 0
	lea	rsi, [rsi]
	mov	bl, cl
	nop	
	je	.label_262
.label_277:
	mov	rbp, rbp
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	mov	rsp, rsp
	je	.label_257
	lea	rsi, [rsi]
	jmp	.label_292
.label_367:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_336
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
.label_336:
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
.label_305:
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
	je	.label_311
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
	je	.label_372
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
	jne	.label_337
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	lea	rsi, [rsi]
	mov	ecx, 1
.label_289:
	movsx	edx, byte ptr [rax + rcx]
	lea	rdi, [rdi]
	add	edx, -0x5b
	mov	rsp, rsp
	cmp	edx, 0x21
	lea	rsi, [rsi]
	ja	.label_283
	mov	rbp, rbp
	bt	rsi, rdx
	jb	.label_288
.label_283:
	inc	rcx
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jb	.label_289
.label_337:
	mov	rsp, rsp
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	mov	rbp, rbp
	test	eax, eax
	mov	rsp, rsp
	jne	.label_255
	xor	r15d, r15d
.label_255:
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
	je	.label_305
	jmp	.label_313
.label_291:
	mov	rbp, -1
	lea	rdi, [rdi]
	xor	r15d, r15d
	jmp	.label_257
.label_280:
	mov	rdi, r14
	lea	rsi, [rsi]
	cmp	dword ptr [rsp + 0x58], 0
	lea	rdi, [rdi]
	je	.label_294
	lea	rcx, [rsi + 2]
	lea	rdi, [rdi]
	cmp	rcx, rbp
	jae	.label_294
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_294
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	mov	rsp, rsp
	cmp	edx, 0x3e
	ja	.label_326
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	nop	
	bt	rsi, rdx
	lea	rdi, [rdi]
	jae	.label_331
	cmp	byte ptr [rsp + 0xcf], 0
	mov	rbp, rbp
	jne	.label_262
	lea	rsi, [rsi]
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_321
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_321:
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	lea	rsi, [rsi]
	cmp	rax, r10
	jae	.label_263
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 0x22
.label_263:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_308
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x22
.label_308:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	nop	
	cmp	rax, r10
	lea	rsi, [rsi]
	jae	.label_368
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_368:
	nop	
	add	qword ptr [rsp + 0xf0], 4
	mov	rsp, rsp
	xor	eax, eax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rdi, [rdi]
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_257
.label_294:
	xor	eax, eax
	mov	rsp, rsp
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_257:
	test	r12b, r12b
	je	.label_271
	cmp	qword ptr [rsp + 0x140], 0
	nop	
	jne	.label_273
	jmp	.label_276
	nop	word ptr cs:[rax + rax]
.label_271:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xb7], 0
	lea	rdi, [rdi]
	je	.label_276
.label_273:
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
	jne	.label_314
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_298
	jmp	.label_292
	nop	word ptr cs:[rax + rax]
.label_276:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_292
	jmp	.label_298
.label_314:
	mov	bl, r13b
	mov	rsi, r14
.label_292:
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_262
	mov	rsp, rsp
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_266
	nop	
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_266
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rdi, [rdi]
	jae	.label_285
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_285:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_320
	mov	rbp, rbp
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x24
.label_320:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_330
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_330:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_266:
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_345
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_345:
	lea	rdi, [rdi]
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_316
.label_342:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_257
.label_268:
	mov	rsp, rsp
	add	rcx, rsi
	xor	eax, eax
	mov	rsp, rsp
	jmp	.label_360
	nop	word ptr cs:[rax + rax]
.label_306:
	mov	rbp, rbp
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_360:
	mov	rbp, rbp
	test	dl, dl
	mov	rbp, rbp
	je	.label_371
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	lea	rdi, [rdi]
	je	.label_252
	mov	rsp, rsp
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_259
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	lea	rsi, [rsi]
	mov	rsi, rbx
.label_259:
	nop	
	inc	qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	dword ptr [rsp + 0xec], 0
	mov	rsp, rsp
	jmp	.label_252
	nop	dword ptr [rax]
.label_371:
	lea	rdi, [rdi]
	cmp	byte ptr [rsp + 0xcf], 0
	lea	rdi, [rdi]
	jne	.label_281
	cmp	r14d, 2
	jne	.label_309
	mov	rsp, rsp
	mov	al, r11b
	mov	rsp, rsp
	and	al, 1
	jne	.label_309
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_351
	mov	rax, qword ptr [rsp + 0xe0]
	nop	
	mov	rdx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	byte ptr [rax + rdx], 0x27
.label_351:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	mov	rsp, rsp
	inc	rax
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_302
	mov	rbp, rbp
	mov	rdx, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rdx + rax], 0x24
.label_302:
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	nop	
	lea	rax, [rax + 2]
	mov	rsp, rsp
	cmp	rax, r10
	jae	.label_310
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_310:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_309:
	cmp	qword ptr [rsp + 0xf0], r10
	nop	
	jae	.label_275
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_275:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rdi, [rdi]
	inc	rax
	mov	rbp, rbp
	cmp	rax, r10
	jae	.label_333
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
.label_333:
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	nop	
	jae	.label_338
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
.label_338:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 3
	mov	rsp, rsp
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_252:
	mov	rsp, rsp
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_298
	test	r11b, 1
	lea	rdi, [rdi]
	je	.label_366
	mov	bl, al
	lea	rdi, [rdi]
	and	bl, 1
	mov	r14, rdi
	jne	.label_267
	lea	rsi, [rsi]
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_369
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_369:
	mov	rsi, qword ptr [rsp + 0xf0]
	nop	
	inc	rsi
	cmp	rsi, r10
	nop	
	jae	.label_260
	nop	
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	byte ptr [rdi + rsi], 0x27
.label_260:
	add	qword ptr [rsp + 0xf0], 2
	mov	rbp, rbp
	xor	r11d, r11d
	mov	rsi, rbx
	lea	rdi, [rdi]
	jmp	.label_267
	nop	word ptr cs:[rax + rax]
.label_366:
	lea	rsi, [rsi]
	mov	r14, rdi
.label_267:
	mov	rbp, rbp
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_306
	lea	rsi, [rsi]
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rsi + rbx], r13b
	mov	rsp, rsp
	mov	rsi, rdi
	mov	rbp, rbp
	jmp	.label_306
	nop	word ptr cs:[rax + rax]
.label_298:
	lea	rsi, [rsi]
	test	r11b, 1
	je	.label_300
	lea	rsi, [rsi]
	and	al, 1
	jne	.label_300
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_373
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp + 0xf0]
	nop	
	mov	byte ptr [rax + rcx], 0x27
.label_373:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	inc	rax
	lea	rdi, [rdi]
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_327
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_327:
	lea	rsi, [rsi]
	add	qword ptr [rsp + 0xf0], 2
	lea	rdi, [rdi]
	xor	r11d, r11d
	nop	
	mov	bl, r13b
	lea	rsi, [rsi]
	jmp	.label_316
	nop	word ptr cs:[rax + rax]
.label_300:
	lea	rsi, [rsi]
	mov	bl, r13b
	mov	r14, rdi
.label_316:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_322
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	rbp, rbp
	mov	byte ptr [rax + rcx], bl
	lea	rdi, [rdi]
	jmp	.label_322
.label_359:
	nop	
	mov	rcx, qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	jmp	.label_269
.label_361:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_269:
	cmp	rcx, r10
	jae	.label_339
	mov	rsp, rsp
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_339:
	lea	rsi, [rsi]
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	lea	rsi, [rsi]
	mov	r13b, 0x30
	cmp	edi, 2
	lea	rsi, [rsi]
	je	.label_346
	lea	rdx, [rsi + 1]
	lea	rsi, [rsi]
	cmp	rdx, rbp
	jae	.label_370
	nop	
	mov	dl, byte ptr [r9 + rdx]
	mov	rbp, rbp
	add	dl, 0xd0
	nop	
	movzx	edx, dl
	mov	rbp, rbp
	cmp	edx, 9
	mov	rsp, rsp
	ja	.label_358
	cmp	qword ptr [rsp + 0xf0], r10
	lea	rsi, [rsi]
	jae	.label_323
	mov	rsp, rsp
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	nop	
	mov	rsi, rbx
.label_323:
	lea	rdi, [rdi]
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_256
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	nop	
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsp, rsp
	mov	rsi, rbx
.label_256:
	mov	rsp, rsp
	add	rcx, 3
	xor	r15d, r15d
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0xf0], rcx
	lea	rdi, [rdi]
	jmp	.label_257
.label_346:
	xor	r15d, r15d
	mov	rsp, rsp
	jmp	.label_257
.label_370:
	mov	rbp, rbp
	xor	r15d, r15d
	mov	rbp, rbp
	jmp	.label_257
.label_358:
	xor	r15d, r15d
	jmp	.label_257
.label_311:
	lea	rsi, [rsi]
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	lea	rdi, [rdi]
	mov	r8b, byte ptr [rsp + 0xa6]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_282
.label_372:
	xor	r15d, r15d
	nop	
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	jmp	.label_290
.label_265:
	lea	rsi, [rsi]
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	mov	rbp, rbp
	jae	.label_299
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_307:
	mov	rax, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	cmp	byte ptr [rax + rbx], 0
	nop	
	je	.label_354
	lea	rax, [rsi + rbx + 1]
	lea	rsi, [rsi]
	inc	rbx
	cmp	rax, rbp
	jb	.label_307
	xor	r15d, r15d
	nop	
	jmp	.label_282
.label_299:
	lea	rsi, [rsi]
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_290:
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_282:
	mov	byte ptr [rsp + 0xa6], r8b
	lea	rdi, [rdi]
	jmp	.label_313
.label_354:
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_282
.label_326:
	lea	rdi, [rdi]
	xor	r15d, r15d
	lea	rdi, [rdi]
	jmp	.label_257
.label_331:
	mov	rsp, rsp
	xor	r15d, r15d
	nop	
	mov	rsi, rbx
	jmp	.label_257
	nop	word ptr cs:[rax + rax]
.label_350:
	cmp	qword ptr [rsp + 0xf0], 0
	mov	rbp, rbp
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	lea	rdi, [rdi]
	and	cl, 1
	je	.label_328
	lea	rdi, [rdi]
	or	dl, al
	lea	rdi, [rdi]
	je	.label_281
.label_328:
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
	je	.label_301
	lea	rdi, [rdi]
	or	dl, al
	jne	.label_301
	lea	rdi, [rdi]
	test	r8b, 1
	jne	.label_356
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_301
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
	je	.label_362
.label_301:
	nop	
	mov	rdx, qword ptr [rsp + 0xa8]
	lea	rdi, [rdi]
	test	rdx, rdx
	je	.label_254
	lea	rsi, [rsi]
	test	cl, cl
	jne	.label_254
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_254
	inc	rdx
	nop	dword ptr [rax + rax]
.label_272:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	mov	rsp, rsp
	jae	.label_264
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_264:
	nop	
	inc	qword ptr [rsp + 0xf0]
	lea	rsi, [rsi]
	mov	al, byte ptr [rdx]
	lea	rdi, [rdi]
	inc	rdx
	test	al, al
	jne	.label_272
.label_254:
	nop	
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_279
	lea	rdi, [rdi]
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_279
.label_262:
	lea	rdi, [rdi]
	mov	rdx, r9
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_324:
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
.label_340:
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_279:
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
.label_288:
	lea	rdi, [rdi]
	mov	r9d, dword ptr [rsp + 0x6c]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_324
.label_281:
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rbp, rbp
	jmp	.label_324
.label_356:
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
	jmp	.label_340
.label_318:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4073f0
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
	.align	32
	#Procedure 0x407410

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
	je	.label_374
	mov	qword ptr [rax], rbx
.label_374:
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
	.align	32
	#Procedure 0x407560
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	nop	
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_375
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_379:
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
	jl	.label_379
.label_375:
	nop	
	mov	rdi, qword ptr [r14 + 8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:slot0
	mov	rsp, rsp
	cmp	rdi, rax
	lea	rdi, [rdi]
	je	.label_378
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	rsp, rsp
	mov	qword ptr [word ptr [rip + label_376]], OFFSET FLAT:slot0
.label_378:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_377
	mov	rdi, r14
	call	free
	mov	rbp, rbp
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_377:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	nop	
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407620

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x407630

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
	js	.label_386
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_381
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_384
.label_381:
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x38], r14
	mov	rsp, rsp
	cmp	ebx, 0x7fffffff
	mov	rsp, rsp
	je	.label_382
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
	jne	.label_385
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_385:
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
.label_384:
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
	ja	.label_383
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
	je	.label_380
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	free
.label_380:
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
.label_383:
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
.label_386:
	lea	rdi, [rdi]
	call	abort
.label_382:
	lea	rdi, [rdi]
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x4078a0

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4078b0
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
	.align	32
	#Procedure 0x4078d0
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
	.align	32
	#Procedure 0x4078f0

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
	.align	32
	#Procedure 0x407950

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
	je	.label_387
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
.label_387:
	lea	rdi, [rdi]
	call	abort
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4079c0

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
	.align	32
	#Procedure 0x407a20
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
	.align	32
	#Procedure 0x407a40
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
	.align	32
	#Procedure 0x407a60

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
	mov	rcx,  qword ptr [word ptr [rip + label_388]]
	mov	qword ptr [rsp + 0x30], rcx
	nop	
	movups	xmm0,  xmmword ptr [word ptr [rip + label_389]]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	lea	rdi, [rdi]
	movups	xmm0,  xmmword ptr [word ptr [rip + label_390]]
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
	.align	32
	#Procedure 0x407b00

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
	.align	32
	#Procedure 0x407b20

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	mov	esi, 0x3a
	mov	rbp, rbp
	jmp	quotearg_char
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b30
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407b40

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
	.align	32
	#Procedure 0x407bb0

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	mov	r8, -1
	nop	
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407bc0

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
	mov	rax,  qword ptr [word ptr [rip + label_388]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_389]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_390]]
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
	.align	32
	#Procedure 0x407c50
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
	.align	32
	#Procedure 0x407c80
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
	.align	32
	#Procedure 0x407cb0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x407cc0
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
	.align	32
	#Procedure 0x407ce0

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x407cf0

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
	.align	32
	#Procedure 0x407d00

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
	jne	.label_391
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
	je	.label_392
	mov	eax, OFFSET FLAT:.str.14_0
	movzx	ecx, byte ptr [rbx]
	lea	rdi, [rdi]
	cmp	ecx, 0x60
	je	.label_391
	nop	
	mov	eax, OFFSET FLAT:.str.15
	jmp	.label_391
.label_392:
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
	je	.label_393
	nop	
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	lea	rsi, [rsi]
	cmp	ecx, 0x60
	lea	rdi, [rdi]
	je	.label_391
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_391
.label_393:
	cmp	r14d, 9
	mov	rsp, rsp
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	lea	rsi, [rsi]
	cmove	rax, rcx
.label_391:
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
	.align	32
	#Procedure 0x407e30

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
	je	.label_395
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	lea	rdi, [rdi]
	je	.label_394
	jmp	.label_396
.label_395:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rdi, [rdi]
	jne	.label_396
.label_394:
	mov	rsp, rsp
	mov	eax, 1
	test	bpl, bpl
	mov	rsp, rsp
	je	.label_396
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
.label_396:
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
	.align	32
	#Procedure 0x407ef0

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
	je	.label_399
	nop	
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	nop	
	je	.label_398
	lea	rsi, [rsi]
	jmp	.label_397
.label_399:
	lea	rsi, [rsi]
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_397
.label_398:
	lea	rdi, [rdi]
	mov	eax, 1
	test	bpl, bpl
	lea	rdi, [rdi]
	je	.label_397
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
.label_397:
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
	.align	32
	#Procedure 0x407fe0

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
	je	.label_402
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_401
	jmp	.label_400
.label_402:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	movzx	edx, bpl
	mov	rsp, rsp
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_400
.label_401:
	nop	
	mov	eax, 1
	lea	rsi, [rsi]
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_400
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
.label_400:
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
	.align	32
	#Procedure 0x4080b0

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
	je	.label_405
	lea	rsi, [rsi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_404
	jmp	.label_403
.label_405:
	xor	eax, eax
	mov	rsp, rsp
	movzx	edx, bpl
	movzx	ecx, cl
	nop	
	cmp	ecx, edx
	lea	rsi, [rsi]
	jne	.label_403
.label_404:
	lea	rsi, [rsi]
	mov	eax, 1
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_403
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
.label_403:
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
	.align	32
	#Procedure 0x408150

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
	je	.label_408
	lea	rdi, [rdi]
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	mov	rsp, rsp
	je	.label_407
	nop	
	jmp	.label_406
.label_408:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	mov	rsp, rsp
	jne	.label_406
.label_407:
	mov	eax, 1
	test	bpl, bpl
	je	.label_406
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
.label_406:
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
	.align	32
	#Procedure 0x4081f0

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
	je	.label_411
	mov	rsp, rsp
	and	ecx, 0xffffffdf
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	cmp	ecx, ebp
	lea	rsi, [rsi]
	je	.label_410
	lea	rsi, [rsi]
	jmp	.label_409
.label_411:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	lea	rsi, [rsi]
	cmp	ecx, edx
	nop	
	jne	.label_409
.label_410:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	test	bpl, bpl
	nop	
	je	.label_409
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
.label_409:
	mov	rsp, rsp
	pop	rbx
	lea	rsi, [rsi]
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408280

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
	je	.label_414
	and	ecx, 0xffffffdf
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	cmp	ecx, ebp
	je	.label_413
	jmp	.label_412
.label_414:
	xor	eax, eax
	movzx	edx, bpl
	lea	rsi, [rsi]
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_412
.label_413:
	mov	eax, 1
	nop	
	test	bpl, bpl
	mov	rbp, rbp
	je	.label_412
	lea	rdi, [rdi]
	mov	rdi, rbx
	lea	rdi, [rdi]
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_412:
	add	rsp, 8
	lea	rdi, [rdi]
	pop	rbx
	nop	
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4082f0

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
	je	.label_415
	mov	eax, 1
	mov	rsp, rsp
	test	ecx, 0xffffffdf
	lea	rdi, [rdi]
	jne	.label_417
	mov	rbp, rbp
	jmp	.label_416
.label_415:
	mov	eax, 1
	lea	rsi, [rsi]
	test	cl, cl
	je	.label_416
.label_417:
	xor	eax, eax
.label_416:
	pop	rbx
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408340

	.globl randint_new
	.type randint_new, @function
randint_new:
	push	rbx
	mov	rbp, rbp
	mov	rbx, rdi
	lea	rdi, [rdi]
	mov	edi, 0x18
	nop	
	call	xmalloc
	nop	
	mov	qword ptr [rax], rbx
	lea	rdi, [rdi]
	xorps	xmm0, xmm0
	movups	xmmword ptr [rax + 8], xmm0
	mov	rbp, rbp
	pop	rbx
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408370

	.globl randint_all_new
	.type randint_all_new, @function
randint_all_new:
	lea	rsi, [rsi]
	push	rax
	call	randread_new
	test	rax, rax
	je	.label_418
	lea	rdi, [rdi]
	mov	rdi, rax
	pop	rax
	mov	rsp, rsp
	jmp	randint_new
.label_418:
	xor	eax, eax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083a0

	.globl randint_get_source
	.type randint_get_source, @function
randint_get_source:
	nop	
	mov	rax, qword ptr [rdi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4083b0

	.globl randint_genmax
	.type randint_genmax, @function
randint_genmax:
	nop
	push	rbp
	lea	rdi, [rdi]
	push	r15
	push	r14
	push	r13
	push	r12
	nop	
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x28
	lea	rsi, [rsi]
	mov	r13, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 8], rdi
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsp + 0x18], rax
	mov	rbp, rbp
	mov	r15, qword ptr [rdi + 8]
	lea	rax, [rdi + 8]
	nop	
	mov	qword ptr [rsp], rax
	mov	rbx, qword ptr [rdi + 0x10]
	mov	rsp, rsp
	lea	rbp, [r13 + 1]
	nop	
	mov	qword ptr [rsp + 0x10], rbp
	lea	r12, [rsp + 0x20]
	nop	word ptr cs:[rax + rax]
.label_419:
	cmp	rbx, r13
	jae	.label_422
	lea	rsi, [rsi]
	mov	rax, rbx
	xor	r14d, r14d
	nop	word ptr cs:[rax + rax]
.label_425:
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	shift_left
	lea	rdi, [rdi]
	add	rax, 0xff
	inc	r14
	lea	rdi, [rdi]
	cmp	rax, r13
	jb	.label_425
	mov	rbp, rbp
	mov	rdi, qword ptr [rsp + 0x18]
	mov	rsi, r12
	mov	rsp, rsp
	mov	rdx, r14
	mov	rsp, rsp
	call	randread
	mov	rbp, r12
	nop	
.label_420:
	mov	rdi, r15
	call	shift_left
	nop	
	movzx	r15d, byte ptr [rbp]
	nop	
	add	r15, rax
	mov	rdi, rbx
	call	shift_left
	mov	rbx, rax
	add	rbx, 0xff
	lea	rdi, [rdi]
	inc	rbp
	lea	rsi, [rsi]
	cmp	rbx, r13
	jb	.label_420
	mov	rcx, r15
	nop	
	mov	rbp, qword ptr [rsp + 0x10]
	mov	rsp, rsp
	jmp	.label_421
.label_422:
	nop	
	mov	rcx, r15
.label_421:
	mov	rsp, rsp
	mov	rsi, rbx
	sub	rsi, r13
	lea	rsi, [rsi]
	je	.label_424
	mov	rbp, rbp
	xor	edx, edx
	mov	rax, rsi
	div	rbp
	mov	rdi, rdx
	sub	rbx, rdi
	xor	edx, edx
	mov	rax, rcx
	div	rbp
	mov	r15, rdx
	mov	rbp, rbp
	dec	rdi
	cmp	rcx, rbx
	mov	rbx, rdi
	lea	rsi, [rsi]
	ja	.label_419
	xor	edx, edx
	mov	rax, rcx
	mov	rsp, rsp
	div	rbp
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [rcx + 8], rax
	xor	edx, edx
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	div	rbp
	nop	
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rcx, r15
	mov	rsp, rsp
	jmp	.label_423
.label_424:
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	movups	xmmword ptr [rax], xmm0
.label_423:
	mov	rax, rcx
	add	rsp, 0x28
	mov	rbp, rbp
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
	#Procedure 0x408550

	.globl shift_left
	.type shift_left, @function
shift_left:
	mov	rbp, rbp
	shl	rdi, 8
	mov	rax, rdi
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408560

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
	#Procedure 0x408580

	.globl randint_all_free
	.type randint_all_free, @function
randint_all_free:
	mov	rsp, rsp
	push	rbp
	push	r15
	push	r14
	lea	rsi, [rsi]
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	rdi, qword ptr [rbx]
	call	randread_free
	lea	rsi, [rsi]
	mov	r14d, eax
	call	__errno_location
	mov	rbp, rax
	mov	r15d, dword ptr [rbp]
	mov	rdi, rbx
	lea	rdi, [rdi]
	call	randint_free
	mov	dword ptr [rbp], r15d
	mov	rbp, rbp
	mov	eax, r14d
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085d0

	.globl randread_new
	.type randread_new, @function
randread_new:
	mov	rbp, rbp
	push	r15
	nop	
	push	r14
	lea	rsi, [rsi]
	push	r12
	push	rbx
	lea	rsi, [rsi]
	push	rax
	mov	rbp, rbp
	mov	r15, rsi
	mov	rbp, rbp
	mov	rbx, rdi
	test	r15, r15
	lea	rsi, [rsi]
	je	.label_427
	mov	rsp, rsp
	test	rbx, rbx
	nop	
	je	.label_428
	mov	esi, OFFSET FLAT:.str_7
	mov	rdi, rbx
	call	fopen_safer
	nop	
	mov	r12, rax
	mov	rsp, rsp
	xor	r14d, r14d
	lea	rdi, [rdi]
	test	r12, r12
	nop	
	je	.label_426
	lea	rsi, [rsi]
	mov	rdi, r12
	lea	rsi, [rsi]
	mov	rsi, rbx
	nop	
	call	simple_new
	mov	r14, rax
	lea	rsi, [r14 + 0x18]
	lea	rdi, [rdi]
	cmp	r15, 0x1000
	lea	rdi, [rdi]
	mov	ecx, 0x1000
	mov	rsp, rsp
	cmovbe	rcx, r15
	xor	edx, edx
	mov	rsp, rsp
	mov	rdi, r12
	call	setvbuf
	jmp	.label_426
.label_427:
	xor	edi, edi
	xor	esi, esi
	add	rsp, 8
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	pop	r14
	mov	rsp, rsp
	pop	r15
	jmp	simple_new
.label_428:
	mov	rbp, rbp
	xor	edi, edi
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	simple_new
	lea	rdi, [rdi]
	mov	r14, rax
	lea	rdi, [rdi]
	mov	qword ptr [r14 + 0x18], 0
	mov	rbx, r14
	mov	rsp, rsp
	add	rbx, 0x20
	mov	rdi, rbx
	mov	rsi, r15
	mov	rsp, rsp
	call	get_nonce
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	isaac_seed
.label_426:
	mov	rbp, rbp
	mov	rax, r14
	add	rsp, 8
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	lea	rdi, [rdi]
	pop	r15
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4086e0

	.globl simple_new
	.type simple_new, @function
simple_new:
	push	r14
	nop	
	push	rbx
	mov	rsp, rsp
	push	rax
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsi]
	mov	edi, 0x1038
	call	xmalloc
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbx
	mov	qword ptr [word ptr [rax + 8]], OFFSET FLAT:randread_error
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x10], r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408730

	.globl get_nonce
	.type get_nonce, @function
get_nonce:
	push	rbp
	lea	rdi, [rdi]
	push	r15
	nop	
	push	r14
	push	rbx
	sub	rsp, 0x18
	lea	rsi, [rsi]
	mov	rbx, rsi
	mov	rbp, rbp
	mov	r14, rdi
	xor	r15d, r15d
	mov	edi, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	xor	esi, esi
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	call	open
	nop	
	mov	ebp, eax
	test	ebp, ebp
	js	.label_429
	cmp	rbx, 0x800
	mov	edx, 0x800
	lea	rdi, [rdi]
	cmovbe	rdx, rbx
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	rbp, rbp
	mov	rsi, r14
	call	read
	mov	rbx, rax
	nop	
	mov	edi, ebp
	mov	rsp, rsp
	call	close
	xor	r15d, r15d
	nop	
	test	rbx, rbx
	mov	rsp, rsp
	js	.label_429
	mov	rbp, rbp
	cmp	rbx, 0x7ff
	mov	r15, rbx
	mov	rsp, rsp
	ja	.label_430
.label_429:
	mov	eax, 0x800
	mov	rsp, rsp
	sub	rax, r15
	mov	rbp, rbp
	cmp	rax, 0x10
	mov	ebx, 0x10
	cmovbe	rbx, rax
	lea	rbp, [rsp + 8]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, rbp
	lea	rsi, [rsi]
	call	gettimeofday
	lea	rdi, [r14 + r15]
	mov	rsi, rbp
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	mov	rsp, rsp
	ja	.label_430
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rdi, [rdi]
	sub	rax, rbx
	cmp	rax, 4
	lea	rsi, [rsi]
	mov	r15d, 4
	mov	rsp, rsp
	cmovbe	r15, rax
	lea	rsi, [rsi]
	call	getpid
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + rbx]
	lea	rsi, [rsp + 8]
	mov	rbp, rbp
	mov	rdx, r15
	call	memcpy
	add	r15, rbx
	nop	
	cmp	r15, 0x7ff
	mov	rbp, rbp
	ja	.label_430
	mov	eax, 0x800
	sub	rax, r15
	cmp	rax, 4
	mov	ebx, 4
	cmovbe	rbx, rax
	call	getppid
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 8], eax
	lea	rdi, [r14 + r15]
	lea	rdi, [rdi]
	lea	rsi, [rsp + 8]
	nop	
	mov	rdx, rbx
	call	memcpy
	add	rbx, r15
	cmp	rbx, 0x7ff
	ja	.label_430
	mov	eax, 0x800
	sub	rax, rbx
	lea	rsi, [rsi]
	cmp	rax, 4
	nop	
	mov	r15d, 4
	mov	rbp, rbp
	cmovbe	r15, rax
	lea	rdi, [rdi]
	call	getuid
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], eax
	mov	rbp, rbp
	lea	rdi, [r14 + rbx]
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	mov	rsp, rsp
	mov	rdx, r15
	lea	rdi, [rdi]
	call	memcpy
	add	r15, rbx
	mov	rsp, rsp
	cmp	r15, 0x7ff
	ja	.label_430
	lea	rdi, [rdi]
	mov	eax, 0x800
	lea	rsi, [rsi]
	sub	rax, r15
	cmp	rax, 4
	mov	rbp, rbp
	mov	ebx, 4
	lea	rsi, [rsi]
	cmovbe	rbx, rax
	nop	
	call	getgid
	mov	dword ptr [rsp + 8], eax
	nop	
	add	r14, r15
	mov	rsp, rsp
	lea	rsi, [rsp + 8]
	nop	
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, rbx
	call	memcpy
.label_430:
	nop	
	add	rsp, 0x18
	pop	rbx
	pop	r14
	nop	
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408960
	.globl randread_set_handler
	.type randread_set_handler, @function
randread_set_handler:

	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408970
	.globl randread_set_handler_arg
	.type randread_set_handler_arg, @function
randread_set_handler_arg:

	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x408980

	.globl randread
	.type randread, @function
randread:
	mov	rsp, rsp
	cmp	qword ptr [rdi], 0
	mov	rsp, rsp
	je	.label_431
	nop	
	jmp	readsource
.label_431:
	add	rdi, 0x18
	nop	
	jmp	readisaac
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4089a0

	.globl readsource
	.type readsource, @function
readsource:
	push	r15
	push	r14
	lea	rdi, [rdi]
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	mov	r13, rdx
	nop	
	mov	r14, rsi
	nop	
	mov	r15, rdi
	mov	rcx, qword ptr [r15]
	mov	rbp, rbp
	mov	esi, 1
	mov	rbp, rbp
	mov	rdi, r14
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	lea	rsi, [rsi]
	call	__errno_location
	mov	r12, rax
	mov	rbp, rbp
	cmp	rbx, r13
	nop	
	je	.label_433
	nop	word ptr [rax + rax]
.label_432:
	lea	rsi, [rsi]
	sub	r13, rbx
	mov	rbp, rbp
	add	r14, rbx
	nop	
	mov	ebx, dword ptr [r12]
	mov	rdi, qword ptr [r15]
	lea	rdi, [rdi]
	call	ferror_unlocked
	test	eax, eax
	cmove	ebx, eax
	mov	dword ptr [r12], ebx
	mov	rdi, qword ptr [r15 + 0x10]
	call	qword ptr [r15 + 8]
	mov	rcx, qword ptr [r15]
	mov	esi, 1
	lea	rdi, [rdi]
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rdx, r13
	nop	
	call	fread_unlocked
	mov	rbp, rbp
	mov	rbx, rax
	cmp	r13, rbx
	jne	.label_432
.label_433:
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	r12
	pop	r13
	lea	rdi, [rdi]
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	nop	
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408a60

	.globl readisaac
	.type readisaac, @function
readisaac:
	push	rbp
	push	r15
	nop	
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	push	rax
	lea	rdi, [rdi]
	mov	r15, rdx
	lea	rdi, [rdi]
	mov	rbx, rsi
	mov	r14, rdi
	mov	r12, qword ptr [r14]
	mov	rsp, rsp
	lea	r13, [r14 + 0x820]
	mov	rsi, r13
	nop	
	sub	rsi, r12
	lea	rsi, [rsi]
	add	rsi, 0x800
	cmp	r12, r15
	jae	.label_434
	nop	
	lea	rbp, [r14 + 8]
	mov	rsp, rsp
	mov	rdi, rbx
	mov	rdx, r12
	call	memcpy
	lea	rsi, [rsi]
	add	rbx, r12
	lea	rdi, [rdi]
	sub	r15, r12
	mov	rbp, rbp
	xor	r12d, r12d
	nop	word ptr [rax + rax]
.label_436:
	cmp	r15, 0x800
	jb	.label_435
	mov	rbp, rbp
	mov	rdi, rbp
	mov	rsi, rbx
	call	isaac_refill
	lea	rsi, [rsi]
	add	rbx, 0x800
	mov	rbp, rbp
	add	r15, -0x800
	lea	rsi, [rsi]
	jne	.label_436
	jmp	.label_437
.label_435:
	lea	rdi, [rdi]
	mov	rdi, rbp
	nop	
	mov	rsi, r13
	call	isaac_refill
	nop	
	mov	r12d, 0x800
	mov	rsi, r13
.label_434:
	mov	rdi, rbx
	mov	rsp, rsp
	mov	rdx, r15
	nop	
	call	memcpy
	mov	rsp, rsp
	sub	r12, r15
.label_437:
	mov	qword ptr [r14], r12
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	nop	
	pop	r12
	pop	r13
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rdi, [rdi]
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408b50

	.globl randread_free
	.type randread_free, @function
randread_free:
	mov	rsp, rsp
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	mov	r14, qword ptr [rbx]
	lea	rsi, [rsi]
	mov	esi, 0x1038
	nop	
	call	explicit_bzero
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	free
	mov	rbp, rbp
	test	r14, r14
	je	.label_438
	mov	rdi, r14
	add	rsp, 8
	pop	rbx
	mov	rbp, rbp
	pop	r14
	jmp	rpl_fclose
.label_438:
	xor	eax, eax
	nop	
	add	rsp, 8
	nop	
	pop	rbx
	mov	rsp, rsp
	pop	r14
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x408ba0

	.globl randread_error
	.type randread_error, @function
randread_error:
	mov	rsp, rsp
	push	rbp
	nop	
	push	r15
	nop	
	push	r14
	push	rbx
	push	rax
	nop	
	mov	rbx, rdi
	test	rbx, rbx
	nop	
	je	.label_439
	mov	rsp, rsp
	mov	r14d,  dword ptr [dword ptr [rip + exit_failure]]
	lea	rsi, [rsi]
	call	__errno_location
	mov	r15d, dword ptr [rax]
	xor	edi, edi
	test	r15d, r15d
	lea	rdi, [rdi]
	jne	.label_441
	mov	esi, OFFSET FLAT:.str.1_2
	jmp	.label_440
.label_441:
	mov	esi, OFFSET FLAT:.str.2_3
.label_440:
	mov	rsp, rsp
	mov	edx, 5
	mov	rbp, rbp
	call	dcgettext
	nop	
	mov	rbp, rax
	mov	rdi, rbx
	call	quote
	mov	rcx, rax
	nop	
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, r14d
	mov	esi, r15d
	lea	rsi, [rsi]
	mov	rdx, rbp
	mov	rbp, rbp
	call	error
.label_439:
	lea	rdi, [rdi]
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x408c30

	.globl isaac_refill
	.type isaac_refill, @function
isaac_refill:
	push	rbp
	push	r15
	push	r14
	mov	rsp, rsp
	push	r13
	mov	rbp, rbp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x18
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], rsi
	mov	r14, rdi
	mov	rbx, qword ptr [r14 + 0x800]
	lea	rdi, [rdi]
	mov	rax, qword ptr [r14 + 0x810]
	mov	rbp, rbp
	inc	rax
	mov	r12, qword ptr [r14 + 0x808]
	add	r12, rax
	mov	qword ptr [r14 + 0x810], rax
	nop	
	lea	rax, [r14 + 0x400]
	mov	qword ptr [rsp], rax
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	r15, r14
	nop	dword ptr [rax]
.label_443:
	mov	qword ptr [rsp + 0x10], rbp
	lea	rsi, [rsi]
	mov	r13, rbx
	shl	r13, 0x15
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [r15 + 0x400]
	mov	rbx, qword ptr [r15]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	ind
	lea	rdi, [rdi]
	add	rax, r12
	lea	rdi, [rdi]
	add	rax, r13
	mov	qword ptr [r15], rax
	lea	rsi, [rsi]
	shr	rax, 8
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rax
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbx, rax
	mov	qword ptr [rbp], rbx
	lea	rdi, [rdi]
	mov	rdi, r13
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rdi, [rdi]
	shr	rbp, 5
	lea	rdi, [rdi]
	xor	rbp, r13
	nop	
	add	rbp, qword ptr [r15 + 0x408]
	nop	
	mov	r12, qword ptr [r15 + 8]
	mov	rdi, r14
	mov	rsi, r12
	call	ind
	mov	rbp, rbp
	add	rbx, rbp
	add	rbx, rax
	mov	qword ptr [r15 + 8], rbx
	mov	rbp, rbp
	shr	rbx, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbx
	lea	rsi, [rsi]
	call	ind
	add	r12, rax
	lea	rsi, [rsi]
	mov	rdi, r12
	call	just
	lea	rsi, [rsi]
	mov	rbx, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rbx
	mov	r12, rbp
	shl	r12, 0xc
	xor	r12, rbp
	add	r12, qword ptr [r15 + 0x410]
	mov	rbp, rbp
	mov	rbp, qword ptr [r15 + 0x10]
	mov	rdi, r14
	mov	rsi, rbp
	call	ind
	add	rbx, r12
	add	rbx, rax
	mov	qword ptr [r15 + 0x10], rbx
	shr	rbx, 8
	mov	rdi, r14
	mov	rsp, rsp
	mov	rsi, rbx
	mov	rbp, rbp
	call	ind
	add	rbp, rax
	mov	rdi, rbp
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax + 0x10], rbp
	nop	
	mov	rdi, r12
	mov	rbp, rbp
	call	just
	mov	rbx, rax
	nop	
	shr	rbx, 0x21
	lea	rsi, [rsi]
	xor	rbx, r12
	add	rbx, qword ptr [r15 + 0x418]
	lea	rsi, [rsi]
	mov	r12, qword ptr [r15 + 0x18]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	mov	qword ptr [r15 + 0x18], rbp
	shr	rbp, 8
	mov	rdi, r14
	lea	rsi, [rsi]
	mov	rsi, rbp
	mov	rbp, qword ptr [rsp + 0x10]
	call	ind
	nop	
	add	r12, rax
	nop	
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	mov	r12, rax
	mov	qword ptr [rbp + 0x18], r12
	lea	rdi, [rdi]
	add	r15, 0x20
	add	rbp, 0x20
	cmp	r15, rcx
	jb	.label_443
	add	qword ptr [rsp + 8], 0x400
	lea	rax, [r14 + 0x800]
	nop	
	mov	qword ptr [rsp + 0x10], rax
	nop	
.label_442:
	nop	
	mov	r13, rbx
	shl	r13, 0x15
	nop	
	xor	r13, rbx
	not	r13
	add	r13, qword ptr [rcx - 0x400]
	mov	rsp, rsp
	mov	rbx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, rbx
	mov	r15, rcx
	call	ind
	mov	rsp, rsp
	add	rax, r12
	add	rax, r13
	mov	qword ptr [r15], rax
	shr	rax, 8
	mov	rdi, r14
	mov	rsi, rax
	nop	
	call	ind
	add	rbx, rax
	mov	rdi, rbx
	call	just
	mov	rsp, rsp
	mov	rbp, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rax], rbp
	mov	rdi, r13
	lea	rsi, [rsi]
	call	just
	mov	rbx, rax
	shr	rbx, 5
	lea	rdi, [rdi]
	xor	rbx, r13
	mov	rbp, rbp
	add	rbx, qword ptr [r15 - 0x3f8]
	nop	
	mov	r12, qword ptr [r15 + 8]
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, r12
	nop	
	call	ind
	add	rbp, rbx
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 8], rbp
	mov	rsp, rsp
	shr	rbp, 8
	mov	rdi, r14
	lea	rdi, [rdi]
	mov	rsi, rbp
	call	ind
	lea	rsi, [rsi]
	add	r12, rax
	mov	rdi, r12
	call	just
	mov	rbp, rax
	mov	r13, qword ptr [rsp + 8]
	mov	rbp, rbp
	mov	qword ptr [r13 + 8], rbp
	mov	r12, rbx
	shl	r12, 0xc
	xor	r12, rbx
	nop	
	add	r12, qword ptr [r15 - 0x3f0]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [r15 + 0x10]
	mov	rdi, r14
	nop	
	mov	rsi, rbx
	call	ind
	mov	rsp, rsp
	add	rbp, r12
	lea	rsi, [rsi]
	add	rbp, rax
	lea	rsi, [rsi]
	mov	qword ptr [r15 + 0x10], rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	nop	
	mov	rsi, rbp
	call	ind
	add	rbx, rax
	nop	
	mov	rdi, rbx
	call	just
	nop	
	mov	rbp, rax
	mov	qword ptr [r13 + 0x10], rbp
	mov	rdi, r12
	call	just
	mov	rbx, rax
	lea	rdi, [rdi]
	shr	rbx, 0x21
	mov	rsp, rsp
	xor	rbx, r12
	add	rbx, qword ptr [r15 - 0x3e8]
	mov	rbp, rbp
	mov	r12, qword ptr [r15 + 0x18]
	mov	rbp, rbp
	mov	rdi, r14
	mov	rsi, r12
	mov	rbp, rbp
	call	ind
	lea	rdi, [rdi]
	add	rbp, rbx
	add	rbp, rax
	mov	rbp, rbp
	mov	qword ptr [r15 + 0x18], rbp
	mov	rbp, rbp
	shr	rbp, 8
	lea	rdi, [rdi]
	mov	rdi, r14
	mov	rsi, rbp
	lea	rdi, [rdi]
	call	ind
	mov	rbp, rbp
	add	r12, rax
	mov	rdi, r12
	lea	rdi, [rdi]
	call	just
	mov	rbp, rbp
	mov	rcx, r15
	mov	rbp, rbp
	mov	r12, rax
	mov	rax, r13
	mov	qword ptr [rax + 0x18], r12
	nop	
	add	rcx, 0x20
	add	rax, 0x20
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rsp + 0x10]
	jb	.label_442
	mov	qword ptr [r14 + 0x800], rbx
	mov	qword ptr [r14 + 0x808], r12
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	nop	
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409080

	.globl ind
	.type ind, @function
ind:
	and	esi, 0x7f8
	mov	rax, qword ptr [rdi + rsi]
	mov	rsp, rsp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x409090

	.globl just
	.type just, @function
just:
	mov	rsp, rsp
	mov	rax, rdi
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4090a0

	.globl isaac_seed
	.type isaac_seed, @function
isaac_seed:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	nop	
	sub	rsp, 0x38
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x20], rdi
	movabs	rbp, 0x647c4677a2884b7c
	movabs	r15, 0xb9f8b322c73ac862
	movabs	r14, 0x8c0ea5053d4712a0
	mov	rbp, rbp
	movabs	rbx, 0xb29b2e824a595524
	movabs	r13, 0x82f053db8355e0ce
	lea	rdi, [rdi]
	movabs	rdx, 0x48fe4a0fa5a09315
	mov	rbp, rbp
	movabs	rax, 0xae985bf2cbfc89ed
	movabs	r12, 0x98f5704f6c44c0ab
	mov	rbp, rbp
	xor	ecx, ecx
	nop	word ptr cs:[rax + rax]
.label_445:
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	lea	rdi, [rdi]
	add	r15, qword ptr [rdi + rcx*8 + 8]
	mov	rbp, rbp
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	lea	rsi, [rsi]
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	mov	rbp, rbp
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	lea	rsi, [rsi]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rbp, rbp
	mov	rdi, r12
	call	just
	nop	
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	nop	
	add	r12, rbp
	nop	
	sub	r15, rax
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	mov	rbp, rbp
	shl	rbp, 9
	lea	rsi, [rsi]
	xor	rbp, qword ptr [rsp + 0x28]
	mov	qword ptr [rsp + 0x28], rbp
	nop	
	sub	r14, rbp
	mov	rdi, r15
	call	just
	shr	rax, 0x17
	mov	rsp, rsp
	xor	r12, rax
	add	r15, r14
	nop	
	mov	qword ptr [rsp], r15
	mov	rbp, rbp
	sub	rbx, r12
	nop	
	lea	rax, [rbx + r14]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	mov	rsp, rsp
	mov	rbp, r14
	xor	rbp, qword ptr [rsp + 0x10]
	sub	r13, rbp
	mov	rdi, rbx
	mov	rsp, rsp
	call	just
	mov	rbp, rbp
	mov	r15, rax
	mov	rbp, rbp
	shr	r15, 0xe
	mov	rbp, rbp
	xor	r15, qword ptr [rsp]
	add	rbx, r13
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rbx
	mov	rsp, rsp
	mov	rdi, qword ptr [rsp + 0x30]
	sub	rdi, r15
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x30], rdi
	mov	r14, r13
	lea	rsi, [rsi]
	shl	r14, 0x14
	mov	rsp, rsp
	xor	r14, qword ptr [rsp + 8]
	mov	rbp, rbp
	add	r13, rdi
	mov	qword ptr [rsp + 8], r13
	mov	r13, qword ptr [rsp + 0x28]
	nop	
	sub	r13, r14
	nop	
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbx, rax
	mov	rsp, rsp
	shr	rbx, 0x11
	xor	rbx, qword ptr [rsp + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	mov	rax, r13
	mov	rbp, rbp
	add	rdx, rax
	lea	rsi, [rsi]
	sub	r12, rbx
	mov	rbp, rbp
	shl	r13, 0xe
	nop	
	xor	r13, qword ptr [rsp + 8]
	lea	rsi, [rsi]
	add	rax, r12
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8], rbp
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rbp, rbp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rax
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	lea	rdi, [rdi]
	add	rcx, 8
	cmp	rcx, 0x100
	jl	.label_445
	xor	ecx, ecx
	nop	dword ptr [rax + rax]
.label_444:
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x18], rcx
	add	rbp, qword ptr [rdi + rcx*8]
	mov	rbp, rbp
	add	r15, qword ptr [rdi + rcx*8 + 8]
	lea	rdi, [rdi]
	add	r14, qword ptr [rdi + rcx*8 + 0x10]
	mov	rsp, rsp
	add	rbx, qword ptr [rdi + rcx*8 + 0x18]
	add	r13, qword ptr [rdi + rcx*8 + 0x20]
	add	rdx, qword ptr [rdi + rcx*8 + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x30], rdx
	add	rax, qword ptr [rdi + rcx*8 + 0x30]
	mov	qword ptr [rsp + 0x28], rax
	add	r12, qword ptr [rdi + rcx*8 + 0x38]
	sub	rbp, r13
	mov	rdi, r12
	lea	rsi, [rsi]
	call	just
	shr	rax, 9
	xor	rax, qword ptr [rsp + 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x30], rax
	add	r12, rbp
	sub	r15, rax
	nop	
	lea	rax, [r15 + rbp]
	mov	qword ptr [rsp + 0x10], rax
	shl	rbp, 9
	mov	rsp, rsp
	xor	rbp, qword ptr [rsp + 0x28]
	sub	r14, rbp
	mov	rbp, rbp
	mov	rdi, r15
	lea	rdi, [rdi]
	call	just
	shr	rax, 0x17
	xor	rax, r12
	add	r15, r14
	lea	rdi, [rdi]
	sub	rbx, rax
	mov	r12, rax
	lea	rax, [rbx + r14]
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], rax
	shl	r14, 0xf
	xor	r14, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x28], r14
	sub	r13, r14
	mov	rdi, rbx
	call	just
	shr	rax, 0xe
	mov	rsp, rsp
	xor	r15, rax
	add	rbx, r13
	mov	rdi, qword ptr [rsp + 0x30]
	lea	rsi, [rsi]
	sub	rdi, r15
	mov	qword ptr [rsp + 0x30], rdi
	mov	rbp, rbp
	mov	r14, r13
	mov	rbp, rbp
	shl	r14, 0x14
	xor	r14, qword ptr [rsp + 8]
	mov	rsp, rsp
	add	r13, rdi
	lea	rdi, [rdi]
	sub	rbp, r14
	lea	rdi, [rdi]
	call	just
	mov	rcx, qword ptr [rsp + 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsp + 0x20]
	mov	rbp, rbp
	shr	rax, 0x11
	xor	rbx, rax
	mov	rdx, qword ptr [rsp + 0x30]
	add	rdx, rbp
	nop	
	sub	r12, rbx
	mov	rax, rbp
	shl	rax, 0xe
	xor	r13, rax
	lea	rdi, [rdi]
	add	rbp, r12
	mov	rbp, rbp
	mov	rsi, qword ptr [rsp + 0x28]
	mov	qword ptr [rdi + rcx*8], rsi
	mov	qword ptr [rdi + rcx*8 + 8], r15
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x10], r14
	mov	rsp, rsp
	mov	qword ptr [rdi + rcx*8 + 0x18], rbx
	mov	qword ptr [rdi + rcx*8 + 0x20], r13
	mov	qword ptr [rdi + rcx*8 + 0x28], rdx
	mov	qword ptr [rdi + rcx*8 + 0x30], rbp
	mov	qword ptr [rdi + rcx*8 + 0x38], r12
	add	rcx, 8
	nop	
	cmp	rcx, 0x100
	mov	rax, rbp
	mov	rbp, rsi
	jl	.label_444
	mov	rbp, rbp
	xorps	xmm0, xmm0
	mov	rsp, rsp
	movups	xmmword ptr [rdi + 0x800], xmm0
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0x810], 0
	mov	rsp, rsp
	add	rsp, 0x38
	lea	rdi, [rdi]
	pop	rbx
	mov	rbp, rbp
	pop	r12
	mov	rbp, rbp
	pop	r13
	pop	r14
	pop	r15
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4094d0

	.globl renameatu
	.type renameatu, @function
renameatu:
	mov	rsp, rsp
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r13
	mov	rsp, rsp
	push	r12
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x128
	mov	rsp, rsp
	mov	r13d, r8d
	mov	rsp, rsp
	mov	r12, rcx
	mov	rbp, rbp
	mov	r14d, edx
	mov	rbp, rbp
	mov	rbp, rsi
	mov	r15d, edi
	nop	
	mov	edi, 0x13c
	xor	eax, eax
	mov	esi, r15d
	mov	rdx, rbp
	mov	ecx, r14d
	nop	
	mov	r8, r12
	lea	rdi, [rdi]
	mov	r9d, r13d
	lea	rsi, [rsi]
	call	syscall
	mov	rsp, rsp
	mov	rbx, rax
	call	__errno_location
	nop	
	test	ebx, ebx
	jns	.label_446
	mov	rsp, rsp
	mov	ecx, dword ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x16
	je	.label_449
	lea	rdi, [rdi]
	cmp	ecx, 0x5f
	je	.label_449
	cmp	ecx, 0x26
	mov	rbp, rbp
	jne	.label_446
.label_449:
	mov	rbp, rbp
	test	r13d, r13d
	je	.label_454
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	cmp	r13d, 2
	jb	.label_457
	nop	
	mov	edi, 0x5f
	mov	rbp, rbp
	jmp	.label_451
.label_454:
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	xor	r13d, r13d
.label_456:
	lea	rsi, [rsi]
	mov	rdi, rbp
	call	strlen
	mov	rbx, rax
	mov	rdi, r12
	lea	rsi, [rsi]
	call	strlen
	lea	rdi, [rdi]
	test	rbx, rbx
	nop	
	je	.label_452
	test	rax, rax
	mov	rbp, rbp
	je	.label_452
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbx + rbp - 1]
	mov	rsp, rsp
	cmp	ecx, 0x2f
	lea	rsi, [rsi]
	je	.label_448
	movzx	eax, byte ptr [rax + r12 - 1]
	lea	rdi, [rdi]
	cmp	eax, 0x2f
	lea	rdi, [rdi]
	jne	.label_452
.label_448:
	lea	rdx, [rsp + 0x98]
	mov	rsp, rsp
	mov	edi, r15d
	mov	rsi, rbp
	call	lstatat
	nop	
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_446
	lea	rsi, [rsi]
	test	r13b, r13b
	lea	rdi, [rdi]
	je	.label_450
	lea	rdi, [rdi]
	mov	eax, 0xf000
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	mov	rbp, rbp
	je	.label_452
	lea	rdi, [rdi]
	mov	edi, 2
	nop	
	jmp	.label_455
.label_457:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	mov	rsp, rsp
	call	lstatat
	lea	rdi, [rdi]
	test	eax, eax
	je	.label_453
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	mov	eax, dword ptr [rax]
	mov	r13b, 1
	cmp	eax, 2
	lea	rdi, [rdi]
	je	.label_456
	mov	ebx, 0xffffffff
	cmp	eax, 0x4b
	lea	rsi, [rsi]
	jne	.label_446
.label_453:
	mov	edi, 0x11
.label_451:
	mov	rbp, rbp
	call	errno_fail
	mov	ebx, 0xffffffff
	jmp	.label_446
.label_450:
	lea	rdx, [rsp + 8]
	mov	edi, r14d
	mov	rsi, r12
	nop	
	call	lstatat
	lea	rsi, [rsi]
	test	eax, eax
	mov	rsp, rsp
	je	.label_459
	nop	
	mov	rax, qword ptr [rsp]
	cmp	dword ptr [rax], 2
	mov	rbp, rbp
	jne	.label_446
	mov	rsp, rsp
	mov	eax, 0xf000
	nop	
	and	eax, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	eax, 0x4000
	nop	
	jne	.label_446
	nop	
	jmp	.label_452
.label_459:
	mov	eax, 0xf000
	mov	ecx, dword ptr [rsp + 0x20]
	and	ecx, eax
	lea	rsi, [rsi]
	cmp	ecx, 0x4000
	mov	rsp, rsp
	jne	.label_458
	and	eax, dword ptr [rsp + 0xb0]
	cmp	eax, 0x4000
	jne	.label_447
.label_452:
	mov	rbp, rbp
	mov	edi, r15d
	nop	
	mov	rsi, rbp
	mov	edx, r14d
	mov	rcx, r12
	call	renameat
	nop	
	mov	ebx, eax
.label_446:
	mov	eax, ebx
	mov	rbp, rbp
	add	rsp, 0x128
	lea	rsi, [rsi]
	pop	rbx
	nop	
	pop	r12
	nop	
	pop	r13
	lea	rsi, [rsi]
	pop	r14
	mov	rbp, rbp
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
.label_458:
	mov	edi, 0x14
	jmp	.label_455
.label_447:
	mov	edi, 0x15
.label_455:
	lea	rdi, [rdi]
	call	errno_fail
	jmp	.label_446
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409770

	.globl errno_fail
	.type errno_fail, @function
errno_fail:
	push	rbx
	mov	ebx, edi
	call	__errno_location
	nop	
	mov	dword ptr [rax], ebx
	nop	
	pop	rbx
	lea	rsi, [rsi]
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409790
	.globl statat
	.type statat, @function
statat:

	lea	rsi, [rsi]
	xor	ecx, ecx
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097a0

	.globl lstatat
	.type lstatat, @function
lstatat:
	mov	ecx, 0x100
	jmp	fstatat
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4097b0

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
	ja	.label_460
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
	jmp	.label_461
.label_460:
	lea	rsi, [rsi]
	mov	eax, ebx
.label_461:
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
	.align	32
	#Procedure 0x409820

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
	je	.label_467
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str_8
	nop	
	xor	eax, eax
	mov	rdi, r14
	mov	rsp, rsp
	mov	r8, rbx
	lea	rsi, [rsi]
	call	__fprintf_chk
	lea	rdi, [rdi]
	jmp	.label_469
.label_467:
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
.label_469:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2_4
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
	mov	esi, OFFSET FLAT:.str.3_3
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
	ja	.label_471
	lea	rsi, [rsi]
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_462]]
.label_629:
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, OFFSET FLAT:.str.4_2
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
.label_471:
	mov	rbp, rbp
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_464
.label_630:
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
.label_631:
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
.label_632:
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
	jmp	.label_466
.label_633:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.8_0
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
	jmp	.label_465
.label_634:
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
	jmp	.label_463
.label_635:
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
.label_463:
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 0x10], rdi
.label_465:
	nop	
	mov	qword ptr [rsp + 8], rsi
.label_466:
	nop	
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rbp, rbp
	jmp	.label_470
.label_637:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_464:
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
	jmp	.label_468
.label_636:
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
.label_468:
	lea	rsi, [rsi]
	mov	esi, 1
	xor	eax, eax
	mov	rbp, rbp
	mov	rdi, r14
	mov	rdx, r10
.label_470:
	mov	rbp, rbp
	call	__fprintf_chk
.label_628:
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
	.align	32
	#Procedure 0x409c10
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	mov	r9, -1
	nop	dword ptr [rax + rax]
.label_472:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	lea	rdi, [rdi]
	jne	.label_472
	lea	rdi, [rdi]
	jmp	version_etc_arn
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409c40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_476:
	nop	
	movsxd	r10, dword ptr [r8]
	lea	rdi, [rdi]
	cmp	r10, 0x28
	ja	.label_473
	mov	r11, r10
	mov	rbp, rbp
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	rbp, rbp
	mov	dword ptr [r8], eax
	mov	rsp, rsp
	jmp	.label_475
	nop	word ptr cs:[rax + rax]
.label_473:
	mov	rbp, rbp
	mov	r11, qword ptr [r8 + 8]
	nop	
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_475:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	nop	
	test	rax, rax
	nop	
	je	.label_474
	inc	r9
	lea	rdi, [rdi]
	cmp	r9, 0xa
	jb	.label_476
.label_474:
	lea	rdi, [rdi]
	lea	r8, [rsp]
	mov	rsp, rsp
	call	version_etc_arn
	add	rsp, 0x58
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409cd0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	nop	
	je	.label_477
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
.label_477:
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
	.align	32
	#Procedure 0x409d80
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
	mov	edx, OFFSET FLAT:.str.15_0
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
	.align	32
	#Procedure 0x409e10

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
	jb	.label_478
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_478:
	nop	
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e50

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	mov	rsp, rsp
	je	.label_479
	lea	rsi, [rsi]
	test	rax, rax
	je	.label_480
.label_479:
	lea	rsi, [rsi]
	pop	rbx
	mov	rbp, rbp
	ret	
.label_480:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409e80
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
	jb	.label_481
	imul	rcx, rsi
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	jmp	xrealloc
.label_481:
	push	rax
	mov	rsp, rsp
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409ec0

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	nop	
	test	rdi, rdi
	je	.label_482
	nop	
	test	rbx, rbx
	lea	rdi, [rdi]
	jne	.label_482
	lea	rdi, [rdi]
	call	free
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbx
	ret	
.label_482:
	mov	rsi, rbx
	lea	rdi, [rdi]
	call	realloc
	test	rbx, rbx
	je	.label_483
	test	rax, rax
	nop	
	je	.label_484
.label_483:
	pop	rbx
	mov	rbp, rbp
	ret	
.label_484:
	mov	rsp, rsp
	call	xalloc_die
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409f10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	nop	
	mov	r8, rdx
	mov	rbp, rbp
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_485
	lea	rsi, [rsi]
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	lea	rsi, [rsi]
	jbe	.label_486
	lea	rdi, [rdi]
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_488
.label_485:
	test	rcx, rcx
	mov	rbp, rbp
	jne	.label_487
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rbp, rbp
	mov	rcx, rax
	mov	rsp, rsp
	cmp	rcx, 1
	adc	rcx, 0
.label_487:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	mov	rbp, rbp
	jb	.label_489
.label_488:
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
.label_486:
	call	xalloc_die
.label_489:
	lea	rsi, [rsi]
	call	xalloc_die
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fb0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	jmp	xmalloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x409fc0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	mov	rsp, rsp
	jmp	x2nrealloc
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x409fd0
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
	.align	32
	#Procedure 0x40a010
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
	jb	.label_490
	nop	
	call	rpl_calloc
	test	rax, rax
	je	.label_490
	pop	rcx
	ret	
.label_490:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a040

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
	.align	32
	#Procedure 0x40a090

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
	.align	32
	#Procedure 0x40a0b0

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
	mov	edx, OFFSET FLAT:.str_1
	xor	eax, eax
	mov	edi, ebx
	call	error
	mov	rbp, rbp
	call	abort
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40a100

	.globl xnumtoumax
	.type xnumtoumax, @function
xnumtoumax:
	lea	rsi, [rsi]
	push	rbp
	push	r15
	push	r14
	mov	rbp, rbp
	push	r13
	push	r12
	lea	rsi, [rsi]
	push	rbx
	mov	rbp, rbp
	push	rax
	mov	r14, r9
	mov	rbp, rbp
	mov	r15, rcx
	lea	rdi, [rdi]
	mov	r12, rdx
	mov	eax, esi
	mov	r13, rdi
	lea	rcx, [rsp]
	nop	
	xor	esi, esi
	mov	edx, eax
	call	xstrtoumax
	cmp	eax, 3
	je	.label_493
	cmp	eax, 1
	je	.label_496
	mov	rbp, rbp
	test	eax, eax
	nop	
	jne	.label_491
	mov	rbx, qword ptr [rsp]
	mov	rbp, rbp
	cmp	rbx, r12
	lea	rsi, [rsi]
	jb	.label_492
	cmp	rbx, r15
	jbe	.label_495
.label_492:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rsp, rsp
	cmp	rbx, 0x40000000
	jb	.label_494
	mov	dword ptr [rax], 0x4b
	lea	rdi, [rdi]
	jmp	.label_491
.label_493:
	call	__errno_location
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	jmp	.label_491
.label_496:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	rbp, rbp
	jmp	.label_491
.label_494:
	mov	dword ptr [rax], 0x22
.label_491:
	nop	
	mov	eax, dword ptr [rsp + 0x40]
	test	eax, eax
	mov	ebp, 1
	nop	
	cmovne	ebp, eax
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	eax, eax
	cmp	ebx, 0x16
	cmove	ebx, eax
	mov	rdi, r13
	call	quote
	mov	r8, rax
	nop	
	mov	edx, OFFSET FLAT:.str_4
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edi, ebp
	mov	esi, ebx
	lea	rdi, [rdi]
	mov	rcx, r14
	nop	
	call	error
.label_495:
	mov	rsp, rsp
	mov	rax, qword ptr [rsp]
	mov	rbp, rbp
	add	rsp, 8
	pop	rbx
	pop	r12
	mov	rsp, rsp
	pop	r13
	mov	rbp, rbp
	pop	r14
	nop	
	pop	r15
	pop	rbp
	mov	rbp, rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a220

	.globl xdectoumax
	.type xdectoumax, @function
xdectoumax:
	push	rax
	mov	r10, r8
	lea	rsi, [rsi]
	mov	rax, rcx
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, rsi
	mov	dword ptr [rsp], r9d
	mov	rsp, rsp
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	r8, rax
	mov	rsp, rsp
	mov	r9, r10
	mov	rsp, rsp
	call	xnumtoumax
	pop	rcx
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a260

	.globl xstrtoumax
	.type xstrtoumax, @function
xstrtoumax:
	push	rbp
	mov	rsp, rsp
	push	r15
	mov	rsp, rsp
	push	r14
	push	r13
	push	r12
	push	rbx
	lea	rdi, [rdi]
	sub	rsp, 0x18
	mov	r13, r8
	nop	
	mov	r14d, edx
	mov	rsp, rsp
	mov	rbp, rsi
	lea	rsi, [rsi]
	mov	rbx, rdi
	cmp	r14d, 0x25
	jae	.label_518
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rcx
	call	__errno_location
	lea	rsi, [rsi]
	mov	r12, rax
	mov	dword ptr [r12], 0
	call	__ctype_b_loc
	mov	rcx, qword ptr [rax]
	mov	rdx, rbx
	nop	dword ptr [rax]
.label_510:
	movzx	eax, byte ptr [rdx]
	inc	rdx
	lea	rdi, [rdi]
	test	byte ptr [rcx + rax*2 + 1], 0x20
	jne	.label_510
	mov	rbp, rbp
	test	rbp, rbp
	lea	rcx, [rsp + 0x10]
	cmovne	rcx, rbp
	nop	
	movzx	eax, al
	mov	rbp, rbp
	mov	r15d, 4
	cmp	eax, 0x2d
	mov	rsp, rsp
	je	.label_502
	mov	rdi, rbx
	mov	rbp, rcx
	mov	rsi, rbp
	lea	rsi, [rsi]
	mov	edx, r14d
	lea	rdi, [rdi]
	call	strtoumax
	mov	rcx, rbp
	nop	
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, rbx
	nop	
	je	.label_500
	nop	
	mov	eax, dword ptr [r12]
	xor	r12d, r12d
	test	eax, eax
	mov	rsp, rsp
	mov	rbp, r13
	mov	rsp, rsp
	je	.label_504
	cmp	eax, 0x22
	jne	.label_502
	lea	rsi, [rsi]
	mov	r12d, 1
.label_504:
	test	rbp, rbp
	lea	rdi, [rdi]
	jne	.label_514
	mov	rax, qword ptr [rsp + 8]
	mov	rcx, qword ptr [rsp]
	lea	rsi, [rsi]
	jmp	.label_516
.label_500:
	mov	rbp, r13
	lea	rdi, [rdi]
	test	rbp, rbp
	je	.label_502
	lea	rsi, [rsi]
	mov	rbx, rcx
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rax]
	nop	
	test	esi, esi
	mov	rsp, rsp
	je	.label_502
	mov	rdi, rbp
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	mov	rcx, rbx
	je	.label_502
	mov	qword ptr [rsp + 8], 1
	lea	rdi, [rdi]
	xor	r12d, r12d
.label_514:
	mov	rbp, rbp
	mov	rax, qword ptr [rcx]
	mov	rsp, rsp
	movsx	ebx, byte ptr [rax]
	lea	rdi, [rdi]
	test	ebx, ebx
	lea	rdi, [rdi]
	je	.label_507
	mov	rbp, rbp
	mov	r13, rcx
	mov	rdi, rbp
	mov	rsp, rsp
	mov	esi, ebx
	mov	rsp, rsp
	call	strchr
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_497
	mov	r15d, 0x400
	mov	r14d, 1
	add	ebx, -0x45
	nop	
	cmp	ebx, 0x2f
	ja	.label_520
	movabs	rax, 0x814400308945
	lea	rdi, [rdi]
	bt	rax, rbx
	jae	.label_498
	lea	rdi, [rdi]
	mov	esi, 0x30
	mov	rbp, rbp
	mov	rdi, rbp
	lea	rdi, [rdi]
	call	strchr
	mov	r14d, 1
	mov	rsp, rsp
	mov	rbx, r13
	test	rax, rax
	lea	rdi, [rdi]
	je	.label_508
	nop	
	mov	rax, qword ptr [rbx]
	movsx	ecx, byte ptr [rax + 1]
	mov	r14d, 1
	cmp	ecx, 0x42
	nop	
	je	.label_512
	cmp	ecx, 0x44
	je	.label_512
	cmp	ecx, 0x69
	mov	rbp, rbp
	jne	.label_508
	movzx	eax, byte ptr [rax + 2]
	mov	r14d, 3
	lea	rdi, [rdi]
	cmp	eax, 0x42
	mov	rsp, rsp
	je	.label_508
	mov	r14d, 1
	jmp	.label_508
.label_512:
	mov	rsp, rsp
	mov	r15d, 0x3e8
	mov	r14d, 2
.label_508:
	mov	rax, qword ptr [rbx]
	movsx	eax, byte ptr [rax]
	cmp	eax, 0x59
	lea	rdi, [rdi]
	jg	.label_521
	mov	rsp, rsp
	lea	ecx, [rax - 0x42]
	nop	
	cmp	ecx, 0xe
	nop	
	ja	.label_515
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_506]]
.label_703:
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 0x400
	jmp	.label_509
.label_521:
	cmp	eax, 0x73
	jg	.label_511
	lea	rsi, [rsi]
	lea	ecx, [rax - 0x62]
	mov	rsp, rsp
	cmp	ecx, 0xb
	mov	rbp, rbp
	ja	.label_513
	xor	eax, eax
	mov	rbp, rbp
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_517]]
.label_583:
	mov	rsp, rsp
	lea	rdi, [rsp + 8]
	mov	esi, 0x200
	jmp	.label_509
.label_515:
	cmp	eax, 0x54
	lea	rsi, [rsi]
	je	.label_503
	nop	
	cmp	eax, 0x59
	jne	.label_497
	nop	
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 8
	jmp	.label_501
.label_511:
	lea	rdi, [rdi]
	cmp	eax, 0x74
	nop	
	je	.label_503
	cmp	eax, 0x77
	nop	
	jne	.label_497
	lea	rdi, [rsp + 8]
	mov	rsp, rsp
	mov	esi, 2
.label_509:
	nop	
	call	bkm_scale
	jmp	.label_499
.label_584:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	edx, 3
	mov	rbp, rbp
	jmp	.label_501
.label_585:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 1
	jmp	.label_501
.label_586:
	lea	rdi, [rdi]
	lea	rdi, [rsp + 8]
	lea	rsi, [rsi]
	mov	edx, 2
	jmp	.label_501
.label_503:
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 4
	jmp	.label_501
.label_513:
	cmp	eax, 0x5a
	jne	.label_497
	lea	rdi, [rsp + 8]
	lea	rdi, [rdi]
	mov	edx, 7
	mov	rbp, rbp
	jmp	.label_501
.label_497:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsp + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rsp]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	or	r12d, 2
	jmp	.label_505
.label_704:
	lea	rdi, [rsp + 8]
	mov	edx, 6
	jmp	.label_501
.label_705:
	lea	rsi, [rsi]
	lea	rdi, [rsp + 8]
	mov	rbp, rbp
	mov	edx, 5
.label_501:
	mov	esi, r15d
	lea	rdi, [rdi]
	call	bkm_scale_by_power
.label_499:
	mov	rsp, rsp
	or	eax, r12d
	mov	rcx, qword ptr [rbx]
	mov	rbp, rbp
	lea	rdx, [rcx + r14]
	mov	qword ptr [rbx], rdx
	nop	
	cmp	byte ptr [rcx + r14], 0
	je	.label_519
	lea	rdi, [rdi]
	or	eax, 2
.label_519:
	mov	r12d, eax
.label_507:
	mov	rsp, rsp
	mov	rcx, qword ptr [rsp]
	mov	rax, qword ptr [rsp + 8]
.label_516:
	mov	qword ptr [rcx], rax
.label_505:
	mov	r15d, r12d
.label_502:
	mov	eax, r15d
	add	rsp, 0x18
	pop	rbx
	lea	rsi, [rsi]
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	mov	rsp, rsp
	pop	rbp
	ret	
.label_520:
	lea	rsi, [rsi]
	mov	rbx, r13
	lea	rdi, [rdi]
	jmp	.label_508
.label_498:
	mov	rsp, rsp
	mov	rbx, r13
	lea	rsi, [rsi]
	jmp	.label_508
.label_518:
	lea	rdi, [rdi]
	mov	edi, OFFSET FLAT:.str_9
	mov	esi, OFFSET FLAT:.str.1_5
	mov	edx, 0x54
	mov	ecx, OFFSET FLAT:__PRETTY_FUNCTION__.xstrtoumax
	call	__assert_fail
	.section	.text
	.align	32
	#Procedure 0x40a670

	.globl bkm_scale
	.type bkm_scale, @function
bkm_scale:
	mov	rsp, rsp
	movsxd	rcx, esi
	mov	rsi, -1
	mov	rax, -1
	xor	edx, edx
	lea	rdi, [rdi]
	div	rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	imul	rcx, rdx
	cmp	rax, rdx
	mov	rsp, rsp
	cmovb	rcx, rsi
	sbb	eax, eax
	lea	rdi, [rdi]
	and	eax, 1
	mov	qword ptr [rdi], rcx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40a6b0

	.globl bkm_scale_by_power
	.type bkm_scale_by_power, @function
bkm_scale_by_power:
	push	rbp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	rbx
	push	rax
	mov	ebp, edx
	lea	rsi, [rsi]
	mov	r14d, esi
	lea	rsi, [rsi]
	mov	r15, rdi
	lea	rsi, [rsi]
	xor	ebx, ebx
	lea	rsi, [rsi]
	test	ebp, ebp
	mov	rbp, rbp
	je	.label_522
	nop	word ptr [rax + rax]
.label_523:
	lea	rdi, [rdi]
	mov	rdi, r15
	nop	
	mov	esi, r14d
	lea	rdi, [rdi]
	call	bkm_scale
	or	ebx, eax
	lea	rdi, [rdi]
	dec	ebp
	mov	rsp, rsp
	jne	.label_523
.label_522:
	mov	rsp, rsp
	mov	eax, ebx
	nop	
	add	rsp, 8
	mov	rsp, rsp
	pop	rbx
	mov	rsp, rsp
	pop	r14
	lea	rsi, [rsi]
	pop	r15
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a720

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	je	.label_524
	nop	
	test	rsi, rsi
	mov	ecx, 1
	je	.label_525
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
	je	.label_525
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
.label_524:
	mov	ecx, 1
.label_525:
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rdi, [rdi]
	jmp	calloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40a790

	.globl explicit_bzero
	.type explicit_bzero, @function
explicit_bzero:
	mov	rax, rsi
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	jmp	memset
	.section	.text
	.align	32
	#Procedure 0x40a7a0

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
	js	.label_526
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	__freading
	mov	rbp, rbp
	test	eax, eax
	je	.label_527
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
	je	.label_526
.label_527:
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	lea	rsi, [rsi]
	je	.label_526
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rbp, rbp
	mov	rdi, rbx
	lea	rsi, [rsi]
	call	fclose
	lea	rsi, [rsi]
	test	ebp, ebp
	je	.label_528
	call	__errno_location
	mov	dword ptr [rax], ebp
	lea	rsi, [rsi]
	mov	eax, 0xffffffff
.label_528:
	add	rsp, 8
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	ret	
.label_526:
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
	.align	32
	#Procedure 0x40a860

	.globl rpl_fcntl
	.type rpl_fcntl, @function
rpl_fcntl:
	sub	rsp, 0xc8
	test	al, al
	mov	rbp, rbp
	je	.label_538
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
.label_538:
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
	ja	.label_540
	mov	eax, 0xa0a
	mov	rbp, rbp
	bt	eax, esi
	lea	rsi, [rsi]
	jb	.label_529
	mov	rsp, rsp
	mov	eax, 0x514
	lea	rsi, [rsi]
	bt	eax, esi
	mov	rbp, rbp
	jb	.label_532
	mov	rbp, rbp
	test	esi, esi
	jne	.label_540
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	lea	rdi, [rdi]
	cmp	rcx, 0x28
	mov	rsp, rsp
	ja	.label_542
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	mov	rbp, rbp
	lea	ecx, [rcx + 8]
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rdi, [rdi]
	jmp	.label_536
.label_540:
	lea	eax, [rsi - 0x400]
	lea	rdi, [rdi]
	cmp	eax, 8
	lea	rdi, [rdi]
	ja	.label_533
	mov	ecx, 0x85
	bt	ecx, eax
	jb	.label_532
	lea	rdi, [rdi]
	mov	ecx, 0x102
	bt	ecx, eax
	mov	rbp, rbp
	jae	.label_537
.label_529:
	lea	rsi, [rsi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_532:
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_541
	mov	rax, rcx
	mov	rbp, rbp
	add	rax, qword ptr [rsp + 0xc0]
	mov	rsp, rsp
	lea	ecx, [rcx + 8]
	nop	
	mov	dword ptr [rsp + 0xb0], ecx
	nop	
	jmp	.label_531
.label_541:
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_531:
	mov	edx, dword ptr [rax]
	lea	rdi, [rdi]
	xor	eax, eax
	call	fcntl
	add	rsp, 0xc8
	ret	
.label_537:
	nop	
	cmp	eax, 6
	jne	.label_533
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_535
	mov	rax, rcx
	add	rax, qword ptr [rsp + 0xc0]
	lea	rsi, [rsi]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	lea	rsi, [rsi]
	jmp	.label_539
.label_533:
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rsp + 0xb0]
	cmp	rcx, 0x28
	ja	.label_530
	mov	rbp, rbp
	mov	rax, rcx
	mov	rsp, rsp
	add	rax, qword ptr [rsp + 0xc0]
	lea	ecx, [rcx + 8]
	mov	dword ptr [rsp + 0xb0], ecx
	jmp	.label_534
.label_542:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_536:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_535:
	nop	
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	nop	
	mov	qword ptr [rsp + 0xb8], rcx
.label_539:
	mov	esi, dword ptr [rax]
	mov	rsp, rsp
	call	rpl_fcntl_DUPFD_CLOEXEC
	add	rsp, 0xc8
	lea	rsi, [rsi]
	ret	
.label_530:
	mov	rax, qword ptr [rsp + 0xb8]
	mov	rsp, rsp
	lea	rcx, [rax + 8]
	mov	qword ptr [rsp + 0xb8], rcx
.label_534:
	mov	rdx, qword ptr [rax]
	xor	eax, eax
	mov	rsp, rsp
	call	fcntl
	lea	rsi, [rsi]
	add	rsp, 0xc8
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ab00

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
	.align	32
	#Procedure 0x40ab20

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
	js	.label_543
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
	jns	.label_544
	nop	
	call	__errno_location
	cmp	dword ptr [rax], 0x16
	nop	
	jne	.label_544
	mov	edi, ebp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
	test	ebx, ebx
	js	.label_545
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  0xffffffff
	jmp	.label_546
.label_544:
	mov	rsp, rsp
	mov	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  1
	mov	rbp, rbp
	jmp	.label_546
.label_543:
	mov	rbp, rbp
	mov	edi, ebp
	mov	rbp, rbp
	mov	esi, r14d
	call	rpl_fcntl_DUPFD
	mov	ebx, eax
.label_546:
	test	ebx, ebx
	js	.label_545
	mov	rsp, rsp
	cmp	dword ptr [dword ptr [rip + rpl_fcntl_DUPFD_CLOEXEC.have_dupfd_cloexec]],  -1
	jne	.label_545
	mov	esi, 1
	xor	eax, eax
	mov	edi, ebx
	mov	rsp, rsp
	call	fcntl
	mov	ecx, eax
	test	ecx, ecx
	js	.label_547
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
	jne	.label_545
.label_547:
	lea	rdi, [rdi]
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	mov	edi, ebx
	call	close
	lea	rdi, [rdi]
	mov	dword ptr [rbp], r14d
	mov	ebx, 0xffffffff
.label_545:
	lea	rdi, [rdi]
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ac30

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_548
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	__freading
	test	eax, eax
	je	.label_548
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_548:
	mov	rsp, rsp
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac60

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	mov	rbp, rbp
	jne	.label_549
	mov	rbp, rbp
	ret	
.label_549:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	edx, 1
	lea	rdi, [rdi]
	jmp	rpl_fseeko
	nop	
	.section	.text
	.align	32
	#Procedure 0x40ac80

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
	jne	.label_550
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_550
	lea	rsi, [rsi]
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_552
.label_550:
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
.label_552:
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
	je	.label_551
	lea	rsi, [rsi]
	and	byte ptr [rbx], 0xef
	lea	rdi, [rdi]
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_551:
	pop	rbx
	mov	rsp, rsp
	pop	r14
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ad30

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
	je	.label_553
	nop	
	cmp	r15, -2
	jb	.label_553
	mov	rsp, rsp
	xor	edi, edi
	mov	rbp, rbp
	call	hard_locale
	test	al, al
	nop	
	jne	.label_553
	lea	rdi, [rdi]
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	lea	rdi, [rdi]
	mov	r15d, 1
.label_553:
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
	.align	32
	#Procedure 0x40adc0
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
	#Procedure 0x40adf0
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
	#Procedure 0x40ae10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40ae20
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
	#Procedure 0x40ae30
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
	#Procedure 0x40ae50
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
	#Procedure 0x40ae60
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
	#Procedure 0x40ae70
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
	#Procedure 0x40ae80
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
	#Procedure 0x40ae90
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
	#Procedure 0x40aec0
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
	#Procedure 0x40aee0

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
	#Procedure 0x40aef0
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
	#Procedure 0x40af10
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
	#Procedure 0x40af20
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
	#Procedure 0x40af30

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
	je	.label_564
	mov	ebx, 0xffffffff
	mov	rbp, rbp
	test	eax, eax
	jne	.label_563
	lea	rsi, [rsi]
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rsp, rsp
	jmp	.label_563
.label_564:
	test	eax, eax
	mov	rbp, rbp
	sete	cl
	neg	eax
	nop	
	sbb	ebx, ebx
	lea	rsi, [rsi]
	test	r14, r14
	jne	.label_563
	test	cl, cl
	jne	.label_563
	lea	rsi, [rsi]
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	nop	
	cmove	ebx, ecx
.label_563:
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
	.align	32
	#Procedure 0x40afd0

	.globl fopen_safer
	.type fopen_safer, @function
fopen_safer:
	lea	rdi, [rdi]
	push	rbp
	push	r14
	lea	rsi, [rsi]
	push	rbx
	lea	rdi, [rdi]
	mov	r14, rsi
	mov	rsp, rsp
	call	fopen
	lea	rsi, [rsi]
	mov	rbx, rax
	xor	eax, eax
	test	rbx, rbx
	je	.label_565
	mov	rsp, rsp
	mov	rdi, rbx
	call	fileno
	cmp	eax, 2
	ja	.label_566
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	call	dup_safer
	mov	rsp, rsp
	mov	ebp, eax
	test	ebp, ebp
	js	.label_568
	lea	rsi, [rsi]
	mov	rdi, rbx
	call	rpl_fclose
	mov	rbp, rbp
	test	eax, eax
	jne	.label_567
	mov	rsp, rsp
	mov	edi, ebp
	lea	rsi, [rsi]
	mov	rsi, r14
	call	fdopen
	mov	rbp, rbp
	test	rax, rax
	lea	rdi, [rdi]
	jne	.label_565
.label_567:
	call	__errno_location
	mov	rbx, rax
	mov	r14d, dword ptr [rbx]
	mov	edi, ebp
	lea	rdi, [rdi]
	call	close
	mov	rbp, rbp
	mov	dword ptr [rbx], r14d
	mov	rbp, rbp
	jmp	.label_569
.label_566:
	mov	rax, rbx
	mov	rsp, rsp
	jmp	.label_565
.label_568:
	call	__errno_location
	mov	rbp, rax
	mov	r14d, dword ptr [rbp]
	lea	rsi, [rsi]
	mov	rdi, rbx
	mov	rsp, rsp
	call	rpl_fclose
	mov	dword ptr [rbp], r14d
.label_569:
	xor	eax, eax
.label_565:
	mov	rbp, rbp
	pop	rbx
	lea	rdi, [rdi]
	pop	r14
	pop	rbp
	mov	rsp, rsp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x40b0b0

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
	je	.label_571
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_570
	mov	rsp, rsp
	cmp	byte ptr [rax + 1], 0
	je	.label_572
.label_570:
	nop	
	mov	esi, OFFSET FLAT:.str.1_6
	mov	rsp, rsp
	mov	rdi, rax
	lea	rsi, [rsi]
	call	strcmp
	mov	rsp, rsp
	test	eax, eax
	jne	.label_571
.label_572:
	lea	rdi, [rdi]
	xor	ebx, ebx
.label_571:
	mov	al, bl
	lea	rdi, [rdi]
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x40b100

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
	mov	eax, OFFSET FLAT:.str.1_7
	cmp	byte ptr [rcx], 0
	lea	rsi, [rsi]
	je	.label_573
	nop	
	mov	rax, rcx
.label_573:
	pop	rcx
	lea	rsi, [rsi]
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x40b140

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
	.align	32
	#Procedure 0x40b160

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
	.align	32
	#Procedure 0x40b230

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
	#Procedure 0x40b240

	.globl fstatat
	.type fstatat, @function
fstatat:
	mov	r8d, ecx
	mov	rcx, rdx
	mov	rdx, rsi
	mov	esi, edi
	mov	edi, 1
	jmp	__fxstatat
