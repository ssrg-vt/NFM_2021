	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	lea	rsi, [rsi]
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	nop	
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	nop	
	jmp	.label_9
.label_7:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [program_name]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rsi, [rsi]
	mov	edi, 0xa
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	mov	rsp, rsp
	call	putchar_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	nop	
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x20], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	nop	
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x30], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], eax
	mov	rbp, rbp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x40], eax
	nop	
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x44], eax
	lea	rdi, [rdi]
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402070

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_15:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	lea	rsi, [rsi]
	je	.label_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	lea	rsi, [rsi]
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_12
	lea	rdi, [rdi]
	jmp	.label_14
.label_12:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_14:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_10
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	rsp, rsp
	mov	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	je	.label_11
	nop	
	movabs	rsi, OFFSET FLAT:.str.34
	mov	eax, 3
	mov	rbp, rbp
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	nop	
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	nop	
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	printf
	movabs	rdi, OFFSET FLAT:.str.37
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	nop	
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	nop	
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	al, 0
	lea	rsi, [rsi]
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x402280

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	nop	
	mov	dword ptr [rbp - 0x20], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	nop	
	call	set_program_name
	mov	edi, 6
	nop	
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.14
	movabs	rsi, OFFSET FLAT:.str.15
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.14
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	mov	edi, 3
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	call	initialize_exit_failure
	nop	
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	call	atexit
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	lea	rdi, [rdi]
	movabs	r9, OFFSET FLAT:usage
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.18_0
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.19
	lea	rdi, [rdi]
	movabs	r10, OFFSET FLAT:.str.20
	xor	r11d, r11d
	mov	ebx, r11d
	lea	rdi, [rdi]
	mov	r11d, dword ptr [rbp - 0x20]
	mov	r14, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdi
	mov	rbp, rbp
	mov	edi, r11d
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi, r14
	mov	r14, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], r14
	mov	rsp, rsp
	mov	r15, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp + 8], r15
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rbp - 0x64], eax
	mov	al, 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rbx
	call	parse_long_options
	mov	edi, 1
	mov	rsp, rsp
	mov	r11d, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], r11d
	nop	
	cmp	edi, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	jae	.label_16
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:.str.21
	mov	esi, ecx
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	jne	.label_16
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	eax, -1
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	add	rcx, 8
	mov	qword ptr [rbp - 0x28], rcx
.label_16:
	cmp	dword ptr [rbp - 0x34], 1
	ja	.label_17
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	error
	nop	
	mov	edi, 2
	nop	
	call	usage
.label_17:
	mov	edi, 1
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [word ptr [args]],  rax
	call	eval
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	call	nomoreargs
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_18
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [args]]
	mov	rdx, qword ptr [rcx]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	lea	rdi, [rdi]
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, rax
	mov	rbp, rbp
	mov	al, 0
	call	error
.label_18:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	printv
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	null
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x88
	pop	rbx
	mov	rsp, rsp
	pop	r14
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x402530

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	lea	rsi, [rsi]
	je	.label_19
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_19:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402560

	.globl eval
	.type eval, @function
eval:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	call	eval1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
.label_21:
	movabs	rdi, OFFSET FLAT:.str.39
	call	nextarg
	lea	rdi, [rdi]
	test	al, 1
	mov	rbp, rbp
	jne	.label_23
	jmp	.label_22
.label_23:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	test	byte ptr [rbp - 1], 1
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	je	.label_26
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	null
	mov	byte ptr [rbp - 0x19], al
.label_26:
	mov	al, byte ptr [rbp - 0x19]
	nop	
	and	al, 1
	nop	
	movzx	edi, al
	lea	rsi, [rsi]
	call	eval1
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	nop	
	test	al, 1
	nop	
	jne	.label_29
	nop	
	jmp	.label_20
.label_29:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	freev
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_25
	nop	
	jmp	.label_28
.label_25:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	freev
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edi, eax
	mov	rbp, rbp
	call	int_value
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_28:
	nop	
	jmp	.label_24
.label_20:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	freev
.label_24:
	lea	rdi, [rdi]
	jmp	.label_27
.label_22:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
.label_27:
	nop	
	jmp	.label_21
	.section	.text
	.align	32
	#Procedure 0x4026a0

	.globl nomoreargs
	.type nomoreargs, @function
nomoreargs:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [args]]
	mov	rbp, rbp
	cmp	qword ptr [rax], 0
	mov	rsp, rsp
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4026d0

	.globl printv
	.type printv, @function
printv:
	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	je	.label_30
	nop	
	jmp	.label_31
.label_31:
	mov	eax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	sub	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	je	.label_33
	jmp	.label_34
.label_30:
	nop	
	mov	esi, 0xa
	nop	
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rax, 8
	mov	rdx, rax
	lea	rdi, [rdi]
	call	__gmpz_out_str
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x18], rax
	nop	
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	jmp	.label_32
.label_33:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	mov	rsp, rsp
	call	puts
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_32
.label_34:
	mov	rbp, rbp
	call	abort
.label_32:
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402780

	.globl null
	.type null, @function
null:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_35
	lea	rdi, [rdi]
	jmp	.label_36
.label_36:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	je	.label_41
	jmp	.label_45
.label_35:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xc], 0
	nop	
	jge	.label_38
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	jmp	.label_44
.label_38:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xc], 0
	mov	rsp, rsp
	setg	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	dword ptr [rbp - 0x24], edx
.label_44:
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	jmp	.label_37
.label_41:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_42
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_37
.label_42:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	lea	rsi, [rsi]
	sete	dl
	nop	
	and	dl, 1
	mov	rsp, rsp
	movzx	ecx, dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x18], rax
.label_43:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	nop	
	je	.label_39
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_37
.label_39:
	jmp	.label_40
.label_40:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	rbp, rbp
	cmp	byte ptr [rax + 1], 0
	jne	.label_43
	mov	byte ptr [rbp - 1], 1
	jmp	.label_37
.label_45:
	mov	rbp, rbp
	call	abort
.label_37:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	eax, al
	add	rsp, 0x30
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402900

	.globl eval1
	.type eval1, @function
eval1:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	al, dil
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	edi, al
	nop	
	call	eval2
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_49:
	movabs	rdi, OFFSET FLAT:.str.40
	call	nextarg
	test	al, 1
	jne	.label_52
	nop	
	jmp	.label_46
.label_52:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	cl, al
	test	byte ptr [rbp - 1], 1
	mov	byte ptr [rbp - 0x19], cl
	lea	rsi, [rsi]
	je	.label_47
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	null
	lea	rdi, [rdi]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x19], al
.label_47:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edi, al
	lea	rdi, [rdi]
	call	eval2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_48
	mov	rdi, qword ptr [rbp - 0x18]
	call	null
	test	al, 1
	jne	.label_48
	jmp	.label_51
.label_48:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	freev
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	call	freev
	lea	rdi, [rdi]
	xor	eax, eax
	mov	edi, eax
	call	int_value
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_53
.label_51:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
.label_53:
	jmp	.label_50
.label_46:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
.label_50:
	lea	rdi, [rdi]
	jmp	.label_49
	.section	.text
	.align	32
	#Procedure 0x402a10

	.globl nextarg
	.type nextarg, @function
nextarg:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi,  qword ptr [word ptr [args]]
	cmp	qword ptr [rdi], 0
	jne	.label_54
	mov	byte ptr [rbp - 1], 0
	jmp	.label_55
.label_54:
	mov	rax,  qword ptr [word ptr [args]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	lea	rsi, [rsi]
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x11]
	nop	
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsi,  qword ptr [word ptr [args]]
	lea	rsi, [rsi]
	movsxd	rdi, eax
	mov	rbp, rbp
	shl	rdi, 3
	add	rsi, rdi
	mov	qword ptr [word ptr [args]],  rsi
	nop	
	mov	cl, byte ptr [rbp - 0x11]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_55:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402ac0

	.globl freev
	.type freev, @function
freev:
	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 1
	jne	.label_56
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	call	free
	jmp	.label_57
.label_56:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 8
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	__gmpz_clear
.label_57:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b30

	.globl int_value
	.type int_value, @function
int_value:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, rcx
	nop	
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	__gmpz_init_set_ui
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402b90

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	edi, al
	call	eval3
	mov	qword ptr [rbp - 0x10], rax
.label_75:
	movabs	rdi, OFFSET FLAT:.str.41
	mov	byte ptr [rbp - 0x1d], 0
	lea	rsi, [rsi]
	call	nextarg
	test	al, 1
	jne	.label_73
	nop	
	jmp	.label_74
.label_73:
	mov	dword ptr [rbp - 0x1c], 0
	nop	
	jmp	.label_65
.label_74:
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	call	nextarg
	test	al, 1
	mov	rbp, rbp
	jne	.label_82
	lea	rsi, [rsi]
	jmp	.label_85
.label_82:
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_60
.label_85:
	movabs	rdi, OFFSET FLAT:.str.43
	mov	rsp, rsp
	call	nextarg
	test	al, 1
	nop	
	jne	.label_68
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.44
	call	nextarg
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_68
	lea	rdi, [rdi]
	jmp	.label_79
.label_68:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 2
	nop	
	jmp	.label_63
.label_79:
	movabs	rdi, OFFSET FLAT:.str.45
	call	nextarg
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_83
	lea	rsi, [rsi]
	jmp	.label_59
.label_83:
	mov	dword ptr [rbp - 0x1c], 3
	jmp	.label_61
.label_59:
	movabs	rdi, OFFSET FLAT:.str.46
	mov	rbp, rbp
	call	nextarg
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_69
	jmp	.label_71
.label_69:
	mov	dword ptr [rbp - 0x1c], 4
	lea	rsi, [rsi]
	jmp	.label_72
.label_71:
	movabs	rdi, OFFSET FLAT:.str.47
	mov	rsp, rsp
	call	nextarg
	nop	
	test	al, 1
	jne	.label_76
	jmp	.label_78
.label_76:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 5
	jmp	.label_80
.label_78:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
.label_80:
	jmp	.label_72
.label_72:
	nop	
	jmp	.label_61
.label_61:
	jmp	.label_63
.label_63:
	jmp	.label_60
.label_60:
	nop	
	jmp	.label_65
.label_65:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	mov	rbp, rbp
	call	eval3
	mov	qword ptr [rbp - 0x18], rax
	nop	
	test	byte ptr [rbp - 1], 1
	je	.label_67
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	tostring
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	tostring
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	call	looks_like_integer
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_81
	jmp	.label_66
.label_81:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	call	looks_like_integer
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_62
	jmp	.label_66
.label_62:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	strintcmp
	mov	dword ptr [rbp - 0x24], eax
	nop	
	jmp	.label_70
.label_66:
	lea	rdi, [rdi]
	call	__errno_location
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	call	strcoll
	mov	dword ptr [rbp - 0x24], eax
	mov	rsp, rsp
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_84
	call	__errno_location
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x28]
	nop	
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.49
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	xor	esi, esi
	mov	rsp, rsp
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	error
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	xor	edi, edi
	mov	rsp, rsp
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	mov	edi, 1
	nop	
	mov	esi, 8
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	call	quotearg_n_style
	lea	rsi, [rsi]
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_84:
	mov	rsp, rsp
	jmp	.label_70
.label_70:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	rbp, rbp
	ja	.label_77
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_58]]
	jmp	rcx
.label_3208:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0
	setl	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	lea	rdi, [rdi]
	jmp	.label_64
.label_3209:
	cmp	dword ptr [rbp - 0x24], 0
	setle	al
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1d], al
	lea	rsi, [rsi]
	jmp	.label_64
.label_3210:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0
	sete	al
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	mov	rbp, rbp
	jmp	.label_64
.label_3211:
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1d], al
	lea	rdi, [rdi]
	jmp	.label_64
.label_3212:
	cmp	dword ptr [rbp - 0x24], 0
	setge	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_64
.label_3213:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	setg	al
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_64
.label_77:
	call	abort
.label_64:
	lea	rsi, [rsi]
	jmp	.label_67
.label_67:
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	edi, ecx
	mov	rbp, rbp
	call	int_value
	nop	
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_75
	.section	.text
	.align	32
	#Procedure 0x402ff0

	.globl eval3
	.type eval3, @function
eval3:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	al, dil
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	nop	
	movzx	edi, al
	mov	rbp, rbp
	call	eval4
	mov	qword ptr [rbp - 0x10], rax
.label_91:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str_1
	nop	
	call	nextarg
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_93
	mov	rbp, rbp
	jmp	.label_95
.label_93:
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_86
.label_95:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.52
	call	nextarg
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_89
	jmp	.label_92
.label_89:
	nop	
	mov	dword ptr [rbp - 0x1c], 1
	nop	
	jmp	.label_94
.label_92:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
.label_94:
	nop	
	jmp	.label_86
.label_86:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	call	eval4
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_90
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	toarith
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_96
	jmp	.label_87
.label_96:
	mov	rdi, qword ptr [rbp - 0x18]
	call	toarith
	test	al, 1
	jne	.label_88
.label_87:
	nop	
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rbp, rbp
	call	error
.label_88:
	movabs	rax, OFFSET FLAT:__gmpz_sub
	movabs	rcx, OFFSET FLAT:__gmpz_add
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rsi, [rsi]
	cmove	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rcx, 8
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 8
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	rax
.label_90:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	jmp	.label_91
	.section	.text
	.align	32
	#Procedure 0x403170

	.globl tostring
	.type tostring, @function
tostring:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	eax, dword ptr [rdi]
	nop	
	test	eax, eax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	je	.label_97
	jmp	.label_101
.label_101:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x18], eax
	je	.label_99
	lea	rsi, [rsi]
	jmp	.label_100
.label_97:
	mov	rbp, rbp
	xor	eax, eax
	nop	
	mov	edi, eax
	mov	esi, 0xa
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rcx, 8
	lea	rsi, [rsi]
	mov	rdx, rcx
	nop	
	call	__gmpz_get_str
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	mov	rbp, rbp
	call	__gmpz_clear
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 1
	mov	rbp, rbp
	jmp	.label_98
.label_99:
	jmp	.label_98
.label_100:
	call	abort
.label_98:
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403230

	.globl looks_like_integer
	.type looks_like_integer, @function
looks_like_integer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	lea	rdi, [rdi]
	cmp	eax, 0x2d
	mov	rsp, rsp
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rdx, eax
	add	rdi, rdx
	mov	qword ptr [rbp - 0x10], rdi
.label_105:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	nop	
	jbe	.label_102
	nop	
	mov	byte ptr [rbp - 1], 0
	mov	rbp, rbp
	jmp	.label_104
.label_102:
	nop	
	jmp	.label_103
.label_103:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	cmp	byte ptr [rax + 1], 0
	nop	
	jne	.label_105
	mov	byte ptr [rbp - 1], 1
.label_104:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4032d0

	.globl eval4
	.type eval4, @function
eval4:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	al, dil
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	call	eval5
	nop	
	mov	qword ptr [rbp - 0x10], rax
.label_124:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.54
	lea	rsi, [rsi]
	call	nextarg
	test	al, 1
	jne	.label_113
	nop	
	jmp	.label_114
.label_113:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	jmp	.label_116
.label_114:
	nop	
	movabs	rdi, OFFSET FLAT:.str.55
	call	nextarg
	test	al, 1
	jne	.label_110
	jmp	.label_112
.label_110:
	nop	
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_111
.label_112:
	movabs	rdi, OFFSET FLAT:.str.56
	call	nextarg
	test	al, 1
	jne	.label_120
	lea	rsi, [rsi]
	jmp	.label_123
.label_120:
	nop	
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_106
.label_123:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
.label_106:
	lea	rsi, [rsi]
	jmp	.label_111
.label_111:
	lea	rsi, [rsi]
	jmp	.label_116
.label_116:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rsi, [rsi]
	movzx	edi, al
	mov	rbp, rbp
	call	eval5
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_107
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	toarith
	test	al, 1
	jne	.label_115
	jmp	.label_118
.label_115:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	toarith
	mov	rbp, rbp
	test	al, 1
	jne	.label_117
.label_118:
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	edi, 2
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_117:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_109
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xc], 0
	mov	rbp, rbp
	jge	.label_121
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_108
.label_121:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	dword ptr [rax + 0xc], 0
	setg	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	mov	dword ptr [rbp - 0x20], edx
.label_108:
	mov	eax, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_109
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.57
	mov	rbp, rbp
	call	gettext
	mov	edi, 2
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_109:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_119
	movabs	rax, OFFSET FLAT:__gmpz_mul
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_122
.label_119:
	movabs	rax, OFFSET FLAT:__gmpz_tdiv_r
	movabs	rcx, OFFSET FLAT:__gmpz_tdiv_q
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 1
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_122:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, 8
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rdx, 8
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	rax
.label_107:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	freev
	jmp	.label_124
	.section	.text
	.align	32
	#Procedure 0x403550

	.globl toarith
	.type toarith, @function
toarith:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdi]
	lea	rdi, [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	je	.label_128
	jmp	.label_129
.label_129:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_131
	lea	rsi, [rsi]
	jmp	.label_132
.label_128:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	lea	rsi, [rsi]
	jmp	.label_125
.label_131:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	looks_like_integer
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_130
	mov	byte ptr [rbp - 1], 0
	jmp	.label_125
.label_130:
	mov	edx, 0xa
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	__gmpz_init_set_str
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_127
	mov	al, 1
	test	al, 1
	mov	rsp, rsp
	jne	.label_127
	mov	rsp, rsp
	jmp	.label_126
.label_126:
	mov	edi, 3
	mov	esi, 0x22
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	al, 0
	call	error
.label_127:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], 0
	nop	
	mov	byte ptr [rbp - 1], 1
	jmp	.label_125
.label_132:
	mov	rsp, rsp
	call	abort
.label_125:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	lea	rsi, [rsi]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403670

	.globl eval5
	.type eval5, @function
eval5:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	lea	rdi, [rdi]
	call	eval6
	mov	qword ptr [rbp - 0x10], rax
.label_137:
	movabs	rdi, OFFSET FLAT:.str.58
	nop	
	call	nextarg
	test	al, 1
	jne	.label_134
	jmp	.label_136
.label_134:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	rbp, rbp
	movzx	edi, al
	lea	rdi, [rdi]
	call	eval6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_135
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	docolon
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_135:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	freev
	jmp	.label_133
.label_136:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
.label_133:
	mov	rbp, rbp
	jmp	.label_137
	.section	.text
	.align	32
	#Procedure 0x403730

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dil
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_1
	and	al, 1
	mov	byte ptr [rbp - 9], al
	nop	
	call	nextarg
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_148
	mov	rbp, rbp
	jmp	.label_150
.label_148:
	nop	
	call	require_more_args
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [args]]
	mov	rcx, rax
	nop	
	add	rcx, 8
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [args]],  rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rax]
	call	str_value
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_138
.label_150:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	call	nextarg
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_142
	mov	rbp, rbp
	jmp	.label_145
.label_142:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	mov	rbp, rbp
	call	eval6
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	tostring
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	mbslen
	mov	rdi, rax
	mov	rbp, rbp
	call	int_value
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	freev
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_138
.label_145:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.60
	call	nextarg
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_143
	mov	rbp, rbp
	jmp	.label_146
.label_143:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	lea	rdi, [rdi]
	call	eval6
	mov	qword ptr [rbp - 0x18], rax
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	mov	rsp, rsp
	movzx	edi, cl
	call	eval6
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 9], 1
	je	.label_153
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	docolon
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	mov	rbp, rbp
	jmp	.label_139
.label_153:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_139:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	freev
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	jmp	.label_138
.label_146:
	movabs	rdi, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	call	nextarg
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_151
	mov	rbp, rbp
	jmp	.label_152
.label_151:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	mov	rsp, rsp
	movzx	edi, al
	mov	rbp, rbp
	call	eval6
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	nop	
	mov	cl, byte ptr [rbp - 9]
	nop	
	and	cl, 1
	movzx	edi, cl
	nop	
	call	eval6
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	tostring
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	tostring
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	call	mbs_logical_cspn
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	call	int_value
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	freev
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	freev
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_138
.label_152:
	movabs	rdi, OFFSET FLAT:.str.62
	call	nextarg
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_141
	jmp	.label_144
.label_141:
	mov	al, byte ptr [rbp - 9]
	nop	
	and	al, 1
	movzx	edi, al
	call	eval6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edi, cl
	call	eval6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 9]
	mov	rbp, rbp
	and	cl, 1
	movzx	edi, cl
	lea	rsi, [rsi]
	call	eval6
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	tostring
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	call	toarith
	lea	rdi, [rdi]
	test	al, 1
	jne	.label_154
	nop	
	jmp	.label_140
.label_154:
	mov	rdi, qword ptr [rbp - 0x38]
	call	toarith
	test	al, 1
	jne	.label_147
.label_140:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str_0
	call	str_value
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_149
.label_147:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	call	getsize
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 8
	lea	rsi, [rsi]
	mov	rdi, rax
	call	getsize
	nop	
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	mbs_logical_substr
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x58]
	call	str_value
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_149:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	freev
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	freev
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	freev
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	jmp	.label_138
.label_144:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	nop	
	movzx	edi, al
	call	eval7
	mov	qword ptr [rbp - 8], rax
.label_138:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl docolon
	.type docolon, @function
docolon:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x1d0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	tostring
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	tostring
	lea	rdx, [rbp - 0x60]
	lea	rsi, [rbp - 0x160]
	mov	qword ptr [rbp - 0x178], 0
	mov	qword ptr [rbp - 0x170], 0
	mov	qword ptr [rbp - 0x168], 0
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x58], 0
	mov	qword ptr [rbp - 0x40], rsi
	mov	qword ptr [rbp - 0x38], 0
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  0x2c6
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x190], rdi
	mov	rsp, rsp
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x198], rdx
	call	strlen
	mov	rdi, qword ptr [rbp - 0x190]
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rsp, rsp
	call	rpl_re_compile_pattern
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_167
	mov	rsp, rsp
	mov	edi, 2
	xor	esi, esi
	mov	rbp, rbp
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_167:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x60]
	xor	eax, eax
	mov	ecx, eax
	lea	r8, [rbp - 0x178]
	mov	dl, byte ptr [rbp - 0x28]
	and	dl, 0x7f
	mov	byte ptr [rbp - 0x28], dl
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	r9, qword ptr [rbp - 8]
	mov	r9, qword ptr [r9 + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	rdi, r9
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b0], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1b8], r8
	mov	rsp, rsp
	call	strlen
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x1b8]
	lea	rdi, [rdi]
	call	rpl_re_match
	lea	rsi, [rsi]
	xor	r10d, r10d
	mov	ecx, r10d
	nop	
	mov	qword ptr [rbp - 0x180], rax
	cmp	rcx, qword ptr [rbp - 0x180]
	jg	.label_157
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_162
	mov	rax, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x170]
	add	rax, qword ptr [rcx + 8]
	mov	rdi, rax
	mov	rbp, rbp
	call	str_value
	mov	qword ptr [rbp - 0x18], rax
	nop	
	jmp	.label_164
.label_162:
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	lea	rsi, [rsi]
	jne	.label_156
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	jmp	.label_159
.label_156:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x180]
	call	mbs_offset_to_chars
	mov	qword ptr [rbp - 0x1c0], rax
.label_159:
	nop	
	mov	rax, qword ptr [rbp - 0x1c0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x188], rax
	mov	rdi, qword ptr [rbp - 0x188]
	nop	
	call	int_value
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rax
.label_164:
	jmp	.label_166
.label_157:
	cmp	qword ptr [rbp - 0x180], -1
	lea	rsi, [rsi]
	jne	.label_165
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jbe	.label_161
	movabs	rdi, OFFSET FLAT:.str_0
	mov	rbp, rbp
	call	str_value
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_163
.label_161:
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	edi, eax
	call	int_value
	mov	qword ptr [rbp - 0x18], rax
.label_163:
	mov	rsp, rsp
	jmp	.label_155
.label_165:
	cmp	qword ptr [rbp - 0x180], -2
	jne	.label_158
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], ecx
	jmp	.label_160
.label_158:
	lea	rdi, [rdi]
	mov	eax, 0x4b
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_160
.label_160:
	nop	
	mov	eax, dword ptr [rbp - 0x1c4]
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.70
	mov	dword ptr [rbp - 0x1c8], eax
	call	gettext
	nop	
	mov	edi, 3
	mov	esi, dword ptr [rbp - 0x1c8]
	mov	rsp, rsp
	mov	rdx, rax
	mov	al, 0
	call	error
.label_155:
	jmp	.label_166
.label_166:
	mov	rsp, rsp
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x178]
	lea	rdi, [rdi]
	jae	.label_168
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x170]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x168]
	mov	rdi, rax
	call	free
.label_168:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], 0
	nop	
	call	rpl_regfree
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x1d0
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x403ef0

	.globl require_more_args
	.type require_more_args, @function
require_more_args:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	call	nomoreargs
	test	al, 1
	jne	.label_169
	jmp	.label_170
.label_169:
	movabs	rdi, OFFSET FLAT:.str.63
	lea	rdi, [rdi]
	call	gettext
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rsi, [rsi]
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	nop	
	mov	rdx, qword ptr [rcx - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	nop	
	call	quotearg_n_style
	mov	edi, 2
	mov	rsp, rsp
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_170:
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403f70

	.globl str_value
	.type str_value, @function
str_value:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	eax, 0x18
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	xstrdup
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fd0

	.globl mbs_logical_cspn
	.type mbs_logical_cspn, @function
mbs_logical_cspn:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rsi]
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_179
	mov	qword ptr [rbp - 8], 0
	jmp	.label_172
.label_179:
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	nop	
	cmp	rax, 1
	jbe	.label_181
	lea	rdi, [rdi]
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rdi
	nop	
	mov	byte ptr [rbp - 0x60], 0
	add	rcx, 4
	nop	
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x54], 0
.label_174:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x60]
	call	mbuiter_multi_next
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x40], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa9], cl
	lea	rsi, [rsi]
	je	.label_175
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa9], al
.label_175:
	nop	
	mov	al, byte ptr [rbp - 0xa9]
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_180
	jmp	.label_187
.label_180:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x48], 1
	jne	.label_178
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	movsx	esi, byte ptr [rax]
	call	mbschr
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_191
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_172
.label_191:
	lea	rdi, [rdi]
	jmp	.label_173
.label_178:
	xor	esi, esi
	mov	eax, 8
	mov	rbp, rbp
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rdi
	mov	byte ptr [rbp - 0xa0], 0
	lea	rdi, [rdi]
	add	rcx, 4
	mov	rdi, rcx
	nop	
	call	memset
	mov	byte ptr [rbp - 0x94], 0
.label_186:
	lea	rdi, [rbp - 0xa0]
	mov	rbp, rbp
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	nop	
	test	byte ptr [rbp - 0x80], 1
	mov	byte ptr [rbp - 0xaa], cl
	lea	rsi, [rsi]
	je	.label_176
	cmp	dword ptr [rbp - 0x7c], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xaa], al
.label_176:
	mov	al, byte ptr [rbp - 0xaa]
	mov	rsp, rsp
	xor	al, 0xff
	nop	
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_189
	nop	
	jmp	.label_177
.label_189:
	test	byte ptr [rbp - 0x80], 1
	je	.label_184
	test	byte ptr [rbp - 0x40], 1
	mov	rsp, rsp
	je	.label_184
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x7c]
	cmp	eax, dword ptr [rbp - 0x3c]
	nop	
	je	.label_183
	jmp	.label_171
.label_184:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_171
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	memcmp
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_171
.label_183:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_172
.label_171:
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	byte ptr [rbp - 0x94], 0
	mov	rbp, rbp
	jmp	.label_186
.label_177:
	jmp	.label_173
.label_173:
	nop	
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x54], 0
	jmp	.label_174
.label_187:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_172
.label_181:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcspn
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	je	.label_188
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	jmp	.label_185
.label_188:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_185
.label_185:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_172:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0xc0
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x404300

	.globl getsize
	.type getsize, @function
getsize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi + 4], 0
	jge	.label_192
	lea	rdi, [rdi]
	mov	eax, 0xffffffff
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_197
.label_192:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 4], 0
	setg	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x1c], edx
.label_197:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jge	.label_194
	mov	qword ptr [rbp - 8], -1
	mov	rsp, rsp
	jmp	.label_193
.label_194:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__gmpz_fits_ulong_p
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_196
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__gmpz_get_ui
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	nop	
	jae	.label_195
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_193
.label_195:
	nop	
	jmp	.label_196
.label_196:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
.label_193:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043e0

	.globl mbs_logical_substr
	.type mbs_logical_substr, @function
mbs_logical_substr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	lea	rdi, [rdi]
	jbe	.label_207
	mov	rdi, qword ptr [rbp - 0x10]
	call	mbslen
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	nop	
	jmp	.label_213
.label_207:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x98], rax
.label_213:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_211
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	je	.label_211
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	je	.label_211
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_199
.label_211:
	movabs	rdi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_210
.label_199:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	nop	
	jae	.label_212
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_203
.label_212:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_203:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_get_mb_cur_max
	nop	
	cmp	rax, 1
	jne	.label_200
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	lea	rdi, [rdi]
	call	xmalloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	mempcpy
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_204
.label_200:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rdi, rax
	mov	rbp, rbp
	call	xmalloc
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, 8
	nop	
	mov	edx, ecx
	lea	rdi, [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x90], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x88], 0
	mov	rsp, rsp
	add	rdi, 4
	call	memset
	mov	byte ptr [rbp - 0x7c], 0
.label_206:
	lea	rdi, [rbp - 0x88]
	nop	
	call	mbuiter_multi_next
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], cl
	lea	rdi, [rdi]
	je	.label_202
	cmp	dword ptr [rbp - 0x64], 0
	mov	rbp, rbp
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa1], al
.label_202:
	mov	al, byte ptr [rbp - 0xa1]
	mov	rbp, rbp
	xor	ecx, ecx
	mov	dl, cl
	lea	rsi, [rsi]
	xor	al, 0xff
	test	al, 1
	mov	byte ptr [rbp - 0xa2], dl
	jne	.label_208
	nop	
	jmp	.label_209
.label_208:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	seta	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa2], al
.label_209:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa2]
	mov	rbp, rbp
	test	al, 1
	nop	
	jne	.label_214
	jmp	.label_205
.label_214:
	mov	rax, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_198
	lea	rsi, [rsi]
	jmp	.label_201
.label_198:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x70]
	call	mempcpy
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
.label_201:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	add	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	mov	rsp, rsp
	jmp	.label_206
.label_205:
	jmp	.label_204
.label_204:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_210:
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0xb0
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404700

	.globl eval7
	.type eval7, @function
eval7:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 9], al
	mov	rsp, rsp
	call	require_more_args
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.64
	call	nextarg
	mov	rbp, rbp
	test	al, 1
	mov	rbp, rbp
	jne	.label_221
	lea	rdi, [rdi]
	jmp	.label_222
.label_221:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	nop	
	call	eval
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	call	nomoreargs
	test	al, 1
	jne	.label_218
	jmp	.label_219
.label_218:
	movabs	rdi, OFFSET FLAT:.str.65
	mov	rbp, rbp
	call	gettext
	nop	
	xor	edi, edi
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	mov	rdx, qword ptr [rcx - 8]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	call	quotearg_n_style
	mov	rsp, rsp
	mov	edi, 2
	mov	rbp, rbp
	xor	esi, esi
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	call	error
.label_219:
	movabs	rdi, OFFSET FLAT:.str.66
	call	nextarg
	test	al, 1
	jne	.label_216
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.67
	mov	rbp, rbp
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	call	quotearg_n_style
	mov	rbp, rbp
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rsi, [rsi]
	call	error
.label_216:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_220
.label_222:
	movabs	rdi, OFFSET FLAT:.str.66
	call	nextarg
	test	al, 1
	nop	
	jne	.label_215
	jmp	.label_217
.label_215:
	movabs	rdi, OFFSET FLAT:.str.68
	call	gettext
	mov	edi, 2
	nop	
	xor	esi, esi
	mov	rdx, rax
	lea	rdi, [rdi]
	mov	al, 0
	call	error
.label_217:
	mov	rbp, rbp
	mov	rax,  qword ptr [word ptr [args]]
	mov	rcx, rax
	nop	
	add	rcx, 8
	mov	rsp, rsp
	mov	qword ptr [word ptr [args]],  rcx
	mov	rdi, qword ptr [rax]
	mov	rsp, rsp
	call	str_value
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_220:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4048c0

	.globl mbs_offset_to_chars
	.type mbs_offset_to_chars, @function
mbs_offset_to_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, 8
	lea	rdi, [rdi]
	mov	edx, ecx
	lea	rdi, [rdi]
	lea	r8, [rbp - 0x50]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rsi
	mov	byte ptr [rbp - 0x50], 0
	mov	rbp, rbp
	add	r8, 4
	nop	
	mov	rdi, r8
	mov	esi, eax
	call	memset
	mov	byte ptr [rbp - 0x44], 0
.label_223:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x50]
	mov	rbp, rbp
	call	mbuiter_multi_next
	xor	eax, eax
	nop	
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x30], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], cl
	je	.label_225
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
.label_225:
	mov	al, byte ptr [rbp - 0x61]
	xor	al, 0xff
	mov	rsp, rsp
	test	al, 1
	jne	.label_227
	mov	rsp, rsp
	jmp	.label_224
.label_227:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	sub	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jb	.label_226
	nop	
	jmp	.label_224
.label_226:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x44], 0
	jmp	.label_223
.label_224:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4049e0
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a10
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	nop	
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a40

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	call	close_stream
	cmp	eax, 0
	je	.label_228
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_230
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_228
.label_230:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_232
	nop	
	call	__errno_location
	nop	
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	nop	
	xor	edi, edi
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_229
.label_232:
	call	__errno_location
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	al, 0
	mov	rsp, rsp
	call	error
.label_229:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_228:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_231
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_231:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b70

	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_237
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	nop	
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	lea	rsi, [rsi]
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x90], xmm4
	mov	rsp, rsp
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_237:
	nop	
	mov	rax, qword ptr [rbp - 0x190]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], r8d
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 4], 2
	jne	.label_236
	lea	rdi, [rdi]
	movabs	rdx, OFFSET FLAT:.str_1
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	mov	rsp, rsp
	je	.label_236
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	lea	rdi, [rdi]
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_238
	jmp	.label_239
.label_239:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	mov	rbp, rbp
	je	.label_235
	mov	rbp, rbp
	jmp	.label_234
.label_238:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jmp	.label_233
.label_235:
	lea	rax, [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	nop	
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	lea	rsi, [rsi]
	mov	dword ptr [rcx], 0x30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, rax
	call	version_etc_va
	lea	rdi, [rdi]
	xor	edi, edi
	mov	rsp, rsp
	call	exit
.label_234:
	mov	rsp, rsp
	jmp	.label_233
.label_233:
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e10
	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:

	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	lea	rsi, [rsi]
	push	rbx
	nop	
	sub	rsp, 0x1d0
	lea	rsi, [rsi]
	test	al, al
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_243
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	nop	
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	lea	rdi, [rdi]
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_243:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	lea	rsi, [rsi]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	mov	rsp, rsp
	movabs	r15, OFFSET FLAT:.str_1
	mov	rbp, rbp
	movabs	r12, OFFSET FLAT:.str_0
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], r10d
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rsi
	nop	
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x49], cl
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	lea	rsi, [rsi]
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	nop	
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, r11
	lea	rsi, [rsi]
	mov	r8, r14
	nop	
	call	getopt_long
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_244
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x68
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_240
	jmp	.label_241
.label_241:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1dc]
	nop	
	sub	eax, 0x76
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_245
	nop	
	jmp	.label_242
.label_240:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jmp	.label_246
.label_245:
	nop	
	lea	rax, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	mov	rbp, rbp
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	rbp, rbp
	mov	dword ptr [rcx], 0x30
	lea	rdi, [rdi]
	mov	rdi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	r8, rax
	nop	
	call	version_etc_va
	nop	
	xor	edi, edi
	call	exit
.label_242:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_246:
	lea	rdi, [rdi]
	jmp	.label_244
.label_244:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	lea	rdi, [rdi]
	add	rsp, 0x1d0
	mov	rbp, rbp
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405100

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	cmp	rax, 1
	jbe	.label_247
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	lea	rsi, [rsi]
	movzx	eax, cl
	lea	rsi, [rsi]
	cmp	eax, 0x30
	jl	.label_247
	nop	
	xor	esi, esi
	nop	
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	lea	rsi, [rsi]
	add	rcx, 4
	nop	
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_253:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x59], cl
	lea	rdi, [rdi]
	je	.label_255
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_255:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_249
	jmp	.label_254
.label_249:
	cmp	qword ptr [rbp - 0x40], 1
	jne	.label_248
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	movzx	ecx, byte ptr [rax]
	mov	edx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	sil, dl
	lea	rsi, [rsi]
	movzx	edx, sil
	lea	rdi, [rdi]
	cmp	ecx, edx
	jne	.label_248
	lea	rsi, [rsi]
	jmp	.label_250
.label_248:
	jmp	.label_252
.label_252:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_253
.label_250:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_251
.label_254:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_251
.label_247:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0x14]
	nop	
	call	strchr
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_251:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405260

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x60
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_260
	xor	esi, esi
	mov	eax, 8
	nop	
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4c], 0
.label_256:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x58]
	lea	rdi, [rdi]
	call	mbuiter_multi_next
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	mov	rsp, rsp
	je	.label_258
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], al
.label_258:
	mov	al, byte ptr [rbp - 0x59]
	nop	
	xor	al, 0xff
	test	al, 1
	jne	.label_261
	jmp	.label_257
.label_261:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x4c], 0
	nop	
	jmp	.label_256
.label_257:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_259
.label_260:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_259:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405370

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	test	byte ptr [rdi + 0xc], 1
	je	.label_274
	lea	rsi, [rsi]
	jmp	.label_264
.label_274:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_267
	jmp	.label_271
.label_267:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	mov	rbp, rbp
	jne	.label_279
	jmp	.label_263
.label_279:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_262
.label_263:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	nop	
	mov	rdi, rax
	nop	
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_265
	lea	rdi, [rdi]
	jmp	.label_269
.label_265:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_4
	nop	
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rsp, rsp
	call	__assert_fail
.label_269:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_271:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	nop	
	add	rax, 0x14
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	rpl_mbrtowc
	nop	
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x18], -1
	lea	rsi, [rsi]
	jne	.label_278
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], 0
	mov	rbp, rbp
	jmp	.label_273
.label_278:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	nop	
	jne	.label_280
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	nop	
	call	strlen
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_266
.label_280:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_272
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x18], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_275
	mov	rbp, rbp
	jmp	.label_276
.label_275:
	movabs	rdi, OFFSET FLAT:.str.2_0
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	mov	rbp, rbp
	call	__assert_fail
.label_276:
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x24], 0
	lea	rsi, [rsi]
	jne	.label_270
	jmp	.label_268
.label_270:
	nop	
	movabs	rdi, OFFSET FLAT:.str.3_0
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	rsp, rsp
	mov	edx, 0xb3
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_268:
	jmp	.label_272
.label_272:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rax + 0x20], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	call	mbsinit
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_277
	nop	
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rax], 0
.label_277:
	jmp	.label_266
.label_266:
	jmp	.label_273
.label_273:
	jmp	.label_262
.label_262:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_264:
	lea	rdi, [rdi]
	add	rsp, 0x20
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405650
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405680
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	lea	rsi, [rsi]
	and	cl, 1
	nop	
	mov	byte ptr [rsi], cl
	test	al, 1
	mov	rbp, rbp
	jne	.label_281
	jmp	.label_282
.label_281:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	rsp, rsp
	mov	qword ptr [rax + 4], rcx
	jmp	.label_283
.label_282:
	lea	rdi, [rdi]
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
.label_283:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rax + 0xc], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, 0x10
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405750

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	jne	.label_286
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_286:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_284
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_288
.label_284:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_288:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	sub	rax, rcx
	nop	
	cmp	rax, 7
	jl	.label_287
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	rsp, rsp
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rcx, -7
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_287
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_1
	lea	rsi, [rsi]
	mov	eax, 3
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_285
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_285:
	jmp	.label_287
.label_287:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4058d0
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_290
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_289
.label_290:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_289
.label_289:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	lea	rsi, [rsi]
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	call	__errno_location
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rax], ecx
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405980
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	je	.label_291
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_292
.label_291:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4059e0
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], esi
	je	.label_293
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_294
.label_293:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405a40

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	al, sil
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x10], edx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x11], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	je	.label_295
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_296
.label_295:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_296
.label_296:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	rbp, rbp
	mov	edx, ecx
	shr	rdx, 5
	mov	rbp, rbp
	shl	rdx, 2
	mov	rsp, rsp
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	lea	rdi, [rdi]
	and	rax, 0x1f
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	nop	
	mov	ecx, esi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	mov	rbp, rbp
	and	esi, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	lea	rsi, [rsi]
	xor	esi, dword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x24]
	nop	
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405b40
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	mov	rbp, rbp
	push	rbp
	nop	
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 8], 0
	jne	.label_297
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_297:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 4]
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dword ptr [rax + 4], ecx
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x405ba0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	nop	
	jne	.label_298
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_298:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_300
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_299
.label_300:
	call	abort
.label_299:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405c40
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_301
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_302
.label_301:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_302
.label_302:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], r8d
	mov	rbp, rbp
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x405d40

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	lea	rsi, [rsi]
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x18]
	nop	
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	mov	rbp, rbp
	call	__ctype_get_mb_cur_max
	mov	rbp, rbp
	cmp	rax, 1
	nop	
	sete	bl
	and	bl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	mov	rsp, rsp
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7b], bl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x7c], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7d], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7e], 1
.label_362:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_422
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_427]]
	jmp	rcx
.label_3240:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_3239:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_434
	jmp	.label_437
.label_437:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_440
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_440:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_434
.label_434:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_322
.label_3241:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_322
.label_3242:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_460
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	rbp, rbp
	mov	esi, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	call	gettext_quote
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_460:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_471
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_489:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_477
	jmp	.label_478
.label_478:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_480:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_334
.label_334:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_489
.label_477:
	mov	rbp, rbp
	jmp	.label_471
.label_471:
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x70]
	nop	
	call	strlen
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	jmp	.label_322
.label_3237:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_3236:
	mov	byte ptr [rbp - 0x7b], 1
.label_3238:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_499
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_499:
	jmp	.label_485
.label_485:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_316
	jmp	.label_303
.label_303:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_304
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_304:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_316
.label_316:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_322
.label_3235:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_322
.label_422:
	call	abort
.label_322:
	mov	qword ptr [rbp - 0x58], 0
.label_392:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_335
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	nop	
	movzx	edx, sil
	nop	
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_338
.label_335:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_338:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_358
	mov	rbp, rbp
	jmp	.label_368
.label_358:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_371
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_371
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_371
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_384
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_384
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_399
.label_384:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_399:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_371
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_371
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_412
	jmp	.label_342
.label_412:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_371:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rdi, [rdi]
	mov	eax, esi
	nop	
	mov	rcx, rax
	lea	rsi, [rsi]
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_417
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_429]]
	nop	
	jmp	rcx
.label_3216:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_432
	mov	rsp, rsp
	jmp	.label_436
.label_436:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_428
	jmp	.label_342
.label_428:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_443
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_443
	nop	
	jmp	.label_487
.label_487:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_450
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_450:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_458
.label_458:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_464
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_464:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_470
.label_470:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_475
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_475:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_443:
	lea	rsi, [rsi]
	jmp	.label_398
.label_398:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_483
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_483:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_486
.label_486:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_323
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_323
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_323
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_323
	nop	
	jmp	.label_500
.label_500:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_501
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_501:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_305
.label_305:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_312
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_312:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_323
.label_323:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_423
.label_432:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_329
	mov	rbp, rbp
	jmp	.label_336
.label_329:
	jmp	.label_423
.label_423:
	jmp	.label_307
.label_3227:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_339
	mov	rbp, rbp
	jmp	.label_345
.label_345:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_350
	jmp	.label_359
.label_339:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_361
	jmp	.label_342
.label_361:
	jmp	.label_366
.label_350:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_369
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_369
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_369
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + rcx + 2]
	nop	
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	lea	rdi, [rdi]
	je	.label_386
	nop	
	jmp	.label_393
.label_393:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_386
	jmp	.label_401
.label_401:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_386
	jmp	.label_404
.label_404:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_386
	jmp	.label_407
.label_407:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_408
	jmp	.label_386
.label_386:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_414
	jmp	.label_342
.label_414:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_420
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_420:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_433
.label_433:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_439
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_439:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_446
.label_446:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_448
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_456
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_356:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_467
.label_408:
	jmp	.label_467
.label_467:
	jmp	.label_369
.label_369:
	jmp	.label_366
.label_359:
	jmp	.label_366
.label_366:
	jmp	.label_307
.label_3217:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_476
.label_3218:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_476
.label_3222:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_476
.label_3220:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_451
.label_3223:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_451
.label_3219:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_451
.label_3221:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_476
.label_3228:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_484
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_488
	nop	
	jmp	.label_342
.label_488:
	lea	rsi, [rsi]
	jmp	.label_380
.label_484:
	test	byte ptr [rbp - 0x79], 1
	je	.label_494
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_494
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_494
	jmp	.label_380
.label_494:
	jmp	.label_451
.label_451:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_469
	test	byte ptr [rbp - 0x7b], 1
	je	.label_469
	jmp	.label_342
.label_469:
	mov	rsp, rsp
	jmp	.label_476
.label_476:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_503
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_431
.label_503:
	jmp	.label_307
.label_3229:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_310
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_313
	jmp	.label_320
.label_310:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_313
.label_320:
	nop	
	jmp	.label_307
.label_313:
	jmp	.label_326
.label_326:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_327
	lea	rsi, [rsi]
	jmp	.label_307
.label_327:
	nop	
	jmp	.label_333
.label_333:
	mov	byte ptr [rbp - 0x83], 1
.label_3224:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_337
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_337
	jmp	.label_342
.label_337:
	lea	rsi, [rsi]
	jmp	.label_307
.label_3226:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_344
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_357
	jmp	.label_342
.label_357:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_363
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_363
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_363:
	jmp	.label_373
.label_373:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_375
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_383
.label_383:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_388
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_388:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_396
.label_396:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_400
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_400:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_344:
	lea	rsi, [rsi]
	jmp	.label_307
.label_3225:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_307
.label_417:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_409
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x91], sil
	lea	rsi, [rsi]
	jmp	.label_347
.label_409:
	xor	esi, esi
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	rsp, rsp
	jne	.label_435
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_435:
	jmp	.label_447
.label_447:
	lea	rdi, [rbp - 0xa4]
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	nop	
	mov	rsi, rax
	mov	rsp, rsp
	call	rpl_mbrtowc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0xb0], 0
	mov	rbp, rbp
	jne	.label_461
	jmp	.label_397
.label_461:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_468
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_397
.label_468:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_472
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_491:
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	mov	rsp, rsp
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_463:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_457
	jmp	.label_490
.label_457:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_491
.label_490:
	jmp	.label_397
.label_472:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_354
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_354
	mov	qword ptr [rbp - 0xb8], 1
.label_343:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_498
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rsp, rsp
	add	esi, -0x5b
	sub	esi, 2
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x130], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_317
	jmp	.label_314
.label_314:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_317
	jmp	.label_324
.label_324:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_317
	jmp	.label_331
.label_331:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_332
	mov	rsp, rsp
	jmp	.label_317
.label_317:
	mov	rsp, rsp
	jmp	.label_342
.label_332:
	jmp	.label_341
.label_341:
	mov	rsp, rsp
	jmp	.label_377
.label_377:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_343
.label_498:
	mov	rbp, rbp
	jmp	.label_354
.label_354:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_360
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_360:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_364
.label_364:
	lea	rsi, [rsi]
	jmp	.label_374
.label_374:
	jmp	.label_376
.label_376:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0xa0]
	nop	
	call	mbsinit
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	xor	cl, 0xff
	lea	rdi, [rdi]
	test	cl, 1
	jne	.label_447
.label_397:
	jmp	.label_347
.label_347:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_389
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_365
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_365
.label_389:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_367:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_348
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_348
	jmp	.label_406
.label_406:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_454
	jmp	.label_342
.label_454:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_411
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_411
	lea	rdi, [rdi]
	jmp	.label_418
.label_418:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_421
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_421:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_426
.label_426:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_430
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_430:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_441
.label_441:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_353
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_411:
	jmp	.label_452
.label_452:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_455
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_455:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_497
.label_497:
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_466
	nop	
	movzx	eax, byte ptr [rbp - 0x7f]
	nop	
	sar	eax, 6
	mov	rsp, rsp
	add	eax, 0x30
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
.label_466:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_481
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	rbp, rbp
	sar	eax, 3
	lea	rsi, [rsi]
	and	eax, 7
	add	eax, 0x30
	lea	rsi, [rsi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_481:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	and	eax, 7
	lea	rdi, [rdi]
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_424
.label_348:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_493
	lea	rdi, [rdi]
	jmp	.label_413
.label_413:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_495
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_493:
	nop	
	jmp	.label_424
.label_424:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_502
	jmp	.label_306
.label_502:
	lea	rsi, [rsi]
	jmp	.label_330
.label_330:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_311
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_311
	lea	rsi, [rsi]
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_321
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_321:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_328
.label_328:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_459
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_459:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_311:
	nop	
	jmp	.label_349
.label_349:
	mov	rsp, rsp
	jmp	.label_351
.label_351:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_355
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_355:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	nop	
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_367
.label_306:
	mov	rsp, rsp
	jmp	.label_380
.label_365:
	lea	rsi, [rsi]
	jmp	.label_307
.label_307:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_474
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_387
.label_474:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_390
.label_387:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_390
	movzx	eax, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	nop	
	movzx	esi, byte ptr [rbp - 0x7f]
	lea	rsi, [rsi]
	mov	ecx, esi
	and	rcx, 0x1f
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	lea	rdi, [rdi]
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_319
.label_390:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_319
	mov	rsp, rsp
	jmp	.label_380
.label_319:
	nop	
	jmp	.label_431
.label_431:
	jmp	.label_442
.label_442:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_405
	jmp	.label_342
.label_405:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_410
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_410
	lea	rdi, [rdi]
	jmp	.label_415
.label_415:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_419
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_419:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_391
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_391:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_438
.label_438:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_444
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_444:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_410:
	jmp	.label_453
.label_453:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_308
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_308:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_462
.label_462:
	nop	
	jmp	.label_380
.label_380:
	jmp	.label_402
.label_402:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_416
	test	byte ptr [rbp - 0x82], 1
	jne	.label_416
	lea	rdi, [rdi]
	jmp	.label_473
.label_473:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_445
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_445:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_482
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_482:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_416:
	jmp	.label_381
.label_381:
	nop	
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_394
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_394:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_496
	mov	byte ptr [rbp - 0x7e], 0
.label_496:
	mov	rbp, rbp
	jmp	.label_336
.label_336:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_392
.label_368:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_309
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_309
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_309
	nop	
	jmp	.label_342
.label_309:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_315
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_315
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_315
	test	byte ptr [rbp - 0x7e], 1
	je	.label_325
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r11
	mov	rbp, rbp
	call	quotearg_buffer_restyled
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_346
.label_325:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_352
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_352
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_362
.label_352:
	jmp	.label_370
.label_370:
	mov	rbp, rbp
	jmp	.label_315
.label_315:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_372
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_372
	mov	rbp, rbp
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_379
	lea	rdi, [rdi]
	jmp	.label_382
.label_382:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_385
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_385:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_378
.label_379:
	jmp	.label_372
.label_372:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_403
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_403:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_346
.label_342:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_340
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_340
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_340:
	mov	rbp, rbp
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	lea	rsi, [rsi]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	lea	rdi, [rdi]
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
.label_346:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x407660
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4076d0

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	je	.label_504
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_505
.label_504:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_505
.label_505:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	call	__errno_location
	mov	rbp, rbp
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, 1
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edi, dword ptr [rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	cmovne	ecx, esi
	or	edi, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	lea	rsi, [rsi]
	mov	r9d, dword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r10, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	nop	
	mov	rbx, qword ptr [rbx + 0x30]
	lea	rsi, [rsi]
	mov	rdi, rdx
	lea	rsi, [rsi]
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], r11
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	nop	
	call	__errno_location
	nop	
	mov	r8d, dword ptr [rbp - 0x5c]
	nop	
	mov	dword ptr [rax], r8d
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_506
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_506:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4078a0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_511:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_510
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	jmp	.label_511
.label_510:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_509
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_507]],  rax
.label_509:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_508
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_508:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4079b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	rdx, -1
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407a00

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	call	__errno_location
	mov	edi, dword ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_517
	call	abort
.label_517:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_512
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x31], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	mov	rsp, rsp
	jge	.label_513
	call	xalloc_die
.label_513:
	test	byte ptr [rbp - 0x31], 1
	je	.label_514
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_518
.label_514:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	lea	rdi, [rdi]
	je	.label_516
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_507]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_516:
	xor	esi, esi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	mov	rsp, rsp
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	nop	
	add	edx, 1
	mov	rbp, rbp
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_512:
	movsxd	rax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	movsxd	rax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, dword ptr [rax + 4]
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rax]
	mov	rbp, rbp
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	nop	
	mov	r10, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r10, qword ptr [r10 + 0x28]
	lea	rdi, [rdi]
	mov	r11, qword ptr [rbp - 0x20]
	nop	
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	rsp, rsp
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	lea	rdi, [rdi]
	call	quotearg_buffer_restyled
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	ja	.label_515
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	je	.label_519
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_519:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	movsxd	rdi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r11, qword ptr [r11 + 0x30]
	nop	
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	rsp, rsp
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_515:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x24]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rbp, rbp
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d30

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	nop	
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407d70
	.globl quotearg
	.type quotearg, @function
quotearg:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	eax, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	lea	rdi, [rdi]
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407da0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	xor	eax, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quotearg_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407de0

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407e40

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	nop	
	mov	rdi, r8
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	nop	
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_520
	call	abort
.label_520:
	lea	rsi, [rsi]
	mov	eax, 0x38
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	lea	rsi, [rsi]
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ee0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	lea	rax, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	nop	
	mov	dword ptr [rbp - 8], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rcx
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	nop	
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	mov	rsp, rsp
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f50
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rbp, rbp
	call	quotearg_n_style
	nop	
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f90
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_style_mem
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407fd0

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x11], al
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	mov	rdi, rsi
	mov	rsi, r8
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], edx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	nop	
	call	set_char_quoting
	mov	rsp, rsp
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	nop	
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408080

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	rbp, rbp
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	nop	
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080c0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	nop	
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	lea	rsi, [rsi]
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4080f0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	quotearg_char_mem
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408130
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	quoting_options_from_style
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x48]
	mov	rsp, rsp
	mov	esi, 0x3a
	mov	rbp, rbp
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rdi
	mov	rsp, rsp
	mov	rdi, r9
	nop	
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	nop	
	mov	rdx, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	call	set_char_quoting
	mov	rdx, -1
	mov	rsp, rsp
	lea	rcx, [rbp - 0x48]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	lea	rsi, [rsi]
	add	rsp, 0xa0
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408220

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408270

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	lea	rsi, [rsi]
	movabs	r9, OFFSET FLAT:default_quoting_options
	nop	
	mov	r10d, 0x38
	mov	rbp, rbp
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rbp, rbp
	mov	rsi, r9
	mov	rbp, rbp
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408310
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quotearg_n_custom
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408360
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083c0

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	edi, dword ptr [rbp - 4]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x408400
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	mov	rsp, rsp
	call	quote_n_mem
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408440

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	rdx, -1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408480
	.globl quote
	.type quote, @function
quote:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	lea	rdi, [rdi]
	call	quote_n
	nop	
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084c0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_524
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_522
.label_524:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_523
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_522
.label_523:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_521
	nop	
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_522
.label_521:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_522:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408600

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	xor	esi, esi
	lea	rdi, [rdi]
	call	memchr
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_525
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	sub	rax, rcx
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_526
.label_525:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_526:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408680

	.globl strintcmp
	.type strintcmp, @function
strintcmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0xffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	edx, eax
	mov	ecx, eax
	call	numcompare
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4086b0

	.globl numcompare
	.type numcompare, @function
numcompare:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	dword ptr [rbp - 0x20], ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x21], al
	mov	rsi, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rsi]
	mov	byte ptr [rbp - 0x22], al
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x2d
	jne	.label_592
	jmp	.label_536
.label_536:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x39], al
	je	.label_597
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_597:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_536
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_599
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_549
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_550
	jmp	.label_549
.label_549:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_571
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_534
.label_571:
	jmp	.label_567
.label_567:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_569
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_569:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_577
	jmp	.label_582
.label_577:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_567
.label_582:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_533
	jmp	.label_595
.label_595:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_595
	jmp	.label_533
.label_533:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_599:
	jmp	.label_543
.label_543:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3b], al
	je	.label_546
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_546:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_543
	jmp	.label_562
.label_562:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_563
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_563:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_573
	jmp	.label_576
.label_573:
	jmp	.label_579
.label_579:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_579
	jmp	.label_572
.label_572:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_572
	jmp	.label_562
.label_576:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_528
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_554
.label_528:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_537
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_537
.label_554:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_537:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_564:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_558
	jmp	.label_566
.label_566:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_566
	jmp	.label_568
.label_568:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_564
.label_558:
	mov	qword ptr [rbp - 0x38], 0
.label_527:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_584
	jmp	.label_589
.label_589:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_589
	jmp	.label_561
.label_561:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_527
.label_584:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_556
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_556:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_570
	mov	dword ptr [rbp - 4], 0
	jmp	.label_534
.label_570:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_592:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_547
	jmp	.label_555
.label_555:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3d], al
	je	.label_559
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_559:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_555
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_578
	jmp	.label_583
.label_583:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_583
	jmp	.label_578
.label_578:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_596
	mov	dword ptr [rbp - 4], 1
	jmp	.label_534
.label_596:
	jmp	.label_529
.label_529:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_531
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_531:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_541
	jmp	.label_544
.label_541:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_529
.label_544:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_551
	jmp	.label_553
.label_553:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_553
	jmp	.label_551
.label_551:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_547:
	jmp	.label_538
.label_538:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_530
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_530:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_586
	jmp	.label_590
.label_586:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_538
.label_590:
	jmp	.label_545
.label_545:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_600
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_600:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_535
	jmp	.label_539
.label_535:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_545
.label_539:
	jmp	.label_548
.label_548:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_591
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_591:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_557
	jmp	.label_581
.label_557:
	jmp	.label_565
.label_565:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_565
	jmp	.label_575
.label_575:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_575
	jmp	.label_548
.label_581:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_588
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_593
.label_588:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_598
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_598
.label_593:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_598:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_552:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_580
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_542
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_552
.label_580:
	mov	qword ptr [rbp - 0x38], 0
.label_587:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_560
	jmp	.label_574
.label_574:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_574
	jmp	.label_585
.label_585:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_587
.label_560:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_594
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_534
.label_594:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_532
	mov	dword ptr [rbp - 4], 0
	jmp	.label_534
.label_532:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_534:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408e40

	.globl fraccompare
	.type fraccompare, @function
fraccompare:
	push	rbp
	mov	rbp, rsp
	mov	al, dl
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x19], al
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	edx, byte ptr [rsi]
	movsx	ecx, byte ptr [rbp - 0x19]
	cmp	edx, ecx
	jne	.label_601
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_601
	jmp	.label_604
.label_604:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax + 1]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	esi, byte ptr [rax + 1]
	cmp	edx, esi
	jne	.label_618
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_615
	mov	dword ptr [rbp - 4], 0
	jmp	.label_608
.label_615:
	jmp	.label_604
.label_618:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_607
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_607
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_608
.label_607:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_606
	jmp	.label_613
.label_606:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_611
	jmp	.label_605
.label_611:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_608
.label_601:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_603
	jmp	.label_613
.label_613:
	jmp	.label_602
.label_602:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_617
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_602
.label_617:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_608
.label_603:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_616
	jmp	.label_605
.label_605:
	jmp	.label_609
.label_609:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_610
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_609
.label_610:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rcx]
	sub	edx, 0x30
	cmp	edx, 9
	setbe	sil
	and	sil, 1
	movzx	edx, sil
	sub	eax, edx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_608
.label_616:
	jmp	.label_612
.label_612:
	jmp	.label_614
.label_614:
	mov	dword ptr [rbp - 4], 0
.label_608:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409040

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	nop	
	push	rbp
	mov	rbp, rsp
	push	r14
	mov	rbp, rbp
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_619
	movabs	rsi, OFFSET FLAT:.str_6
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	jmp	.label_623
.label_619:
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_623:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	lea	rsi, [rsi]
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	rbp, rbp
	mov	ecx, 0x7e3
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	al, r8b
	nop	
	call	fprintf
	nop	
	mov	ecx, OFFSET FLAT:.str.3_1
	mov	rbp, rbp
	mov	edi, ecx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	call	gettext
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rdx
	sub	rsi, 9
	nop	
	mov	dword ptr [rbp - 0x58], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	mov	rbp, rbp
	ja	.label_622
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_621]]
	jmp	rcx
.label_3158:
	jmp	.label_620
.label_3159:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_620
.label_3160:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x84], eax
	lea	rsi, [rsi]
	jmp	.label_620
.label_3161:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rdi]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	nop	
	mov	dword ptr [rbp - 0x94], eax
	lea	rsi, [rsi]
	jmp	.label_620
.label_3162:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	nop	
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_620
.label_3163:
	nop	
	movabs	rdi, OFFSET FLAT:.str.8_0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	al, 0
	call	fprintf
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xbc], eax
	nop	
	jmp	.label_620
.label_3164:
	nop	
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_620
.label_3165:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe8], rax
	lea	rsi, [rsi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rsp, rsp
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xf0]
	nop	
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	nop	
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	jmp	.label_620
.label_3166:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r10, qword ptr [r10 + 0x30]
	mov	rsp, rsp
	mov	r11, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rsp, rsp
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	nop	
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	al, 0
	call	fprintf
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_620
.label_3167:
	movabs	rdi, OFFSET FLAT:.str.12_1
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	mov	rbp, rbp
	call	gettext
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	nop	
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rdi + 8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	nop	
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rbp, rbp
	mov	r14, qword ptr [rbp - 0x128]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x10], r10
	mov	rbp, rbp
	mov	qword ptr [rsp + 0x18], r11
	lea	rsi, [rsi]
	mov	qword ptr [rsp + 0x20], rbx
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_620
.label_622:
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x148], rax
	lea	rdi, [rdi]
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdi + 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	nop	
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbp, rbp
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	rsp, rsp
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	nop	
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	rsp, rsp
	mov	al, 0
	lea	rdi, [rdi]
	call	fprintf
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x15c], eax
.label_620:
	lea	rdi, [rdi]
	add	rsp, 0x180
	pop	rbx
	nop	
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4097b0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	nop
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_624:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_625
	mov	rbp, rbp
	jmp	.label_626
.label_626:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_624
.label_625:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	nop	
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409860

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], 0
.label_633:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_632
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax]
	nop	
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_628
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_629
.label_628:
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	nop	
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_629:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	mov	rbp, rbp
	cmp	rax, 0
	setne	dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], dl
.label_632:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x81]
	mov	rsp, rsp
	test	al, 1
	mov	rsp, rsp
	jne	.label_631
	mov	rsp, rsp
	jmp	.label_627
.label_631:
	jmp	.label_630
.label_630:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_633
.label_627:
	nop	
	lea	r8, [rbp - 0x80]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	nop	
	call	version_etc_arn
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4099c0
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x1a0
	mov	rbp, rbp
	test	al, al
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x100], xmm7
	nop	
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm4
	nop	
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	nop	
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	lea	rsi, [rsi]
	je	.label_634
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	lea	rdi, [rdi]
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	lea	rdi, [rdi]
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	mov	rsp, rsp
	movaps	xmmword ptr [rbp - 0x80], xmm4
	lea	rdi, [rdi]
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x70], xmm5
	mov	rbp, rbp
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	mov	rsp, rsp
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_634:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	nop	
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409b70
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.14_1
	lea	rsi, [rsi]
	call	gettext
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c20
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_635
	mov	rbp, rbp
	call	xalloc_die
.label_635:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409c80

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jne	.label_636
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_636
	lea	rdi, [rdi]
	call	xalloc_die
.label_636:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409ce0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	nop	
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_637
	mov	rsp, rsp
	call	xalloc_die
.label_637:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xrealloc
	lea	rdi, [rdi]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409d60

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	jne	.label_638
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_638
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_640
.label_638:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_639
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_639
	lea	rsi, [rsi]
	call	xalloc_die
.label_639:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_640:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409e10

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jne	.label_641
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_643
	mov	eax, 0x80
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	setne	sil
	mov	rsp, rsp
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_643:
	mov	rbp, rbp
	movabs	rax, 0x7fffffffffffffff
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	edx, ecx
	nop	
	div	qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_645
	call	xalloc_die
.label_645:
	lea	rsi, [rsi]
	jmp	.label_644
.label_641:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_642
	call	xalloc_die
.label_642:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_644:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	imul	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f40

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409f70
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409fb0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a000
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jb	.label_646
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_647
.label_646:
	lea	rsi, [rsi]
	call	xalloc_die
.label_647:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a070

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a0c0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	strlen
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	xmemdup
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a120

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	nop	
	mov	dword ptr [rbp - 4], eax
	call	gettext
	mov	rsp, rsp
	xor	esi, esi
	nop	
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	mov	rbp, rbp
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x40a180

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jne	.label_648
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_648:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	call	mbrtowc
	mov	rcx, -2
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_649
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_649
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_649
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	mov	rbp, rbp
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], edx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 1
	jmp	.label_650
.label_649:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_650:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a270

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx,  qword ptr [word ptr [rpl_re_syntax_options]]
	and	rdx, 0x2000000
	mov	rbp, rbp
	cmp	rdx, 0
	setne	al
	xor	al, 0xff
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	lea	rsi, [rsi]
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	al, byte ptr [rdx + 0x38]
	mov	rbp, rbp
	and	al, 0x7f
	lea	rdi, [rdi]
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rsi, [rsi]
	call	re_compile_internal
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	nop	
	jne	.label_652
	nop	
	mov	qword ptr [rbp - 8], 0
	jmp	.label_651
.label_652:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	mov	rsp, rsp
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_651:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a360

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	dword ptr [rbp - 0x2c], 0
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	nop	
	mov	byte ptr [rcx + 0x38], al
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x18], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xbf
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x38], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xdf
	mov	byte ptr [rcx + 0x38], al
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x30], 0
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xfe
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x38], al
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf9
	mov	rsp, rsp
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 8], 0xe8
	setb	al
	and	al, 1
	movzx	r8d, al
	mov	rbp, rbp
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_662
	mov	eax, 0xe8
	mov	rsp, rsp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	lea	rdi, [rdi]
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_654
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_658
.label_654:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0xe8
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_662:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	init_dfa
	mov	rsp, rsp
	xor	ecx, ecx
	nop	
	mov	dl, cl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0xd1], dl
	mov	rbp, rbp
	jne	.label_655
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd1], cl
	jmp	.label_655
.label_655:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd1]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_660
	mov	dword ptr [rbp - 0x2c], 0xc
.label_660:
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_663
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	free_dfa_content
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], 0
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_658
.label_663:
	lea	rax, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x38]
	and	r8b, 1
	nop	
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xe0], rax
	call	re_string_construct
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	nop	
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	lea	rdi, [rdi]
	je	.label_659
	nop	
	jmp	.label_656
.label_656:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	mov	rsp, rsp
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 8], 0
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_658
.label_659:
	lea	rdi, [rbp - 0xd0]
	lea	rcx, [rbp - 0x2c]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	parse
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	lea	rdi, [rdi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_657
	jmp	.label_656
.label_657:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	analyze
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	mov	rsp, rsp
	movsxd	rdi, eax
	cmp	rdi, 0
	mov	rbp, rbp
	je	.label_661
	lea	rdi, [rdi]
	jmp	.label_656
.label_661:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	nop	
	je	.label_653
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_653
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_653
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	call	optimize_utf8
.label_653:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x38]
	call	create_initial_state
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	lea	rdi, [rdi]
	call	re_string_destruct
	cmp	dword ptr [rbp - 0x2c], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_664
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], 0
.label_664:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_658:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0xe0
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a800
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a830

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_667
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_667:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	je	.label_665
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_665:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x60]
	nop	
	je	.label_666
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x60]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	call	re_compile_fastmap_iter
.label_666:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 0xf7
	nop	
	or	dl, 8
	mov	byte ptr [rcx + 0x38], dl
	add	rsp, 0x20
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40a960

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x270
	nop	
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rdi
	nop	
	mov	qword ptr [rbp - 0x70], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	dword ptr [rdx + 0xb4], 1
	nop	
	mov	byte ptr [rbp - 0x209], cl
	jne	.label_691
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rsi, [rsi]
	and	rax, 0x400000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	setne	cl
	mov	byte ptr [rbp - 0x209], cl
.label_691:
	mov	al, byte ptr [rbp - 0x209]
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x89], al
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], 0
.label_707:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_704
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x9c], edx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_670
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rbp - 0x89]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x58], rax
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x59], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x60], edi
	nop	
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x59], 1
	je	.label_705
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0x60]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], 1
.label_705:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_698
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_698
	mov	rbp, rbp
	lea	rax, [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
.label_674:
	nop	
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, 1
	mov	qword ptr [rbp - 0x98], rdx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x20a], cl
	mov	rsp, rsp
	jae	.label_689
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	nop	
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x20a], cl
	nop	
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x15
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x20a], sil
.label_689:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x20a]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_668
	jmp	.label_672
.label_668:
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_674
.label_672:
	lea	rdi, [rbp - 0xbc]
	lea	rax, [rbp - 0xc8]
	mov	rbp, rbp
	lea	rcx, [rbp - 0xb0]
	lea	rdi, [rdi]
	xor	esi, esi
	lea	rsi, [rsi]
	mov	edx, 8
	mov	rbp, rbp
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x218], rdi
	lea	rdi, [rdi]
	mov	rdi, r8
	nop	
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0x228], rax
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x220]
	nop	
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x218]
	nop	
	mov	rsi, rcx
	mov	rdx, rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x228]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0xb0]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	sub	rdx, rcx
	mov	rbp, rbp
	cmp	rax, rdx
	jne	.label_685
	mov	rsp, rsp
	lea	rdi, [rbp - 0xb0]
	nop	
	mov	eax, dword ptr [rbp - 0xbc]
	mov	qword ptr [rbp - 0x230], rdi
	mov	edi, eax
	lea	rsi, [rsi]
	call	towlower
	lea	rdx, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x230]
	lea	rsi, [rsi]
	mov	esi, eax
	call	wcrtomb
	nop	
	cmp	rax, -1
	je	.label_685
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x50], ecx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	byte ptr [rdx + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_695
	mov	edi, dword ptr [rbp - 0x50]
	mov	rbp, rbp
	call	tolower
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rcx], 1
.label_695:
	mov	rsp, rsp
	jmp	.label_685
.label_685:
	jmp	.label_698
.label_698:
	lea	rsi, [rsi]
	jmp	.label_699
.label_670:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 3
	lea	rdi, [rdi]
	jne	.label_702
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xcc], 0
	mov	dword ptr [rbp - 0xd0], 0
.label_678:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0xcc], 4
	jge	.label_676
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xcc]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xd4], 0
.label_710:
	cmp	dword ptr [rbp - 0xd4], 0x40
	nop	
	jge	.label_679
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rsi, [rsi]
	mov	esi, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x238]
	mov	rbp, rbp
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_683
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	cl, byte ptr [rbp - 0x89]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x39], cl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x40], edx
	nop	
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rax], 1
	nop	
	test	byte ptr [rbp - 0x39], 1
	lea	rsi, [rsi]
	je	.label_687
	nop	
	mov	edi, dword ptr [rbp - 0x40]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx + rcx], 1
.label_687:
	jmp	.label_683
.label_683:
	jmp	.label_709
.label_709:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0xd4], eax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd0], eax
	mov	rsp, rsp
	jmp	.label_710
.label_679:
	jmp	.label_677
.label_677:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_678
.label_676:
	jmp	.label_684
.label_702:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 6
	mov	rbp, rbp
	jne	.label_686
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0xe8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_688
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x48], 0
	mov	rsp, rsp
	jne	.label_697
	mov	rax, qword ptr [rbp - 0xe8]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_697
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_688
.label_697:
	mov	byte ptr [rbp - 0xf1], 0
.label_708:
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0xf1]
	mov	eax, 1
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rsp, rsp
	lea	rcx, [rbp - 0x100]
	nop	
	xor	eax, eax
	lea	rsi, [rsi]
	mov	r8d, 8
	mov	rsp, rsp
	mov	r9d, r8d
	nop	
	mov	r10, rcx
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x248], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x250], rdx
	mov	rdx, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x258], rcx
	lea	rdi, [rdi]
	call	memset
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x250]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x258]
	lea	rdi, [rdi]
	call	rpl_mbrtowc
	mov	rsp, rsp
	cmp	rax, -2
	jne	.label_692
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xf1]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x30], ecx
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	byte ptr [rdx + rax], 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_694
	mov	edi, dword ptr [rbp - 0x30]
	call	tolower
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], 1
.label_694:
	lea	rdi, [rdi]
	jmp	.label_692
.label_692:
	mov	rsp, rsp
	jmp	.label_711
.label_711:
	mov	al, byte ptr [rbp - 0xf1]
	add	al, 1
	mov	byte ptr [rbp - 0xf1], al
	lea	rdi, [rdi]
	movzx	ecx, al
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_708
	jmp	.label_680
.label_688:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], 0
.label_673:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rcx + 0x28]
	mov	rsp, rsp
	jge	.label_693
	mov	rsp, rsp
	lea	rax, [rbp - 0x208]
	lea	rdi, [rbp - 0x200]
	nop	
	xor	esi, esi
	mov	rsp, rsp
	mov	ecx, 8
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	r8, rax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x260], rdi
	mov	rbp, rbp
	mov	rdi, r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x268], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xe8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x268]
	mov	rsp, rsp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	je	.label_671
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rbp - 0x89]
	movzx	edx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], edx
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rsi + rax], 1
	mov	rsp, rsp
	test	byte ptr [rbp - 0x19], 1
	mov	rbp, rbp
	je	.label_703
	mov	edi, dword ptr [rbp - 0x20]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], 1
.label_703:
	mov	rsp, rsp
	jmp	.label_671
.label_671:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_675
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_675
	lea	rdi, [rbp - 0x200]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x270], rdi
	mov	rsp, rsp
	mov	edi, edx
	lea	rdi, [rdi]
	call	towlower
	lea	rdx, [rbp - 0x208]
	mov	rdi, qword ptr [rbp - 0x270]
	lea	rsi, [rsi]
	mov	esi, eax
	mov	rbp, rbp
	call	wcrtomb
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_701
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 9], 0
	nop	
	mov	dword ptr [rbp - 0x10], ecx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], 1
	mov	rbp, rbp
	test	byte ptr [rbp - 9], 1
	lea	rsi, [rsi]
	je	.label_700
	mov	edi, dword ptr [rbp - 0x10]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	byte ptr [rdx + rcx], 1
.label_700:
	lea	rsi, [rsi]
	jmp	.label_701
.label_701:
	nop	
	jmp	.label_675
.label_675:
	mov	rbp, rbp
	jmp	.label_669
.label_669:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	mov	rbp, rbp
	jmp	.label_673
.label_693:
	jmp	.label_680
.label_680:
	jmp	.label_681
.label_686:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x9c], 5
	mov	rbp, rbp
	je	.label_682
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 7
	je	.label_682
	cmp	dword ptr [rbp - 0x9c], 2
	mov	rsp, rsp
	jne	.label_690
.label_682:
	mov	rbp, rbp
	mov	esi, 1
	lea	rsi, [rsi]
	mov	eax, 0x100
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x78]
	call	memset
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_696
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	lea	rdi, [rdi]
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_696:
	mov	rbp, rbp
	jmp	.label_704
.label_690:
	jmp	.label_681
.label_681:
	jmp	.label_684
.label_684:
	mov	rsp, rsp
	jmp	.label_699
.label_699:
	jmp	.label_706
.label_706:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_707
.label_704:
	add	rsp, 0x270
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b400
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x100
	mov	ecx, eax
	mov	eax, 0x10102c6
	nop	
	mov	r8d, eax
	mov	eax, 0x3b2fc
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	cmovne	r8, r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_716
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_714
.label_716:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	eax, 0x400000
	lea	rdi, [rdi]
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 2
	lea	rsi, [rsi]
	cmp	eax, 0
	lea	rdi, [rdi]
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_717
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	and	rax, 0xffffffffffffffbf
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_718
.label_717:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 0x7f
	mov	rsp, rsp
	mov	byte ptr [rax + 0x38], cl
.label_718:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 8
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, al
	mov	sil, byte ptr [rdx + 0x38]
	lea	rdi, [rdi]
	and	cl, 1
	lea	rdi, [rdi]
	shl	cl, 4
	nop	
	and	sil, 0xef
	lea	rsi, [rsi]
	or	sil, cl
	mov	byte ptr [rdx + 0x38], sil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	call	strlen
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0x10
	jne	.label_712
	mov	dword ptr [rbp - 0x20], 8
.label_712:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	nop	
	je	.label_715
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_713
.label_715:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax + 0x20], 0
.label_713:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_714:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b670
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x34], 0x11
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 0x41], al
	jl	.label_719
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	setge	cl
	mov	byte ptr [rbp - 0x41], cl
.label_719:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_721
	lea	rdi, [rdi]
	call	abort
.label_721:
	mov	rsp, rsp
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rsp, rsp
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	strlen
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_722
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	seta	cl
	nop	
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_720
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_720:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	memcpy
.label_722:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b7c0

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	setne	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	lea	rsi, [rsi]
	cmp	rdi, 0
	je	.label_723
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dfa_content
.label_723:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x28], 0
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b890

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rdi], 0
	je	.label_728
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
.label_738:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_737
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rbp, rbp
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_738
.label_737:
	nop	
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_732:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_734
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_727
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_727:
	mov	rax, qword ptr [rbp - 8]
	nop	
	cmp	qword ptr [rax + 0x38], 0
	je	.label_724
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_724:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x28], 0
	je	.label_733
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
.label_733:
	mov	rbp, rbp
	jmp	.label_731
.label_731:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_732
.label_734:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x40], 0
	je	.label_730
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
.label_729:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_736
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], 0
.label_735:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_725
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	free_state
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_735
.label_725:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	jmp	.label_729
.label_736:
	lea	rsi, [rsi]
	jmp	.label_730
.label_730:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_726
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x78]
	nop	
	mov	rdi, rax
	call	free
.label_726:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bbb0
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	and	r8d, 0xfffffff8
	nop	
	cmp	r8d, 0
	je	.label_741
	nop	
	mov	dword ptr [rbp - 4], 2
	mov	rbp, rbp
	jmp	.label_742
.label_741:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_740
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	jmp	.label_744
.label_740:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_744:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_743
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x2c]
	nop	
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	rcx, r8
	mov	r8, r9
	lea	rdi, [rdi]
	mov	r9, r10
	lea	rsi, [rsi]
	mov	qword ptr [rsp], 0
	mov	rbp, rbp
	mov	qword ptr [rsp + 8], 0
	lea	rdi, [rdi]
	mov	dword ptr [rsp + 0x10], eax
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	jmp	.label_739
.label_743:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r11d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	lea	rsi, [rsi]
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	nop	
	mov	dword ptr [rbp - 0x30], eax
.label_739:
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_742:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40bd60

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	lea	rsi, [rsi]
	push	r14
	push	r12
	mov	rsp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x270
	mov	eax, dword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x30], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	qword ptr [rbp - 0x60], r11
	nop	
	mov	qword ptr [rbp - 0x68], r10
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], -1
	mov	rdi, r12
	mov	rsp, rsp
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 0x20], 0
	lea	rdi, [rdi]
	je	.label_754
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	nop	
	shr	cl, 3
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_754
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	je	.label_754
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_754
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_776
.label_754:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e8], rcx
	jmp	.label_776
.label_776:
	nop	
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1c0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_786
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	add	rcx, 1
	sub	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1f0], rax
	mov	rbp, rbp
	jmp	.label_803
.label_786:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1f0], rcx
	mov	rbp, rbp
	jmp	.label_803
.label_803:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	cl, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rdx, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x1f1], cl
	lea	rdi, [rdi]
	je	.label_807
	mov	rbp, rbp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_807
	mov	rsp, rsp
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_807
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_807
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x1f1], cl
.label_807:
	mov	al, byte ptr [rbp - 0x1f1]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_813
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 1
	nop	
	jmp	.label_784
.label_813:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_750
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_750
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_763
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	lea	rsi, [rsi]
	shr	cl, 7
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_750
.label_763:
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	je	.label_781
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_781
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 1
	lea	rsi, [rsi]
	jmp	.label_784
.label_781:
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x48], 0
.label_750:
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x1f2], al
	lea	rsi, [rsi]
	jne	.label_790
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1f2], cl
.label_790:
	mov	al, byte ptr [rbp - 0x1f2]
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x1b8]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8d], al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x78]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	lea	rsi, [rsi]
	and	al, 1
	nop	
	movzx	r9d, al
	mov	rbp, rbp
	call	re_string_allocate
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r11b
	mov	rsp, rsp
	and	r11b, 1
	mov	rbp, rbp
	movzx	eax, r11b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_819
	jmp	.label_747
.label_819:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12b], cl
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rbp, rbp
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x70], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_847
	lea	rsi, [rsi]
	jmp	.label_747
.label_847:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 1
	nop	
	ja	.label_756
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0xb0]
	lea	rdi, [rdi]
	shr	cl, 1
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_760
.label_756:
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	cmp	rax, qword ptr [rbp - 0x178]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_772
	mov	dword ptr [rbp - 0x70], 0xc
	lea	rdi, [rdi]
	jmp	.label_747
.label_772:
	mov	rax, qword ptr [rbp - 0x178]
	lea	rsi, [rsi]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x100], 0
	nop	
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_789
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_747
.label_789:
	jmp	.label_801
.label_760:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], 0
.label_801:
	lea	rdi, [rdi]
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	mov	rsp, rsp
	mov	edx, 6
	mov	esi, 4
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	r8d, dword ptr [rbp - 0x6c]
	and	r8d, 1
	lea	rdi, [rdi]
	cmp	r8d, 0
	mov	rbp, rbp
	cmovne	edx, esi
	mov	dword ptr [rbp - 0x148], edx
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	nop	
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	jge	.label_804
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_825
.label_804:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x200], rax
.label_825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	jge	.label_830
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x208], rax
	jmp	.label_837
.label_830:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x208], rax
.label_837:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xb1], cl
	nop	
	cmp	qword ptr [rbp - 0x1c0], 0
	je	.label_841
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb1], 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x209], al
	jne	.label_749
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x20a], al
	jne	.label_757
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x1c8], 0
	setne	al
	mov	byte ptr [rbp - 0x20a], al
.label_757:
	mov	al, byte ptr [rbp - 0x20a]
	lea	rsi, [rsi]
	xor	al, 0xff
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x209], al
.label_749:
	nop	
	mov	al, byte ptr [rbp - 0x209]
	lea	rdi, [rdi]
	xor	ecx, ecx
	nop	
	mov	edx, 1
	mov	rbp, rbp
	mov	esi, 2
	lea	rsi, [rsi]
	mov	edi, 4
	test	al, 1
	mov	r8d, ecx
	cmovne	r8d, edi
	lea	rdi, [rdi]
	mov	r9, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	cmp	r9, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	edi, ecx
	cmovle	edi, esi
	mov	rbp, rbp
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1c8], 0
	cmovne	ecx, edx
	mov	rbp, rbp
	or	r8d, ecx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x210], r8d
	jmp	.label_779
.label_841:
	lea	rsi, [rsi]
	mov	eax, 8
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x210], eax
	mov	rsp, rsp
	jmp	.label_779
.label_779:
	mov	eax, dword ptr [rbp - 0x210]
	mov	dword ptr [rbp - 0x94], eax
.label_833:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x70], 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jl	.label_775
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xa0]
	jge	.label_809
.label_775:
	mov	rsp, rsp
	jmp	.label_747
.label_809:
	nop	
	mov	eax, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	add	eax, -4
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	sub	eax, 4
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x218], rcx
	nop	
	mov	dword ptr [rbp - 0x21c], eax
	mov	rsp, rsp
	ja	.label_815
	nop	
	mov	rax, qword ptr [rbp - 0x218]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_795]]
	jmp	rcx
.label_3143:
	jmp	.label_748
.label_3142:
	mov	rbp, rbp
	jmp	.label_761
.label_761:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	setl	sil
	and	sil, 1
	movzx	eax, sil
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21d], cl
	je	.label_832
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	eax, edx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	nop	
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21d], sil
.label_832:
	mov	al, byte ptr [rbp - 0x21d]
	test	al, 1
	jne	.label_755
	jmp	.label_759
.label_755:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_761
.label_759:
	mov	rbp, rbp
	jmp	.label_769
.label_3141:
	mov	rbp, rbp
	jmp	.label_771
.label_771:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	lea	rsi, [rsi]
	and	sil, 1
	lea	rdi, [rdi]
	movzx	eax, sil
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21e], cl
	lea	rdi, [rdi]
	je	.label_831
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	setne	sil
	mov	rbp, rbp
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21e], sil
.label_831:
	mov	al, byte ptr [rbp - 0x21e]
	lea	rdi, [rdi]
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_794
	mov	rbp, rbp
	jmp	.label_800
.label_794:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_771
.label_800:
	mov	rbp, rbp
	jmp	.label_769
.label_769:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_745
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_816
	mov	rbp, rbp
	xor	eax, eax
	mov	dword ptr [rbp - 0x224], eax
	jmp	.label_820
.label_816:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x224], edx
.label_820:
	mov	eax, dword ptr [rbp - 0x224]
	mov	dword ptr [rbp - 0xb8], eax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_829
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x228], edx
	lea	rsi, [rsi]
	jmp	.label_835
.label_829:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x228], eax
.label_835:
	mov	eax, dword ptr [rbp - 0x228]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	mov	rbp, rbp
	jne	.label_843
	mov	rbp, rbp
	jmp	.label_747
.label_843:
	jmp	.label_745
.label_745:
	lea	rsi, [rsi]
	jmp	.label_748
.label_3140:
	jmp	.label_751
.label_751:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_780
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	jl	.label_758
	nop	
	xor	eax, eax
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_764
.label_758:
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x22c], edx
.label_764:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	lea	rdi, [rdi]
	je	.label_774
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x1c8]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x230], edx
	jmp	.label_850
.label_774:
	mov	eax, dword ptr [rbp - 0xb8]
	nop	
	mov	dword ptr [rbp - 0x230], eax
.label_850:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x230]
	movsxd	rcx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rsp, rsp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_792
	lea	rdi, [rdi]
	jmp	.label_780
.label_792:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_751
.label_780:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	jge	.label_802
	jmp	.label_747
.label_802:
	nop	
	jmp	.label_748
.label_815:
	lea	rsi, [rsi]
	jmp	.label_785
.label_785:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x180]
	setae	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_811
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	mov	rsp, rsp
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	nop	
	cmp	dword ptr [rbp - 0x70], 0
	mov	rbp, rbp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_828
	jmp	.label_747
.label_828:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
.label_811:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_840
	xor	eax, eax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_846
.label_840:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x234], edx
.label_846:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x234]
	mov	dword ptr [rbp - 0xb8], eax
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rbp, rbp
	cmp	byte ptr [rdx + rcx], 0
	je	.label_773
	mov	rsp, rsp
	jmp	.label_762
.label_773:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	jl	.label_766
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	jle	.label_778
.label_766:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], 1
	nop	
	jmp	.label_747
.label_778:
	jmp	.label_785
.label_762:
	nop	
	jmp	.label_748
.label_748:
	nop	
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rsp, rsp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_793
	lea	rdi, [rdi]
	jmp	.label_747
.label_793:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_799
	xor	eax, eax
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x188]
	nop	
	je	.label_799
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	dword ptr [rax], -1
	jne	.label_799
	jmp	.label_808
.label_799:
	mov	dword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0xf8], 0
	mov	al, byte ptr [rbp - 0x8d]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rbp - 0x50]
	nop	
	mov	byte ptr [rbp - 0x235], al
	nop	
	jg	.label_796
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x240], rax
	lea	rdi, [rdi]
	jmp	.label_822
.label_796:
	xor	eax, eax
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_822
.label_822:
	mov	rax, qword ptr [rbp - 0x240]
	lea	rcx, [rbp - 0x1b8]
	nop	
	mov	dl, byte ptr [rbp - 0x235]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x1b8]
	lea	rsi, [rsi]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x248], rcx
	call	check_matching
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xa8], -1
	lea	rdi, [rdi]
	je	.label_782
	cmp	qword ptr [rbp - 0xa8], -2
	sete	al
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_845
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_747
.label_845:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x110], rax
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	shr	cl, 4
	nop	
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_753
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_767
.label_753:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	cmp	qword ptr [rax + 0x98], 0
	je	.label_770
.label_767:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsi, qword ptr [rbp - 0x1d8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0xa8]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x108], rax
.label_770:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	cmp	edx, 0
	nop	
	jne	.label_788
	nop	
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_788
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_797
.label_788:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_805
.label_797:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1b8]
	mov	rsp, rsp
	call	prune_impossible_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	nop	
	jne	.label_848
	jmp	.label_826
.label_848:
	nop	
	cmp	dword ptr [rbp - 0x70], 1
	mov	rbp, rbp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_814
	mov	rbp, rbp
	jmp	.label_747
.label_814:
	mov	qword ptr [rbp - 0xa8], -1
	jmp	.label_783
.label_805:
	jmp	.label_826
.label_783:
	lea	rdi, [rdi]
	jmp	.label_827
.label_827:
	nop	
	jmp	.label_782
.label_782:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1b8]
	mov	rbp, rbp
	call	match_ctx_clean
.label_808:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa0], rax
	lea	rsi, [rsi]
	jmp	.label_833
.label_826:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	jbe	.label_812
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], 1
.label_849:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_844
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x1e0], rax
	mov	rsp, rsp
	jmp	.label_849
.label_844:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	dl, byte ptr [rax + 0x38]
	nop	
	shr	dl, 4
	mov	rsp, rsp
	and	dl, 1
	nop	
	movzx	esi, dl
	mov	rbp, rbp
	cmp	esi, 0
	mov	rsp, rsp
	jne	.label_768
	cmp	qword ptr [rbp - 0x60], 1
	lea	rdi, [rdi]
	jbe	.label_768
	mov	rbp, rbp
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9b, byte ptr [r8 + 0xb0]
	lea	rdi, [rdi]
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x250], rsi
	mov	qword ptr [rbp - 0x258], rdi
	mov	qword ptr [rbp - 0x260], rdx
	mov	byte ptr [rbp - 0x261], cl
	je	.label_787
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x261], cl
.label_787:
	mov	al, byte ptr [rbp - 0x261]
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x1b8]
	and	al, 1
	nop	
	movzx	r8d, al
	nop	
	lea	rsi, [rbp - 0x1b8]
	nop	
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rbp - 0x260]
	mov	r9, qword ptr [rbp - 0x250]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x270], rcx
	mov	rcx, r9
	call	set_regs
	nop	
	mov	dword ptr [rbp - 0x70], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x70], 0
	setne	r10b
	mov	rbp, rbp
	and	r10b, 1
	nop	
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_818
	lea	rsi, [rsi]
	jmp	.label_747
.label_818:
	jmp	.label_768
.label_768:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x1e0], 0
.label_824:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_834
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], -1
	je	.label_838
	movzx	eax, byte ptr [rbp - 0x12c]
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_842
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_746
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x278], rax
	lea	rdi, [rdi]
	jmp	.label_806
.label_746:
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x278], rax
.label_806:
	mov	rax, qword ptr [rbp - 0x278]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_777
	mov	rax, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x280], rax
	nop	
	jmp	.label_791
.label_777:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x1a0]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x280], rax
.label_791:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_842:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rcx, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_838:
	lea	rsi, [rsi]
	jmp	.label_821
.label_821:
	nop	
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_824
.label_834:
	mov	qword ptr [rbp - 0x1e0], 0
.label_836:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	jge	.label_823
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], rax
	lea	rsi, [rsi]
	jmp	.label_836
.label_823:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0xe0], 0
	lea	rsi, [rsi]
	je	.label_810
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1e0], 0
.label_765:
	mov	rax, qword ptr [rbp - 0x1e0]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_839
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x1e0]
	nop	
	je	.label_798
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	mov	rsp, rsp
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_798:
	mov	rsp, rsp
	jmp	.label_752
.label_752:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_765
.label_839:
	jmp	.label_810
.label_810:
	jmp	.label_812
.label_812:
	jmp	.label_747
.label_747:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x98], 0
	je	.label_817
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_free
.label_817:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1b8]
	call	re_string_destruct
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], eax
.label_784:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x270
	pop	rbx
	pop	r12
	lea	rdi, [rdi]
	pop	r14
	mov	rsp, rsp
	pop	r15
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d3b0

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], r8
	mov	r8, r9
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	rsp, rsp
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x34], eax
	nop	
	call	re_search_stub
	lea	rdi, [rdi]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d430

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	nop	
	mov	r11b, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], r10
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	dword ptr [rbp - 0x64], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], r11b
	lea	rdi, [rdi]
	jl	.label_859
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	setg	cl
	mov	byte ptr [rbp - 0x79], cl
.label_859:
	mov	al, byte ptr [rbp - 0x79]
	nop	
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_862
	mov	qword ptr [rbp - 8], -1
	mov	rsp, rsp
	jmp	.label_868
.label_862:
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x7a], al
	lea	rdi, [rdi]
	jl	.label_874
	xor	eax, eax
	mov	cl, al
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	nop	
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x7b], cl
	nop	
	jg	.label_879
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	setl	cl
	mov	byte ptr [rbp - 0x7b], cl
.label_879:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x7b]
	mov	byte ptr [rbp - 0x7a], al
.label_874:
	mov	al, byte ptr [rbp - 0x7a]
	mov	rsp, rsp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_860
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_866
.label_860:
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x7c], al
	lea	rdi, [rdi]
	jl	.label_864
	nop	
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], cl
	lea	rdi, [rdi]
	jge	.label_867
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	setle	cl
	mov	byte ptr [rbp - 0x7d], cl
.label_867:
	mov	al, byte ptr [rbp - 0x7d]
	nop	
	mov	byte ptr [rbp - 0x7c], al
.label_864:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x7c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_858
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], 0
.label_858:
	jmp	.label_866
.label_866:
	nop	
	xor	eax, eax
	mov	rsp, rsp
	mov	ecx, 2
	mov	rbp, rbp
	mov	edx, 1
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0x38]
	mov	rsp, rsp
	shr	dil, 5
	nop	
	and	dil, 1
	nop	
	movzx	r8d, dil
	cmp	r8d, 0
	mov	r8d, eax
	cmovne	r8d, edx
	mov	rbp, rbp
	or	r8d, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], r8d
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	mov	rsp, rsp
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], eax
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rbp - 0x78]
	jge	.label_854
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	lea	rsi, [rsi]
	je	.label_854
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_854
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x84], eax
.label_854:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	lea	rdi, [rdi]
	mov	eax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_856
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
.label_856:
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	jne	.label_870
	mov	qword ptr [rbp - 0x58], 1
	jmp	.label_861
.label_870:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	mov	rsp, rsp
	movzx	eax, sil
	mov	rsp, rsp
	cmp	eax, 2
	nop	
	mov	byte ptr [rbp - 0x85], cl
	jne	.label_877
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	setbe	dl
	mov	byte ptr [rbp - 0x85], dl
.label_877:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_863
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 1
	setl	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_871
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x58], 1
.label_871:
	lea	rsi, [rsi]
	jmp	.label_855
.label_863:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
.label_855:
	jmp	.label_861
.label_861:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_869
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_852
.label_869:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x64]
	lea	rdi, [rdi]
	mov	qword ptr [rsp], rax
	nop	
	mov	qword ptr [rsp + 8], r10
	nop	
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], eax
	mov	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_872
	lea	rdi, [rdi]
	mov	eax, 0xfffffffe
	lea	rdi, [rdi]
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x48], 1
	mov	rbp, rbp
	cmove	eax, ecx
	mov	rsp, rsp
	movsxd	rdx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	jmp	.label_876
.label_872:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_857
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	mov	rbp, rbp
	and	cl, 3
	movzx	ecx, cl
	mov	rsp, rsp
	call	re_copy_regs
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	r8b, al
	nop	
	mov	r9b, byte ptr [rdx + 0x38]
	and	r8b, 3
	shl	r8b, 1
	and	r9b, 0xf9
	or	r9b, r8b
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x38], r9b
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rdx + 0x38]
	lea	rsi, [rsi]
	shr	r8b, 1
	lea	rdi, [rdi]
	and	r8b, 3
	movzx	eax, r8b
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_873
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], -2
.label_873:
	jmp	.label_857
.label_857:
	jmp	.label_876
.label_876:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	sete	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_851
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x41], 1
	mov	rbp, rbp
	je	.label_853
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jne	.label_865
	jmp	.label_878
.label_865:
	nop	
	movabs	rdi, OFFSET FLAT:.str.21_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_878:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_875
.label_853:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
.label_875:
	jmp	.label_851
.label_851:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_852:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_868:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40da50
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dac0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	xor	r11d, r11d
	mov	rsp, rsp
	mov	ebx, r11d
	nop	
	mov	r11d, 1
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x50], rbx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], r11d
	mov	rsp, rsp
	call	re_search_2_stub
	mov	rbp, rbp
	add	rsp, 0x78
	nop	
	pop	rbx
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40db80

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	push	r14
	push	rbx
	nop	
	sub	rsp, 0xa0
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	rbx, qword ptr [rbp + 0x10]
	mov	rbp, rbp
	mov	r14b, 1
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	qword ptr [rbp - 0x50], rbx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], r11
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], r10
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	qword ptr [rbp - 0x88], 0
	nop	
	cmp	qword ptr [rbp - 0x30], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], r14b
	lea	rdi, [rdi]
	jl	.label_880
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_880
	mov	rbp, rbp
	mov	al, 1
	nop	
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x89], al
	lea	rdi, [rdi]
	jl	.label_880
	lea	rdi, [rdi]
	mov	al, 1
	mov	rbp, rbp
	test	al, 1
	mov	rsp, rsp
	jne	.label_895
	jmp	.label_882
.label_895:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	jge	.label_894
	nop	
	movabs	rax, 0x8000000000000000
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rcx, rax
	nop	
	jl	.label_884
	lea	rsi, [rsi]
	jmp	.label_881
.label_894:
	movabs	rax, 0x7fffffffffffffff
	mov	rsp, rsp
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jl	.label_884
	nop	
	jmp	.label_881
.label_882:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_893
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, rcx
	jle	.label_884
	jmp	.label_881
.label_893:
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_888
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, rcx
	jle	.label_884
	mov	rbp, rbp
	jmp	.label_881
.label_888:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jl	.label_884
.label_881:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rcx, rax
	jl	.label_884
	lea	rdi, [rdi]
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, rcx
	lea	rdi, [rdi]
	jge	.label_890
.label_884:
	mov	rbp, rbp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_892
.label_890:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	nop	
	mov	dword ptr [rbp - 0x90], eax
.label_892:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	cmp	eax, 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x89], cl
.label_880:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_891
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], -2
	lea	rdi, [rdi]
	jmp	.label_889
.label_891:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	jle	.label_896
	cmp	qword ptr [rbp - 0x30], 0
	jle	.label_885
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	shl	rax, 0
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	mov	rbp, rbp
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_883
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], -2
	lea	rdi, [rdi]
	jmp	.label_889
.label_883:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rdi
	nop	
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rdx
	mov	rsp, rsp
	jmp	.label_886
.label_885:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
.label_886:
	lea	rdi, [rdi]
	jmp	.label_887
.label_896:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0x70], rax
.label_887:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	r10b, byte ptr [rbp - 0x61]
	nop	
	and	r10b, 1
	lea	rsi, [rsi]
	mov	qword ptr [rsp], rax
	lea	rsi, [rsi]
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	mov	rbp, rbp
	call	re_search_stub
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_889:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xa0
	nop	
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40df70
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp + 0x20]
	mov	rbp, rbp
	mov	r10, qword ptr [rbp + 0x18]
	mov	rbp, rbp
	mov	r11, qword ptr [rbp + 0x10]
	mov	rsp, rsp
	xor	ebx, ebx
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	nop	
	mov	r9, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	nop	
	mov	r11, qword ptr [rbp - 0x50]
	nop	
	mov	qword ptr [rsp], rax
	lea	rdi, [rdi]
	mov	qword ptr [rsp + 8], r10
	mov	rsp, rsp
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], 0
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e030
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	lea	rdi, [rdi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_897
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	lea	rdi, [rdi]
	and	cl, 0xf9
	or	cl, 2
	nop	
	mov	byte ptr [rax + 0x38], cl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_898
.label_897:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 0
.label_898:
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e0f0

	.globl free_token
	.type free_token, @function
free_token:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0xff
	cmp	eax, 6
	lea	rdi, [rdi]
	jne	.label_899
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	lea	rdi, [rdi]
	and	ecx, 1
	nop	
	cmp	ecx, 0
	jne	.label_899
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	mov	rbp, rbp
	call	free_charset
	jmp	.label_901
.label_899:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 3
	jne	.label_900
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	lea	rsi, [rsi]
	jne	.label_900
	mov	rax, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_900:
	jmp	.label_901
.label_901:
	mov	rsp, rsp
	add	rsp, 0x10
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1c0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	rbp, rbp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x50]
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	cmp	rdi, rax
	je	.label_902
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_902:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e2a0

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	nop	
	call	free
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e300

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xf0
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], 8
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	jae	.label_903
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_918
.label_903:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_918
.label_918:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_927
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	nop	
	jae	.label_932
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	jmp	.label_937
.label_932:
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rsp, rsp
	jmp	.label_937
.label_937:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_911
.label_927:
	nop	
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rcx
	nop	
	jmp	.label_911
.label_911:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	edx, ecx
	lea	rdi, [rdi]
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_951
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_957
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_908
.label_957:
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	lea	rsi, [rsi]
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	nop	
	jae	.label_935
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_923
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_929
.label_923:
	lea	rdi, [rdi]
	mov	eax, 0x10
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rcx
	nop	
	jmp	.label_929
.label_929:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_938
.label_935:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_938
.label_938:
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_942
.label_951:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	mov	rbp, rbp
	jmp	.label_942
.label_942:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, 0x18
	mov	edx, ecx
	mov	rbp, rbp
	cmp	rdx, rax
	nop	
	jae	.label_949
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_956
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_905
.label_956:
	mov	rbp, rbp
	mov	eax, 0x10
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_905
.label_905:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	lea	rdi, [rdi]
	jae	.label_914
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	cmp	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jae	.label_922
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	nop	
	jmp	.label_933
.label_922:
	lea	rsi, [rsi]
	mov	eax, 0x10
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_933
.label_933:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_940
.label_914:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	mov	rsp, rsp
	jmp	.label_940
.label_940:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x98]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	lea	rsi, [rsi]
	jae	.label_944
	lea	rdi, [rdi]
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	jae	.label_952
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rbp, rbp
	jmp	.label_907
.label_952:
	nop	
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x18
	mov	rsp, rsp
	mov	edx, ecx
	nop	
	cmp	rdx, rax
	jae	.label_910
	mov	rsp, rsp
	mov	eax, 0x10
	mov	rsp, rsp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_915
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	nop	
	jmp	.label_921
.label_915:
	mov	eax, 0x10
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_921
.label_921:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	nop	
	jmp	.label_934
.label_910:
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	jmp	.label_934
.label_934:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rdi, [rdi]
	jmp	.label_941
.label_944:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_941
.label_941:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
	lea	rdi, [rdi]
	jmp	.label_950
.label_949:
	mov	eax, 0x18
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rdi, [rdi]
	jmp	.label_950
.label_950:
	mov	rax, qword ptr [rbp - 0xc0]
	lea	rdi, [rdi]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0xc8]
	xor	esi, esi
	mov	edx, esi
	mov	rsp, rsp
	div	qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rcx, rax
	jae	.label_926
	movabs	rax, 0x7fffffffffffffff
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_939
.label_926:
	lea	rsi, [rsi]
	mov	rax, -1
	lea	rdi, [rdi]
	xor	ecx, ecx
	mov	edx, ecx
	lea	rsi, [rsi]
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
.label_939:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd8]
	mov	rsp, rsp
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	setbe	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_947
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_904
.label_947:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], 1
.label_930:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jbe	.label_920
	jmp	.label_916
.label_920:
	jmp	.label_925
.label_925:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_930
.label_916:
	nop	
	mov	eax, 0x18
	mov	edi, eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	sub	rax, 1
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	lea	rdi, [rdi]
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	ecx, 0x55
	lea	rdi, [rdi]
	je	.label_948
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	lea	rsi, [rsi]
	jne	.label_909
.label_948:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	mov	rbp, rbp
	je	.label_906
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	lea	rsi, [rsi]
	jne	.label_909
.label_906:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	ecx, 0x46
	lea	rdi, [rdi]
	je	.label_913
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	lea	rsi, [rsi]
	jne	.label_909
.label_913:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, 3
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + 3]
	cmp	edx, 0x2d
	nop	
	sete	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edx, sil
	movsxd	rcx, edx
	nop	
	add	rax, rcx
	mov	edx, OFFSET FLAT:.str_7
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_909
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfb
	mov	rsp, rsp
	or	cl, 4
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_909:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_945
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	je	.label_924
	movabs	rax, OFFSET FLAT:utf8_sb_map
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_912
.label_924:
	mov	eax, 0x20
	mov	rbp, rbp
	mov	edi, eax
	mov	rsp, rsp
	mov	eax, 1
	lea	rdi, [rdi]
	mov	esi, eax
	call	calloc
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	nop	
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_928
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_904
.label_928:
	mov	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x44], 0
.label_931:
	cmp	dword ptr [rbp - 0x3c], 4
	lea	rdi, [rdi]
	jge	.label_943
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], 0
.label_936:
	cmp	dword ptr [rbp - 0x40], 0x40
	jge	.label_953
	mov	edi, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	lea	rsi, [rsi]
	je	.label_955
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x40]
	nop	
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rdx, cl
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + rsi*8], rdx
.label_955:
	nop	
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xffffff80
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_917
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_917
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	lea	rdi, [rdi]
	or	cl, 8
	mov	rbp, rbp
	mov	byte ptr [rax + 0xb0], cl
.label_917:
	nop	
	jmp	.label_954
.label_954:
	mov	eax, dword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x44]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	mov	rbp, rbp
	jmp	.label_936
.label_953:
	lea	rdi, [rdi]
	jmp	.label_919
.label_919:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_931
.label_943:
	jmp	.label_912
.label_912:
	jmp	.label_945
.label_945:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rcx], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], al
	je	.label_946
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	nop	
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xe1], cl
.label_946:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_958
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_904
.label_958:
	mov	dword ptr [rbp - 4], 0
.label_904:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ec50

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	al, r8b
	mov	rbp, rbp
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	lea	rdi, [rdi]
	mov	esi, r8d
	lea	rsi, [rsi]
	mov	rdx, r11
	nop	
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x29]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	r8d, al
	call	re_string_construct_common
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_969
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_963
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_964
.label_963:
	nop	
	jmp	.label_969
.label_969:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_977
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_968
.label_977:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_968:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x29], 1
	mov	rbp, rbp
	je	.label_974
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_966
	mov	rsp, rsp
	jmp	.label_967
.label_967:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	nop	
	cmp	rdi, 0
	je	.label_973
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_964
.label_973:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_960
	jmp	.label_959
.label_960:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	lea	rsi, [rsi]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_962
	nop	
	jmp	.label_959
.label_962:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	nop	
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_971
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_964
.label_971:
	jmp	.label_967
.label_959:
	lea	rsi, [rsi]
	jmp	.label_970
.label_966:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	build_upper_buffer
.label_970:
	jmp	.label_961
.label_974:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	mov	rsp, rsp
	jle	.label_975
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_965
.label_975:
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	je	.label_972
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	re_string_translate_buffer
	lea	rsi, [rsi]
	jmp	.label_976
.label_972:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_976:
	jmp	.label_965
.label_965:
	mov	rbp, rbp
	jmp	.label_961
.label_961:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_964:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ef60

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
.label_979:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_978
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_979
.label_978:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x68], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x20], 0
	mov	rsp, rsp
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f040

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rsp, rsp
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	cmp	byte ptr [rdi + 0x8b], 0
	je	.label_980
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_980:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f0a0

	.globl parse
	.type parse, @function
parse:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	or	rcx, 0x800000
	mov	rdi, rax
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	fetch_token
	lea	rdx, [rbp - 0x58]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	mov	rsp, rsp
	je	.label_982
	cmp	qword ptr [rbp - 0x38], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_982:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x59]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_985
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_984
.label_985:
	xor	eax, eax
	nop	
	mov	ecx, eax
	mov	rbp, rbp
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	je	.label_983
	nop	
	mov	ecx, 0x10
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	create_tree
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	jmp	.label_981
.label_983:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
.label_981:
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x5a], al
	lea	rsi, [rsi]
	je	.label_987
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	al
	nop	
	mov	byte ptr [rbp - 0x5a], al
.label_987:
	mov	al, byte ptr [rbp - 0x5a]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_986
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_984
.label_986:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_984:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f280

	.globl analyze
	.type analyze, @function
analyze:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	mov	rbp, rbp
	shl	rdi, 3
	mov	rsp, rsp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rbp, rbp
	mov	cl, 1
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	nop	
	je	.label_991
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	nop	
	je	.label_991
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	lea	rdi, [rdi]
	je	.label_991
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_991:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_988
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_995
.label_988:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	mov	rbp, rbp
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xe0], 0
	nop	
	je	.label_992
	mov	qword ptr [rbp - 0x28], 0
.label_990:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	jae	.label_1005
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_990
.label_1005:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, rax
	call	preorder
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
	mov	dword ptr [rbp - 0x30], eax
.label_1006:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jae	.label_997
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	je	.label_989
	lea	rdi, [rdi]
	jmp	.label_997
.label_989:
	jmp	.label_998
.label_998:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1006
.label_997:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_1002
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0xe0], 0
.label_1002:
	jmp	.label_992
.label_992:
	movabs	rsi, OFFSET FLAT:lower_subexps
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_999
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_995
.label_999:
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:calc_first
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	rbp, rbp
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_994
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_995
.label_994:
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	mov	rbp, rbp
	call	preorder
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	call	preorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_996
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_995
.label_996:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_eclosure
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_1003
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_995
.label_1003:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_993
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_993
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax + 0xb0]
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rsi, [rsi]
	cmp	edx, 0
	jne	.label_1001
.label_993:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_1004
.label_1001:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x38], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1000
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_995
.label_1000:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x1c], eax
.label_1004:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_995:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7a0

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 0x15], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x10], 0
.label_1032:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jae	.label_1026
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	nop	
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	rbp, rbp
	dec	edx
	mov	eax, edx
	lea	rdi, [rdi]
	sub	edx, 0xb
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], edx
	nop	
	ja	.label_1030
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1012]]
	lea	rsi, [rsi]
	jmp	rcx
.label_3104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x80
	nop	
	jl	.label_1017
	mov	byte ptr [rbp - 0x15], 1
.label_1017:
	jmp	.label_1008
.label_3109:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	sub	esi, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x30], edx
	mov	dword ptr [rbp - 0x34], esi
	je	.label_1016
	jmp	.label_1022
.label_1022:
	mov	eax, dword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x38], eax
	lea	rsi, [rsi]
	je	.label_1016
	jmp	.label_1015
.label_1015:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	eax, 0x40
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1016
	nop	
	jmp	.label_1024
.label_1024:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x80
	nop	
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	jne	.label_1011
	jmp	.label_1016
.label_1016:
	mov	rsp, rsp
	jmp	.label_1029
.label_1011:
	jmp	.label_1009
.label_1029:
	jmp	.label_1008
.label_3107:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x16], 1
	lea	rsi, [rsi]
	jmp	.label_1008
.label_3105:
	jmp	.label_1008
.label_3108:
	nop	
	jmp	.label_1009
.label_3106:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 2
.label_1031:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_1014
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	nop	
	mov	ecx, esi
	lea	rsi, [rsi]
	shr	rax, cl
	cmp	rax, 0
	je	.label_1020
	jmp	.label_1009
.label_1020:
	mov	dword ptr [rbp - 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	add	eax, 1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1031
.label_1014:
	lea	rsi, [rsi]
	jmp	.label_1008
.label_1030:
	call	abort
.label_1008:
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1032
.label_1026:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1019
	test	byte ptr [rbp - 0x16], 1
	nop	
	je	.label_1023
.label_1019:
	mov	qword ptr [rbp - 0x10], 0
.label_1021:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jae	.label_1025
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	lea	rsi, [rsi]
	cmp	edx, 1
	jne	.label_1007
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_1007
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_1013
.label_1007:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	nop	
	jne	.label_1028
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xffffff00
	mov	rsp, rsp
	or	edx, 7
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], edx
.label_1028:
	lea	rdi, [rdi]
	jmp	.label_1013
.label_1013:
	nop	
	jmp	.label_1018
.label_1018:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1021
.label_1025:
	mov	rsp, rsp
	jmp	.label_1023
.label_1023:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + 0xb0]
	lea	rsi, [rsi]
	and	dl, 0xfb
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x41], al
	jg	.label_1027
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x16]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
.label_1027:
	mov	al, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	lea	rsi, [rsi]
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_1009:
	nop	
	add	rsp, 0x50
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fb60

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x40]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	nop	
	imul	rdi, qword ptr [rbp - 0x18], 0x18
	nop	
	add	rcx, rdi
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	setne	dl
	and	dl, 1
	mov	rbp, rbp
	movzx	eax, dl
	lea	rsi, [rsi]
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_1048
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1050
.label_1048:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_1034
	mov	qword ptr [rbp - 0x20], 0
.label_1052:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1041
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0x4c], edx
	cmp	dword ptr [rbp - 0x4c], 4
	je	.label_1044
	mov	rsp, rsp
	jmp	.label_1049
.label_1044:
	nop	
	mov	qword ptr [rbp - 0x58], 0
.label_1039:
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1033
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rax + 8]
	mov	rbp, rbp
	and	esi, 0xff
	cmp	esi, 9
	mov	rsp, rsp
	jne	.label_1038
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_1038
	lea	rsi, [rsi]
	jmp	.label_1033
.label_1038:
	mov	rsp, rsp
	jmp	.label_1036
.label_1036:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	jmp	.label_1039
.label_1033:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1045
	mov	rsp, rsp
	jmp	.label_1049
.label_1045:
	cmp	dword ptr [rbp - 0x4c], 4
	lea	rdi, [rdi]
	jne	.label_1046
	mov	rbp, rbp
	lea	rdi, [rbp - 0x40]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_1037
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x68], 0x18
	nop	
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [rbp - 0x6c], 0
	je	.label_1047
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1050
.label_1047:
	nop	
	mov	qword ptr [rbp - 0x20], 0
.label_1037:
	mov	rbp, rbp
	jmp	.label_1046
.label_1046:
	jmp	.label_1049
.label_1049:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1052
.label_1041:
	mov	rsp, rsp
	jmp	.label_1034
.label_1034:
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	xor	ecx, ecx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	lea	rsi, [rsi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	nop	
	je	.label_1043
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1050
.label_1043:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1051
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	re_acquire_state_context
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	re_acquire_state_context
	mov	rbp, rbp
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	lea	rsi, [rsi]
	mov	ecx, 6
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x50], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x6d], r8b
	nop	
	je	.label_1042
	mov	rsp, rsp
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rcx + 0x58], 0
	nop	
	mov	byte ptr [rbp - 0x6d], al
	je	.label_1042
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x60], 0
	mov	rsp, rsp
	sete	cl
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x6d], cl
.label_1042:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x6d]
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1035
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1050
.label_1035:
	lea	rsi, [rsi]
	jmp	.label_1040
.label_1051:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x58], rax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x50], rax
.label_1040:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_1050:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x40fff0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	al, r8b
	mov	r10b, 1
	mov	rbp, rbp
.label_3173:
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + 0x88], al
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], r10b
	mov	rbp, rbp
	jne	.label_1053
	mov	al, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x31], al
.label_1053:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	nop	
	movzx	ecx, al
	mov	al, cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	mov	rsp, rsp
	shr	al, 2
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	al, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x89], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, cl
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8a], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x58]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x68], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0x60], rdx
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410160

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_1054
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x28], 8
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	setb	cl
	nop	
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1057
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1055
.label_1057:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_1061
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1055
.label_1061:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1059
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	shl	rcx, 3
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1058
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1055
.label_1058:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_1059:
	lea	rdi, [rdi]
	jmp	.label_1054
.label_1054:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1056
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	shl	rax, 0
	mov	rsi, rax
	lea	rdi, [rdi]
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1060
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1055
.label_1060:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
.label_1056:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x40], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_1055:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x410370

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_1098
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1068
.label_1098:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
.label_1068:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_1064
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_1064
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	lea	rsi, [rsi]
	jne	.label_1064
	lea	rdi, [rdi]
	jmp	.label_1071
.label_1071:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jge	.label_1073
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	lea	rdi, [rdi]
	cmp	edx, 0
	jne	.label_1079
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1079
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	byte ptr [rsi + rcx], dl
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	jmp	.label_1071
.label_1079:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x84]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9b, r8b
	lea	rdi, [rdi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd9], r9b
	nop	
	jae	.label_1078
	cmp	qword ptr [rbp - 0x40], -2
	nop	
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd9], al
.label_1078:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd9]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1109
	mov	edi, dword ptr [rbp - 0x84]
	call	towupper
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	je	.label_1113
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x88]
	nop	
	call	wcrtomb
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x90], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x90]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1062
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	memcpy
	mov	rbp, rbp
	jmp	.label_1092
.label_1062:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1095
.label_1092:
	mov	rbp, rbp
	jmp	.label_1100
.label_1113:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	nop	
	call	memcpy
.label_1100:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rdx + rcx*4], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x40]
	sub	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
.label_1070:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jge	.label_1063
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1070
.label_1063:
	jmp	.label_1086
.label_1109:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], -1
	nop	
	je	.label_1087
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_1087
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_1094
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1094
.label_1087:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x94], edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0x94]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, rax
	mov	rsp, rsp
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x40], -1
	lea	rsi, [rsi]
	sete	sil
	lea	rsi, [rsi]
	and	sil, 1
	movzx	edx, sil
	lea	rdi, [rdi]
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1106
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 0x20], rcx
.label_1106:
	jmp	.label_1084
.label_1094:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1073
.label_1084:
	jmp	.label_1086
.label_1086:
	lea	rdi, [rdi]
	jmp	.label_1071
.label_1073:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_1093
.label_1064:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_1075:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_1099
	jmp	.label_1095
.label_1095:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	nop	
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1112
	mov	dword ptr [rbp - 0xa4], 0
.label_1101:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	nop	
	mov	eax, dword ptr [rbp - 0xa4]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	eax, dword ptr [rdx + 0x90]
	nop	
	mov	byte ptr [rbp - 0xda], cl
	lea	rdi, [rdi]
	jge	.label_1069
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0xa4]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	setl	cl
	nop	
	mov	byte ptr [rbp - 0xda], cl
.label_1069:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xda]
	mov	rsp, rsp
	test	al, 1
	mov	rbp, rbp
	jne	.label_1066
	mov	rbp, rbp
	jmp	.label_1097
.label_1066:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0xa4]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0xa8], edx
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rsp, rsp
	mov	sil, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x80], sil
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1101
.label_1097:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	jmp	.label_1116
.label_1112:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
.label_1116:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	lea	rsi, [rsi]
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	ecx, r8d
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xdb], r9b
	nop	
	jae	.label_1082
	nop	
	cmp	qword ptr [rbp - 0x40], -2
	mov	rsp, rsp
	setb	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xdb], al
.label_1082:
	nop	
	mov	al, byte ptr [rbp - 0xdb]
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1102
	mov	edi, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	call	towupper
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	cmp	eax, dword ptr [rbp - 0x98]
	mov	rsp, rsp
	je	.label_1110
	lea	rdx, [rbp - 0x18]
	nop	
	lea	rdi, [rbp - 0x80]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 0xac]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xb8]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	mov	rsp, rsp
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	nop	
	je	.label_1119
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1081
.label_1119:
	cmp	qword ptr [rbp - 0xb8], -1
	mov	rbp, rbp
	je	.label_1085
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_1090
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1099
.label_1090:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	jne	.label_1103
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rbp, rbp
	shl	rax, 3
	mov	rdi, rax
	nop	
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	lea	rdi, [rdi]
	jne	.label_1074
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1093
.label_1074:
	lea	rdi, [rdi]
	jmp	.label_1103
.label_1103:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_1120
	mov	qword ptr [rbp - 0xc0], 0
.label_1072:
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1067
	mov	rax, qword ptr [rbp - 0xc0]
	nop	
	mov	rcx, qword ptr [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1072
.label_1067:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 1
.label_1120:
	lea	rsi, [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	mov	rsp, rsp
	call	memcpy
	nop	
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc0], 1
.label_1083:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_1114
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	jae	.label_1117
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	jmp	.label_1121
.label_1117:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0xf0], rax
.label_1121:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rcx, rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1083
.label_1114:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jle	.label_1104
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_1104:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rsp, rsp
	jle	.label_1091
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_1076
.label_1091:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xf8], rax
.label_1076:
	nop	
	mov	rax, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1075
.label_1085:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	memcpy
	lea	rdi, [rdi]
	jmp	.label_1081
.label_1081:
	jmp	.label_1105
.label_1110:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0xa0]
	nop	
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	memcpy
.label_1105:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	lea	rdi, [rdi]
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	je	.label_1089
	mov	qword ptr [rbp - 0xc8], 0
.label_1065:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1122
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	mov	rbp, rbp
	jmp	.label_1065
.label_1122:
	jmp	.label_1089
.label_1089:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xac]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1115:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1108
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	nop	
	jmp	.label_1115
.label_1108:
	jmp	.label_1080
.label_1102:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_1118
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_1118
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_1088
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1088
.label_1118:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], edx
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	mov	rbp, rbp
	movzx	edx, sil
	nop	
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1123
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
.label_1123:
	mov	eax, dword ptr [rbp - 0xcc]
	lea	rdi, [rdi]
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + rdx], cl
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rdx + 0x8c]
	nop	
	cmp	eax, 0
	nop	
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1111
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1111:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1077
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x20], rcx
.label_1077:
	mov	rsp, rsp
	jmp	.label_1096
.label_1088:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	nop	
	jmp	.label_1099
.label_1096:
	jmp	.label_1080
.label_1080:
	mov	rbp, rbp
	jmp	.label_1075
.label_1099:
	jmp	.label_1107
.label_1107:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_1093:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	mov	rsp, rsp
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4111e0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	rdi, qword ptr [rax + 0x58]
	mov	rbp, rbp
	jle	.label_1124
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1128
.label_1124:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1128:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1127:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1125
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x78], 0
	lea	rsi, [rsi]
	setne	sil
	mov	rbp, rbp
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1126
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_1126:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1127
.label_1125:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411330

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	jle	.label_1146
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1138
.label_1146:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x98], rax
.label_1138:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
.label_1140:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	nop	
	jge	.label_1131
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_1144
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x8c], 0
.label_1137:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x8c]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x99], cl
	mov	rbp, rbp
	jge	.label_1129
	movsxd	rax, dword ptr [rbp - 0x8c]
	cmp	rax, qword ptr [rbp - 0x70]
	nop	
	setl	cl
	mov	byte ptr [rbp - 0x99], cl
.label_1129:
	mov	al, byte ptr [rbp - 0x99]
	mov	rbp, rbp
	test	al, 1
	jne	.label_1145
	lea	rdi, [rdi]
	jmp	.label_1134
.label_1145:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x90], edx
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 0x78]
	mov	rbp, rbp
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], sil
	nop	
	movsxd	rax, dword ptr [rbp - 0x8c]
	lea	rsi, [rsi]
	mov	byte ptr [rbp + rax - 0x50], sil
	nop	
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	jmp	.label_1137
.label_1134:
	nop	
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	jmp	.label_1133
.label_1144:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
.label_1133:
	lea	rdi, [rbp - 0x7c]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], -1
	mov	byte ptr [rbp - 0x9a], r8b
	mov	rsp, rsp
	je	.label_1132
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x9a], al
	je	.label_1132
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x78], -2
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9b], cl
	jne	.label_1135
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	setge	dl
	nop	
	mov	byte ptr [rbp - 0x9b], dl
.label_1135:
	mov	al, byte ptr [rbp - 0x9b]
	nop	
	mov	byte ptr [rbp - 0x9a], al
.label_1132:
	mov	al, byte ptr [rbp - 0x9a]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1130
	mov	qword ptr [rbp - 0x78], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x7c], edx
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	lea	rdi, [rdi]
	and	sil, 1
	mov	rsp, rsp
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1141
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x78]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], edx
.label_1141:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1136
.label_1130:
	cmp	qword ptr [rbp - 0x78], -2
	lea	rdi, [rdi]
	sete	al
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1142
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	lea	rdi, [rdi]
	jmp	.label_1131
.label_1142:
	jmp	.label_1136
.label_1136:
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x60]
	add	rcx, qword ptr [rbp - 0x78]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
.label_1143:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	jge	.label_1139
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x60], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1143
.label_1139:
	jmp	.label_1140
.label_1131:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411750

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rdi, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	jle	.label_1147
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1148
.label_1147:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1148:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
.label_1150:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1149
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1150
.label_1149:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411860

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	peek_token
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0x48]
	mov	qword ptr [rsi + 0x48], rdx
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4118b0

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	nop	
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x50], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x38]
	nop	
	call	parse_branch
	mov	rbp, rbp
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0
	nop	
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_1161
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x61], al
.label_1161:
	nop	
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1159
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1158
.label_1159:
	jmp	.label_1153
.label_1153:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	nop	
	jne	.label_1156
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	or	rax, 0x800000
	lea	rdi, [rdi]
	mov	rdx, rax
	mov	rbp, rbp
	call	fetch_token
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0xa
	mov	rsp, rsp
	je	.label_1157
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	mov	rbp, rbp
	je	.label_1157
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1154
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	je	.label_1157
.label_1154:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xa8], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0x30]
	nop	
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x62], r11b
	je	.label_1162
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x62], al
.label_1162:
	mov	al, byte ptr [rbp - 0x62]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1160
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	je	.label_1151
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_1151:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1158
.label_1160:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	or	rax, qword ptr [rcx + 0xa8]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_1152
.label_1157:
	mov	qword ptr [rbp - 0x50], 0
.label_1152:
	mov	rbp, rbp
	mov	ecx, 0xa
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	ecx, r8b
	mov	rbp, rbp
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1155
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1158
.label_1155:
	jmp	.label_1153
.label_1156:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1158:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411bb0

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], ecx
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x28]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	lea	rdi, [rdi]
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411c20

	.globl peek_token
	.type peek_token, @function
peek_token:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1172
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1163
.label_1172:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0x21], dl
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rax], dl
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1195
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	je	.label_1195
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1195
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1163
.label_1195:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	mov	rbp, rbp
	cmp	eax, 0x5c
	jne	.label_1242
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1246
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x24
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1163
.label_1246:
	mov	eax, 1
	nop	
	mov	esi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_peek_byte_case
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x22], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x22]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	byte ptr [rsi], al
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	dword ptr [rsi + 0x90], 1
	mov	rbp, rbp
	jle	.label_1265
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	nop	
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x28], eax
	mov	edi, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	iswalnum
	mov	rbp, rbp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	nop	
	jne	.label_1181
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0x5f
	nop	
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
.label_1181:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	lea	rdi, [rdi]
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	mov	rsp, rsp
	or	esi, ecx
	nop	
	mov	dword ptr [rdx + 8], esi
	nop	
	jmp	.label_1189
.label_1265:
	movzx	eax, byte ptr [rbp - 0x22]
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	lea	rdi, [rdi]
	cmp	esi, 0
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1211
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x5f
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], cl
.label_1211:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	lea	rsi, [rsi]
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1189:
	movzx	eax, byte ptr [rbp - 0x22]
	mov	rsp, rsp
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x58], eax
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_1236
	jmp	.label_1239
.label_1239:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x60], eax
	lea	rdi, [rdi]
	je	.label_1240
	nop	
	jmp	.label_1243
.label_1243:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0x64], eax
	mov	rsp, rsp
	je	.label_1245
	nop	
	jmp	.label_1250
.label_1250:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x68], eax
	nop	
	je	.label_1251
	jmp	.label_1253
.label_1253:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	eax, -0x31
	mov	rsp, rsp
	sub	eax, 9
	mov	dword ptr [rbp - 0x6c], eax
	lea	rsi, [rsi]
	jb	.label_1255
	jmp	.label_1261
.label_1261:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1262
	jmp	.label_1257
.label_1257:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	eax, 0x3e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1266
	lea	rdi, [rdi]
	jmp	.label_1269
.label_1269:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1227
	mov	rbp, rbp
	jmp	.label_1168
.label_1168:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x42
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1170
	jmp	.label_1176
.label_1176:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x80], eax
	je	.label_1232
	jmp	.label_1178
.label_1178:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x84], eax
	lea	rdi, [rdi]
	je	.label_1259
	jmp	.label_1183
.label_1183:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1182
	jmp	.label_1193
.label_1193:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x8c], eax
	mov	rsp, rsp
	je	.label_1194
	lea	rdi, [rdi]
	jmp	.label_1200
.label_1200:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x90], eax
	mov	rbp, rbp
	je	.label_1202
	jmp	.label_1207
.label_1207:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	sub	eax, 0x77
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	lea	rdi, [rdi]
	je	.label_1208
	lea	rsi, [rsi]
	jmp	.label_1217
.label_1217:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	sub	eax, 0x7b
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1216
	jmp	.label_1222
.label_1222:
	mov	eax, dword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x9c], eax
	nop	
	je	.label_1224
	jmp	.label_1233
.label_1233:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	mov	rsp, rsp
	sub	eax, 0x7d
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1248
	jmp	.label_1234
.label_1224:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	nop	
	jne	.label_1235
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_1235
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0xa
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1235:
	jmp	.label_1175
.label_1255:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x4000
	nop	
	cmp	rax, 0
	jne	.label_1249
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x31
	lea	rsi, [rsi]
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx], rax
.label_1249:
	mov	rbp, rbp
	jmp	.label_1175
.label_1262:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1264
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0xc
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 6
.label_1264:
	nop	
	jmp	.label_1175
.label_1266:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	nop	
	jne	.label_1203
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 9
.label_1203:
	lea	rsi, [rsi]
	jmp	.label_1175
.label_1194:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_1185
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0x100
.label_1185:
	lea	rsi, [rsi]
	jmp	.label_1175
.label_1170:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1204
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x200
.label_1204:
	jmp	.label_1175
.label_1208:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_1218
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x20
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1218:
	nop	
	jmp	.label_1175
.label_1259:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1213
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
.label_1213:
	jmp	.label_1175
.label_1202:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1270
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_1270:
	jmp	.label_1175
.label_1232:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1221
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_1221:
	jmp	.label_1175
.label_1182:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x80000
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1260
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x40
.label_1260:
	jmp	.label_1175
.label_1236:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1164
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rax], 0x80
.label_1164:
	jmp	.label_1175
.label_1240:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1179
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 8
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1179:
	jmp	.label_1175
.label_1245:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_1191
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1191:
	jmp	.label_1175
.label_1251:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1206
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1206
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1206:
	jmp	.label_1175
.label_1227:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1225
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 2
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1225
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x13
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
.label_1225:
	lea	rsi, [rsi]
	jmp	.label_1175
.label_1216:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 0x200
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1201
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1201
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1201:
	jmp	.label_1175
.label_1248:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1252
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x1000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	jne	.label_1252
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 0x18
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1252:
	nop	
	jmp	.label_1175
.label_1234:
	jmp	.label_1175
.label_1175:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 2
	nop	
	jmp	.label_1163
.label_1242:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	nop	
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1167
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	mov	edi, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	iswalnum
	mov	rsp, rsp
	mov	cl, 1
	mov	rsp, rsp
	cmp	eax, 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1186
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x2c], 0x5f
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xa1], al
.label_1186:
	nop	
	mov	al, byte ptr [rbp - 0xa1]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	mov	rsp, rsp
	setne	al
	nop	
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	mov	rbp, rbp
	and	ecx, 1
	shl	ecx, 0x16
	mov	rsp, rsp
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1198
.label_1167:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	nop	
	movsxd	rax, ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	byte ptr [rbp - 0xb1], dl
	jne	.label_1220
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	lea	rsi, [rsi]
	cmp	ecx, 0x5f
	sete	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xb1], dl
.label_1220:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	lea	rdi, [rdi]
	and	esi, 0xffbfffff
	nop	
	or	esi, ecx
	mov	rsp, rsp
	mov	dword ptr [rdx + 8], esi
.label_1198:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	mov	ecx, eax
	nop	
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0xb8], eax
	mov	dword ptr [rbp - 0xbc], ecx
	je	.label_1241
	mov	rbp, rbp
	jmp	.label_1247
.label_1247:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x24
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xc0], eax
	lea	rsi, [rsi]
	je	.label_1229
	mov	rsp, rsp
	jmp	.label_1254
.label_1254:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc4], eax
	nop	
	je	.label_1256
	nop	
	jmp	.label_1199
.label_1199:
	nop	
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	sub	eax, 0x29
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc8], eax
	mov	rsp, rsp
	je	.label_1263
	jmp	.label_1244
.label_1244:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1268
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1166
	jmp	.label_1171
.label_1171:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0xd4], eax
	mov	rsp, rsp
	je	.label_1174
	lea	rdi, [rdi]
	jmp	.label_1192
.label_1192:
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	sub	eax, 0x3f
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xd8], eax
	lea	rdi, [rdi]
	je	.label_1180
	jmp	.label_1231
.label_1231:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	eax, 0x5b
	nop	
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1187
	mov	rbp, rbp
	jmp	.label_1196
.label_1196:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rbp, rbp
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1197
	jmp	.label_1205
.label_1205:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xb8]
	lea	rdi, [rdi]
	sub	eax, 0x7b
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xe4], eax
	nop	
	je	.label_1258
	lea	rdi, [rdi]
	jmp	.label_1210
.label_1210:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	rsp, rsp
	sub	eax, 0x7c
	nop	
	mov	dword ptr [rbp - 0xe8], eax
	nop	
	je	.label_1226
	lea	rsi, [rsi]
	jmp	.label_1219
.label_1219:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x7d
	nop	
	mov	dword ptr [rbp - 0xec], eax
	je	.label_1223
	jmp	.label_1184
.label_1241:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1230
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1230:
	mov	rsp, rsp
	jmp	.label_1169
.label_1226:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 0x400
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1237
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 0x8000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1237
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1237:
	mov	rsp, rsp
	jmp	.label_1169
.label_1268:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1169
.label_1166:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1214
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	jne	.label_1214
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1214:
	mov	rbp, rbp
	jmp	.label_1169
.label_1180:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_1173
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 2
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_1173
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1173:
	mov	rsp, rsp
	jmp	.label_1169
.label_1258:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1190
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1190
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1190:
	jmp	.label_1169
.label_1223:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	and	rax, 0x200
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1209
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 0x1000
	cmp	rax, 0
	nop	
	je	.label_1209
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	nop	
	or	ecx, 0x18
	nop	
	mov	dword ptr [rax + 8], ecx
.label_1209:
	lea	rsi, [rsi]
	jmp	.label_1169
.label_1256:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1228
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1228:
	jmp	.label_1169
.label_1263:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1238
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 9
	mov	rbp, rbp
	mov	dword ptr [rax + 8], ecx
.label_1238:
	jmp	.label_1169
.label_1187:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1169
.label_1174:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	lea	rsi, [rsi]
	jmp	.label_1169
.label_1197:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	and	rax, 0x800008
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	jne	.label_1177
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	cmp	qword ptr [rax + 0x48], 0
	nop	
	je	.label_1177
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x2d], dl
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	and	rax, 0x800
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1267
	movsx	eax, byte ptr [rbp - 0x2d]
	cmp	eax, 0xa
	je	.label_1215
.label_1267:
	jmp	.label_1169
.label_1215:
	mov	rsp, rsp
	jmp	.label_1177
.label_1177:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rax], 0x10
	nop	
	jmp	.label_1169
.label_1229:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 8
	lea	rsi, [rsi]
	cmp	rax, 0
	jne	.label_1188
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	je	.label_1188
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	nop	
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 0xff
	lea	rsi, [rsi]
	cmp	r8d, 0xa
	nop	
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1212
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xff
	lea	rsi, [rsi]
	cmp	eax, 9
	je	.label_1212
	jmp	.label_1169
.label_1212:
	mov	rsp, rsp
	jmp	.label_1188
.label_1188:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 0xc
	nop	
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x20
	nop	
	jmp	.label_1169
.label_1184:
	jmp	.label_1169
.label_1169:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 1
.label_1163:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0xf0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412d80

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rsi + 0x8b], 0
	mov	rsp, rsp
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	mov	rsp, rsp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_1271
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1273
.label_1271:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_1272
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1276
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	nop	
	add	rcx, 1
	lea	rsi, [rsi]
	cmp	rax, rcx
	je	.label_1272
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1272
.label_1276:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1273
.label_1272:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1275
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1275:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_1274
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1274
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], dl
	lea	rsi, [rsi]
	jmp	.label_1273
.label_1274:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	cl, al
	nop	
	mov	byte ptr [rbp - 1], cl
.label_1273:
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 1]
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412f80

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	mov	rsp, rsp
	jne	.label_1277
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], edx
	lea	rdi, [rdi]
	jmp	.label_1278
.label_1277:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + rax*4]
	nop	
	mov	dword ptr [rbp - 4], edx
.label_1278:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413000

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	lea	rdi, [rdi]
	xor	r10d, r10d
	nop	
	mov	r11b, r10b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_1291
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1291:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1285
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1281
.label_1285:
	mov	rbp, rbp
	jmp	.label_1292
.label_1292:
	xor	eax, eax
	mov	rsp, rsp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	lea	rdi, [rdi]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x5a], cl
	lea	rdi, [rdi]
	je	.label_1282
	xor	eax, eax
	mov	cl, al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	mov	rbp, rbp
	cmp	eax, 2
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1282
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 0
	nop	
	mov	byte ptr [rbp - 0x5b], al
	je	.label_1288
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x5b], dl
.label_1288:
	mov	al, byte ptr [rbp - 0x5b]
	mov	byte ptr [rbp - 0x5a], al
.label_1282:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_1284
	jmp	.label_1290
.label_1284:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	nop	
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	dword ptr [rax], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5c], r11b
	mov	rbp, rbp
	je	.label_1283
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x5c], al
.label_1283:
	mov	al, byte ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1279
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1289
	movabs	rsi, OFFSET FLAT:free_tree
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	postorder
	nop	
	mov	dword ptr [rbp - 0x60], eax
.label_1289:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1281
.label_1279:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1286
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	je	.label_1286
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	jne	.label_1293
	nop	
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x64], eax
	call	postorder
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	jmp	.label_1281
.label_1293:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_1280
.label_1286:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1287
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
.label_1287:
	jmp	.label_1280
.label_1280:
	jmp	.label_1292
.label_1290:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1281:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x413320

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1305:
	jmp	.label_1294
.label_1294:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x35], al
	nop	
	jne	.label_1296
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x35], cl
.label_1296:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	mov	rbp, rbp
	jne	.label_1304
	jmp	.label_1297
.label_1304:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1301
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_1295
.label_1301:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1295:
	mov	rsp, rsp
	jmp	.label_1294
.label_1297:
	jmp	.label_1298
.label_1298:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	rax
	nop	
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1303
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_1299
.label_1303:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	lea	rdi, [rdi]
	jne	.label_1300
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_1299
.label_1300:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x36], al
	mov	rbp, rbp
	je	.label_1302
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	sete	cl
	mov	byte ptr [rbp - 0x36], cl
.label_1302:
	nop	
	mov	al, byte ptr [rbp - 0x36]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1298
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1305
.label_1299:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4134e0

	.globl free_tree
	.type free_tree, @function
free_tree:
	nop
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsi, 0x28
	nop	
	mov	rdi, rsi
	call	free_token
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413520

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	push	rbx
	mov	rsp, rsp
	sub	rsp, 0x118
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rcx + 8]
	mov	rbp, rbp
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_1315
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1339]]
	mov	rsp, rsp
	jmp	rcx
.label_3191:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0x88], rdx
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	mov	rsp, rsp
	sete	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	mov	rsp, rsp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1354
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1354:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1344
	lea	rdi, [rdi]
	jmp	.label_1320
.label_1320:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	cmp	rdx, qword ptr [rsi + 0x48]
	nop	
	mov	byte ptr [rbp - 0x89], cl
	mov	rsp, rsp
	jle	.label_1323
	mov	al, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x8a], al
	mov	rsp, rsp
	je	.label_1331
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	lea	rsi, [rsi]
	setne	dl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8a], dl
.label_1331:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x8a]
	lea	rsi, [rsi]
	xor	al, 0xff
	nop	
	mov	byte ptr [rbp - 0x89], al
.label_1323:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_1350
	jmp	.label_1355
.label_1350:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	fetch_token
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rdx
	nop	
	call	create_token_tree
	mov	ecx, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	rbp, rbp
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x8b], r8b
	mov	rbp, rbp
	je	.label_1319
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8b], al
.label_1319:
	mov	al, byte ptr [rbp - 0x8b]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1329
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1309
.label_1329:
	jmp	.label_1320
.label_1355:
	jmp	.label_1344
.label_1344:
	mov	rsp, rsp
	jmp	.label_1310
.label_3195:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x40]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	rsp, rsp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x8c], r11b
	je	.label_1356
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8c], al
.label_1356:
	mov	al, byte ptr [rbp - 0x8c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1313
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	jmp	.label_1309
.label_1313:
	mov	rbp, rbp
	jmp	.label_1310
.label_3197:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	call	parse_bracket_exp
	lea	rsi, [rsi]
	xor	r9d, r9d
	mov	rbp, rbp
	mov	r10b, r9b
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	cmp	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x8d], r10b
	je	.label_1334
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	al
	nop	
	mov	byte ptr [rbp - 0x8d], al
.label_1334:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x8d]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1347
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1347:
	jmp	.label_1310
.label_3193:
	mov	rsp, rsp
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	esi, edx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rcx
	lea	rsi, [rsi]
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	cmp	rdi, 0
	lea	rsi, [rsi]
	jne	.label_1358
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 6
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1358:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rdx]
	nop	
	mov	esi, edx
	nop	
	mov	qword ptr [rbp - 0xa0], rcx
	lea	rdi, [rdi]
	mov	ecx, esi
	shl	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	or	rdx, qword ptr [rdi + 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1352
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1352:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x98]
	nop	
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	lea	rsi, [rsi]
	or	dl, 2
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0xb0], dl
	lea	rsi, [rsi]
	jmp	.label_1310
.label_3198:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	and	rax, 0x1000000
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1326
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1309
.label_1326:
	jmp	.label_1337
.label_1337:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	and	rax, 0x20
	mov	rbp, rbp
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1340
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1309
.label_1340:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1349
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	fetch_token
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	nop	
	call	parse_expression
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1309
.label_1349:
	jmp	.label_1314
.label_1314:
	mov	rbp, rbp
	jmp	.label_1316
.label_1316:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	nop	
	cmp	ecx, 9
	lea	rdi, [rdi]
	jne	.label_1312
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	and	rax, 0x20000
	mov	rbp, rbp
	cmp	rax, 0
	jne	.label_1312
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1312:
	jmp	.label_1333
.label_1333:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	nop	
	mov	dword ptr [rdx + 8], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xa8], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xa8]
	mov	rsp, rsp
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1348
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1348:
	nop	
	jmp	.label_1310
.label_3196:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0x30f
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_1311
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1311
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	init_word_char
.label_1311:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	je	.label_1332
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x200
	jne	.label_1328
.label_1332:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	dword ptr [rax], 0x100
	jne	.label_1357
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rdx], 6
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rax], 9
	jmp	.label_1353
.label_1357:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rcx
	nop	
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	call	create_token_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rax], 0xa
.label_1353:
	nop	
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc0], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x68], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0xc1], r8b
	je	.label_1336
	mov	al, 1
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0xc1], al
	lea	rdi, [rdi]
	je	.label_1336
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc1], al
.label_1336:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1345
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1345:
	mov	rsp, rsp
	jmp	.label_1318
.label_1328:
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0xd0]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	movsxd	rax, r9d
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1330
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_1309
.label_1330:
	mov	rbp, rbp
	jmp	.label_1318
.label_1318:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fetch_token
	nop	
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdx
	lea	rsi, [rsi]
	jmp	.label_1309
.label_3194:
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd8], rdx
	lea	rdi, [rdi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xd8]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	nop	
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1342
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	jmp	.label_1309
.label_1342:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1324
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	cl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1324:
	mov	rsp, rsp
	jmp	.label_1310
.label_3199:
	movabs	rax, OFFSET FLAT:.str.1_5
	movabs	rcx, OFFSET FLAT:.str.2_3
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rdx + 8]
	lea	rsi, [rsi]
	and	r8d, 0xff
	nop	
	cmp	r8d, 0x21
	mov	rbp, rbp
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	r8d, OFFSET FLAT:.str.1_5
	mov	r10d, r8d
	mov	rbp, rbp
	mov	r8d, OFFSET FLAT:.str.2_3
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0xe0], rdx
	lea	rsi, [rsi]
	mov	rdx, r10
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0xe0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	call	build_charclass_op
	mov	rbp, rbp
	xor	r8d, r8d
	mov	bl, r8b
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0xf1], bl
	je	.label_1307
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	sete	al
	mov	byte ptr [rbp - 0xf1], al
.label_1307:
	mov	al, byte ptr [rbp - 0xf1]
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	nop	
	je	.label_1321
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1309
.label_1321:
	lea	rdi, [rdi]
	jmp	.label_1310
.label_3200:
	movabs	rax, OFFSET FLAT:.str.3_2
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	lea	rdi, [rdi]
	cmp	r8d, 0x23
	lea	rsi, [rsi]
	sete	r9b
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str.3_2
	mov	r10d, r8d
	lea	rdi, [rdi]
	mov	r8d, OFFSET FLAT:.str_0
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	nop	
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, r10
	nop	
	mov	qword ptr [rbp - 0x108], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x100]
	nop	
	mov	qword ptr [rbp - 0x110], rax
	call	build_charclass_op
	xor	r8d, r8d
	lea	rsi, [rsi]
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x111], bl
	je	.label_1308
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x111], al
.label_1308:
	mov	al, byte ptr [rbp - 0x111]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1322
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1322:
	mov	rbp, rbp
	jmp	.label_1310
.label_3192:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_3201:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1315:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1310:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	fetch_token
.label_1351:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	mov	rsp, rsp
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x112], al
	je	.label_1306
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	cmp	edx, 0x12
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x112], al
	je	.label_1306
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	edx, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	edx, 0xff
	cmp	edx, 0x13
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x112], al
	je	.label_1306
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	lea	rdi, [rdi]
	sete	dl
	mov	byte ptr [rbp - 0x112], dl
.label_1306:
	mov	al, byte ptr [rbp - 0x112]
	test	al, 1
	jne	.label_1325
	nop	
	jmp	.label_1327
.label_1325:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	call	parse_dup_op
	mov	rbp, rbp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x113], r11b
	je	.label_1338
	cmp	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x113], al
.label_1338:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x113]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_1341
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	je	.label_1346
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	call	postorder
	mov	dword ptr [rbp - 0x118], eax
.label_1346:
	mov	qword ptr [rbp - 0x10], 0
	nop	
	jmp	.label_1309
.label_1341:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_1317
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1343
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	mov	rbp, rbp
	jne	.label_1317
.label_1343:
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1335
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rsi, [rsi]
	xor	eax, eax
	mov	edx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x11c], eax
.label_1335:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1309
.label_1317:
	mov	rsp, rsp
	jmp	.label_1351
.label_1327:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rax
.label_1309:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x118
	mov	rbp, rbp
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414400

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rcx + 0x80]
	cmp	rcx, 0xf
	lea	rsi, [rsi]
	sete	al
	and	al, 1
	movzx	r8d, al
	lea	rdi, [rdi]
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1359
	mov	eax, 0x3c8
	mov	edi, eax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	jne	.label_1361
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_1363
.label_1361:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x70], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0
.label_1359:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x80]
	mov	edx, ecx
	mov	rsp, rsp
	add	edx, 1
	mov	dword ptr [rax + 0x80], edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x70]
	lea	rsi, [rsi]
	add	rsi, 8
	shl	rax, 6
	mov	rsp, rsp
	add	rsi, rax
	mov	qword ptr [rbp - 0x30], rsi
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	qword ptr [rsi + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rsi + 0x10], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	lea	rdi, [rdi]
	mov	dword ptr [rax + 0x30], ecx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x18], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x38], -1
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1362
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx], rax
.label_1362:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_1360
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_1360:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1363:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4145f0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	lea	rdi, [rdi]
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x30], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	or	rcx, 0x800000
	mov	rbp, rbp
	mov	rdx, rcx
	nop	
	call	fetch_token
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	mov	rsp, rsp
	jne	.label_1370
	mov	qword ptr [rbp - 0x48], 0
	lea	rsi, [rsi]
	jmp	.label_1368
.label_1370:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	rbp, rbp
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x51], r11b
	jne	.label_1371
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 9
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x51], dl
.label_1371:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1367
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1365
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:free_tree
	lea	rdi, [rdi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	postorder
	mov	dword ptr [rbp - 0x58], eax
.label_1365:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rax], 8
.label_1367:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1369
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1366
.label_1369:
	jmp	.label_1368
.label_1368:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 8
	ja	.label_1364
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	shl	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1364:
	xor	eax, eax
	mov	rsp, rsp
	mov	edx, eax
	nop	
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	lea	rdi, [rdi]
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1372
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	nop	
	jmp	.label_1366
.label_1372:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1366:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414870

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x188
	lea	rsi, [rsi]
	mov	eax, 0x20
	nop	
	mov	r9d, eax
	mov	eax, 1
	nop	
	mov	r10d, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x95], 1
	nop	
	mov	rdi, r9
	mov	rsi, r10
	lea	rsi, [rsi]
	call	calloc
	mov	r11d, 0x50
	mov	edi, r11d
	nop	
	mov	r11d, 1
	lea	rsi, [rsi]
	mov	esi, r11d
	nop	
	mov	qword ptr [rbp - 0x50], rax
	call	calloc
	lea	rdi, [rdi]
	mov	bl, 1
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x135], bl
	nop	
	je	.label_1384
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x135], al
.label_1384:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0x135]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1396
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1406
.label_1396:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	cl
	and	cl, 1
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_1414
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 2
	jmp	.label_1378
.label_1414:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x19
	jne	.label_1395
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	rsp, rsp
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x100
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1386
	nop	
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_set
.label_1386:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x94], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1411
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1378
.label_1411:
	jmp	.label_1395
.label_1395:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1420
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	mov	rsp, rsp
	or	ecx, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], ecx
.label_1420:
	jmp	.label_1398
.label_1398:
	lea	rdi, [rbp - 0xa8]
	lea	rdi, [rdi]
	lea	rax, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x108], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x109], 0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	dword ptr [rbp - 0xa8], 3
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x94]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10b, byte ptr [rbp - 0x95]
	and	r10b, 1
	movzx	r11d, r10b
	mov	rbp, rbp
	mov	dword ptr [rsp], r11d
	mov	rsp, rsp
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	mov	rsp, rsp
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1416
	mov	eax, dword ptr [rbp - 0x104]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1378
.label_1416:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x95], 0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	peek_token_bracket
	nop	
	mov	dword ptr [rbp - 0x94], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xa8], 4
	je	.label_1379
	nop	
	cmp	dword ptr [rbp - 0xa8], 2
	mov	rsp, rsp
	je	.label_1379
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 2
	nop	
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1390
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1378
.label_1390:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1405
	lea	rdi, [rbp - 0x120]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x94]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x108], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x118]
	nop	
	and	eax, 0xff
	cmp	eax, 2
	mov	rbp, rbp
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1415
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1378
.label_1415:
	nop	
	mov	eax, dword ptr [rbp - 0x118]
	mov	rsp, rsp
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 0x15
	jne	.label_1383
	mov	rbp, rbp
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x94]
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	eax, dword ptr [rcx + 8]
	mov	rsp, rsp
	and	eax, 0xffffff00
	nop	
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1417
.label_1383:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x109], 1
.label_1417:
	mov	rsp, rsp
	jmp	.label_1405
.label_1405:
	jmp	.label_1379
.label_1379:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x109]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	cmp	ecx, 1
	mov	rsp, rsp
	jne	.label_1408
	lea	rdi, [rbp - 0xb8]
	lea	rdx, [rbp - 0x120]
	mov	eax, 1
	lea	rcx, [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xb8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0x13c], eax
	lea	rdi, [rdi]
	call	parse_bracket_element
	nop	
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1377
	mov	eax, dword ptr [rbp - 0x104]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1378
.label_1377:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	call	peek_token_bracket
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x148], rdi
	nop	
	mov	qword ptr [rbp - 0x150], rsi
	mov	rbp, rbp
	jle	.label_1400
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	nop	
	jmp	.label_1409
.label_1400:
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rcx
	mov	rbp, rbp
	jmp	.label_1409
.label_1409:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x158]
	mov	rbp, rbp
	lea	rcx, [rbp - 0x68]
	nop	
	lea	r8, [rbp - 0xa8]
	mov	rsp, rsp
	lea	r9, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rdx, rax
	lea	rsi, [rsi]
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rsi, [rsi]
	and	r10b, 1
	nop	
	movzx	eax, r10b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1421
	jmp	.label_1378
.label_1421:
	jmp	.label_1388
.label_1408:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa8]
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 4
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x160], rcx
	mov	qword ptr [rbp - 0x168], rdx
	ja	.label_1391
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1401]]
	mov	rbp, rbp
	jmp	rcx
.label_3183:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	esi, eax
	call	bitset_set
	lea	rdi, [rdi]
	jmp	.label_1394
.label_3184:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1410
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 2
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 0
	nop	
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1380
	mov	rbp, rbp
	jmp	.label_1382
.label_1380:
	mov	rax, qword ptr [rbp - 0x128]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_1410:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rsi, rdx
	mov	rbp, rbp
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	nop	
	jmp	.label_1394
.label_3185:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_1413
	jmp	.label_1378
.label_1413:
	jmp	.label_1394
.label_3186:
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1402
	jmp	.label_1378
.label_1402:
	jmp	.label_1394
.label_3187:
	mov	rbp, rbp
	lea	rcx, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	r8, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	mov	r9, qword ptr [rbp - 0x30]
	call	build_charclass
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1404
	jmp	.label_1378
.label_1404:
	jmp	.label_1394
.label_1391:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.5_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	lea	rdi, [rdi]
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_1394:
	jmp	.label_1388
.label_1388:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 2
	nop	
	sete	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	mov	rbp, rbp
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1418
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	lea	rdi, [rdi]
	jmp	.label_1378
.label_1418:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x15
	jne	.label_1387
	jmp	.label_1397
.label_1387:
	jmp	.label_1398
.label_1397:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x81], 1
	je	.label_1399
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_not
.label_1399:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1407
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1407:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	jne	.label_1389
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1389
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x38], 0
	mov	rsp, rsp
	jne	.label_1389
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1389
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1373
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1389
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x20]
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1373
.label_1389:
	mov	rsp, rsp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dil, byte ptr [rsi + 0xb0]
	nop	
	and	dil, 0xfd
	or	dil, 2
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x40], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x170], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x130], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x130], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1412
	jmp	.label_1382
.label_1412:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x134], 0
.label_1376:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1385
	movsxd	rax, dword ptr [rbp - 0x134]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1403
	jmp	.label_1385
.label_1403:
	nop	
	jmp	.label_1422
.label_1422:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x134]
	add	eax, 1
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_1376
.label_1385:
	nop	
	cmp	dword ptr [rbp - 0x134], 4
	mov	rsp, rsp
	jge	.label_1393
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	and	eax, 0xffffff00
	mov	rbp, rbp
	or	eax, 3
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x178]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	nop	
	movsxd	rax, r9d
	mov	rsp, rsp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1419
	nop	
	jmp	.label_1382
.label_1419:
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x130]
	nop	
	call	create_tree
	mov	qword ptr [rbp - 0x90], rax
	nop	
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	nop	
	movsxd	rax, ecx
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1374
	mov	rsp, rsp
	jmp	.label_1382
.label_1374:
	mov	rsp, rsp
	jmp	.label_1392
.label_1393:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x90], rax
.label_1392:
	mov	rbp, rbp
	jmp	.label_1375
.label_1373:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	lea	rsi, [rsi]
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x180], rdi
	lea	rsi, [rsi]
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x180]
	call	create_token_tree
	nop	
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x90], 0
	lea	rdi, [rdi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	movsxd	rax, r9d
	lea	rdi, [rdi]
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1381
	lea	rdi, [rdi]
	jmp	.label_1382
.label_1381:
	jmp	.label_1375
.label_1375:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_1406
.label_1382:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 0xc
.label_1378:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	mov	qword ptr [rbp - 0x10], 0
.label_1406:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsp, 0x188
	nop	
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415670

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rbp, rbp
	and	al, 0xef
	mov	rbp, rbp
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	mov	rsp, rsp
	shr	al, 3
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	nop	
	cmp	ecx, 0
	sete	al
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1428
	mov	eax, 0x87fffffe
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x3ff0000
	nop	
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 0x1f
	mov	rbp, rbp
	shl	rcx, 1
	lea	rdi, [rdi]
	or	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0xc], 2
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], 0x80
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	nop	
	mov	sil, byte ptr [rcx + 0xb0]
	mov	rsp, rsp
	shr	sil, 2
	and	sil, 1
	lea	rdi, [rdi]
	movzx	eax, sil
	lea	rsi, [rsi]
	mov	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_1427
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 8
	mov	ecx, 0x100
	mov	rsp, rsp
	movsxd	rdx, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rdi, 0xb8
	shl	rdx, 3
	lea	rsi, [rsi]
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3c]
	nop	
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	mov	rsp, rsp
	jmp	.label_1426
.label_1427:
	mov	rsp, rsp
	jmp	.label_1428
.label_1428:
	lea	rsi, [rsi]
	jmp	.label_1432
.label_1432:
	mov	rbp, rbp
	jmp	.label_1424
.label_1424:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1426
	mov	dword ptr [rbp - 0x10], 0
.label_1425:
	cmp	dword ptr [rbp - 0x10], 0x40
	jge	.label_1423
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	jne	.label_1433
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x14], 0x5f
	jne	.label_1430
.label_1433:
	lea	rdi, [rdi]
	mov	eax, 1
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	mov	rbp, rbp
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, cl
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_1430:
	lea	rdi, [rdi]
	jmp	.label_1429
.label_1429:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rbp, rbp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x14], eax
	lea	rsi, [rsi]
	jmp	.label_1425
.label_1423:
	mov	rbp, rbp
	jmp	.label_1431
.label_1431:
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_1424
.label_1426:
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415910

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	push	rbx
	mov	rbp, rbp
	sub	rsp, 0x88
	mov	al, r8b
	mov	rbp, rbp
	mov	r8d, 0x20
	mov	r10d, r8d
	mov	r8d, 1
	mov	r11d, r8d
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r9
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	mov	rdi, r10
	mov	rsi, r11
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	bl
	and	bl, 1
	movzx	r8d, bl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1446
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1435
.label_1446:
	nop	
	mov	eax, 0x50
	mov	edi, eax
	mov	rbp, rbp
	mov	eax, 1
	nop	
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x50], rax
	nop	
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1438
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	lea	rdi, [rdi]
	jmp	.label_1435
.label_1438:
	lea	rcx, [rbp - 0x58]
	lea	rsi, [rsi]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x31]
	mov	rbp, rbp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x50]
	mov	dl, al
	mov	rsp, rsp
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	lea	rdi, [rdi]
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	nop	
	mov	r8, qword ptr [rbp - 0x28]
	call	build_charclass
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	lea	rsi, [rsi]
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1447
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	call	free_charset
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jmp	.label_1435
.label_1447:
	mov	rsp, rsp
	jmp	.label_1441
.label_1441:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	byte ptr [rax], 0
	mov	rbp, rbp
	je	.label_1443
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1441
.label_1443:
	test	byte ptr [rbp - 0x31], 1
	lea	rsi, [rsi]
	je	.label_1445
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	call	bitset_not
.label_1445:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1439
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1439:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x88], rdx
	nop	
	mov	rdx, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	sete	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1434
	jmp	.label_1442
.label_1434:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_1444
	mov	rbp, rbp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	nop	
	and	eax, 0xffffff00
	lea	rdi, [rdi]
	or	eax, 6
	nop	
	mov	dword ptr [rbp - 0x68], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dil, byte ptr [rsi + 0xb0]
	lea	rsi, [rsi]
	and	dil, 0xfd
	lea	rsi, [rsi]
	or	dil, 2
	lea	rsi, [rsi]
	mov	byte ptr [rsi + 0xb0], dil
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	call	create_token_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_1440
	mov	rbp, rbp
	jmp	.label_1442
.label_1440:
	lea	rsi, [rsi]
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	call	create_tree
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	mov	rsp, rsp
	movsxd	rax, ecx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1437
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	jmp	.label_1435
.label_1437:
	mov	rbp, rbp
	jmp	.label_1436
.label_1444:
	nop	
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rdi
	jmp	.label_1435
.label_1436:
	jmp	.label_1442
.label_1442:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
.label_1435:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x88
	pop	rbx
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d90

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	lea	rsi, [rsi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0xc0
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	and	eax, 0xff
	lea	rdi, [rdi]
	cmp	eax, 0x17
	jne	.label_1475
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	fetch_number
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1458
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1460
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x2c
	lea	rsi, [rsi]
	jne	.label_1460
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], 0
	jmp	.label_1467
.label_1460:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	dword ptr [rax], 0xa
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1453
.label_1467:
	mov	rsp, rsp
	jmp	.label_1458
.label_1458:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], -2
	mov	rsp, rsp
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1480
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1486
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1483
.label_1486:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 1
	jne	.label_1452
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2c
	jne	.label_1452
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1459
.label_1452:
	lea	rsi, [rsi]
	mov	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1459
.label_1459:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_1483:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
.label_1480:
	lea	rdi, [rdi]
	mov	al, 1
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], -2
	mov	byte ptr [rbp - 0x91], al
	mov	rsp, rsp
	je	.label_1470
	cmp	qword ptr [rbp - 0x60], -2
	lea	rsi, [rsi]
	sete	al
	mov	byte ptr [rbp - 0x91], al
.label_1470:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1479
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x200000
	cmp	rax, 0
	nop	
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1484
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	cmp	ecx, 2
	nop	
	jne	.label_1491
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 9
	jmp	.label_1450
.label_1491:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 0xa
.label_1450:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1453
.label_1484:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 8], rcx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xffffff00
	or	edx, 1
	mov	rbp, rbp
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1453
.label_1479:
	cmp	qword ptr [rbp - 0x60], -1
	mov	rbp, rbp
	je	.label_1472
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x92], al
	jg	.label_1477
.label_1472:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x92], dl
.label_1477:
	nop	
	mov	al, byte ptr [rbp - 0x92]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1488
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1453
.label_1488:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1448
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	jmp	.label_1461
.label_1448:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa0], rax
.label_1461:
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x7fff
	mov	edx, ecx
	cmp	rdx, rax
	setl	sil
	and	sil, 1
	lea	rdi, [rdi]
	movzx	ecx, sil
	nop	
	movsxd	rax, ecx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1451
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1453
.label_1451:
	jmp	.label_1469
.label_1475:
	nop	
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	edi, dword ptr [rsi + 8]
	mov	rbp, rbp
	and	edi, 0xff
	mov	rsp, rsp
	cmp	edi, 0x12
	lea	rsi, [rsi]
	cmove	edx, ecx
	nop	
	movsxd	rsi, edx
	nop	
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	lea	rdi, [rdi]
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x60], rsi
.label_1469:
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	fetch_token
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rbp, rbp
	sete	al
	nop	
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1490
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1453
.label_1490:
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1457
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x60], 0
	nop	
	sete	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa1], al
.label_1457:
	nop	
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1462
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	postorder
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_1453
.label_1462:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1478
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 2
.label_1466:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	jg	.label_1489
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	nop	
	mov	ecx, 0x10
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xa9], r8b
	nop	
	je	.label_1454
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	sete	al
	mov	byte ptr [rbp - 0xa9], al
.label_1454:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1476
	nop	
	jmp	.label_1463
.label_1476:
	lea	rsi, [rsi]
	jmp	.label_1464
.label_1464:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1466
.label_1489:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_1474
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1453
.label_1474:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1482
	jmp	.label_1463
.label_1482:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_1465
.label_1478:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
.label_1465:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x30]
	nop	
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1449
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	call	postorder
	mov	dword ptr [rbp - 0xb0], eax
.label_1449:
	mov	rsp, rsp
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x60], -1
	cmove	eax, ecx
	mov	ecx, eax
	mov	rsp, rsp
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1455
	lea	rsi, [rsi]
	jmp	.label_1463
.label_1455:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	add	rax, 2
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_1481:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_1485
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	lea	rsi, [rsi]
	mov	r8b, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xb1], r8b
	je	.label_1468
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xb1], al
.label_1468:
	mov	al, byte ptr [rbp - 0xb1]
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_1473
	jmp	.label_1463
.label_1473:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	lea	rsi, [rsi]
	movzx	ecx, r8b
	movsxd	rax, ecx
	mov	rbp, rbp
	cmp	rax, 0
	nop	
	je	.label_1471
	nop	
	jmp	.label_1463
.label_1471:
	jmp	.label_1456
.label_1456:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_1481
.label_1485:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1487
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
.label_1487:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_1453
.label_1463:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	dword ptr [rax], 0xc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
.label_1453:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416640

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	jg	.label_1492
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	lea	rdi, [rdi]
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_1500
.label_1492:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], dl
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1505
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	je	.label_1505
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	jne	.label_1505
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 1
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1500
.label_1505:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, 0x5c
	jne	.label_1493
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 1
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1493
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rdi, [rdi]
	jge	.label_1493
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	dl, byte ptr [rcx + rax]
	nop	
	mov	byte ptr [rbp - 0x22], dl
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0x22]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	rsp, rsp
	mov	dword ptr [rax + 8], esi
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1500
.label_1493:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5b
	nop	
	jne	.label_1513
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	nop	
	add	rax, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jge	.label_1497
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x23], dl
	lea	rdi, [rdi]
	jmp	.label_1510
.label_1497:
	mov	byte ptr [rbp - 0x23], 0
.label_1510:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x23]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x28], 2
	movzx	edx, byte ptr [rbp - 0x23]
	mov	esi, edx
	nop	
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1502
	jmp	.label_1499
.label_1499:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x34], eax
	nop	
	je	.label_1495
	lea	rdi, [rdi]
	jmp	.label_1504
.label_1504:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x38], eax
	nop	
	je	.label_1506
	lea	rdi, [rdi]
	jmp	.label_1512
.label_1502:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1507
.label_1506:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	lea	rsi, [rsi]
	mov	dword ptr [rax + 8], ecx
	nop	
	jmp	.label_1507
.label_1495:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	and	rax, 4
	nop	
	cmp	rax, 0
	je	.label_1496
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1507
.label_1496:
	lea	rsi, [rsi]
	jmp	.label_1512
.label_1512:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	lea	rsi, [rsi]
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	byte ptr [rax], dl
	nop	
	mov	dword ptr [rbp - 0x28], 1
.label_1507:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1500
.label_1513:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	mov	rsp, rsp
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	mov	rbp, rbp
	je	.label_1511
	mov	rsp, rsp
	jmp	.label_1501
.label_1501:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	sub	eax, 0x5d
	nop	
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1503
	jmp	.label_1509
.label_1509:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_1508
	lea	rdi, [rdi]
	jmp	.label_1494
.label_1511:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1498
.label_1503:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	nop	
	and	ecx, 0xffffff00
	mov	rbp, rbp
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1498
.label_1508:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	lea	rdi, [rdi]
	mov	dword ptr [rax + 8], ecx
	mov	rsp, rsp
	jmp	.label_1498
.label_1494:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1498:
	mov	dword ptr [rbp - 4], 1
.label_1500:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416a50

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	eax, 1
	nop	
	mov	edx, eax
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	or	r8, qword ptr [rdi + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rax*8], r8
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416ae0

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, byte ptr [rbp + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 1
	jle	.label_1514
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rsi + 8], eax
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1518
.label_1514:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1516
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1516
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x1c
	jne	.label_1517
.label_1516:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	parse_bracket_symbol
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1518
.label_1517:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	lea	rdi, [rdi]
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	nop	
	cmp	rax, 0
	je	.label_1515
	nop	
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1515
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	call	peek_token_bracket
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	and	ecx, 0xff
	lea	rdi, [rdi]
	cmp	ecx, 0x15
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1519
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xb
	lea	rdi, [rdi]
	jmp	.label_1518
.label_1519:
	nop	
	jmp	.label_1515
.label_1515:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 4], 0
.label_1518:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416cc0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, 1
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 2
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x69], al
	je	.label_1522
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x69], al
	je	.label_1522
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 2
	nop	
	mov	byte ptr [rbp - 0x69], al
	je	.label_1522
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 4
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x69], cl
.label_1522:
	mov	al, byte ptr [rbp - 0x69]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1540
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xb
	mov	rbp, rbp
	jmp	.label_1525
.label_1540:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	lea	rdi, [rdi]
	jne	.label_1551
	mov	rsp, rsp
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x6a], al
	lea	rdi, [rdi]
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x6a]
	mov	byte ptr [rbp - 0x6b], dl
	ja	.label_1530
.label_1551:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x6c], cl
	mov	rbp, rbp
	jne	.label_1534
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	nop	
	call	strlen
	mov	rsp, rsp
	cmp	rax, 1
	mov	rbp, rbp
	seta	cl
	mov	byte ptr [rbp - 0x6c], cl
.label_1534:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x6c]
	mov	byte ptr [rbp - 0x6b], al
.label_1530:
	mov	al, byte ptr [rbp - 0x6b]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1553
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1525
.label_1553:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	jne	.label_1529
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax + 8]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x70], ecx
	jmp	.label_1533
.label_1529:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1520
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_1543
.label_1520:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1543
.label_1543:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x74]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], eax
.label_1533:
	mov	eax, dword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	lea	rdi, [rdi]
	jne	.label_1547
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x78], ecx
	mov	rbp, rbp
	jmp	.label_1531
.label_1547:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 3
	nop	
	jne	.label_1538
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	mov	rsp, rsp
	jmp	.label_1541
.label_1538:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x7c], eax
	mov	rsp, rsp
	jmp	.label_1541
.label_1541:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x78], eax
.label_1531:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	dword ptr [rcx], 0
	mov	rsp, rsp
	je	.label_1552
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	mov	rbp, rbp
	jne	.label_1527
.label_1552:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	movzx	edi, cl
	mov	rsp, rsp
	call	parse_byte
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x80], eax
	nop	
	jmp	.label_1539
.label_1527:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x80], ecx
.label_1539:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x48], eax
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx], 0
	je	.label_1545
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_1550
.label_1545:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x84], eax
	mov	rbp, rbp
	jmp	.label_1526
.label_1550:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x84], ecx
.label_1526:
	mov	eax, dword ptr [rbp - 0x84]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x48], -1
	nop	
	je	.label_1535
	cmp	dword ptr [rbp - 0x4c], -1
	lea	rsi, [rsi]
	jne	.label_1532
.label_1535:
	nop	
	mov	dword ptr [rbp - 4], 3
	mov	rbp, rbp
	jmp	.label_1525
.label_1532:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	and	rdx, 0x10000
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x85], cl
	nop	
	je	.label_1548
	mov	eax, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	cmp	eax, dword ptr [rbp - 0x4c]
	mov	rsp, rsp
	seta	cl
	mov	byte ptr [rbp - 0x85], cl
.label_1548:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1549
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1525
.label_1549:
	jmp	.label_1542
.label_1542:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1544
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1546
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	nop	
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	shl	rcx, 2
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	dl, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x86], dl
	je	.label_1537
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x86], al
.label_1537:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x86]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1523
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1525
.label_1523:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rcx], rax
.label_1546:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsp, rsp
	mov	rsi, rdx
	add	rsi, 1
	nop	
	mov	qword ptr [rcx + 0x40], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	dword ptr [rcx + rdx*4], eax
.label_1544:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], 0
.label_1536:
	cmp	dword ptr [rbp - 0x44], 0x100
	mov	rsp, rsp
	jge	.label_1528
	mov	eax, dword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	cmp	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	ja	.label_1524
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	nop	
	cmp	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	ja	.label_1524
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x44]
	call	bitset_set
.label_1524:
	nop	
	jmp	.label_1521
.label_1521:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1536
.label_1528:
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_1525:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417260

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	call	strlen
	cmp	rax, 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1554
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1555
.label_1554:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	mov	esi, ecx
	lea	rdi, [rdi]
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_1555:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4172f0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	setne	r8b
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	movsxd	rax, r9d
	nop	
	cmp	rax, 0
	je	.label_1556
	mov	dword ptr [rbp - 4], 3
	nop	
	jmp	.label_1557
.label_1556:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_set
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_1557:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417390

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	and	rcx, 0x400000
	cmp	rcx, 0
	nop	
	je	.label_1698
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	nop	
	mov	esi, eax
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_1646
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_1
	mov	esi, eax
	nop	
	call	strcmp
	nop	
	cmp	eax, 0
	nop	
	jne	.label_1698
.label_1646:
	movabs	rax, OFFSET FLAT:.str.9_1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
.label_1698:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	sete	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1650
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	shl	rax, 1
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	nop	
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_1614
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1623
.label_1614:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_1650:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	esi, OFFSET FLAT:.str.1_5
	lea	rsi, [rsi]
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_1697
	jmp	.label_1672
.label_1672:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1674
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1721:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1696
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1706
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1706:
	jmp	.label_1720
.label_1720:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1721
.label_1696:
	jmp	.label_1593
.label_1674:
	mov	dword ptr [rbp - 0x3c], 0
.label_1589:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1730
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 8
	cmp	edx, 0
	je	.label_1570
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	call	bitset_set
.label_1570:
	nop	
	jmp	.label_1587
.label_1587:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1589
.label_1730:
	lea	rsi, [rsi]
	jmp	.label_1593
.label_1593:
	jmp	.label_1595
.label_1595:
	mov	rbp, rbp
	jmp	.label_1597
.label_1697:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1606
	lea	rsi, [rsi]
	jmp	.label_1612
.label_1612:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1615
	mov	dword ptr [rbp - 0x3c], 0
.label_1665:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1671
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 2
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1694
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	nop	
	mov	esi, edx
	nop	
	call	bitset_set
.label_1694:
	lea	rdi, [rdi]
	jmp	.label_1661
.label_1661:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1665
.label_1671:
	lea	rsi, [rsi]
	jmp	.label_1668
.label_1615:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1711:
	cmp	dword ptr [rbp - 0x3c], 0x100
	nop	
	jge	.label_1675
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 2
	nop	
	cmp	edx, 0
	nop	
	je	.label_1688
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	call	bitset_set
.label_1688:
	jmp	.label_1708
.label_1708:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1711
.label_1675:
	jmp	.label_1668
.label_1668:
	lea	rsi, [rsi]
	jmp	.label_1716
.label_1716:
	nop	
	jmp	.label_1567
.label_1606:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.8_1
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	cmp	eax, 0
	jne	.label_1722
	lea	rsi, [rsi]
	jmp	.label_1725
.label_1725:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1728
	mov	dword ptr [rbp - 0x3c], 0
.label_1611:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1573
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rbp, rbp
	and	edx, 0x200
	cmp	edx, 0
	je	.label_1586
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1586:
	jmp	.label_1685
.label_1685:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	nop	
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1611
.label_1573:
	jmp	.label_1618
.label_1728:
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1655:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1625
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	qword ptr [rbp - 0x88], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	nop	
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	nop	
	cmp	edx, 0
	je	.label_1639
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	call	bitset_set
.label_1639:
	mov	rsp, rsp
	jmp	.label_1652
.label_1652:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1655
.label_1625:
	lea	rdi, [rdi]
	jmp	.label_1618
.label_1618:
	jmp	.label_1663
.label_1663:
	jmp	.label_1566
.label_1722:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_2
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1673
	mov	rsp, rsp
	jmp	.label_1676
.label_1676:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_1680
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1727:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rbp, rbp
	jge	.label_1700
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x90], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x2000
	lea	rdi, [rdi]
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1715
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1715:
	mov	rbp, rbp
	jmp	.label_1724
.label_1724:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_1727
.label_1700:
	jmp	.label_1561
.label_1680:
	mov	dword ptr [rbp - 0x3c], 0
.label_1600:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1565
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x98], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1687
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1687:
	jmp	.label_1631
.label_1631:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1600
.label_1565:
	jmp	.label_1561
.label_1561:
	nop	
	jmp	.label_1608
.label_1608:
	jmp	.label_1592
.label_1673:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_1
	nop	
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_1578
	nop	
	jmp	.label_1627
.label_1627:
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_1630
	mov	dword ptr [rbp - 0x3c], 0
.label_1681:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1644
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xa0]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_1656
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1656:
	lea	rdi, [rdi]
	jmp	.label_1677
.label_1677:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1681
.label_1644:
	mov	rsp, rsp
	jmp	.label_1613
.label_1630:
	mov	dword ptr [rbp - 0x3c], 0
.label_1719:
	cmp	dword ptr [rbp - 0x3c], 0x100
	lea	rsi, [rsi]
	jge	.label_1695
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x400
	nop	
	cmp	edx, 0
	je	.label_1707
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	call	bitset_set
.label_1707:
	nop	
	jmp	.label_1718
.label_1718:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1719
.label_1695:
	mov	rbp, rbp
	jmp	.label_1613
.label_1613:
	lea	rsi, [rsi]
	jmp	.label_1726
.label_1726:
	jmp	.label_1580
.label_1578:
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	mov	eax, OFFSET FLAT:.str.11_2
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	jne	.label_1564
	nop	
	jmp	.label_1569
.label_1569:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1701
	mov	dword ptr [rbp - 0x3c], 0
.label_1622:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1583
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb0], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0xb0]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	lea	rsi, [rsi]
	cmp	edx, 0
	je	.label_1598
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	lea	rdi, [rdi]
	mov	esi, edx
	lea	rdi, [rdi]
	call	bitset_set
.label_1598:
	lea	rsi, [rsi]
	jmp	.label_1619
.label_1619:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1622
.label_1583:
	mov	rsp, rsp
	jmp	.label_1632
.label_1701:
	mov	dword ptr [rbp - 0x3c], 0
.label_1666:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1636
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1645
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1645:
	jmp	.label_1662
.label_1662:
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1666
.label_1636:
	nop	
	jmp	.label_1632
.label_1632:
	lea	rsi, [rsi]
	jmp	.label_1669
.label_1669:
	mov	rbp, rbp
	jmp	.label_1558
.label_1564:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1682
	lea	rsi, [rsi]
	jmp	.label_1690
.label_1690:
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1693
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1596:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rbp, rbp
	jge	.label_1710
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x4000
	cmp	edx, 0
	nop	
	je	.label_1717
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	mov	rbp, rbp
	call	bitset_set
.label_1717:
	nop	
	jmp	.label_1562
.label_1562:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1596
.label_1710:
	jmp	.label_1571
.label_1693:
	mov	dword ptr [rbp - 0x3c], 0
.label_1607:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1575
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	nop	
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xc8]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 0x4000
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1588
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1588:
	jmp	.label_1605
.label_1605:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_1607
.label_1575:
	jmp	.label_1571
.label_1571:
	jmp	.label_1616
.label_1616:
	mov	rbp, rbp
	jmp	.label_1559
.label_1682:
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	eax, OFFSET FLAT:.str.7_1
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1633
	jmp	.label_1638
.label_1638:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_1640
	mov	dword ptr [rbp - 0x3c], 0
.label_1691:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rsp, rsp
	jge	.label_1648
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd0], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0xd0]
	mov	rsp, rsp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rdi, [rdi]
	and	edx, 0x100
	lea	rdi, [rdi]
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1620
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1620:
	mov	rsp, rsp
	jmp	.label_1686
.label_1686:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1691
.label_1648:
	mov	rbp, rbp
	jmp	.label_1560
.label_1640:
	mov	dword ptr [rbp - 0x3c], 0
.label_1626:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1703
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd8], rax
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd8]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	nop	
	je	.label_1590
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	call	bitset_set
.label_1590:
	jmp	.label_1723
.label_1723:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsp, rsp
	jmp	.label_1626
.label_1703:
	lea	rsi, [rsi]
	jmp	.label_1560
.label_1560:
	jmp	.label_1563
.label_1563:
	jmp	.label_1624
.label_1633:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_1
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_1574
	nop	
	jmp	.label_1579
.label_1579:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1581
	mov	dword ptr [rbp - 0x3c], 0
.label_1679:
	cmp	dword ptr [rbp - 0x3c], 0x100
	nop	
	jge	.label_1670
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	nop	
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1609
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1609:
	mov	rsp, rsp
	jmp	.label_1635
.label_1635:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	add	eax, 1
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1679
.label_1670:
	jmp	.label_1689
.label_1581:
	mov	dword ptr [rbp - 0x3c], 0
.label_1678:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1647
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1660
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	lea	rdi, [rdi]
	call	bitset_set
.label_1660:
	lea	rsi, [rsi]
	jmp	.label_1713
.label_1713:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1678
.label_1647:
	mov	rbp, rbp
	jmp	.label_1689
.label_1689:
	jmp	.label_1692
.label_1692:
	jmp	.label_1604
.label_1574:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	lea	rdi, [rdi]
	mov	esi, eax
	lea	rsi, [rsi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_1704
	mov	rsp, rsp
	jmp	.label_1709
.label_1709:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_1714
	mov	dword ptr [rbp - 0x3c], 0
.label_1585:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1572
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf0], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1729
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	mov	rsp, rsp
	call	bitset_set
.label_1729:
	jmp	.label_1582
.label_1582:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	jmp	.label_1585
.label_1572:
	jmp	.label_1591
.label_1714:
	mov	dword ptr [rbp - 0x3c], 0
.label_1712:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1594
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1628
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1628:
	mov	rbp, rbp
	jmp	.label_1629
.label_1629:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	jmp	.label_1712
.label_1594:
	lea	rdi, [rdi]
	jmp	.label_1591
.label_1591:
	jmp	.label_1642
.label_1642:
	lea	rsi, [rsi]
	jmp	.label_1699
.label_1704:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1649
	mov	rbp, rbp
	jmp	.label_1653
.label_1653:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1657
	nop	
	mov	dword ptr [rbp - 0x3c], 0
.label_1641:
	cmp	dword ptr [rbp - 0x3c], 0x100
	lea	rsi, [rsi]
	jge	.label_1601
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x100], rax
	mov	rbp, rbp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	movzx	edx, word ptr [rax + rcx*2]
	mov	rsp, rsp
	and	edx, 4
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_1684
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	esi, edx
	call	bitset_set
.label_1684:
	jmp	.label_1584
.label_1584:
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1641
.label_1601:
	mov	rsp, rsp
	jmp	.label_1702
.label_1657:
	mov	dword ptr [rbp - 0x3c], 0
.label_1576:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1651
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x108], rax
	nop	
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	lea	rsi, [rsi]
	and	edx, 4
	mov	rsp, rsp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1617
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	call	bitset_set
.label_1617:
	lea	rsi, [rsi]
	jmp	.label_1658
.label_1658:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1576
.label_1651:
	jmp	.label_1702
.label_1702:
	lea	rdi, [rdi]
	jmp	.label_1664
.label_1664:
	lea	rsi, [rsi]
	jmp	.label_1568
.label_1649:
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.16_1
	nop	
	mov	esi, eax
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	nop	
	jne	.label_1683
	mov	rsp, rsp
	jmp	.label_1643
.label_1643:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1603
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x3c], 0
.label_1602:
	cmp	dword ptr [rbp - 0x3c], 0x100
	lea	rdi, [rdi]
	jge	.label_1621
	nop	
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x110], rax
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_1637
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	rsp, rsp
	mov	esi, edx
	lea	rsi, [rsi]
	call	bitset_set
.label_1637:
	jmp	.label_1659
.label_1659:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	jmp	.label_1602
.label_1621:
	jmp	.label_1667
.label_1603:
	mov	dword ptr [rbp - 0x3c], 0
.label_1599:
	cmp	dword ptr [rbp - 0x3c], 0x100
	mov	rbp, rbp
	jge	.label_1705
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x118], rax
	lea	rdi, [rdi]
	call	__ctype_b_loc
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x118]
	lea	rdi, [rdi]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_1654
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rsi, dword ptr [rbp - 0x3c]
	nop	
	call	bitset_set
.label_1654:
	jmp	.label_1577
.label_1577:
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1599
.label_1705:
	nop	
	jmp	.label_1667
.label_1667:
	jmp	.label_1610
.label_1610:
	jmp	.label_1634
.label_1683:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1623
.label_1634:
	mov	rsp, rsp
	jmp	.label_1568
.label_1568:
	jmp	.label_1699
.label_1699:
	jmp	.label_1604
.label_1604:
	lea	rdi, [rdi]
	jmp	.label_1624
.label_1624:
	lea	rsi, [rsi]
	jmp	.label_1559
.label_1559:
	lea	rdi, [rdi]
	jmp	.label_1558
.label_1558:
	jmp	.label_1580
.label_1580:
	lea	rsi, [rsi]
	jmp	.label_1592
.label_1592:
	jmp	.label_1566
.label_1566:
	mov	rbp, rbp
	jmp	.label_1567
.label_1567:
	jmp	.label_1597
.label_1597:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_1623:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x120
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418650

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	dword ptr [rbp - 0xc], 0
.label_1732:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1731
	nop	
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	lea	rdi, [rdi]
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_1732
.label_1731:
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4186c0

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_1733:
	cmp	dword ptr [rbp - 0x14], 4
	mov	rbp, rbp
	jge	.label_1734
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1733
.label_1734:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418730

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rdi, [rdi]
	jne	.label_1735
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1738
.label_1735:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], 1
.label_1740:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	jge	.label_1736
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1737
	mov	rsp, rsp
	jmp	.label_1736
.label_1737:
	jmp	.label_1739
.label_1739:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1740
.label_1736:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_1738:
	mov	eax, dword ptr [rbp - 4]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4187e0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x22], al
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1752
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 7
	mov	rsp, rsp
	jmp	.label_1747
.label_1752:
	nop	
	jmp	.label_1754
.label_1754:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0x20
	lea	rdi, [rdi]
	jl	.label_1741
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1747
.label_1741:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	ecx, 0xff
	lea	rsi, [rsi]
	cmp	ecx, 0x1e
	jne	.label_1749
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	mov	rbp, rbp
	jmp	.label_1744
.label_1749:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x21], sil
.label_1744:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_1755
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1747
.label_1755:
	movzx	eax, byte ptr [rbp - 0x21]
	nop	
	movzx	ecx, byte ptr [rbp - 0x22]
	mov	rbp, rbp
	cmp	eax, ecx
	jne	.label_1751
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	movzx	edx, byte ptr [rcx + rax]
	nop	
	cmp	edx, 0x5d
	lea	rsi, [rsi]
	jne	.label_1751
	jmp	.label_1742
.label_1751:
	mov	al, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1754
.label_1742:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	byte ptr [rcx + rax], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 8]
	mov	rbp, rbp
	mov	esi, edx
	sub	esi, 0x1a
	mov	dword ptr [rbp - 0x2c], edx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1746
	jmp	.label_1750
.label_1750:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	sub	eax, 0x1c
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	je	.label_1753
	nop	
	jmp	.label_1756
.label_1756:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	sub	eax, 0x1e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	je	.label_1743
	mov	rbp, rbp
	jmp	.label_1748
.label_1746:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	dword ptr [rax], 3
	mov	rsp, rsp
	jmp	.label_1745
.label_1753:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 2
	jmp	.label_1745
.label_1743:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 4
	jmp	.label_1745
.label_1748:
	nop	
	jmp	.label_1745
.label_1745:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_1747:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a40

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1757
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], sil
	lea	rsi, [rsi]
	jmp	.label_1759
.label_1757:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	byte ptr [rax + 0x8c], 0
	nop	
	je	.label_1761
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1758
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rcx + rax*4], -1
	nop	
	jne	.label_1758
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, rcx
	mov	rsp, rsp
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1759
.label_1758:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	nop	
	add	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
	nop	
	and	edx, 0xffffff80
	cmp	edx, 0
	je	.label_1760
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	nop	
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1759
.label_1760:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rsp, rsp
	call	re_string_char_size_at
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	mov	cl, al
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], cl
	lea	rsi, [rsi]
	jmp	.label_1759
.label_1761:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x48], rsi
	add	rax, rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dil, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], dil
.label_1759:
	movzx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418c30

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_1762
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 1]
	mov	dword ptr [rbp - 0x14], eax
	mov	rsp, rsp
	jmp	.label_1763
.label_1762:
	movzx	edi, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	call	btowc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
.label_1763:
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x418c90

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], -1
.label_1776:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	al, byte ptr [rdx]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x29], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rdx + 8]
	nop	
	and	ecx, 0xff
	cmp	ecx, 2
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1768
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1766
.label_1768:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rsp, rsp
	cmp	ecx, 0x18
	je	.label_1769
	nop	
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	cmp	eax, 0x2c
	lea	rdi, [rdi]
	jne	.label_1773
.label_1769:
	lea	rsi, [rsi]
	jmp	.label_1764
.label_1773:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1767
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x30
	jl	.label_1767
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x29]
	cmp	eax, ecx
	lea	rsi, [rsi]
	jl	.label_1767
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], -2
	nop	
	jne	.label_1765
.label_1767:
	mov	rax, -2
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1770
.label_1765:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1772
	movzx	eax, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	jmp	.label_1771
.label_1772:
	mov	rsp, rsp
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x28], 0xa
	movzx	eax, byte ptr [rbp - 0x29]
	mov	esi, eax
	add	rdx, rsi
	lea	rsi, [rsi]
	sub	rdx, 0x30
	mov	rbp, rbp
	cmp	rcx, rdx
	lea	rsi, [rsi]
	jge	.label_1774
	mov	eax, 0x8000
	mov	rsp, rsp
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1775
.label_1774:
	lea	rsi, [rsi]
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	edx, ecx
	add	rax, rdx
	lea	rsi, [rsi]
	sub	rax, 0x30
	mov	qword ptr [rbp - 0x48], rax
.label_1775:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1771:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
.label_1770:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1776
.label_1764:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1766:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418e70

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	nop	
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_1786:
	xor	eax, eax
	mov	ecx, eax
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x28
	mov	rsi, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rdx
	nop	
	mov	rdx, rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	create_token_tree
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax], 0
	jne	.label_1784
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1779
.label_1784:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	lea	rsi, [rsi]
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1777
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	jmp	.label_1781
.label_1777:
	mov	qword ptr [rbp - 0x40], 0
.label_1783:
	mov	al, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x49], al
	mov	rbp, rbp
	je	.label_1780
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x49], cl
.label_1780:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	mov	rsp, rsp
	jne	.label_1785
	mov	rbp, rbp
	jmp	.label_1778
.label_1785:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1782
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1779
.label_1782:
	mov	rbp, rbp
	jmp	.label_1783
.label_1778:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	add	rax, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
.label_1781:
	jmp	.label_1786
.label_1779:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419060

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 0x11
	mov	rbp, rbp
	jne	.label_1787
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1787
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_1787:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4190e0

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1792:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1797
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x2c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1788
.label_1797:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1795
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_1791
.label_1795:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_1793:
	mov	al, 1
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], al
	lea	rsi, [rsi]
	je	.label_1790
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x39], cl
.label_1790:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1789
	jmp	.label_1794
.label_1789:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	jne	.label_1796
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_1788
.label_1796:
	jmp	.label_1793
.label_1794:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_1791:
	jmp	.label_1792
.label_1788:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419240

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	lea	rdi, [rdi]
	jne	.label_1798
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	mov	rsp, rsp
	je	.label_1798
	lea	rsi, [rsi]
	mov	eax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rcx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	lea	rsi, [rsi]
	mov	ecx, edx
	nop	
	shl	eax, cl
	nop	
	movsxd	rsi, eax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa0], rsi
	mov	rbp, rbp
	jmp	.label_1799
.label_1798:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 0x11
	mov	rsp, rsp
	jne	.label_1800
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	nop	
	je	.label_1800
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	ecx, 0xff
	cmp	ecx, 0x11
	lea	rsi, [rsi]
	jne	.label_1800
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	je	.label_1802
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1802:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1801
	mov	eax, 1
	nop	
	mov	ecx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rsp, rsp
	mov	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, cl
	lea	rdi, [rdi]
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	rsp, rsp
	mov	qword ptr [rsi + 0xa0], rdx
.label_1801:
	jmp	.label_1800
.label_1800:
	lea	rsi, [rsi]
	jmp	.label_1799
.label_1799:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419450

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	je	.label_1805
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1805
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 8], 0
	je	.label_1803
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_1803:
	nop	
	jmp	.label_1805
.label_1805:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	je	.label_1806
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	nop	
	cmp	ecx, 0x11
	nop	
	jne	.label_1806
	lea	rdi, [rbp - 0x1c]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	call	lower_subexp
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	lea	rsi, [rsi]
	je	.label_1804
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
.label_1804:
	mov	rsp, rsp
	jmp	.label_1806
.label_1806:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4195a0

	.globl calc_first
	.type calc_first, @function
calc_first:
	nop
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x30]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 0x10
	lea	rsi, [rsi]
	jne	.label_1808
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x18], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_1807
.label_1808:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x28]
	nop	
	mov	rdx, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	call	re_dfa_add_node
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rcx + 0x38], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x38], -1
	lea	rdi, [rdi]
	sete	r8b
	mov	rbp, rbp
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	r9d, r8b
	mov	rsp, rsp
	movsxd	rax, r9d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1809
	nop	
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1811
.label_1809:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	nop	
	jne	.label_1810
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rdx]
	mov	rsp, rsp
	mov	esi, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	ecx, 0x3ff
	mov	rsp, rsp
	shl	ecx, 8
	mov	rsp, rsp
	and	esi, 0xfffc00ff
	mov	rbp, rbp
	or	esi, ecx
	mov	dword ptr [rax + 8], esi
.label_1810:
	jmp	.label_1807
.label_1807:
	mov	dword ptr [rbp - 4], 0
.label_1811:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419720

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	je	.label_1812
	nop	
	jmp	.label_1815
.label_1815:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	sub	eax, 0x10
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_1816
	jmp	.label_1814
.label_1812:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1813
.label_1816:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	qword ptr [rcx + 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	nop	
	jmp	.label_1813
.label_1814:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_1817
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x20], rax
.label_1817:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_1818
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + 0x20], rax
.label_1818:
	mov	rbp, rbp
	jmp	.label_1813
.label_1813:
	xor	eax, eax
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419840

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	lea	rsi, [rsi]
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x40], rsi
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	lea	rsi, [rsi]
	ja	.label_1819
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1822]]
	jmp	rcx
.label_4198b7:
	mov	rbp, rbp
	jmp	.label_1823
	.section	.text
	.align	32
	#Procedure 0x4198bf

	.globl sub_4198bf
	.type sub_4198bf, @function
.label_4198bf:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_1825
	jmp	.label_1824
.label_1825:
	movabs	rdi, OFFSET FLAT:.str.17_2
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1824:
	lea	rsi, [rsi]
	jmp	.label_1823
	.section	.text
	.align	32
	#Procedure 0x419909

	.globl sub_419909
	.type sub_419909, @function
.label_419909:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	lea	rsi, [rsi]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0xb0], cl
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1829
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_1832
.label_1829:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_1832:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1831
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1826
.label_1831:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	nop	
	mov	qword ptr [rbp - 0x38], rax
.label_1826:
	cmp	qword ptr [rbp - 0x30], -1
	jle	.label_1833
	jmp	.label_1827
.label_1833:
	movabs	rdi, OFFSET FLAT:.str.18_2
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	mov	rsp, rsp
	call	__assert_fail
.label_1827:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], -1
	mov	rbp, rbp
	jle	.label_1830
	nop	
	jmp	.label_1828
.label_1830:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.19_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	rsp, rsp
	mov	edx, 0x5b0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1828:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_2
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1823
	.section	.text
	.align	32
	#Procedure 0x419a6c

	.globl sub_419a6c
	.type sub_419a6c, @function
.label_419a6c:
	nop	
	.section	.text
	.align	32
	#Procedure 0x419a6d
	.globl sub_419a6d
	.type sub_419a6d, @function
.label_419a6d:

	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
	lea	rdi, [rdi]
	jmp	.label_1823
	.section	.text
	.align	32
	#Procedure 0x419aa2

	.globl sub_419aa2
	.type sub_419aa2, @function
.label_419aa2:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x30]
	and	esi, 0xff
	mov	rbp, rbp
	cmp	esi, 4
	jne	.label_1834
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	nop	
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
.label_1834:
	jmp	.label_1823
.label_1819:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	ecx, 0xff
	and	ecx, 8
	mov	rbp, rbp
	cmp	ecx, 0
	mov	rbp, rbp
	jne	.label_1820
	jmp	.label_1821
.label_1820:
	movabs	rdi, OFFSET FLAT:.str.20_0
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1821:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_1823:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419bb0

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1835:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	jne	.label_1842
	test	byte ptr [rbp - 0x19], 1
	lea	rsi, [rsi]
	jne	.label_1838
	jmp	.label_1843
.label_1838:
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1842:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1837
	mov	rsp, rsp
	jmp	.label_1839
.label_1837:
	lea	rdi, [rbp - 0x38]
	mov	rsp, rsp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x20], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1841
	nop	
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1836
.label_1841:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	jne	.label_1840
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x19], 1
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
.label_1840:
	lea	rsi, [rsi]
	jmp	.label_1839
.label_1839:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1835
.label_1843:
	mov	dword ptr [rbp - 4], 0
.label_1836:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419cf0

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
.label_1852:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	jae	.label_1846
	xor	esi, esi
	mov	rsp, rsp
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edx, eax
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdi, qword ptr [rbp - 0x20], 0x18
	lea	rsi, [rsi]
	add	rcx, rdi
	mov	rdi, rcx
	nop	
	call	memset
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	jmp	.label_1852
.label_1846:
	mov	qword ptr [rbp - 0x18], 0
.label_1849:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	jae	.label_1850
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1845:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1853
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert_last
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1847
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_1848
.label_1847:
	lea	rsi, [rsi]
	jmp	.label_1851
.label_1851:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1845
.label_1853:
	lea	rsi, [rsi]
	jmp	.label_1844
.label_1844:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1849
.label_1850:
	mov	dword ptr [rbp - 4], 0
.label_1848:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x419ea0

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx + 0x38]
	shr	al, 4
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rsp, rsp
	je	.label_1854
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_1854
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax + 0x28], 0x40
	mov	rsp, rsp
	jge	.label_1858
	mov	eax, 1
	lea	rdi, [rdi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x58]
	shl	rsi, cl
	mov	rbp, rbp
	and	rdx, rsi
	lea	rdi, [rdi]
	cmp	rdx, 0
	jne	.label_1854
.label_1858:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1856
.label_1854:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rdx, rcx
	nop	
	mov	ecx, eax
	call	create_tree
	mov	rbp, rbp
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	ecx, 9
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rdx
	mov	rbp, rbp
	call	create_tree
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1857
	nop	
	mov	ecx, 0x10
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rbp, rbp
	jmp	.label_1860
.label_1857:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
.label_1860:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	nop	
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x61], r8b
	lea	rdi, [rdi]
	je	.label_1855
	lea	rsi, [rsi]
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], al
	je	.label_1855
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	mov	byte ptr [rbp - 0x61], al
	je	.label_1855
	cmp	qword ptr [rbp - 0x40], 0
	lea	rdi, [rdi]
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1855:
	nop	
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	rbp, rbp
	movsxd	rdx, ecx
	cmp	rdx, 0
	nop	
	je	.label_1859
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1856
.label_1859:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x28], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 0x30]
	mov	rbp, rbp
	shr	edx, 0x13
	lea	rsi, [rsi]
	and	edx, 1
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 0x30]
	mov	rbp, rbp
	and	edx, 1
	mov	edi, edx
	shl	edi, 0x13
	and	esi, 0xfff7ffff
	mov	rbp, rbp
	or	esi, edi
	mov	dword ptr [rax + 0x30], esi
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x30]
	mov	rsp, rsp
	and	edx, 1
	lea	rdi, [rdi]
	shl	edx, 0x13
	lea	rdi, [rdi]
	and	esi, 0xfff7ffff
	or	esi, edx
	mov	rsp, rsp
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1856:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a170

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 8]
	lea	rdi, [rdi]
	setae	al
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_1866
	nop	
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], 0x18
	cmp	rax, qword ptr [rbp - 0x28]
	setb	dl
	mov	rsp, rsp
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1862
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], -1
	nop	
	jmp	.label_1863
.label_1862:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1861
	mov	qword ptr [rbp - 8], -1
	lea	rsi, [rsi]
	jmp	.label_1863
.label_1861:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rcx, 3
	nop	
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	nop	
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	nop	
	call	realloc
	lea	rdi, [rdi]
	mov	dl, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], dl
	je	.label_1864
	mov	rsp, rsp
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x59], al
	mov	rsp, rsp
	je	.label_1864
	nop	
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x59], al
	nop	
	je	.label_1864
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x59], al
.label_1864:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x59]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	nop	
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1867
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	nop	
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], -1
	mov	rsp, rsp
	jmp	.label_1863
.label_1867:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_1866:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xfffc00ff
	nop	
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x10]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1868
	mov	al, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x5a], al
	mov	rbp, rbp
	jg	.label_1865
.label_1868:
	mov	eax, dword ptr [rbp - 0x10]
	nop	
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	nop	
	mov	byte ptr [rbp - 0x5a], cl
.label_1865:
	mov	al, byte ptr [rbp - 0x5a]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	shl	rdi, 4
	add	rdi, qword ptr [r8]
	mov	rsp, rsp
	mov	r9d, dword ptr [rdi + 8]
	and	edx, 1
	shl	edx, 0x14
	mov	rbp, rbp
	and	r9d, 0xffefffff
	nop	
	or	r9d, edx
	lea	rdi, [rdi]
	mov	dword ptr [rdi + 8], r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [r8 + 0x18]
	nop	
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x28]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rsi
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x6c], ecx
	call	memset
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	mov	rbp, rbp
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x6c]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	nop	
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	mov	rbp, rbp
	add	r8, 1
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x10], r8
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
.label_1863:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a5e0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 2
	mov	rsp, rsp
	mov	rdi, rcx
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	sete	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	nop	
	movzx	r9d, r8b
	mov	rbp, rbp
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1873
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1874
.label_1873:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1870
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	jmp	.label_1871
.label_1870:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jge	.label_1869
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	nop	
	jmp	.label_1872
.label_1869:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1872:
	nop	
	jmp	.label_1871
.label_1871:
	mov	dword ptr [rbp - 4], 0
.label_1874:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a750

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 8
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	mov	rbp, rbp
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1876
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1875
.label_1876:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1875:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a820

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	al, cl
	mov	rbp, rbp
	lea	r8, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x4a], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	imul	rdx, rdx, 0x18
	lea	rdi, [rdi]
	add	rdx, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdx + 8]
	add	rdx, 1
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rbp, rbp
	mov	rsi, rdx
	call	re_node_set_alloc
	nop	
	mov	dword ptr [rbp - 0x28], eax
	nop	
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	nop	
	je	.label_1893
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1879
.label_1893:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], -1
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	mov	rbp, rbp
	cmp	edx, 0
	mov	rsp, rsp
	je	.label_1878
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	nop	
	cmp	qword ptr [rax + 8], 0
	je	.label_1878
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	nop	
	shr	edx, 0x12
	lea	rsi, [rsi]
	and	edx, 1
	cmp	edx, 0
	mov	rsp, rsp
	jne	.label_1878
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [r8]
	mov	rsp, rsp
	mov	r9d, dword ptr [rax + 8]
	shr	r9d, 8
	and	r9d, 0x3ff
	mov	r8d, r9d
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1892
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_1879
.label_1892:
	mov	rsp, rsp
	jmp	.label_1878
.label_1878:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	rbp, rbp
	and	edx, 8
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_1884
	mov	qword ptr [rbp - 0x30], 0
.label_1883:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_1888
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	nop	
	add	rcx, qword ptr [rdx + 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	mov	rsp, rsp
	jne	.label_1882
	mov	byte ptr [rbp - 0x4a], 1
	lea	rsi, [rsi]
	jmp	.label_1886
.label_1882:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1881
	nop	
	lea	rdi, [rbp - 0x68]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	call	calc_eclosure_iter
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rdx, eax
	nop	
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_1877
	mov	eax, dword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1879
.label_1877:
	jmp	.label_1890
.label_1881:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x58], rax
.label_1890:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rbp - 0x68]
	mov	rsp, rsp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_1891
	mov	eax, dword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_1879
.label_1891:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1889
	nop	
	mov	byte ptr [rbp - 0x4a], 1
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_1889:
	jmp	.label_1886
.label_1886:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1883
.label_1888:
	jmp	.label_1884
.label_1884:
	lea	rdi, [rbp - 0x48]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	nop	
	je	.label_1885
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1879
.label_1885:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_1880
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1880
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1887
.label_1880:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
.label_1887:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 4], 0
.label_1879:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ad00

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 8], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rsi, 3
	mov	rbp, rbp
	mov	rdi, rsi
	mov	rbp, rbp
	call	malloc
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1894
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1895
.label_1894:
	mov	dword ptr [rbp - 4], 0
.label_1895:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41adb0

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], r8d
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x48], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
.label_1907:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	cmp	edx, 4
	jne	.label_1918
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	nop	
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	nop	
	and	r8b, 1
	mov	rbp, rbp
	movzx	edx, r8b
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_1917
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_1904
.label_1917:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1897
	nop	
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1904
.label_1897:
	jmp	.label_1911
.label_1918:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1910
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rdi, [rdi]
	jmp	.label_1914
.label_1910:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_1901
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jne	.label_1898
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	je	.label_1898
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	nop	
	movsxd	rcx, edx
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_1909
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1904
.label_1909:
	lea	rdi, [rdi]
	jmp	.label_1914
.label_1898:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x48], edx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	mov	rsp, rsp
	call	duplicate_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	nop	
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1899
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1904
.label_1899:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1902
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_1904
.label_1902:
	lea	rdi, [rdi]
	jmp	.label_1900
.label_1901:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	nop	
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	search_duplicated_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x58], -1
	mov	rsp, rsp
	jne	.label_1905
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	cl
	lea	rsi, [rsi]
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_1912
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1904
.label_1912:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x28]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1908
	nop	
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_1904
.label_1908:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	r8d, dword ptr [rbp - 0x48]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	setne	r9b
	mov	rbp, rbp
	and	r9b, 1
	movzx	eax, r9b
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_1896
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_1904
.label_1896:
	jmp	.label_1906
.label_1905:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x28]
	nop	
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_insert
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_1916
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1904
.label_1916:
	jmp	.label_1906
.label_1906:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	nop	
	call	duplicate_node
	nop	
	mov	qword ptr [rbp - 0x58], rax
	nop	
	cmp	qword ptr [rbp - 0x58], -1
	lea	rdi, [rdi]
	sete	r8b
	nop	
	and	r8b, 1
	movzx	edx, r8b
	lea	rsi, [rsi]
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_1915
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_1904
.label_1915:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rsp, rsp
	add	rax, rcx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	nop	
	call	re_node_set_insert
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1913
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1904
.label_1913:
	mov	rbp, rbp
	jmp	.label_1900
.label_1900:
	jmp	.label_1903
.label_1903:
	lea	rdi, [rdi]
	jmp	.label_1911
.label_1911:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1907
.label_1914:
	mov	dword ptr [rbp - 4], 0
.label_1904:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b450

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1926
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1938
.label_1926:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1922
.label_1938:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx + 8]
	lea	rdi, [rdi]
	cmp	rax, rcx
	jge	.label_1928
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	shl	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1925
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_1922
.label_1925:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
.label_1928:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_1934
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	shl	rdx, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1922
.label_1934:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	shl	rcx, 1
	nop	
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	nop	
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1935:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x49], cl
	jl	.label_1939
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	setge	al
	nop	
	mov	byte ptr [rbp - 0x49], al
.label_1939:
	mov	al, byte ptr [rbp - 0x49]
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_1932
	jmp	.label_1929
.label_1932:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1937
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_1919
.label_1937:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_1924
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	lea	rdi, [rdi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	qword ptr [rdx + rcx*8 - 8], rax
	nop	
	jmp	.label_1921
.label_1924:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1921:
	mov	rbp, rbp
	jmp	.label_1919
.label_1919:
	mov	rsp, rsp
	jmp	.label_1935
.label_1929:
	cmp	qword ptr [rbp - 0x20], 0
	mov	rsp, rsp
	jl	.label_1933
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	nop	
	shl	rdx, 3
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
.label_1933:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	shl	rcx, 1
	lea	rsi, [rsi]
	add	rax, rcx
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1927
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1922
.label_1927:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1930:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_1923
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, rdx
	mov	rsp, rsp
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	nop	
	add	rcx, rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1931
	jmp	.label_1936
.label_1931:
	lea	rdi, [rdi]
	jmp	.label_1920
.label_1923:
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_1940
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	lea	rdi, [rdi]
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1936
.label_1940:
	lea	rsi, [rsi]
	jmp	.label_1920
.label_1920:
	mov	rsp, rsp
	jmp	.label_1930
.label_1936:
	nop	
	mov	dword ptr [rbp - 4], 0
.label_1922:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b9b0

	.globl re_node_set_insert
	.type re_node_set_insert, @function
re_node_set_insert:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi], 0
	jne	.label_1946
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	re_node_set_init_1
	cmp	eax, 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	mov	rbp, rbp
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_1941
.label_1946:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jne	.label_1945
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1941
.label_1945:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1948
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1951
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1941
.label_1951:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
.label_1948:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx]
	jge	.label_1942
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
.label_1947:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x20], 0
	nop	
	jle	.label_1949
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_1947
.label_1949:
	jmp	.label_1944
.label_1942:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1943:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x18]
	jle	.label_1950
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1943
.label_1950:
	jmp	.label_1944
.label_1944:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 8]
	nop	
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
.label_1941:
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bc60

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x14], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	shl	rsi, 4
	nop	
	add	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdx, qword ptr [rsi + 8]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_dfa_add_node
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	lea	rsi, [rsi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_1952
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	esi, dword ptr [rcx + 8]
	and	eax, 0x3ff
	shl	eax, 8
	nop	
	and	esi, 0xfffc00ff
	nop	
	or	esi, eax
	mov	rsp, rsp
	mov	dword ptr [rcx + 8], esi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	mov	rbp, rbp
	shr	eax, 8
	and	eax, 0x3ff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	lea	rdi, [rdi]
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	lea	rdi, [rdi]
	or	esi, eax
	mov	eax, dword ptr [rcx + 8]
	and	esi, 0x3ff
	lea	rsi, [rsi]
	shl	esi, 8
	lea	rsi, [rsi]
	and	eax, 0xfffc00ff
	lea	rdi, [rdi]
	or	eax, esi
	lea	rsi, [rsi]
	mov	dword ptr [rcx + 8], eax
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	mov	rbp, rbp
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xfffbffff
	lea	rdi, [rdi]
	or	eax, 0x40000
	mov	rbp, rbp
	mov	dword ptr [rcx + 8], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdi + 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rdi + rdx*8], rcx
.label_1952:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bde0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_1955:
	lea	rdi, [rdi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	mov	rbp, rbp
	je	.label_1954
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 0x29], al
.label_1954:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	nop	
	jne	.label_1956
	jmp	.label_1959
.label_1956:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1953
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rcx, 4
	nop	
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	lea	rsi, [rsi]
	shr	esi, 8
	lea	rdi, [rdi]
	and	esi, 0x3ff
	lea	rsi, [rsi]
	cmp	eax, esi
	jne	.label_1953
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_1958
.label_1953:
	jmp	.label_1957
.label_1957:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	jmp	.label_1955
.label_1959:
	mov	qword ptr [rbp - 8], -1
.label_1958:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bf00

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1960
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	nop	
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	lea	rsi, [rsi]
	movsxd	rax, r8d
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_1961
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1962
.label_1961:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1960:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rsi, rdx
	nop	
	add	rsi, 1
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 1
.label_1962:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x20
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c010

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1963
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	nop	
	je	.label_1964
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_1965
.label_1964:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 8]
	mov	rsp, rsp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memcpy
	jmp	.label_1966
.label_1963:
	xor	esi, esi
	mov	rbp, rbp
	mov	eax, 0x18
	mov	rbp, rbp
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	memset
.label_1966:
	mov	dword ptr [rbp - 4], 0
.label_1965:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c140

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + 8], 0
	mov	rbp, rbp
	jg	.label_1967
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1971
.label_1967:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	nop	
	mov	qword ptr [rbp - 0x28], rax
.label_1973:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jae	.label_1972
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1969
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1974
.label_1969:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1974:
	lea	rdi, [rdi]
	jmp	.label_1973
.label_1972:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	jne	.label_1968
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1970
.label_1968:
	mov	rbp, rbp
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rsp, rsp
	jmp	.label_1970
.label_1970:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1971:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c270

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x50
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	mov	rsp, rsp
	jne	.label_1981
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1977
.label_1981:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x24]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	and	rdi, qword ptr [rcx + 0x88]
	nop	
	imul	rcx, rdi, 0x18
	nop	
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1978:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	jge	.label_1979
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rax, qword ptr [rax]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jne	.label_1976
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_1976
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	re_node_set_compare
	test	al, 1
	mov	rsp, rsp
	jne	.label_1980
	jmp	.label_1976
.label_1980:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	lea	rsi, [rsi]
	jmp	.label_1977
.label_1976:
	mov	rsp, rsp
	jmp	.label_1975
.label_1975:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1978
.label_1979:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	mov	rsp, rsp
	sete	r8b
	and	r8b, 1
	mov	rsp, rsp
	movzx	edx, r8b
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1982
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_1982:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_1977:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c430

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	nop	
	mov	esi, dword ptr [rbp - 0xc]
	mov	eax, esi
	add	rdi, rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_1984:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1983
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1984
.label_1983:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c4c0

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_1985
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_1985
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	je	.label_1989
.label_1985:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1990
.label_1989:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1988:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_1986
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_1987
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_1990
.label_1987:
	lea	rsi, [rsi]
	jmp	.label_1988
.label_1986:
	mov	byte ptr [rbp - 1], 1
.label_1990:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c5a0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x60
	nop	
	mov	eax, 0x70
	mov	r8d, eax
	mov	eax, 1
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x38], 0
	lea	rdi, [rdi]
	mov	rdi, r8
	mov	rsi, r9
	lea	rdi, [rdi]
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x48], 0
	sete	r10b
	and	r10b, 1
	nop	
	movzx	edx, r10b
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2006
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1995
.label_2006:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2001
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_1995
.label_2001:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	nop	
	and	dl, 0xf
	mov	rbp, rbp
	and	sil, 0xf0
	or	sil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rcx, 8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_1992:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2003
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x54], esi
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	esi, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	esi, 8
	mov	rsp, rsp
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x58], esi
	cmp	dword ptr [rbp - 0x54], 1
	mov	rbp, rbp
	jne	.label_1994
	cmp	dword ptr [rbp - 0x58], 0
	jne	.label_1994
	jmp	.label_1998
.label_1994:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	mov	rsp, rsp
	and	ecx, 1
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	dl, byte ptr [rax + 0x68]
	nop	
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	or	esi, ecx
	mov	rbp, rbp
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], dil
	nop	
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_2004
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	nop	
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_1997
.label_2004:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 4
	jne	.label_2000
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	lea	rsi, [rsi]
	and	cl, 0xbf
	mov	rsp, rsp
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_2000:
	lea	rdi, [rdi]
	jmp	.label_1997
.label_1997:
	cmp	dword ptr [rbp - 0x58], 0
	nop	
	je	.label_2007
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rcx, 8
	nop	
	cmp	rax, rcx
	jne	.label_2010
	mov	eax, 0x18
	nop	
	mov	edi, eax
	mov	rbp, rbp
	call	malloc
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	cmp	qword ptr [rax + 0x50], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	nop	
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2009
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	free_state
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_1995
.label_2009:
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_1993
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_1995
.label_1993:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	and	cl, 0x7f
	mov	rbp, rbp
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_2010:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2002
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	je	.label_1991
.label_2002:
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2008
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_1991
.label_2008:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	and	eax, 0x10
	cmp	eax, 0
	je	.label_1996
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1991
.label_1996:
	mov	eax, dword ptr [rbp - 0x58]
	mov	rbp, rbp
	and	eax, 0x40
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_1999
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_1999
.label_1991:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1999:
	jmp	.label_2007
.label_2007:
	jmp	.label_1998
.label_1998:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_1992
.label_2003:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x48]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2005
	nop	
	mov	rdi, qword ptr [rbp - 0x48]
	nop	
	call	free_state
	mov	qword ptr [rbp - 0x48], 0
.label_2005:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1995:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ca40

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jl	.label_2011
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jl	.label_2014
.label_2011:
	mov	rsp, rsp
	jmp	.label_2013
.label_2014:
	nop	
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rax + 8], rcx
.label_2012:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2013
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2012
.label_2013:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41caf0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	mov	rsp, rsp
	call	re_node_set_alloc
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rsp, rsp
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2022
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2017
.label_2022:
	mov	qword ptr [rbp - 0x38], 0
.label_2023:
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2015
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	nop	
	jne	.label_2019
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_2018
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2017
.label_2018:
	lea	rsi, [rsi]
	jmp	.label_2019
.label_2019:
	jmp	.label_2016
.label_2016:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_2023
.label_2015:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	nop	
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	mov	rsp, rsp
	setle	sil
	and	sil, 1
	movzx	edi, sil
	mov	rbp, rbp
	movsxd	rax, edi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2020
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rsp, rsp
	add	rax, 2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2021
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_2017
.label_2021:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
.label_2020:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rbp, rbp
	mov	rsi, rdx
	add	rsi, 1
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rsi
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 4], 0
.label_2017:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cd70

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], 1
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rdx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rdx
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2036
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rdi + 8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2027
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_2025
.label_2027:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rax, 3
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2035
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2025
.label_2035:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	jmp	.label_2031
.label_2036:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_2029
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	mov	rsp, rsp
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	nop	
	je	.label_2032
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	lea	rdi, [rdi]
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2037
	nop	
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2025
.label_2037:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	nop	
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2040
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2025
.label_2040:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
.label_2032:
	mov	rsp, rsp
	jmp	.label_2041
.label_2029:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 2
	mov	rsp, rsp
	jne	.label_2026
	mov	rbp, rbp
	jmp	.label_2030
.label_2026:
	movabs	rdi, OFFSET FLAT:.str.23_0
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.22_0
	lea	rsi, [rsi]
	mov	edx, 0x1f9
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	mov	rbp, rbp
	call	__assert_fail
.label_2030:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jb	.label_2028
	jmp	.label_2033
.label_2028:
	movabs	rdi, OFFSET FLAT:.str.24
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_2033:
	mov	dword ptr [rbp - 0x28], 2
.label_2041:
	nop	
	jmp	.label_2031
.label_2031:
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2039:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_2034
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2039
.label_2034:
	lea	rsi, [rsi]
	jmp	.label_2038
.label_2038:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	mov	rbp, rbp
	jae	.label_2024
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2038
.label_2024:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_2025:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d160

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x70
	nop	
	mov	al, r9b
	mov	rsp, rsp
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r10
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	mov	rbp, rbp
	cmp	rcx, rdx
	jge	.label_2042
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
.label_2042:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2046
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	lea	rdi, [rdi]
	jmp	.label_2051
.label_2046:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
.label_2051:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rbp - 0x31]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x50]
	call	re_string_realloc_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	r10b
	lea	rdi, [rdi]
	and	r10b, 1
	mov	rsp, rsp
	movzx	eax, r10b
	nop	
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2045
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2050
.label_2045:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0xb0]
	mov	rsp, rsp
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	rsp, rsp
	mov	dl, sil
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8e], dl
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	nop	
	je	.label_2044
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_2043
.label_2044:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x60], rax
.label_2043:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movzx	edx, byte ptr [rax + 0x8b]
	lea	rsi, [rsi]
	cmp	edx, 0
	lea	rdi, [rdi]
	jne	.label_2049
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2047
.label_2049:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_2048
.label_2047:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_2048:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_2050:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d390

	.globl match_ctx_init
	.type match_ctx_init, @function
match_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0xa0], esi
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0xa8], -1
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_2055
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], 0x28
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_2056
	movabs	rax, 0x7fffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2054
.label_2056:
	nop	
	mov	rax, -1
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_2054:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2057
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rsp, rsp
	jmp	.label_2053
.label_2057:
	imul	rdi, qword ptr [rbp - 0x20], 0x28
	lea	rsi, [rsi]
	call	malloc
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	mov	rsp, rsp
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xd8], 0
	nop	
	mov	byte ptr [rbp - 0x39], cl
	je	.label_2058
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], cl
.label_2058:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2052
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2053
.label_2052:
	jmp	.label_2055
.label_2055:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rax + 0xe0], 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0xf0], rax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_2053:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d560

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	dword ptr [rbp - 0x1c], edx
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0x18]
	setle	al
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_2088
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	sub	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2109
.label_2088:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_2113
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_2113:
	mov	eax, 6
	lea	rsi, [rsi]
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rsi + 0x58], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + 0x30], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x28], 0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], 0
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x1c]
	and	edi, 1
	mov	rsp, rsp
	cmp	edi, 0
	mov	rbp, rbp
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_2135
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2135:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
.label_2109:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	mov	rbp, rbp
	setne	al
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2120
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2129
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2063
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x30]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
.label_2130:
	nop	
	mov	eax, 2
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, rdx
	nop	
	cqo	
	idiv	rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jle	.label_2082
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_2105
.label_2082:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	nop	
	jge	.label_2108
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2099
.label_2108:
	jmp	.label_2126
.label_2099:
	jmp	.label_2105
.label_2105:
	mov	rsp, rsp
	jmp	.label_2128
.label_2128:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	jl	.label_2130
.label_2126:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2136
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2136:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_2078
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2078
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2078
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rsp, rsp
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	nop	
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_2094:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2123
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2094
.label_2123:
	lea	rsi, [rsi]
	jmp	.label_2061
.label_2078:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x18]
	nop	
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_2087:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0xad], cl
	jle	.label_2059
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0xad], dl
.label_2059:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xad]
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_2075
	mov	rsp, rsp
	jmp	.label_2084
.label_2075:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_2087
.label_2084:
	jmp	.label_2117
.label_2117:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2081
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	cmp	dword ptr [rcx + rax*4], -1
	lea	rdi, [rdi]
	je	.label_2103
	jmp	.label_2081
.label_2103:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2117
.label_2081:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rdi, [rdi]
	jne	.label_2122
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	jmp	.label_2092
.label_2122:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x30], 0
	mov	rbp, rbp
	je	.label_2118
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], 0
.label_2074:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rbp, rbp
	jge	.label_2076
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_2074
.label_2076:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_2118:
	lea	rsi, [rsi]
	jmp	.label_2092
.label_2092:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_2061:
	jmp	.label_2125
.label_2063:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	call	re_string_context_at
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	lea	rsi, [rsi]
	jle	.label_2104
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rdx, 2
	add	rcx, rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	memmove
.label_2104:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2083
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, rax
	mov	rbp, rbp
	mov	rdx, rcx
	mov	rsp, rsp
	call	memmove
.label_2083:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x38], rdx
.label_2125:
	lea	rdi, [rdi]
	jmp	.label_2112
.label_2129:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	lea	rdi, [rdi]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2091
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	nop	
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	byte ptr [rax + 0x8c], 0
.label_2091:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x30], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	mov	rsp, rsp
	jle	.label_2089
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x89], 0
	mov	rbp, rbp
	je	.label_2095
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rdx, dword ptr [rdx + 0x90]
	lea	rdi, [rdi]
	sub	rcx, rdx
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_2107
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
.label_2107:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
.label_2086:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	jb	.label_2066
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	nop	
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_2064
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	nop	
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2080
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], 6
	lea	rsi, [rsi]
	jge	.label_2115
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	jmp	.label_2114
.label_2115:
	nop	
	mov	eax, 6
	mov	ecx, eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_2114
.label_2114:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa4], ecx
.label_2062:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	add	eax, -1
	nop	
	mov	dword ptr [rbp - 0xa4], eax
	cmp	eax, 0
	mov	rbp, rbp
	jl	.label_2131
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x8e], sil
	nop	
	jmp	.label_2062
.label_2131:
	lea	rax, [rbp - 0x8e]
	mov	qword ptr [rbp - 0xa0], rax
.label_2080:
	lea	rdi, [rbp - 0x7c]
	mov	rbp, rbp
	lea	rax, [rbp - 0x78]
	mov	rsp, rsp
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc0], rdi
	lea	rsi, [rsi]
	mov	rdi, r8
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xc8], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xc8]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	ja	.label_2116
	cmp	qword ptr [rbp - 0x98], -2
	jae	.label_2116
	mov	rbp, rbp
	xor	esi, esi
	lea	rsi, [rsi]
	mov	eax, 8
	mov	edx, eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rcx, 0x20
	mov	rsp, rsp
	mov	rdi, rcx
	nop	
	call	memset
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	sub	rdx, rdi
	mov	rsp, rsp
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + 0x30], rcx
	nop	
	mov	eax, dword ptr [rbp - 0x7c]
	nop	
	mov	dword ptr [rbp - 0x54], eax
.label_2116:
	mov	rsp, rsp
	jmp	.label_2066
.label_2064:
	jmp	.label_2085
.label_2085:
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	nop	
	jmp	.label_2086
.label_2066:
	mov	rbp, rbp
	jmp	.label_2095
.label_2095:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_2098
	mov	rbp, rbp
	lea	rdx, [rbp - 0x54]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rax
.label_2098:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], -1
	nop	
	jne	.label_2110
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, 1
	nop	
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	nop	
	call	re_string_context_at
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rsi + 0x70], eax
	lea	rdi, [rdi]
	jmp	.label_2124
.label_2110:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rax + 0x8e]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	ecx, dl
	nop	
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2068
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 0x54]
	lea	rdi, [rdi]
	call	iswalnum
	cmp	eax, 0
	jne	.label_2119
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], 0x5f
	jne	.label_2068
.label_2119:
	lea	rdi, [rdi]
	mov	eax, 1
	nop	
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_2073
.label_2068:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rsi, [rsi]
	mov	cl, al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x54], 0xa
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], cl
	mov	rbp, rbp
	jne	.label_2079
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xcd], dl
.label_2079:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xcd]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	edx, 2
	mov	rsp, rsp
	test	al, 1
	cmovne	ecx, edx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xcc], ecx
.label_2073:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	dword ptr [rcx + 0x70], eax
.label_2124:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x30], 0
	mov	rsp, rsp
	je	.label_2090
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
.label_2133:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	nop	
	jge	.label_2072
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2133
.label_2072:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_2067
	nop	
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rax + 0x30]
	mov	rbp, rbp
	call	memset
.label_2067:
	jmp	.label_2090
.label_2090:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	lea	rsi, [rsi]
	jmp	.label_2096
.label_2089:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa8], edx
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2100
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
.label_2100:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0xa8]
	lea	rdi, [rdi]
	call	bitset_contain
	lea	rsi, [rsi]
	test	al, 1
	jne	.label_2060
	mov	rbp, rbp
	jmp	.label_2097
.label_2060:
	mov	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	lea	rdi, [rdi]
	jmp	.label_2077
.label_2097:
	xor	eax, eax
	lea	rdi, [rdi]
	mov	cl, al
	nop	
	cmp	dword ptr [rbp - 0xa8], 0xa
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xd5], cl
	lea	rdi, [rdi]
	jne	.label_2069
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rsp, rsp
	setne	dl
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xd5], dl
.label_2069:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xd5]
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	nop	
	mov	dword ptr [rbp - 0xd4], ecx
.label_2077:
	mov	eax, dword ptr [rbp - 0xd4]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	dword ptr [rcx + 0x70], eax
.label_2096:
	jmp	.label_2112
.label_2112:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	lea	rdi, [rdi]
	cmp	rax, 0
	nop	
	jne	.label_2106
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
.label_2106:
	jmp	.label_2120
.label_2120:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rax + 0x90], 1
	mov	rbp, rbp
	jle	.label_2127
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x88], 0
	lea	rdi, [rdi]
	je	.label_2070
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_2134
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2101
.label_2134:
	nop	
	jmp	.label_2102
.label_2070:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
.label_2102:
	mov	rsp, rsp
	jmp	.label_2071
.label_2127:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2111
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	mov	rbp, rbp
	je	.label_2121
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	build_upper_buffer
	mov	rsp, rsp
	jmp	.label_2093
.label_2121:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x78], 0
	mov	rbp, rbp
	je	.label_2132
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	re_string_translate_buffer
.label_2132:
	mov	rbp, rbp
	jmp	.label_2093
.label_2093:
	jmp	.label_2065
.label_2111:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx + 0x30], rax
.label_2065:
	mov	rbp, rbp
	jmp	.label_2071
.label_2071:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 4], 0
.label_2101:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	lea	rdi, [rdi]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e560

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x5c]
	mov	qword ptr [rbp - 0x40], rdi
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	nop	
	mov	qword ptr [rbp - 0x50], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], -1
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rdx
	cmp	qword ptr [rbp - 0x50], 0
	setne	al
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], al
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x90], rdx
	mov	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rcx + 0x48]
	lea	rdi, [rdi]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_2162
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	mov	rbp, rbp
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
	nop	
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_2158
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2138
.label_2158:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_2170
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_2138
.label_2170:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2172
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2172
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x60]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2138
.label_2172:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	lea	rdi, [rdi]
	cmp	eax, 0
	nop	
	je	.label_2179
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2138
.label_2179:
	mov	eax, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	and	eax, 4
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2145
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rax + 0x50]
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_2138
.label_2145:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2138
.label_2162:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
.label_2138:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2150
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0xc
	mov	rbp, rbp
	jne	.label_2171
	jmp	.label_2173
.label_2171:
	movabs	rdi, OFFSET FLAT:.str.25
	nop	
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2173:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2137
.label_2150:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2148
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2139
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	edx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x5c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2163
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_2137
.label_2163:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	mov	rsp, rsp
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2143
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	nop	
	cmp	rsi, 0
	je	.label_2176
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2137
.label_2176:
	nop	
	jmp	.label_2143
.label_2143:
	jmp	.label_2139
.label_2139:
	mov	rsp, rsp
	jmp	.label_2148
.label_2148:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	mov	edx, edx
	mov	rsp, rsp
	mov	eax, edx
	cmp	rax, 0
	je	.label_2151
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	mov	rbp, rbp
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2159
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x78]
	call	check_halt_state_context
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2167
.label_2159:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x41], 1
	mov	rsp, rsp
	jne	.label_2169
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2137
.label_2169:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	rbp, rbp
	jmp	.label_2167
.label_2167:
	jmp	.label_2151
.label_2151:
	lea	rdi, [rdi]
	jmp	.label_2156
.label_2156:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x68]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x48]
	lea	rsi, [rsi]
	setle	dl
	lea	rdi, [rdi]
	xor	dl, 0xff
	lea	rsi, [rsi]
	test	dl, 1
	mov	rsp, rsp
	jne	.label_2177
	lea	rdi, [rdi]
	jmp	.label_2140
.label_2177:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2142
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2164
.label_2142:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	setge	dl
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2146
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2146
.label_2164:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x5c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x5c], 0
	nop	
	setne	dl
	nop	
	and	dl, 1
	lea	rsi, [rsi]
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2178
	cmp	dword ptr [rbp - 0x5c], 0xc
	lea	rsi, [rsi]
	jne	.label_2144
	mov	rsp, rsp
	jmp	.label_2149
.label_2144:
	nop	
	movabs	rdi, OFFSET FLAT:.str.25
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	nop	
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	lea	rdi, [rdi]
	call	__assert_fail
.label_2149:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], -2
	mov	rbp, rbp
	jmp	.label_2137
.label_2178:
	nop	
	jmp	.label_2146
.label_2146:
	nop	
	lea	rdi, [rbp - 0x5c]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	transit_state
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2168
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	call	merge_state_with_log
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rax
.label_2168:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	jne	.label_2160
	cmp	dword ptr [rbp - 0x5c], 0
	setne	al
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2175
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2137
.label_2175:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2147
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2141
	nop	
	test	byte ptr [rbp - 0x41], 1
	je	.label_2147
.label_2141:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x5c]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	call	find_recover_state
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2154
.label_2147:
	lea	rsi, [rsi]
	jmp	.label_2140
.label_2154:
	mov	rsp, rsp
	jmp	.label_2160
.label_2160:
	test	byte ptr [rbp - 0x81], 1
	je	.label_2161
	mov	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_2165
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2166
.label_2165:
	mov	byte ptr [rbp - 0x81], 0
.label_2166:
	lea	rsi, [rsi]
	jmp	.label_2161
.label_2161:
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	nop	
	shr	cl, 4
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	nop	
	cmp	edx, 0
	je	.label_2155
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	mov	rsp, rsp
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2174
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2153
.label_2174:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	qword ptr [rbp - 0x50], 0
	test	byte ptr [rbp - 0x41], 1
	lea	rsi, [rsi]
	jne	.label_2152
	jmp	.label_2140
.label_2152:
	jmp	.label_2153
.label_2153:
	nop	
	jmp	.label_2155
.label_2155:
	jmp	.label_2156
.label_2140:
	cmp	qword ptr [rbp - 0x50], 0
	mov	rbp, rbp
	je	.label_2157
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
.label_2157:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
.label_2137:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0xa0
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eda0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_2185:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2180
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	edx, dword ptr [rbp - 0x2c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_2184
	jmp	.label_2181
.label_2184:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2183
.label_2181:
	mov	rsp, rsp
	jmp	.label_2182
.label_2182:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2185
.label_2180:
	mov	qword ptr [rbp - 8], 0
.label_2183:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eea0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rbp, rbp
	movabs	rax, 0x1fffffffffffffff
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 0x20], rdi
	cmp	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	setbe	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_2191
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2192
.label_2191:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2197
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x2c], 0xc
	mov	rbp, rbp
	jmp	.label_2188
.label_2197:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x98], 0
	mov	rsp, rsp
	je	.label_2186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	call	malloc
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2195
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2188
.label_2195:
	lea	rdi, [rdi]
	jmp	.label_2189
.label_2189:
	lea	rdi, [rbp - 0x78]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	shl	rcx, 3
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, rax
	mov	rdx, rcx
	mov	rsp, rsp
	call	memset
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x80]
	call	sift_ctx_init
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	sift_states_backward
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rsp, rsp
	je	.label_2200
	mov	rsp, rsp
	jmp	.label_2188
.label_2200:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	qword ptr [rax], 0
	jne	.label_2199
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax], 0
	je	.label_2190
.label_2199:
	jmp	.label_2193
.label_2190:
	jmp	.label_2194
.label_2194:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2196
	mov	dword ptr [rbp - 0x2c], 1
	mov	rsp, rsp
	jmp	.label_2188
.label_2196:
	lea	rdi, [rdi]
	jmp	.label_2201
.label_2201:
	lea	rsi, [rsi]
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x81], al
	je	.label_2202
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	cmp	esi, 0
	setne	dl
	mov	rbp, rbp
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x81], dl
.label_2202:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2194
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	jmp	.label_2189
.label_2193:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, rcx
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2198
	jmp	.label_2188
.label_2198:
	lea	rsi, [rsi]
	jmp	.label_2187
.label_2186:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	nop	
	movzx	eax, r9b
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2203
	jmp	.label_2188
.label_2203:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	lea	rsi, [rsi]
	jne	.label_2204
	mov	dword ptr [rbp - 0x2c], 1
	lea	rdi, [rdi]
	jmp	.label_2188
.label_2204:
	jmp	.label_2187
.label_2187:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xb8], rax
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdi + 0xb0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0xa8], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], 0
.label_2188:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	nop	
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], ecx
.label_2192:
	nop	
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x90
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f340

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], 0
.label_2208:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2209
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xf8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	nop	
	mov	qword ptr [rbp - 0x18], 0
.label_2205:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	jge	.label_2206
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_2205
.label_2206:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	je	.label_2207
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2207:
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_2208
.label_2209:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xe8], 0
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xc8], 0
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f4d0

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	and	al, 1
	nop	
	mov	byte ptr [rbp - 0x29], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx,  qword ptr [word ptr [label_2228]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [label_2229]]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x78], rcx
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [label_2230]]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rbp - 0x89], 0
	test	byte ptr [rbp - 0x29], 1
	lea	rdi, [rdi]
	je	.label_2231
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	qword ptr [rdi + 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	cmp	qword ptr [rax + 0x10], 0
	nop	
	jne	.label_2236
	nop	
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2212
.label_2236:
	jmp	.label_2216
.label_2231:
	mov	qword ptr [rbp - 0x68], 0
.label_2216:
	lea	rsi, [rsi]
	xor	esi, esi
	mov	eax, 0x18
	lea	rsi, [rsi]
	mov	edx, eax
	lea	rdi, [rdi]
	lea	rcx, [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0x90]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rcx
	mov	rsp, rsp
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	lea	rdi, [rdi]
	jae	.label_2234
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_2238
.label_2234:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	shl	rax, 4
	mov	rdi, rax
	mov	rsp, rsp
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_2222
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2212
.label_2222:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], 1
.label_2238:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rbp, rbp
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2235:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_2218
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	nop	
	jne	.label_2223
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2223
	nop	
	cmp	qword ptr [rbp - 0x68], 0
	nop	
	je	.label_2213
	mov	qword ptr [rbp - 0x98], 0
.label_2215:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_2219
	mov	rax, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	nop	
	cmp	qword ptr [rax], -1
	lea	rdi, [rdi]
	jle	.label_2225
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], -1
	lea	rsi, [rsi]
	jne	.label_2225
	lea	rsi, [rsi]
	jmp	.label_2219
.label_2225:
	jmp	.label_2210
.label_2210:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2215
.label_2219:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2217
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rsp, rsp
	test	byte ptr [rbp - 0x89], 1
	je	.label_2227
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2227:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2212
.label_2217:
	lea	rsi, [rbp - 0x40]
	lea	rsi, [rsi]
	lea	r8, [rbp - 0x60]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	call	pop_fail_stack
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2211
.label_2213:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x89], 1
	je	.label_2226
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2226:
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_2212
.label_2211:
	jmp	.label_2223
.label_2223:
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	lea	r9, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x48], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	lea	rsi, [rsi]
	movsxd	rax, r11d
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	je	.label_2220
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x48], -2
	sete	al
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rsi, [rsi]
	cmp	rdx, 0
	je	.label_2224
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2214
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
.label_2214:
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	call	free_fail_stack_return
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xc
	nop	
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	jmp	.label_2212
.label_2224:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2233
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	nop	
	mov	rdi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	pop_fail_stack
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_2221
.label_2233:
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2232
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2232:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
	lea	rdi, [rdi]
	jmp	.label_2212
.label_2221:
	lea	rsi, [rsi]
	jmp	.label_2220
.label_2220:
	lea	rsi, [rsi]
	jmp	.label_2235
.label_2218:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	nop	
	test	byte ptr [rbp - 0x89], 1
	je	.label_2237
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	free
.label_2237:
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x68]
	nop	
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
.label_2212:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fa30

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	mov	rsp, rsp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	call	match_ctx_clean
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdi + 0xf8]
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xd8]
	mov	rbp, rbp
	call	free
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fa90

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x40
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	qword ptr [rbp - 0x18], 0
	setl	al
	nop	
	and	al, 1
	nop	
	movzx	edx, al
	mov	rbp, rbp
	movsxd	rsi, edx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2250
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	nop	
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_2239
.label_2250:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	lea	rsi, [rsi]
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2246
	mov	rbp, rbp
	mov	eax, 0xa
	mov	ecx, 8
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2239
.label_2246:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	nop	
	jle	.label_2248
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_2242:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2241
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2249
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2239
.label_2249:
	jmp	.label_2242
.label_2241:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8e]
	cmp	edx, 0
	mov	rbp, rbp
	setne	sil
	and	sil, 1
	movzx	edx, sil
	mov	rsp, rsp
	movsxd	rax, edx
	cmp	rax, 0
	nop	
	je	.label_2244
	nop	
	mov	edi, dword ptr [rbp - 0x24]
	call	iswalnum
	lea	rdi, [rdi]
	cmp	eax, 0
	jne	.label_2247
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0x5f
	jne	.label_2244
.label_2247:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2239
.label_2244:
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x24], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2240
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movzx	ecx, byte ptr [rax + 0x8d]
	lea	rdi, [rdi]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	nop	
	mov	byte ptr [rbp - 0x31], dl
.label_2240:
	mov	al, byte ptr [rbp - 0x31]
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	edx, 2
	mov	rbp, rbp
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_2239
.label_2248:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, qword ptr [rax + 0x80]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rbp - 0x20]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2245
	mov	rsp, rsp
	jmp	.label_2243
.label_2245:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	mov	rbp, rbp
	jmp	.label_2239
.label_2243:
	mov	rsp, rsp
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x32], cl
	jne	.label_2251
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	mov	rbp, rbp
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_2251:
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_2239:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fd00

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rdx
.label_2257:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2259
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	lea	rdi, [rdi]
	mov	r8b, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	mov	byte ptr [rbp - 0x41], r8b
	je	.label_2253
	mov	rbp, rbp
	mov	al, 1
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x30], -1
	nop	
	mov	byte ptr [rbp - 0x41], al
	lea	rsi, [rsi]
	je	.label_2253
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_2253:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2252
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2258
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2254
.label_2258:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 0
	nop	
	jmp	.label_2255
.label_2254:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	movzx	edx, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], edx
.label_2255:
	nop	
	mov	qword ptr [rbp - 0x30], 1
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2256
.label_2252:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x34], eax
.label_2256:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	jmp	.label_2257
.label_2259:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	dword ptr [rcx], eax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fea0

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	mov	rbp, rbp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	mov	rax, rsi
	mov	rbp, rbp
	cqo	
	idiv	rcx
	lea	rdi, [rdi]
	mov	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	shr	rdx, cl
	lea	rdi, [rdi]
	and	rdx, 1
	lea	rsi, [rsi]
	cmp	rdx, 0
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, cl
	mov	eax, r8d
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ff20

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2262:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2264
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_2263
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	mov	rsp, rsp
	jge	.label_2263
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
.label_3174:
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	lea	rdi, [rdi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	shl	rsi, cl
	lea	rdi, [rdi]
	and	rdx, rsi
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2263
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	nop	
	setne	cl
	and	cl, 1
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2261
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2265
.label_2261:
	mov	rsp, rsp
	jmp	.label_2263
.label_2263:
	mov	rbp, rbp
	jmp	.label_2260
.label_2260:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2262
.label_2264:
	mov	dword ptr [rbp - 4], 0
.label_2265:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4200c0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], 0
.label_2285:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2273
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	shl	rcx, 4
	lea	rdi, [rdi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_2281
	lea	rsi, [rsi]
	jmp	.label_2266
.label_2281:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2269
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa0]
	lea	rsi, [rsi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0x60]
	nop	
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rsp, rsp
	and	eax, 4
	nop	
	cmp	eax, 0
	je	.label_2286
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	je	.label_2276
.label_2286:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	mov	rbp, rbp
	and	ecx, 8
	lea	rsi, [rsi]
	cmp	ecx, 0
	mov	rbp, rbp
	je	.label_2287
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2276
.label_2287:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2270
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 2
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2276
.label_2270:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	mov	rbp, rbp
	cmp	ecx, 0
	je	.label_2267
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	and	eax, 8
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2267
.label_2276:
	jmp	.label_2266
.label_2267:
	mov	rbp, rbp
	jmp	.label_2269
.label_2269:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xc8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	call	get_subexp
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2288
	nop	
	jmp	.label_2268
.label_2288:
	jmp	.label_2271
.label_2271:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xc8]
	mov	rbp, rbp
	jge	.label_2274
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2283
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 8]
	nop	
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	je	.label_2292
.label_2283:
	mov	rsp, rsp
	jmp	.label_2295
.label_2292:
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], 0
	nop	
	jne	.label_2296
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx], 0x18
	mov	rbp, rbp
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2278
.label_2296:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	mov	rbp, rbp
	add	rax, rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xa0], rax
.label_2278:
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xa0]
	lea	rsi, [rsi]
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	nop	
	mov	qword ptr [rbp - 0x78], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	mov	rbp, rbp
	jne	.label_2293
	xor	eax, eax
	lea	rsi, [rsi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_2280
.label_2293:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
.label_2280:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2289
	mov	rsp, rsp
	lea	rdi, [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa9], r8b
	jne	.label_2272
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_2272:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 0xa9]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2291
	lea	rsi, [rsi]
	jmp	.label_2268
.label_2291:
	jmp	.label_2275
.label_2289:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2282
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	jmp	.label_2268
.label_2282:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x98]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x54]
	nop	
	call	re_acquire_state_context
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xaa], r8b
	jne	.label_2284
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xaa], al
.label_2284:
	mov	al, byte ptr [rbp - 0xaa]
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2294
	nop	
	jmp	.label_2268
.label_2294:
	jmp	.label_2275
.label_2275:
	nop	
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2277
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	jle	.label_2277
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdx, eax
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2290
	jmp	.label_2268
.label_2290:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2279
	jmp	.label_2268
.label_2279:
	jmp	.label_2277
.label_2277:
	mov	rbp, rbp
	jmp	.label_2295
.label_2295:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2271
.label_2274:
	jmp	.label_2266
.label_2266:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	jmp	.label_2285
.label_2273:
	mov	dword ptr [rbp - 0x1c], 0
.label_2268:
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	add	rsp, 0xb0
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4207b0

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0xfffffffffffffff
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rdi + 0x40]
	lea	rsi, [rsi]
	setbe	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2307
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2306
.label_2307:
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	lea	rsi, [rsi]
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x30], rdi
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jge	.label_2301
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2299
.label_2301:
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2299:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	jge	.label_2309
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2298
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2308
.label_2298:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_2308:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2302
.label_2309:
	movsxd	rax, dword ptr [rbp - 0x14]
	nop	
	mov	qword ptr [rbp - 0x50], rax
.label_2302:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2313
	mov	eax, dword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2306
.label_2313:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	cmp	qword ptr [rax + 0xb8], 0
	mov	rsp, rsp
	je	.label_2310
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	nop	
	add	rcx, 1
	mov	rbp, rbp
	shl	rcx, 3
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rsi, rcx
	mov	rsp, rsp
	call	realloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2315
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2306
.label_2315:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
.label_2310:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2297
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	dword ptr [rax + 0x90], 1
	lea	rdi, [rdi]
	jle	.label_2305
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	call	build_wcs_upper_buffer
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x18], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2314
	mov	eax, dword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2306
.label_2314:
	jmp	.label_2312
.label_2305:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	build_upper_buffer
.label_2312:
	jmp	.label_2300
.label_2297:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2303
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_buffer
	mov	rbp, rbp
	jmp	.label_2304
.label_2303:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2311
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	call	re_string_translate_buffer
.label_2311:
	lea	rdi, [rdi]
	jmp	.label_2304
.label_2304:
	lea	rdi, [rdi]
	jmp	.label_2300
.label_2300:
	mov	dword ptr [rbp - 4], 0
.label_2306:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420ad0

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	al, byte ptr [rdx + 0x68]
	mov	rsp, rsp
	shr	al, 5
	and	al, 1
	nop	
	movzx	ecx, al
	mov	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2317
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	transit_state_mb
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	dword ptr [rsi], eax
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	cmp	dword ptr [rsi], 0
	lea	rsi, [rsi]
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2320
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2316
.label_2320:
	jmp	.label_2317
.label_2317:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	sil, byte ptr [rax + rcx]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x29], sil
.label_2318:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x58]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2319
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2316
.label_2319:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2323
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2322
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2316
.label_2322:
	nop	
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rbp, rbp
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rcx
	mov	rbp, rbp
	jmp	.label_2316
.label_2323:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	build_trtable
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2321
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2316
.label_2321:
	nop	
	jmp	.label_2318
.label_2316:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420d20

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	mov	rsp, rsp
	jle	.label_2334
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	mov	rbp, rbp
	jmp	.label_2328
.label_2334:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2335
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	jmp	.label_2325
.label_2335:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_2336
	mov	rsp, rsp
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2333
	mov	qword ptr [rbp - 8], 0
	mov	rsp, rsp
	jmp	.label_2324
.label_2333:
	lea	rsi, [rsi]
	jmp	.label_2332
.label_2336:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_2332:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsp, rsp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdx, [rbp - 0x58]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	call	re_acquire_state_context
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2327
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
.label_2327:
	jmp	.label_2325
.label_2325:
	jmp	.label_2328
.label_2328:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	qword ptr [rax + 0x98], 0
	nop	
	je	.label_2330
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2330
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	add	rax, 8
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	lea	rdi, [rdi]
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rdx], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2331
	mov	qword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jmp	.label_2324
.label_2331:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	lea	rdi, [rdi]
	je	.label_2329
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	mov	rsp, rsp
	call	transit_state_bkref
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_2326
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2324
.label_2326:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x20], rax
.label_2329:
	jmp	.label_2330
.label_2330:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2324:
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421090

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
.label_2337:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
.label_2338:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jle	.label_2341
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2339
.label_2341:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2338
	nop	
	xor	eax, eax
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	merge_state_with_log
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2340
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	sete	al
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x31], al
.label_2340:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_2337
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2339:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x4211a0

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0xf0]
	nop	
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2342
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xf0]
	lea	rdi, [rdi]
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	realloc
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	rbp, rbp
	sete	dl
	nop	
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2343
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_2344
.label_2343:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xf8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0xf0], rax
.label_2342:
	nop	
	mov	eax, 1
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x30
	mov	esi, eax
	nop	
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xf8]
	nop	
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xf8]
	lea	rdi, [rdi]
	cmp	qword ptr [rsi + rax*8], 0
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	lea	rdi, [rdi]
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2345
	nop	
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2344
.label_2345:
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0xf8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 0xe8]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2344:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4213a0

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	lea	rdi, [rdi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 8]
	nop	
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	lea	rsi, [rsi]
	je	.label_2369
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
.label_2377:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_2360
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2347
.label_2360:
	jmp	.label_2375
.label_2375:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2377
	jmp	.label_2369
.label_2369:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_2366:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 0xe8]
	nop	
	jge	.label_2361
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rbp, rbp
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_2380
	jmp	.label_2349
.label_2380:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	qword ptr [rbp - 0x70], 0
.label_2367:
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rsp, rsp
	jge	.label_2352
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x88], rax
	nop	
	cmp	qword ptr [rbp - 0x88], 0
	lea	rsi, [rsi]
	jle	.label_2357
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setg	dl
	lea	rdi, [rdi]
	and	dl, 1
	nop	
	movzx	esi, dl
	movsxd	rax, esi
	nop	
	cmp	rax, 0
	je	.label_2356
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	add	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x58]
	mov	rbp, rbp
	jle	.label_2374
	mov	rsp, rsp
	jmp	.label_2352
.label_2374:
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	add	rax, qword ptr [rbp - 0x88]
	mov	rsi, rax
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x54], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2351
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2347
.label_2351:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
.label_2356:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2363
	jmp	.label_2352
.label_2363:
	lea	rsi, [rsi]
	jmp	.label_2357
.label_2357:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	get_subexp_sub
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2371
	lea	rdi, [rdi]
	jmp	.label_2365
.label_2371:
	nop	
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	nop	
	je	.label_2359
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2347
.label_2359:
	mov	rbp, rbp
	jmp	.label_2365
.label_2365:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	lea	rsi, [rsi]
	jmp	.label_2367
.label_2352:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2346
	jmp	.label_2349
.label_2346:
	cmp	qword ptr [rbp - 0x70], 0
	lea	rsi, [rsi]
	jle	.label_2381
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
.label_2381:
	mov	rsp, rsp
	jmp	.label_2350
.label_2350:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jg	.label_2355
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jle	.label_2364
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	lea	rsi, [rsi]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2376
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2383
	lea	rsi, [rsi]
	jmp	.label_2355
.label_2383:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	rbp, rbp
	call	extend_buffers
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x54], 0
	lea	rsi, [rsi]
	setne	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	eax, dl
	mov	rsp, rsp
	movsxd	rdi, eax
	mov	rbp, rbp
	cmp	rdi, 0
	lea	rsi, [rsi]
	je	.label_2379
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2347
.label_2379:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x40], rax
.label_2376:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	nop	
	add	rcx, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x80], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_2348
	lea	rdi, [rdi]
	jmp	.label_2355
.label_2348:
	jmp	.label_2364
.label_2364:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	jne	.label_2378
	jmp	.label_2358
.label_2378:
	mov	ecx, 9
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	nop	
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	find_subexp_node
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_2368
	nop	
	jmp	.label_2358
.label_2368:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2370
	mov	eax, 0x18
	mov	rsp, rsp
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	mov	rsp, rsp
	jne	.label_2353
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_2347
.label_2353:
	jmp	.label_2370
.label_2370:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rcx + 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x78]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0xa4], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2382
	mov	rsp, rsp
	jmp	.label_2358
.label_2382:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x54], 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2362
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2347
.label_2362:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x60]
	nop	
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2354
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2347
.label_2354:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	get_subexp_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2373
	jmp	.label_2358
.label_2373:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2372
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2347
.label_2372:
	lea	rsi, [rsi]
	jmp	.label_2358
.label_2358:
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2350
.label_2355:
	jmp	.label_2349
.label_2349:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x38], rax
	mov	rbp, rbp
	jmp	.label_2366
.label_2361:
	mov	dword ptr [rbp - 4], 0
.label_2347:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421b70

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	cmp	qword ptr [rbp - 0x18], 0
	mov	rbp, rbp
	je	.label_2385
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jle	.label_2385
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	je	.label_2385
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	jle	.label_2385
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	shl	rax, 3
	lea	rdi, [rdi]
	mov	rdi, rax
	call	malloc
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2388
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2384
.label_2388:
	jmp	.label_2389
.label_2385:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2391
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2391
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2384
.label_2391:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2394
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2394
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2384
.label_2394:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	eax, 0x18
	lea	rdi, [rdi]
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdi, rcx
	mov	rbp, rbp
	call	memset
	jmp	.label_2396
.label_2396:
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2384
.label_2389:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], 0
.label_2393:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x39], cl
	jge	.label_2392
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x39], dl
.label_2392:
	mov	al, byte ptr [rbp - 0x39]
	lea	rdi, [rdi]
	test	al, 1
	nop	
	jne	.label_2390
	mov	rbp, rbp
	jmp	.label_2395
.label_2390:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2398
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	nop	
	jmp	.label_2393
.label_2398:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2397
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], rax
.label_2397:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	nop	
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2393
.label_2395:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	jge	.label_2399
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2387
.label_2399:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2386
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rdx, 3
	nop	
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 8]
	nop	
	sub	rdx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
.label_2386:
	jmp	.label_2387
.label_2387:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_2384:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x40
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x421fb0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	nop	
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], 0
.label_2404:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2403
	mov	rbp, rbp
	mov	eax, 2
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	lea	rdi, [rdi]
	cqo	
	lea	rdi, [rdi]
	idiv	rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x28
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jge	.label_2405
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2402
.label_2405:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2402:
	jmp	.label_2404
.label_2403:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	jge	.label_2400
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	jne	.label_2400
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	lea	rdi, [rdi]
	jmp	.label_2401
.label_2400:
	nop	
	mov	qword ptr [rbp - 8], -1
.label_2401:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4220e0

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi + 0xc0]
	nop	
	mov	qword ptr [rbp - 0x20], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_2406
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	lea	rsi, [rsi]
	jl	.label_2408
.label_2406:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2407
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2407
.label_2408:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	ecx, eax
	nop	
	mov	esi, ecx
	lea	rsi, [rsi]
	call	extend_buffers
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	lea	rdi, [rdi]
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	lea	rsi, [rsi]
	cmp	rdi, 0
	nop	
	je	.label_2410
	nop	
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2411
.label_2410:
	jmp	.label_2407
.label_2407:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	nop	
	jge	.label_2409
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xb8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	shl	rcx, 3
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	add	rax, 8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0xc0], rax
.label_2409:
	mov	dword ptr [rbp - 4], 0
.label_2411:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x30
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x422260

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rsi, [rsi]
	mov	eax, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 8]
	mov	rsp, rsp
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rsp], 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	call	check_arrival
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_2414
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2413
.label_2414:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2412
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2413
.label_2412:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	nop	
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 4], eax
.label_2413:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4223a0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	lea	rsi, [rsi]
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], ecx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_2416:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2417
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x38], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	shl	rcx, 4
	nop	
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	mov	rbp, rbp
	cmp	edx, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	jne	.label_2415
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2415
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_2418
.label_2415:
	mov	rsp, rsp
	jmp	.label_2419
.label_2419:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	lea	rdi, [rdi]
	jmp	.label_2416
.label_2417:
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -1
.label_2418:
	nop	
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4224b0

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xf0
	nop	
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	movsxd	rsi, dword ptr [rsi + 0xe0]
	add	rdx, rsi
	nop	
	add	rdx, 1
	cmp	rcx, rdx
	setl	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2447
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xb8], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	lea	rsi, [rsi]
	sub	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xc0]
	setl	sil
	lea	rdi, [rdi]
	and	sil, 1
	movzx	edi, sil
	lea	rsi, [rsi]
	movsxd	rax, edi
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2445
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2427
.label_2445:
	lea	rdi, [rdi]
	movabs	rax, 0x1fffffffffffffff
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xc8], rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0xc8]
	lea	rsi, [rsi]
	setb	dl
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2440
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2427
.label_2440:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rcx, 3
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	nop	
	call	realloc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2435
	nop	
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2427
.label_2435:
	mov	rbp, rbp
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	add	rax, rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	sub	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rdx, rcx
	lea	rsi, [rsi]
	call	memset
.label_2447:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	mov	rbp, rbp
	je	.label_2422
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2425
.label_2422:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	mov	qword ptr [rbp - 0xd0], rax
.label_2425:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xb8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0xb8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_2452
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	nop	
	je	.label_2421
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2427
.label_2421:
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	nop	
	movsxd	rdx, eax
	lea	rdi, [rdi]
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2434
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	jmp	.label_2427
.label_2434:
	jmp	.label_2437
.label_2452:
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2449
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	cmp	edx, 0
	mov	rbp, rbp
	je	.label_2449
	nop	
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	lea	rdi, [rdi]
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	setne	cl
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	lea	rdi, [rdi]
	je	.label_2423
	mov	eax, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2427
.label_2423:
	nop	
	jmp	.label_2433
.label_2449:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x98]
	mov	rdi, rcx
	call	memset
.label_2433:
	mov	rsp, rsp
	jmp	.label_2437
.label_2437:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2439
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2444
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2444
.label_2439:
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_2429
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	r9b
	lea	rdi, [rdi]
	and	r9b, 1
	movzx	eax, r9b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2455
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2427
.label_2455:
	lea	rdi, [rdi]
	jmp	.label_2429
.label_2429:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	nop	
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd1], r8b
	mov	rsp, rsp
	jne	.label_2451
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_2451:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2442
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2427
.label_2442:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2444:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], 0
.label_2443:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0xd2], cl
	jge	.label_2456
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	mov	rsp, rsp
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_2456:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_2428
	jmp	.label_2430
.label_2428:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	mov	rbp, rbp
	je	.label_2431
	mov	rbp, rbp
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2446
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	lea	rdi, [rdi]
	jmp	.label_2427
.label_2446:
	nop	
	jmp	.label_2431
.label_2431:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x78], 0
	lea	rsi, [rsi]
	je	.label_2436
	lea	rcx, [rbp - 0x98]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rdx, rax
	mov	rbp, rbp
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2426
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	nop	
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2427
.label_2426:
	mov	rbp, rbp
	jmp	.label_2436
.label_2436:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x90], 0
	nop	
	je	.label_2438
	lea	rsi, [rbp - 0x98]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x58]
	nop	
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	cmp	dword ptr [rbp - 0x4c], 0
	mov	rsp, rsp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2448
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x4c]
	nop	
	mov	dword ptr [rbp - 4], ecx
	mov	rsp, rsp
	jmp	.label_2427
.label_2448:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	setne	r9b
	nop	
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2457
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	lea	rsi, [rsi]
	jmp	.label_2427
.label_2457:
	mov	rbp, rbp
	jmp	.label_2438
.label_2438:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_string_context_at
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x4c]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x98]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	nop	
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd3], r8b
	nop	
	jne	.label_2450
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd3], al
.label_2450:
	nop	
	mov	al, byte ptr [rbp - 0xd3]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	lea	rdi, [rdi]
	je	.label_2420
	mov	rax, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2427
.label_2420:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2432
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_2441
.label_2432:
	lea	rsi, [rsi]
	xor	eax, eax
	lea	rdi, [rdi]
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2441
.label_2441:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	mov	rbp, rbp
	jmp	.label_2443
.label_2430:
	mov	rax, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdi + 0xb8]
	nop	
	cmp	qword ptr [rdi + rax*8], 0
	mov	rsp, rsp
	jne	.label_2453
	xor	eax, eax
	mov	ecx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_2454
.label_2453:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xe8], rax
.label_2454:
	nop	
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2424
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	je	.label_2424
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2427
.label_2424:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 1
.label_2427:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x422fc0

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	rdx, qword ptr [rsi + 0x18]
	sete	al
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2458
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	shl	rax, 1
	nop	
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	mov	rbp, rbp
	sete	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	r8d, dl
	mov	rsp, rsp
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2459
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2460
.label_2459:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_2458:
	mov	rsp, rsp
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	mov	rsp, rsp
	call	calloc
	mov	qword ptr [rbp - 0x28], rax
	nop	
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	edx, cl
	lea	rsi, [rsi]
	movsxd	rax, edx
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2461
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x20]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rax + 0x20]
	lea	rdi, [rdi]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_2461:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
.label_2460:
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423160

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	nop	
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 0xd0]
	lea	rsi, [rsi]
	jl	.label_2462
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd0]
	lea	rsi, [rsi]
	shl	rcx, 1
	mov	rbp, rbp
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	nop	
	je	.label_2466
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2465
.label_2466:
	xor	esi, esi
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd8], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_2462:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2463
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x28
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0xd8]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jne	.label_2463
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0xc8]
	nop	
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x28
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_2463:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rdi, [rdi]
	mov	qword ptr [rsi], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rsi, rsi, 0x28
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + 0x18], rdx
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xc8]
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rdx, rdx, 0x28
	mov	rsp, rsp
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rdx + 0xc8]
	nop	
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	lea	rdi, [rdi]
	mov	byte ptr [rsi + 0x20], 0
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	sub	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	cmp	rdx, rsi
	jge	.label_2464
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	sub	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], ecx
.label_2464:
	mov	dword ptr [rbp - 4], 0
.label_2465:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423490

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x50]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	lea	rsi, [rsi]
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2469
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2472
.label_2469:
	mov	qword ptr [rbp - 0x30], 0
.label_2471:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2468
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rbp - 0x24]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], -1
	lea	rsi, [rsi]
	jne	.label_2475
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x28], 0
	lea	rdi, [rdi]
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2473
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2472
.label_2473:
	lea	rsi, [rsi]
	jmp	.label_2474
.label_2475:
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	mov	r8d, dword ptr [rbp - 0x24]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x28], 0
	mov	rsp, rsp
	setne	r9b
	and	r9b, 1
	mov	rsp, rsp
	movzx	eax, r9b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2467
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2472
.label_2467:
	jmp	.label_2474
.label_2474:
	mov	rbp, rbp
	jmp	.label_2470
.label_2470:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2471
.label_2468:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rax], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 4], 0
.label_2472:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4236c0

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	nop	
	mov	qword ptr [rbp - 0x38], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_2477
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2481
.label_2477:
	nop	
	jmp	.label_2484
.label_2484:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rbp, rbp
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_2490:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2494
	lea	rsi, [rsi]
	jmp	.label_2485
.label_2494:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jne	.label_2499
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2495
	jmp	.label_2485
.label_2495:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x78]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	ecx, dword ptr [rbp - 0x2c]
	lea	rsi, [rsi]
	call	check_arrival_expand_ecl
	mov	rbp, rbp
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rdi, rdx
	mov	rsp, rsp
	call	free
	lea	rsi, [rsi]
	mov	r8b, 1
	cmp	dword ptr [rbp - 0x3c], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9a], r8b
	lea	rsi, [rsi]
	jne	.label_2493
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x7c], 0
	nop	
	mov	byte ptr [rbp - 0x9a], al
	jne	.label_2493
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x80], 0
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x9a], al
.label_2493:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	mov	rbp, rbp
	je	.label_2482
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_2488
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa0], eax
	lea	rdi, [rdi]
	jmp	.label_2492
.label_2488:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_2496
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2498
.label_2496:
	mov	eax, dword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xa4], eax
.label_2498:
	mov	eax, dword ptr [rbp - 0xa4]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0xa0], eax
.label_2492:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2481
.label_2482:
	mov	rbp, rbp
	jmp	.label_2484
.label_2499:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2487
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	nop	
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2483
	jmp	.label_2485
.label_2483:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0xb8]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x98]
	mov	dword ptr [rbp - 0x3c], eax
	nop	
	mov	rsi, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	call	re_node_set_insert
	lea	rdi, [rdi]
	mov	dl, 1
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0xa5], dl
	lea	rsi, [rsi]
	jne	.label_2500
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xa5], al
.label_2500:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0xa5]
	lea	rdi, [rdi]
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2486
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rsp, rsp
	je	.label_2497
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2478
.label_2497:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2478
.label_2478:
	mov	eax, dword ptr [rbp - 0xac]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2481
.label_2486:
	jmp	.label_2476
.label_2487:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	nop	
	setne	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rbp, rbp
	movzx	eax, cl
	lea	rsi, [rsi]
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2489
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2481
.label_2489:
	mov	rbp, rbp
	jmp	.label_2476
.label_2476:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x3c]
	mov	rsp, rsp
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	call	re_acquire_state
	nop	
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	xor	ecx, ecx
	mov	rsp, rsp
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xad], r8b
	jne	.label_2491
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	setne	al
	mov	byte ptr [rbp - 0xad], al
.label_2491:
	nop	
	mov	al, byte ptr [rbp - 0xad]
	and	al, 1
	nop	
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rdx, ecx
	mov	rbp, rbp
	cmp	rdx, 0
	je	.label_2480
	nop	
	mov	eax, dword ptr [rbp - 0x3c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2481
.label_2480:
	mov	rbp, rbp
	jmp	.label_2479
.label_2479:
	jmp	.label_2485
.label_2485:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rcx, rax
	nop	
	add	rcx, 0x28
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	lea	rdi, [rdi]
	jne	.label_2490
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_2481:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x423c10

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	rsp, rsp
	mov	r9d, r8d
	mov	rsp, rsp
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x44], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_2501:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2513
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], 0
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2504
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	call	check_node_accept_bytes
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_2508
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	movsxd	rcx, dword ptr [rbp - 0x64]
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], 0
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x78], 0
	mov	rsp, rsp
	je	.label_2503
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	rsi, rax
	lea	rdi, [rdi]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	setne	cl
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rsi, eax
	lea	rdi, [rdi]
	cmp	rsi, 0
	nop	
	je	.label_2506
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2505
.label_2506:
	jmp	.label_2503
.label_2503:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	nop	
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rsi, ecx
	mov	rbp, rbp
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2514
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2505
.label_2514:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_acquire_state
	lea	rsi, [rsi]
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x89], r8b
	mov	rsp, rsp
	jne	.label_2502
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	lea	rdi, [rdi]
	setne	al
	mov	byte ptr [rbp - 0x89], al
.label_2502:
	mov	al, byte ptr [rbp - 0x89]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	lea	rdi, [rdi]
	cmp	rdx, 0
	je	.label_2511
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2505
.label_2511:
	mov	rbp, rbp
	jmp	.label_2508
.label_2508:
	jmp	.label_2504
.label_2504:
	nop	
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2512
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	nop	
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rsi, rax
	mov	rsp, rsp
	call	check_node_accept
	nop	
	test	al, 1
	jne	.label_2512
	jmp	.label_2509
.label_2512:
	nop	
	mov	rdi, qword ptr [rbp - 0x28]
	nop	
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	nop	
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2507
	mov	rax, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	lea	rsi, [rsi]
	jmp	.label_2505
.label_2507:
	mov	rbp, rbp
	jmp	.label_2509
.label_2509:
	mov	rbp, rbp
	jmp	.label_2510
.label_2510:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2501
.label_2513:
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	mov	rdi, rax
	nop	
	call	free
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_2505:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x423ff0

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rcx
.label_2518:
	nop	
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	re_node_set_contains
	nop	
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	mov	rsp, rsp
	test	cl, 1
	jne	.label_2525
	jmp	.label_2515
.label_2525:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	and	edx, 0xff
	nop	
	cmp	edx, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	jne	.label_2517
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2517
	cmp	dword ptr [rbp - 0x2c], 9
	lea	rsi, [rsi]
	jne	.label_2516
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	ecx, al
	mov	rsp, rsp
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2520
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2519
.label_2520:
	jmp	.label_2516
.label_2516:
	jmp	.label_2515
.label_2517:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	mov	rbp, rbp
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	lea	rsi, [rsi]
	movsxd	rsi, ecx
	cmp	rsi, 0
	mov	rsp, rsp
	je	.label_2524
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2519
.label_2524:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	lea	rdi, [rdi]
	jne	.label_2522
	jmp	.label_2515
.label_2522:
	mov	rax, qword ptr [rbp - 0x38]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2521
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rax, rax, 0x18
	mov	rbp, rbp
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 0x2c]
	lea	rdi, [rdi]
	call	check_arrival_expand_ecl_sub
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x40], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x40], 0
	setne	r9b
	and	r9b, 1
	nop	
	movzx	eax, r9b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2523
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2519
.label_2523:
	lea	rsi, [rsi]
	jmp	.label_2521
.label_2521:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	nop	
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	jmp	.label_2518
.label_2515:
	mov	dword ptr [rbp - 4], 0
.label_2519:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424260

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	sete	al
	nop	
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2526
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2529
.label_2526:
	xor	esi, esi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x28], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	lea	rsi, [rsi]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_2528:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	cmp	rax, qword ptr [rcx]
	nop	
	jge	.label_2534
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	cmp	rax, qword ptr [rcx]
	je	.label_2532
	mov	rbp, rbp
	jmp	.label_2527
.label_2532:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_compare
	nop	
	test	al, 1
	jne	.label_2531
	lea	rdi, [rdi]
	jmp	.label_2530
.label_2531:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2529
.label_2530:
	jmp	.label_2527
.label_2527:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_2528
.label_2534:
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	call	create_ci_newstate
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	lea	rsi, [rsi]
	sete	cl
	mov	rsp, rsp
	and	cl, 1
	mov	rsp, rsp
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2533
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_2533:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2529:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424410

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	nop	
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	nop	
	mov	eax, 0x70
	mov	ecx, eax
	mov	eax, 1
	mov	rbp, rbp
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	mov	rsi, r8
	nop	
	call	calloc
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x38], 0
	nop	
	sete	r9b
	and	r9b, 1
	lea	rsi, [rsi]
	movzx	r10d, r9b
	movsxd	rax, r10d
	cmp	rax, 0
	je	.label_2539
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2540
.label_2539:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x2c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2543
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	qword ptr [rbp - 8], 0
	mov	rbp, rbp
	jmp	.label_2540
.label_2543:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], 0
.label_2536:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2547
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 1
	jne	.label_2541
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 8]
	nop	
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_2541
	mov	rbp, rbp
	jmp	.label_2535
.label_2541:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	mov	ecx, dword ptr [rax + 8]
	mov	rsp, rsp
	shr	ecx, 0x14
	lea	rsi, [rsi]
	and	ecx, 1
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	nop	
	mov	dl, sil
	mov	rsp, rsp
	mov	dil, byte ptr [rax + 0x68]
	mov	rbp, rbp
	and	dl, 1
	shl	dl, 5
	mov	rsp, rsp
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x44], 2
	nop	
	jne	.label_2538
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	rbp, rbp
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2542
.label_2538:
	nop	
	cmp	dword ptr [rbp - 0x44], 4
	jne	.label_2548
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	mov	rsp, rsp
	and	cl, 0xbf
	mov	rbp, rbp
	or	cl, 0x40
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
	mov	rbp, rbp
	jmp	.label_2537
.label_2548:
	nop	
	cmp	dword ptr [rbp - 0x44], 0xc
	je	.label_2544
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2546
.label_2544:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax + 0x68]
	lea	rdi, [rdi]
	and	cl, 0x7f
	or	cl, 0x80
	lea	rsi, [rsi]
	mov	byte ptr [rax + 0x68], cl
.label_2546:
	jmp	.label_2537
.label_2537:
	jmp	.label_2542
.label_2542:
	jmp	.label_2535
.label_2535:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	jmp	.label_2536
.label_2547:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	register_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	lea	rsi, [rsi]
	movzx	eax, cl
	nop	
	movsxd	rdx, eax
	mov	rsp, rsp
	cmp	rdx, 0
	je	.label_2545
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_2545:
	nop	
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_2540:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424710

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	nop	
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	shl	rdx, 4
	add	rcx, rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 8]
	nop	
	and	eax, 0xff
	mov	rsp, rsp
	cmp	eax, 7
	lea	rsi, [rsi]
	sete	r8b
	and	r8b, 1
	mov	rbp, rbp
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2552
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x41], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2578
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2550
.label_2578:
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2590
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2550
.label_2590:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rcx + rax + 1]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xe0
	nop	
	jge	.label_2601
	lea	rdi, [rdi]
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x42]
	mov	rbp, rbp
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x61], al
	jl	.label_2557
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x61], cl
.label_2557:
	mov	al, byte ptr [rbp - 0x61]
	lea	rsi, [rsi]
	mov	ecx, 2
	nop	
	xor	edx, edx
	test	al, 1
	lea	rdi, [rdi]
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2550
.label_2601:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	nop	
	jge	.label_2600
	nop	
	mov	dword ptr [rbp - 0x34], 3
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xe0
	mov	rbp, rbp
	jne	.label_2576
	movzx	eax, byte ptr [rbp - 0x42]
	nop	
	cmp	eax, 0xa0
	jge	.label_2576
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_2550
.label_2576:
	lea	rdi, [rdi]
	jmp	.label_2559
.label_2600:
	movzx	eax, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	cmp	eax, 0xf8
	nop	
	jge	.label_2587
	mov	dword ptr [rbp - 0x34], 4
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	lea	rdi, [rdi]
	jne	.label_2583
	nop	
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x90
	lea	rdi, [rdi]
	jge	.label_2583
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2550
.label_2583:
	jmp	.label_2551
.label_2587:
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x41]
	lea	rdi, [rdi]
	cmp	eax, 0xfc
	lea	rdi, [rdi]
	jge	.label_2553
	nop	
	mov	dword ptr [rbp - 0x34], 5
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x41]
	mov	rbp, rbp
	cmp	eax, 0xf8
	jne	.label_2560
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x88
	lea	rsi, [rsi]
	jge	.label_2560
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2550
.label_2560:
	jmp	.label_2572
.label_2553:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfe
	mov	rbp, rbp
	jge	.label_2574
	mov	dword ptr [rbp - 0x34], 6
	movzx	eax, byte ptr [rbp - 0x41]
	mov	rsp, rsp
	cmp	eax, 0xfc
	jne	.label_2577
	mov	rbp, rbp
	movzx	eax, byte ptr [rbp - 0x42]
	mov	rbp, rbp
	cmp	eax, 0x84
	jge	.label_2577
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2550
.label_2577:
	jmp	.label_2571
.label_2574:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_2550
.label_2571:
	jmp	.label_2572
.label_2572:
	jmp	.label_2551
.label_2551:
	mov	rbp, rbp
	jmp	.label_2559
.label_2559:
	jmp	.label_2596
.label_2596:
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 0x58]
	nop	
	jle	.label_2598
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2550
.label_2598:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 1
.label_2581:
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x34]
	cmp	rax, rcx
	lea	rsi, [rsi]
	jge	.label_2556
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x42]
	cmp	esi, 0x80
	jl	.label_2562
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	nop	
	jle	.label_2573
.label_2562:
	mov	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jmp	.label_2550
.label_2573:
	jmp	.label_2579
.label_2579:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2581
.label_2556:
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2550
.label_2552:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_string_char_size_at
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	mov	rsp, rsp
	and	eax, 0xff
	cmp	eax, 5
	nop	
	jne	.label_2588
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 1
	jg	.label_2595
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2550
.label_2595:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2597
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0xa
	lea	rdi, [rdi]
	je	.label_2555
.label_2597:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	nop	
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2569
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_2569
.label_2555:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2550
.label_2569:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2550
.label_2588:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_elem_size_at
	nop	
	mov	dword ptr [rbp - 0x38], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x38], 1
	jg	.label_2585
	nop	
	cmp	dword ptr [rbp - 0x34], 1
	jle	.label_2586
.label_2585:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_2589
.label_2586:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2550
.label_2589:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	mov	rbp, rbp
	cmp	ecx, 6
	mov	rbp, rbp
	jne	.label_2592
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2558
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	lea	rdi, [rdi]
	jne	.label_2558
	nop	
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	cmp	qword ptr [rax + 0x28], 0
	lea	rdi, [rdi]
	je	.label_2564
.label_2558:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_string_wchar_at
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2570
.label_2564:
	xor	eax, eax
	nop	
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2570
.label_2570:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x40], 0
.label_2593:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	jge	.label_2580
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	mov	rsp, rsp
	jne	.label_2584
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	nop	
	mov	dword ptr [rbp - 0x54], eax
	lea	rsi, [rsi]
	jmp	.label_2565
.label_2584:
	jmp	.label_2591
.label_2591:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2593
.label_2580:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2554:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_2602
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	edi, dword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	iswctype
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2563
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2565
.label_2563:
	nop	
	jmp	.label_2567
.label_2567:
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	nop	
	jmp	.label_2554
.label_2602:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2599:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_2575
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 8]
	nop	
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x58]
	nop	
	jg	.label_2582
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_2582
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	mov	rsp, rsp
	jmp	.label_2565
.label_2582:
	lea	rdi, [rdi]
	jmp	.label_2594
.label_2594:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	jmp	.label_2599
.label_2575:
	lea	rdi, [rdi]
	jmp	.label_2565
.label_2565:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	nop	
	cmp	edx, 0
	nop	
	jne	.label_2549
	nop	
	mov	eax, dword ptr [rbp - 0x54]
	nop	
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2550
.label_2549:
	cmp	dword ptr [rbp - 0x54], 0
	mov	rsp, rsp
	jle	.label_2561
	nop	
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2550
.label_2561:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jle	.label_2566
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2568
.label_2566:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x6c], eax
.label_2568:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2550
.label_2592:
	mov	dword ptr [rbp - 4], 0
.label_2550:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x424e90

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 8]
	nop	
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 0x21], al
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_2607
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2613]]
	mov	rsp, rsp
	jmp	rcx
.label_3180:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rax]
	mov	rsp, rsp
	movzx	edx, byte ptr [rbp - 0x21]
	mov	rsp, rsp
	cmp	ecx, edx
	mov	rbp, rbp
	je	.label_2618
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2608
.label_2618:
	jmp	.label_2611
.label_3181:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	nop	
	movzx	ecx, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rsp, rsp
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	jne	.label_2604
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2608
.label_2604:
	jmp	.label_2611
.label_3182:
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, 0x80
	jl	.label_2605
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2608
.label_2605:
	lea	rsi, [rsi]
	jmp	.label_2619
.label_2619:
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x21]
	lea	rsi, [rsi]
	cmp	eax, 0xa
	mov	rbp, rbp
	jne	.label_2616
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x98]
	nop	
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2617
.label_2616:
	mov	rsp, rsp
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0
	jne	.label_2609
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x98]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0xd8]
	nop	
	and	rax, 0x80
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2609
.label_2617:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2608
.label_2609:
	nop	
	jmp	.label_2611
.label_2607:
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2608
.label_2611:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	ecx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	ecx, 8
	mov	rbp, rbp
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2610
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	mov	rsp, rsp
	call	re_string_context_at
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x28], eax
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2615
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 1
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2606
.label_2615:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	mov	rsp, rsp
	and	ecx, 0x3ff
	lea	rdi, [rdi]
	and	ecx, 8
	lea	rdi, [rdi]
	cmp	ecx, 0
	lea	rdi, [rdi]
	je	.label_2612
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x28]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_2606
.label_2612:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	nop	
	and	ecx, 0x20
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_2614
	mov	eax, dword ptr [rbp - 0x28]
	mov	rbp, rbp
	and	eax, 2
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_2606
.label_2614:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	lea	rsi, [rsi]
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2603
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_2603
.label_2606:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2608
.label_2603:
	mov	rbp, rbp
	jmp	.label_2610
.label_2610:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 1
.label_2608:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0x40
	lea	rdi, [rdi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x425190

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	nop	
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4251b0

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	mov	rsp, rsp
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x30], 0
.label_2637:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2631
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	shr	edx, 0x14
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	jne	.label_2638
	jmp	.label_2620
.label_2638:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	lea	rdi, [rdi]
	cmp	edx, 0
	je	.label_2622
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 0xa0]
	lea	rdi, [rdi]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	shl	rsi, 4
	lea	rsi, [rsi]
	add	rsi, qword ptr [rdi]
	mov	rsp, rsp
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	lea	rdi, [rdi]
	and	eax, 4
	cmp	eax, 0
	je	.label_2629
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2625
.label_2629:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	edx, 8
	lea	rsi, [rsi]
	and	edx, 0x3ff
	and	edx, 8
	nop	
	cmp	edx, 0
	je	.label_2624
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2625
.label_2624:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x20
	cmp	edx, 0
	nop	
	je	.label_2634
	mov	eax, dword ptr [rbp - 0x6c]
	lea	rsi, [rsi]
	and	eax, 2
	mov	rsp, rsp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2625
.label_2634:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	lea	rdi, [rdi]
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_2632
	mov	eax, dword ptr [rbp - 0x6c]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	nop	
	jne	.label_2632
.label_2625:
	jmp	.label_2620
.label_2632:
	jmp	.label_2622
.label_2622:
	nop	
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	mov	rsp, rsp
	jne	.label_2633
	mov	rsp, rsp
	jmp	.label_2620
.label_2633:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	lea	rdi, [rdi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	edx, dword ptr [rax + 0xe0]
	mov	rsp, rsp
	cmp	edx, dword ptr [rbp - 0x5c]
	jge	.label_2621
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2640
.label_2621:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax + 0xe0]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], ecx
.label_2640:
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0xe0], eax
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	call	clean_state_log_if_needed
	nop	
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	lea	rdi, [rdi]
	setne	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	eax, dl
	nop	
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2636
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2628
.label_2636:
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2635
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	nop	
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2623
.label_2635:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x48]
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x50]
	lea	rsi, [rsi]
	call	re_node_set_init_union
	nop	
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	nop	
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2630
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2628
.label_2630:
	lea	rdi, [rdi]
	jmp	.label_2623
.label_2623:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rbp, rbp
	mov	rsi, rax
	call	re_string_context_at
	nop	
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x48]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2626
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
.label_2626:
	xor	eax, eax
	mov	cl, al
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, qword ptr [rsi + 0xb8]
	lea	rsi, [rsi]
	cmp	qword ptr [rsi + rdx*8], 0
	nop	
	mov	byte ptr [rbp - 0x7d], cl
	nop	
	jne	.label_2627
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x24], 0
	setne	al
	mov	byte ptr [rbp - 0x7d], al
.label_2627:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x7d]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	ecx, al
	lea	rdi, [rdi]
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2639
	mov	eax, dword ptr [rbp - 0x24]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2628
.label_2639:
	mov	rsp, rsp
	jmp	.label_2620
.label_2620:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2637
.label_2631:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0
.label_2628:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4256b0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	lea	rsi, [rsi]
	push	rbp
	nop	
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	rsp, rsp
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x35], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x49], 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x4a], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	mov	rbp, rbp
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	lea	rsi, [rsi]
	cmp	rax, 0
	je	.label_2707
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	lea	rdi, [rdi]
	jmp	.label_2654
.label_2707:
	nop	
	mov	byte ptr [rbp - 0x49], 1
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	qword ptr [rax + 0x58], 0
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	qword ptr [rax + 0x60], 0
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	call	group_nodes_into_DFAstates
	nop	
	mov	qword ptr [rbp - 0x58], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	setle	r8b
	mov	rsp, rsp
	and	r8b, 1
	mov	rsp, rsp
	movzx	r9d, r8b
	lea	rdi, [rdi]
	movsxd	rax, r9d
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2682
	mov	rbp, rbp
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_2696
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2696:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_2706
	mov	eax, 8
	lea	rdi, [rdi]
	mov	edi, eax
	nop	
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	lea	rdi, [rdi]
	sete	cl
	nop	
	and	cl, 1
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2647
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	mov	rsp, rsp
	jmp	.label_2654
.label_2647:
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_2654
.label_2706:
	mov	byte ptr [rbp - 1], 0
	nop	
	jmp	.label_2654
.label_2682:
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x90]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	nop	
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	eax, cl
	mov	rbp, rbp
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2677
	jmp	.label_2666
.label_2677:
	movabs	rax, 0xaaaaaaaaaaaa855
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xd0], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2687
	jmp	.label_2666
.label_2687:
	imul	rax, qword ptr [rbp - 0x58], 3
	lea	rdi, [rdi]
	shl	rax, 3
	add	rax, 0x3800
	mov	rsp, rsp
	cmp	rax, 0xfc0
	jae	.label_2709
	mov	rax, qword ptr [rbp - 0x58]
	lea	rax, [rax + rax*2]
	mov	rbp, rbp
	lea	rax, [rax*8 + 0xf]
	lea	rdi, [rdi]
	and	rax, 0xfffffffffffffff0
	mov	rsp, rsp
	mov	rcx, rsp
	nop	
	sub	rcx, rax
	lea	rdi, [rdi]
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x68], rcx
	mov	rsp, rsp
	jmp	.label_2651
.label_2709:
	imul	rax, qword ptr [rbp - 0x58], 3
	mov	rsp, rsp
	shl	rax, 3
	mov	rsp, rsp
	mov	rdi, rax
	nop	
	call	malloc
	mov	qword ptr [rbp - 0x68], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	mov	rbp, rbp
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2669
	jmp	.label_2666
.label_2666:
	test	byte ptr [rbp - 0x4a], 1
	mov	rbp, rbp
	je	.label_2675
	mov	rax, qword ptr [rbp - 0x68]
	nop	
	mov	rdi, rax
	call	free
.label_2675:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2704:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x58]
	nop	
	jge	.label_2691
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2704
.label_2691:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x49], 1
	mov	rsp, rsp
	je	.label_2645
	nop	
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdi, rax
	call	free
.label_2645:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2654
.label_2669:
	mov	byte ptr [rbp - 0x4a], 1
.label_2651:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	nop	
	mov	rcx, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x28], 0
.label_2652:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	jge	.label_2671
	mov	qword ptr [rbp - 0x88], 0
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2672:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2683
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x18
	lea	rdi, [rdi]
	add	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xd8], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0xd8], -1
	mov	rsp, rsp
	je	.label_2668
	lea	rdi, [rbp - 0x90]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	nop	
	imul	rcx, qword ptr [rbp - 0xd8], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsi, rax
	mov	rsp, rsp
	call	re_node_set_merge
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	nop	
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2700
	jmp	.label_2666
.label_2700:
	jmp	.label_2668
.label_2668:
	nop	
	jmp	.label_2702
.label_2702:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2672
.label_2683:
	mov	rbp, rbp
	lea	rdi, [rbp - 0x1c]
	lea	rdi, [rdi]
	lea	rdx, [rbp - 0x90]
	mov	rsp, rsp
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	rbp, rbp
	mov	r8b, cl
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xd9], r8b
	lea	rdi, [rdi]
	jne	.label_2688
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	nop	
	mov	byte ptr [rbp - 0xd9], al
.label_2688:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	nop	
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2641
	nop	
	jmp	.label_2666
.label_2641:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	lea	rdi, [rdi]
	movzx	esi, dl
	mov	rsp, rsp
	cmp	esi, 0
	je	.label_2693
	lea	rdi, [rbp - 0x1c]
	lea	rsi, [rsi]
	lea	rdx, [rbp - 0x90]
	mov	rbp, rbp
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xda], r8b
	mov	rbp, rbp
	jne	.label_2665
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xda], al
.label_2665:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0xda]
	lea	rdi, [rdi]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	mov	rsp, rsp
	cmp	rdx, 0
	mov	rsp, rsp
	je	.label_2685
	nop	
	jmp	.label_2666
.label_2685:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2644
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rsi, [rsi]
	jle	.label_2644
	mov	byte ptr [rbp - 0x35], 1
.label_2644:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xdb], r8b
	jne	.label_2656
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x1c], 0
	lea	rdi, [rdi]
	setne	al
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xdb], al
.label_2656:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xdb]
	mov	rsp, rsp
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	nop	
	cmp	rdx, 0
	je	.label_2674
	nop	
	jmp	.label_2666
.label_2674:
	lea	rsi, [rsi]
	jmp	.label_2708
.label_2693:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2708:
	lea	rdi, [rbp - 0xc0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	rsp, rsp
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2652
.label_2671:
	nop	
	test	byte ptr [rbp - 0x35], 1
	jne	.label_2655
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	lea	rdi, [rdi]
	call	calloc
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	nop	
	movzx	edx, cl
	mov	rsp, rsp
	movsxd	rax, edx
	lea	rsi, [rsi]
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2662
	lea	rdi, [rdi]
	jmp	.label_2666
.label_2662:
	mov	qword ptr [rbp - 0x28], 0
.label_2650:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x28], 4
	mov	rsp, rsp
	jge	.label_2681
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	shl	rax, 6
	mov	rsp, rsp
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 1
.label_2701:
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2703
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2697
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], 0
.label_2690:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	shl	rcx, 5
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_2648
	lea	rdi, [rdi]
	jmp	.label_2659
.label_2659:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2690
.label_2648:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rbp, rbp
	and	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	cmp	rax, 0
	je	.label_2664
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	nop	
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2680
.label_2664:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
.label_2680:
	mov	rsp, rsp
	jmp	.label_2697
.label_2697:
	lea	rsi, [rsi]
	jmp	.label_2698
.label_2698:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2701
.label_2703:
	lea	rdi, [rdi]
	jmp	.label_2646
.label_2646:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2650
.label_2681:
	jmp	.label_2667
.label_2655:
	mov	rbp, rbp
	mov	eax, 8
	mov	edi, eax
	nop	
	mov	eax, 0x200
	lea	rsi, [rsi]
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x60], 0
	lea	rsi, [rsi]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	nop	
	cmp	rax, 0
	je	.label_2661
	jmp	.label_2666
.label_2661:
	mov	qword ptr [rbp - 0x28], 0
.label_2694:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_2679
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	nop	
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 1
.label_2678:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2670
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_2695
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2653:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	nop	
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	lea	rsi, [rsi]
	jne	.label_2657
	lea	rsi, [rsi]
	jmp	.label_2689
.label_2689:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2653
.label_2657:
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rdx + rcx*8], rax
.label_2695:
	lea	rsi, [rsi]
	jmp	.label_2673
.label_2673:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	shr	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	rsp, rsp
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	mov	rsp, rsp
	jmp	.label_2678
.label_2670:
	nop	
	jmp	.label_2692
.label_2692:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2694
.label_2679:
	jmp	.label_2667
.label_2667:
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0xc0]
	nop	
	call	bitset_contain
	nop	
	test	al, 1
	mov	rbp, rbp
	jne	.label_2710
	jmp	.label_2643
.label_2710:
	mov	qword ptr [rbp - 0x30], 0
.label_2686:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2649
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	nop	
	call	bitset_contain
	mov	rsp, rsp
	test	al, 1
	nop	
	jne	.label_2660
	nop	
	jmp	.label_2676
.label_2660:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0x35], 1
	mov	rsp, rsp
	je	.label_2663
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x850], rax
.label_2663:
	jmp	.label_2649
.label_2676:
	mov	rbp, rbp
	jmp	.label_2684
.label_2684:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2686
.label_2649:
	lea	rsi, [rsi]
	jmp	.label_2643
.label_2643:
	test	byte ptr [rbp - 0x4a], 1
	mov	rbp, rbp
	je	.label_2699
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_2699:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2658:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2642
	nop	
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	lea	rdi, [rdi]
	add	rax, rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2658
.label_2642:
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x49], 1
	lea	rdi, [rdi]
	je	.label_2705
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2705:
	mov	byte ptr [rbp - 1], 1
.label_2654:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	mov	rsp, rbp
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4263a0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x100
	mov	rsp, rsp
	lea	rax, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	add	rcx, 8
	mov	qword ptr [rbp - 0x78], rcx
	nop	
	mov	rdi, rax
	mov	rsp, rsp
	call	bitset_empty
	mov	qword ptr [rbp - 0x50], 0
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x38], 0
.label_2754:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2711
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	nop	
	mov	dword ptr [rbp - 0x88], edx
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2717
	lea	rdi, [rbp - 0x70]
	nop	
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	lea	rsi, [rsi]
	call	bitset_set
	mov	rbp, rbp
	jmp	.label_2748
.label_2717:
	cmp	dword ptr [rbp - 0x84], 3
	mov	rbp, rbp
	jne	.label_2749
	nop	
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	lea	rsi, [rsi]
	call	bitset_merge
	mov	rbp, rbp
	jmp	.label_2726
.label_2749:
	cmp	dword ptr [rbp - 0x84], 5
	jne	.label_2758
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	dword ptr [rax + 0xb4], 1
	nop	
	jle	.label_2761
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax + 0x78]
	mov	rsp, rsp
	call	bitset_merge
	jmp	.label_2715
.label_2761:
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	call	bitset_set_all
.label_2715:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2720
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rdi, [rdi]
	call	bitset_clear
.label_2720:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2732
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	call	bitset_clear
.label_2732:
	mov	rsp, rsp
	jmp	.label_2741
.label_2758:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x84], 7
	mov	rsp, rsp
	jne	.label_2745
	mov	esi, 0xff
	mov	rbp, rbp
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	lea	rdi, [rdi]
	mov	rdi, rcx
	call	memset
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	mov	rbp, rbp
	jne	.label_2751
	nop	
	mov	eax, 0xa
	mov	esi, eax
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	mov	rsp, rsp
	call	bitset_clear
.label_2751:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2764
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	mov	rbp, rbp
	call	bitset_clear
.label_2764:
	jmp	.label_2719
.label_2745:
	jmp	.label_2722
.label_2719:
	jmp	.label_2741
.label_2741:
	jmp	.label_2726
.label_2726:
	jmp	.label_2748
.label_2748:
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x88], 0
	nop	
	je	.label_2728
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x20
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_2730
	mov	eax, 0xa
	mov	rbp, rbp
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	call	bitset_contain
	lea	rdi, [rbp - 0x70]
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x89], al
	mov	rbp, rbp
	call	bitset_empty
	test	byte ptr [rbp - 0x89], 1
	lea	rsi, [rsi]
	je	.label_2747
	lea	rsi, [rsi]
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_set
	jmp	.label_2750
.label_2747:
	jmp	.label_2722
.label_2750:
	jmp	.label_2730
.label_2730:
	mov	eax, dword ptr [rbp - 0x88]
	nop	
	and	eax, 0x80
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rbp, rbp
	je	.label_2734
	mov	rbp, rbp
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2722
.label_2734:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	and	eax, 4
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2735
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0x84], 1
	mov	rbp, rbp
	jne	.label_2713
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x80]
	nop	
	mov	ecx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_2713
	lea	rdi, [rbp - 0x70]
	lea	rsi, [rsi]
	call	bitset_empty
	jmp	.label_2722
.label_2713:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	lea	rdi, [rdi]
	jle	.label_2733
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], 0
.label_2743:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2737
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2743
.label_2737:
	lea	rdi, [rdi]
	jmp	.label_2731
.label_2733:
	mov	qword ptr [rbp - 0x40], 0
.label_2769:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2767
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	nop	
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_2769
.label_2767:
	nop	
	jmp	.label_2731
.label_2731:
	cmp	qword ptr [rbp - 0x98], 0
	lea	rdi, [rdi]
	jne	.label_2756
	jmp	.label_2722
.label_2756:
	lea	rdi, [rdi]
	jmp	.label_2735
.label_2735:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rbp, rbp
	and	eax, 8
	cmp	eax, 0
	je	.label_2729
	mov	qword ptr [rbp - 0xa0], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2744
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	mov	rbp, rbp
	shr	ecx, 0x16
	mov	rsp, rsp
	and	ecx, 1
	cmp	ecx, 0
	je	.label_2744
	lea	rdi, [rbp - 0x70]
	nop	
	call	bitset_empty
	lea	rsi, [rsi]
	jmp	.label_2722
.label_2744:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	dword ptr [rax + 0xb4], 1
	mov	rbp, rbp
	jle	.label_2755
	mov	qword ptr [rbp - 0x40], 0
.label_2759:
	cmp	qword ptr [rbp - 0x40], 4
	mov	rbp, rbp
	jge	.label_2766
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	nop	
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_2759
.label_2766:
	mov	rbp, rbp
	jmp	.label_2721
.label_2755:
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], 0
.label_2742:
	cmp	qword ptr [rbp - 0x40], 4
	mov	rbp, rbp
	jge	.label_2736
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	rbp, rbp
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	mov	rbp, rbp
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_2742
.label_2736:
	lea	rsi, [rsi]
	jmp	.label_2721
.label_2721:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_2760
	jmp	.label_2722
.label_2760:
	jmp	.label_2729
.label_2729:
	jmp	.label_2728
.label_2728:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], 0
.label_2768:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_2712
	cmp	dword ptr [rbp - 0x84], 1
	nop	
	jne	.label_2716
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x80]
	nop	
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rbp, rbp
	mov	rdi, rax
	lea	rdi, [rdi]
	call	bitset_contain
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_2716
	lea	rdi, [rdi]
	jmp	.label_2714
.label_2716:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xe8], 0
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], 0
.label_2727:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x48], 4
	nop	
	jge	.label_2739
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2727
.label_2739:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xe8], 0
	mov	rsp, rsp
	jne	.label_2765
	jmp	.label_2714
.label_2765:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x48], 0
.label_2752:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x48], 4
	lea	rdi, [rdi]
	jge	.label_2725
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	nop	
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	or	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	lea	rsi, [rsi]
	add	rdx, qword ptr [rbp - 0x28]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	nop	
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	nop	
	or	rax, qword ptr [rbp - 0xf8]
	nop	
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2752
.label_2725:
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_2757
	lea	rsi, [rbp - 0xe0]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdi, rax
	call	bitset_copy
	mov	rbp, rbp
	lea	rsi, [rbp - 0xc0]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	nop	
	add	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	bitset_copy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x40]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	mov	rsp, rsp
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	lea	rdi, [rdi]
	movsxd	rsi, eax
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2753
	jmp	.label_2738
.label_2753:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_2757:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	nop	
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	mov	rsp, rsp
	movzx	r8d, al
	movsxd	rcx, r8d
	mov	rsp, rsp
	cmp	rcx, 0
	je	.label_2723
	jmp	.label_2738
.label_2723:
	cmp	qword ptr [rbp - 0xf8], 0
	lea	rsi, [rsi]
	jne	.label_2762
	jmp	.label_2712
.label_2762:
	lea	rsi, [rsi]
	jmp	.label_2714
.label_2714:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	jmp	.label_2768
.label_2712:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	jne	.label_2718
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	nop	
	shl	rax, 5
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	lea	rdi, [rdi]
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x78]
	nop	
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	nop	
	movsxd	rsi, eax
	lea	rsi, [rsi]
	cmp	rsi, 0
	je	.label_2740
	jmp	.label_2738
.label_2740:
	lea	rdi, [rdi]
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	call	bitset_empty
.label_2718:
	jmp	.label_2722
.label_2722:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	lea	rdi, [rdi]
	jmp	.label_2754
.label_2711:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_2763
.label_2738:
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], 0
.label_2724:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_2746
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	mov	rsp, rsp
	add	rax, rcx
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	free
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2724
.label_2746:
	mov	qword ptr [rbp - 8], -1
.label_2763:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426e60

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426e90

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_2770:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x14], 4
	lea	rdi, [rdi]
	jge	.label_2771
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2770
.label_2771:
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426f00

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	esi, 0xff
	mov	rsp, rsp
	mov	eax, 0x20
	nop	
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x426f40

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	eax, 0x40
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	eax, 1
	mov	edx, eax
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsp, rsp
	cqo	
	lea	rsi, [rsi]
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	shl	rdx, cl
	mov	rsp, rsp
	xor	rdx, 0xffffffffffffffff
	nop	
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	lea	rdi, [rdi]
	cqo	
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	nop	
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rbp - 0x28]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x426fd0

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi]
	lea	rsi, [rsi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsi + 0x18], rax
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x427010

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	nop	
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	nop	
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rsp, rsp
	mov	edx, dword ptr [rsi + 8]
	lea	rsi, [rsi]
	shr	edx, 8
	mov	rbp, rbp
	and	edx, 0x3ff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x24], edx
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x20], 2
	je	.label_2777
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2772
.label_2777:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2774
	mov	byte ptr [rbp - 1], 1
	nop	
	jmp	.label_2772
.label_2774:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 4
	mov	rbp, rbp
	cmp	eax, 0
	lea	rdi, [rdi]
	je	.label_2775
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	and	eax, 1
	nop	
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2773
.label_2775:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	and	eax, 8
	cmp	eax, 0
	je	.label_2776
	nop	
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	lea	rsi, [rsi]
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2773
.label_2776:
	mov	eax, dword ptr [rbp - 0x24]
	nop	
	and	eax, 0x20
	cmp	eax, 0
	je	.label_2779
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	and	eax, 2
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_2773
.label_2779:
	mov	eax, dword ptr [rbp - 0x24]
	lea	rsi, [rsi]
	and	eax, 0x80
	mov	rbp, rbp
	cmp	eax, 0
	nop	
	je	.label_2778
	mov	eax, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	and	eax, 8
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_2778
.label_2773:
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2772
.label_2778:
	mov	byte ptr [rbp - 1], 1
.label_2772:
	nop	
	mov	al, byte ptr [rbp - 1]
	lea	rsi, [rsi]
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427170

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	lea	rsi, [rsi]
	xor	eax, eax
	nop	
	mov	r9d, 0x18
	nop	
	mov	r10d, r9d
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rdx + 0x10], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rdi, rcx
	mov	esi, eax
	lea	rdi, [rdi]
	mov	rdx, r10
	call	memset
	add	rsp, 0x30
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427220

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], 0
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	nop	
	mov	rdi, rax
	call	re_node_set_init_1
	nop	
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	lea	rdi, [rdi]
	movzx	eax, cl
	movsxd	rsi, eax
	mov	rbp, rbp
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2786
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2782
.label_2786:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	call	update_cur_sifted_state
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2789
	jmp	.label_2783
.label_2789:
	lea	rdi, [rdi]
	jmp	.label_2780
.label_2780:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_2788
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2791
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2784
.label_2791:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2784
.label_2784:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x44]
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_2790
	nop	
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rsp, rsp
	mov	rdi, rax
	lea	rdi, [rdi]
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	nop	
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2782
.label_2790:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	lea	rsi, [rsi]
	je	.label_2787
	lea	rsi, [rsi]
	lea	rcx, [rbp - 0x40]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	build_sifted_states
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2781
	mov	rsp, rsp
	jmp	.label_2783
.label_2781:
	nop	
	jmp	.label_2787
.label_2787:
	mov	rsp, rsp
	lea	rcx, [rbp - 0x40]
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x1c], 0
	mov	rsp, rsp
	setne	r8b
	and	r8b, 1
	nop	
	movzx	eax, r8b
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2785
	jmp	.label_2783
.label_2785:
	mov	rbp, rbp
	jmp	.label_2780
.label_2788:
	mov	dword ptr [rbp - 0x1c], 0
.label_2783:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x1c]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], ecx
.label_2782:
	mov	eax, dword ptr [rbp - 4]
	mov	rbp, rbp
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x4274c0

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2794:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2795
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2800
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2798
.label_2800:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2797
	lea	rdi, [rbp - 0x50]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	movsxd	rcx, eax
	mov	rbp, rbp
	cmp	rcx, 0
	nop	
	je	.label_2796
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2793
.label_2796:
	lea	rdi, [rbp - 0x34]
	lea	rdx, [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	re_acquire_state
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	nop	
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rsi + rdx*8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	free
	cmp	dword ptr [rbp - 0x34], 0
	lea	rsi, [rsi]
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	je	.label_2799
	nop	
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_2793
.label_2799:
	lea	rsi, [rsi]
	jmp	.label_2797
.label_2797:
	nop	
	jmp	.label_2798
.label_2798:
	mov	rbp, rbp
	jmp	.label_2792
.label_2792:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_2794
.label_2795:
	mov	dword ptr [rbp - 4], 0
.label_2793:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x427680

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_2801
	lea	rdi, [rdi]
	xor	eax, eax
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2807
.label_2801:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
.label_2807:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2805
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	jmp	.label_2806
.label_2805:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_2804
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 0x34], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2810
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	mov	rsp, rsp
	jmp	.label_2802
.label_2810:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	mov	rsp, rsp
	je	.label_2809
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rcx, rax
	lea	rsi, [rsi]
	call	check_subexp_limits
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	mov	rsp, rsp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2811
	mov	eax, dword ptr [rbp - 0x34]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2802
.label_2811:
	jmp	.label_2809
.label_2809:
	jmp	.label_2804
.label_2804:
	nop	
	lea	rdi, [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	nop	
	cmp	dword ptr [rbp - 0x34], 0
	lea	rdi, [rdi]
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2803
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2802
.label_2803:
	lea	rdi, [rdi]
	jmp	.label_2806
.label_2806:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2808
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 6
	and	dl, 1
	nop	
	movzx	esi, dl
	nop	
	cmp	esi, 0
	mov	rbp, rbp
	je	.label_2808
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	call	sift_states_bkref
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	nop	
	and	r8b, 1
	lea	rdi, [rdi]
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2812
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2802
.label_2812:
	nop	
	jmp	.label_2808
.label_2808:
	mov	dword ptr [rbp - 4], 0
.label_2802:
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0x50
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427960

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	mov	rbp, rbp
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rdx + 0xb8]
	nop	
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x38], rcx
	nop	
	mov	qword ptr [rbp - 0x40], 0
.label_2824:
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2814
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	shr	edx, 0x14
	mov	rsp, rsp
	and	edx, 1
	cmp	edx, 0
	je	.label_2818
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	r8, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	call	sift_states_iter_mb
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x4c], eax
.label_2818:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x4c], 0
	nop	
	jne	.label_2815
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	mov	rbp, rbp
	add	rax, rcx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_node_accept
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2821
	jmp	.label_2815
.label_2821:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	nop	
	je	.label_2815
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2815
	nop	
	mov	dword ptr [rbp - 0x4c], 1
.label_2815:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_2817
	mov	rbp, rbp
	jmp	.label_2820
.label_2817:
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2823
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	lea	rdi, [rdi]
	add	rax, rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	add	rax, 0x20
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x48]
	nop	
	mov	r9, qword ptr [rbp - 0x20]
	mov	rsi, rax
	mov	rbp, rbp
	call	check_dst_limits
	test	al, 1
	jne	.label_2816
	nop	
	jmp	.label_2819
.label_2816:
	jmp	.label_2820
.label_2819:
	jmp	.label_2823
.label_2823:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	al, byte ptr [rbp - 0x4d]
	nop	
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	nop	
	cmp	rsi, 0
	lea	rsi, [rsi]
	je	.label_2813
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2822
.label_2813:
	lea	rdi, [rdi]
	jmp	.label_2820
.label_2820:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rbp, rbp
	jmp	.label_2824
.label_2814:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_2822:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x427c40

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	nop	
	sub	rsp, 0x40
	lea	rax, [rbp - 0x24]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x24], 0
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdi, rax
	nop	
	call	re_acquire_state
	nop	
	mov	qword ptr [rbp - 0x38], rax
	nop	
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	mov	rbp, rbp
	cmp	rax, 0
	je	.label_2825
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x24]
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2827
.label_2825:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x38], 0
	mov	rbp, rbp
	jne	.label_2830
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	lea	rdi, [rdi]
	movzx	eax, dl
	mov	rbp, rbp
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2828
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2827
.label_2828:
	mov	qword ptr [rbp - 0x30], 0
.label_2832:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2829
	mov	rax, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	add	rax, 0x38
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rbp, rbp
	imul	rdx, qword ptr [rsi + rdx*8], 0x18
	add	rcx, rdx
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	nop	
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x24], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x24], 0
	setne	r8b
	mov	rsp, rsp
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	lea	rsi, [rsi]
	je	.label_2826
	mov	dword ptr [rbp - 4], 0xc
	lea	rdi, [rdi]
	jmp	.label_2827
.label_2826:
	jmp	.label_2831
.label_2831:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	nop	
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2832
.label_2829:
	mov	rsp, rsp
	jmp	.label_2830
.label_2830:
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	lea	rsi, [rsi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 4], eax
.label_2827:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x40
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x427e20

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], 0
.label_2838:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	jge	.label_2855
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	lea	rsi, [rsi]
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	jle	.label_2859
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2850
.label_2859:
	jmp	.label_2837
.label_2850:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_2853
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
.label_2841:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	nop	
	jge	.label_2844
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rsi, [rsi]
	and	edx, 0xff
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x7c], edx
	cmp	dword ptr [rbp - 0x7c], 8
	lea	rdi, [rdi]
	jne	.label_2840
	mov	rax, qword ptr [rbp - 0x58]
	nop	
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	jne	.label_2840
	mov	rax, qword ptr [rbp - 0x78]
	nop	
	mov	qword ptr [rbp - 0x68], rax
	mov	rsp, rsp
	jmp	.label_2848
.label_2840:
	cmp	dword ptr [rbp - 0x7c], 9
	lea	rdi, [rdi]
	jne	.label_2834
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	nop	
	cmp	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	jne	.label_2834
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
.label_2834:
	jmp	.label_2848
.label_2848:
	mov	rbp, rbp
	jmp	.label_2858
.label_2858:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2841
.label_2844:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jl	.label_2839
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	nop	
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	mov	rbp, rbp
	je	.label_2854
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_2833
.label_2854:
	lea	rdi, [rdi]
	jmp	.label_2839
.label_2839:
	cmp	qword ptr [rbp - 0x70], 0
	jl	.label_2842
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
.label_2849:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2846
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	jne	.label_2843
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	nop	
	add	rax, rcx
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2843
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	call	sub_epsilon_src_nodes
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x3c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	cmp	rcx, 0
	je	.label_2852
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x3c]
	nop	
	mov	dword ptr [rbp - 4], eax
	mov	rbp, rbp
	jmp	.label_2833
.label_2852:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_2843:
	lea	rdi, [rdi]
	jmp	.label_2847
.label_2847:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2849
.label_2846:
	jmp	.label_2842
.label_2842:
	jmp	.label_2836
.label_2853:
	mov	qword ptr [rbp - 0x48], 0
.label_2860:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2857
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	mov	edx, dword ptr [rax + 8]
	mov	rsp, rsp
	and	edx, 0xff
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x94], edx
	cmp	dword ptr [rbp - 0x94], 9
	lea	rsi, [rsi]
	je	.label_2861
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x94], 8
	jne	.label_2851
.label_2861:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	lea	rdi, [rdi]
	je	.label_2856
	jmp	.label_2835
.label_2856:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	sub_epsilon_src_nodes
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	mov	rbp, rbp
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	je	.label_2845
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	lea	rdi, [rdi]
	jmp	.label_2833
.label_2845:
	lea	rdi, [rdi]
	jmp	.label_2851
.label_2851:
	mov	rbp, rbp
	jmp	.label_2835
.label_2835:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2860
.label_2857:
	jmp	.label_2836
.label_2836:
	jmp	.label_2837
.label_2837:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rbp, rbp
	jmp	.label_2838
.label_2855:
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
.label_2833:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xa0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x428350

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rcx
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x88], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x88], -1
	lea	rdi, [rdi]
	jne	.label_2866
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2880
.label_2866:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x40], 0
.label_2881:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	jge	.label_2871
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x94], edx
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_2877
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	mov	rbp, rbp
	jne	.label_2877
	jmp	.label_2879
.label_2877:
	cmp	dword ptr [rbp - 0x94], 4
	lea	rsi, [rsi]
	je	.label_2883
	jmp	.label_2879
.label_2883:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x88], 0x28
	mov	rbp, rbp
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_2869:
	mov	rax, qword ptr [rbp - 0xa0]
	nop	
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	je	.label_2872
	mov	rbp, rbp
	jmp	.label_2875
.label_2872:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_2878
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2865
.label_2878:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xd0], rax
.label_2865:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_2862
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	mov	rbp, rbp
	je	.label_2862
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2862
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rbp, rbp
	mov	rdi, rax
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2862
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	add	rax, 0x20
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	r8, qword ptr [rbp - 0xb8]
	lea	rsi, [rsi]
	mov	r9, qword ptr [rbp - 0xb0]
	lea	rdi, [rdi]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_dst_limits
	mov	rsp, rsp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_2862
	jmp	.label_2874
.label_2862:
	jmp	.label_2875
.label_2874:
	cmp	qword ptr [rbp - 0x80], 0
	lea	rdi, [rdi]
	jne	.label_2876
	mov	rsp, rsp
	lea	rax, [rbp - 0x80]
	mov	rbp, rbp
	mov	ecx, 0x38
	mov	rsp, rsp
	mov	edx, ecx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xd8], rax
	nop	
	call	memcpy
	mov	rax, qword ptr [rbp - 0xd8]
	nop	
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsp, rsp
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	setne	r8b
	lea	rdi, [rdi]
	and	r8b, 1
	mov	rsp, rsp
	movzx	eax, r8b
	lea	rsi, [rsi]
	movsxd	rdx, eax
	cmp	rdx, 0
	lea	rsi, [rsi]
	je	.label_2870
	lea	rdi, [rdi]
	jmp	.label_2868
.label_2870:
	jmp	.label_2876
.label_2876:
	lea	rsi, [rsi]
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x68], rcx
	lea	rdi, [rdi]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	nop	
	movzx	edx, al
	mov	rsp, rsp
	movsxd	rcx, edx
	cmp	rcx, 0
	nop	
	je	.label_2873
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0xc
	jmp	.label_2868
.label_2873:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	dl
	nop	
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	lea	rdi, [rdi]
	cmp	rcx, 0
	nop	
	je	.label_2863
	jmp	.label_2868
.label_2863:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], 0
	lea	rsi, [rsi]
	je	.label_2867
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	mov	rsi, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	add	rax, 1
	mov	rcx, rax
	mov	rbp, rbp
	call	merge_state_array
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	mov	rbp, rbp
	and	r8b, 1
	nop	
	movzx	eax, r8b
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rsp, rsp
	cmp	rcx, 0
	nop	
	je	.label_2882
	jmp	.label_2868
.label_2882:
	jmp	.label_2867
.label_2867:
	lea	rax, [rbp - 0x80]
	nop	
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsi + rdx*8], rcx
	nop	
	mov	rcx, rax
	add	rcx, 0x20
	nop	
	add	rax, 0x20
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	mov	rdi, rax
	mov	qword ptr [rbp - 0xe0], rcx
	call	re_node_set_contains
	nop	
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x90], 0x28
	add	rax, rcx
	nop	
	mov	qword ptr [rbp - 0xa0], rax
.label_2875:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rsp, rsp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xa0], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2869
	mov	rbp, rbp
	jmp	.label_2879
.label_2879:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2881
.label_2871:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x34], 0
.label_2868:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2864
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
.label_2864:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], eax
.label_2880:
	nop	
	mov	eax, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	add	rsp, 0xe0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x428940

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x70
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 8], 0
	je	.label_2899
	nop	
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	qword ptr [rax + 8], 0
	mov	rbp, rbp
	jne	.label_2908
.label_2899:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2884
.label_2908:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	nop	
	jle	.label_2886
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, rcx
	lea	rsi, [rsi]
	call	realloc
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	dl
	and	dl, 1
	lea	rsi, [rsi]
	movzx	r8d, dl
	nop	
	movsxd	rax, r8d
	nop	
	cmp	rax, 0
	lea	rdi, [rdi]
	je	.label_2911
	mov	dword ptr [rbp - 4], 0xc
	nop	
	jmp	.label_2884
.label_2911:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rcx], rax
.label_2886:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rax, qword ptr [rax + 8]
	mov	rbp, rbp
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
.label_2892:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2897
	jmp	.label_2900
.label_2900:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x61], cl
	lea	rsi, [rsi]
	jl	.label_2906
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x61], sil
.label_2906:
	mov	al, byte ptr [rbp - 0x61]
	test	al, 1
	nop	
	jne	.label_2895
	mov	rbp, rbp
	jmp	.label_2898
.label_2895:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2900
.label_2898:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2904
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2907
.label_2904:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_2907:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	add	rax, -1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rax
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jl	.label_2902
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	cmp	rax, 0
	lea	rsi, [rsi]
	jge	.label_2909
.label_2902:
	jmp	.label_2885
.label_2909:
	jmp	.label_2887
.label_2897:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2894
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	rax, 0
	jge	.label_2901
	jmp	.label_2885
.label_2901:
	mov	rsp, rsp
	jmp	.label_2889
.label_2894:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rax
	lea	rdi, [rdi]
	cmp	rax, 0
	jge	.label_2910
	nop	
	jmp	.label_2885
.label_2910:
	jmp	.label_2889
.label_2889:
	jmp	.label_2887
.label_2887:
	jmp	.label_2892
.label_2885:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	nop	
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x38], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	sub	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x48], 0
	nop	
	jle	.label_2891
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	jl	.label_2891
	mov	rsp, rsp
	jmp	.label_2893
.label_2893:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2896
	mov	rax, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, rax
	lea	rdi, [rdi]
	add	rcx, -1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x48], rsi
	add	rcx, rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_2905
	jmp	.label_2888
.label_2905:
	lea	rsi, [rsi]
	jmp	.label_2890
.label_2896:
	nop	
	mov	rax, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rbp, rbp
	add	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rbp, rbp
	mov	qword ptr [rdx + rcx*8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	mov	rbp, rbp
	jge	.label_2903
	jmp	.label_2888
.label_2903:
	lea	rdi, [rdi]
	jmp	.label_2890
.label_2890:
	mov	rsp, rsp
	jmp	.label_2893
.label_2888:
	lea	rdi, [rdi]
	jmp	.label_2891
.label_2891:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	mov	rbp, rbp
	add	rcx, rdx
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 3
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsi, rcx
	nop	
	call	memcpy
	mov	dword ptr [rbp - 4], 0
.label_2884:
	mov	eax, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	add	rsp, 0x70
	lea	rdi, [rdi]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x428e90

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, 0x18
	lea	rdi, [rdi]
	mov	r9d, r8d
	mov	rbp, rbp
	lea	r10, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	rcx, qword ptr [rcx + 0x38]
	lea	rsi, [rsi]
	imul	rdx, qword ptr [rbp - 0x18], 0x18
	nop	
	add	rcx, rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, r10
	mov	esi, eax
	lea	rsi, [rsi]
	mov	rdx, r9
	mov	rbp, rbp
	call	memset
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2925:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	mov	rbp, rbp
	jge	.label_2914
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2923
	jmp	.label_2916
.label_2923:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	rsp, rsp
	and	edx, 8
	cmp	edx, 0
	lea	rsi, [rsi]
	je	.label_2919
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x18
	mov	rsp, rsp
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_2915
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	lea	rdi, [rdi]
	add	rax, qword ptr [rcx + 0x28]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2913
.label_2915:
	lea	rsi, [rsi]
	mov	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2913
.label_2913:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x88]
	nop	
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2927
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	nop	
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	jne	.label_2926
.label_2927:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_2912
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_2912
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	mov	rbp, rbp
	cmp	rax, 0
	mov	rsp, rsp
	je	.label_2912
.label_2926:
	lea	rdi, [rbp - 0x58]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	mov	rbp, rbp
	setne	r8b
	lea	rsi, [rsi]
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	nop	
	cmp	rcx, 0
	je	.label_2924
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rsp, rsp
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	mov	rbp, rbp
	jmp	.label_2918
.label_2924:
	jmp	.label_2912
.label_2912:
	jmp	.label_2919
.label_2919:
	jmp	.label_2916
.label_2916:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2925
.label_2914:
	nop	
	mov	qword ptr [rbp - 0x30], 0
.label_2917:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2920
	lea	rsi, [rsi]
	lea	rdi, [rbp - 0x58]
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_2921
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	call	re_node_set_contains
	lea	rsi, [rsi]
	sub	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x80]
	lea	rsi, [rsi]
	call	re_node_set_remove_at
.label_2921:
	lea	rsi, [rsi]
	jmp	.label_2922
.label_2922:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rbp, rbp
	jmp	.label_2917
.label_2920:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rbp, rbp
	call	free
	mov	rbp, rbp
	mov	dword ptr [rbp - 4], 0
.label_2918:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x90
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x429230

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	nop	
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	search_cur_bkref_entry
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	lea	rsi, [rsi]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2929:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2928
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x68]
	nop	
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rcx
	nop	
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_2930
	lea	rsi, [rsi]
	jmp	.label_2931
.label_2930:
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], 1
	mov	rsp, rsp
	jmp	.label_2932
.label_2931:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	lea	rdi, [rdi]
	jmp	.label_2929
.label_2928:
	mov	byte ptr [rbp - 1], 0
.label_2932:
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	mov	rsp, rsp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4293e0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x18], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2933
	mov	dword ptr [rbp - 4], 0xffffffff
	lea	rdi, [rdi]
	jmp	.label_2935
.label_2933:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x18]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2934
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2935
.label_2934:
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	lea	rsi, [rsi]
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x18]
	nop	
	sete	dl
	mov	rsp, rsp
	and	dl, 1
	movzx	esi, dl
	mov	rbp, rbp
	shl	esi, 1
	mov	rsp, rsp
	or	esi, dword ptr [rbp - 0x44]
	nop	
	mov	dword ptr [rbp - 0x44], esi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_2936
	mov	dword ptr [rbp - 4], 0
	mov	rbp, rbp
	jmp	.label_2935
.label_2936:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	call	check_dst_limits_calc_pos_1
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], eax
.label_2935:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	add	rsp, 0x50
	lea	rsi, [rsi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x429510

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	nop	
	mov	dword ptr [rbp - 0x14], esi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rsp, rsp
	imul	rdx, qword ptr [rbp - 0x28], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x48], 0
.label_2945:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2958
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	nop	
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x38]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rcx]
	mov	rbp, rbp
	shl	rax, 4
	lea	rdi, [rdi]
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x68], edx
	mov	dword ptr [rbp - 0x6c], esi
	nop	
	je	.label_2938
	jmp	.label_2950
.label_2950:
	nop	
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 8
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x70], eax
	je	.label_2956
	lea	rsi, [rsi]
	jmp	.label_2954
.label_2954:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x68]
	mov	rsp, rsp
	sub	eax, 9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x74], eax
	lea	rsi, [rsi]
	je	.label_2957
	jmp	.label_2937
.label_2938:
	cmp	qword ptr [rbp - 0x30], -1
	nop	
	je	.label_2940
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rsp, rsp
	imul	rcx, qword ptr [rbp - 0x30], 0x28
	mov	rsp, rsp
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_2953:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_2948
	jmp	.label_2942
.label_2948:
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_2952
	mov	rbp, rbp
	mov	eax, 1
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rcx
	lea	rsi, [rsi]
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	mov	rbp, rbp
	jne	.label_2952
	lea	rdi, [rdi]
	jmp	.label_2942
.label_2952:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	jne	.label_2944
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_2955
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2949
.label_2955:
	mov	dword ptr [rbp - 4], 0
	nop	
	jmp	.label_2949
.label_2944:
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	call	check_dst_limits_calc_pos_1
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_2946
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2949
.label_2946:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2951
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	and	eax, 2
	cmp	eax, 0
	nop	
	je	.label_2951
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2949
.label_2951:
	nop	
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_2959
	mov	eax, 1
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	mov	rdx, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	lea	rdi, [rdi]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	mov	rsp, rsp
	and	rdi, rdx
	mov	rsp, rsp
	mov	r8w, di
	mov	rsp, rsp
	mov	word ptr [rsi + 0x22], r8w
.label_2959:
	lea	rsi, [rsi]
	jmp	.label_2942
.label_2942:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 0x28
	nop	
	mov	qword ptr [rbp - 0x58], rcx
	mov	rbp, rbp
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2953
	nop	
	jmp	.label_2940
.label_2940:
	lea	rdi, [rdi]
	jmp	.label_2941
.label_2956:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	and	eax, 1
	cmp	eax, 0
	je	.label_2939
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2939
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rbp, rbp
	jmp	.label_2949
.label_2939:
	mov	rsp, rsp
	jmp	.label_2941
.label_2957:
	mov	eax, dword ptr [rbp - 0x14]
	lea	rdi, [rdi]
	and	eax, 2
	nop	
	cmp	eax, 0
	je	.label_2947
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rsp, rsp
	cmp	rax, qword ptr [rcx]
	jne	.label_2947
	mov	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	jmp	.label_2949
.label_2947:
	jmp	.label_2941
.label_2937:
	mov	rsp, rsp
	jmp	.label_2941
.label_2941:
	jmp	.label_2943
.label_2943:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	jmp	.label_2945
.label_2958:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	nop	
	and	edx, 2
	cmp	edx, 0
	nop	
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2949:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4298e0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x28], r8
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rcx
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x34], eax
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x34], 0
	mov	rsp, rsp
	jle	.label_2960
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_2960
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	cmp	qword ptr [rcx + rax*8], 0
	nop	
	je	.label_2961
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	add	rax, 8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	re_node_set_contains
	mov	rsp, rsp
	cmp	rax, 0
	jne	.label_2960
.label_2961:
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 0
.label_2960:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x34]
	lea	rsi, [rsi]
	add	rsp, 0x40
	nop	
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x429a00

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2962
	nop	
	mov	qword ptr [rbp - 0x10], 0
.label_2964:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx]
	jge	.label_2963
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rax + 0x10]
	lea	rsi, [rsi]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_2964
.label_2963:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	nop	
	call	free
.label_2962:
	mov	rsp, rsp
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x429ac0

	.globl update_regs
	.type update_regs, @function
update_regs:
	nop	
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], r9
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	lea	rsi, [rsi]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 8
	mov	rbp, rbp
	jne	.label_2965
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 8]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x40], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jge	.label_2973
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rax + 8], -1
.label_2973:
	nop	
	jmp	.label_2966
.label_2965:
	cmp	dword ptr [rbp - 0x34], 9
	jne	.label_2969
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	nop	
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	jge	.label_2967
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	jge	.label_2968
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rdx, 4
	nop	
	mov	rdi, rax
	mov	rbp, rbp
	mov	rsi, rcx
	call	memcpy
	mov	rsp, rsp
	jmp	.label_2970
.label_2968:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x20]
	nop	
	mov	rcx, qword ptr [rbp - 8]
	nop	
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rcx]
	nop	
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_2972
	mov	rax, qword ptr [rbp - 0x48]
	mov	rsp, rsp
	shl	rax, 4
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_2972
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	mov	rbp, rbp
	call	memcpy
	jmp	.label_2971
.label_2972:
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	shl	rcx, 4
	lea	rsi, [rsi]
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2971:
	mov	rsp, rsp
	jmp	.label_2970
.label_2970:
	jmp	.label_2967
.label_2967:
	jmp	.label_2969
.label_2969:
	jmp	.label_2966
.label_2966:
	lea	rdi, [rdi]
	add	rsp, 0x50
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x429cf0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	nop	
	mov	qword ptr [rbp - 0x10], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx]
	mov	rsp, rsp
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	lea	rdi, [rdi]
	jl	.label_2974
	mov	rsp, rsp
	jmp	.label_2975
.label_2974:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.26
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	rsp, rsp
	mov	edx, 0x555
	mov	rsp, rsp
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
.label_2975:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rcx], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	nop	
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	shl	rdx, 4
	mov	rdi, rax
	lea	rsi, [rsi]
	mov	rsi, rcx
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rbp, rbp
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	nop	
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	mov	rbp, rbp
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax], rdx
	mov	rbp, rbp
	mov	rdx, qword ptr [rcx + 0x20]
	nop	
	mov	qword ptr [rax + 8], rdx
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0x28]
	nop	
	mov	qword ptr [rax + 0x10], rcx
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	lea	rsi, [rsi]
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x429e80

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], r8
	nop	
	mov	qword ptr [rbp - 0x38], r9
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x40], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	nop	
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	mov	rsp, rsp
	and	r10d, 8
	cmp	r10d, 0
	lea	rdi, [rdi]
	je	.label_2976
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	add	rax, 8
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rbp, rbp
	call	re_node_set_insert
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x51]
	nop	
	xor	al, 0xff
	nop	
	and	al, 1
	movzx	edx, al
	lea	rsi, [rsi]
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2998
	mov	qword ptr [rbp - 8], -2
	lea	rsi, [rsi]
	jmp	.label_2979
.label_2998:
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x50], 0
.label_2983:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2984
	mov	rax, qword ptr [rbp - 0x50]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x78], rax
	nop	
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3002
	jmp	.label_2982
.label_3002:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_3005
	nop	
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2978
.label_3005:
	mov	rdi, qword ptr [rbp - 0x38]
	nop	
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	lea	rdi, [rdi]
	cmp	rax, 0
	je	.label_2992
	mov	rax, qword ptr [rbp - 0x78]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2979
.label_2992:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	mov	rsp, rsp
	je	.label_3003
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	nop	
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rbp, rbp
	call	push_fail_stack
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_3003
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2979
.label_3003:
	jmp	.label_2981
.label_2981:
	jmp	.label_2984
.label_2978:
	jmp	.label_2982
.label_2982:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_2983
.label_2984:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	jmp	.label_2979
.label_2976:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	lea	rdi, [rdi]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	mov	rbp, rbp
	add	rax, qword ptr [rcx]
	mov	rsp, rsp
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	lea	rdi, [rdi]
	and	edx, 1
	mov	rbp, rbp
	cmp	edx, 0
	je	.label_2995
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rax]
	mov	rbp, rbp
	call	check_node_accept_bytes
	mov	rbp, rbp
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_2989
.label_2995:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x84], 4
	jne	.label_3000
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rdi, [rdi]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	nop	
	mov	rax, qword ptr [rbp - 0x90]
	lea	rsi, [rsi]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x90]
	nop	
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	nop	
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	nop	
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_2999
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	nop	
	add	rax, qword ptr [rbp - 0x20]
	nop	
	cmp	qword ptr [rax], -1
	je	.label_2997
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 8], -1
	mov	rbp, rbp
	jne	.label_3004
.label_2997:
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], -1
	lea	rsi, [rsi]
	jmp	.label_2979
.label_3004:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2988
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	nop	
	mov	qword ptr [rbp - 0x98], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_2991
	mov	rax, qword ptr [rbp - 0x98]
	nop	
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rbp, rbp
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x98]
	nop	
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x80]
	lea	rdi, [rdi]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_2990
.label_2991:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2979
.label_2990:
	mov	rsp, rsp
	jmp	.label_2988
.label_2988:
	jmp	.label_2996
.label_2996:
	mov	rsp, rsp
	jmp	.label_2999
.label_2999:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2986
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	nop	
	xor	al, 0xff
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	movsxd	rsi, ecx
	lea	rsi, [rsi]
	cmp	rsi, 0
	mov	rbp, rbp
	je	.label_3007
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2979
.label_3007:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	nop	
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	nop	
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2980
	mov	rax, qword ptr [rbp - 0xa0]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2979
.label_2980:
	jmp	.label_2986
.label_2986:
	jmp	.label_3000
.label_3000:
	jmp	.label_2989
.label_2989:
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2985
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	mov	rsp, rsp
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	nop	
	mov	rdx, qword ptr [rcx]
	nop	
	mov	rsi, rax
	lea	rsi, [rsi]
	call	check_node_accept
	test	al, 1
	jne	.label_2985
	lea	rsi, [rsi]
	jmp	.label_3006
.label_2985:
	nop	
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x18]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0x80], 0
	nop	
	jne	.label_2977
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0xb0], rax
	mov	rsp, rsp
	jmp	.label_2987
.label_2977:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x80]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xb0], rax
.label_2987:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x40], 0
	lea	rsi, [rsi]
	je	.label_3001
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xa8]
	lea	rdi, [rdi]
	jg	.label_2993
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	mov	rsp, rsp
	je	.label_2993
	nop	
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	mov	rsp, rsp
	call	re_node_set_contains
	cmp	rax, 0
	mov	rbp, rbp
	jne	.label_3001
.label_2993:
	mov	qword ptr [rbp - 8], -1
	nop	
	jmp	.label_2979
.label_3001:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2979
.label_3006:
	jmp	.label_2994
.label_2994:
	mov	qword ptr [rbp - 8], -1
.label_2979:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	nop	
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x42a560

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x50
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	nop	
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	lea	rdi, [rdi]
	mov	rsi, rdx
	add	rsi, 1
	mov	rbp, rbp
	mov	qword ptr [rcx], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	nop	
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	cmp	rcx, qword ptr [rdx + 8]
	lea	rsi, [rsi]
	jne	.label_3008
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rcx + 8]
	nop	
	shl	rcx, 1
	imul	rsi, rcx, 0x30
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	call	realloc
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	nop	
	jne	.label_3011
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_3009
.label_3011:
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [rcx + 0x10], rax
.label_3008:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	nop	
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rsp, rsp
	mov	qword ptr [rcx + 8], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	rsp, rsp
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	lea	rdi, [rdi]
	cmp	qword ptr [rax + 0x10], 0
	lea	rdi, [rdi]
	jne	.label_3010
	mov	dword ptr [rbp - 4], 0xc
	mov	rbp, rbp
	jmp	.label_3009
.label_3010:
	mov	rax, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	shl	rdx, 4
	nop	
	mov	rdi, rax
	nop	
	mov	rsi, rcx
	mov	rsp, rsp
	call	memcpy
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	nop	
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsp, rsp
	mov	rdi, rax
	mov	rbp, rbp
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
.label_3009:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	mov	rsp, rsp
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x42a770

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	cmp	rsi, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	jne	.label_3012
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_3015
.label_3012:
	mov	rbp, rbp
	jmp	.label_3013
.label_3013:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	mov	rsp, rsp
	call	c_tolower
	lea	rsi, [rsi]
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	lea	rsi, [rsi]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	nop	
	mov	cl, al
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x2a], cl
	lea	rdi, [rdi]
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_3014
	jmp	.label_3016
.label_3014:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	lea	rdi, [rdi]
	je	.label_3013
.label_3016:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_3015:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42a860

	.globl close_stream
	.type close_stream, @function
close_stream:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	__fpending
	cmp	rax, 0
	mov	rbp, rbp
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	nop	
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	call	ferror_unlocked
	nop	
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	mov	rsp, rsp
	cmp	eax, 0
	setne	cl
	mov	rbp, rbp
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	nop	
	test	byte ptr [rbp - 0x12], 1
	lea	rsi, [rsi]
	jne	.label_3019
	test	byte ptr [rbp - 0x13], 1
	je	.label_3018
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_3019
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_3018
.label_3019:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_3017
	call	__errno_location
	mov	dword ptr [rax], 0
.label_3017:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3020
.label_3018:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_3020:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42a940

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	nop	
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	rsp, rsp
	mov	esi, eax
	nop	
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	nop	
	je	.label_3022
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_8
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_3023
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_6
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_3021
.label_3023:
	mov	byte ptr [rbp - 5], 0
.label_3021:
	jmp	.label_3022
.label_3022:
	mov	al, byte ptr [rbp - 5]
	lea	rdi, [rdi]
	and	al, 1
	nop	
	movzx	eax, al
	add	rsp, 0x10
	lea	rsi, [rsi]
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x42a9e0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	mov	rsp, rsp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	mov	edi, 0xe
	lea	rdi, [rdi]
	call	rpl_nl_langinfo
	nop	
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_3025
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_3025:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_3024
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_7
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_3024:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42aa60
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	lea	rdi, [rdi]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	mov	rsp, rsp
	cmp	dword ptr [rbp - 8], 0
	lea	rsi, [rsi]
	jl	.label_3026
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xc], eax
	lea	rdi, [rdi]
	jmp	.label_3027
.label_3026:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_3027:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0xc]
	nop	
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42aad0

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x10
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rdi, 0x18
	mov	rbp, rbp
	cmp	rsi, rdi
	mov	rbp, rbp
	jne	.label_3028
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	lea	rdi, [rdi]
	call	memcpy
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	lea	rsi, [rsi]
	jmp	.label_3031
.label_3028:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_3031:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	lea	rdi, [rdi]
	test	dl, 1
	jne	.label_3030
	jmp	.label_3029
.label_3030:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_3029:
	add	rsp, 0x10
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42abd0

	.globl is_basic
	.type is_basic, @function
is_basic:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	nop	
	movzx	edi, byte ptr [rbp - 1]
	mov	rsp, rsp
	sar	edi, 5
	lea	rsi, [rsi]
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	mov	rbp, rbp
	and	edx, 0x1f
	mov	rbp, rbp
	mov	ecx, edx
	mov	rsp, rsp
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42ac30

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	mov	rsp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	mov	rbp, rbp
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_3036
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_3034
.label_3036:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_3033
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	mov	rbp, rbp
	call	lseek
	lea	rsi, [rsi]
	cmp	rax, -1
	lea	rsi, [rsi]
	je	.label_3032
.label_3033:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_3032
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_3032:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_3035
	nop	
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	dword ptr [rax], ecx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_3035:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_3034:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42ad50

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_3037
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_3038
.label_3037:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_3039
.label_3038:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_3039:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	32
	#Procedure 0x42adc0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_3040
	xor	eax, eax
	mov	rbp, rbp
	mov	esi, eax
	nop	
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	rpl_fseeko
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xc], eax
.label_3040:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x42ae20

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x30
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_3041
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_3041
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_3041
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rbp, rbp
	mov	edi, eax
	lea	rdi, [rdi]
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_3043
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3042
.label_3043:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	ecx, dword ptr [rax]
	lea	rdi, [rdi]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x10]
	nop	
	mov	qword ptr [rdx + 0x90], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_3042
.label_3041:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_3042:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	32
	#Procedure 0x42af30

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	lea	rsi, [rsi]
	add	edi, 0xffffd828
	lea	rsi, [rsi]
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_3044
	jmp	.label_3045
.label_3045:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3046
.label_3044:
	lea	rsi, [rsi]
	jmp	.label_3046
.label_3046:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42af90
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_3047
	jmp	.label_3050
.label_3050:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_3047
	jmp	.label_3048
.label_3048:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_3049
	jmp	.label_3047
.label_3047:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3051
.label_3049:
	mov	byte ptr [rbp - 1], 0
.label_3051:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b000
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_3052
	jmp	.label_3055
.label_3055:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_3053
	jmp	.label_3052
.label_3052:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3054
.label_3053:
	mov	byte ptr [rbp - 1], 0
.label_3054:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b050
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3056
	jmp	.label_3058
.label_3058:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3057
.label_3056:
	mov	byte ptr [rbp - 1], 0
.label_3057:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b080
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_3059
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_3059:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b0b0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	sub	edi, 0x20
	mov	dword ptr [rbp - 0xc], eax
	mov	dword ptr [rbp - 0x10], edi
	jb	.label_3060
	jmp	.label_3062
.label_3062:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_3063
	jmp	.label_3060
.label_3060:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3061
.label_3063:
	mov	byte ptr [rbp - 1], 0
.label_3061:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b100
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3064
	jmp	.label_3066
.label_3066:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3065
.label_3064:
	mov	byte ptr [rbp - 1], 0
.label_3065:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b140
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3067
	jmp	.label_3069
.label_3069:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3068
.label_3067:
	mov	byte ptr [rbp - 1], 0
.label_3068:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b180
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3070
	jmp	.label_3072
.label_3072:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3071
.label_3070:
	mov	byte ptr [rbp - 1], 0
.label_3071:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b1c0
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3073
	jmp	.label_3075
.label_3075:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3074
.label_3073:
	mov	byte ptr [rbp - 1], 0
.label_3074:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b200
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x21
	sub	eax, 0xf
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_3076
	jmp	.label_3079
.label_3079:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_3076
	jmp	.label_3080
.label_3080:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_3076
	jmp	.label_3078
.label_3078:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_3081
	jmp	.label_3076
.label_3076:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3077
.label_3081:
	mov	byte ptr [rbp - 1], 0
.label_3077:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b280
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -9
	sub	eax, 5
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_3082
	jmp	.label_3083
.label_3083:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_3085
	jmp	.label_3082
.label_3082:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3084
.label_3085:
	mov	byte ptr [rbp - 1], 0
.label_3084:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b2d0
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3086
	jmp	.label_3088
.label_3088:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3087
.label_3086:
	mov	byte ptr [rbp - 1], 0
.label_3087:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b310
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	mov	eax, edi
	add	eax, -0x30
	sub	eax, 0xa
	mov	dword ptr [rbp - 0xc], edi
	mov	dword ptr [rbp - 0x10], eax
	jb	.label_3089
	jmp	.label_3092
.label_3092:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_3089
	jmp	.label_3090
.label_3090:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_3091
	jmp	.label_3089
.label_3089:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3093
.label_3091:
	mov	byte ptr [rbp - 1], 0
.label_3093:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b380

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3094
	jmp	.label_3096
.label_3096:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3095
.label_3094:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_3095:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x42b3c0
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3097
	jmp	.label_3099
.label_3099:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3098
.label_3097:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_3098:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
