	.section	.text
	.align	32
	#Procedure 0x401e00

	.globl usage
	.type usage, @function
usage:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0
	je	.label_7
	jmp	.label_9
.label_9:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	mov	qword ptr [rbp - 0x10], rax
	call	gettext
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_8
.label_7:
	movabs	rdi, OFFSET FLAT:.str.1
	call	gettext
	mov	rsi,  qword ptr [word ptr [program_name]]
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 0xa
	mov	dword ptr [rbp - 0x18], eax
	call	putchar_unlocked
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x44], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	32
	#Procedure 0x402000

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_14:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_13
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_13:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_11
	jmp	.label_12
.label_11:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_14
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_15
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	mov	edi, 5
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_10
	movabs	rsi, OFFSET FLAT:.str.34
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_10
	movabs	rdi, OFFSET FLAT:.str.35
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.18
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.37
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.38
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4021a0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x88
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x20], edi
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.14
	movabs	rsi, OFFSET FLAT:.str.15
	mov	qword ptr [rbp - 0x40], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.14
	mov	qword ptr [rbp - 0x48], rax
	call	textdomain
	mov	edi, 3
	mov	qword ptr [rbp - 0x50], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	movabs	rdx, OFFSET FLAT:.str.12
	movabs	rcx, OFFSET FLAT:.str.17
	movabs	r8, OFFSET FLAT:.str.17_0
	movabs	r9, OFFSET FLAT:usage
	movabs	rsi, OFFSET FLAT:.str.18_0
	movabs	rdi, OFFSET FLAT:.str.19
	movabs	r10, OFFSET FLAT:.str.20
	xor	r11d, r11d
	mov	ebx, r11d
	mov	r11d, dword ptr [rbp - 0x20]
	mov	r14, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rdi
	mov	edi, r11d
	mov	qword ptr [rbp - 0x60], rsi
	mov	rsi, r14
	mov	r14, qword ptr [rbp - 0x60]
	mov	qword ptr [rsp], r14
	mov	r15, qword ptr [rbp - 0x58]
	mov	qword ptr [rsp + 8], r15
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], 0
	mov	dword ptr [rbp - 0x64], eax
	mov	al, 0
	mov	qword ptr [rbp - 0x70], rbx
	call	parse_long_options
	mov	edi, 1
	mov	r11d, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 0x34], r11d
	cmp	edi, dword ptr [rbp - 0x34]
	jae	.label_18
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rax + 8]
	mov	ecx, OFFSET FLAT:.str.21
	mov	esi, ecx
	call	strcmp
	cmp	eax, 0
	jne	.label_18
	mov	eax, dword ptr [rbp - 0x34]
	add	eax, -1
	mov	dword ptr [rbp - 0x34], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 8
	mov	qword ptr [rbp - 0x28], rcx
.label_18:
	cmp	dword ptr [rbp - 0x34], 1
	ja	.label_16
	movabs	rdi, OFFSET FLAT:.str.22
	call	gettext
	xor	ecx, ecx
	mov	edi, ecx
	mov	esi, ecx
	mov	rdx, rax
	mov	al, 0
	call	error
	mov	edi, 2
	call	usage
.label_16:
	mov	edi, 1
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 8
	mov	qword ptr [word ptr [args]],  rax
	call	eval
	mov	qword ptr [rbp - 0x30], rax
	call	nomoreargs
	test	al, 1
	jne	.label_17
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_17:
	mov	rdi, qword ptr [rbp - 0x30]
	call	printv
	mov	rdi, qword ptr [rbp - 0x30]
	call	null
	and	al, 1
	movzx	eax, al
	add	rsp, 0x88
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023d0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_19
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_19:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4023f0

	.globl eval
	.type eval, @function
eval:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval1
	mov	qword ptr [rbp - 0x10], rax
.label_21:
	movabs	rdi, OFFSET FLAT:.str.39
	call	nextarg
	test	al, 1
	jne	.label_23
	jmp	.label_25
.label_23:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 1], 1
	mov	byte ptr [rbp - 0x19], cl
	je	.label_27
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	mov	byte ptr [rbp - 0x19], al
.label_27:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edi, al
	call	eval1
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	test	al, 1
	jne	.label_24
	jmp	.label_26
.label_24:
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	test	al, 1
	jne	.label_20
	jmp	.label_22
.label_20:
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	xor	eax, eax
	mov	edi, eax
	call	int_value
	mov	qword ptr [rbp - 0x10], rax
.label_22:
	jmp	.label_28
.label_26:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
.label_28:
	jmp	.label_29
.label_25:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
.label_29:
	jmp	.label_21
	.section	.text
	.align	32
	#Procedure 0x4024d0

	.globl nomoreargs
	.type nomoreargs, @function
nomoreargs:
	push	rbp
	mov	rbp, rsp
	mov	rax,  qword ptr [word ptr [args]]
	cmp	qword ptr [rax], 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4024f0

	.globl printv
	.type printv, @function
printv:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0xc], eax
	je	.label_30
	jmp	.label_33
.label_33:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	je	.label_34
	jmp	.label_31
.label_30:
	mov	esi, 0xa
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdx, rax
	call	__gmpz_out_str
	mov	edi, 0xa
	mov	qword ptr [rbp - 0x18], rax
	call	putchar_unlocked
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_32
.label_34:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	puts
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_32
.label_31:
	call	abort
.label_32:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402580

	.globl null
	.type null, @function
null:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_35
	jmp	.label_44
.label_44:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_45
	jmp	.label_39
.label_35:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xc], 0
	jge	.label_40
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_36
.label_40:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xc], 0
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x24], edx
.label_36:
	mov	eax, dword ptr [rbp - 0x24]
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_38
.label_45:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_42
	mov	byte ptr [rbp - 1], 1
	jmp	.label_38
.label_42:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x18], rax
.label_43:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	je	.label_37
	mov	byte ptr [rbp - 1], 0
	jmp	.label_38
.label_37:
	jmp	.label_41
.label_41:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	cmp	byte ptr [rax + 1], 0
	jne	.label_43
	mov	byte ptr [rbp - 1], 1
	jmp	.label_38
.label_39:
	call	abort
.label_38:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402690

	.globl eval1
	.type eval1, @function
eval1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval2
	mov	qword ptr [rbp - 0x10], rax
.label_52:
	movabs	rdi, OFFSET FLAT:.str.40
	call	nextarg
	test	al, 1
	jne	.label_46
	jmp	.label_48
.label_46:
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 1], 1
	mov	byte ptr [rbp - 0x19], cl
	je	.label_49
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	xor	al, 0xff
	mov	byte ptr [rbp - 0x19], al
.label_49:
	mov	al, byte ptr [rbp - 0x19]
	and	al, 1
	movzx	edi, al
	call	eval2
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	null
	test	al, 1
	jne	.label_47
	mov	rdi, qword ptr [rbp - 0x18]
	call	null
	test	al, 1
	jne	.label_47
	jmp	.label_51
.label_47:
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	xor	eax, eax
	mov	edi, eax
	call	int_value
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_53
.label_51:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
.label_53:
	jmp	.label_50
.label_48:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
.label_50:
	jmp	.label_52
	.section	.text
	.align	32
	#Procedure 0x402770

	.globl nextarg
	.type nextarg, @function
nextarg:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi,  qword ptr [word ptr [args]]
	cmp	qword ptr [rdi], 0
	jne	.label_54
	mov	byte ptr [rbp - 1], 0
	jmp	.label_55
.label_54:
	mov	rax,  qword ptr [word ptr [args]]
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0x10]
	call	strcmp
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	cl, byte ptr [rbp - 0x11]
	and	cl, 1
	movzx	eax, cl
	mov	rsi,  qword ptr [word ptr [args]]
	movsxd	rdi, eax
	shl	rdi, 3
	add	rsi, rdi
	mov	qword ptr [word ptr [args]],  rsi
	mov	cl, byte ptr [rbp - 0x11]
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
.label_55:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402800

	.globl freev
	.type freev, @function
freev:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	dword ptr [rdi], 1
	jne	.label_56
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	jmp	.label_57
.label_56:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	__gmpz_clear
.label_57:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402850

	.globl int_value
	.type int_value, @function
int_value:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, rax
	call	__gmpz_init_set_ui
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4028a0

	.globl eval2
	.type eval2, @function
eval2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval3
	mov	qword ptr [rbp - 0x10], rax
.label_84:
	movabs	rdi, OFFSET FLAT:.str.41
	mov	byte ptr [rbp - 0x1d], 0
	call	nextarg
	test	al, 1
	jne	.label_74
	jmp	.label_77
.label_74:
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_79
.label_77:
	movabs	rdi, OFFSET FLAT:.str.42
	call	nextarg
	test	al, 1
	jne	.label_75
	jmp	.label_60
.label_75:
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_62
.label_60:
	movabs	rdi, OFFSET FLAT:.str.43
	call	nextarg
	test	al, 1
	jne	.label_64
	movabs	rdi, OFFSET FLAT:.str.44
	call	nextarg
	test	al, 1
	jne	.label_64
	jmp	.label_72
.label_64:
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_73
.label_72:
	movabs	rdi, OFFSET FLAT:.str.45
	call	nextarg
	test	al, 1
	jne	.label_80
	jmp	.label_81
.label_80:
	mov	dword ptr [rbp - 0x1c], 3
	jmp	.label_82
.label_81:
	movabs	rdi, OFFSET FLAT:.str.46
	call	nextarg
	test	al, 1
	jne	.label_63
	jmp	.label_83
.label_63:
	mov	dword ptr [rbp - 0x1c], 4
	jmp	.label_61
.label_83:
	movabs	rdi, OFFSET FLAT:.str.47
	call	nextarg
	test	al, 1
	jne	.label_68
	jmp	.label_70
.label_68:
	mov	dword ptr [rbp - 0x1c], 5
	jmp	.label_58
.label_70:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x50
	pop	rbp
	ret	
.label_58:
	jmp	.label_61
.label_61:
	jmp	.label_82
.label_82:
	jmp	.label_73
.label_73:
	jmp	.label_62
.label_62:
	jmp	.label_79
.label_79:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval3
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_76
	mov	rdi, qword ptr [rbp - 0x10]
	call	tostring
	mov	rdi, qword ptr [rbp - 0x18]
	call	tostring
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 8]
	call	looks_like_integer
	test	al, 1
	jne	.label_65
	jmp	.label_66
.label_65:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 8]
	call	looks_like_integer
	test	al, 1
	jne	.label_67
	jmp	.label_66
.label_67:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	strintcmp
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_71
.label_66:
	call	__errno_location
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	call	strcoll
	mov	dword ptr [rbp - 0x24], eax
	call	__errno_location
	cmp	dword ptr [rax], 0
	je	.label_85
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.48
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x28], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.49
	call	gettext
	xor	esi, esi
	mov	edi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
	movabs	rdi, OFFSET FLAT:.str.50
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x30], rax
	call	quotearg_n_style
	mov	edi, 1
	mov	esi, 8
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x38], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, rax
	mov	al, 0
	call	error
.label_85:
	jmp	.label_71
.label_71:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 5
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], rdx
	ja	.label_69
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_78]]
	jmp	rcx
.label_3162:
	cmp	dword ptr [rbp - 0x24], 0
	setl	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_59
.label_3163:
	cmp	dword ptr [rbp - 0x24], 0
	setle	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_59
.label_3164:
	cmp	dword ptr [rbp - 0x24], 0
	sete	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_59
.label_3165:
	cmp	dword ptr [rbp - 0x24], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_59
.label_3166:
	cmp	dword ptr [rbp - 0x24], 0
	setge	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_59
.label_3167:
	cmp	dword ptr [rbp - 0x24], 0
	setg	al
	and	al, 1
	mov	byte ptr [rbp - 0x1d], al
	jmp	.label_59
.label_69:
	call	abort
.label_59:
	jmp	.label_76
.label_76:
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	mov	al, byte ptr [rbp - 0x1d]
	and	al, 1
	movzx	ecx, al
	mov	edi, ecx
	call	int_value
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_84
	.section	.text
	.align	32
	#Procedure 0x402c10

	.globl eval3
	.type eval3, @function
eval3:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval4
	mov	qword ptr [rbp - 0x10], rax
.label_96:
	movabs	rdi, OFFSET FLAT:.str_1
	call	nextarg
	test	al, 1
	jne	.label_86
	jmp	.label_87
.label_86:
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_89
.label_87:
	movabs	rdi, OFFSET FLAT:.str.52
	call	nextarg
	test	al, 1
	jne	.label_91
	jmp	.label_92
.label_91:
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_94
.label_92:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	pop	rbp
	ret	
.label_94:
	jmp	.label_89
.label_89:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval4
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_90
	mov	rdi, qword ptr [rbp - 0x10]
	call	toarith
	test	al, 1
	jne	.label_93
	jmp	.label_95
.label_93:
	mov	rdi, qword ptr [rbp - 0x18]
	call	toarith
	test	al, 1
	jne	.label_88
.label_95:
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_88:
	movabs	rax, OFFSET FLAT:__gmpz_sub
	movabs	rcx, OFFSET FLAT:__gmpz_add
	cmp	dword ptr [rbp - 0x1c], 0
	cmove	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 8
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x28]
	call	rax
.label_90:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	jmp	.label_96
	.section	.text
	.align	32
	#Procedure 0x402d50

	.globl tostring
	.type tostring, @function
tostring:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0x14], eax
	je	.label_97
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 1
	mov	dword ptr [rbp - 0x18], eax
	je	.label_101
	jmp	.label_100
.label_97:
	xor	eax, eax
	mov	edi, eax
	mov	esi, 0xa
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 8
	mov	rdx, rcx
	call	__gmpz_get_str
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	mov	rdi, rax
	call	__gmpz_clear
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 1
	jmp	.label_99
.label_101:
	jmp	.label_99
.label_100:
	call	abort
.label_99:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402de0

	.globl looks_like_integer
	.type looks_like_integer, @function
looks_like_integer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	movsx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	sete	cl
	and	cl, 1
	movzx	eax, cl
	mov	rdi, qword ptr [rbp - 0x10]
	movsxd	rdx, eax
	add	rdi, rdx
	mov	qword ptr [rbp - 0x10], rdi
.label_104:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_103
	mov	byte ptr [rbp - 1], 0
	jmp	.label_105
.label_103:
	jmp	.label_102
.label_102:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	cmp	byte ptr [rax + 1], 0
	jne	.label_104
	mov	byte ptr [rbp - 1], 1
.label_105:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x402e60

	.globl eval4
	.type eval4, @function
eval4:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval5
	mov	qword ptr [rbp - 0x10], rax
.label_108:
	movabs	rdi, OFFSET FLAT:.str.54
	call	nextarg
	test	al, 1
	jne	.label_111
	jmp	.label_113
.label_111:
	mov	dword ptr [rbp - 0x1c], 0
	jmp	.label_110
.label_113:
	movabs	rdi, OFFSET FLAT:.str.55
	call	nextarg
	test	al, 1
	jne	.label_123
	jmp	.label_106
.label_123:
	mov	dword ptr [rbp - 0x1c], 1
	jmp	.label_107
.label_106:
	movabs	rdi, OFFSET FLAT:.str.56
	call	nextarg
	test	al, 1
	jne	.label_120
	jmp	.label_116
.label_120:
	mov	dword ptr [rbp - 0x1c], 2
	jmp	.label_118
.label_116:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x30
	pop	rbp
	ret	
.label_118:
	jmp	.label_107
.label_107:
	jmp	.label_110
.label_110:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval5
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_114
	mov	rdi, qword ptr [rbp - 0x10]
	call	toarith
	test	al, 1
	jne	.label_119
	jmp	.label_124
.label_119:
	mov	rdi, qword ptr [rbp - 0x18]
	call	toarith
	test	al, 1
	jne	.label_109
.label_124:
	movabs	rdi, OFFSET FLAT:.str.53
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_109:
	cmp	dword ptr [rbp - 0x1c], 0
	je	.label_115
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xc], 0
	jge	.label_122
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x20], eax
	jmp	.label_117
.label_122:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xc], 0
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x20], edx
.label_117:
	mov	eax, dword ptr [rbp - 0x20]
	cmp	eax, 0
	jne	.label_115
	movabs	rdi, OFFSET FLAT:.str.57
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_115:
	cmp	dword ptr [rbp - 0x1c], 0
	jne	.label_112
	movabs	rax, OFFSET FLAT:__gmpz_mul
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_121
.label_112:
	movabs	rax, OFFSET FLAT:__gmpz_tdiv_r
	movabs	rcx, OFFSET FLAT:__gmpz_tdiv_q
	cmp	dword ptr [rbp - 0x1c], 1
	cmove	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
.label_121:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 8
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 8
	mov	rsi, qword ptr [rbp - 0x18]
	add	rsi, 8
	mov	rdi, rcx
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	call	rax
.label_114:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	jmp	.label_108
	.section	.text
	.align	32
	#Procedure 0x403050

	.globl toarith
	.type toarith, @function
toarith:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	eax, dword ptr [rdi]
	test	eax, eax
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_131
	jmp	.label_127
.label_127:
	mov	eax, dword ptr [rbp - 0x1c]
	sub	eax, 1
	mov	dword ptr [rbp - 0x20], eax
	je	.label_129
	jmp	.label_130
.label_131:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_126
.label_129:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	looks_like_integer
	test	al, 1
	jne	.label_125
	mov	byte ptr [rbp - 1], 0
	jmp	.label_126
.label_125:
	mov	edx, 0xa
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	__gmpz_init_set_str
	cmp	eax, 0
	je	.label_128
	mov	al, 1
	test	al, 1
	jne	.label_128
	jmp	.label_132
.label_132:
	mov	edi, 3
	mov	esi, 0x22
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rcx, qword ptr [rbp - 0x18]
	mov	al, 0
	call	error
.label_128:
	mov	rdi, qword ptr [rbp - 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 0x10]
	mov	dword ptr [rdi], 0
	mov	byte ptr [rbp - 1], 1
	jmp	.label_126
.label_130:
	call	abort
.label_126:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403130

	.globl eval5
	.type eval5, @function
eval5:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval6
	mov	qword ptr [rbp - 0x10], rax
.label_135:
	movabs	rdi, OFFSET FLAT:.str.58
	call	nextarg
	test	al, 1
	jne	.label_133
	jmp	.label_134
.label_133:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edi, al
	call	eval6
	mov	qword ptr [rbp - 0x18], rax
	test	byte ptr [rbp - 1], 1
	je	.label_137
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	docolon
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	freev
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x10], rax
.label_137:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	jmp	.label_136
.label_134:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x20
	pop	rbp
	ret	
.label_136:
	jmp	.label_135
	.section	.text
	.align	32
	#Procedure 0x4031d0

	.globl eval6
	.type eval6, @function
eval6:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, dil
	movabs	rdi, OFFSET FLAT:.str_1
	and	al, 1
	mov	byte ptr [rbp - 9], al
	call	nextarg
	test	al, 1
	jne	.label_152
	jmp	.label_154
.label_152:
	call	require_more_args
	mov	rax,  qword ptr [word ptr [args]]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [word ptr [args]],  rcx
	mov	rdi, qword ptr [rax]
	call	str_value
	mov	qword ptr [rbp - 8], rax
	jmp	.label_138
.label_154:
	movabs	rdi, OFFSET FLAT:.str.59
	call	nextarg
	test	al, 1
	jne	.label_145
	jmp	.label_148
.label_145:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	call	eval6
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	tostring
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rax + 8]
	call	mbslen
	mov	rdi, rax
	call	int_value
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x20]
	call	freev
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_138
.label_148:
	movabs	rdi, OFFSET FLAT:.str.60
	call	nextarg
	test	al, 1
	jne	.label_141
	jmp	.label_143
.label_141:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	call	eval6
	mov	qword ptr [rbp - 0x18], rax
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edi, cl
	call	eval6
	mov	qword ptr [rbp - 0x20], rax
	test	byte ptr [rbp - 9], 1
	je	.label_150
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	docolon
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	jmp	.label_153
.label_150:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_153:
	mov	rdi, qword ptr [rbp - 0x20]
	call	freev
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	jmp	.label_138
.label_143:
	movabs	rdi, OFFSET FLAT:.str.61
	call	nextarg
	test	al, 1
	jne	.label_142
	jmp	.label_144
.label_142:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	call	eval6
	mov	qword ptr [rbp - 0x18], rax
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edi, cl
	call	eval6
	mov	qword ptr [rbp - 0x20], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	tostring
	mov	rdi, qword ptr [rbp - 0x20]
	call	tostring
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 8]
	call	mbs_logical_cspn
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	int_value
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	mov	rdi, qword ptr [rbp - 0x20]
	call	freev
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_138
.label_144:
	movabs	rdi, OFFSET FLAT:.str.62
	call	nextarg
	test	al, 1
	jne	.label_146
	jmp	.label_149
.label_146:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	call	eval6
	mov	qword ptr [rbp - 0x18], rax
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edi, cl
	call	eval6
	mov	qword ptr [rbp - 0x30], rax
	mov	cl, byte ptr [rbp - 9]
	and	cl, 1
	movzx	edi, cl
	call	eval6
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x18]
	call	tostring
	mov	rdi, qword ptr [rbp - 0x30]
	call	toarith
	test	al, 1
	jne	.label_139
	jmp	.label_140
.label_139:
	mov	rdi, qword ptr [rbp - 0x38]
	call	toarith
	test	al, 1
	jne	.label_147
.label_140:
	movabs	rdi, OFFSET FLAT:.str_0
	call	str_value
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_151
.label_147:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	rdi, rax
	call	getsize
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rdi, rax
	call	getsize
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	mbs_logical_substr
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	str_value
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x58]
	call	free
.label_151:
	mov	rdi, qword ptr [rbp - 0x18]
	call	freev
	mov	rdi, qword ptr [rbp - 0x30]
	call	freev
	mov	rdi, qword ptr [rbp - 0x38]
	call	freev
	mov	rdi, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rdi
	jmp	.label_138
.label_149:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	call	eval7
	mov	qword ptr [rbp - 8], rax
.label_138:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4034e0

	.globl docolon
	.type docolon, @function
docolon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1d0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	call	tostring
	mov	rdi, qword ptr [rbp - 0x10]
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
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  0x2c6
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi + 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rbp - 0x190], rdi
	mov	rdi, rsi
	mov	qword ptr [rbp - 0x198], rdx
	call	strlen
	mov	rdi, qword ptr [rbp - 0x190]
	mov	rsi, rax
	mov	rdx, qword ptr [rbp - 0x198]
	call	rpl_re_compile_pattern
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_168
	mov	edi, 2
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	rcx, qword ptr [rbp - 0x20]
	mov	al, 0
	call	error
.label_168:
	lea	rdi, [rbp - 0x60]
	xor	eax, eax
	mov	ecx, eax
	lea	r8, [rbp - 0x178]
	mov	dl, byte ptr [rbp - 0x28]
	and	dl, 0x7f
	mov	byte ptr [rbp - 0x28], dl
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	r9, qword ptr [rbp - 8]
	mov	r9, qword ptr [r9 + 8]
	mov	qword ptr [rbp - 0x1a0], rdi
	mov	rdi, r9
	mov	qword ptr [rbp - 0x1a8], rsi
	mov	qword ptr [rbp - 0x1b0], rcx
	mov	qword ptr [rbp - 0x1b8], r8
	call	strlen
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x1b0]
	mov	r8, qword ptr [rbp - 0x1b8]
	call	rpl_re_match
	xor	r10d, r10d
	mov	ecx, r10d
	mov	qword ptr [rbp - 0x180], rax
	cmp	rcx, qword ptr [rbp - 0x180]
	jg	.label_164
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_157
	mov	rax, qword ptr [rbp - 0x168]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x170]
	add	rax, qword ptr [rcx + 8]
	mov	rdi, rax
	call	str_value
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_156
.label_157:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_167
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x1c0], rax
	jmp	.label_161
.label_167:
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	mov	rsi, qword ptr [rbp - 0x180]
	call	mbs_offset_to_chars
	mov	qword ptr [rbp - 0x1c0], rax
.label_161:
	mov	rax, qword ptr [rbp - 0x1c0]
	mov	qword ptr [rbp - 0x188], rax
	mov	rdi, qword ptr [rbp - 0x188]
	call	int_value
	mov	qword ptr [rbp - 0x18], rax
.label_156:
	jmp	.label_162
.label_164:
	cmp	qword ptr [rbp - 0x180], -1
	jne	.label_160
	cmp	qword ptr [rbp - 0x30], 0
	jbe	.label_166
	movabs	rdi, OFFSET FLAT:.str_0
	call	str_value
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_159
.label_166:
	xor	eax, eax
	mov	edi, eax
	call	int_value
	mov	qword ptr [rbp - 0x18], rax
.label_159:
	jmp	.label_163
.label_160:
	cmp	qword ptr [rbp - 0x180], -2
	jne	.label_165
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x1c4], ecx
	jmp	.label_155
.label_165:
	mov	eax, 0x4b
	mov	dword ptr [rbp - 0x1c4], eax
	jmp	.label_155
.label_155:
	mov	eax, dword ptr [rbp - 0x1c4]
	movabs	rdi, OFFSET FLAT:.str.70
	mov	dword ptr [rbp - 0x1c8], eax
	call	gettext
	mov	edi, 3
	mov	esi, dword ptr [rbp - 0x1c8]
	mov	rdx, rax
	mov	al, 0
	call	error
.label_163:
	jmp	.label_162
.label_162:
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x178]
	jae	.label_158
	mov	rax, qword ptr [rbp - 0x170]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x168]
	mov	rdi, rax
	call	free
.label_158:
	lea	rdi, [rbp - 0x60]
	mov	qword ptr [rbp - 0x40], 0
	call	rpl_regfree
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x1d0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4037f0

	.globl require_more_args
	.type require_more_args, @function
require_more_args:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	call	nomoreargs
	test	al, 1
	jne	.label_170
	jmp	.label_169
.label_170:
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	mov	rdx, qword ptr [rcx - 8]
	mov	qword ptr [rbp - 8], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_169:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403850

	.globl str_value
	.type str_value, @function
str_value:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, rcx
	call	xmalloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 8]
	call	xstrdup
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4038a0

	.globl mbs_logical_cspn
	.type mbs_logical_cspn, @function
mbs_logical_cspn:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	movsx	eax, byte ptr [rsi]
	cmp	eax, 0
	jne	.label_185
	mov	qword ptr [rbp - 8], 0
	jmp	.label_177
.label_185:
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_184
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rdi
	mov	byte ptr [rbp - 0x60], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x54], 0
.label_186:
	lea	rdi, [rbp - 0x60]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x40], 1
	mov	byte ptr [rbp - 0xa9], cl
	je	.label_183
	cmp	dword ptr [rbp - 0x3c], 0
	sete	al
	mov	byte ptr [rbp - 0xa9], al
.label_183:
	mov	al, byte ptr [rbp - 0xa9]
	xor	al, 0xff
	test	al, 1
	jne	.label_191
	jmp	.label_176
.label_191:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x48], 1
	jne	.label_179
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	movsx	esi, byte ptr [rax]
	call	mbschr
	cmp	rax, 0
	je	.label_190
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_177
.label_190:
	jmp	.label_178
.label_179:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rdi
	mov	byte ptr [rbp - 0xa0], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x94], 0
.label_172:
	lea	rdi, [rbp - 0xa0]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x80], 1
	mov	byte ptr [rbp - 0xaa], cl
	je	.label_180
	cmp	dword ptr [rbp - 0x7c], 0
	sete	al
	mov	byte ptr [rbp - 0xaa], al
.label_180:
	mov	al, byte ptr [rbp - 0xaa]
	xor	al, 0xff
	test	al, 1
	jne	.label_189
	jmp	.label_174
.label_189:
	test	byte ptr [rbp - 0x80], 1
	je	.label_175
	test	byte ptr [rbp - 0x40], 1
	je	.label_175
	mov	eax, dword ptr [rbp - 0x7c]
	cmp	eax, dword ptr [rbp - 0x3c]
	je	.label_188
	jmp	.label_181
.label_175:
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0x48]
	jne	.label_181
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x88]
	call	memcmp
	cmp	eax, 0
	jne	.label_181
.label_188:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_177
.label_181:
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	mov	byte ptr [rbp - 0x94], 0
	jmp	.label_172
.label_174:
	jmp	.label_178
.label_178:
	jmp	.label_182
.label_182:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x50], rax
	mov	byte ptr [rbp - 0x54], 0
	jmp	.label_186
.label_176:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_177
.label_184:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	strcspn
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rsi, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rsi + rax]
	cmp	ecx, 0
	je	.label_173
	mov	rax, qword ptr [rbp - 0xa8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_171
.label_173:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 8], rax
.label_177:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403b30

	.globl getsize
	.type getsize, @function
getsize:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdi + 4], 0
	jge	.label_196
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_193
.label_196:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 4], 0
	setg	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0x1c], edx
.label_193:
	mov	eax, dword ptr [rbp - 0x1c]
	cmp	eax, 0
	jge	.label_192
	mov	qword ptr [rbp - 8], -1
	jmp	.label_194
.label_192:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_fits_ulong_p
	cmp	eax, 0
	je	.label_195
	mov	rdi, qword ptr [rbp - 0x10]
	call	__gmpz_get_ui
	mov	qword ptr [rbp - 0x18], rax
	cmp	qword ptr [rbp - 0x18], -1
	jae	.label_197
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_194
.label_197:
	jmp	.label_195
.label_195:
	mov	qword ptr [rbp - 8], -2
.label_194:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403be0

	.globl mbs_logical_substr
	.type mbs_logical_substr, @function
mbs_logical_substr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 0x38], rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_201
	mov	rdi, qword ptr [rbp - 0x10]
	call	mbslen
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_206
.label_201:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x98], rax
.label_206:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x18]
	jb	.label_203
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_203
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_203
	cmp	qword ptr [rbp - 0x20], -1
	jne	.label_209
.label_203:
	movabs	rdi, OFFSET FLAT:.str_0
	call	xstrdup
	mov	qword ptr [rbp - 8], rax
	jmp	.label_212
.label_209:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	sub	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	jae	.label_198
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_207
.label_198:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
.label_207:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jne	.label_205
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rbp - 0x18]
	add	rax, -1
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rax
	call	mempcpy
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_202
.label_205:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	lea	rdi, [rbp - 0x88]
	mov	qword ptr [rbp - 0x28], rax
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x90], 1
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x88], 0
	add	rdi, 4
	call	memset
	mov	byte ptr [rbp - 0x7c], 0
.label_200:
	lea	rdi, [rbp - 0x88]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x68], 1
	mov	byte ptr [rbp - 0xa1], cl
	je	.label_211
	cmp	dword ptr [rbp - 0x64], 0
	sete	al
	mov	byte ptr [rbp - 0xa1], al
.label_211:
	mov	al, byte ptr [rbp - 0xa1]
	xor	ecx, ecx
	mov	dl, cl
	xor	al, 0xff
	test	al, 1
	mov	byte ptr [rbp - 0xa2], dl
	jne	.label_204
	jmp	.label_210
.label_204:
	cmp	qword ptr [rbp - 0x48], 0
	seta	al
	mov	byte ptr [rbp - 0xa2], al
.label_210:
	mov	al, byte ptr [rbp - 0xa2]
	test	al, 1
	jne	.label_213
	jmp	.label_214
.label_213:
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x18]
	jae	.label_208
	jmp	.label_199
.label_208:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x70]
	call	mempcpy
	mov	qword ptr [rbp - 0x30], rax
.label_199:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	byte ptr [rbp - 0x7c], 0
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_200
.label_214:
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0x30]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_212:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403e50

	.globl eval7
	.type eval7, @function
eval7:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 9], al
	call	require_more_args
	movabs	rdi, OFFSET FLAT:.str.64
	call	nextarg
	test	al, 1
	jne	.label_220
	jmp	.label_222
.label_220:
	mov	al, byte ptr [rbp - 9]
	and	al, 1
	movzx	edi, al
	call	eval
	mov	qword ptr [rbp - 0x18], rax
	call	nomoreargs
	test	al, 1
	jne	.label_216
	jmp	.label_218
.label_216:
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	mov	rdx, qword ptr [rcx - 8]
	mov	qword ptr [rbp - 0x20], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_218:
	movabs	rdi, OFFSET FLAT:.str.66
	call	nextarg
	test	al, 1
	jne	.label_219
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	xor	edi, edi
	mov	esi, 8
	mov	rcx,  qword ptr [word ptr [args]]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x28], rax
	call	quotearg_n_style
	mov	edi, 2
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, rax
	mov	al, 0
	call	error
.label_219:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_221
.label_222:
	movabs	rdi, OFFSET FLAT:.str.66
	call	nextarg
	test	al, 1
	jne	.label_215
	jmp	.label_217
.label_215:
	movabs	rdi, OFFSET FLAT:.str.68
	call	gettext
	mov	edi, 2
	xor	esi, esi
	mov	rdx, rax
	mov	al, 0
	call	error
.label_217:
	mov	rax,  qword ptr [word ptr [args]]
	mov	rcx, rax
	add	rcx, 8
	mov	qword ptr [word ptr [args]],  rcx
	mov	rdi, qword ptr [rax]
	call	str_value
	mov	qword ptr [rbp - 8], rax
.label_221:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x403fb0

	.globl mbs_offset_to_chars
	.type mbs_offset_to_chars, @function
mbs_offset_to_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	xor	eax, eax
	mov	ecx, 8
	mov	edx, ecx
	lea	r8, [rbp - 0x50]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x58], 0
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x40], rsi
	mov	byte ptr [rbp - 0x50], 0
	add	r8, 4
	mov	rdi, r8
	mov	esi, eax
	call	memset
	mov	byte ptr [rbp - 0x44], 0
.label_226:
	lea	rdi, [rbp - 0x50]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x30], 1
	mov	byte ptr [rbp - 0x61], cl
	je	.label_227
	cmp	dword ptr [rbp - 0x2c], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_227:
	mov	al, byte ptr [rbp - 0x61]
	xor	al, 0xff
	test	al, 1
	jne	.label_224
	jmp	.label_223
.label_224:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x10]
	jb	.label_225
	jmp	.label_223
.label_225:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x40], rax
	mov	byte ptr [rbp - 0x44], 0
	jmp	.label_226
.label_223:
	mov	rax, qword ptr [rbp - 0x58]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404080
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [file_name]],  rdi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040a0
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	push	rbp
	mov	rbp, rsp
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	mov	byte ptr [byte ptr [ignore_EPIPE]],  al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4040c0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_230
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_232
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_230
.label_232:
	movabs	rdi, OFFSET FLAT:.str_3
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_231
	call	__errno_location
	mov	esi, dword ptr [rax]
	mov	rdi,  qword ptr [word ptr [file_name]]
	mov	dword ptr [rbp - 0xc], esi
	call	quotearg_colon
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str.1_0
	mov	r8, qword ptr [rbp - 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	rcx, rax
	mov	al, 0
	call	error
	jmp	.label_229
.label_231:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_229:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_230:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_228
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_228:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4041b0

	.globl parse_long_options
	.type parse_long_options, @function
parse_long_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1c0
	test	al, al
	movaps	xmmword ptr [rbp - 0x110], xmm7
	movaps	xmmword ptr [rbp - 0x120], xmm6
	movaps	xmmword ptr [rbp - 0x130], xmm5
	movaps	xmmword ptr [rbp - 0x140], xmm4
	movaps	xmmword ptr [rbp - 0x150], xmm3
	movaps	xmmword ptr [rbp - 0x160], xmm2
	movaps	xmmword ptr [rbp - 0x170], xmm1
	movaps	xmmword ptr [rbp - 0x180], xmm0
	mov	dword ptr [rbp - 0x184], edi
	mov	qword ptr [rbp - 0x190], r9
	mov	qword ptr [rbp - 0x198], r8
	mov	qword ptr [rbp - 0x1a0], rcx
	mov	qword ptr [rbp - 0x1a8], rdx
	mov	qword ptr [rbp - 0x1b0], rsi
	je	.label_235
	movaps	xmm0, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm7
.label_235:
	mov	rax, qword ptr [rbp - 0x190]
	mov	rcx, qword ptr [rbp - 0x198]
	mov	rdx, qword ptr [rbp - 0x1a0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	r8d, dword ptr [rbp - 0x184]
	mov	dword ptr [rbp - 4], r8d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	r8d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x38], r8d
	mov	dword ptr [dword ptr [opterr]],  0
	cmp	dword ptr [rbp - 4], 2
	jne	.label_233
	movabs	rdx, OFFSET FLAT:.str_1
	movabs	rcx, OFFSET FLAT:long_options
	xor	eax, eax
	mov	r8d, eax
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	getopt_long
	mov	dword ptr [rbp - 0x34], eax
	cmp	eax, -1
	je	.label_233
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1b4], eax
	mov	dword ptr [rbp - 0x1b8], ecx
	je	.label_239
	jmp	.label_236
.label_236:
	mov	eax, dword ptr [rbp - 0x1b4]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1bc], eax
	je	.label_238
	jmp	.label_237
.label_239:
	xor	edi, edi
	call	qword ptr [rbp - 0x30]
	jmp	.label_234
.label_238:
	lea	rax, [rbp - 0x50]
	mov	rcx, rax
	lea	rdx, [rbp - 0x100]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_237:
	jmp	.label_234
.label_234:
	jmp	.label_233
.label_233:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	mov	dword ptr [dword ptr [rip + optind]],  0
	add	rsp, 0x1c0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4043e0
	.globl parse_gnu_standard_options_only
	.type parse_gnu_standard_options_only, @function
parse_gnu_standard_options_only:

	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x1d0
	test	al, al
	movaps	xmmword ptr [rbp - 0x140], xmm7
	movaps	xmmword ptr [rbp - 0x150], xmm6
	movaps	xmmword ptr [rbp - 0x160], xmm5
	movaps	xmmword ptr [rbp - 0x170], xmm4
	movaps	xmmword ptr [rbp - 0x180], xmm3
	movaps	xmmword ptr [rbp - 0x190], xmm2
	movaps	xmmword ptr [rbp - 0x1a0], xmm1
	movaps	xmmword ptr [rbp - 0x1b0], xmm0
	mov	dword ptr [rbp - 0x1b4], edi
	mov	dword ptr [rbp - 0x1b8], r9d
	mov	qword ptr [rbp - 0x1c0], r8
	mov	qword ptr [rbp - 0x1c8], rcx
	mov	qword ptr [rbp - 0x1d0], rdx
	mov	qword ptr [rbp - 0x1d8], rsi
	je	.label_240
	movaps	xmm0, xmmword ptr [rbp - 0x1b0]
	movaps	xmmword ptr [rbp - 0x100], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x1a0]
	movaps	xmmword ptr [rbp - 0xf0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x190]
	movaps	xmmword ptr [rbp - 0xe0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x180]
	movaps	xmmword ptr [rbp - 0xd0], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm7
.label_240:
	mov	eax, dword ptr [rbp - 0x1b8]
	mov	cl, al
	mov	rdx, qword ptr [rbp + 0x10]
	mov	rsi, qword ptr [rbp - 0x1c0]
	mov	rdi, qword ptr [rbp - 0x1c8]
	mov	r8, qword ptr [rbp - 0x1d0]
	mov	r9, qword ptr [rbp - 0x1d8]
	mov	r10d, dword ptr [rbp - 0x1b4]
	movabs	r11, OFFSET FLAT:long_options
	xor	ebx, ebx
	mov	r14d, ebx
	movabs	r15, OFFSET FLAT:.str_1
	movabs	r12, OFFSET FLAT:.str_0
	mov	dword ptr [rbp - 0x24], r10d
	mov	qword ptr [rbp - 0x30], r9
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], rdi
	mov	qword ptr [rbp - 0x48], rsi
	and	cl, 1
	mov	byte ptr [rbp - 0x49], cl
	mov	qword ptr [rbp - 0x58], rdx
	mov	r10d,  dword ptr [dword ptr [opterr]]
	mov	dword ptr [rbp - 0x60], r10d
	mov	dword ptr [dword ptr [opterr]],  1
	mov	cl, byte ptr [rbp - 0x49]
	test	cl, 1
	cmovne	r15, r12
	mov	qword ptr [rbp - 0x68], r15
	mov	edi, dword ptr [rbp - 0x24]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, r11
	mov	r8, r14
	call	getopt_long
	mov	dword ptr [rbp - 0x5c], eax
	cmp	eax, -1
	je	.label_242
	mov	eax, dword ptr [rbp - 0x5c]
	mov	ecx, eax
	sub	ecx, 0x68
	mov	dword ptr [rbp - 0x1dc], eax
	mov	dword ptr [rbp - 0x1e0], ecx
	je	.label_241
	jmp	.label_246
.label_246:
	mov	eax, dword ptr [rbp - 0x1dc]
	sub	eax, 0x76
	mov	dword ptr [rbp - 0x1e4], eax
	je	.label_243
	jmp	.label_245
.label_241:
	xor	edi, edi
	call	qword ptr [rbp - 0x58]
	jmp	.label_244
.label_243:
	lea	rax, [rbp - 0x80]
	mov	rcx, rax
	lea	rdx, [rbp - 0x130]
	mov	qword ptr [rcx + 0x10], rdx
	lea	rdx, [rbp + 0x18]
	mov	qword ptr [rcx + 8], rdx
	mov	dword ptr [rcx + 4], 0x30
	mov	dword ptr [rcx], 0x30
	mov	rdi,  qword ptr [word ptr [stdout]]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, rax
	call	version_etc_va
	xor	edi, edi
	call	exit
.label_245:
	mov	rax, qword ptr [rbp - 0x58]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	rax
.label_244:
	jmp	.label_242
.label_242:
	mov	eax, dword ptr [rbp - 0x60]
	mov	dword ptr [dword ptr [rip + opterr]],  eax
	add	rsp, 0x1d0
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404640

	.globl mbschr
	.type mbschr, @function
mbschr:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_253
	mov	eax, dword ptr [rbp - 0x14]
	mov	cl, al
	movzx	eax, cl
	cmp	eax, 0x30
	jl	.label_253
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_248:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_247
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_247:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_254
	jmp	.label_249
.label_254:
	cmp	qword ptr [rbp - 0x40], 1
	jne	.label_250
	mov	rax, qword ptr [rbp - 0x48]
	movzx	ecx, byte ptr [rax]
	mov	edx, dword ptr [rbp - 0x14]
	mov	sil, dl
	movzx	edx, sil
	cmp	ecx, edx
	jne	.label_250
	jmp	.label_251
.label_250:
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_248
.label_251:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_252
.label_249:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_252
.label_253:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	call	strchr
	mov	qword ptr [rbp - 8], rax
.label_252:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404750

	.globl mbslen
	.type mbslen, @function
mbslen:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	jbe	.label_257
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0x58]
	mov	qword ptr [rbp - 0x18], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x48], rdi
	mov	byte ptr [rbp - 0x58], 0
	add	rcx, 4
	mov	rdi, rcx
	call	memset
	mov	byte ptr [rbp - 0x4c], 0
.label_260:
	lea	rdi, [rbp - 0x58]
	call	mbuiter_multi_next
	xor	eax, eax
	mov	cl, al
	test	byte ptr [rbp - 0x38], 1
	mov	byte ptr [rbp - 0x59], cl
	je	.label_258
	cmp	dword ptr [rbp - 0x34], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_258:
	mov	al, byte ptr [rbp - 0x59]
	xor	al, 0xff
	test	al, 1
	jne	.label_256
	jmp	.label_259
.label_256:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x4c], 0
	jmp	.label_260
.label_259:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_261
.label_257:
	mov	rdi, qword ptr [rbp - 0x10]
	call	strlen
	mov	qword ptr [rbp - 8], rax
.label_261:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404820

	.globl mbuiter_multi_next
	.type mbuiter_multi_next, @function
mbuiter_multi_next:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	test	byte ptr [rdi + 0xc], 1
	je	.label_271
	jmp	.label_279
.label_271:
	mov	rax, qword ptr [rbp - 8]
	test	byte ptr [rax], 1
	je	.label_280
	jmp	.label_267
.label_280:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	edi, byte ptr [rax]
	call	is_basic
	test	al, 1
	jne	.label_272
	jmp	.label_275
.label_272:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x24], ecx
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	jmp	.label_273
.label_275:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_277
	jmp	.label_276
.label_277:
	movabs	rdi, OFFSET FLAT:.str_4
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	edx, 0x96
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_276:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 1
.label_267:
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	add	rax, 0x14
	mov	rcx, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x10], rax
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdi
	call	__ctype_get_mb_cur_max
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	strnlen1
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	rpl_mbrtowc
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -1
	jne	.label_266
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_265
.label_266:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], -2
	jne	.label_274
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x10]
	call	strlen
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 0
	jmp	.label_264
.label_274:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_270
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x18], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_268
	jmp	.label_269
.label_268:
	movabs	rdi, OFFSET FLAT:.str.2_0
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_269:
	mov	rax, qword ptr [rbp - 8]
	cmp	dword ptr [rax + 0x24], 0
	jne	.label_278
	jmp	.label_263
.label_278:
	movabs	rdi, OFFSET FLAT:.str.3_0
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	edx, 0xb3
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.mbuiter_multi_next
	call	__assert_fail
.label_263:
	jmp	.label_270
.label_270:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0x20], 1
	mov	rax, qword ptr [rbp - 8]
	add	rax, 4
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_262
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax], 0
.label_262:
	jmp	.label_264
.label_264:
	jmp	.label_265
.label_265:
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 8]
	mov	byte ptr [rax + 0xc], 1
.label_279:
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404a80
	.globl mbuiter_multi_reloc
	.type mbuiter_multi_reloc, @function
mbuiter_multi_reloc:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rdi + 0x10]
	mov	qword ptr [rdi + 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404aa0
	.globl mbuiter_multi_copy
	.type mbuiter_multi_copy, @function
mbuiter_multi_copy:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rsi]
	mov	rsi, qword ptr [rbp - 8]
	mov	cl, al
	and	cl, 1
	mov	byte ptr [rsi], cl
	test	al, 1
	jne	.label_281
	jmp	.label_282
.label_281:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 4]
	mov	qword ptr [rax + 4], rcx
	jmp	.label_283
.label_282:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 4
	mov	rdi, rcx
	call	memset
.label_283:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xc]
	mov	rax, qword ptr [rbp - 8]
	and	cl, 1
	mov	byte ptr [rax + 0xc], cl
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x10
	mov	rdx, qword ptr [rbp - 0x10]
	add	rdx, 0x10
	mov	rdi, rax
	mov	rsi, rdx
	call	mb_copy
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404b30

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_286
	movabs	rdi, OFFSET FLAT:.str_5
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_286:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_287
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_284
.label_287:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_284:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_288
	movabs	rsi, OFFSET FLAT:.str.1_2
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_288
	movabs	rsi, OFFSET FLAT:.str.2_1
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_285
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_285:
	jmp	.label_288
.label_288:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404c50
	.globl clone_quoting_options
	.type clone_quoting_options, @function
clone_quoting_options:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0xc], ecx
	cmp	qword ptr [rbp - 8], 0
	je	.label_289
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_290
.label_289:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_290
.label_290:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, 0x38
	mov	esi, ecx
	mov	rdi, rax
	call	xmemdup
	mov	qword ptr [rbp - 0x18], rax
	mov	ecx, dword ptr [rbp - 0xc]
	mov	dword ptr [rbp - 0x24], ecx
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x24]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404cd0
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_291
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_292
.label_291:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_292
.label_292:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d10
	.globl set_quoting_style
	.type set_quoting_style, @function
set_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	esi, dword ptr [rbp - 0xc]
	cmp	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x10], esi
	je	.label_293
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_294
.label_293:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_294
.label_294:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404d60

	.globl set_char_quoting
	.type set_char_quoting, @function
set_char_quoting:
	push	rbp
	mov	rbp, rsp
	mov	al, sil
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	dword ptr [rbp - 0x10], edx
	mov	al, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0x11], al
	cmp	qword ptr [rbp - 8], 0
	je	.label_295
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_296
.label_295:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_296
.label_296:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	edx, ecx
	shr	rdx, 5
	shl	rdx, 2
	add	rax, rdx
	mov	qword ptr [rbp - 0x20], rax
	movzx	ecx, byte ptr [rbp - 0x11]
	mov	eax, ecx
	and	rax, 0x1f
	mov	ecx, eax
	mov	dword ptr [rbp - 0x24], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax]
	mov	esi, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x34], ecx
	mov	ecx, esi
	mov	esi, dword ptr [rbp - 0x34]
	shr	esi, cl
	and	esi, 1
	mov	dword ptr [rbp - 0x28], esi
	mov	esi, dword ptr [rbp - 0x10]
	and	esi, 1
	xor	esi, dword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x24]
	shl	esi, cl
	mov	rax, qword ptr [rbp - 0x20]
	xor	esi, dword ptr [rax]
	mov	dword ptr [rax], esi
	mov	eax, dword ptr [rbp - 0x28]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e10
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_297
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_297:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 4]
	mov	dword ptr [rbp - 0x10], ecx
	mov	ecx, dword ptr [rbp - 0xc]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 4], ecx
	mov	eax, dword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404e50

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_298
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_298:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_300
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_299
.label_300:
	call	abort
.label_299:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404ec0
	.globl quotearg_buffer
	.type quotearg_buffer, @function
quotearg_buffer:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_301
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_302
.label_301:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_302
.label_302:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], ecx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rax + 4]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x40], rax
	mov	r8d, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x4c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x4c]
	mov	dword ptr [rax], r8d
	mov	rax, qword ptr [rbp - 0x40]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x404f90

	.globl quotearg_buffer_restyled
	.type quotearg_buffer_restyled, @function
quotearg_buffer_restyled:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x158
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], r8d
	mov	dword ptr [rbp - 0x38], r9d
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x79], 0
	call	__ctype_get_mb_cur_max
	cmp	rax, 1
	sete	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7a], bl
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 2
	cmp	r8d, 0
	setne	bl
	and	bl, 1
	mov	byte ptr [rbp - 0x7b], bl
	mov	byte ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x7d], 0
	mov	byte ptr [rbp - 0x7e], 1
.label_419:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_313
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_319]]
	jmp	rcx
.label_3204:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_3203:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_328
	jmp	.label_332
.label_332:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_333
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_328
.label_328:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_343
.label_3205:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_343
.label_3206:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_354
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_354:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_367
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_388:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_371
	jmp	.label_375
.label_375:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_377
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_377:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_382
.label_382:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_388
.label_371:
	jmp	.label_367
.label_367:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_343
.label_3201:
	mov	byte ptr [rbp - 0x79], 1
.label_3200:
	mov	byte ptr [rbp - 0x7b], 1
.label_3202:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_401
	mov	byte ptr [rbp - 0x79], 1
.label_401:
	jmp	.label_402
.label_402:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_404
	jmp	.label_408
.label_408:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_409
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_409:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_404
.label_404:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_343
.label_3199:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_343
.label_313:
	call	abort
.label_343:
	mov	qword ptr [rbp - 0x58], 0
.label_385:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_423
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_426
.label_423:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_426:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_438
	jmp	.label_453
.label_438:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_446
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_446
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_446
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_454
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_454
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_381
.label_454:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_381:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_446
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_446
	test	byte ptr [rbp - 0x7b], 1
	je	.label_472
	jmp	.label_322
.label_472:
	mov	byte ptr [rbp - 0x81], 1
.label_446:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x7f], dl
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	eax, esi
	mov	rcx, rax
	sub	rcx, 0x7e
	mov	qword ptr [rbp - 0xf0], rax
	mov	qword ptr [rbp - 0xf8], rcx
	ja	.label_475
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_480]]
	jmp	rcx
.label_3209:
	test	byte ptr [rbp - 0x79], 1
	je	.label_481
	jmp	.label_486
.label_486:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_397
	jmp	.label_322
.label_397:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_414
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_414
	jmp	.label_491
.label_491:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_492
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_492:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_498
.label_498:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_304
.label_304:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_310
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_310:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_414:
	jmp	.label_320
.label_320:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_331
.label_331:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_335
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_335
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_335
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_335
	jmp	.label_352
.label_352:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_411
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_411:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_364
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_364:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_335
.label_335:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_376
.label_481:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_465
	jmp	.label_383
.label_465:
	jmp	.label_376
.label_376:
	jmp	.label_305
.label_3220:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_384
	jmp	.label_391
.label_391:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_392
	jmp	.label_450
.label_384:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_394
	jmp	.label_322
.label_394:
	jmp	.label_400
.label_392:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_390
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_390
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_390
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_412
	jmp	.label_418
.label_418:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_412
	jmp	.label_421
.label_421:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_412
	jmp	.label_427
.label_427:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_412
	jmp	.label_432
.label_432:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_433
	jmp	.label_412
.label_412:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_440
	jmp	.label_322
.label_440:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_445
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_445:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_493
.label_493:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_456
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_456:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_461
.label_461:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_467
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_467:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_470
.label_470:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_407
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_407:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_458
.label_433:
	jmp	.label_458
.label_458:
	jmp	.label_390
.label_390:
	jmp	.label_400
.label_450:
	jmp	.label_400
.label_400:
	jmp	.label_305
.label_3210:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_476
.label_3211:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_476
.label_3215:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_476
.label_3213:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_396
.label_3216:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_396
.label_3212:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_396
.label_3214:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_476
.label_3221:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_482
	test	byte ptr [rbp - 0x7b], 1
	je	.label_485
	jmp	.label_322
.label_485:
	jmp	.label_338
.label_482:
	test	byte ptr [rbp - 0x79], 1
	je	.label_488
	test	byte ptr [rbp - 0x7b], 1
	je	.label_488
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_488
	jmp	.label_338
.label_488:
	jmp	.label_396
.label_396:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_496
	test	byte ptr [rbp - 0x7b], 1
	je	.label_496
	jmp	.label_322
.label_496:
	jmp	.label_476
.label_476:
	test	byte ptr [rbp - 0x79], 1
	je	.label_502
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_303
.label_502:
	jmp	.label_305
.label_3222:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_307
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_311
	jmp	.label_315
.label_307:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_311
.label_315:
	jmp	.label_305
.label_311:
	jmp	.label_308
.label_308:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_321
	jmp	.label_305
.label_321:
	jmp	.label_325
.label_325:
	mov	byte ptr [rbp - 0x83], 1
.label_3217:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_330
	test	byte ptr [rbp - 0x7b], 1
	je	.label_330
	jmp	.label_322
.label_330:
	jmp	.label_305
.label_3219:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_336
	test	byte ptr [rbp - 0x7b], 1
	je	.label_342
	jmp	.label_322
.label_342:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_347
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_347
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_347:
	jmp	.label_356
.label_356:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_363
.label_363:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_366
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_366:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_374
.label_374:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_379
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_379:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_336:
	jmp	.label_305
.label_3218:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_305
.label_475:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_318
	mov	qword ptr [rbp - 0x90], 1
	movzx	eax, byte ptr [rbp - 0x7f]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x128], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x128]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 0x91], sil
	jmp	.label_380
.label_318:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_413
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_413:
	jmp	.label_312
.label_312:
	lea	rdi, [rbp - 0xa4]
	lea	rcx, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x58]
	add	rsi, qword ptr [rbp - 0x90]
	sub	rdx, rsi
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	jne	.label_429
	jmp	.label_435
.label_429:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_436
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_435
.label_436:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_443
	mov	byte ptr [rbp - 0x91], 0
.label_462:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_447
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_447:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_459
	jmp	.label_460
.label_459:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_462
.label_460:
	jmp	.label_435
.label_443:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_469
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_469
	mov	qword ptr [rbp - 0xb8], 1
.label_490:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_471
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	add	esi, -0x5b
	sub	esi, 2
	mov	dword ptr [rbp - 0x130], edx
	mov	dword ptr [rbp - 0x134], esi
	jb	.label_351
	jmp	.label_478
.label_478:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_351
	jmp	.label_345
.label_345:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_351
	jmp	.label_372
.label_372:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_483
	jmp	.label_351
.label_351:
	jmp	.label_322
.label_483:
	jmp	.label_386
.label_386:
	jmp	.label_430
.label_430:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_490
.label_471:
	jmp	.label_469
.label_469:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_499
	mov	byte ptr [rbp - 0x91], 0
.label_499:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_501
.label_501:
	jmp	.label_317
.label_317:
	jmp	.label_306
.label_306:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_312
.label_435:
	jmp	.label_380
.label_380:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_316
	test	byte ptr [rbp - 0x79], 1
	je	.label_327
	test	byte ptr [rbp - 0x91], 1
	jne	.label_327
.label_316:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_346:
	test	byte ptr [rbp - 0x79], 1
	je	.label_337
	test	byte ptr [rbp - 0x91], 1
	jne	.label_337
	jmp	.label_484
.label_484:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_344
	jmp	.label_322
.label_344:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_350
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_350
	jmp	.label_355
.label_355:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_357
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_357:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_362
.label_362:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_365
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_365:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_373
.label_373:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_463
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_463:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_350:
	jmp	.label_387
.label_387:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_389
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_389:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_393
.label_393:
	jmp	.label_395
.label_395:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_398
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_398:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_406
.label_406:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_410
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_410:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_416
.label_337:
	test	byte ptr [rbp - 0x81], 1
	je	.label_420
	jmp	.label_422
.label_422:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_424
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_424:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_420:
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_434
	jmp	.label_439
.label_434:
	jmp	.label_442
.label_442:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_444
	test	byte ptr [rbp - 0x82], 1
	jne	.label_444
	jmp	.label_448
.label_448:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_449
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_449:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_452
.label_452:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_455
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_455:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_444:
	jmp	.label_464
.label_464:
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_468
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_468:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x7f], dl
	jmp	.label_346
.label_439:
	jmp	.label_338
.label_327:
	jmp	.label_305
.label_305:
	test	byte ptr [rbp - 0x79], 1
	je	.label_473
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_474
.label_473:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_477
.label_474:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_477
	movzx	eax, byte ptr [rbp - 0x7f]
	mov	ecx, eax
	shr	rcx, 5
	mov	rdx, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rdx + rcx*4]
	movzx	esi, byte ptr [rbp - 0x7f]
	mov	ecx, esi
	and	rcx, 0x1f
	mov	esi, ecx
	mov	ecx, esi
	shr	eax, cl
	and	eax, 1
	cmp	eax, 0
	jne	.label_479
.label_477:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_479
	jmp	.label_338
.label_479:
	jmp	.label_303
.label_303:
	jmp	.label_437
.label_437:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_487
	jmp	.label_322
.label_487:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_489
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_489
	jmp	.label_494
.label_494:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_495
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_495:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_500
.label_500:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_503
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_503:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_314
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_489:
	jmp	.label_324
.label_324:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_326
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_326:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_334
.label_334:
	jmp	.label_338
.label_338:
	jmp	.label_339
.label_339:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_341
	test	byte ptr [rbp - 0x82], 1
	jne	.label_341
	jmp	.label_497
.label_497:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_359
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_359:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_341:
	jmp	.label_368
.label_368:
	jmp	.label_369
.label_369:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_370
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_370:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_378
	mov	byte ptr [rbp - 0x7e], 0
.label_378:
	jmp	.label_383
.label_383:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_385
.label_453:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_340
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_340
	test	byte ptr [rbp - 0x7b], 1
	je	.label_340
	jmp	.label_322
.label_340:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_361
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_361
	test	byte ptr [rbp - 0x7d], 1
	je	.label_361
	test	byte ptr [rbp - 0x7e], 1
	je	.label_403
	mov	r8d, 5
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_415
.label_403:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_417
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_417
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_419
.label_417:
	jmp	.label_329
.label_329:
	jmp	.label_361
.label_361:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_425
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_425
	jmp	.label_428
.label_428:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_431
	jmp	.label_399
.label_399:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_405
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_405:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_441
.label_441:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_428
.label_431:
	jmp	.label_425
.label_425:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_451
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_451:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_415
.label_322:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_457
	test	byte ptr [rbp - 0x79], 1
	je	.label_457
	mov	dword ptr [rbp - 0x34], 4
.label_457:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rbp - 0x34]
	mov	r9d, dword ptr [rbp - 0x38]
	and	r9d, 0xfffffffd
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x148], rcx
	mov	rcx, r8
	mov	r8d, eax
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x10], rax
.label_415:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406330
	.globl quotearg_alloc
	.type quotearg_alloc, @function
quotearg_alloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_alloc_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406370

	.globl quotearg_alloc_mem
	.type quotearg_alloc_mem, @function
quotearg_alloc_mem:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_504
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_505
.label_504:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_505
.label_505:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x30], rax
	call	__errno_location
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 1
	xor	esi, esi
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], edi
	mov	rax, qword ptr [rbp - 0x30]
	mov	edi, dword ptr [rax + 4]
	cmp	qword ptr [rbp - 0x20], 0
	cmovne	ecx, esi
	or	edi, ecx
	mov	dword ptr [rbp - 0x38], edi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [r8]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	r10, qword ptr [rbp - 0x30]
	add	r10, 8
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x28]
	mov	rbx, qword ptr [rbp - 0x30]
	mov	rbx, qword ptr [rbx + 0x30]
	mov	rdi, rdx
	mov	rsi, rdx
	mov	rdx, rax
	mov	qword ptr [rsp], r10
	mov	qword ptr [rsp + 8], r11
	mov	qword ptr [rsp + 0x10], rbx
	call	quotearg_buffer_restyled
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x30]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x30]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x30]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	r8d, dword ptr [rbp - 0x34]
	mov	qword ptr [rbp - 0x58], rax
	mov	dword ptr [rbp - 0x5c], r8d
	call	__errno_location
	mov	r8d, dword ptr [rbp - 0x5c]
	mov	dword ptr [rax], r8d
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_506
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_506:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4064d0
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_508:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_509
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_508
.label_509:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_511
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_510]],  rax
.label_511:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_507
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_507:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065b0

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	movabs	rcx, OFFSET FLAT:default_quoting_options
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4065f0

	.globl quotearg_n_options
	.type quotearg_n_options, @function
quotearg_n_options:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	call	__errno_location
	mov	edi, dword ptr [rax]
	mov	dword ptr [rbp - 0x24], edi
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 0x30], rax
	cmp	dword ptr [rbp - 4], 0
	jge	.label_512
	call	abort
.label_512:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_516
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_519
	call	xalloc_die
.label_519:
	test	byte ptr [rbp - 0x31], 1
	je	.label_515
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_518
.label_515:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_518:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rbp - 4]
	add	ecx, 1
	movsxd	rdx, ecx
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rdx
	call	xrealloc
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [word ptr [slotvec]],  rax
	test	byte ptr [rbp - 0x31], 1
	je	.label_517
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_510]]
	mov	qword ptr [rax + 8], rcx
.label_517:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x30]
	movsxd	rcx,  dword ptr [dword ptr [nslots]]
	shl	rcx, 4
	add	rax, rcx
	mov	edx, dword ptr [rbp - 4]
	add	edx, 1
	sub	edx,  dword ptr [dword ptr [nslots]]
	movsxd	rcx, edx
	shl	rcx, 4
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	esi, dword ptr [rbp - 4]
	add	esi, 1
	mov	dword ptr [dword ptr [nslots]],  esi
.label_516:
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
	movsxd	rax, dword ptr [rbp - 4]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 4]
	or	ecx, 1
	mov	dword ptr [rbp - 0x4c], ecx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x58]
	ja	.label_513
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_514
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_514:
	mov	rdi, qword ptr [rbp - 0x40]
	call	xcharalloc
	mov	qword ptr [rbp - 0x48], rax
	movsxd	rdi, dword ptr [rbp - 4]
	shl	rdi, 4
	add	rdi, qword ptr [rbp - 0x30]
	mov	qword ptr [rdi + 8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rax]
	mov	r9d, dword ptr [rbp - 0x4c]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	r10, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [r10 + 0x28]
	mov	r11, qword ptr [rbp - 0x20]
	mov	r11, qword ptr [r11 + 0x30]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	call	quotearg_buffer_restyled
	mov	qword ptr [rbp - 0x68], rax
.label_513:
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 0x6c], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x6c]
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406870

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
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
	#Procedure 0x4068b0
	.globl quotearg
	.type quotearg, @function
quotearg:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quotearg_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4068d0
	.globl quotearg_mem
	.type quotearg_mem, @function
quotearg_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406900

	.globl quotearg_n_style
	.type quotearg_n_style, @function
quotearg_n_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x48]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406940

	.globl quoting_options_from_style
	.type quoting_options_from_style, @function
quoting_options_from_style:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	rax, rdi
	xor	ecx, ecx
	mov	edx, 0x38
	lea	r8, [rbp - 0x40]
	mov	dword ptr [rbp - 4], esi
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, r8
	mov	esi, ecx
	mov	qword ptr [rbp - 0x50], rax
	call	memset
	cmp	dword ptr [rbp - 4], 0xa
	jne	.label_520
	call	abort
.label_520:
	mov	eax, 0x38
	mov	edx, eax
	lea	rcx, [rbp - 0x40]
	mov	eax, dword ptr [rbp - 4]
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdi, rsi
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x50]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069b0

	.globl quotearg_n_style_mem
	.type quotearg_n_style_mem, @function
quotearg_n_style_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x50]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rcx, [rbp - 0x50]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	quotearg_n_options
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4069f0
	.globl quotearg_style
	.type quotearg_style, @function
quotearg_style:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	esi, dword ptr [rbp - 4]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quotearg_n_style
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a20
	.globl quotearg_style_mem
	.type quotearg_style_mem, @function
quotearg_style_mem:

	push	rbp
	mov	rbp, rsp
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
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406a50

	.globl quotearg_char_mem
	.type quotearg_char_mem, @function
quotearg_char_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, dl
	lea	rcx, [rbp - 0x50]
	mov	edx, 1
	movabs	r8, OFFSET FLAT:default_quoting_options
	mov	r9d, 0x38
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	byte ptr [rbp - 0x11], al
	mov	rsi, rcx
	mov	rdi, rsi
	mov	rsi, r8
	mov	dword ptr [rbp - 0x54], edx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x60], rcx
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x60]
	movsx	esi, byte ptr [rbp - 0x11]
	mov	edx, dword ptr [rbp - 0x54]
	call	set_char_quoting
	xor	edi, edi
	lea	rcx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x64], eax
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ad0

	.globl quotearg_char
	.type quotearg_char, @function
quotearg_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, sil
	mov	rsi, -1
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 9], al
	mov	rdi, qword ptr [rbp - 8]
	movsx	edx, byte ptr [rbp - 9]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b00

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	quotearg_char
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b20
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edx, 0x3a
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quotearg_char_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406b50
	.globl quotearg_n_style_colon
	.type quotearg_n_style_colon, @function
quotearg_n_style_colon:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	lea	rax, [rbp - 0x80]
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	esi, dword ptr [rbp - 8]
	mov	rdi, rax
	call	quoting_options_from_style
	lea	rax, [rbp - 0x48]
	mov	esi, 0x3a
	mov	edx, 1
	mov	ecx, 0x38
	mov	edi, ecx
	lea	r8, [rbp - 0x80]
	mov	r9, rax
	mov	qword ptr [rbp - 0x88], rdi
	mov	rdi, r9
	mov	dword ptr [rbp - 0x8c], esi
	mov	rsi, r8
	mov	r8, qword ptr [rbp - 0x88]
	mov	dword ptr [rbp - 0x90], edx
	mov	rdx, r8
	mov	qword ptr [rbp - 0x98], rax
	call	memcpy
	mov	rdi, qword ptr [rbp - 0x98]
	mov	esi, dword ptr [rbp - 0x8c]
	mov	edx, dword ptr [rbp - 0x90]
	call	set_char_quoting
	mov	rdx, -1
	lea	rcx, [rbp - 0x48]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rbp - 0x9c], eax
	call	quotearg_n_options
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c00

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	r8, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406c40

	.globl quotearg_n_custom_mem
	.type quotearg_n_custom_mem, @function
quotearg_n_custom_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x60]
	movabs	r9, OFFSET FLAT:default_quoting_options
	mov	r10d, 0x38
	mov	r11d, r10d
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, rax
	mov	rdi, rcx
	mov	rsi, r9
	mov	rdx, r11
	mov	qword ptr [rbp - 0x68], rax
	call	memcpy
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x68]
	call	set_custom_quoting
	lea	rcx, [rbp - 0x60]
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	quotearg_n_options
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cc0
	.globl quotearg_custom
	.type quotearg_custom, @function
quotearg_custom:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edi, eax
	call	quotearg_n_custom
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406cf0
	.globl quotearg_custom_mem
	.type quotearg_custom_mem, @function
quotearg_custom_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	edi, eax
	call	quotearg_n_custom_mem
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406d30

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rcx, OFFSET FLAT:quote_quoting_options
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
	#Procedure 0x406d70
	.globl quote_mem
	.type quote_mem, @function
quote_mem:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edi, eax
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406da0

	.globl quote_n
	.type quote_n, @function
quote_n:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdx, -1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	edi, dword ptr [rbp - 4]
	mov	rsi, qword ptr [rbp - 0x10]
	call	quote_n_mem
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406dd0
	.globl quote
	.type quote, @function
quote:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rsi, qword ptr [rbp - 8]
	mov	edi, eax
	call	quote_n
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406df0

	.globl gettext_quote
	.type gettext_quote, @function
gettext_quote:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	call	gettext
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x10]
	je	.label_522
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_524
.label_522:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_521
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_524
.label_521:
	movabs	rsi, OFFSET FLAT:.str.16
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_523
	movabs	rax, OFFSET FLAT:.str.18_1
	movabs	rcx, OFFSET FLAT:.str.17_1
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_524
.label_523:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_524:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406ef0

	.globl strnlen1
	.type strnlen1, @function
strnlen1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	xor	esi, esi
	call	memchr
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_526
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, rcx
	add	rax, 1
	mov	qword ptr [rbp - 8], rax
	jmp	.label_525
.label_526:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rax
.label_525:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x406f50

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
	#Procedure 0x406f80

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
	jne	.label_565
	jmp	.label_582
.label_582:
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
	je	.label_585
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_585:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_582
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_581
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_529
	jmp	.label_532
.label_532:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_532
	jmp	.label_529
.label_529:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_544
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_537
.label_544:
	jmp	.label_553
.label_553:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_554
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_554:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_564
	jmp	.label_568
.label_564:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_553
.label_568:
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
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_581:
	jmp	.label_527
.label_527:
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
	je	.label_538
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_538:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_527
	jmp	.label_547
.label_547:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_548
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_548:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_558
	jmp	.label_563
.label_558:
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
	jmp	.label_577
.label_577:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_577
	jmp	.label_547
.label_563:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_592
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_594
.label_592:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_598
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_598
.label_594:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_598:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_535:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_545
	jmp	.label_550
.label_550:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_550
	jmp	.label_590
.label_590:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_535
.label_545:
	mov	qword ptr [rbp - 0x38], 0
.label_595:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_570
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
	jmp	.label_567
.label_567:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_595
.label_570:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_549
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_549:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_531
	mov	dword ptr [rbp - 4], 0
	jmp	.label_537
.label_531:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_565:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_539
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
	mov	byte ptr [rbp - 0x3d], al
	je	.label_546
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_546:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_543
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_574
	jmp	.label_569
.label_569:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_569
	jmp	.label_574
.label_574:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_584
	mov	dword ptr [rbp - 4], 1
	jmp	.label_537
.label_584:
	jmp	.label_530
.label_530:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_593
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_593:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_600
	jmp	.label_528
.label_600:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_530
.label_528:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_536
	jmp	.label_540
.label_540:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_540
	jmp	.label_536
.label_536:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_539:
	jmp	.label_561
.label_561:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_541
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_541:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_572
	jmp	.label_576
.label_572:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_561
.label_576:
	jmp	.label_588
.label_588:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_589
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_589:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_596
	jmp	.label_599
.label_596:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_588
.label_599:
	jmp	.label_559
.label_559:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_533
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_533:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_562
	jmp	.label_586
.label_562:
	jmp	.label_551
.label_551:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_551
	jmp	.label_560
.label_560:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_560
	jmp	.label_559
.label_586:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_591
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_579
.label_591:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_587
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_587
.label_579:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_587:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_556:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_552
	jmp	.label_534
.label_534:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_534
	jmp	.label_573
.label_573:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_556
.label_552:
	mov	qword ptr [rbp - 0x38], 0
.label_597:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_555
	jmp	.label_542
.label_542:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_542
	jmp	.label_571
.label_571:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_597
.label_555:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_580
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_537
.label_580:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_557
	mov	dword ptr [rbp - 4], 0
	jmp	.label_537
.label_557:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_537:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407710

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
	jne	.label_606
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_606
	jmp	.label_603
.label_603:
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
	jne	.label_605
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_617
	mov	dword ptr [rbp - 4], 0
	jmp	.label_602
.label_617:
	jmp	.label_603
.label_605:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_610
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_610
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_602
.label_610:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_608
	jmp	.label_614
.label_608:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_616
	jmp	.label_609
.label_616:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_602
.label_606:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_607
	jmp	.label_614
.label_614:
	jmp	.label_612
.label_612:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_601
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_612
.label_601:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_602
.label_607:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_618
	jmp	.label_609
.label_609:
	jmp	.label_604
.label_604:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_611
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_604
.label_611:
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
	jmp	.label_602
.label_618:
	jmp	.label_613
.label_613:
	jmp	.label_615
.label_615:
	mov	dword ptr [rbp - 4], 0
.label_602:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407910

	.globl version_etc_arn
	.type version_etc_arn, @function
version_etc_arn:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0x180
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_620
	movabs	rsi, OFFSET FLAT:.str_6
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_622
.label_620:
	movabs	rsi, OFFSET FLAT:.str.1_3
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x48], eax
.label_622:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	eax, OFFSET FLAT:.str.2_2
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rdi
	mov	rdi, rcx
	call	gettext
	mov	edx, OFFSET FLAT:version_etc_copyright
	mov	esi, edx
	xor	edx, edx
	mov	r8b, dl
	mov	ecx, 0x7e3
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rdx, rax
	mov	al, r8b
	call	fprintf
	mov	ecx, OFFSET FLAT:.str.3_1
	mov	edi, ecx
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rsi, rdx
	sub	rsi, 9
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x60], rdx
	mov	qword ptr [rbp - 0x68], rsi
	ja	.label_621
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_623]]
	jmp	rcx
.label_3105:
	jmp	.label_619
.label_3106:
	movabs	rdi, OFFSET FLAT:.str.4_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x70], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x70]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_619
.label_3107:
	movabs	rdi, OFFSET FLAT:.str.5_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x80], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_619
.label_3108:
	movabs	rdi, OFFSET FLAT:.str.6_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x90], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x94], eax
	jmp	.label_619
.label_3109:
	movabs	rdi, OFFSET FLAT:.str.7_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xa0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_619
.label_3110:
	movabs	rdi, OFFSET FLAT:.str.8_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xb0], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rdi
	mov	rdi, rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rsp], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xbc], eax
	jmp	.label_619
.label_3111:
	movabs	rdi, OFFSET FLAT:.str.9_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xc8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0xd0], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0xd8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rsp + 8], rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xdc], eax
	jmp	.label_619
.label_3112:
	movabs	rdi, OFFSET FLAT:.str.10_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0xe8], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xf0], rdi
	mov	rdi, r11
	mov	qword ptr [rbp - 0xf8], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0xfc], eax
	jmp	.label_619
.label_3113:
	movabs	rdi, OFFSET FLAT:.str.11_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x108], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x108]
	mov	qword ptr [rbp - 0x110], rdi
	mov	rdi, rbx
	mov	qword ptr [rbp - 0x118], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x110]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x118]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x11c], eax
	jmp	.label_619
.label_3114:
	movabs	rdi, OFFSET FLAT:.str.12_1
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x128], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x128]
	mov	qword ptr [rbp - 0x130], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x138], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x138]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x13c], eax
	jmp	.label_619
.label_621:
	movabs	rdi, OFFSET FLAT:.str.13_0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x148], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rdi]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rdi + 8]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rdi + 0x10]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	r10, qword ptr [rbp - 0x38]
	mov	r10, qword ptr [r10 + 0x30]
	mov	r11, qword ptr [rbp - 0x38]
	mov	r11, qword ptr [r11 + 0x38]
	mov	rbx, qword ptr [rbp - 0x38]
	mov	rbx, qword ptr [rbx + 0x40]
	mov	r14, qword ptr [rbp - 0x148]
	mov	qword ptr [rbp - 0x150], rdi
	mov	rdi, r14
	mov	qword ptr [rbp - 0x158], rsi
	mov	rsi, rax
	mov	rax, qword ptr [rbp - 0x150]
	mov	qword ptr [rsp], rax
	mov	rax, qword ptr [rbp - 0x158]
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	qword ptr [rsp + 0x18], r11
	mov	qword ptr [rsp + 0x20], rbx
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x15c], eax
.label_619:
	add	rsp, 0x180
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407ed0
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_626:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_624
	jmp	.label_625
.label_625:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_626
.label_624:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x407f40

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], 0
.label_630:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0xa
	mov	byte ptr [rbp - 0x81], cl
	jae	.label_627
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x90], rax
	mov	dword ptr [rbp - 0x94], ecx
	ja	.label_632
	mov	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x90]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_631
.label_632:
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xa0], rdx
.label_631:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp + rcx*8 - 0x80], rax
	cmp	rax, 0
	setne	dl
	mov	byte ptr [rbp - 0x81], dl
.label_627:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_633
	jmp	.label_628
.label_633:
	jmp	.label_629
.label_629:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_630
.label_628:
	lea	r8, [rbp - 0x80]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	call	version_etc_arn
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408050
	.globl version_etc
	.type version_etc, @function
version_etc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x1a0
	test	al, al
	movaps	xmmword ptr [rbp - 0x100], xmm7
	movaps	xmmword ptr [rbp - 0x110], xmm6
	movaps	xmmword ptr [rbp - 0x120], xmm5
	movaps	xmmword ptr [rbp - 0x130], xmm4
	movaps	xmmword ptr [rbp - 0x140], xmm3
	movaps	xmmword ptr [rbp - 0x150], xmm2
	movaps	xmmword ptr [rbp - 0x160], xmm1
	movaps	xmmword ptr [rbp - 0x170], xmm0
	mov	qword ptr [rbp - 0x178], rdi
	mov	qword ptr [rbp - 0x180], r9
	mov	qword ptr [rbp - 0x188], r8
	mov	qword ptr [rbp - 0x190], rcx
	mov	qword ptr [rbp - 0x198], rdx
	mov	qword ptr [rbp - 0x1a0], rsi
	je	.label_634
	movaps	xmm0, xmmword ptr [rbp - 0x170]
	movaps	xmmword ptr [rbp - 0xc0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x160]
	movaps	xmmword ptr [rbp - 0xb0], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm7
.label_634:
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rcx, qword ptr [rbp - 0x188]
	mov	qword ptr [rbp - 0xd0], rcx
	mov	rdx, qword ptr [rbp - 0x190]
	mov	rsi, qword ptr [rbp - 0x198]
	mov	rdi, qword ptr [rbp - 0x1a0]
	mov	r8, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 8], r8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	lea	rdx, [rbp - 0xf0]
	mov	qword ptr [rbp - 0x30], rdx
	lea	rdx, [rbp + 0x10]
	mov	qword ptr [rbp - 0x38], rdx
	mov	dword ptr [rbp - 0x3c], 0x30
	mov	dword ptr [rbp - 0x40], 0x20
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	lea	r8, [rbp - 0x40]
	call	version_etc_va
	add	rsp, 0x1a0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4081c0
	.globl emit_bug_reporting_address
	.type emit_bug_reporting_address, @function
emit_bug_reporting_address:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.14_1
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.15_1
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.16_0
	mov	dword ptr [rbp - 4], eax
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.17
	movabs	rdx, OFFSET FLAT:.str.18
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19_0
	mov	dword ptr [rbp - 8], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0xc], eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408250
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 8]
	jae	.label_635
	call	xalloc_die
.label_635:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082a0

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	malloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_636
	cmp	qword ptr [rbp - 8], 0
	je	.label_636
	call	xalloc_die
.label_636:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4082e0
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x10]
	jae	.label_637
	call	xalloc_die
.label_637:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408330

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_638
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_638
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_640
.label_638:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_639
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_639
	call	xalloc_die
.label_639:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_640:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4083b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 8], 0
	jne	.label_641
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_644
	mov	eax, 0x80
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	sil
	xor	sil, 0xff
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_644:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_642
	call	xalloc_die
.label_642:
	jmp	.label_643
.label_641:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_645
	call	xalloc_die
.label_645:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_643:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x20]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084a0

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084c0
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	x2nrealloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4084f0
	.globl xzalloc
	.type xzalloc, @function
xzalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	xmalloc
	xor	esi, esi
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x10], rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408530
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
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
	call	xalloc_die
.label_647:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408590

	.globl xmemdup
	.type xmemdup, @function
xmemdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 0x10]
	call	xmalloc
	mov	rsi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0x18], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4085d0

	.globl xstrdup
	.type xstrdup, @function
xstrdup:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, rax
	call	strlen
	add	rax, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	call	xmemdup
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408610

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_4
	mov	eax,  dword ptr [dword ptr [exit_failure]]
	mov	dword ptr [rbp - 4], eax
	call	gettext
	xor	esi, esi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	rcx, rax
	mov	al, 0
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x408650

	.globl rpl_mbrtowc
	.type rpl_mbrtowc, @function
rpl_mbrtowc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_648
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_648:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_649
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_649
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_649
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_650
.label_649:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_650:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408700

	.globl rpl_re_compile_pattern
	.type rpl_re_compile_pattern, @function
rpl_re_compile_pattern:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx,  qword ptr [word ptr [rpl_re_syntax_options]]
	and	rdx, 0x2000000
	cmp	rdx, 0
	setne	al
	xor	al, 0xff
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, cl
	mov	r8b, byte ptr [rdx + 0x38]
	and	al, 1
	shl	al, 4
	and	r8b, 0xef
	or	r8b, al
	mov	byte ptr [rdx + 0x38], r8b
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx + 0x38]
	and	al, 0x7f
	or	al, 0x80
	mov	byte ptr [rdx + 0x38], al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx,  qword ptr [word ptr [rpl_re_syntax_options]]
	call	re_compile_internal
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_652
	mov	qword ptr [rbp - 8], 0
	jmp	.label_651
.label_652:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 0x24]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 8], rax
.label_651:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4087c0

	.globl re_compile_internal
	.type re_compile_internal, @function
re_compile_internal:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf7
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xbf
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xdf
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xfe
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	al, byte ptr [rcx + 0x38]
	and	al, 0xf9
	mov	byte ptr [rcx + 0x38], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 8], 0xe8
	setb	al
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_653
	mov	eax, 0xe8
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_656
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_658
.label_656:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0xe8
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_653:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0xe8
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x20]
	call	init_dfa
	xor	ecx, ecx
	mov	dl, cl
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	mov	byte ptr [rbp - 0xd1], dl
	jne	.label_657
	xor	eax, eax
	mov	cl, al
	mov	byte ptr [rbp - 0xd1], cl
	jmp	.label_657
.label_657:
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_663
	mov	dword ptr [rbp - 0x2c], 0xc
.label_663:
	cmp	dword ptr [rbp - 0x2c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_664
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_658
.label_664:
	lea	rax, [rbp - 0xd0]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rdi, qword ptr [rbp - 0x28]
	and	rdi, 0x400000
	cmp	rdi, 0
	setne	r8b
	mov	r9, qword ptr [rbp - 0x38]
	and	r8b, 1
	movzx	r8d, r8b
	lea	rdi, [rbp - 0xd0]
	mov	qword ptr [rbp - 0xe0], rax
	call	re_string_construct
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_660
	jmp	.label_654
.label_654:
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	call	re_string_destruct
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_658
.label_660:
	lea	rdi, [rbp - 0xd0]
	lea	rcx, [rbp - 0x2c]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	call	parse
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x68], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_655
	jmp	.label_654
.label_655:
	mov	rdi, qword ptr [rbp - 0x10]
	call	analyze
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_661
	jmp	.label_654
.label_661:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_659
	mov	rax, qword ptr [rbp - 0x28]
	and	rax, 0x400000
	cmp	rax, 0
	jne	.label_659
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_659
	mov	rdi, qword ptr [rbp - 0x38]
	call	optimize_utf8
.label_659:
	mov	rdi, qword ptr [rbp - 0x38]
	call	create_initial_state
	mov	dword ptr [rbp - 0x2c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_workarea_compile
	lea	rdi, [rbp - 0xd0]
	call	re_string_destruct
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_662
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_dfa_content
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], 0
.label_662:
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
.label_658:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b40
	.globl rpl_re_set_syntax
	.type rpl_re_set_syntax, @function
rpl_re_set_syntax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi,  qword ptr [word ptr [rpl_re_syntax_options]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [rpl_re_syntax_options]],  rdi
	mov	rax, qword ptr [rbp - 0x10]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408b70

	.globl rpl_re_compile_fastmap
	.type rpl_re_compile_fastmap, @function
rpl_re_compile_fastmap:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	esi, esi
	mov	eax, 0x100
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	call	memset
	mov	rdi, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x50]
	je	.label_666
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_666:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	je	.label_667
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x58]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_667:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x60]
	je	.label_665
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	call	re_compile_fastmap_iter
.label_665:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0x38]
	and	dl, 0xf7
	or	dl, 8
	mov	byte ptr [rcx + 0x38], dl
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x408c60

	.globl re_compile_fastmap_iter
	.type re_compile_fastmap_iter, @function
re_compile_fastmap_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x270
	xor	eax, eax
	mov	cl, al
	mov	qword ptr [rbp - 0x68], rdi
	mov	qword ptr [rbp - 0x70], rsi
	mov	qword ptr [rbp - 0x78], rdx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x80], rdx
	mov	rdx, qword ptr [rbp - 0x80]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	byte ptr [rbp - 0x209], cl
	jne	.label_689
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	setne	cl
	mov	byte ptr [rbp - 0x209], cl
.label_689:
	mov	al, byte ptr [rbp - 0x209]
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	mov	qword ptr [rbp - 0x88], 0
.label_692:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_682
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x9c], edx
	cmp	dword ptr [rbp - 0x9c], 1
	jne	.label_710
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	movzx	edi, byte ptr [rdx]
	mov	qword ptr [rbp - 0x58], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x59], cl
	mov	dword ptr [rbp - 0x60], edi
	movsxd	rax, dword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x59], 1
	je	.label_678
	mov	edi, dword ptr [rbp - 0x60]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	mov	byte ptr [rdx + rcx], 1
.label_678:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_697
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_697
	lea	rax, [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
.label_694:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	add	rdx, 1
	mov	qword ptr [rbp - 0x98], rdx
	mov	rsi, qword ptr [rbp - 0x80]
	cmp	rdx, qword ptr [rsi + 0x10]
	mov	byte ptr [rbp - 0x20a], cl
	jae	.label_687
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 1
	mov	byte ptr [rbp - 0x20a], cl
	jne	.label_687
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x15
	and	edx, 1
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x20a], sil
.label_687:
	mov	al, byte ptr [rbp - 0x20a]
	test	al, 1
	jne	.label_691
	jmp	.label_693
.label_691:
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	dl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0xb8], rcx
	mov	byte ptr [rax], dl
	jmp	.label_694
.label_693:
	lea	rdi, [rbp - 0xbc]
	lea	rax, [rbp - 0xc8]
	lea	rcx, [rbp - 0xb0]
	xor	esi, esi
	mov	edx, 8
	mov	r8, rax
	mov	qword ptr [rbp - 0x218], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x220], rcx
	mov	qword ptr [rbp - 0x228], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x220]
	sub	rax, rcx
	mov	rdi, qword ptr [rbp - 0x218]
	mov	rsi, rcx
	mov	rdx, rax
	mov	rcx, qword ptr [rbp - 0x228]
	call	rpl_mbrtowc
	lea	rcx, [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0xb8]
	sub	rdx, rcx
	cmp	rax, rdx
	jne	.label_670
	lea	rdi, [rbp - 0xb0]
	mov	eax, dword ptr [rbp - 0xbc]
	mov	qword ptr [rbp - 0x230], rdi
	mov	edi, eax
	call	towlower
	lea	rdx, [rbp - 0xc8]
	mov	rdi, qword ptr [rbp - 0x230]
	mov	esi, eax
	call	wcrtomb
	cmp	rax, -1
	je	.label_670
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0x48], rax
	mov	byte ptr [rbp - 0x49], 0
	mov	dword ptr [rbp - 0x50], ecx
	movsxd	rax, dword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x49], 1
	je	.label_699
	mov	edi, dword ptr [rbp - 0x50]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x48]
	mov	byte ptr [rdx + rcx], 1
.label_699:
	jmp	.label_670
.label_670:
	jmp	.label_697
.label_697:
	jmp	.label_688
.label_710:
	cmp	dword ptr [rbp - 0x9c], 3
	jne	.label_702
	mov	dword ptr [rbp - 0xcc], 0
	mov	dword ptr [rbp - 0xd0], 0
.label_705:
	cmp	dword ptr [rbp - 0xcc], 4
	jge	.label_707
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x80]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xe0], rax
	mov	dword ptr [rbp - 0xd4], 0
.label_701:
	cmp	dword ptr [rbp - 0xd4], 0x40
	jge	.label_671
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0xe0]
	mov	eax, dword ptr [rbp - 0xd4]
	mov	esi, eax
	mov	qword ptr [rbp - 0x238], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x238]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	.label_698
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	mov	edx, dword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x38], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x39], cl
	mov	dword ptr [rbp - 0x40], edx
	movsxd	rax, dword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	byte ptr [rsi + rax], 1
	test	byte ptr [rbp - 0x39], 1
	je	.label_684
	mov	edi, dword ptr [rbp - 0x40]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rdx + rcx], 1
.label_684:
	jmp	.label_698
.label_698:
	jmp	.label_700
.label_700:
	mov	eax, dword ptr [rbp - 0xd4]
	add	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	mov	eax, dword ptr [rbp - 0xd0]
	add	eax, 1
	mov	dword ptr [rbp - 0xd0], eax
	jmp	.label_701
.label_671:
	jmp	.label_703
.label_703:
	mov	eax, dword ptr [rbp - 0xcc]
	add	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_705
.label_707:
	jmp	.label_685
.label_702:
	cmp	dword ptr [rbp - 0x9c], 6
	jne	.label_686
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x80]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_681
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_674
	mov	rax, qword ptr [rbp - 0xe8]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_674
	mov	rax, qword ptr [rbp - 0xe8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_681
.label_674:
	mov	byte ptr [rbp - 0xf1], 0
.label_677:
	xor	eax, eax
	mov	edi, eax
	lea	rsi, [rbp - 0xf1]
	mov	eax, 1
	mov	edx, eax
	lea	rcx, [rbp - 0x100]
	xor	eax, eax
	mov	r8d, 8
	mov	r9d, r8d
	mov	r10, rcx
	mov	qword ptr [rbp - 0x240], rdi
	mov	rdi, r10
	mov	qword ptr [rbp - 0x248], rsi
	mov	esi, eax
	mov	qword ptr [rbp - 0x250], rdx
	mov	rdx, r9
	mov	qword ptr [rbp - 0x258], rcx
	call	memset
	mov	rdi, qword ptr [rbp - 0x240]
	mov	rsi, qword ptr [rbp - 0x248]
	mov	rdx, qword ptr [rbp - 0x250]
	mov	rcx, qword ptr [rbp - 0x258]
	call	rpl_mbrtowc
	cmp	rax, -2
	jne	.label_695
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0xf1]
	mov	qword ptr [rbp - 0x28], rax
	mov	byte ptr [rbp - 0x29], 0
	mov	dword ptr [rbp - 0x30], ecx
	movsxd	rax, dword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 0x29], 1
	je	.label_709
	mov	edi, dword ptr [rbp - 0x30]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	byte ptr [rdx + rcx], 1
.label_709:
	jmp	.label_695
.label_695:
	jmp	.label_675
.label_675:
	mov	al, byte ptr [rbp - 0xf1]
	add	al, 1
	mov	byte ptr [rbp - 0xf1], al
	movzx	ecx, al
	cmp	ecx, 0
	jne	.label_677
	jmp	.label_680
.label_681:
	mov	qword ptr [rbp - 0xf0], 0
.label_708:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	cmp	rax, qword ptr [rcx + 0x28]
	jge	.label_683
	lea	rax, [rbp - 0x208]
	lea	rdi, [rbp - 0x200]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	mov	qword ptr [rbp - 0x260], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0x268], rax
	call	memset
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rdx, qword ptr [rbp - 0xe8]
	mov	rdx, qword ptr [rdx]
	mov	esi, dword ptr [rdx + rax*4]
	mov	rdi, qword ptr [rbp - 0x260]
	mov	rdx, qword ptr [rbp - 0x268]
	call	wcrtomb
	cmp	rax, -1
	je	.label_672
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rbp - 0x89]
	movzx	edx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x18], rax
	and	cl, 1
	mov	byte ptr [rbp - 0x19], cl
	mov	dword ptr [rbp - 0x20], edx
	movsxd	rax, dword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rax], 1
	test	byte ptr [rbp - 0x19], 1
	je	.label_704
	mov	edi, dword ptr [rbp - 0x20]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], 1
.label_704:
	jmp	.label_672
.label_672:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 0x18]
	and	rax, 0x400000
	cmp	rax, 0
	je	.label_673
	mov	rax, qword ptr [rbp - 0x80]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_673
	lea	rdi, [rbp - 0x200]
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rcx]
	mov	edx, dword ptr [rcx + rax*4]
	mov	qword ptr [rbp - 0x270], rdi
	mov	edi, edx
	call	towlower
	lea	rdx, [rbp - 0x208]
	mov	rdi, qword ptr [rbp - 0x270]
	mov	esi, eax
	call	wcrtomb
	cmp	rax, -1
	je	.label_696
	mov	rax, qword ptr [rbp - 0x78]
	movzx	ecx, byte ptr [rbp - 0x200]
	mov	qword ptr [rbp - 8], rax
	mov	byte ptr [rbp - 9], 0
	mov	dword ptr [rbp - 0x10], ecx
	movsxd	rax, dword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rax], 1
	test	byte ptr [rbp - 9], 1
	je	.label_676
	mov	edi, dword ptr [rbp - 0x10]
	call	tolower
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 8]
	mov	byte ptr [rdx + rcx], 1
.label_676:
	jmp	.label_696
.label_696:
	jmp	.label_673
.label_673:
	jmp	.label_706
.label_706:
	mov	rax, qword ptr [rbp - 0xf0]
	add	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_708
.label_683:
	jmp	.label_680
.label_680:
	jmp	.label_711
.label_686:
	cmp	dword ptr [rbp - 0x9c], 5
	je	.label_668
	cmp	dword ptr [rbp - 0x9c], 7
	je	.label_668
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_669
.label_668:
	mov	esi, 1
	mov	eax, 0x100
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x78]
	call	memset
	cmp	dword ptr [rbp - 0x9c], 2
	jne	.label_679
	mov	rax, qword ptr [rbp - 0x68]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0x38], cl
.label_679:
	jmp	.label_682
.label_669:
	jmp	.label_711
.label_711:
	jmp	.label_685
.label_685:
	jmp	.label_688
.label_688:
	jmp	.label_690
.label_690:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, 1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_692
.label_682:
	add	rsp, 0x270
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409490
	.globl rpl_regcomp
	.type rpl_regcomp, @function
rpl_regcomp:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	eax, 0x100
	mov	ecx, eax
	mov	eax, 0x10102c6
	mov	r8d, eax
	mov	eax, 0x3b2fc
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	cmovne	r8, r9
	mov	qword ptr [rbp - 0x28], r8
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], 0
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_715
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_712
.label_715:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 0x400000
	mov	edx, eax
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	cmovne	rcx, rdx
	or	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rcx
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	je	.label_714
	mov	rax, qword ptr [rbp - 0x28]
	and	rax, 0xffffffffffffffbf
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x100
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x38], cl
	jmp	.label_717
.label_714:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0x7f
	mov	byte ptr [rax + 0x38], cl
.label_717:
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 8
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	xor	cl, 0xff
	and	cl, 1
	movzx	eax, cl
	mov	rdx, qword ptr [rbp - 0x10]
	mov	cl, al
	mov	sil, byte ptr [rdx + 0x38]
	and	cl, 1
	shl	cl, 4
	and	sil, 0xef
	or	sil, cl
	mov	byte ptr [rdx + 0x38], sil
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rdi
	mov	rdi, rdx
	mov	qword ptr [rbp - 0x38], rsi
	call	strlen
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, rax
	call	re_compile_internal
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0x10
	jne	.label_713
	mov	dword ptr [rbp - 0x20], 8
.label_713:
	cmp	dword ptr [rbp - 0x20], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_716
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_718
.label_716:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
.label_718:
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
.label_712:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409670
	.globl rpl_regerror
	.type rpl_regerror, @function
rpl_regerror:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	dword ptr [rbp - 0x34], 0x11
	cmp	dword ptr [rbp - 4], 0
	mov	byte ptr [rbp - 0x41], al
	jl	.label_719
	mov	eax, dword ptr [rbp - 4]
	cmp	eax, dword ptr [rbp - 0x34]
	setge	cl
	mov	byte ptr [rbp - 0x41], cl
.label_719:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_722
	call	abort
.label_722:
	movabs	rax, OFFSET FLAT:__re_error_msgid
	movsxd	rcx, dword ptr [rbp - 4]
	add	rax,  qword ptr [word ptr [+ (rcx * 8) + __re_error_msgid_idx]]
	mov	rdi, rax
	call	gettext
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x20], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_720
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	seta	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_721
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_721:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	call	memcpy
.label_720:
	mov	rax, qword ptr [rbp - 0x30]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409770

	.globl rpl_regfree
	.type rpl_regfree, @function
rpl_regfree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_723
	mov	rdi, qword ptr [rbp - 0x10]
	call	free_dfa_content
.label_723:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x20]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 0x28]
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0x28], 0
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409800

	.globl free_dfa_content
	.type free_dfa_content, @function
free_dfa_content:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi], 0
	je	.label_724
	mov	qword ptr [rbp - 0x10], 0
.label_727:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_732
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rax, rcx
	mov	rdi, rax
	call	free_token
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_727
.label_732:
	jmp	.label_724
.label_724:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x10], 0
.label_729:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_738
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_735
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_735:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x38], 0
	je	.label_736
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_736:
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_730
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_730:
	jmp	.label_728
.label_728:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_729
.label_738:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x40], 0
	je	.label_726
	mov	qword ptr [rbp - 0x10], 0
.label_733:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x88]
	ja	.label_737
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	imul	rcx, qword ptr [rbp - 0x10], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
.label_731:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx]
	jge	.label_734
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	free_state
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_731
.label_734:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_733
.label_737:
	jmp	.label_726
.label_726:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rdi, qword ptr [rbp - 8]
	cmp	qword ptr [rdi + 0x78], rax
	je	.label_725
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x78]
	mov	rdi, rax
	call	free
.label_725:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409a70
	.globl rpl_regexec
	.type rpl_regexec, @function
rpl_regexec:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	r8d, dword ptr [rbp - 0x2c]
	and	r8d, 0xfffffff8
	cmp	r8d, 0
	je	.label_741
	mov	dword ptr [rbp - 4], 2
	jmp	.label_740
.label_741:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_744
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_739
.label_744:
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, qword ptr [rbp - 0x18]
	call	strlen
	mov	qword ptr [rbp - 0x40], rax
.label_739:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_743
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x40]
	mov	eax, dword ptr [rbp - 0x2c]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, r8
	mov	r8, r9
	mov	r9, r10
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], 0
	mov	dword ptr [rsp + 0x10], eax
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
	jmp	.label_742
.label_743:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r10, qword ptr [rbp - 0x28]
	mov	r11d, dword ptr [rbp - 0x2c]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	mov	dword ptr [rbp - 0x30], eax
.label_742:
	cmp	dword ptr [rbp - 0x30], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 4], ecx
.label_740:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x409bb0

	.globl re_search_internal
	.type re_search_internal, @function
re_search_internal:
	push	rbp
	mov	rbp, rsp
	push	r15
	push	r14
	push	r12
	push	rbx
	sub	rsp, 0x270
	mov	eax, dword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	r14d, 0x100
	mov	r15d, r14d
	lea	r12, [rbp - 0x1b8]
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x40], rdx
	mov	qword ptr [rbp - 0x48], rcx
	mov	qword ptr [rbp - 0x50], r8
	mov	qword ptr [rbp - 0x58], r9
	mov	qword ptr [rbp - 0x60], r11
	mov	qword ptr [rbp - 0x68], r10
	mov	dword ptr [rbp - 0x6c], eax
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rcx
	mov	qword ptr [rbp - 0xa8], -1
	mov	rdi, r12
	mov	esi, ebx
	mov	rdx, r15
	call	memset
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x120], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	qword ptr [rcx + 0x20], 0
	je	.label_754
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_754
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_754
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_754
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_773
.label_754:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1e8], rcx
	jmp	.label_773
.label_773:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x1c0], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x1c8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rcx + 0x30]
	jbe	.label_784
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x30]
	add	rcx, 1
	sub	rax, rcx
	mov	qword ptr [rbp - 0x1f0], rax
	jmp	.label_794
.label_784:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x1f0], rcx
	jmp	.label_794
.label_794:
	mov	rax, qword ptr [rbp - 0x1f0]
	mov	cl, 1
	mov	qword ptr [rbp - 0xb0], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rdx, rax
	mov	qword ptr [rbp - 0x60], rdx
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax + 0x10], 0
	mov	byte ptr [rbp - 0x1f1], cl
	je	.label_810
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x48], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_810
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x50], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_810
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x1f1], al
	je	.label_810
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	mov	byte ptr [rbp - 0x1f1], cl
.label_810:
	mov	al, byte ptr [rbp - 0x1f1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_829
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_751
.label_829:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x48]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_836
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x50]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_836
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x58]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_842
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_836
.label_842:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_748
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_748
	mov	dword ptr [rbp - 0x24], 1
	jmp	.label_751
.label_748:
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x48], 0
.label_836:
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x1f2], al
	jne	.label_807
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setne	cl
	mov	byte ptr [rbp - 0x1f2], cl
.label_807:
	mov	al, byte ptr [rbp - 0x1f2]
	lea	rdi, [rbp - 0x1b8]
	and	al, 1
	mov	byte ptr [rbp - 0x8d], al
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	add	rcx, 1
	mov	r8, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [r8 + 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [r9 + 0x18]
	and	r9, 0x400000
	cmp	r9, 0
	setne	al
	mov	r9, qword ptr [rbp - 0x78]
	mov	r10, rsp
	mov	qword ptr [r10], r9
	and	al, 1
	movzx	r9d, al
	call	re_string_allocate
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r11b
	and	r11b, 1
	movzx	eax, r11b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_803
	jmp	.label_756
.label_803:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x150], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 7
	movzx	edx, cl
	mov	cl, dl
	mov	byte ptr [rbp - 0x12b], cl
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax + 0x98]
	shl	rax, 1
	mov	rdx, rax
	call	match_ctx_init
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_806
	jmp	.label_756
.label_806:
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_812
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 1
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_815
.label_812:
	movabs	rax, 0x1fffffffffffffff
	cmp	rax, qword ptr [rbp - 0x178]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_821
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_756
.label_821:
	mov	rax, qword ptr [rbp - 0x178]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x100], rax
	cmp	qword ptr [rbp - 0x100], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_837
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_756
.label_837:
	jmp	.label_771
.label_815:
	mov	qword ptr [rbp - 0x100], 0
.label_771:
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	edx, 6
	mov	esi, 4
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0xa0], rdi
	mov	r8d, dword ptr [rbp - 0x6c]
	and	r8d, 1
	cmp	r8d, 0
	cmovne	edx, esi
	mov	dword ptr [rbp - 0x148], edx
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	cmovl	eax, ecx
	mov	dword ptr [rbp - 0x8c], eax
	mov	rdi, qword ptr [rbp - 0x50]
	cmp	rdi, qword ptr [rbp - 0x48]
	jge	.label_849
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x200], rax
	jmp	.label_762
.label_849:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x200], rax
.label_762:
	mov	rax, qword ptr [rbp - 0x200]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x48]
	jge	.label_769
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x208], rax
	jmp	.label_775
.label_769:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x208], rax
.label_775:
	mov	rax, qword ptr [rbp - 0x208]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x78]
	cmp	dword ptr [rax + 0xb4], 1
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xb1], cl
	cmp	qword ptr [rbp - 0x1c0], 0
	je	.label_782
	mov	al, 1
	test	byte ptr [rbp - 0xb1], 1
	mov	byte ptr [rbp - 0x209], al
	jne	.label_814
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	and	rcx, 0x400000
	cmp	rcx, 0
	mov	byte ptr [rbp - 0x20a], al
	jne	.label_797
	cmp	qword ptr [rbp - 0x1c8], 0
	setne	al
	mov	byte ptr [rbp - 0x20a], al
.label_797:
	mov	al, byte ptr [rbp - 0x20a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x209], al
.label_814:
	mov	al, byte ptr [rbp - 0x209]
	xor	ecx, ecx
	mov	edx, 1
	mov	esi, 2
	mov	edi, 4
	test	al, 1
	mov	r8d, ecx
	cmovne	r8d, edi
	mov	r9, qword ptr [rbp - 0x48]
	cmp	r9, qword ptr [rbp - 0x50]
	mov	edi, ecx
	cmovle	edi, esi
	or	r8d, edi
	cmp	qword ptr [rbp - 0x1c8], 0
	cmovne	ecx, edx
	or	r8d, ecx
	mov	dword ptr [rbp - 0x210], r8d
	jmp	.label_805
.label_782:
	mov	eax, 8
	mov	dword ptr [rbp - 0x210], eax
	jmp	.label_805
.label_805:
	mov	eax, dword ptr [rbp - 0x210]
	mov	dword ptr [rbp - 0x94], eax
.label_767:
	mov	dword ptr [rbp - 0x70], 1
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_828
	mov	rax, qword ptr [rbp - 0x88]
	cmp	rax, qword ptr [rbp - 0xa0]
	jge	.label_832
.label_828:
	jmp	.label_756
.label_832:
	mov	eax, dword ptr [rbp - 0x94]
	add	eax, -4
	mov	ecx, eax
	sub	eax, 4
	mov	qword ptr [rbp - 0x218], rcx
	mov	dword ptr [rbp - 0x21c], eax
	ja	.label_838
	mov	rax, qword ptr [rbp - 0x218]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_844]]
	jmp	rcx
.label_3256:
	jmp	.label_788
.label_3255:
	jmp	.label_772
.label_772:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x21d], cl
	je	.label_847
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21d], sil
.label_847:
	mov	al, byte ptr [rbp - 0x21d]
	test	al, 1
	jne	.label_766
	jmp	.label_781
.label_766:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_772
.label_781:
	jmp	.label_776
.label_3254:
	jmp	.label_778
.label_778:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0xa0]
	cmp	rdx, qword ptr [rbp - 0x88]
	setl	sil
	and	sil, 1
	movzx	eax, sil
	movsxd	rdx, eax
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x21e], cl
	je	.label_780
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rcx + rax], 0
	setne	sil
	xor	sil, 0xff
	mov	byte ptr [rbp - 0x21e], sil
.label_780:
	mov	al, byte ptr [rbp - 0x21e]
	test	al, 1
	jne	.label_800
	jmp	.label_801
.label_800:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_778
.label_801:
	jmp	.label_776
.label_776:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_804
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_811
	xor	eax, eax
	mov	dword ptr [rbp - 0x224], eax
	jmp	.label_816
.label_811:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x224], edx
.label_816:
	mov	eax, dword ptr [rbp - 0x224]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_791
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x228], edx
	jmp	.label_830
.label_791:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x228], eax
.label_830:
	mov	eax, dword ptr [rbp - 0x228]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	jne	.label_795
	jmp	.label_756
.label_795:
	jmp	.label_804
.label_804:
	jmp	.label_788
.label_3253:
	jmp	.label_777
.label_777:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_809
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_848
	xor	eax, eax
	mov	dword ptr [rbp - 0x22c], eax
	jmp	.label_747
.label_848:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x38]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x22c], edx
.label_747:
	mov	eax, dword ptr [rbp - 0x22c]
	mov	dword ptr [rbp - 0xb8], eax
	cmp	qword ptr [rbp - 0x1c8], 0
	je	.label_755
	movsxd	rax, dword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x1c8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x230], edx
	jmp	.label_759
.label_755:
	mov	eax, dword ptr [rbp - 0xb8]
	mov	dword ptr [rbp - 0x230], eax
.label_759:
	mov	eax, dword ptr [rbp - 0x230]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_770
	jmp	.label_809
.label_770:
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, -1
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_777
.label_809:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jge	.label_785
	jmp	.label_756
.label_785:
	jmp	.label_788
.label_838:
	jmp	.label_789
.label_789:
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
	mov	rax, qword ptr [rbp - 0x1d0]
	cmp	rax, qword ptr [rbp - 0x180]
	setae	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_790
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_802
	jmp	.label_756
.label_802:
	mov	rax, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rbp - 0x190]
	mov	qword ptr [rbp - 0x1d0], rax
.label_790:
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_813
	xor	eax, eax
	mov	dword ptr [rbp - 0x234], eax
	jmp	.label_819
.label_813:
	mov	rax, qword ptr [rbp - 0x1d0]
	mov	rcx, qword ptr [rbp - 0x1b0]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x234], edx
.label_819:
	mov	eax, dword ptr [rbp - 0x234]
	mov	dword ptr [rbp - 0xb8], eax
	movsxd	rcx, dword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	cmp	byte ptr [rdx + rcx], 0
	je	.label_826
	jmp	.label_833
.label_826:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_834
	mov	rax, qword ptr [rbp - 0xa0]
	cmp	rax, qword ptr [rbp - 0x88]
	jle	.label_796
.label_834:
	mov	dword ptr [rbp - 0x70], 1
	jmp	.label_756
.label_796:
	jmp	.label_789
.label_833:
	jmp	.label_788
.label_788:
	lea	rdi, [rbp - 0x1b8]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	edx, dword ptr [rbp - 0x6c]
	call	re_string_reconstruct
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_749
	jmp	.label_756
.label_749:
	test	byte ptr [rbp - 0xb1], 1
	jne	.label_757
	xor	eax, eax
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x188]
	je	.label_757
	mov	rax, qword ptr [rbp - 0x1a8]
	cmp	dword ptr [rax], -1
	jne	.label_757
	jmp	.label_765
.label_757:
	mov	dword ptr [rbp - 0xd8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0xf8], 0
	mov	al, byte ptr [rbp - 0x8d]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rcx, qword ptr [rbp - 0x50]
	mov	byte ptr [rbp - 0x235], al
	jg	.label_768
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 0x240], rax
	jmp	.label_783
.label_768:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x240], rcx
	jmp	.label_783
.label_783:
	mov	rax, qword ptr [rbp - 0x240]
	lea	rcx, [rbp - 0x1b8]
	mov	dl, byte ptr [rbp - 0x235]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rbp - 0x1b8]
	mov	rdx, rax
	mov	qword ptr [rbp - 0x248], rcx
	call	check_matching
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0xa8], -1
	je	.label_763
	cmp	qword ptr [rbp - 0xa8], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_845
	mov	dword ptr [rbp - 0x70], 0xc
	jmp	.label_756
.label_845:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x110], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_808
	cmp	qword ptr [rbp - 0x60], 1
	ja	.label_817
.label_808:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_760
.label_817:
	lea	rdi, [rbp - 0x1b8]
	mov	rax, qword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x100]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x1d8], rax
	mov	rsi, qword ptr [rbp - 0x1d8]
	mov	rdx, qword ptr [rbp - 0xa8]
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x108], rax
.label_760:
	mov	rax, qword ptr [rbp - 0x30]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_835
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_835
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_841
.label_835:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_824
.label_841:
	lea	rdi, [rbp - 0x1b8]
	call	prune_impossible_nodes
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	jne	.label_746
	jmp	.label_761
.label_746:
	cmp	dword ptr [rbp - 0x70], 1
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_752
	jmp	.label_756
.label_752:
	mov	qword ptr [rbp - 0xa8], -1
	jmp	.label_758
.label_824:
	jmp	.label_761
.label_758:
	jmp	.label_840
.label_840:
	jmp	.label_763
.label_763:
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_clean
.label_765:
	movsxd	rax, dword ptr [rbp - 0x8c]
	add	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_767
.label_761:
	cmp	qword ptr [rbp - 0x60], 0
	jbe	.label_774
	mov	qword ptr [rbp - 0x1e0], 1
.label_843:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_779
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_843
.label_779:
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x110]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	dl, byte ptr [rax + 0x38]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	jne	.label_799
	cmp	qword ptr [rbp - 0x60], 1
	jbe	.label_799
	xor	eax, eax
	mov	cl, al
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9b, byte ptr [r8 + 0xb0]
	and	r9b, 1
	movzx	eax, r9b
	cmp	eax, 0
	mov	qword ptr [rbp - 0x250], rsi
	mov	qword ptr [rbp - 0x258], rdi
	mov	qword ptr [rbp - 0x260], rdx
	mov	byte ptr [rbp - 0x261], cl
	je	.label_798
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	setg	cl
	mov	byte ptr [rbp - 0x261], cl
.label_798:
	mov	al, byte ptr [rbp - 0x261]
	lea	rcx, [rbp - 0x1b8]
	and	al, 1
	movzx	r8d, al
	lea	rsi, [rbp - 0x1b8]
	mov	rdi, qword ptr [rbp - 0x258]
	mov	rdx, qword ptr [rbp - 0x260]
	mov	r9, qword ptr [rbp - 0x250]
	mov	qword ptr [rbp - 0x270], rcx
	mov	rcx, r9
	call	set_regs
	mov	dword ptr [rbp - 0x70], eax
	cmp	dword ptr [rbp - 0x70], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_839
	jmp	.label_756
.label_839:
	jmp	.label_799
.label_799:
	mov	qword ptr [rbp - 0x1e0], 0
.label_820:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_846
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax], -1
	je	.label_745
	movzx	eax, byte ptr [rbp - 0x12c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_753
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_823
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x278], rax
	jmp	.label_764
.label_823:
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x278], rax
.label_764:
	mov	rax, qword ptr [rbp - 0x278]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x188]
	jne	.label_825
	mov	rax, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0x280], rax
	jmp	.label_793
.label_825:
	mov	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x1a0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x280], rax
.label_793:
	mov	rax, qword ptr [rbp - 0x280]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_753:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x1e0]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_745:
	jmp	.label_818
.label_818:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_820
.label_846:
	mov	qword ptr [rbp - 0x1e0], 0
.label_831:
	mov	rax, qword ptr [rbp - 0x1e0]
	cmp	rax, qword ptr [rbp - 0xb0]
	jge	.label_827
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax], -1
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x1e0]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_831
.label_827:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_792
	mov	qword ptr [rbp - 0x1e0], 0
.label_787:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x60]
	jae	.label_850
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x1e0]
	je	.label_750
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x1e0]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 1
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x1e0]
	add	rcx, 1
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x68]
	mov	qword ptr [rcx + 8], rax
.label_750:
	jmp	.label_786
.label_786:
	mov	rax, qword ptr [rbp - 0x1e0]
	add	rax, 1
	mov	qword ptr [rbp - 0x1e0], rax
	jmp	.label_787
.label_850:
	jmp	.label_792
.label_792:
	jmp	.label_774
.label_774:
	jmp	.label_756
.label_756:
	mov	rax, qword ptr [rbp - 0x100]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_822
	lea	rdi, [rbp - 0x1b8]
	call	match_ctx_free
.label_822:
	lea	rdi, [rbp - 0x1b8]
	call	re_string_destruct
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x24], eax
.label_751:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x270
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ad30

	.globl rpl_re_match
	.type rpl_re_match, @function
rpl_re_match:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	r9d, eax
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], r8
	mov	r8, r9
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 1
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40ada0

	.globl re_search_stub
	.type re_search_stub, @function
re_search_stub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	mov	r11b, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	dword ptr [rbp - 0x64], 0
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x78], rcx
	cmp	qword ptr [rbp - 0x28], 0
	mov	byte ptr [rbp - 0x79], r11b
	jl	.label_860
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x20]
	setg	cl
	mov	byte ptr [rbp - 0x79], cl
.label_860:
	mov	al, byte ptr [rbp - 0x79]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_875
	mov	qword ptr [rbp - 8], -1
	jmp	.label_862
.label_875:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rcx, qword ptr [rbp - 0x78]
	mov	byte ptr [rbp - 0x7a], al
	jl	.label_866
	xor	eax, eax
	mov	cl, al
	xor	eax, eax
	mov	edx, eax
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x7b], cl
	jg	.label_870
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x28]
	setl	cl
	mov	byte ptr [rbp - 0x7b], cl
.label_870:
	mov	al, byte ptr [rbp - 0x7b]
	mov	byte ptr [rbp - 0x7a], al
.label_866:
	mov	al, byte ptr [rbp - 0x7a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_876
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_852
.label_876:
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x7c], al
	jl	.label_854
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x7d], cl
	jge	.label_861
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x78]
	setle	cl
	mov	byte ptr [rbp - 0x7d], cl
.label_861:
	mov	al, byte ptr [rbp - 0x7d]
	mov	byte ptr [rbp - 0x7c], al
.label_854:
	mov	al, byte ptr [rbp - 0x7c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_871
	mov	qword ptr [rbp - 0x78], 0
.label_871:
	jmp	.label_852
.label_852:
	xor	eax, eax
	mov	ecx, 2
	mov	edx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 5
	and	dil, 1
	movzx	r8d, dil
	cmp	r8d, 0
	mov	r8d, eax
	cmovne	r8d, edx
	or	r8d, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], r8d
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dil, byte ptr [rsi + 0x38]
	shr	dil, 6
	and	dil, 1
	movzx	edx, dil
	cmp	edx, 0
	cmovne	eax, ecx
	or	eax, dword ptr [rbp - 0x64]
	mov	dword ptr [rbp - 0x64], eax
	mov	rsi, qword ptr [rbp - 0x28]
	cmp	rsi, qword ptr [rbp - 0x78]
	jge	.label_858
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	je	.label_858
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 3
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_858
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_re_compile_fastmap
	mov	dword ptr [rbp - 0x84], eax
.label_858:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	mov	eax, edx
	cmp	rax, 0
	je	.label_851
	mov	qword ptr [rbp - 0x40], 0
.label_851:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_863
	mov	qword ptr [rbp - 0x58], 1
	jmp	.label_865
.label_863:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	sil, byte ptr [rdx + 0x38]
	shr	sil, 1
	and	sil, 3
	movzx	eax, sil
	cmp	eax, 2
	mov	byte ptr [rbp - 0x85], cl
	jne	.label_869
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setbe	dl
	mov	byte ptr [rbp - 0x85], dl
.label_869:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_879
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 1
	setl	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_857
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x58], 1
.label_857:
	jmp	.label_873
.label_879:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
.label_873:
	jmp	.label_865
.label_865:
	mov	rax, qword ptr [rbp - 0x58]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_877
	mov	qword ptr [rbp - 0x60], -2
	jmp	.label_856
.label_877:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x78]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10, qword ptr [rbp - 0x50]
	mov	r11d, dword ptr [rbp - 0x64]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	dword ptr [rsp + 0x10], r11d
	call	re_search_internal
	mov	dword ptr [rbp - 0x48], eax
	mov	qword ptr [rbp - 0x60], 0
	cmp	dword ptr [rbp - 0x48], 0
	je	.label_874
	mov	eax, 0xfffffffe
	mov	ecx, 0xffffffff
	cmp	dword ptr [rbp - 0x48], 1
	cmove	eax, ecx
	movsxd	rdx, eax
	mov	qword ptr [rbp - 0x60], rdx
	jmp	.label_855
.label_874:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_853
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 1
	and	cl, 3
	movzx	ecx, cl
	call	re_copy_regs
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8b, al
	mov	r9b, byte ptr [rdx + 0x38]
	and	r8b, 3
	shl	r8b, 1
	and	r9b, 0xf9
	or	r9b, r8b
	mov	byte ptr [rdx + 0x38], r9b
	mov	rdx, qword ptr [rbp - 0x10]
	mov	r8b, byte ptr [rdx + 0x38]
	shr	r8b, 1
	and	r8b, 3
	movzx	eax, r8b
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_867
	mov	qword ptr [rbp - 0x60], -2
.label_867:
	jmp	.label_853
.label_853:
	jmp	.label_855
.label_855:
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_859
	test	byte ptr [rbp - 0x41], 1
	je	.label_864
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_868
	jmp	.label_872
.label_868:
	movabs	rdi, OFFSET FLAT:.str.21_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1be
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_search_stub
	call	__assert_fail
.label_872:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_878
.label_864:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
.label_878:
	jmp	.label_859
.label_859:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_856:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 8], rax
.label_862:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b240
	.globl rpl_re_search
	.type rpl_re_search, @function
rpl_re_search:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x18]
	mov	r10, qword ptr [rbp - 0x30]
	mov	qword ptr [rsp], r10
	mov	dword ptr [rsp + 8], 0
	mov	dword ptr [rbp - 0x34], eax
	call	re_search_stub
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b2a0
	.globl rpl_re_match_2
	.type rpl_re_match_2, @function
rpl_re_match_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x18]
	mov	r10, qword ptr [rbp + 0x10]
	xor	r11d, r11d
	mov	ebx, r11d
	mov	r11d, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r10
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	qword ptr [rsp], 0
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r10
	mov	dword ptr [rsp + 0x18], 1
	mov	qword ptr [rbp - 0x50], rbx
	mov	dword ptr [rbp - 0x54], r11d
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b330

	.globl re_search_2_stub
	.type re_search_2_stub, @function
re_search_2_stub:
	push	rbp
	mov	rbp, rsp
	push	r14
	push	rbx
	sub	rsp, 0xa0
	mov	al, byte ptr [rbp + 0x28]
	mov	r10, qword ptr [rbp + 0x20]
	mov	r11, qword ptr [rbp + 0x18]
	mov	rbx, qword ptr [rbp + 0x10]
	mov	r14b, 1
	mov	qword ptr [rbp - 0x20], rdi
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x30], rdx
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], r8
	mov	qword ptr [rbp - 0x48], r9
	mov	qword ptr [rbp - 0x50], rbx
	mov	qword ptr [rbp - 0x58], r11
	mov	qword ptr [rbp - 0x60], r10
	and	al, 1
	mov	byte ptr [rbp - 0x61], al
	mov	qword ptr [rbp - 0x88], 0
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x89], r14b
	jl	.label_887
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_887
	mov	al, 1
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0x89], al
	jl	.label_887
	mov	al, 1
	test	al, 1
	jne	.label_896
	jmp	.label_881
.label_896:
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_883
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jl	.label_880
	jmp	.label_885
.label_883:
	movabs	rax, 0x7fffffffffffffff
	sub	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jl	.label_880
	jmp	.label_885
.label_881:
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_886
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jle	.label_880
	jmp	.label_885
.label_886:
	cmp	qword ptr [rbp - 0x40], 0
	jge	.label_894
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jle	.label_880
	jmp	.label_885
.label_894:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x40]
	jl	.label_880
.label_885:
	movabs	rax, 0x8000000000000000
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rcx, rax
	jl	.label_880
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	cmp	rax, rcx
	jge	.label_882
.label_880:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
	jmp	.label_890
.label_882:
	xor	eax, eax
	mov	rcx, qword ptr [rbp - 0x30]
	add	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x80], rcx
	mov	dword ptr [rbp - 0x90], eax
.label_890:
	mov	eax, dword ptr [rbp - 0x90]
	cmp	eax, 0
	setne	cl
	mov	byte ptr [rbp - 0x89], cl
.label_887:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_892
	mov	qword ptr [rbp - 0x18], -2
	jmp	.label_889
.label_892:
	cmp	qword ptr [rbp - 0x40], 0
	jle	.label_884
	cmp	qword ptr [rbp - 0x30], 0
	jle	.label_888
	mov	rax, qword ptr [rbp - 0x80]
	shl	rax, 0
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_893
	mov	qword ptr [rbp - 0x18], -2
	jmp	.label_889
.label_893:
	mov	rdi, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	add	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x98], rdi
	mov	rdi, rdx
	mov	rdx, qword ptr [rbp - 0x98]
	call	memcpy
	mov	rdx, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rdx
	jmp	.label_891
.label_888:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x70], rax
.label_891:
	jmp	.label_895
.label_884:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x70], rax
.label_895:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x50]
	mov	r9, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x58]
	mov	r10b, byte ptr [rbp - 0x61]
	and	r10b, 1
	mov	qword ptr [rsp], rax
	movzx	r11d, r10b
	mov	dword ptr [rsp + 8], r11d
	call	re_search_stub
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x88]
	call	free
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x18], rax
.label_889:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0xa0
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b630
	.globl rpl_re_search_2
	.type rpl_re_search_2, @function
rpl_re_search_2:

	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x78
	mov	rax, qword ptr [rbp + 0x20]
	mov	r10, qword ptr [rbp + 0x18]
	mov	r11, qword ptr [rbp + 0x10]
	xor	ebx, ebx
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], r11
	mov	qword ptr [rbp - 0x48], r10
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x40]
	mov	r10, qword ptr [rbp - 0x48]
	mov	r11, qword ptr [rbp - 0x50]
	mov	qword ptr [rsp], rax
	mov	qword ptr [rsp + 8], r10
	mov	qword ptr [rsp + 0x10], r11
	mov	dword ptr [rsp + 0x18], 0
	mov	dword ptr [rbp - 0x54], ebx
	call	re_search_2_stub
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b6c0
	.globl rpl_re_set_registers
	.type rpl_re_set_registers, @function
rpl_re_set_registers:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_897
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	or	cl, 2
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	jmp	.label_898
.label_897:
	mov	rax, qword ptr [rbp - 8]
	mov	cl, byte ptr [rax + 0x38]
	and	cl, 0xf9
	mov	byte ptr [rax + 0x38], cl
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x10], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
.label_898:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b750

	.globl free_token
	.type free_token, @function
free_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi + 8]
	and	eax, 0xff
	cmp	eax, 6
	jne	.label_899
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_899
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax]
	call	free_charset
	jmp	.label_900
.label_899:
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 3
	jne	.label_901
	mov	rax, qword ptr [rbp - 8]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x12
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_901
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rdi, rax
	call	free
.label_901:
	jmp	.label_900
.label_900:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b7e0

	.globl free_state
	.type free_state, @function
free_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x30]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x48]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x50]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 8
	cmp	rdi, rax
	je	.label_902
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	mov	rdi, rax
	call	free
.label_902:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x60]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b890

	.globl free_charset
	.type free_charset, @function
free_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40b8e0

	.globl init_dfa
	.type init_dfa, @function
init_dfa:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], 8
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_953
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_907
.label_953:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x50], rcx
	jmp	.label_907
.label_907:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_911
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_916
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_919
.label_916:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x58], rcx
	jmp	.label_919
.label_919:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_924
.label_911:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_924
.label_924:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_931
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_937
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_942
.label_937:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_942
.label_942:
	mov	rax, qword ptr [rbp - 0x68]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_949
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_914
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_956
.label_914:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x70], rcx
	jmp	.label_956
.label_956:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_903
.label_949:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x78], rcx
	jmp	.label_903
.label_903:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x80], rax
	jmp	.label_915
.label_931:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_915
.label_915:
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_917
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_922
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_929
.label_922:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_929
.label_929:
	mov	rax, qword ptr [rbp - 0x88]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_932
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_939
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_943
.label_939:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x90], rcx
	jmp	.label_943
.label_943:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_951
.label_932:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0x98], rcx
	jmp	.label_951
.label_951:
	mov	rax, qword ptr [rbp - 0x98]
	mov	ecx, 0x10
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_958
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_906
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_910
.label_906:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa0], rcx
	jmp	.label_910
.label_910:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x18
	mov	edx, ecx
	cmp	rdx, rax
	jae	.label_918
	mov	eax, 0x10
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x30]
	jae	.label_923
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xa8], rax
	jmp	.label_926
.label_923:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_926
.label_926:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_934
.label_918:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_934
.label_934:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_944
.label_958:
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_944
.label_944:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_954
.label_917:
	mov	eax, 0x18
	mov	ecx, eax
	mov	qword ptr [rbp - 0xc0], rcx
	jmp	.label_954
.label_954:
	mov	rax, qword ptr [rbp - 0xc0]
	movabs	rcx, 0x7fffffffffffffff
	mov	rdx, -1
	xor	esi, esi
	mov	edi, 0xe8
	mov	r8d, edi
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xc8], rdx
	mov	rdx, r8
	mov	qword ptr [rbp - 0xd0], rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0xc8]
	xor	esi, esi
	mov	edx, esi
	div	qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0xd0]
	cmp	rcx, rax
	jae	.label_946
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_928
.label_946:
	mov	rax, -1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0xd8], rax
.label_928:
	mov	rax, qword ptr [rbp - 0xd8]
	shr	rax, 1
	cmp	rax, qword ptr [rbp - 0x18]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_938
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_947
.label_938:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	qword ptr [rbp - 0x20], 1
.label_909:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jbe	.label_912
	jmp	.label_905
.label_912:
	jmp	.label_908
.label_908:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_909
.label_905:
	mov	eax, 0x18
	mov	edi, eax
	mov	rsi, qword ptr [rbp - 0x20]
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x88], rax
	call	__ctype_get_mb_cur_max
	mov	edi, 0xe
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xb4], ecx
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x55
	je	.label_927
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x75
	jne	.label_904
.label_927:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x54
	je	.label_935
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0x74
	jne	.label_904
.label_935:
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x46
	je	.label_945
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 2]
	cmp	ecx, 0x66
	jne	.label_904
.label_945:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 3
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + 3]
	cmp	edx, 0x2d
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rcx, edx
	add	rax, rcx
	mov	edx, OFFSET FLAT:.str_7
	mov	esi, edx
	mov	rdi, rax
	call	strcmp
	cmp	eax, 0
	jne	.label_904
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfb
	or	cl, 4
	mov	byte ptr [rax + 0xb0], cl
.label_904:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	mov	byte ptr [rax + 0xb0], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_913
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 2
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_921
	movabs	rax, OFFSET FLAT:utf8_sb_map
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x78], rax
	jmp	.label_925
.label_921:
	mov	eax, 0x20
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x78], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_936
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_947
.label_936:
	mov	dword ptr [rbp - 0x3c], 0
	mov	dword ptr [rbp - 0x44], 0
.label_933:
	cmp	dword ptr [rbp - 0x3c], 4
	jge	.label_952
	mov	dword ptr [rbp - 0x40], 0
.label_948:
	cmp	dword ptr [rbp - 0x40], 0x40
	jge	.label_955
	mov	edi, dword ptr [rbp - 0x44]
	call	btowc
	mov	dword ptr [rbp - 0x48], eax
	cmp	dword ptr [rbp - 0x48], -1
	je	.label_957
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x40]
	mov	edx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0xe0]
	shl	rdx, cl
	movsxd	rsi, dword ptr [rbp - 0x3c]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x78]
	or	rdx, qword ptr [rdi + rsi*8]
	mov	qword ptr [rdi + rsi*8], rdx
.label_957:
	mov	eax, dword ptr [rbp - 0x44]
	and	eax, 0xffffff80
	cmp	eax, 0
	jne	.label_930
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x44]
	je	.label_930
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xf7
	or	cl, 8
	mov	byte ptr [rax + 0xb0], cl
.label_930:
	jmp	.label_940
.label_940:
	mov	eax, dword ptr [rbp - 0x40]
	add	eax, 1
	mov	dword ptr [rbp - 0x40], eax
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_948
.label_955:
	jmp	.label_920
.label_920:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_933
.label_952:
	jmp	.label_925
.label_925:
	jmp	.label_913
.label_913:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx], 0
	mov	byte ptr [rbp - 0xe1], al
	je	.label_941
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x40], 0
	sete	cl
	mov	byte ptr [rbp - 0xe1], cl
.label_941:
	mov	al, byte ptr [rbp - 0xe1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_950
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_947
.label_950:
	mov	dword ptr [rbp - 4], 0
.label_947:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c010

	.globl re_string_construct
	.type re_string_construct, @function
re_string_construct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	al, r8b
	xor	r8d, r8d
	mov	r10d, 0x98
	mov	r11d, r10d
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	mov	esi, r8d
	mov	rdx, r11
	call	memset
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	al, byte ptr [rbp - 0x29]
	mov	r9, qword ptr [rbp - 0x38]
	and	al, 1
	movzx	r8d, al
	call	re_string_construct_common
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_975
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_966
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_960
.label_966:
	jmp	.label_975
.label_975:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	cmp	ecx, 0
	je	.label_959
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_976
.label_959:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x48], rax
.label_976:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	test	byte ptr [rbp - 0x29], 1
	je	.label_974
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_962
	jmp	.label_967
.label_967:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_971
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_960
.label_971:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	jl	.label_965
	jmp	.label_964
.label_965:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	add	rcx, rdx
	cmp	rax, rcx
	jle	.label_970
	jmp	.label_964
.label_970:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_973
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_960
.label_973:
	jmp	.label_967
.label_964:
	jmp	.label_972
.label_962:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_upper_buffer
.label_972:
	jmp	.label_961
.label_974:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_969
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
	jmp	.label_977
.label_969:
	cmp	qword ptr [rbp - 0x28], 0
	je	.label_963
	mov	rdi, qword ptr [rbp - 0x10]
	call	re_string_translate_buffer
	jmp	.label_968
.label_963:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_968:
	jmp	.label_977
.label_977:
	jmp	.label_961
.label_961:
	mov	dword ptr [rbp - 4], 0
.label_960:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c260

	.globl free_workarea_compile
	.type free_workarea_compile, @function
free_workarea_compile:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x70]
	mov	qword ptr [rbp - 0x18], rdi
.label_979:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_978
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_979
.label_978:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x70], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0xf
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x68], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x20], 0
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c300

	.globl re_string_destruct
	.type re_string_destruct, @function
re_string_destruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x10]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x18]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	cmp	byte ptr [rdi + 0x8b], 0
	je	.label_980
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
.label_980:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c350

	.globl parse
	.type parse, @function
parse:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx + 0xd8], rcx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	or	rcx, 0x800000
	mov	rdi, rax
	mov	rdx, rcx
	call	fetch_token
	lea	rdx, [rbp - 0x58]
	xor	r8d, r8d
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x28]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_986
	cmp	qword ptr [rbp - 0x38], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_986:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_981
	mov	qword ptr [rbp - 8], 0
	jmp	.label_982
.label_981:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 2
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x38], 0
	je	.label_987
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_984
.label_987:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
.label_984:
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x5a], al
	je	.label_985
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x5a], al
.label_985:
	mov	al, byte ptr [rbp - 0x5a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_983
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_982
.label_983:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_982:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c4b0

	.globl analyze
	.type analyze, @function
analyze:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdi + 8]
	shl	rdi, 3
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x20], rax
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 8], 0x18
	call	malloc
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x18], 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_991
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x20], 0
	mov	byte ptr [rbp - 0x29], al
	je	.label_991
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + 0x28], 0
	mov	byte ptr [rbp - 0x29], al
	je	.label_991
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x30], 0
	sete	cl
	mov	byte ptr [rbp - 0x29], cl
.label_991:
	mov	al, byte ptr [rbp - 0x29]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1003
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_988
.label_1003:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0xe0], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_992
	mov	qword ptr [rbp - 0x28], 0
.label_996:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jae	.label_998
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_996
.label_998:
	movabs	rsi, OFFSET FLAT:optimize_subexps
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	preorder
	mov	qword ptr [rbp - 0x28], 0
	mov	dword ptr [rbp - 0x30], eax
.label_1002:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jae	.label_994
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_997
	jmp	.label_994
.label_997:
	jmp	.label_1001
.label_1001:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1002
.label_994:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_1004
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xe0]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0xe0], 0
.label_1004:
	jmp	.label_992
.label_992:
	movabs	rsi, OFFSET FLAT:lower_subexps
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, rax
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_999
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_988
.label_999:
	movabs	rsi, OFFSET FLAT:calc_first
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	postorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_990
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_988
.label_990:
	movabs	rsi, OFFSET FLAT:calc_next
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x68]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdx, rax
	call	preorder
	movabs	rsi, OFFSET FLAT:link_nfa_nodes
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rdx + 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 0x34], eax
	call	preorder
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1005
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_988
.label_1005:
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_eclosure
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_993
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_988
.label_993:
	mov	rax, qword ptr [rbp - 0x10]
	mov	cl, byte ptr [rax + 0x38]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1000
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	jbe	.label_1000
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1006
.label_1000:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_989
.label_1006:
	mov	rax, qword ptr [rbp - 0x18]
	imul	rdi, qword ptr [rax + 0x10], 0x18
	call	malloc
	mov	rdi, qword ptr [rbp - 0x18]
	mov	qword ptr [rdi + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_995
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_988
.label_995:
	mov	rdi, qword ptr [rbp - 0x18]
	call	calc_inveclosure
	mov	dword ptr [rbp - 0x1c], eax
.label_989:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_988:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40c890

	.globl optimize_utf8
	.type optimize_utf8, @function
optimize_utf8:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	byte ptr [rbp - 0x15], 0
	mov	byte ptr [rbp - 0x16], 0
	mov	qword ptr [rbp - 0x10], 0
.label_1019:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1016
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	dec	edx
	mov	eax, edx
	sub	edx, 0xb
	mov	qword ptr [rbp - 0x28], rax
	mov	dword ptr [rbp - 0x2c], edx
	ja	.label_1022
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1025]]
	jmp	rcx
.label_3224:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_1030
	mov	byte ptr [rbp - 0x15], 1
.label_1030:
	jmp	.label_1008
.label_3229:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	mov	edx, dword ptr [rcx + rax]
	mov	esi, edx
	sub	esi, 0x10
	mov	dword ptr [rbp - 0x30], edx
	mov	dword ptr [rbp - 0x34], esi
	je	.label_1013
	jmp	.label_1031
.label_1031:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x38], eax
	je	.label_1013
	jmp	.label_1024
.label_1024:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x40
	mov	dword ptr [rbp - 0x3c], eax
	je	.label_1013
	jmp	.label_1026
.label_1026:
	mov	eax, dword ptr [rbp - 0x30]
	sub	eax, 0x80
	mov	dword ptr [rbp - 0x40], eax
	jne	.label_1027
	jmp	.label_1013
.label_1013:
	jmp	.label_1007
.label_1027:
	jmp	.label_1014
.label_1007:
	jmp	.label_1008
.label_3227:
	mov	byte ptr [rbp - 0x16], 1
	jmp	.label_1008
.label_3225:
	jmp	.label_1008
.label_3228:
	jmp	.label_1014
.label_3226:
	mov	dword ptr [rbp - 0x1c], 0
	mov	dword ptr [rbp - 0x14], 2
.label_1028:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_1018
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x1c]
	mov	ecx, esi
	shr	rax, cl
	cmp	rax, 0
	je	.label_1020
	jmp	.label_1014
.label_1020:
	mov	dword ptr [rbp - 0x1c], 0
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1028
.label_1018:
	jmp	.label_1008
.label_1022:
	call	abort
.label_1008:
	jmp	.label_1010
.label_1010:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1019
.label_1016:
	test	byte ptr [rbp - 0x15], 1
	jne	.label_1015
	test	byte ptr [rbp - 0x16], 1
	je	.label_1009
.label_1015:
	mov	qword ptr [rbp - 0x10], 0
.label_1032:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1021
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 1
	jne	.label_1023
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	movzx	edx, byte ptr [rax]
	cmp	edx, 0x80
	jl	.label_1023
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffdfffff
	mov	dword ptr [rax + 8], edx
	jmp	.label_1012
.label_1023:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1017
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffffff00
	or	edx, 7
	mov	dword ptr [rax + 8], edx
.label_1017:
	jmp	.label_1012
.label_1012:
	jmp	.label_1029
.label_1029:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1032
.label_1021:
	jmp	.label_1009
.label_1009:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dword ptr [rcx + 0xb4], 1
	mov	rcx, qword ptr [rbp - 8]
	mov	dl, byte ptr [rcx + 0xb0]
	and	dl, 0xfb
	mov	byte ptr [rcx + 0xb0], dl
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 0x98], 0
	mov	byte ptr [rbp - 0x41], al
	jg	.label_1011
	mov	al, byte ptr [rbp - 0x16]
	mov	byte ptr [rbp - 0x41], al
.label_1011:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 8]
	mov	al, cl
	mov	sil, byte ptr [rdx + 0xb0]
	and	al, 1
	shl	al, 1
	and	sil, 0xfd
	or	sil, al
	mov	byte ptr [rdx + 0xb0], sil
.label_1014:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cb80

	.globl create_initial_state
	.type create_initial_state, @function
create_initial_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x68]
	mov	rdi, qword ptr [rdi + 0x18]
	mov	rdi, qword ptr [rdi + 0x38]
	mov	qword ptr [rbp - 0x18], rdi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x90], rdi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	imul	rdi, qword ptr [rbp - 0x18], 0x18
	add	rcx, rdi
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1046
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1036
.label_1046:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x98], 0
	jle	.label_1033
	mov	qword ptr [rbp - 0x20], 0
.label_1051:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1035
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x4c], edx
	cmp	dword ptr [rbp - 0x4c], 4
	je	.label_1039
	jmp	.label_1048
.label_1039:
	mov	qword ptr [rbp - 0x58], 0
.label_1045:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1034
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	cmp	esi, 9
	jne	.label_1040
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_1040
	jmp	.label_1034
.label_1040:
	jmp	.label_1043
.label_1043:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_1045
.label_1034:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_1049
	jmp	.label_1048
.label_1049:
	cmp	dword ptr [rbp - 0x4c], 4
	jne	.label_1050
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_1044
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x68], 0x18
	add	rax, rcx
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x6c], eax
	cmp	dword ptr [rbp - 0x6c], 0
	je	.label_1042
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1036
.label_1042:
	mov	qword ptr [rbp - 0x20], 0
.label_1044:
	jmp	.label_1050
.label_1050:
	jmp	.label_1048
.label_1048:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1051
.label_1035:
	jmp	.label_1033
.label_1033:
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1037
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1036
.label_1037:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1047
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x50], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x40]
	mov	ecx, 6
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x58], rax
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	mov	r8b, 1
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x60], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x50], 0
	mov	byte ptr [rbp - 0x6d], r8b
	je	.label_1041
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	qword ptr [rcx + 0x58], 0
	mov	byte ptr [rbp - 0x6d], al
	je	.label_1041
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x60], 0
	sete	cl
	mov	byte ptr [rbp - 0x6d], cl
.label_1041:
	mov	al, byte ptr [rbp - 0x6d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1052
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1036
.label_1052:
	jmp	.label_1038
.label_1047:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x60], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x50], rax
.label_1038:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_1036:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cee0

	.globl re_string_construct_common
	.type re_string_construct_common, @function
re_string_construct_common:
	push	rbp
	mov	rbp, rsp
	mov	al, r8b
	mov	r10b, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + 0x78], rcx
	mov	al, byte ptr [rbp - 0x21]
	and	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + 0x88], al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x31], r10b
	jne	.label_1053
	mov	al, byte ptr [rbp - 0x21]
	mov	byte ptr [rbp - 0x31], al
.label_1053:
	mov	al, byte ptr [rbp - 0x31]
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8b], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rdx + 0xb4]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	dword ptr [rdx + 0x90], ecx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 2
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x89], al
	mov	rdx, qword ptr [rbp - 0x30]
	mov	al, byte ptr [rdx + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	mov	al, cl
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + 0x8a], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x58]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rdx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40cfe0

	.globl re_string_realloc_buffers
	.type re_string_realloc_buffers, @function
re_string_realloc_buffers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_1054
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x28], 8
	cmp	rax, qword ptr [rbp - 0x18]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1055
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1056
.label_1055:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1059
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1056
.label_1059:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	je	.label_1058
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1060
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1056
.label_1060:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_1058:
	jmp	.label_1054
.label_1054:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_1057
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x18]
	shl	rax, 0
	mov	rsi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1061
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1056
.label_1061:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1057:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x40], rax
	mov	dword ptr [rbp - 4], 0
.label_1056:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40d170

	.globl build_wcs_upper_buffer
	.type build_wcs_upper_buffer, @function
build_wcs_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x30]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1093
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xd8], rax
	jmp	.label_1105
.label_1093:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xd8], rax
.label_1105:
	mov	rax, qword ptr [rbp - 0xd8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8a], 0
	jne	.label_1113
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	jne	.label_1113
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_1113
	jmp	.label_1062
.label_1062:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_1065
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	and	edx, 0xffffff80
	cmp	edx, 0
	jne	.label_1068
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rdi, rax
	call	mbsinit
	cmp	eax, 0
	je	.label_1068
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edi, byte ptr [rcx + rax]
	call	toupper
	mov	dl, al
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rcx], dl
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	movzx	eax, byte ptr [rsi + rcx]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	dword ptr [rsi + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	jmp	.label_1062
.label_1068:
	lea	rdi, [rbp - 0x84]
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0xd9], r9b
	jae	.label_1120
	cmp	qword ptr [rbp - 0x40], -2
	setb	al
	mov	byte ptr [rbp - 0xd9], al
.label_1120:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1075
	mov	edi, dword ptr [rbp - 0x84]
	call	towupper
	mov	dword ptr [rbp - 0x88], eax
	mov	eax, dword ptr [rbp - 0x88]
	cmp	eax, dword ptr [rbp - 0x84]
	je	.label_1081
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0x88]
	call	wcrtomb
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x90]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1092
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1109
.label_1092:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1095
.label_1109:
	jmp	.label_1114
.label_1081:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 0x28]
	add	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
.label_1114:
	mov	eax, dword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x40]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x38], rcx
.label_1082:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1076
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1082
.label_1076:
	jmp	.label_1070
.label_1075:
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_1086
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1086
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_1096
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1096
.label_1086:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x94], edx
	mov	edx, dword ptr [rbp - 0x94]
	mov	sil, dl
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	edx, dword ptr [rbp - 0x94]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], edx
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1102
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
.label_1102:
	jmp	.label_1069
.label_1096:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1065
.label_1069:
	jmp	.label_1070
.label_1070:
	jmp	.label_1062
.label_1065:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1079
.label_1113:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x20], rax
.label_1099:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_1088
	jmp	.label_1095
.label_1095:
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1097
	mov	dword ptr [rbp - 0xa4], 0
.label_1063:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0xa4]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0xda], cl
	jge	.label_1110
	movsxd	rax, dword ptr [rbp - 0xa4]
	cmp	rax, qword ptr [rbp - 0x38]
	setl	cl
	mov	byte ptr [rbp - 0xda], cl
.label_1110:
	mov	al, byte ptr [rbp - 0xda]
	test	al, 1
	jne	.label_1119
	jmp	.label_1121
.label_1119:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0xa4]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x80], sil
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, 1
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_1063
.label_1121:
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1085
.label_1097:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0xa0], rax
.label_1085:
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	xor	r8d, r8d
	mov	r9b, r8b
	xor	r8d, r8d
	mov	ecx, r8d
	mov	qword ptr [rbp - 0x40], rax
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0xdb], r9b
	jae	.label_1107
	cmp	qword ptr [rbp - 0x40], -2
	setb	al
	mov	byte ptr [rbp - 0xdb], al
.label_1107:
	mov	al, byte ptr [rbp - 0xdb]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1117
	mov	edi, dword ptr [rbp - 0x98]
	call	towupper
	mov	dword ptr [rbp - 0xac], eax
	mov	eax, dword ptr [rbp - 0xac]
	cmp	eax, dword ptr [rbp - 0x98]
	je	.label_1115
	lea	rdx, [rbp - 0x18]
	lea	rdi, [rbp - 0x80]
	mov	esi, dword ptr [rbp - 0xac]
	call	wcrtomb
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0xb8]
	sete	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1116
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1072
.label_1116:
	cmp	qword ptr [rbp - 0xb8], -1
	je	.label_1091
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xb8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x40]
	jbe	.label_1098
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1088
.label_1098:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1106
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x18], 0
	jne	.label_1108
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1079
.label_1108:
	jmp	.label_1106
.label_1106:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	jne	.label_1104
	mov	qword ptr [rbp - 0xc0], 0
.label_1073:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1067
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1073
.label_1067:
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 1
.label_1104:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	call	memcpy
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0xc0], 1
.label_1123:
	mov	rax, qword ptr [rbp - 0xc0]
	cmp	rax, qword ptr [rbp - 0xb8]
	jae	.label_1064
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0xc0]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0xe8], rax
	jae	.label_1111
	mov	rax, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xf0], rax
	jmp	.label_1118
.label_1111:
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0xf0], rax
.label_1118:
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx, qword ptr [rbp - 0xe8]
	add	rcx, rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rax*8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0xc0]
	add	rax, 1
	mov	qword ptr [rbp - 0xc0], rax
	jmp	.label_1123
.label_1064:
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jle	.label_1084
	mov	rax, qword ptr [rbp - 0xb8]
	sub	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x68]
	mov	qword ptr [rcx + 0x68], rax
.label_1084:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_1103
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0xf8], rax
	jmp	.label_1071
.label_1103:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0xf8], rax
.label_1071:
	mov	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1099
.label_1091:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
	jmp	.label_1072
.label_1072:
	jmp	.label_1074
.label_1115:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	memcpy
.label_1074:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1080
	mov	qword ptr [rbp - 0xc8], 0
.label_1100:
	mov	rax, qword ptr [rbp - 0xc8]
	cmp	rax, qword ptr [rbp - 0x40]
	jae	.label_1094
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 1
	mov	qword ptr [rbp - 0xc8], rax
	jmp	.label_1100
.label_1094:
	jmp	.label_1080
.label_1080:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xac]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1066:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_1122
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1066
.label_1122:
	jmp	.label_1077
.label_1117:
	cmp	qword ptr [rbp - 0x40], -1
	je	.label_1078
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1078
	cmp	qword ptr [rbp - 0x40], -2
	jne	.label_1083
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1083
.label_1078:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1090
	movsxd	rax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xcc], edx
.label_1090:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rdx, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rdx + 0x8c]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1112
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1112:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	ecx, dword ptr [rbp - 0xcc]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, rax
	add	rdx, 1
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rax*4], ecx
	cmp	qword ptr [rbp - 0x40], -1
	sete	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1087
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
.label_1087:
	jmp	.label_1089
.label_1083:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1088
.label_1089:
	jmp	.label_1077
.label_1077:
	jmp	.label_1099
.label_1088:
	jmp	.label_1101
.label_1101:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_1079:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40dcc0

	.globl build_upper_buffer
	.type build_upper_buffer, @function
build_upper_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1124
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1126
.label_1124:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1126:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1127:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1128
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1125
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
.label_1125:
	mov	edi, dword ptr [rbp - 0x1c]
	call	toupper
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 8]
	mov	byte ptr [rsi + rdx], cl
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1127
.label_1128:
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
	#Procedure 0x40ddc0

	.globl build_wcs_buffer
	.type build_wcs_buffer, @function
build_wcs_buffer:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1129
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_1138
.label_1129:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x98], rax
.label_1138:
	mov	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_1139:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x68]
	jge	.label_1135
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1141
	mov	dword ptr [rbp - 0x8c], 0
.label_1144:
	xor	eax, eax
	mov	cl, al
	mov	eax, dword ptr [rbp - 0x8c]
	mov	rdx, qword ptr [rbp - 8]
	cmp	eax, dword ptr [rdx + 0x90]
	mov	byte ptr [rbp - 0x99], cl
	jge	.label_1142
	movsxd	rax, dword ptr [rbp - 0x8c]
	cmp	rax, qword ptr [rbp - 0x70]
	setl	cl
	mov	byte ptr [rbp - 0x99], cl
.label_1142:
	mov	al, byte ptr [rbp - 0x99]
	test	al, 1
	jne	.label_1137
	jmp	.label_1136
.label_1137:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x90], edx
	movsxd	rax, dword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x60]
	movsxd	rcx, dword ptr [rbp - 0x8c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	movsxd	rax, dword ptr [rbp - 0x8c]
	mov	byte ptr [rbp + rax - 0x50], sil
	mov	eax, dword ptr [rbp - 0x8c]
	add	eax, 1
	mov	dword ptr [rbp - 0x8c], eax
	jmp	.label_1144
.label_1136:
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1140
.label_1141:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	add	rax, qword ptr [rcx + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x88], rax
.label_1140:
	lea	rdi, [rbp - 0x7c]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x20
	mov	rcx, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], -1
	mov	byte ptr [rbp - 0x9a], r8b
	je	.label_1131
	mov	al, 1
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0x9a], al
	je	.label_1131
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x78], -2
	mov	byte ptr [rbp - 0x9b], cl
	jne	.label_1134
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0x58]
	setge	dl
	mov	byte ptr [rbp - 0x9b], dl
.label_1134:
	mov	al, byte ptr [rbp - 0x9b]
	mov	byte ptr [rbp - 0x9a], al
.label_1131:
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1133
	mov	qword ptr [rbp - 0x78], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x7c], edx
	mov	rax, qword ptr [rbp - 8]
	cmp	qword ptr [rax + 0x78], 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1143
	movsxd	rax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x7c], edx
.label_1143:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1130
.label_1133:
	cmp	qword ptr [rbp - 0x78], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1132
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_1135
.label_1132:
	jmp	.label_1130
.label_1130:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x60], rdx
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	dword ptr [rdx + rcx*4], eax
	mov	rcx, qword ptr [rbp - 0x60]
	add	rcx, qword ptr [rbp - 0x78]
	sub	rcx, 1
	mov	qword ptr [rbp - 0x70], rcx
.label_1145:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x70]
	jge	.label_1146
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x60], rcx
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	jmp	.label_1145
.label_1146:
	jmp	.label_1139
.label_1135:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e110

	.globl re_string_translate_buffer
	.type re_string_translate_buffer, @function
re_string_translate_buffer:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x40]
	mov	rax, qword ptr [rbp - 8]
	cmp	rdi, qword ptr [rax + 0x58]
	jle	.label_1147
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1149
.label_1147:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x40]
	mov	qword ptr [rbp - 0x28], rax
.label_1149:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x10], rax
.label_1148:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1150
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], sil
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1148
.label_1150:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 0x38], rax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e1e0

	.globl fetch_token
	.type fetch_token, @function
fetch_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	peek_token
	movsxd	rdx, eax
	mov	rsi, qword ptr [rbp - 0x10]
	add	rdx, qword ptr [rsi + 0x48]
	mov	qword ptr [rsi + 0x48], rdx
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e220

	.globl parse_reg_exp
	.type parse_reg_exp, @function
parse_reg_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x50], 0
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x61], r11b
	je	.label_1162
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1162:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1156
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1154
.label_1156:
	jmp	.label_1152
.label_1152:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	jne	.label_1153
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	or	rax, 0x800000
	mov	rdx, rax
	call	fetch_token
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xa
	je	.label_1155
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	je	.label_1155
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1159
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	je	.label_1155
.label_1159:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0xa8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0xa8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_branch
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x62], r11b
	je	.label_1151
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x62], al
.label_1151:
	mov	al, byte ptr [rbp - 0x62]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1161
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1160
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x68], eax
.label_1160:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1154
.label_1161:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x40]
	or	rax, qword ptr [rcx + 0xa8]
	mov	qword ptr [rcx + 0xa8], rax
	jmp	.label_1157
.label_1155:
	mov	qword ptr [rbp - 0x50], 0
.label_1157:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1158
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1154
.label_1158:
	jmp	.label_1152
.label_1153:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1154:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e480

	.globl create_tree
	.type create_tree, @function
create_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rax, [rbp - 0x30]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x1c], ecx
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	r8d, dword ptr [rbp - 0x28]
	and	ecx, 0xff
	and	r8d, 0xffffff00
	or	r8d, ecx
	mov	dword ptr [rbp - 0x28], r8d
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, rax
	call	create_token_tree
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40e4d0

	.globl peek_token
	.type peek_token, @function
peek_token:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1212
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1191
.label_1212:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffbfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffdfffff
	mov	dword ptr [rax + 8], esi
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1224
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1224
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1224
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffdfffff
	or	ecx, 0x200000
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1191
.label_1224:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5c
	jne	.label_1262
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_1231
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x24
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1191
.label_1231:
	mov	eax, 1
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_peek_byte_case
	mov	byte ptr [rbp - 0x22], al
	mov	al, byte ptr [rbp - 0x22]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	byte ptr [rsi], al
	mov	rsi, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rsi + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rsi + 8], ecx
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_1175
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rsi, rax
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x28], eax
	mov	edi, dword ptr [rbp - 0x28]
	call	iswalnum
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_1192
	cmp	dword ptr [rbp - 0x28], 0x5f
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_1192:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1199
.label_1175:
	movzx	eax, byte ptr [rbp - 0x22]
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	movzx	esi, word ptr [rax + rcx*2]
	and	esi, 8
	cmp	esi, 0
	mov	byte ptr [rbp - 0x51], dl
	jne	.label_1213
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x5f
	sete	cl
	mov	byte ptr [rbp - 0x51], cl
.label_1213:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1199:
	movzx	eax, byte ptr [rbp - 0x22]
	mov	ecx, eax
	sub	ecx, 0x27
	mov	dword ptr [rbp - 0x58], eax
	mov	dword ptr [rbp - 0x5c], ecx
	je	.label_1227
	jmp	.label_1232
.label_1232:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0x60], eax
	je	.label_1233
	jmp	.label_1235
.label_1235:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0x64], eax
	je	.label_1237
	jmp	.label_1240
.label_1240:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0x68], eax
	je	.label_1241
	jmp	.label_1243
.label_1243:
	mov	eax, dword ptr [rbp - 0x58]
	add	eax, -0x31
	sub	eax, 9
	mov	dword ptr [rbp - 0x6c], eax
	jb	.label_1245
	jmp	.label_1247
.label_1247:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x3c
	mov	dword ptr [rbp - 0x70], eax
	je	.label_1248
	jmp	.label_1251
.label_1251:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x3e
	mov	dword ptr [rbp - 0x74], eax
	je	.label_1253
	jmp	.label_1182
.label_1182:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0x78], eax
	je	.label_1258
	jmp	.label_1221
.label_1221:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x42
	mov	dword ptr [rbp - 0x7c], eax
	je	.label_1261
	jmp	.label_1266
.label_1266:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x53
	mov	dword ptr [rbp - 0x80], eax
	je	.label_1267
	jmp	.label_1269
.label_1269:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x57
	mov	dword ptr [rbp - 0x84], eax
	je	.label_1270
	jmp	.label_1165
.label_1165:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x88], eax
	je	.label_1168
	jmp	.label_1172
.label_1172:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x62
	mov	dword ptr [rbp - 0x8c], eax
	je	.label_1216
	jmp	.label_1178
.label_1178:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x73
	mov	dword ptr [rbp - 0x90], eax
	je	.label_1180
	jmp	.label_1183
.label_1183:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x77
	mov	dword ptr [rbp - 0x94], eax
	je	.label_1184
	jmp	.label_1188
.label_1188:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x7b
	mov	dword ptr [rbp - 0x98], eax
	je	.label_1189
	jmp	.label_1193
.label_1193:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x9c], eax
	je	.label_1194
	jmp	.label_1200
.label_1200:
	mov	eax, dword ptr [rbp - 0x58]
	sub	eax, 0x7d
	mov	dword ptr [rbp - 0xa0], eax
	je	.label_1201
	jmp	.label_1205
.label_1194:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1209
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	cmp	rax, 0
	jne	.label_1209
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1209:
	jmp	.label_1170
.label_1245:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x4000
	cmp	rax, 0
	jne	.label_1220
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 4
	mov	dword ptr [rax + 8], ecx
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x31
	movsxd	rax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], rax
.label_1220:
	jmp	.label_1170
.label_1248:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1223
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 6
.label_1223:
	jmp	.label_1170
.label_1253:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1239
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 9
.label_1239:
	jmp	.label_1170
.label_1216:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1249
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x100
.label_1249:
	jmp	.label_1170
.label_1261:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1260
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x200
.label_1260:
	jmp	.label_1170
.label_1184:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1169
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x20
	mov	dword ptr [rax + 8], ecx
.label_1169:
	jmp	.label_1170
.label_1270:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1226
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x21
	mov	dword ptr [rax + 8], ecx
.label_1226:
	jmp	.label_1170
.label_1180:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1176
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x22
	mov	dword ptr [rax + 8], ecx
.label_1176:
	jmp	.label_1170
.label_1267:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1229
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x23
	mov	dword ptr [rax + 8], ecx
.label_1229:
	jmp	.label_1170
.label_1168:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1206
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x40
.label_1206:
	jmp	.label_1170
.label_1227:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x80000
	cmp	rax, 0
	jne	.label_1219
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x80
.label_1219:
	jmp	.label_1170
.label_1233:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1225
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	dword ptr [rax + 8], ecx
.label_1225:
	jmp	.label_1170
.label_1237:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	jne	.label_1234
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	dword ptr [rax + 8], ecx
.label_1234:
	jmp	.label_1170
.label_1241:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1244
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	je	.label_1244
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1244:
	jmp	.label_1170
.label_1258:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1256
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	je	.label_1256
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1256:
	jmp	.label_1170
.label_1189:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1164
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1164
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1164:
	jmp	.label_1170
.label_1201:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1177
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	jne	.label_1177
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x18
	mov	dword ptr [rax + 8], ecx
.label_1177:
	jmp	.label_1170
.label_1205:
	jmp	.label_1170
.label_1170:
	mov	dword ptr [rbp - 4], 2
	jmp	.label_1191
.label_1262:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1195
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	edi, dword ptr [rbp - 0x2c]
	call	iswalnum
	mov	cl, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1210
	cmp	dword ptr [rbp - 0x2c], 0x5f
	sete	al
	mov	byte ptr [rbp - 0xa1], al
.label_1210:
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
	jmp	.label_1217
.label_1195:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	movsxd	rax, ecx
	mov	qword ptr [rbp - 0xb0], rax
	call	__ctype_b_loc
	mov	dl, 1
	mov	rax, qword ptr [rax]
	mov	rsi, qword ptr [rbp - 0xb0]
	movzx	ecx, word ptr [rax + rsi*2]
	and	ecx, 8
	cmp	ecx, 0
	mov	byte ptr [rbp - 0xb1], dl
	jne	.label_1228
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x5f
	sete	dl
	mov	byte ptr [rbp - 0xb1], dl
.label_1228:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	mov	rdx, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rdx + 8]
	and	ecx, 1
	shl	ecx, 0x16
	and	esi, 0xffbfffff
	or	esi, ecx
	mov	dword ptr [rdx + 8], esi
.label_1217:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	sub	ecx, 0xa
	mov	dword ptr [rbp - 0xb8], eax
	mov	dword ptr [rbp - 0xbc], ecx
	je	.label_1246
	jmp	.label_1250
.label_1250:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x24
	mov	dword ptr [rbp - 0xc0], eax
	je	.label_1252
	jmp	.label_1257
.label_1257:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x28
	mov	dword ptr [rbp - 0xc4], eax
	je	.label_1259
	jmp	.label_1263
.label_1263:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x29
	mov	dword ptr [rbp - 0xc8], eax
	je	.label_1264
	jmp	.label_1268
.label_1268:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2a
	mov	dword ptr [rbp - 0xcc], eax
	je	.label_1254
	jmp	.label_1163
.label_1163:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2b
	mov	dword ptr [rbp - 0xd0], eax
	je	.label_1167
	jmp	.label_1173
.label_1173:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x2e
	mov	dword ptr [rbp - 0xd4], eax
	je	.label_1174
	jmp	.label_1179
.label_1179:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x3f
	mov	dword ptr [rbp - 0xd8], eax
	je	.label_1181
	jmp	.label_1185
.label_1185:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x5b
	mov	dword ptr [rbp - 0xdc], eax
	je	.label_1186
	jmp	.label_1202
.label_1202:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0xe0], eax
	je	.label_1190
	jmp	.label_1197
.label_1197:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x7b
	mov	dword ptr [rbp - 0xe4], eax
	je	.label_1198
	jmp	.label_1203
.label_1203:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0xe8], eax
	je	.label_1204
	jmp	.label_1207
.label_1207:
	mov	eax, dword ptr [rbp - 0xb8]
	sub	eax, 0x7d
	mov	dword ptr [rbp - 0xec], eax
	je	.label_1208
	jmp	.label_1214
.label_1246:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1215
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1215:
	jmp	.label_1166
.label_1204:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1211
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x8000
	cmp	rax, 0
	je	.label_1211
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xa
	mov	dword ptr [rax + 8], ecx
.label_1211:
	jmp	.label_1166
.label_1254:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xb
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1166
.label_1167:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1238
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	jne	.label_1238
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x12
	mov	dword ptr [rax + 8], ecx
.label_1238:
	jmp	.label_1166
.label_1181:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x400
	cmp	rax, 0
	jne	.label_1255
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 2
	cmp	rax, 0
	jne	.label_1255
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x13
	mov	dword ptr [rax + 8], ecx
.label_1255:
	jmp	.label_1166
.label_1198:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1265
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	je	.label_1265
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x17
	mov	dword ptr [rax + 8], ecx
.label_1265:
	jmp	.label_1166
.label_1208:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x200
	cmp	rax, 0
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x1000
	cmp	rax, 0
	je	.label_1171
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x18
	mov	dword ptr [rax + 8], ecx
.label_1171:
	jmp	.label_1166
.label_1259:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	je	.label_1187
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 8
	mov	dword ptr [rax + 8], ecx
.label_1187:
	jmp	.label_1166
.label_1264:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x2000
	cmp	rax, 0
	je	.label_1196
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 9
	mov	dword ptr [rax + 8], ecx
.label_1196:
	jmp	.label_1166
.label_1186:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x14
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1166
.label_1174:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 5
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1166
.label_1190:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800008
	cmp	rax, 0
	jne	.label_1218
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x48], 0
	je	.label_1218
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax - 1]
	mov	byte ptr [rbp - 0x2d], dl
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 0x800
	cmp	rax, 0
	je	.label_1222
	movsx	eax, byte ptr [rbp - 0x2d]
	cmp	eax, 0xa
	je	.label_1230
.label_1222:
	jmp	.label_1166
.label_1230:
	jmp	.label_1218
.label_1218:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x10
	jmp	.label_1166
.label_1252:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 8
	cmp	rax, 0
	jne	.label_1242
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	je	.label_1242
	lea	rdi, [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	peek_token
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x48]
	add	rdx, -1
	mov	qword ptr [rcx + 0x48], rdx
	mov	r8d, dword ptr [rbp - 0x38]
	and	r8d, 0xff
	cmp	r8d, 0xa
	mov	dword ptr [rbp - 0xf0], eax
	je	.label_1236
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 0xff
	cmp	eax, 9
	je	.label_1236
	jmp	.label_1166
.label_1236:
	jmp	.label_1242
.label_1242:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0xc
	mov	dword ptr [rax + 8], ecx
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0x20
	jmp	.label_1166
.label_1214:
	jmp	.label_1166
.label_1166:
	mov	dword ptr [rbp - 4], 1
.label_1191:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f240

	.globl re_string_peek_byte_case
	.type re_string_peek_byte_case, @function
re_string_peek_byte_case:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rsi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_1271
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1273
.label_1271:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1272
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1276
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x48]
	add	rcx, qword ptr [rbp - 0x18]
	add	rcx, 1
	cmp	rax, rcx
	je	.label_1272
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4 + 4], -1
	jne	.label_1272
.label_1276:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1273
.label_1272:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1275
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
.label_1275:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8c]
	cmp	edx, 0
	je	.label_1274
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 0xffffff80
	cmp	eax, 0
	je	.label_1274
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dl
	jmp	.label_1273
.label_1274:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
.label_1273:
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f3c0

	.globl re_string_wchar_at
	.type re_string_wchar_at, @function
re_string_wchar_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jne	.label_1277
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 4], edx
	jmp	.label_1278
.label_1277:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 4], edx
.label_1278:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f410

	.globl parse_branch
	.type parse_branch, @function
parse_branch:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x59], r11b
	je	.label_1287
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1287:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1293
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1285
.label_1293:
	jmp	.label_1283
.label_1283:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 0xa
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1279
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	mov	byte ptr [rbp - 0x5a], cl
	je	.label_1279
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x5b], al
	je	.label_1289
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 0x5b], dl
.label_1289:
	mov	al, byte ptr [rbp - 0x5b]
	mov	byte ptr [rbp - 0x5a], al
.label_1279:
	mov	al, byte ptr [rbp - 0x5a]
	test	al, 1
	jne	.label_1281
	jmp	.label_1286
.label_1281:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_expression
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x5c], r11b
	je	.label_1292
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x5c], al
.label_1292:
	mov	al, byte ptr [rbp - 0x5c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1288
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1291
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x40]
	call	postorder
	mov	dword ptr [rbp - 0x60], eax
.label_1291:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1285
.label_1288:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_1282
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1282
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_1284
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	movabs	rsi, OFFSET FLAT:free_tree
	xor	ecx, ecx
	mov	edx, ecx
	mov	rdi, qword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 0x64], eax
	call	postorder
	mov	rdx, qword ptr [rbp - 0x38]
	mov	dword ptr [rdx], 0xc
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_1285
.label_1284:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1290
.label_1282:
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_1280
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1280:
	jmp	.label_1290
.label_1290:
	jmp	.label_1283
.label_1286:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
.label_1285:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f670

	.globl postorder
	.type postorder, @function
postorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1300:
	jmp	.label_1295
.label_1295:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	qword ptr [rcx + 8], 0
	mov	byte ptr [rbp - 0x35], al
	jne	.label_1301
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	setne	cl
	mov	byte ptr [rbp - 0x35], cl
.label_1301:
	mov	al, byte ptr [rbp - 0x35]
	test	al, 1
	jne	.label_1303
	jmp	.label_1305
.label_1303:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1304
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1302
.label_1304:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1302:
	jmp	.label_1295
.label_1305:
	jmp	.label_1296
.label_1296:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1298
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1297
.label_1298:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], 0
	jne	.label_1294
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1297
.label_1294:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x36], al
	je	.label_1299
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x36], cl
.label_1299:
	mov	al, byte ptr [rbp - 0x36]
	test	al, 1
	jne	.label_1296
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1300
.label_1297:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7b0

	.globl free_tree
	.type free_tree, @function
free_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x28
	mov	rdi, rsi
	call	free_token
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x40f7e0

	.globl parse_expression
	.type parse_expression, @function
parse_expression:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x118
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x40], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	eax, byte ptr [rcx + 8]
	dec	eax
	mov	ecx, eax
	sub	eax, 0x23
	mov	qword ptr [rbp - 0x78], rcx
	mov	dword ptr [rbp - 0x7c], eax
	ja	.label_1352
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1317]]
	jmp	rcx
.label_3241:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1326
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1326:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1342
	jmp	.label_1344
.label_1344:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	mov	byte ptr [rbp - 0x89], cl
	jle	.label_1347
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rdx + 0x30]
	mov	byte ptr [rbp - 0x8a], al
	je	.label_1351
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	setne	dl
	mov	byte ptr [rbp - 0x8a], dl
.label_1351:
	mov	al, byte ptr [rbp - 0x8a]
	xor	al, 0xff
	mov	byte ptr [rbp - 0x89], al
.label_1347:
	mov	al, byte ptr [rbp - 0x89]
	test	al, 1
	jne	.label_1309
	jmp	.label_1315
.label_1309:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	create_token_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x8b], r8b
	je	.label_1331
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8b], al
.label_1331:
	mov	al, byte ptr [rbp - 0x8b]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1340
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1340:
	jmp	.label_1344
.label_1315:
	jmp	.label_1342
.label_1342:
	jmp	.label_1314
.label_3245:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	r9, qword ptr [rbp - 0x40]
	mov	r8, rax
	call	parse_sub_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x8c], r11b
	je	.label_1308
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8c], al
.label_1308:
	mov	al, byte ptr [rbp - 0x8c]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1312
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1312:
	jmp	.label_1314
.label_3247:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x40]
	call	parse_bracket_exp
	xor	r9d, r9d
	mov	r10b, r9b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x8d], r10b
	je	.label_1327
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x8d], al
.label_1327:
	mov	al, byte ptr [rbp - 0x8d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1339
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1339:
	jmp	.label_1314
.label_3243:
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0xa8]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	mov	qword ptr [rbp - 0x98], rcx
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x98]
	and	rdi, rdx
	cmp	rdi, 0
	jne	.label_1348
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 6
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1348:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 1
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx]
	mov	esi, edx
	mov	qword ptr [rbp - 0xa0], rcx
	mov	ecx, esi
	shl	eax, cl
	movsxd	rdx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	or	rdx, qword ptr [rdi + 0xa0]
	mov	qword ptr [rdi + 0xa0], rdx
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0xa0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1324
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1324:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rax + 0x98]
	add	rcx, 1
	mov	qword ptr [rax + 0x98], rcx
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0xb0]
	and	dl, 0xfd
	or	dl, 2
	mov	byte ptr [rax + 0xb0], dl
	jmp	.label_1314
.label_3248:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	je	.label_1349
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1349:
	jmp	.label_1356
.label_1356:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x20
	cmp	rax, 0
	je	.label_1357
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1357:
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x10
	cmp	rax, 0
	je	.label_1310
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x40]
	call	parse_expression
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1306
.label_1310:
	jmp	.label_1328
.label_1328:
	jmp	.label_1330
.label_1330:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	jne	.label_1307
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x20000
	cmp	rax, 0
	jne	.label_1307
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0x10
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1307:
	jmp	.label_1346
.label_1346:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [rdx + 8], eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xa8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xa8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1355
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1355:
	jmp	.label_1314
.label_3246:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax]
	and	ecx, 0x30f
	cmp	ecx, 0
	je	.label_1316
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_1316
	mov	rdi, qword ptr [rbp - 0x48]
	call	init_word_char
.label_1316:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	je	.label_1321
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x200
	jne	.label_1333
.label_1321:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	dword ptr [rax], 0x100
	jne	.label_1358
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx], 6
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 9
	jmp	.label_1337
.label_1358:
	xor	eax, eax
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	dword ptr [rdx], 5
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xb8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	dword ptr [rax], 0xa
.label_1337:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xc0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xc0]
	call	create_token_tree
	mov	ecx, 0xa
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x60], 0
	mov	byte ptr [rbp - 0xc1], r8b
	je	.label_1311
	mov	al, 1
	cmp	qword ptr [rbp - 0x68], 0
	mov	byte ptr [rbp - 0xc1], al
	je	.label_1311
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0xc1], al
.label_1311:
	mov	al, byte ptr [rbp - 0xc1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1338
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1338:
	jmp	.label_1334
.label_1333:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd0], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd0]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1353
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1353:
	jmp	.label_1334
.label_1334:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdx
	jmp	.label_1306
.label_3244:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0xd8], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0xd8]
	call	create_token_tree
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1329
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1329:
	mov	rax, qword ptr [rbp - 0x48]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1343
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfd
	or	cl, 2
	mov	byte ptr [rax + 0xb0], cl
.label_1343:
	jmp	.label_1314
.label_3249:
	movabs	rax, OFFSET FLAT:.str.1_5
	movabs	rcx, OFFSET FLAT:.str.2_3
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	cmp	r8d, 0x21
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
.label_3172:
	mov	r8d, OFFSET FLAT:.str.1_5
	mov	r10d, r8d
	mov	r8d, OFFSET FLAT:.str.2_3
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0xe0], rdx
	mov	rdx, r10
	mov	qword ptr [rbp - 0xe8], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0xf0], rax
	call	build_charclass_op
	xor	r8d, r8d
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0xf1], bl
	je	.label_1322
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0xf1], al
.label_1322:
	mov	al, byte ptr [rbp - 0xf1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1332
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1332:
	jmp	.label_1314
.label_3250:
	movabs	rax, OFFSET FLAT:.str.3_2
	movabs	rcx, OFFSET FLAT:.str_0
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x78]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rdx + 8]
	and	r8d, 0xff
	cmp	r8d, 0x23
	sete	r9b
	mov	rdx, qword ptr [rbp - 0x40]
	mov	r8d, OFFSET FLAT:.str.3_2
	mov	r10d, r8d
	mov	r8d, OFFSET FLAT:.str_0
	mov	r11d, r8d
	and	r9b, 1
	movzx	r8d, r9b
	mov	qword ptr [rbp - 0x100], rdx
	mov	rdx, r10
	mov	qword ptr [rbp - 0x108], rcx
	mov	rcx, r11
	mov	r9, qword ptr [rbp - 0x100]
	mov	qword ptr [rbp - 0x110], rax
	call	build_charclass_op
	xor	r8d, r8d
	mov	bl, r8b
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x111], bl
	je	.label_1335
	cmp	qword ptr [rbp - 0x50], 0
	sete	al
	mov	byte ptr [rbp - 0x111], al
.label_1335:
	mov	al, byte ptr [rbp - 0x111]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1320
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1320:
	jmp	.label_1314
.label_3242:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_3251:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 5
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1352:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1314:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
.label_1323:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0xb
	mov	byte ptr [rbp - 0x112], al
	je	.label_1345
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0x12
	mov	byte ptr [rbp - 0x112], al
	je	.label_1345
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rcx + 8]
	and	edx, 0xff
	cmp	edx, 0x13
	mov	byte ptr [rbp - 0x112], al
	je	.label_1345
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	sete	dl
	mov	byte ptr [rbp - 0x112], dl
.label_1345:
	mov	al, byte ptr [rbp - 0x112]
	test	al, 1
	jne	.label_1313
	jmp	.label_1318
.label_1313:
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x40]
	call	parse_dup_op
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x113], r11b
	je	.label_1319
	cmp	qword ptr [rbp - 0x70], 0
	sete	al
	mov	byte ptr [rbp - 0x113], al
.label_1319:
	mov	al, byte ptr [rbp - 0x113]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1336
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1341
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	dword ptr [rbp - 0x118], eax
.label_1341:
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1336:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x1000000
	cmp	rax, 0
	je	.label_1350
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0xb
	je	.label_1354
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x17
	jne	.label_1350
.label_1354:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_1325
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	postorder
	mov	dword ptr [rbp - 0x11c], eax
.label_1325:
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xd
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1306
.label_1350:
	jmp	.label_1323
.label_1318:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rax
.label_1306:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x118
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x410370

	.globl create_token_tree
	.type create_token_tree, @function
create_token_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0x80]
	cmp	rcx, 0xf
	sete	al
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1359
	mov	eax, 0x3c8
	mov	edi, eax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1362
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1361
.label_1362:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x70]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x70], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0x80], 0
.label_1359:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x80]
	mov	edx, ecx
	add	edx, 1
	mov	dword ptr [rax + 0x80], edx
	movsxd	rax, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x70]
	add	rsi, 8
	shl	rax, 6
	add	rsi, rax
	mov	qword ptr [rbp - 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rsi]
	mov	qword ptr [rax + 0x28], rdi
	mov	rsi, qword ptr [rsi + 8]
	mov	qword ptr [rax + 0x30], rsi
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfffbffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	mov	dword ptr [rax + 0x30], ecx
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x18], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x20], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rax + 0x38], -1
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1363
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
.label_1363:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1360
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_1360:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_1361:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4104f0

	.globl parse_sub_exp
	.type parse_sub_exp, @function
parse_sub_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rcx + 0x30]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x30], rsi
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x28]
	or	rcx, 0x800000
	mov	rdx, rcx
	call	fetch_token
	mov	rcx, qword ptr [rbp - 0x20]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 9
	jne	.label_1367
	mov	qword ptr [rbp - 0x48], 0
	jmp	.label_1365
.label_1367:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x30]
	mov	r9, qword ptr [rbp - 0x38]
	call	parse_reg_exp
	xor	r10d, r10d
	mov	r11b, r10b
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	mov	byte ptr [rbp - 0x51], r11b
	jne	.label_1366
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 9
	setne	dl
	mov	byte ptr [rbp - 0x51], dl
.label_1366:
	mov	al, byte ptr [rbp - 0x51]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1372
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1368
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x48]
	call	postorder
	mov	dword ptr [rbp - 0x58], eax
.label_1368:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 8
.label_1372:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1369
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1371
.label_1369:
	jmp	.label_1365
.label_1365:
	cmp	qword ptr [rbp - 0x50], 8
	ja	.label_1364
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x50]
	mov	edx, ecx
	mov	ecx, edx
	shl	eax, cl
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x40]
	or	rsi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rdi + 0xa8], rsi
.label_1364:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0x11
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x48]
	call	create_tree
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1370
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1371
.label_1370:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1371:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4106d0

	.globl parse_bracket_exp
	.type parse_bracket_exp, @function
parse_bracket_exp:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x188
	mov	eax, 0x20
	mov	r9d, eax
	mov	eax, 1
	mov	r10d, eax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], r8
	mov	qword ptr [rbp - 0x60], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	qword ptr [rbp - 0x80], 0
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x95], 1
	mov	rdi, r9
	mov	rsi, r10
	call	calloc
	mov	r11d, 0x50
	mov	edi, r11d
	mov	r11d, 1
	mov	esi, r11d
	mov	qword ptr [rbp - 0x50], rax
	call	calloc
	mov	bl, 1
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x135], bl
	je	.label_1375
	cmp	qword ptr [rbp - 0x58], 0
	sete	al
	mov	byte ptr [rbp - 0x135], al
.label_1375:
	mov	al, byte ptr [rbp - 0x135]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1400
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1393
.label_1400:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rdx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1416
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1373
.label_1416:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x19
	jne	.label_1378
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0x20], cl
	mov	byte ptr [rbp - 0x81], 1
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x100
	cmp	rax, 0
	je	.label_1421
	mov	eax, 0xa
	mov	esi, eax
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_set
.label_1421:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1402
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 2
	jmp	.label_1373
.label_1402:
	jmp	.label_1378
.label_1378:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1412
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1412:
	jmp	.label_1398
.label_1398:
	lea	rdi, [rbp - 0xa8]
	lea	rax, [rbp - 0xe0]
	mov	dword ptr [rbp - 0x108], 0
	mov	byte ptr [rbp - 0x109], 0
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x94]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	r10b, byte ptr [rbp - 0x95]
	and	r10b, 1
	movzx	r11d, r10b
	mov	dword ptr [rsp], r11d
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1389
	mov	eax, dword ptr [rbp - 0x104]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1373
.label_1389:
	mov	byte ptr [rbp - 0x95], 0
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	cmp	dword ptr [rbp - 0xa8], 4
	je	.label_1406
	cmp	dword ptr [rbp - 0xa8], 2
	je	.label_1406
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1410
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1373
.label_1410:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	jne	.label_1409
	lea	rdi, [rbp - 0x120]
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x108], eax
	mov	eax, dword ptr [rbp - 0x118]
	and	eax, 0xff
	cmp	eax, 2
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1386
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1373
.label_1386:
	mov	eax, dword ptr [rbp - 0x118]
	and	eax, 0xff
	cmp	eax, 0x15
	jne	.label_1414
	xor	eax, eax
	sub	eax, dword ptr [rbp - 0x94]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x18]
	add	rcx, qword ptr [rdx + 0x48]
	mov	qword ptr [rdx + 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xffffff00
	or	eax, 1
	mov	dword ptr [rcx + 8], eax
	jmp	.label_1401
.label_1414:
	mov	byte ptr [rbp - 0x109], 1
.label_1401:
	jmp	.label_1409
.label_1409:
	jmp	.label_1406
.label_1406:
	mov	al, byte ptr [rbp - 0x109]
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 1
	jne	.label_1411
	lea	rdi, [rbp - 0xb8]
	lea	rdx, [rbp - 0x120]
	mov	eax, 1
	lea	rcx, [rbp - 0x100]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	dword ptr [rbp - 0xb8], 3
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x108]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x30]
	mov	dword ptr [rsp], 1
	mov	dword ptr [rbp - 0x13c], eax
	call	parse_bracket_element
	mov	dword ptr [rbp - 0x104], eax
	cmp	dword ptr [rbp - 0x104], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1382
	mov	eax, dword ptr [rbp - 0x104]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	jmp	.label_1373
.label_1382:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	peek_token_bracket
	mov	dword ptr [rbp - 0x94], eax
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rdx + 0xb4], 1
	mov	qword ptr [rbp - 0x148], rdi
	mov	qword ptr [rbp - 0x150], rsi
	jle	.label_1395
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x158], rax
	jmp	.label_1405
.label_1395:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x158], rcx
	jmp	.label_1405
.label_1405:
	mov	rax, qword ptr [rbp - 0x158]
	lea	rcx, [rbp - 0x68]
	lea	r8, [rbp - 0xa8]
	lea	r9, [rbp - 0xb8]
	mov	rdi, qword ptr [rbp - 0x148]
	mov	rsi, qword ptr [rbp - 0x150]
	mov	rdx, rax
	call	build_range_exp
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1418
	jmp	.label_1373
.label_1418:
	jmp	.label_1380
.label_1411:
	mov	eax, dword ptr [rbp - 0xa8]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 4
	mov	qword ptr [rbp - 0x160], rcx
	mov	qword ptr [rbp - 0x168], rdx
	ja	.label_1381
	mov	rax, qword ptr [rbp - 0x160]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1388]]
	jmp	rcx
.label_3190:
	mov	rdi, qword ptr [rbp - 0x50]
	movzx	eax, byte ptr [rbp - 0xa0]
	mov	esi, eax
	call	bitset_set
	jmp	.label_1391
.label_3191:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rcx + 0x28]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1394
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax + 0x28]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x128], rax
	cmp	qword ptr [rbp - 0x128], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1422
	jmp	.label_1387
.label_1422:
	mov	rax, qword ptr [rbp - 0x128]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	qword ptr [rcx], rax
.label_1394:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rcx + 0x28]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x28], rsi
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rcx]
	mov	dword ptr [rcx + rdx*4], eax
	jmp	.label_1391
.label_3192:
	lea	rdx, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_equiv_class
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1384
	jmp	.label_1373
.label_1384:
	jmp	.label_1391
.label_3193:
	lea	rdx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	build_collating_symbol
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1397
	jmp	.label_1373
.label_1397:
	jmp	.label_1391
.label_3194:
	lea	rcx, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x78]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0xa0]
	mov	r9, qword ptr [rbp - 0x30]
	call	build_charclass
	mov	rcx, qword ptr [rbp - 0x38]
	mov	dword ptr [rcx], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1413
	jmp	.label_1373
.label_1413:
	jmp	.label_1391
.label_1381:
	movabs	rdi, OFFSET FLAT:.str.5_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0xced
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.parse_bracket_exp
	call	__assert_fail
.label_1391:
	jmp	.label_1380
.label_1380:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1383
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 7
	jmp	.label_1373
.label_1383:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x15
	jne	.label_1392
	jmp	.label_1396
.label_1392:
	jmp	.label_1398
.label_1396:
	movsxd	rax, dword ptr [rbp - 0x94]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	test	byte ptr [rbp - 0x81], 1
	je	.label_1399
	mov	rdi, qword ptr [rbp - 0x50]
	call	bitset_not
.label_1399:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1407
	mov	rdi, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1407:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x28], 0
	jne	.label_1379
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x30], 0
	jne	.label_1379
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_1379
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_1379
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1374
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_1379
	mov	rax, qword ptr [rbp - 0x58]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_1374
.label_1379:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	dil, byte ptr [rsi + 0xb0]
	and	dil, 0xfd
	or	dil, 2
	mov	byte ptr [rsi + 0xb0], dil
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 6
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x170], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x170]
	call	create_token_tree
	mov	qword ptr [rbp - 0x130], rax
	cmp	qword ptr [rbp - 0x130], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1403
	jmp	.label_1387
.label_1403:
	mov	dword ptr [rbp - 0x134], 0
.label_1420:
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1377
	movsxd	rax, dword ptr [rbp - 0x134]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_1415
	jmp	.label_1377
.label_1415:
	jmp	.label_1419
.label_1419:
	mov	eax, dword ptr [rbp - 0x134]
	add	eax, 1
	mov	dword ptr [rbp - 0x134], eax
	jmp	.label_1420
.label_1377:
	cmp	dword ptr [rbp - 0x134], 4
	jge	.label_1376
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x178]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1417
	jmp	.label_1387
.label_1417:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x130]
	call	create_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1404
	jmp	.label_1387
.label_1404:
	jmp	.label_1408
.label_1376:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x130]
	mov	qword ptr [rbp - 0x90], rax
.label_1408:
	jmp	.label_1390
.label_1374:
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	xor	eax, eax
	mov	edi, eax
	lea	rcx, [rbp - 0x48]
	mov	eax, dword ptr [rbp - 0x40]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x40], eax
	mov	rdx, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x180], rdi
	mov	rdi, rdx
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x180]
	call	create_token_tree
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1385
	jmp	.label_1387
.label_1385:
	jmp	.label_1390
.label_1390:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1393
.label_1387:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
.label_1373:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x58]
	call	free_charset
	mov	qword ptr [rbp - 0x10], 0
.label_1393:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x188
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4111b0

	.globl init_word_char
	.type init_word_char, @function
init_word_char:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
	mov	dword ptr [rbp - 0x14], 0
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	and	al, 0xef
	or	al, 0x10
	mov	byte ptr [rdi + 0xb0], al
	mov	rdi, qword ptr [rbp - 8]
	mov	al, byte ptr [rdi + 0xb0]
	shr	al, 3
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1428
	mov	eax, 0x87fffffe
	mov	ecx, eax
	mov	qword ptr [rbp - 0x20], 0
	mov	qword ptr [rbp - 0x28], 0x3ff0000
	mov	qword ptr [rbp - 0x30], rcx
	mov	qword ptr [rbp - 0x38], 0x7fffffe
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 0x1f
	shl	rcx, 1
	or	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0xc0], rcx
	mov	dword ptr [rbp - 0xc], 2
	mov	dword ptr [rbp - 0x14], 0x80
	mov	rcx, qword ptr [rbp - 8]
	mov	sil, byte ptr [rcx + 0xb0]
	shr	sil, 2
	and	sil, 1
	movzx	eax, sil
	mov	eax, eax
	mov	ecx, eax
	cmp	rcx, 0
	je	.label_1426
	xor	esi, esi
	mov	eax, 8
	mov	ecx, 0x100
	movsxd	rdx, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	add	rdi, 0xb8
	shl	rdx, 3
	add	rdi, rdx
	sub	ecx, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, ecx
	cdq	
	mov	ecx, dword ptr [rbp - 0x3c]
	idiv	ecx
	movsxd	r8, eax
	mov	rdx, r8
	call	memset
	jmp	.label_1424
.label_1426:
	jmp	.label_1428
.label_1428:
	jmp	.label_1431
.label_1431:
	jmp	.label_1433
.label_1433:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1424
	mov	dword ptr [rbp - 0x10], 0
.label_1429:
	cmp	dword ptr [rbp - 0x10], 0x40
	jge	.label_1430
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x48], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	jne	.label_1427
	cmp	dword ptr [rbp - 0x14], 0x5f
	jne	.label_1423
.label_1427:
	mov	eax, 1
	mov	ecx, eax
	mov	eax, dword ptr [rbp - 0x10]
	mov	edx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, cl
	movsxd	rsi, dword ptr [rbp - 0xc]
	mov	rdi, qword ptr [rbp - 8]
	or	rdx, qword ptr [rdi + rsi*8 + 0xb8]
	mov	qword ptr [rdi + rsi*8 + 0xb8], rdx
.label_1423:
	jmp	.label_1425
.label_1425:
	mov	eax, dword ptr [rbp - 0x10]
	add	eax, 1
	mov	dword ptr [rbp - 0x10], eax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1429
.label_1430:
	jmp	.label_1432
.label_1432:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1433
.label_1424:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4113a0

	.globl build_charclass_op
	.type build_charclass_op, @function
build_charclass_op:
	push	rbp
	mov	rbp, rsp
	push	rbx
	sub	rsp, 0x88
	mov	al, r8b
	mov	r8d, 0x20
	mov	r10d, r8d
	mov	r8d, 1
	mov	r11d, r8d
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r9
	mov	qword ptr [rbp - 0x58], 0
	mov	rdi, r10
	mov	rsi, r11
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	bl
	and	bl, 1
	movzx	r8d, bl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1442
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1439
.label_1442:
	mov	eax, 0x50
	mov	edi, eax
	mov	eax, 1
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1438
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1439
.label_1438:
	lea	rcx, [rbp - 0x58]
	xor	eax, eax
	mov	r9d, eax
	mov	dl, byte ptr [rbp - 0x31]
	and	dl, 1
	movzx	eax, dl
	mov	rsi, qword ptr [rbp - 0x50]
	mov	dl, al
	mov	dil, byte ptr [rsi + 0x20]
	and	dl, 1
	and	dil, 0xfe
	or	dil, dl
	mov	byte ptr [rsi + 0x20], dil
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	r8, qword ptr [rbp - 0x28]
	call	build_charclass
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1446
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	ecx, dword ptr [rbp - 0x5c]
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], ecx
	mov	qword ptr [rbp - 0x10], 0
	jmp	.label_1439
.label_1446:
	jmp	.label_1434
.label_1434:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	byte ptr [rax], 0
	je	.label_1436
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x30]
	movsx	rsi, byte ptr [rax]
	call	bitset_set
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1434
.label_1436:
	test	byte ptr [rbp - 0x31], 1
	je	.label_1445
	mov	rdi, qword ptr [rbp - 0x48]
	call	bitset_not
.label_1445:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1437
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_mask
.label_1437:
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xffffff00
	or	eax, 3
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x88], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x88]
	call	create_token_tree
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1441
	jmp	.label_1435
.label_1441:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_1440
	xor	eax, eax
	mov	ecx, eax
	lea	rdx, [rbp - 0x70]
	mov	eax, dword ptr [rbp - 0x68]
	and	eax, 0xffffff00
	or	eax, 6
	mov	dword ptr [rbp - 0x68], eax
	mov	rsi, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	dil, byte ptr [rsi + 0xb0]
	and	dil, 0xfd
	or	dil, 2
	mov	byte ptr [rsi + 0xb0], dil
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x90], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x90]
	call	create_token_tree
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1444
	jmp	.label_1435
.label_1444:
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x80]
	call	create_tree
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x80], 0
	setne	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1443
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_1439
.label_1443:
	jmp	.label_1447
.label_1440:
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rdi
	jmp	.label_1439
.label_1447:
	jmp	.label_1435
.label_1435:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	rdi, qword ptr [rbp - 0x50]
	call	free_charset
	mov	rax, qword ptr [rbp - 0x40]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 0x10], 0
.label_1439:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x88
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411700

	.globl parse_dup_op
	.type parse_dup_op, @function
parse_dup_op:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], 0
	mov	qword ptr [rbp - 0x48], 0
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x78], rdx
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 0x17
	jne	.label_1448
	mov	qword ptr [rbp - 0x60], 0
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1466
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1471
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1471
	mov	qword ptr [rbp - 0x58], 0
	jmp	.label_1458
.label_1471:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1451
.label_1458:
	jmp	.label_1466
.label_1466:
	cmp	qword ptr [rbp - 0x58], -2
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1486
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	jne	.label_1489
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_1452
.label_1489:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1454
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2c
	jne	.label_1454
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_number
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1461
.label_1454:
	mov	rax, -2
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_1461
.label_1461:
	mov	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x88], rax
.label_1452:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x60], rax
.label_1486:
	mov	al, 1
	cmp	qword ptr [rbp - 0x58], -2
	mov	byte ptr [rbp - 0x91], al
	je	.label_1469
	cmp	qword ptr [rbp - 0x60], -2
	sete	al
	mov	byte ptr [rbp - 0x91], al
.label_1469:
	mov	al, byte ptr [rbp - 0x91]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1475
	mov	rax, qword ptr [rbp - 0x30]
	and	rax, 0x200000
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1460
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	jne	.label_1487
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 9
	jmp	.label_1450
.label_1487:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
.label_1450:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1451
.label_1460:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x70]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xffffff00
	or	edx, 1
	mov	dword ptr [rax + 8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1451
.label_1475:
	cmp	qword ptr [rbp - 0x60], -1
	je	.label_1464
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x58]
	cmp	rcx, qword ptr [rbp - 0x60]
	mov	byte ptr [rbp - 0x92], al
	jg	.label_1476
.label_1464:
	mov	rax, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	setne	dl
	mov	byte ptr [rbp - 0x92], dl
.label_1476:
	mov	al, byte ptr [rbp - 0x92]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1474
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xa
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1451
.label_1474:
	cmp	qword ptr [rbp - 0x60], -1
	jne	.label_1482
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_1485
.label_1482:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0xa0], rax
.label_1485:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	ecx, 0x7fff
	mov	edx, ecx
	cmp	rdx, rax
	setl	sil
	and	sil, 1
	movzx	ecx, sil
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1488
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xf
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1451
.label_1488:
	jmp	.label_1457
.label_1448:
	mov	eax, 0xffffffff
	mov	ecx, 1
	xor	edx, edx
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edi, dword ptr [rsi + 8]
	and	edi, 0xff
	cmp	edi, 0x12
	cmove	edx, ecx
	movsxd	rsi, edx
	mov	qword ptr [rbp - 0x58], rsi
	mov	rsi, qword ptr [rbp - 0x28]
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	cmp	edx, 0x13
	cmove	eax, ecx
	movsxd	rsi, eax
	mov	qword ptr [rbp - 0x60], rsi
.label_1457:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	call	fetch_token
	cmp	qword ptr [rbp - 0x10], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1470
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1451
.label_1470:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0xa1], cl
	jne	.label_1477
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	byte ptr [rbp - 0xa1], al
.label_1477:
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1484
	movabs	rsi, OFFSET FLAT:free_tree
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	call	postorder
	mov	qword ptr [rbp - 8], 0
	mov	dword ptr [rbp - 0xa8], eax
	jmp	.label_1451
.label_1484:
	cmp	qword ptr [rbp - 0x58], 0
	setg	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1453
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x50], 2
.label_1480:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x58]
	jg	.label_1459
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xa9], r8b
	je	.label_1465
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0xa9], al
.label_1465:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1479
	jmp	.label_1463
.label_1479:
	jmp	.label_1478
.label_1478:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1480
.label_1459:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x60]
	jne	.label_1483
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1451
.label_1483:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1490
	jmp	.label_1463
.label_1490:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1455
.label_1453:
	mov	qword ptr [rbp - 0x48], 0
.label_1455:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1491
	movabs	rsi, OFFSET FLAT:mark_opt_subexp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x80]
	call	postorder
	mov	dword ptr [rbp - 0xb0], eax
.label_1491:
	xor	eax, eax
	mov	edx, eax
	mov	eax, 0xa
	mov	ecx, 0xb
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rbp - 0x60], -1
	cmove	eax, ecx
	mov	ecx, eax
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1473
	jmp	.label_1463
.label_1473:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x50], rax
.label_1468:
	mov	rax, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rbp - 0x60]
	jg	.label_1481
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	duplicate_tree
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x10], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0xb1], r8b
	je	.label_1449
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0xb1], al
.label_1449:
	mov	al, byte ptr [rbp - 0xb1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1456
	jmp	.label_1463
.label_1456:
	xor	eax, eax
	mov	edx, eax
	mov	ecx, 0xa
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	r8b
	and	r8b, 1
	movzx	ecx, r8b
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1462
	jmp	.label_1463
.label_1462:
	jmp	.label_1467
.label_1467:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_1468
.label_1481:
	cmp	qword ptr [rbp - 0x48], 0
	je	.label_1472
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
.label_1472:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1451
.label_1463:
	mov	rax, qword ptr [rbp - 0x38]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
.label_1451:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x411df0

	.globl peek_token_bracket
	.type peek_token_bracket, @function
peek_token_bracket:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1511
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 2
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1502
.label_1511:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x21], dl
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x18]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_1507
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1507
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1507
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1502
.label_1507:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5c
	jne	.label_1493
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 1
	cmp	rax, 0
	je	.label_1493
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1493
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x22], dl
	mov	dl, byte ptr [rbp - 0x22]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xffffff00
	or	esi, 1
	mov	dword ptr [rax + 8], esi
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1502
.label_1493:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x5b
	jne	.label_1509
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_1497
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x23], dl
	jmp	.label_1506
.label_1497:
	mov	byte ptr [rbp - 0x23], 0
.label_1506:
	mov	al, byte ptr [rbp - 0x23]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	byte ptr [rcx], al
	mov	dword ptr [rbp - 0x28], 2
	movzx	edx, byte ptr [rbp - 0x23]
	mov	esi, edx
	sub	esi, 0x2e
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1494
	jmp	.label_1508
.label_1508:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x3a
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1510
	jmp	.label_1501
.label_1501:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x3d
	mov	dword ptr [rbp - 0x38], eax
	je	.label_1492
	jmp	.label_1503
.label_1494:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1a
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1498
.label_1492:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1c
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1498
.label_1510:
	mov	rax, qword ptr [rbp - 0x20]
	and	rax, 4
	cmp	rax, 0
	je	.label_1495
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x1e
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1498
.label_1495:
	jmp	.label_1503
.label_1503:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
	mov	dl, byte ptr [rbp - 0x21]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax], dl
	mov	dword ptr [rbp - 0x28], 1
.label_1498:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1502
.label_1509:
	movzx	eax, byte ptr [rbp - 0x21]
	mov	ecx, eax
	sub	ecx, 0x2d
	mov	dword ptr [rbp - 0x3c], eax
	mov	dword ptr [rbp - 0x40], ecx
	je	.label_1505
	jmp	.label_1513
.label_1513:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x5d
	mov	dword ptr [rbp - 0x44], eax
	je	.label_1512
	jmp	.label_1499
.label_1499:
	mov	eax, dword ptr [rbp - 0x3c]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x48], eax
	je	.label_1500
	jmp	.label_1504
.label_1505:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x16
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1496
.label_1512:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x15
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1496
.label_1500:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 0x19
	mov	dword ptr [rax + 8], ecx
	jmp	.label_1496
.label_1504:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xffffff00
	or	ecx, 1
	mov	dword ptr [rax + 8], ecx
.label_1496:
	mov	dword ptr [rbp - 4], 1
.label_1502:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412110

	.globl bitset_set
	.type bitset_set, @function
bitset_set:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x28]
	or	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412170

	.globl parse_bracket_element
	.type parse_bracket_element, @function
parse_bracket_element:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	al, byte ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 0x48]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 1
	jle	.label_1516
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 1
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_wchar_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 8], eax
	movsxd	rsi, dword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x18]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1515
.label_1516:
	movsxd	rax, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 0x48]
	mov	qword ptr [rcx + 0x48], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 0x1a
	je	.label_1518
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	je	.label_1518
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1c
	jne	.label_1517
.label_1518:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	call	parse_bracket_symbol
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1515
.label_1517:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x16
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_1514
	test	byte ptr [rbp - 0x39], 1
	jne	.label_1514
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x38]
	call	peek_token_bracket
	mov	ecx, dword ptr [rbp - 0x48]
	and	ecx, 0xff
	cmp	ecx, 0x15
	mov	dword ptr [rbp - 0x54], eax
	je	.label_1519
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1515
.label_1519:
	jmp	.label_1514
.label_1514:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 8], cl
	mov	dword ptr [rbp - 4], 0
.label_1515:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4122f0

	.globl build_range_exp
	.type build_range_exp, @function
build_range_exp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	al, 1
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 2
	mov	byte ptr [rbp - 0x69], al
	je	.label_1532
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 4
	mov	byte ptr [rbp - 0x69], al
	je	.label_1532
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 2
	mov	byte ptr [rbp - 0x69], al
	je	.label_1532
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 4
	sete	cl
	mov	byte ptr [rbp - 0x69], cl
.label_1532:
	mov	al, byte ptr [rbp - 0x69]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1542
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1522
.label_1542:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_1552
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdi, qword ptr [rcx + 8]
	mov	byte ptr [rbp - 0x6a], al
	call	strlen
	cmp	rax, 1
	mov	dl, byte ptr [rbp - 0x6a]
	mov	byte ptr [rbp - 0x6b], dl
	ja	.label_1526
.label_1552:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rdx], 3
	mov	byte ptr [rbp - 0x6c], cl
	jne	.label_1533
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rax + 8]
	call	strlen
	cmp	rax, 1
	seta	cl
	mov	byte ptr [rbp - 0x6c], cl
.label_1533:
	mov	al, byte ptr [rbp - 0x6c]
	mov	byte ptr [rbp - 0x6b], al
.label_1526:
	mov	al, byte ptr [rbp - 0x6b]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1543
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1522
.label_1543:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 0
	jne	.label_1553
	mov	rax, qword ptr [rbp - 0x30]
	movzx	ecx, byte ptr [rax + 8]
	mov	dword ptr [rbp - 0x70], ecx
	jmp	.label_1520
.label_1553:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_1525
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x74], ecx
	jmp	.label_1530
.label_1525:
	xor	eax, eax
	mov	dword ptr [rbp - 0x74], eax
	jmp	.label_1530
.label_1530:
	mov	eax, dword ptr [rbp - 0x74]
	mov	dword ptr [rbp - 0x70], eax
.label_1520:
	mov	eax, dword ptr [rbp - 0x70]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	jne	.label_1538
	mov	rax, qword ptr [rbp - 0x38]
	movzx	ecx, byte ptr [rax + 8]
	mov	dword ptr [rbp - 0x78], ecx
	jmp	.label_1544
.label_1538:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_1549
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 8]
	movzx	ecx, byte ptr [rax]
	mov	dword ptr [rbp - 0x7c], ecx
	jmp	.label_1521
.label_1549:
	xor	eax, eax
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_1521
.label_1521:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x78], eax
.label_1544:
	mov	eax, dword ptr [rbp - 0x78]
	mov	dword ptr [rbp - 0x40], eax
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	dword ptr [rcx], 0
	je	.label_1527
	mov	rax, qword ptr [rbp - 0x30]
	cmp	dword ptr [rax], 3
	jne	.label_1534
.label_1527:
	mov	eax, dword ptr [rbp - 0x3c]
	mov	cl, al
	mov	rsi, qword ptr [rbp - 0x20]
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x80], eax
	jmp	.label_1537
.label_1534:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x80], ecx
.label_1537:
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0x48], eax
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	dword ptr [rcx], 0
	je	.label_1546
	mov	rax, qword ptr [rbp - 0x38]
	cmp	dword ptr [rax], 3
	jne	.label_1550
.label_1546:
	mov	eax, dword ptr [rbp - 0x40]
	mov	cl, al
	mov	rsi, qword ptr [rbp - 0x20]
	movzx	edi, cl
	call	parse_byte
	mov	dword ptr [rbp - 0x84], eax
	jmp	.label_1524
.label_1550:
	mov	rax, qword ptr [rbp - 0x38]
	mov	ecx, dword ptr [rax + 8]
	mov	dword ptr [rbp - 0x84], ecx
.label_1524:
	mov	eax, dword ptr [rbp - 0x84]
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x48], -1
	je	.label_1531
	cmp	dword ptr [rbp - 0x4c], -1
	jne	.label_1539
.label_1531:
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1522
.label_1539:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	and	rdx, 0x10000
	cmp	rdx, 0
	mov	byte ptr [rbp - 0x85], cl
	je	.label_1540
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x4c]
	seta	cl
	mov	byte ptr [rbp - 0x85], cl
.label_1540:
	mov	al, byte ptr [rbp - 0x85]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1547
	mov	dword ptr [rbp - 4], 0xb
	jmp	.label_1522
.label_1547:
	jmp	.label_1529
.label_1529:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_1545
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x40]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1535
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x68]
	shl	rcx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	dl, 1
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x58], 0
	mov	byte ptr [rbp - 0x86], dl
	je	.label_1536
	cmp	qword ptr [rbp - 0x60], 0
	sete	al
	mov	byte ptr [rbp - 0x86], al
.label_1536:
	mov	al, byte ptr [rbp - 0x86]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1523
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1522
.label_1523:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_1535:
	mov	eax, dword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	dword ptr [rdx + rcx*4], eax
	mov	eax, dword ptr [rbp - 0x4c]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rcx + 0x40]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x40], rsi
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rdx*4], eax
.label_1545:
	mov	dword ptr [rbp - 0x44], 0
.label_1528:
	cmp	dword ptr [rbp - 0x44], 0x100
	jge	.label_1548
	mov	eax, dword ptr [rbp - 0x48]
	cmp	eax, dword ptr [rbp - 0x44]
	ja	.label_1551
	mov	eax, dword ptr [rbp - 0x44]
	cmp	eax, dword ptr [rbp - 0x4c]
	ja	.label_1551
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x44]
	call	bitset_set
.label_1551:
	jmp	.label_1541
.label_1541:
	mov	eax, dword ptr [rbp - 0x44]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_1528
.label_1548:
	mov	dword ptr [rbp - 4], 0
.label_1522:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412740

	.globl build_equiv_class
	.type build_equiv_class, @function
build_equiv_class:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	cmp	rax, 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1554
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1555
.label_1554:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_1555:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4127b0

	.globl build_collating_symbol
	.type build_collating_symbol, @function
build_collating_symbol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 1
	setne	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1556
	mov	dword ptr [rbp - 4], 3
	jmp	.label_1557
.label_1556:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	mov	dword ptr [rbp - 4], 0
.label_1557:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x412830

	.globl build_charclass
	.type build_charclass, @function
build_charclass:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x120
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	and	rcx, 0x400000
	cmp	rcx, 0
	je	.label_1576
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_1608
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1576
.label_1608:
	movabs	rax, OFFSET FLAT:.str.9_1
	mov	qword ptr [rbp - 0x48], rax
.label_1576:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x48]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1626
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x48]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1653
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1592
.label_1653:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
.label_1626:
	mov	rdi, qword ptr [rbp - 0x48]
	call	wctype
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdi + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rdi + 0x48], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	esi, OFFSET FLAT:.str.1_5
	call	strcmp
	cmp	eax, 0
	jne	.label_1686
	jmp	.label_1664
.label_1664:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1694
	mov	dword ptr [rbp - 0x3c], 0
.label_1729:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1704
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x60], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x60]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	je	.label_1713
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1713:
	jmp	.label_1728
.label_1728:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1729
.label_1704:
	jmp	.label_1560
.label_1694:
	mov	dword ptr [rbp - 0x3c], 0
.label_1591:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1566
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x68], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 8
	cmp	edx, 0
	je	.label_1575
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1575:
	jmp	.label_1588
.label_1588:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1591
.label_1566:
	jmp	.label_1560
.label_1560:
	jmp	.label_1597
.label_1597:
	jmp	.label_1615
.label_1686:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.10_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1611
	jmp	.label_1670
.label_1670:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1614
	mov	dword ptr [rbp - 0x3c], 0
.label_1649:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1628
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x70], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	je	.label_1634
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1634:
	jmp	.label_1698
.label_1698:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1649
.label_1628:
	jmp	.label_1657
.label_1614:
	mov	dword ptr [rbp - 0x3c], 0
.label_1676:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1659
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x78], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x78]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 2
	cmp	edx, 0
	je	.label_1667
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1667:
	jmp	.label_1562
.label_1562:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1676
.label_1659:
	jmp	.label_1657
.label_1657:
	jmp	.label_1681
.label_1681:
	jmp	.label_1613
.label_1611:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.8_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1693
	jmp	.label_1696
.label_1696:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1697
	mov	dword ptr [rbp - 0x3c], 0
.label_1561:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1709
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x80], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_1716
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1716:
	jmp	.label_1559
.label_1559:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1561
.label_1709:
	jmp	.label_1567
.label_1697:
	mov	dword ptr [rbp - 0x3c], 0
.label_1600:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1572
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x88], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x88]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x200
	cmp	edx, 0
	je	.label_1583
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1583:
	jmp	.label_1605
.label_1605:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1600
.label_1572:
	jmp	.label_1567
.label_1567:
	jmp	.label_1609
.label_1609:
	jmp	.label_1612
.label_1693:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.3_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1617
	jmp	.label_1622
.label_1622:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1624
	mov	dword ptr [rbp - 0x3c], 0
.label_1663:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1632
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x90], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x90]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1641
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1641:
	jmp	.label_1661
.label_1661:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1663
.label_1632:
	jmp	.label_1666
.label_1624:
	mov	dword ptr [rbp - 0x3c], 0
.label_1691:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1669
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x98], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x98]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x2000
	cmp	edx, 0
	je	.label_1674
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1674:
	jmp	.label_1689
.label_1689:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1691
.label_1669:
	jmp	.label_1666
.label_1666:
	jmp	.label_1699
.label_1699:
	jmp	.label_1680
.label_1617:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.9_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1706
	jmp	.label_1710
.label_1710:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1711
	mov	dword ptr [rbp - 0x3c], 0
.label_1580:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1721
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_1730
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1730:
	jmp	.label_1578
.label_1578:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1580
.label_1721:
	jmp	.label_1585
.label_1711:
	mov	dword ptr [rbp - 0x3c], 0
.label_1619:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1589
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xa8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xa8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x400
	cmp	edx, 0
	je	.label_1601
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1601:
	jmp	.label_1616
.label_1616:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1619
.label_1589:
	jmp	.label_1585
.label_1585:
	jmp	.label_1627
.label_1627:
	jmp	.label_1629
.label_1706:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.11_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1633
	jmp	.label_1637
.label_1637:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1638
	mov	dword ptr [rbp - 0x3c], 0
.label_1720:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1647
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	je	.label_1658
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1658:
	jmp	.label_1671
.label_1671:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1720
.label_1647:
	jmp	.label_1678
.label_1638:
	mov	dword ptr [rbp - 0x3c], 0
.label_1707:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1607
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xb8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xb8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x800
	cmp	edx, 0
	je	.label_1692
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1692:
	jmp	.label_1705
.label_1705:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1707
.label_1607:
	jmp	.label_1678
.label_1678:
	jmp	.label_1714
.label_1714:
	jmp	.label_1642
.label_1633:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.12_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1722
	jmp	.label_1723
.label_1723:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1726
	mov	dword ptr [rbp - 0x3c], 0
.label_1596:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1565
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_1684
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1684:
	jmp	.label_1595
.label_1595:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1596
.label_1565:
	jmp	.label_1604
.label_1726:
	mov	dword ptr [rbp - 0x3c], 0
.label_1636:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1610
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xc8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xc8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x4000
	cmp	edx, 0
	je	.label_1620
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1620:
	jmp	.label_1631
.label_1631:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1636
.label_1610:
	jmp	.label_1604
.label_1604:
	jmp	.label_1640
.label_1640:
	jmp	.label_1623
.label_1722:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.7_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1648
	jmp	.label_1569
.label_1569:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1655
	mov	dword ptr [rbp - 0x3c], 0
.label_1688:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1665
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xd0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_1708
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1708:
	jmp	.label_1685
.label_1685:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1688
.label_1665:
	jmp	.label_1593
.label_1655:
	mov	dword ptr [rbp - 0x3c], 0
.label_1679:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1700
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xd8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xd8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x100
	cmp	edx, 0
	je	.label_1654
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1654:
	jmp	.label_1727
.label_1727:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1679
.label_1700:
	jmp	.label_1593
.label_1593:
	jmp	.label_1717
.label_1717:
	jmp	.label_1602
.label_1648:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.13_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1603
	jmp	.label_1570
.label_1570:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1571
	mov	dword ptr [rbp - 0x3c], 0
.label_1702:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1584
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xe0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	je	.label_1630
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1630:
	jmp	.label_1606
.label_1606:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1702
.label_1584:
	jmp	.label_1621
.label_1571:
	mov	dword ptr [rbp - 0x3c], 0
.label_1645:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1625
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xe8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xe8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 1
	cmp	edx, 0
	je	.label_1690
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1690:
	jmp	.label_1568
.label_1568:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1645
.label_1625:
	jmp	.label_1621
.label_1621:
	jmp	.label_1656
.label_1656:
	jmp	.label_1599
.label_1603:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.14_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1639
	jmp	.label_1652
.label_1652:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1586
	mov	dword ptr [rbp - 0x3c], 0
.label_1703:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1673
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf0], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf0]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1682
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1682:
	jmp	.label_1719
.label_1719:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1703
.label_1673:
	jmp	.label_1558
.label_1586:
	mov	dword ptr [rbp - 0x3c], 0
.label_1564:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1618
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0xf8], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0xf8]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x8000
	cmp	edx, 0
	je	.label_1695
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1695:
	jmp	.label_1643
.label_1643:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1564
.label_1618:
	jmp	.label_1558
.label_1558:
	jmp	.label_1573
.label_1573:
	jmp	.label_1574
.label_1639:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.15_2
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1582
	jmp	.label_1718
.label_1718:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1712
	mov	dword ptr [rbp - 0x3c], 0
.label_1563:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1598
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x100], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x100]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	je	.label_1651
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1651:
	jmp	.label_1594
.label_1594:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1563
.label_1598:
	jmp	.label_1635
.label_1712:
	mov	dword ptr [rbp - 0x3c], 0
.label_1683:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1660
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x108], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x108]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 4
	cmp	edx, 0
	je	.label_1644
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1644:
	jmp	.label_1662
.label_1662:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1683
.label_1660:
	jmp	.label_1635
.label_1635:
	jmp	.label_1668
.label_1668:
	jmp	.label_1590
.label_1582:
	mov	rdi, qword ptr [rbp - 0x48]
	mov	eax, OFFSET FLAT:.str.16_1
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_1672
	jmp	.label_1675
.label_1675:
	cmp	qword ptr [rbp - 0x10], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1677
	mov	dword ptr [rbp - 0x3c], 0
.label_1646:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1687
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x110], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x110]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_1701
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	rcx, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rcx + rax]
	mov	esi, edx
	call	bitset_set
.label_1701:
	jmp	.label_1715
.label_1715:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1646
.label_1687:
	jmp	.label_1577
.label_1677:
	mov	dword ptr [rbp - 0x3c], 0
.label_1581:
	cmp	dword ptr [rbp - 0x3c], 0x100
	jge	.label_1725
	movsxd	rax, dword ptr [rbp - 0x3c]
	mov	qword ptr [rbp - 0x118], rax
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x118]
	movzx	edx, word ptr [rax + rcx*2]
	and	edx, 0x1000
	cmp	edx, 0
	je	.label_1650
	mov	rdi, qword ptr [rbp - 0x18]
	movsxd	rsi, dword ptr [rbp - 0x3c]
	call	bitset_set
.label_1650:
	jmp	.label_1579
.label_1579:
	mov	eax, dword ptr [rbp - 0x3c]
	add	eax, 1
	mov	dword ptr [rbp - 0x3c], eax
	jmp	.label_1581
.label_1725:
	jmp	.label_1577
.label_1577:
	jmp	.label_1587
.label_1587:
	jmp	.label_1724
.label_1672:
	mov	dword ptr [rbp - 4], 4
	jmp	.label_1592
.label_1724:
	jmp	.label_1590
.label_1590:
	jmp	.label_1574
.label_1574:
	jmp	.label_1599
.label_1599:
	jmp	.label_1602
.label_1602:
	jmp	.label_1623
.label_1623:
	jmp	.label_1642
.label_1642:
	jmp	.label_1629
.label_1629:
	jmp	.label_1680
.label_1680:
	jmp	.label_1612
.label_1612:
	jmp	.label_1613
.label_1613:
	jmp	.label_1615
.label_1615:
	mov	dword ptr [rbp - 4], 0
.label_1592:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x120
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4136b0

	.globl bitset_not
	.type bitset_not, @function
bitset_not:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], 0
.label_1731:
	cmp	dword ptr [rbp - 0xc], 4
	jge	.label_1732
	movsxd	rax, dword ptr [rbp - 0xc]
	mov	rcx, qword ptr [rbp - 8]
	mov	rax, qword ptr [rcx + rax*8]
	xor	rax, 0xffffffffffffffff
	movsxd	rcx, dword ptr [rbp - 0xc]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_1731
.label_1732:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413700

	.globl bitset_mask
	.type bitset_mask, @function
bitset_mask:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_1734:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_1733
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	and	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1734
.label_1733:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413750

	.globl re_string_char_size_at
	.type re_string_char_size_at, @function
re_string_char_size_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jne	.label_1735
	mov	dword ptr [rbp - 4], 1
	jmp	.label_1740
.label_1735:
	mov	dword ptr [rbp - 0x1c], 1
.label_1737:
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_1736
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x1c]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_1738
	jmp	.label_1736
.label_1738:
	jmp	.label_1739
.label_1739:
	mov	eax, dword ptr [rbp - 0x1c]
	add	eax, 1
	mov	dword ptr [rbp - 0x1c], eax
	jmp	.label_1737
.label_1736:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_1740:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4137e0

	.globl parse_bracket_symbol
	.type parse_bracket_symbol, @function
parse_bracket_symbol:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x22], al
	mov	dword ptr [rbp - 0x28], 0
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x68]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0x48]
	jg	.label_1750
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1748
.label_1750:
	jmp	.label_1749
.label_1749:
	cmp	dword ptr [rbp - 0x28], 0x20
	jl	.label_1751
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1748
.label_1751:
	mov	rax, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x1e
	jne	.label_1741
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_string_fetch_byte_case
	mov	byte ptr [rbp - 0x21], al
	jmp	.label_1744
.label_1741:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x21], sil
.label_1744:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x48]
	jg	.label_1745
	mov	dword ptr [rbp - 4], 7
	jmp	.label_1748
.label_1745:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	eax, ecx
	jne	.label_1752
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0x5d
	jne	.label_1752
	jmp	.label_1747
.label_1752:
	mov	al, byte ptr [rbp - 0x21]
	movsxd	rcx, dword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	byte ptr [rdx + rcx], al
	mov	eax, dword ptr [rbp - 0x28]
	add	eax, 1
	mov	dword ptr [rbp - 0x28], eax
	jmp	.label_1749
.label_1747:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	inc	rcx
	mov	qword ptr [rax + 0x48], rcx
	movsxd	rax, dword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	byte ptr [rcx + rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edx, byte ptr [rax + 8]
	mov	esi, edx
	sub	esi, 0x1a
	mov	dword ptr [rbp - 0x2c], edx
	mov	dword ptr [rbp - 0x30], esi
	je	.label_1756
	jmp	.label_1753
.label_1753:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x1c
	mov	dword ptr [rbp - 0x34], eax
	je	.label_1755
	jmp	.label_1743
.label_1743:
	mov	eax, dword ptr [rbp - 0x2c]
	sub	eax, 0x1e
	mov	dword ptr [rbp - 0x38], eax
	je	.label_1746
	jmp	.label_1754
.label_1756:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 3
	jmp	.label_1742
.label_1755:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 2
	jmp	.label_1742
.label_1746:
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 4
	jmp	.label_1742
.label_1754:
	jmp	.label_1742
.label_1742:
	mov	dword ptr [rbp - 4], 0
.label_1748:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4139b0

	.globl re_string_fetch_byte_case
	.type re_string_fetch_byte_case, @function
re_string_fetch_byte_case:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdi + 0x8b], 0
	setne	al
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rdi, ecx
	cmp	rdi, 0
	je	.label_1761
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1757
.label_1761:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8c], 0
	je	.label_1758
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	je	.label_1759
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_1759
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1757
.label_1759:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x1c], edx
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 0xffffff80
	cmp	edx, 0
	je	.label_1760
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 1], sil
	jmp	.label_1757
.label_1760:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	call	re_string_char_size_at
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x10]
	add	rsi, qword ptr [rdi + 0x48]
	mov	qword ptr [rdi + 0x48], rsi
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	mov	byte ptr [rbp - 1], cl
	jmp	.label_1757
.label_1758:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x48]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0x48], rsi
	add	rax, rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	dil, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 1], dil
.label_1757:
	movzx	eax, byte ptr [rbp - 1]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b40

	.globl parse_byte
	.type parse_byte, @function
parse_byte:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_1762
	movzx	eax, byte ptr [rbp - 1]
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_1763
.label_1762:
	movzx	edi, byte ptr [rbp - 1]
	call	btowc
	mov	dword ptr [rbp - 0x14], eax
.label_1763:
	mov	eax, dword ptr [rbp - 0x14]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413b80

	.globl fetch_number
	.type fetch_number, @function
fetch_number:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], -1
.label_1769:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	call	fetch_token
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx]
	mov	byte ptr [rbp - 0x29], al
	mov	rdx, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rdx + 8]
	and	ecx, 0xff
	cmp	ecx, 2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1773
	mov	qword ptr [rbp - 8], -2
	jmp	.label_1770
.label_1773:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 0x18
	je	.label_1772
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x2c
	jne	.label_1776
.label_1772:
	jmp	.label_1766
.label_1776:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 1
	jne	.label_1768
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0x30
	jl	.label_1768
	mov	eax, 0x39
	movzx	ecx, byte ptr [rbp - 0x29]
	cmp	eax, ecx
	jl	.label_1768
	cmp	qword ptr [rbp - 0x28], -2
	jne	.label_1764
.label_1768:
	mov	rax, -2
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1767
.label_1764:
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_1774
	movzx	eax, byte ptr [rbp - 0x29]
	sub	eax, 0x30
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x40], rcx
	jmp	.label_1775
.label_1774:
	mov	eax, 0x8000
	mov	ecx, eax
	imul	rdx, qword ptr [rbp - 0x28], 0xa
	movzx	eax, byte ptr [rbp - 0x29]
	mov	esi, eax
	add	rdx, rsi
	sub	rdx, 0x30
	cmp	rcx, rdx
	jge	.label_1765
	mov	eax, 0x8000
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_1771
.label_1765:
	imul	rax, qword ptr [rbp - 0x28], 0xa
	movzx	ecx, byte ptr [rbp - 0x29]
	mov	edx, ecx
	add	rax, rdx
	sub	rax, 0x30
	mov	qword ptr [rbp - 0x48], rax
.label_1771:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
.label_1775:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
.label_1767:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1769
.label_1766:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_1770:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413d00

	.globl duplicate_tree
	.type duplicate_tree, @function
duplicate_tree:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x28]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rax
.label_1786:
	xor	eax, eax
	mov	ecx, eax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 0x28
	mov	rsi, rcx
	mov	qword ptr [rbp - 0x48], rdx
	mov	rdx, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	call	create_token_tree
	mov	rcx, qword ptr [rbp - 0x30]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	cmp	qword ptr [rax], 0
	jne	.label_1783
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1778
.label_1783:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	edx, dword ptr [rax + 0x30]
	and	edx, 0xfffbffff
	or	edx, 0x40000
	mov	dword ptr [rax + 0x30], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_1781
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1782
.label_1781:
	mov	qword ptr [rbp - 0x40], 0
.label_1777:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x40]
	mov	byte ptr [rbp - 0x49], al
	je	.label_1784
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x49], cl
.label_1784:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_1785
	jmp	.label_1779
.label_1785:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_1780
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1778
.label_1780:
	jmp	.label_1777
.label_1779:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x30], rax
.label_1782:
	jmp	.label_1786
.label_1778:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413e70

	.globl mark_opt_subexp
	.type mark_opt_subexp, @function
mark_opt_subexp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 0x11
	jne	.label_1787
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1787
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xfff7ffff
	or	ecx, 0x80000
	mov	dword ptr [rax + 0x30], ecx
.label_1787:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413ed0

	.globl preorder
	.type preorder, @function
preorder:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x28], rdx
.label_1796:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	rax
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1795
	mov	eax, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1794
.label_1795:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1788
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1792
.label_1788:
	mov	qword ptr [rbp - 0x38], 0
.label_1797:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rcx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0x39], al
	je	.label_1791
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_1791:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_1793
	jmp	.label_1789
.label_1793:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jne	.label_1790
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1794
.label_1790:
	jmp	.label_1797
.label_1789:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x28], rax
.label_1792:
	jmp	.label_1796
.label_1794:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x413fd0

	.globl optimize_subexps
	.type optimize_subexps, @function
optimize_subexps:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 4
	jne	.label_1801
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0xe0], 0
	je	.label_1801
	mov	eax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	dword ptr [rbp - 0x1c], edx
	movsxd	rcx, dword ptr [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xe0]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	edx, ecx
	mov	ecx, edx
	shl	eax, cl
	movsxd	rsi, eax
	mov	rdi, qword ptr [rbp - 0x18]
	or	rsi, qword ptr [rdi + 0xa0]
	mov	qword ptr [rdi + 0xa0], rsi
	jmp	.label_1800
.label_1801:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1798
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1798
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1798
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1802
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_1802:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xe0]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xe0]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x28], 0x40
	jge	.label_1799
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x18]
	and	rdx, qword ptr [rsi + 0xa0]
	mov	qword ptr [rsi + 0xa0], rdx
.label_1799:
	jmp	.label_1798
.label_1798:
	jmp	.label_1800
.label_1800:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414160

	.globl lower_subexps
	.type lower_subexps, @function
lower_subexps:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], 0
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	je	.label_1803
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1803
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 8]
	call	lower_subexp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1806
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx], rax
.label_1806:
	jmp	.label_1803
.label_1803:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1804
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0x11
	jne	.label_1804
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x10]
	call	lower_subexp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1805
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
.label_1805:
	jmp	.label_1804
.label_1804:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414260

	.globl calc_first
	.type calc_first, @function
calc_first:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 0x30]
	and	eax, 0xff
	cmp	eax, 0x10
	jne	.label_1807
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_1810
.label_1807:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x18], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 0x28]
	mov	rdx, qword ptr [rax + 0x30]
	call	re_dfa_add_node
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x38], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x38], -1
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1811
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1809
.label_1811:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	cmp	ecx, 0xc
	jne	.label_1808
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 0x28]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rdx]
	mov	esi, dword ptr [rax + 8]
	and	ecx, 0x3ff
	shl	ecx, 8
	and	esi, 0xfffc00ff
	or	esi, ecx
	mov	dword ptr [rax + 8], esi
.label_1808:
	jmp	.label_1810
.label_1810:
	mov	dword ptr [rbp - 4], 0
.label_1809:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414370

	.globl calc_next
	.type calc_next, @function
calc_next:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	movzx	eax, byte ptr [rsi + 0x30]
	mov	ecx, eax
	sub	ecx, 0xb
	mov	dword ptr [rbp - 0x14], eax
	mov	dword ptr [rbp - 0x18], ecx
	je	.label_1815
	jmp	.label_1816
.label_1816:
	mov	eax, dword ptr [rbp - 0x14]
	sub	eax, 0x10
	mov	dword ptr [rbp - 0x1c], eax
	je	.label_1818
	jmp	.label_1813
.label_1815:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1814
.label_1818:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
	jmp	.label_1814
.label_1813:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1812
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 0x20], rax
.label_1812:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1817
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 0x20], rax
.label_1817:
	jmp	.label_1814
.label_1814:
	xor	eax, eax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414440

	.globl link_nfa_nodes
	.type link_nfa_nodes, @function
link_nfa_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x20], rsi
	mov	dword ptr [rbp - 0x24], 0
	mov	rsi, qword ptr [rbp - 0x10]
	movzx	eax, byte ptr [rsi + 0x30]
	add	eax, -2
	mov	esi, eax
	sub	eax, 0xe
	mov	qword ptr [rbp - 0x40], rsi
	mov	dword ptr [rbp - 0x44], eax
	ja	.label_1819
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_1823]]
	jmp	rcx
.label_3240:
	jmp	.label_1821
.label_3236:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x20], 0
	jne	.label_1824
	jmp	.label_1822
.label_1824:
	movabs	rdi, OFFSET FLAT:.str.17_2
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x59f
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1822:
	jmp	.label_1821
.label_3239:
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax + 0xb0]
	and	cl, 0xfe
	or	cl, 1
	mov	byte ptr [rax + 0xb0], cl
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	je	.label_1825
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1820
.label_1825:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x30], rax
.label_1820:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_1834
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x18]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1833
.label_1834:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_1833:
	cmp	qword ptr [rbp - 0x30], -1
	jle	.label_1828
	jmp	.label_1831
.label_1828:
	movabs	rdi, OFFSET FLAT:.str.18_2
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5af
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1831:
	cmp	qword ptr [rbp - 0x38], -1
	jle	.label_1826
	jmp	.label_1829
.label_1826:
	movabs	rdi, OFFSET FLAT:.str.19_1
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5b0
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1829:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_2
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1821
.label_3238:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rsi, qword ptr [rcx + 0x38]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
	jmp	.label_1821
.label_3237:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rax + 0x30]
	and	esi, 0xff
	cmp	esi, 4
	jne	.label_1830
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x20], 0x18
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x24], eax
.label_1830:
	jmp	.label_1821
.label_1819:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x30]
	and	ecx, 0xff
	and	ecx, 8
	cmp	ecx, 0
	jne	.label_1832
	jmp	.label_1827
.label_1832:
	movabs	rdi, OFFSET FLAT:.str.20_0
	movabs	rsi, OFFSET FLAT:.str.6_1
	mov	edx, 0x5c2
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.link_nfa_nodes
	call	__assert_fail
.label_1827:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x20]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
.label_1821:
	mov	eax, dword ptr [rbp - 0x24]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414700

	.globl calc_eclosure
	.type calc_eclosure, @function
calc_eclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1841:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_1842
	test	byte ptr [rbp - 0x19], 1
	jne	.label_1839
	jmp	.label_1840
.label_1839:
	mov	byte ptr [rbp - 0x19], 0
	mov	qword ptr [rbp - 0x18], 0
.label_1842:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	je	.label_1837
	jmp	.label_1835
.label_1837:
	lea	rdi, [rbp - 0x38]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x20], eax
	cmp	dword ptr [rbp - 0x20], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1843
	mov	eax, dword ptr [rbp - 0x20]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1836
.label_1843:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1838
	mov	byte ptr [rbp - 0x19], 1
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
.label_1838:
	jmp	.label_1835
.label_1835:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1841
.label_1840:
	mov	dword ptr [rbp - 4], 0
.label_1836:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414800

	.globl calc_inveclosure
	.type calc_inveclosure, @function
calc_inveclosure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_1846:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1851
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	imul	rdi, qword ptr [rbp - 0x20], 0x18
	add	rcx, rdi
	mov	rdi, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1846
.label_1851:
	mov	qword ptr [rbp - 0x18], 0
.label_1849:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x10]
	jae	.label_1844
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x20], 0
.label_1845:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x30]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1848
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x30]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_insert_last
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	al, byte ptr [rbp - 0x21]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1852
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1847
.label_1852:
	jmp	.label_1853
.label_1853:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1845
.label_1848:
	jmp	.label_1850
.label_1850:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_1849
.label_1844:
	mov	dword ptr [rbp - 4], 0
.label_1847:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414940

	.globl lower_subexp
	.type lower_subexp, @function
lower_subexp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	al, byte ptr [rdx + 0x38]
	shr	al, 4
	and	al, 1
	movzx	ecx, al
	cmp	ecx, 0
	je	.label_1854
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	je	.label_1854
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x28], 0x40
	jge	.label_1857
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 0x28]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x58]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	jne	.label_1854
.label_1857:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1858
.label_1854:
	xor	eax, eax
	mov	ecx, eax
	mov	eax, 8
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rcx
	mov	rdx, rcx
	mov	ecx, eax
	call	create_tree
	xor	ecx, ecx
	mov	edx, ecx
	mov	ecx, 9
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, rdx
	call	create_tree
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_1859
	mov	ecx, 0x10
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	call	create_tree
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_1860
.label_1859:
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x60], rax
.label_1860:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, 0x10
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x48]
	call	create_tree
	mov	r8b, 1
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	mov	byte ptr [rbp - 0x61], r8b
	je	.label_1855
	mov	al, 1
	cmp	qword ptr [rbp - 0x48], 0
	mov	byte ptr [rbp - 0x61], al
	je	.label_1855
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x61], al
	je	.label_1855
	cmp	qword ptr [rbp - 0x40], 0
	sete	al
	mov	byte ptr [rbp - 0x61], al
.label_1855:
	mov	al, byte ptr [rbp - 0x61]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1856
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1858
.label_1856:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rcx + 0x28], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rax + 0x30]
	shr	edx, 0x13
	and	edx, 1
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 0x30]
	and	edx, 1
	mov	edi, edx
	shl	edi, 0x13
	and	esi, 0xfff7ffff
	or	esi, edi
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x38]
	mov	esi, dword ptr [rax + 0x30]
	and	edx, 1
	shl	edx, 0x13
	and	esi, 0xfff7ffff
	or	esi, edx
	mov	dword ptr [rax + 0x30], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
.label_1858:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414b50

	.globl re_dfa_add_node
	.type re_dfa_add_node, @function
re_dfa_add_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rdx, qword ptr [rsi + 8]
	setae	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1866
	movabs	rax, 0xaaaaaaaaaaaaaaa
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x58], 0x18
	cmp	rax, qword ptr [rbp - 0x28]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1862
	mov	qword ptr [rbp - 8], -1
	jmp	.label_1861
.label_1862:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1867
	mov	qword ptr [rbp - 8], -1
	jmp	.label_1861
.label_1867:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	imul	rsi, qword ptr [rbp - 0x28], 0x18
	mov	rdi, rax
	call	realloc
	mov	dl, 1
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x30], 0
	mov	byte ptr [rbp - 0x59], dl
	je	.label_1864
	mov	al, 1
	cmp	qword ptr [rbp - 0x38], 0
	mov	byte ptr [rbp - 0x59], al
	je	.label_1864
	mov	al, 1
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x59], al
	je	.label_1864
	cmp	qword ptr [rbp - 0x48], 0
	sete	al
	mov	byte ptr [rbp - 0x59], al
.label_1864:
	mov	al, byte ptr [rbp - 0x59]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_1863
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], -1
	jmp	.label_1861
.label_1863:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x18], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x20], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx + 8], rax
.label_1866:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xfffc00ff
	mov	dword ptr [rax + 8], edx
	mov	edx, dword ptr [rbp - 0x10]
	and	edx, 0xff
	cmp	edx, 5
	jne	.label_1865
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	dword ptr [rcx + 0xb4], 1
	mov	byte ptr [rbp - 0x5a], al
	jg	.label_1868
.label_1865:
	mov	eax, dword ptr [rbp - 0x10]
	and	eax, 0xff
	cmp	eax, 6
	sete	cl
	mov	byte ptr [rbp - 0x5a], cl
.label_1868:
	mov	al, byte ptr [rbp - 0x5a]
	xor	ecx, ecx
	mov	edx, 0x18
	mov	esi, edx
	and	al, 1
	movzx	edx, al
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	shl	rdi, 4
	add	rdi, qword ptr [r8]
	mov	r9d, dword ptr [rdi + 8]
	and	edx, 1
	shl	edx, 0x14
	and	r9d, 0xffefffff
	or	r9d, edx
	mov	dword ptr [rdi + 8], r9d
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [r8 + 0x18]
	mov	qword ptr [r8 + rdi*8], -1
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdi + 0x28]
	mov	r8, qword ptr [rbp - 0x20]
	imul	r8, qword ptr [r8 + 0x10], 0x18
	add	rdi, r8
	mov	qword ptr [rbp - 0x68], rsi
	mov	esi, ecx
	mov	rdx, qword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x6c], ecx
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x30]
	mov	rdi, qword ptr [rbp - 0x20]
	imul	rdi, qword ptr [rdi + 0x10], 0x18
	add	rdx, rdi
	mov	rdi, rdx
	mov	esi, dword ptr [rbp - 0x6c]
	mov	rdx, qword ptr [rbp - 0x68]
	call	memset
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rdx + 0x10]
	mov	r8, rdi
	add	r8, 1
	mov	qword ptr [rdx + 0x10], r8
	mov	qword ptr [rbp - 8], rdi
.label_1861:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414ea0

	.globl re_node_set_init_2
	.type re_node_set_init_2, @function
re_node_set_init_2:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 0x10
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx], 2
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_1874
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1871
.label_1874:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_1870
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 1
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_1869
.label_1870:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 2
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_1873
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
	jmp	.label_1872
.label_1873:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + 8], rax
.label_1872:
	jmp	.label_1869
.label_1869:
	mov	dword ptr [rbp - 4], 0
.label_1871:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x414fb0

	.globl re_node_set_init_1
	.type re_node_set_init_1, @function
re_node_set_init_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	eax, 8
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi], 1
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 1
	mov	rdi, rcx
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1876
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1875
.label_1876:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_1875:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415050

	.globl calc_eclosure_iter
	.type calc_eclosure_iter, @function
calc_eclosure_iter:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, cl
	lea	r8, [rbp - 0x48]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	and	al, 1
	mov	byte ptr [rbp - 0x21], al
	mov	byte ptr [rbp - 0x4a], 0
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	imul	rdx, rdx, 0x18
	add	rdx, qword ptr [rsi + 0x28]
	mov	rdx, qword ptr [rdx + 8]
	add	rdx, 1
	mov	rdi, r8
	mov	rsi, rdx
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1884
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1882
.label_1884:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], -1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	cmp	edx, 0
	je	.label_1877
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	je	.label_1877
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x12
	and	edx, 1
	cmp	edx, 0
	jne	.label_1877
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [r8]
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
	je	.label_1878
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1882
.label_1878:
	jmp	.label_1877
.label_1877:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	je	.label_1890
	mov	qword ptr [rbp - 0x30], 0
.label_1888:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1886
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], -1
	jne	.label_1893
	mov	byte ptr [rbp - 0x4a], 1
	jmp	.label_1887
.label_1893:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1879
	lea	rdi, [rbp - 0x68]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x70]
	call	calc_eclosure_iter
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_1889
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1882
.label_1889:
	jmp	.label_1885
.label_1879:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x58], rax
.label_1885:
	lea	rdi, [rbp - 0x48]
	lea	rsi, [rbp - 0x68]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_1883
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1882
.label_1883:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1892
	mov	byte ptr [rbp - 0x4a], 1
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	free
.label_1892:
	jmp	.label_1887
.label_1887:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_1888
.label_1886:
	jmp	.label_1890
.label_1890:
	lea	rdi, [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x49], al
	mov	al, byte ptr [rbp - 0x49]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_1881
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1882
.label_1881:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_1891
	test	byte ptr [rbp - 0x21], 1
	jne	.label_1891
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	qword ptr [rax + 8], 0
	jmp	.label_1880
.label_1891:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], rcx
.label_1880:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rax], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 0x10], rcx
	mov	dword ptr [rbp - 4], 0
.label_1882:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415400

	.globl re_node_set_alloc
	.type re_node_set_alloc, @function
re_node_set_alloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 8], 0
	mov	rsi, qword ptr [rbp - 0x18]
	shl	rsi, 3
	mov	rdi, rsi
	call	malloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1895
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1894
.label_1895:
	mov	dword ptr [rbp - 4], 0
.label_1894:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415480

	.globl duplicate_node_closure
	.type duplicate_node_closure, @function
duplicate_node_closure:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	r8d, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 0x48], r8d
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x40], rcx
.label_1913:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	jne	.label_1908
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1899
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1899:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_1914
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1914:
	jmp	.label_1904
.label_1908:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1906
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_1910
.label_1906:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jne	.label_1915
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_1896
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_1896
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1901
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1901:
	jmp	.label_1910
.label_1896:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	or	edx, dword ptr [rbp - 0x48]
	mov	dword ptr [rbp - 0x48], edx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1912
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1912:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1900
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1900:
	jmp	.label_1909
.label_1915:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	qword ptr [rax + 8], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	search_duplicated_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	jne	.label_1898
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1905
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1905:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1916
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1916:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x48]
	call	duplicate_node_closure
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_1907
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_1897
.label_1907:
	jmp	.label_1903
.label_1898:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1918
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1918:
	jmp	.label_1903
.label_1903:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	edx, dword ptr [rbp - 0x48]
	call	duplicate_node
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], -1
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1917
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1917:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	al, byte ptr [rbp - 0x41]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_1902
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1897
.label_1902:
	jmp	.label_1909
.label_1909:
	jmp	.label_1911
.label_1911:
	jmp	.label_1904
.label_1904:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_1913
.label_1910:
	mov	dword ptr [rbp - 4], 0
.label_1897:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415980

	.globl re_node_set_merge
	.type re_node_set_merge, @function
re_node_set_merge:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1919
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1931
.label_1919:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1927
.label_1931:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	mov	rdx, qword ptr [rbp - 0x10]
	add	rcx, qword ptr [rdx + 8]
	cmp	rax, rcx
	jge	.label_1938
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1923
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1927
.label_1923:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_1938:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1925
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1927
.label_1925:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	add	rax, rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1934:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x20], 0
	mov	byte ptr [rbp - 0x49], cl
	jl	.label_1935
	cmp	qword ptr [rbp - 0x28], 0
	setge	al
	mov	byte ptr [rbp - 0x49], al
.label_1935:
	mov	al, byte ptr [rbp - 0x49]
	test	al, 1
	jne	.label_1921
	jmp	.label_1929
.label_1921:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1930
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1922
.label_1930:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_1932
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8 - 8], rax
	jmp	.label_1920
.label_1932:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
.label_1920:
	jmp	.label_1922
.label_1922:
	jmp	.label_1934
.label_1929:
	cmp	qword ptr [rbp - 0x20], 0
	jl	.label_1939
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, rax
	mov	qword ptr [rbp - 0x30], rcx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
.label_1939:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	add	rax, rcx
	sub	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1933
	mov	dword ptr [rbp - 4], 0
	jmp	.label_1927
.label_1933:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_1937:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_1940
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x38], rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x38], 0
	jne	.label_1936
	jmp	.label_1926
.label_1936:
	jmp	.label_1928
.label_1940:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_1924
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1926
.label_1924:
	jmp	.label_1928
.label_1928:
	jmp	.label_1937
.label_1926:
	mov	dword ptr [rbp - 4], 0
.label_1927:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415d90

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
	jne	.label_1945
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_1
	cmp	eax, 0
	sete	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_1941
.label_1945:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	jne	.label_1950
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
	jmp	.label_1941
.label_1950:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jne	.label_1946
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1948
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1941
.label_1948:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1946:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	rax, qword ptr [rcx]
	jge	.label_1944
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1951:
	cmp	qword ptr [rbp - 0x20], 0
	jle	.label_1947
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1951
.label_1947:
	jmp	.label_1942
.label_1944:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1943:
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jle	.label_1949
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1943
.label_1949:
	jmp	.label_1942
.label_1942:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	byte ptr [rbp - 1], 1
.label_1941:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x415fa0

	.globl duplicate_node
	.type duplicate_node, @function
duplicate_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], edx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 8]
	shl	rsi, 4
	add	rsi, qword ptr [rax]
	mov	rax, qword ptr [rsi]
	mov	rdx, qword ptr [rsi + 8]
	mov	rsi, rax
	call	re_dfa_add_node
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], -1
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1952
	mov	eax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	and	eax, 0x3ff
	shl	eax, 8
	and	esi, 0xfffc00ff
	or	esi, eax
	mov	dword ptr [rcx + 8], esi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	shr	eax, 8
	and	eax, 0x3ff
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	shr	esi, 8
	and	esi, 0x3ff
	or	esi, eax
	mov	eax, dword ptr [rcx + 8]
	and	esi, 0x3ff
	shl	esi, 8
	and	eax, 0xfffc00ff
	or	eax, esi
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xfffbffff
	or	eax, 0x40000
	mov	dword ptr [rcx + 8], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0x20]
	mov	qword ptr [rdi + rdx*8], rcx
.label_1952:
	mov	rax, qword ptr [rbp - 0x20]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4160b0

	.globl search_duplicated_node
	.type search_duplicated_node, @function
search_duplicated_node:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	sub	rsi, 1
	mov	qword ptr [rbp - 0x28], rsi
.label_1955:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	shl	rdx, 4
	add	rdx, qword ptr [rsi]
	mov	eax, dword ptr [rdx + 8]
	shr	eax, 0x12
	and	eax, 1
	cmp	eax, 0
	mov	byte ptr [rbp - 0x29], cl
	je	.label_1958
	cmp	qword ptr [rbp - 0x28], 0
	setg	al
	mov	byte ptr [rbp - 0x29], al
.label_1958:
	mov	al, byte ptr [rbp - 0x29]
	test	al, 1
	jne	.label_1954
	jmp	.label_1957
.label_1954:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_1956
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	esi, dword ptr [rcx + 8]
	shr	esi, 8
	and	esi, 0x3ff
	cmp	eax, esi
	jne	.label_1956
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1953
.label_1956:
	jmp	.label_1959
.label_1959:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_1955
.label_1957:
	mov	qword ptr [rbp - 8], -1
.label_1953:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416190

	.globl re_node_set_insert_last
	.type re_node_set_insert_last, @function
re_node_set_insert_last:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_1960
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	add	rax, 1
	shl	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x20], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_1962
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1961
.label_1962:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_1960:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	mov	byte ptr [rbp - 1], 1
.label_1961:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416260

	.globl re_node_set_init_copy
	.type re_node_set_init_copy, @function
re_node_set_init_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	qword ptr [rsi + 8], 0
	jle	.label_1963
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_1964
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax], 0
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_1966
.label_1964:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_1965
.label_1963:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	memset
.label_1965:
	mov	dword ptr [rbp - 4], 0
.label_1966:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416350

	.globl re_node_set_contains
	.type re_node_set_contains, @function
re_node_set_contains:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	qword ptr [rsi + 8], 0
	jg	.label_1973
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1972
.label_1973:
	mov	qword ptr [rbp - 0x20], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
.label_1970:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jae	.label_1968
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0x28]
	shr	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_1974
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1971
.label_1974:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_1971:
	jmp	.label_1970
.label_1968:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_1969
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_1967
.label_1969:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x38], rcx
	jmp	.label_1967
.label_1967:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1972:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416430

	.globl re_acquire_state_context
	.type re_acquire_state_context, @function
re_acquire_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	jne	.label_1980
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1981
.label_1980:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	esi, dword ptr [rbp - 0x24]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 0
.label_1975:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx]
	jge	.label_1977
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	jne	.label_1979
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xf
	movzx	edx, cl
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_1979
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_compare
	test	al, 1
	jne	.label_1976
	jmp	.label_1979
.label_1976:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_1981
.label_1979:
	jmp	.label_1982
.label_1982:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_1975
.label_1977:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	edx, dword ptr [rbp - 0x24]
	mov	rcx, qword ptr [rbp - 0x30]
	call	create_cd_newstate
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r8b
	and	r8b, 1
	movzx	edx, r8b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_1978
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_1978:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_1981:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416590

	.globl calc_state_hash
	.type calc_state_hash, @function
calc_state_hash:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 8]
	mov	esi, dword ptr [rbp - 0xc]
	mov	eax, esi
	add	rdi, rax
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], 0
.label_1983:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1984
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_1983
.label_1984:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416600

	.globl re_node_set_compare
	.type re_node_set_compare, @function
re_node_set_compare:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_1985
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_1985
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	je	.label_1986
.label_1985:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1989
.label_1986:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x20], rax
.label_1988:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	cmp	rax, 0
	jl	.label_1990
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_1987
	mov	byte ptr [rbp - 1], 0
	jmp	.label_1989
.label_1987:
	jmp	.label_1988
.label_1990:
	mov	byte ptr [rbp - 1], 1
.label_1989:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4166b0

	.globl create_cd_newstate
	.type create_cd_newstate, @function
create_cd_newstate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 0x70
	mov	r8d, eax
	mov	eax, 1
	mov	r9d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x38], 0
	mov	rdi, r8
	mov	rsi, r9
	call	calloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	r10b
	and	r10b, 1
	movzx	edx, r10b
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2008
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1995
.label_2008:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2001
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1995
.label_2001:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dl, al
	mov	sil, byte ptr [rcx + 0x68]
	and	dl, 0xf
	and	sil, 0xf0
	or	sil, dl
	mov	byte ptr [rcx + 0x68], sil
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 8
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_2005:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_1997
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x54], esi
	mov	rax, qword ptr [rbp - 0x50]
	mov	esi, dword ptr [rax + 8]
	shr	esi, 8
	and	esi, 0x3ff
	mov	dword ptr [rbp - 0x58], esi
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_1999
	cmp	dword ptr [rbp - 0x58], 0
	jne	.label_1999
	jmp	.label_1992
.label_1999:
	mov	rax, qword ptr [rbp - 0x50]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	and	ecx, 1
	mov	rax, qword ptr [rbp - 0x48]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x54], 2
	jne	.label_1994
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2004
.label_1994:
	cmp	dword ptr [rbp - 0x54], 4
	jne	.label_2006
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xbf
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
.label_2006:
	jmp	.label_2004
.label_2004:
	cmp	dword ptr [rbp - 0x58], 0
	je	.label_2003
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax + 0x50]
	mov	rcx, qword ptr [rbp - 0x48]
	add	rcx, 8
	cmp	rax, rcx
	jne	.label_1993
	mov	eax, 0x18
	mov	edi, eax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rdi + 0x50], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	qword ptr [rax + 0x50], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2000
	mov	rdi, qword ptr [rbp - 0x48]
	call	free_state
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1995
.label_2000:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, qword ptr [rax + 0x50]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	cmp	eax, 0
	je	.label_2010
	mov	qword ptr [rbp - 8], 0
	jmp	.label_1995
.label_2010:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_1993:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 1
	cmp	eax, 0
	je	.label_1998
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	je	.label_1996
.label_1998:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 2
	cmp	eax, 0
	je	.label_2002
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_1996
.label_2002:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x10
	cmp	eax, 0
	je	.label_2007
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	je	.label_1996
.label_2007:
	mov	eax, dword ptr [rbp - 0x58]
	and	eax, 0x40
	cmp	eax, 0
	je	.label_1991
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 4
	cmp	eax, 0
	jne	.label_1991
.label_1996:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x30]
	sub	rcx, qword ptr [rbp - 0x38]
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
.label_1991:
	jmp	.label_2003
.label_2003:
	jmp	.label_1992
.label_1992:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2005
.label_1997:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x28]
	call	register_state
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2009
	mov	rdi, qword ptr [rbp - 0x48]
	call	free_state
	mov	qword ptr [rbp - 0x48], 0
.label_2009:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
.label_1995:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416a40

	.globl re_node_set_remove_at
	.type re_node_set_remove_at, @function
re_node_set_remove_at:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jl	.label_2011
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jl	.label_2014
.label_2011:
	jmp	.label_2013
.label_2014:
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rax + 8]
	add	rcx, -1
	mov	qword ptr [rax + 8], rcx
.label_2012:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2013
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2012
.label_2013:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416ad0

	.globl register_state
	.type register_state, @function
register_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rdx
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2018
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2015
.label_2018:
	mov	qword ptr [rbp - 0x38], 0
.label_2020:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2022
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	jne	.label_2017
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	re_node_set_insert_last
	test	al, 1
	jne	.label_2021
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2015
.label_2021:
	jmp	.label_2017
.label_2017:
	jmp	.label_2019
.label_2019:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2020
.label_2022:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	and	rcx, qword ptr [rdx + 0x88]
	imul	rcx, rcx, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx]
	setle	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_2016
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	shl	rax, 1
	add	rax, 2
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2023
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2015
.label_2023:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
.label_2016:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx], rsi
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rdx*8], rax
	mov	dword ptr [rbp - 4], 0
.label_2015:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416cc0

	.globl re_copy_regs
	.type re_copy_regs, @function
re_copy_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	dword ptr [rbp - 0x28], 1
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2024
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2027
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2025
.label_2027:
	mov	rax, qword ptr [rbp - 0x38]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2028
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2025
.label_2028:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	jmp	.label_2029
.label_2024:
	cmp	dword ptr [rbp - 0x24], 1
	jne	.label_2034
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	seta	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2037
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2036
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2025
.label_2036:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2038
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2025
.label_2038:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2037:
	jmp	.label_2026
.label_2034:
	cmp	dword ptr [rbp - 0x24], 2
	jne	.label_2039
	jmp	.label_2032
.label_2039:
	movabs	rdi, OFFSET FLAT:.str.23_0
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1f9
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_2032:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	jb	.label_2041
	jmp	.label_2030
.label_2041:
	movabs	rdi, OFFSET FLAT:.str.24
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x1fb
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.re_copy_regs
	call	__assert_fail
.label_2030:
	mov	dword ptr [rbp - 0x28], 2
.label_2026:
	jmp	.label_2029
.label_2029:
	mov	qword ptr [rbp - 0x30], 0
.label_2035:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x20]
	jge	.label_2031
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2035
.label_2031:
	jmp	.label_2033
.label_2033:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_2040
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rcx + rax*8], -1
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2033
.label_2040:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_2025:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x416fd0

	.globl re_string_allocate
	.type re_string_allocate, @function
re_string_allocate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	al, r9b
	mov	r10, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	qword ptr [rbp - 0x40], r10
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	movsxd	rdx, dword ptr [rdx + 0xb4]
	cmp	rcx, rdx
	jge	.label_2045
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rax, dword ptr [rax + 0xb4]
	mov	qword ptr [rbp - 0x28], rax
.label_2045:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2042
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_2048
.label_2042:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x58], rax
.label_2048:
	mov	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x50], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8b, byte ptr [rbp - 0x31]
	mov	r9, qword ptr [rbp - 0x40]
	and	r8b, 1
	movzx	r8d, r8b
	call	re_string_construct_common
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x50]
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2046
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2044
.label_2046:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 0xb8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	dl, byte ptr [rax + 0xb0]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	mov	dl, sil
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8e], dl
	mov	rax, qword ptr [rbp - 0x10]
	movzx	esi, byte ptr [rax + 0x8b]
	cmp	esi, 0
	je	.label_2047
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_2050
.label_2047:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x60], rax
.label_2050:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8b]
	cmp	edx, 0
	jne	.label_2051
	mov	rax, qword ptr [rbp - 0x40]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2049
.label_2051:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_2043
.label_2049:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
.label_2043:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	mov	dword ptr [rbp - 4], 0
.label_2044:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417190

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
	jle	.label_2056
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, -1
	mov	qword ptr [rbp - 0x28], 0x28
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, rcx
	xor	edx, edx
	div	qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	cmp	rcx, rax
	jae	.label_2055
	movabs	rax, 0x7fffffffffffffff
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2058
.label_2055:
	mov	rax, -1
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x38], rax
.label_2058:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rbp - 0x20]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2052
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2054
.label_2052:
	imul	rdi, qword ptr [rbp - 0x20], 0x28
	call	malloc
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	cl, 1
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xd8], 0
	mov	byte ptr [rbp - 0x39], cl
	je	.label_2057
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xf8], 0
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_2057:
	mov	al, byte ptr [rbp - 0x39]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2053
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2054
.label_2053:
	jmp	.label_2056
.label_2056:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], 1
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf0], rax
	mov	dword ptr [rbp - 4], 0
.label_2054:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417310

	.globl re_string_reconstruct
	.type re_string_reconstruct, @function
re_string_reconstruct:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x28]
	cmp	rsi, qword ptr [rbp - 0x18]
	setle	al
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_2067
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2090
.label_2067:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2097
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
.label_2097:
	mov	eax, 6
	mov	ecx, 4
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x58], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x60]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rsi + 0x68], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x28], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x38], 0
	mov	rdx, qword ptr [rbp - 0x10]
	mov	byte ptr [rdx + 0x8c], 0
	mov	edi, dword ptr [rbp - 0x1c]
	and	edi, 1
	cmp	edi, 0
	cmovne	eax, ecx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx + 0x70], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	byte ptr [rdx + 0x8b], 0
	jne	.label_2103
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2103:
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rax
.label_2090:
	cmp	qword ptr [rbp - 0x28], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2073
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x38]
	setl	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2081
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2095
	mov	qword ptr [rbp - 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x38], rax
.label_2136:
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x38]
	add	rdx, qword ptr [rbp - 0x30]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2101
	mov	rax, qword ptr [rbp - 0x40]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2116
.label_2101:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2120
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2127
.label_2120:
	jmp	.label_2133
.label_2127:
	jmp	.label_2116
.label_2116:
	jmp	.label_2134
.label_2134:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	jl	.label_2136
.label_2133:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2088
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2088:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x30]
	cmp	rsi, qword ptr [rbp - 0x28]
	jle	.label_2091
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2091
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2091
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2077:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2072
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2077
.label_2072:
	jmp	.label_2094
.label_2091:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_2096:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0xad], cl
	jle	.label_2112
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	rax, qword ptr [rbp - 0x28]
	sete	dl
	mov	byte ptr [rbp - 0xad], dl
.label_2112:
	mov	al, byte ptr [rbp - 0xad]
	test	al, 1
	jne	.label_2125
	jmp	.label_2129
.label_2125:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2096
.label_2129:
	jmp	.label_2060
.label_2060:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2059
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	je	.label_2070
	jmp	.label_2059
.label_2070:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2060
.label_2059:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jne	.label_2087
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	jmp	.label_2093
.label_2087:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	sub	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_2085
	mov	qword ptr [rbp - 0x30], 0
.label_2113:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2108
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2113
.label_2108:
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_2085:
	jmp	.label_2093
.label_2093:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
.label_2094:
	jmp	.label_2135
.label_2095:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi + 0x90], 1
	jle	.label_2071
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x30]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 2
	mov	rdi, rax
	mov	rsi, rcx
	call	memmove
.label_2071:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2099
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x30]
	sub	rcx, qword ptr [rbp - 0x28]
	mov	rsi, rax
	mov	rdx, rcx
	call	memmove
.label_2099:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x30]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x30], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x38]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x38], rdx
.label_2135:
	jmp	.label_2069
.label_2081:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8c]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2123
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x60]
	sub	rax, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	byte ptr [rax + 0x8c], 0
.label_2123:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x30], 0
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2080
	mov	dword ptr [rbp - 0x54], 0xffffffff
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x89], 0
	je	.label_2092
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0x90]
	sub	rcx, rdx
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jae	.label_2098
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
.label_2098:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
.label_2105:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x70]
	jb	.label_2102
	mov	rax, qword ptr [rbp - 0x68]
	movzx	ecx, byte ptr [rax]
	and	ecx, 0xc0
	cmp	ecx, 0x80
	je	.label_2122
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 0x58]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	setne	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2130
	cmp	qword ptr [rbp - 0x88], 6
	jge	.label_2079
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_2084
.label_2079:
	mov	eax, 6
	mov	ecx, eax
	mov	qword ptr [rbp - 0xb8], rcx
	jmp	.label_2084
.label_2084:
	mov	rax, qword ptr [rbp - 0xb8]
	mov	ecx, eax
	mov	dword ptr [rbp - 0xa4], ecx
.label_2117:
	mov	eax, dword ptr [rbp - 0xa4]
	add	eax, -1
	mov	dword ptr [rbp - 0xa4], eax
	cmp	eax, 0
	jl	.label_2126
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	rcx, qword ptr [rbp - 0x68]
	movzx	edx, byte ptr [rcx + rax]
	mov	eax, edx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	mov	sil, byte ptr [rcx + rax]
	movsxd	rax, dword ptr [rbp - 0xa4]
	mov	byte ptr [rbp + rax - 0x8e], sil
	jmp	.label_2117
.label_2126:
	lea	rax, [rbp - 0x8e]
	mov	qword ptr [rbp - 0xa0], rax
.label_2130:
	lea	rdi, [rbp - 0x7c]
	lea	rax, [rbp - 0x78]
	xor	esi, esi
	mov	ecx, 8
	mov	edx, ecx
	mov	r8, rax
	mov	qword ptr [rbp - 0xc0], rdi
	mov	rdi, r8
	mov	qword ptr [rbp - 0xc8], rax
	call	memset
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0xc8]
	call	rpl_mbrtowc
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	sub	rax, rcx
	cmp	rax, qword ptr [rbp - 0x98]
	ja	.label_2068
	cmp	qword ptr [rbp - 0x98], -2
	jae	.label_2068
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x20
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x60]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x68]
	sub	rdx, rdi
	sub	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rcx
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0x54], eax
.label_2068:
	jmp	.label_2102
.label_2122:
	jmp	.label_2104
.label_2104:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, -1
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2105
.label_2102:
	jmp	.label_2092
.label_2092:
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_2111
	lea	rdx, [rbp - 0x54]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_string_skip_chars
	sub	rax, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x30], rax
.label_2111:
	cmp	dword ptr [rbp - 0x54], -1
	jne	.label_2121
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	sub	rax, 1
	mov	edx, dword ptr [rbp - 0x1c]
	mov	rsi, rax
	call	re_string_context_at
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi + 0x70], eax
	jmp	.label_2131
.label_2121:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8e]
	cmp	ecx, 0
	setne	dl
	and	dl, 1
	movzx	ecx, dl
	movsxd	rax, ecx
	cmp	rax, 0
	je	.label_2078
	mov	edi, dword ptr [rbp - 0x54]
	call	iswalnum
	cmp	eax, 0
	jne	.label_2074
	cmp	dword ptr [rbp - 0x54], 0x5f
	jne	.label_2078
.label_2074:
	mov	eax, 1
	mov	dword ptr [rbp - 0xcc], eax
	jmp	.label_2082
.label_2078:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x54], 0xa
	mov	byte ptr [rbp - 0xcd], cl
	jne	.label_2089
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0xcd], dl
.label_2089:
	mov	al, byte ptr [rbp - 0xcd]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xcc], ecx
.label_2082:
	mov	eax, dword ptr [rbp - 0xcc]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x70], eax
.label_2131:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x30], 0
	je	.label_2066
	mov	qword ptr [rbp - 0x50], 0
.label_2118:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jge	.label_2063
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	dword ptr [rcx + rax*4], 0xffffffff
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2118
.label_2063:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x8b], 0
	je	.label_2128
	mov	esi, 0xff
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 8]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rax + 0x30]
	call	memset
.label_2128:
	jmp	.label_2066
.label_2066:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x38], rax
	jmp	.label_2064
.label_2080:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	add	rax, qword ptr [rbp - 0x28]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x38], 0
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2075
	movsxd	rax, dword ptr [rbp - 0xa8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x78]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0xa8], edx
.label_2075:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0xa8]
	call	bitset_contain
	test	al, 1
	jne	.label_2107
	jmp	.label_2109
.label_2107:
	mov	eax, 1
	mov	dword ptr [rbp - 0xd4], eax
	jmp	.label_2110
.label_2109:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0xa8], 0xa
	mov	byte ptr [rbp - 0xd5], cl
	jne	.label_2114
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0xd5], dl
.label_2114:
	mov	al, byte ptr [rbp - 0xd5]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 0xd4], ecx
.label_2110:
	mov	eax, dword ptr [rbp - 0xd4]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0x70], eax
.label_2064:
	jmp	.label_2069
.label_2069:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	jne	.label_2062
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
.label_2062:
	jmp	.label_2073
.label_2073:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x58]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x58], rdx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0x68]
	sub	rdx, rax
	mov	qword ptr [rcx + 0x68], rdx
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2083
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2100
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0xac], eax
	cmp	dword ptr [rbp - 0xac], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2106
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2115
.label_2106:
	jmp	.label_2119
.label_2100:
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_wcs_buffer
.label_2119:
	jmp	.label_2086
.label_2083:
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8b]
	mov	eax, ecx
	cmp	rax, 0
	je	.label_2124
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2132
	mov	rdi, qword ptr [rbp - 0x10]
	call	build_upper_buffer
	jmp	.label_2061
.label_2132:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2065
	mov	rdi, qword ptr [rbp - 0x10]
	call	re_string_translate_buffer
.label_2065:
	jmp	.label_2061
.label_2061:
	jmp	.label_2076
.label_2124:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x30], rax
.label_2076:
	jmp	.label_2086
.label_2086:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 0x48], 0
	mov	dword ptr [rbp - 4], 0
.label_2115:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x417f70

	.globl check_matching
	.type check_matching, @function
check_matching:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, sil
	lea	rcx, [rbp - 0x5c]
	mov	qword ptr [rbp - 0x40], rdi
	and	al, 1
	mov	byte ptr [rbp - 0x41], al
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x58], rdx
	mov	qword ptr [rbp - 0x68], 0
	mov	qword ptr [rbp - 0x70], -1
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	qword ptr [rbp - 0x78], rdx
	cmp	qword ptr [rbp - 0x50], 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 0x81], al
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x90], rdx
	mov	dword ptr [rbp - 0x5c], 0
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x10], rcx
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rdi
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x48]
	mov	al, byte ptr [rcx + 0x68]
	shr	al, 7
	movzx	esi, al
	cmp	esi, 0
	je	.label_2160
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 1
	cmp	eax, 0
	je	.label_2148
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2156
.label_2148:
	cmp	dword ptr [rbp - 0x2c], 0
	jne	.label_2143
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2156
.label_2143:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_2164
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2164
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x60]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2156
.label_2164:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2170
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2156
.label_2170:
	mov	eax, dword ptr [rbp - 0x2c]
	and	eax, 4
	cmp	eax, 0
	je	.label_2172
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	rdx, qword ptr [rax + 0x50]
	mov	ecx, dword ptr [rbp - 0x2c]
	call	re_acquire_state_context
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2156
.label_2172:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2156
.label_2160:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 8], rax
.label_2156:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x80], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2140
	cmp	dword ptr [rbp - 0x5c], 0xc
	jne	.label_2149
	jmp	.label_2150
.label_2149:
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x435
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2150:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2141
.label_2140:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2152
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2154
	xor	eax, eax
	mov	edx, eax
	mov	byte ptr [rbp - 0x81], 0
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rcx, 8
	mov	rsi, rcx
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2174
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2141
.label_2174:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2137
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2145
	movsxd	rax, dword ptr [rbp - 0x5c]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2141
.label_2145:
	jmp	.label_2137
.label_2137:
	jmp	.label_2154
.label_2154:
	jmp	.label_2152
.label_2152:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	mov	edx, edx
	mov	eax, edx
	cmp	rax, 0
	je	.label_2158
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2165
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rdx, qword ptr [rbp - 0x78]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2163
.label_2165:
	test	byte ptr [rbp - 0x41], 1
	jne	.label_2151
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2141
.label_2151:
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	jmp	.label_2163
.label_2163:
	jmp	.label_2158
.label_2158:
	jmp	.label_2171
.label_2171:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x68]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x48]
	setle	dl
	xor	dl, 0xff
	test	dl, 1
	jne	.label_2177
	jmp	.label_2138
.label_2177:
	mov	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x40]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2139
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2179
.label_2139:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x30]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2144
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2144
.label_2179:
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0xa0]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2161
	cmp	dword ptr [rbp - 0x5c], 0xc
	jne	.label_2175
	jmp	.label_2176
.label_2175:
	movabs	rdi, OFFSET FLAT:.str.25
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x46c
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.check_matching
	call	__assert_fail
.label_2176:
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2141
.label_2161:
	jmp	.label_2144
.label_2144:
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	transit_state
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2147
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x80]
	call	merge_state_with_log
	mov	qword ptr [rbp - 0x80], rax
.label_2147:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2155
	cmp	dword ptr [rbp - 0x5c], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2159
	mov	qword ptr [rbp - 0x38], -2
	jmp	.label_2141
.label_2159:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2166
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2169
	test	byte ptr [rbp - 0x41], 1
	je	.label_2166
.label_2169:
	lea	rdi, [rbp - 0x5c]
	mov	rsi, qword ptr [rbp - 0x40]
	call	find_recover_state
	mov	qword ptr [rbp - 0x80], rax
	cmp	rax, 0
	jne	.label_2173
.label_2166:
	jmp	.label_2138
.label_2173:
	jmp	.label_2155
.label_2155:
	test	byte ptr [rbp - 0x81], 1
	je	.label_2167
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x80]
	jne	.label_2162
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_2178
.label_2162:
	mov	byte ptr [rbp - 0x81], 0
.label_2178:
	jmp	.label_2167
.label_2167:
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 4
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2142
	mov	rax, qword ptr [rbp - 0x80]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 7
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2146
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rax + 0x48]
	call	check_halt_state_context
	cmp	rax, 0
	je	.label_2153
.label_2146:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x68], 1
	mov	qword ptr [rbp - 0x50], 0
	test	byte ptr [rbp - 0x41], 1
	jne	.label_2157
	jmp	.label_2138
.label_2157:
	jmp	.label_2153
.label_2153:
	jmp	.label_2142
.label_2142:
	jmp	.label_2171
.label_2138:
	cmp	qword ptr [rbp - 0x50], 0
	je	.label_2168
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rcx], rax
.label_2168:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 0x38], rax
.label_2141:
	mov	rax, qword ptr [rbp - 0x38]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4185e0

	.globl check_halt_state_context
	.type check_halt_state_context, @function
check_halt_state_context:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rdx + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x2c], eax
	mov	qword ptr [rbp - 0x28], 0
.label_2185:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2184
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	edx, dword ptr [rbp - 0x2c]
	call	check_halt_node_context
	test	al, 1
	jne	.label_2182
	jmp	.label_2181
.label_2182:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2180
.label_2181:
	jmp	.label_2183
.label_2183:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2185
.label_2184:
	mov	qword ptr [rbp - 8], 0
.label_2180:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4186a0

	.globl prune_impossible_nodes
	.type prune_impossible_nodes, @function
prune_impossible_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	movabs	rax, 0x1fffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0x98]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x40], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xa8]
	mov	qword ptr [rbp - 0x28], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb0]
	mov	qword ptr [rbp - 0x20], rdi
	cmp	rax, qword ptr [rbp - 0x28]
	setbe	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2197
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2188
.label_2197:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2194
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2190
.label_2194:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2201
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x40], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2204
	mov	dword ptr [rbp - 0x2c], 0xc
	jmp	.label_2190
.label_2204:
	jmp	.label_2192
.label_2192:
	lea	rdi, [rbp - 0x78]
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	add	rcx, 1
	shl	rcx, 3
	mov	qword ptr [rbp - 0x80], rdi
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x80]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2186
	jmp	.label_2190
.label_2186:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_2191
	mov	rax, qword ptr [rbp - 0x40]
	cmp	qword ptr [rax], 0
	je	.label_2196
.label_2191:
	jmp	.label_2187
.label_2196:
	jmp	.label_2198
.label_2198:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	jge	.label_2200
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_2190
.label_2200:
	jmp	.label_2202
.label_2202:
	mov	al, 1
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	mov	byte ptr [rbp - 0x81], al
	je	.label_2203
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 4
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	setne	dl
	xor	dl, 0xff
	mov	byte ptr [rbp - 0x81], dl
.label_2203:
	mov	al, byte ptr [rbp - 0x81]
	test	al, 1
	jne	.label_2198
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x28]
	call	check_halt_state_context
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2192
.label_2187:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdi, rcx
	call	free
	mov	qword ptr [rbp - 0x40], 0
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2193
	jmp	.label_2190
.label_2193:
	jmp	.label_2199
.label_2201:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	call	sift_ctx_init
	lea	rsi, [rbp - 0x78]
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x2c], eax
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdi, rcx
	call	free
	cmp	dword ptr [rbp - 0x2c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2189
	jmp	.label_2190
.label_2189:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax], 0
	jne	.label_2195
	mov	dword ptr [rbp - 0x2c], 1
	jmp	.label_2190
.label_2195:
	jmp	.label_2199
.label_2199:
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
	mov	qword ptr [rdi + 0xb0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rdi + 0xa8], rax
	mov	dword ptr [rbp - 0x2c], 0
.label_2190:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x2c]
	mov	dword ptr [rbp - 4], ecx
.label_2188:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418a50

	.globl match_ctx_clean
	.type match_ctx_clean, @function
match_ctx_clean:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], 0
.label_2206:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xe8]
	jge	.label_2205
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x18], 0
.label_2208:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2207
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_2208
.label_2207:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x10], 0
	je	.label_2209
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_2209:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2206
.label_2205:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xe8], 0
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rax + 0xc8], 0
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418b70

	.globl set_regs
	.type set_regs, @function
set_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	al, r8b
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	and	al, 1
	mov	byte ptr [rbp - 0x29], al
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx,  qword ptr [word ptr [label_2233]]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx,  qword ptr [word ptr [label_2234]]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx,  qword ptr [word ptr [label_2235]]
	mov	qword ptr [rbp - 0x70], rcx
	mov	byte ptr [rbp - 0x89], 0
	test	byte ptr [rbp - 0x29], 1
	je	.label_2236
	lea	rax, [rbp - 0x80]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	imul	rdi, qword ptr [rax + 8], 0x30
	call	malloc
	mov	rdi, qword ptr [rbp - 0x68]
	mov	qword ptr [rdi + 0x10], rax
	mov	rax, qword ptr [rbp - 0x68]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2231
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2210
.label_2231:
	jmp	.label_2214
.label_2236:
	mov	qword ptr [rbp - 0x68], 0
.label_2214:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rdi + 0x90]
	mov	qword ptr [rbp - 0x48], rdi
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 4
	cmp	rcx, 0xfc0
	jae	.label_2225
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_2229
.label_2225:
	mov	rax, qword ptr [rbp - 0x20]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jne	.label_2238
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], 0xc
	mov	dword ptr [rbp - 0x9c], eax
	jmp	.label_2210
.label_2238:
	mov	byte ptr [rbp - 0x89], 1
.label_2229:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x20]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x40], rax
.label_2232:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jg	.label_2230
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	r8, qword ptr [rbp - 0x40]
	mov	r9, qword ptr [rbp - 0x20]
	call	update_regs
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rcx, qword ptr [rdx + 8]
	jne	.label_2218
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0xb0]
	jne	.label_2218
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2228
	mov	qword ptr [rbp - 0x98], 0
.label_2217:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_2215
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax], -1
	jle	.label_2224
	mov	rax, qword ptr [rbp - 0x98]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], -1
	jne	.label_2224
	jmp	.label_2215
.label_2224:
	jmp	.label_2213
.label_2213:
	mov	rax, qword ptr [rbp - 0x98]
	add	rax, 1
	mov	qword ptr [rbp - 0x98], rax
	jmp	.label_2217
.label_2215:
	mov	rax, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2223
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2227
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2227:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2210
.label_2223:
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pop_fail_stack
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2216
.label_2228:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2222
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2222:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2210
.label_2216:
	jmp	.label_2218
.label_2218:
	lea	rcx, [rbp - 0x40]
	lea	r9, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rsp, 0x10
	mov	qword ptr [rsp], rax
	call	proceed_next_node
	add	rsp, 0x10
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], 0
	setl	r10b
	and	r10b, 1
	movzx	r11d, r10b
	movsxd	rax, r11d
	cmp	rax, 0
	je	.label_2211
	cmp	qword ptr [rbp - 0x48], -2
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2220
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2226
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2226:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], 0xc
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2210
.label_2220:
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2212
	lea	rsi, [rbp - 0x40]
	lea	r8, [rbp - 0x60]
	mov	rdi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	pop_fail_stack
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2221
.label_2212:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2219
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2219:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2210
.label_2221:
	jmp	.label_2211
.label_2211:
	jmp	.label_2232
.label_2230:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	test	byte ptr [rbp - 0x89], 1
	je	.label_2237
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
.label_2237:
	mov	rdi, qword ptr [rbp - 0x68]
	call	free_fail_stack_return
	mov	dword ptr [rbp - 4], eax
.label_2210:
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418fb0

	.globl match_ctx_free
	.type match_ctx_free, @function
match_ctx_free:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	match_ctx_clean
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xf8]
	call	free
	mov	rdi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rdi + 0xd8]
	call	free
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x418ff0

	.globl re_string_context_at
	.type re_string_context_at, @function
re_string_context_at:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	cmp	qword ptr [rbp - 0x18], 0
	setl	al
	and	al, 1
	movzx	edx, al
	movsxd	rsi, edx
	cmp	rsi, 0
	je	.label_2251
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2244
.label_2251:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2250
	mov	eax, 0xa
	mov	ecx, 8
	mov	edx, dword ptr [rbp - 0x1c]
	and	edx, 2
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2244
.label_2250:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2249
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rax
.label_2239:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	cmp	dword ptr [rcx + rax*4], -1
	jne	.label_2240
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	jge	.label_2247
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x70]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2244
.label_2247:
	jmp	.label_2239
.label_2240:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	edx, dword ptr [rcx + rax*4]
	mov	dword ptr [rbp - 0x24], edx
	mov	rax, qword ptr [rbp - 0x10]
	movzx	edx, byte ptr [rax + 0x8e]
	cmp	edx, 0
	setne	sil
	and	sil, 1
	movzx	edx, sil
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2241
	mov	edi, dword ptr [rbp - 0x24]
	call	iswalnum
	cmp	eax, 0
	jne	.label_2242
	cmp	dword ptr [rbp - 0x24], 0x5f
	jne	.label_2241
.label_2242:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2244
.label_2241:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x24], 0xa
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2248
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x31], dl
.label_2248:
	mov	al, byte ptr [rbp - 0x31]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2244
.label_2249:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	mov	dword ptr [rbp - 0x20], edx
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rax + 0x80]
	movsxd	rsi, dword ptr [rbp - 0x20]
	call	bitset_contain
	test	al, 1
	jne	.label_2243
	jmp	.label_2246
.label_2243:
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2244
.label_2246:
	xor	eax, eax
	mov	cl, al
	cmp	dword ptr [rbp - 0x20], 0xa
	mov	byte ptr [rbp - 0x32], cl
	jne	.label_2245
	mov	rax, qword ptr [rbp - 0x10]
	movzx	ecx, byte ptr [rax + 0x8d]
	cmp	ecx, 0
	setne	dl
	mov	byte ptr [rbp - 0x32], dl
.label_2245:
	mov	al, byte ptr [rbp - 0x32]
	xor	ecx, ecx
	mov	edx, 2
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
.label_2244:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4191f0

	.globl re_string_skip_chars
	.type re_string_skip_chars, @function
re_string_skip_chars:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	dword ptr [rbp - 0x34], 0xffffffff
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	rsi, qword ptr [rbp - 8]
	add	rdx, qword ptr [rsi + 0x38]
	mov	qword ptr [rbp - 0x28], rdx
.label_2254:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x10]
	jge	.label_2258
	lea	rdi, [rbp - 0x38]
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x50]
	sub	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x20]
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rsi, rax
	call	rpl_mbrtowc
	mov	r8b, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], -2
	mov	byte ptr [rbp - 0x41], r8b
	je	.label_2253
	mov	al, 1
	cmp	qword ptr [rbp - 0x30], -1
	mov	byte ptr [rbp - 0x41], al
	je	.label_2253
	cmp	qword ptr [rbp - 0x30], 0
	sete	al
	mov	byte ptr [rbp - 0x41], al
.label_2253:
	mov	al, byte ptr [rbp - 0x41]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2259
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_2257
	cmp	qword ptr [rbp - 0x40], 0
	jne	.label_2252
.label_2257:
	mov	dword ptr [rbp - 0x34], 0
	jmp	.label_2256
.label_2252:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edx, byte ptr [rax + rcx]
	mov	dword ptr [rbp - 0x34], edx
.label_2256:
	mov	qword ptr [rbp - 0x30], 1
	mov	rax, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rax + 0x20], rcx
	jmp	.label_2255
.label_2259:
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x34], eax
.label_2255:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2254
.label_2258:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	dword ptr [rcx], eax
	mov	rax, qword ptr [rbp - 0x28]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419330

	.globl bitset_contain
	.type bitset_contain, @function
bitset_contain:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	cqo	
	idiv	rcx
	mov	rsi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rsi + rax*8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, rsi
	cqo	
	idiv	rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shr	rdx, cl
	and	rdx, 1
	cmp	rdx, 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	mov	eax, r8d
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419390

	.globl check_subexp_matching_top
	.type check_subexp_matching_top, @function
check_subexp_matching_top:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x30], 0
.label_2265:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2261
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 8
	jne	.label_2260
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	cmp	qword ptr [rax], 0x40
	jge	.label_2260
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0xa0]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x48]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	je	.label_2260
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x20]
	call	match_ctx_add_subtop
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2263
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2262
.label_2263:
	jmp	.label_2260
.label_2260:
	jmp	.label_2264
.label_2264:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2265
.label_2261:
	mov	dword ptr [rbp - 4], 0
.label_2262:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4194c0

	.globl transit_state_bkref
	.type transit_state_bkref, @function
transit_state_bkref:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0x48]
	mov	qword ptr [rbp - 0x30], rsi
	mov	qword ptr [rbp - 0x28], 0
.label_2295:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2293
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x50]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, 4
	je	.label_2270
	jmp	.label_2268
.label_2270:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2277
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 8]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rsi, qword ptr [rbp - 0x60]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2291
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	je	.label_2275
.label_2291:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 8
	cmp	ecx, 0
	je	.label_2276
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2275
.label_2276:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2284
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 2
	cmp	eax, 0
	je	.label_2275
.label_2284:
	mov	rax, qword ptr [rbp - 0x60]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2266
	mov	eax, dword ptr [rbp - 0x54]
	and	eax, 8
	cmp	eax, 0
	jne	.label_2266
.label_2275:
	jmp	.label_2268
.label_2266:
	jmp	.label_2277
.label_2277:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xc8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x30]
	call	get_subexp
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2286
	jmp	.label_2274
.label_2286:
	jmp	.label_2288
.label_2288:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx + 0xc8]
	jge	.label_2296
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2273
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_2279
.label_2273:
	jmp	.label_2281
.label_2279:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x70], rax
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2283
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rdx + 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	imul	rcx, qword ptr [rcx], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	jmp	.label_2292
.label_2283:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
.label_2292:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x80]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 8]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	rcx, qword ptr [rsi + rcx*8]
	mov	qword ptr [rbp - 0x78], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rcx*8], 0
	jne	.label_2269
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xa8], rcx
	jmp	.label_2278
.label_2269:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
.label_2278:
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0x40], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2290
	lea	rdi, [rbp - 0x1c]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xa9], r8b
	jne	.label_2287
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xa9], al
.label_2287:
	mov	al, byte ptr [rbp - 0xa9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2285
	jmp	.label_2274
.label_2285:
	jmp	.label_2280
.label_2290:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x68]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2272
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	jmp	.label_2274
.label_2272:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x54]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xaa], r8b
	jne	.label_2294
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xaa], al
.label_2294:
	mov	al, byte ptr [rbp - 0xaa]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2267
	jmp	.label_2274
.label_2267:
	jmp	.label_2280
.label_2280:
	cmp	qword ptr [rbp - 0x70], 0
	jne	.label_2282
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rax, qword ptr [rax + 0x10]
	cmp	rax, qword ptr [rbp - 0x40]
	jle	.label_2282
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x30]
	call	check_subexp_matching_top
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2271
	jmp	.label_2274
.label_2271:
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x68]
	call	transit_state_bkref
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2289
	jmp	.label_2274
.label_2289:
	jmp	.label_2282
.label_2282:
	jmp	.label_2281
.label_2281:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2288
.label_2296:
	jmp	.label_2268
.label_2268:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2295
.label_2293:
	mov	dword ptr [rbp - 0x1c], 0
.label_2274:
	mov	eax, dword ptr [rbp - 0x1c]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419a30

	.globl extend_buffers
	.type extend_buffers, @function
extend_buffers:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	movabs	rax, 0xfffffffffffffff
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	rdi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rdi
	mov	rdi, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rdi + 0x40]
	setbe	cl
	and	cl, 1
	movzx	esi, cl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2310
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2302
.label_2310:
	mov	rdi, qword ptr [rbp - 0x20]
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x40]
	shl	rdx, 1
	cmp	rcx, rdx
	mov	qword ptr [rbp - 0x30], rdi
	mov	qword ptr [rbp - 0x38], rax
	jge	.label_2313
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2307
.label_2313:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2307:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rcx, rax
	jge	.label_2298
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	shl	rcx, 1
	cmp	rax, rcx
	jge	.label_2311
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2299
.label_2311:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x40]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
.label_2299:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2301
.label_2298:
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	qword ptr [rbp - 0x50], rax
.label_2301:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	re_string_realloc_buffers
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2314
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2302
.label_2314:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xb8], 0
	je	.label_2306
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x40]
	add	rcx, 1
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2305
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2302
.label_2305:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
.label_2306:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	byte ptr [rax + 0x88], 0
	je	.label_2304
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2308
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_upper_buffer
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2297
	mov	eax, dword ptr [rbp - 0x18]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2302
.label_2297:
	jmp	.label_2309
.label_2308:
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_upper_buffer
.label_2309:
	jmp	.label_2303
.label_2304:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	dword ptr [rax + 0x90], 1
	jle	.label_2315
	mov	rdi, qword ptr [rbp - 0x20]
	call	build_wcs_buffer
	jmp	.label_2312
.label_2315:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 0x78], 0
	je	.label_2300
	mov	rdi, qword ptr [rbp - 0x20]
	call	re_string_translate_buffer
.label_2300:
	jmp	.label_2312
.label_2312:
	jmp	.label_2303
.label_2303:
	mov	dword ptr [rbp - 4], 0
.label_2302:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419c90

	.globl transit_state
	.type transit_state, @function
transit_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	al, byte ptr [rdx + 0x68]
	shr	al, 5
	and	al, 1
	movzx	ecx, al
	mov	ecx, ecx
	mov	edx, ecx
	cmp	rdx, 0
	je	.label_2323
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	call	transit_state_mb
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2321
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2320
.label_2321:
	jmp	.label_2323
.label_2323:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rax + 0x48], rdx
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	sil, byte ptr [rax + rcx]
	mov	byte ptr [rbp - 0x29], sil
.label_2317:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x58]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2318
	movzx	eax, byte ptr [rbp - 0x29]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2320
.label_2318:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x60]
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2316
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0x30], eax
	mov	eax, dword ptr [rbp - 0x30]
	and	eax, 1
	cmp	eax, 0
	je	.label_2322
	movzx	eax, byte ptr [rbp - 0x29]
	add	eax, 0x100
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2320
.label_2322:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 8], rcx
	jmp	.label_2320
.label_2316:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax + 0x98]
	mov	rsi, qword ptr [rbp - 0x20]
	call	build_trtable
	test	al, 1
	jne	.label_2319
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2320
.label_2319:
	jmp	.label_2317
.label_2320:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x419e40

	.globl merge_state_with_log
	.type merge_state_with_log, @function
merge_state_with_log:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x48]
	mov	qword ptr [rbp - 0x30], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 0xc0]
	jle	.label_2324
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0xc0], rax
	jmp	.label_2327
.label_2324:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2335
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2328
.label_2335:
	mov	qword ptr [rbp - 0x68], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2332
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x50]
	mov	qword ptr [rbp - 0x68], rax
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x60]
	call	re_node_set_init_union
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2336
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2330
.label_2336:
	jmp	.label_2333
.label_2332:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x50], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x48], rax
.label_2333:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdx, [rbp - 0x58]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	qword ptr [rbp - 0x20], rax
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_2325
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
.label_2325:
	jmp	.label_2328
.label_2328:
	jmp	.label_2327
.label_2327:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 0x98], 0
	je	.label_2329
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2329
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, rax
	call	check_subexp_matching_top
	mov	rdx, qword ptr [rbp - 0x10]
	mov	dword ptr [rdx], eax
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2334
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2330
.label_2334:
	mov	rax, qword ptr [rbp - 0x20]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2331
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 8
	mov	rsi, rax
	call	transit_state_bkref
	mov	rsi, qword ptr [rbp - 0x10]
	mov	dword ptr [rsi], eax
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	dword ptr [rsi], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2326
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2330
.label_2326:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x20], rax
.label_2331:
	jmp	.label_2329
.label_2329:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2330:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a0f0

	.globl find_recover_state
	.type find_recover_state, @function
find_recover_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
.label_2340:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0xc0]
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x30], rax
.label_2341:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_2339
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2337
.label_2339:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax + 0x48]
	add	rcx, 1
	mov	qword ptr [rax + 0x48], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2341
	xor	eax, eax
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	merge_state_with_log
	mov	qword ptr [rbp - 0x20], rax
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	dword ptr [rdx], 0
	mov	byte ptr [rbp - 0x31], cl
	jne	.label_2338
	cmp	qword ptr [rbp - 0x20], 0
	sete	al
	mov	byte ptr [rbp - 0x31], al
.label_2338:
	mov	al, byte ptr [rbp - 0x31]
	test	al, 1
	jne	.label_2340
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_2337:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a1c0

	.globl match_ctx_add_subtop
	.type match_ctx_add_subtop, @function
match_ctx_add_subtop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0xf0]
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2342
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf0]
	shl	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xf8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2343
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2344
.label_2343:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xf0], rax
.label_2342:
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x30
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xe8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xf8]
	mov	qword ptr [rdi + rsi*8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xe8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xf8]
	cmp	qword ptr [rsi + rax*8], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2345
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2344
.label_2345:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xe8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xf8]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx + 0xe8]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx + 0xe8], rsi
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rcx, qword ptr [rcx + rdx*8]
	mov	qword ptr [rcx], rax
	mov	dword ptr [rbp - 4], 0
.label_2344:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a350

	.globl get_subexp
	.type get_subexp, @function
get_subexp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x98]
	mov	qword ptr [rbp - 0x28], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	qword ptr [rbp - 0x40], rdx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	je	.label_2352
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_2376:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2366
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2346
.label_2366:
	jmp	.label_2374
.label_2374:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2376
	jmp	.label_2352
.label_2352:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0x38], 0
.label_2363:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xe8]
	jge	.label_2355
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xf8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x30]
	je	.label_2364
	jmp	.label_2360
.label_2364:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rax
	mov	qword ptr [rbp - 0x70], 0
.label_2350:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2347
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], 0
	jle	.label_2354
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setg	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2362
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2380
	jmp	.label_2347
.label_2380:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, qword ptr [rbp - 0x88]
	mov	rsi, rax
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2361
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2346
.label_2361:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_2362:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_2382
	jmp	.label_2347
.label_2382:
	jmp	.label_2354
.label_2354:
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x88]
	add	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	get_subexp_sub
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2371
	jmp	.label_2349
.label_2371:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2378
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2346
.label_2378:
	jmp	.label_2349
.label_2349:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2350
.label_2347:
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x20]
	jge	.label_2358
	jmp	.label_2360
.label_2358:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_2365
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
.label_2365:
	jmp	.label_2353
.label_2353:
	mov	rax, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_2356
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x60]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x98], rax
	cmp	qword ptr [rbp - 0x98], 0
	jle	.label_2368
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	setge	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2383
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2370
	jmp	.label_2356
.label_2370:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x80]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2373
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2346
.label_2373:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rax
.label_2383:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	edx, byte ptr [rcx + rax]
	mov	rax, qword ptr [rbp - 0x78]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x40]
	movsx	esi, byte ptr [rcx + rax]
	cmp	edx, esi
	je	.label_2359
	jmp	.label_2356
.label_2359:
	jmp	.label_2368
.label_2368:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2367
	jmp	.label_2357
.label_2367:
	mov	ecx, 9
	mov	rax, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rax, qword ptr [rdx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0xa0], rax
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdx, qword ptr [rbp - 0x30]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x90], rax
	cmp	qword ptr [rbp - 0x90], -1
	jne	.label_2351
	jmp	.label_2357
.label_2351:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2381
	mov	eax, 0x18
	mov	edi, eax
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x60]
	sub	rcx, qword ptr [rdx]
	add	rcx, 1
	mov	rsi, rcx
	call	calloc
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_2375
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2346
.label_2375:
	jmp	.label_2381
.label_2381:
	mov	eax, 9
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rcx + 0x10]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rcx]
	mov	r8, qword ptr [rbp - 0x90]
	mov	r9, qword ptr [rbp - 0x78]
	mov	dword ptr [rsp], 9
	mov	dword ptr [rbp - 0xa4], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x54], eax
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2369
	jmp	.label_2357
.label_2369:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2372
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2346
.label_2372:
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x78]
	call	match_ctx_add_sublast
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2348
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2346
.label_2348:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	call	get_subexp_sub
	mov	dword ptr [rbp - 0x54], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x40], rcx
	cmp	dword ptr [rbp - 0x54], 1
	jne	.label_2377
	jmp	.label_2357
.label_2377:
	cmp	dword ptr [rbp - 0x54], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2379
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2346
.label_2379:
	jmp	.label_2357
.label_2357:
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 1
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_2353
.label_2356:
	jmp	.label_2360
.label_2360:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2363
.label_2355:
	mov	dword ptr [rbp - 4], 0
.label_2346:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41a950

	.globl re_node_set_init_union
	.type re_node_set_init_union, @function
re_node_set_init_union:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2387
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2387
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2387
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2387
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x10], 0
	sete	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2385
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2392
.label_2385:
	jmp	.label_2398
.label_2387:
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_2386
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2386
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2392
.label_2386:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_2397
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jle	.label_2397
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2392
.label_2397:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdi, rcx
	call	memset
	jmp	.label_2395
.label_2395:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2392
.label_2398:
	mov	qword ptr [rbp - 0x38], 0
	mov	qword ptr [rbp - 0x30], 0
	mov	qword ptr [rbp - 0x28], 0
.label_2388:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rdx, qword ptr [rsi + 8]
	mov	byte ptr [rbp - 0x39], cl
	jge	.label_2390
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	setl	dl
	mov	byte ptr [rbp - 0x39], dl
.label_2390:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_2384
	jmp	.label_2389
.label_2384:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2393
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2388
.label_2393:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_2399
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
.label_2399:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, rcx
	add	rdx, 1
	mov	qword ptr [rbp - 0x38], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2388
.label_2389:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2391
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2394
.label_2391:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2396
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 8]
	sub	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, qword ptr [rbp - 0x30]
	add	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 0x38], rax
.label_2396:
	jmp	.label_2394
.label_2394:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	dword ptr [rbp - 4], 0
.label_2392:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aca0

	.globl search_cur_bkref_entry
	.type search_cur_bkref_entry, @function
search_cur_bkref_entry:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	qword ptr [rbp - 0x28], rsi
	mov	qword ptr [rbp - 0x38], rsi
	mov	qword ptr [rbp - 0x20], 0
.label_2403:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2402
	mov	eax, 2
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	add	rdx, qword ptr [rbp - 0x28]
	mov	rax, rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2401
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_2400
.label_2401:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x28], rax
.label_2400:
	jmp	.label_2403
.label_2402:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2404
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2404
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2405
.label_2404:
	mov	qword ptr [rbp - 8], -1
.label_2405:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ad80

	.globl clean_state_log_if_needed
	.type clean_state_log_if_needed, @function
clean_state_log_if_needed:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc0]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 0x40]
	jl	.label_2406
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jl	.label_2410
.label_2406:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x30]
	jl	.label_2409
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x58]
	jge	.label_2409
.label_2410:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	ecx, eax
	mov	esi, ecx
	call	extend_buffers
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rdi, eax
	cmp	rdi, 0
	je	.label_2407
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2411
.label_2407:
	jmp	.label_2409
.label_2409:
	mov	rax, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rbp - 0x18]
	jge	.label_2408
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	add	rax, rcx
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rcx, qword ptr [rbp - 0x20]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xc0], rax
.label_2408:
	mov	dword ptr [rbp - 4], 0
.label_2411:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41aea0

	.globl get_subexp_sub
	.type get_subexp_sub, @function
get_subexp_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	eax, 8
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rcx, 0x10
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rsi + 8]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x48], rsi
	mov	rsi, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	dword ptr [rsp], 8
	mov	dword ptr [rbp - 0x4c], eax
	call	check_arrival
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	je	.label_2414
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2412
.label_2414:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rax]
	mov	rax, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rax + 8]
	call	match_ctx_add_entry
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2413
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2412
.label_2413:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x40], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x40]
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 4], eax
.label_2412:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41afa0

	.globl find_subexp_node
	.type find_subexp_node, @function
find_subexp_node:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	qword ptr [rbp - 0x30], 0
.label_2416:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2417
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, dword ptr [rbp - 0x24]
	jne	.label_2418
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2418
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2419
.label_2418:
	jmp	.label_2415
.label_2415:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2416
.label_2417:
	mov	qword ptr [rbp - 8], -1
.label_2419:
	mov	rax, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b050

	.globl check_arrival
	.type check_arrival, @function
check_arrival:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xf0
	mov	eax, dword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	dword ptr [rbp - 0x3c], eax
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x48], rcx
	mov	dword ptr [rbp - 0x4c], 0
	mov	qword ptr [rbp - 0x78], 0
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	rdx, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x10]
	movsxd	rsi, dword ptr [rsi + 0xe0]
	add	rdx, rsi
	add	rdx, 1
	cmp	rcx, rdx
	setl	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2456
	movabs	rax, 0x7fffffffffffffff
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0xb8], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	add	rcx, rdx
	add	rcx, 1
	mov	qword ptr [rbp - 0xc0], rcx
	sub	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xc0]
	setl	sil
	and	sil, 1
	movzx	edi, sil
	movsxd	rax, edi
	cmp	rax, 0
	je	.label_2451
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2425
.label_2451:
	movabs	rax, 0x1fffffffffffffff
	mov	rcx, qword ptr [rbp - 0xb8]
	add	rcx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rbp - 0xc8], rcx
	cmp	rax, qword ptr [rbp - 0xc8]
	setb	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2454
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2425
.label_2454:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0xc8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xb0], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2445
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2425
.label_2445:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 8]
	sub	rcx, qword ptr [rbp - 0xb8]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
.label_2456:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], 0
	je	.label_2433
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2435
.label_2433:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0xd0], rax
.label_2435:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xb8]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	mov	dword ptr [rbp - 0xa4], eax
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rcx, qword ptr [rbp - 0x28]
	jne	.label_2449
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x20]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2455
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2425
.label_2455:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2429
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2429:
	jmp	.label_2422
.label_2449:
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2438
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2438
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2447
	mov	eax, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2425
.label_2447:
	jmp	.label_2453
.label_2438:
	xor	esi, esi
	mov	eax, 0x18
	mov	edx, eax
	lea	rcx, [rbp - 0x98]
	mov	rdi, rcx
	call	memset
.label_2453:
	jmp	.label_2422
.label_2422:
	mov	rax, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rbp - 0x28]
	je	.label_2424
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2427
	mov	rax, qword ptr [rbp - 0x78]
	mov	cl, byte ptr [rax + 0x68]
	shr	cl, 6
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	je	.label_2427
.label_2424:
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_2434
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2437
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2437:
	jmp	.label_2434
.label_2434:
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd1], r8b
	jne	.label_2446
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd1], al
.label_2446:
	mov	al, byte ptr [rbp - 0xd1]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2452
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2452:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
.label_2427:
	mov	qword ptr [rbp - 0x70], 0
.label_2426:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	rdx, qword ptr [rbp - 0x38]
	mov	byte ptr [rbp - 0xd2], cl
	jge	.label_2432
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x10]
	movsxd	rcx, dword ptr [rcx + 0xe0]
	cmp	rax, rcx
	setle	dl
	mov	byte ptr [rbp - 0xd2], dl
.label_2432:
	mov	al, byte ptr [rbp - 0xd2]
	test	al, 1
	jne	.label_2442
	jmp	.label_2440
.label_2442:
	mov	qword ptr [rbp - 0x90], 0
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	je	.label_2420
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2448
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2448:
	jmp	.label_2420
.label_2420:
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2423
	lea	rcx, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 0x20
	mov	rdx, rax
	call	check_arrival_add_next_nodes
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2430
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2430:
	jmp	.label_2423
.label_2423:
	mov	rax, qword ptr [rbp - 0x68]
	add	rax, 1
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x90], 0
	je	.label_2428
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	ecx, dword ptr [rbp - 0x3c]
	call	check_arrival_expand_ecl
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2444
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2444:
	lea	rsi, [rbp - 0x98]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8d, dword ptr [rbp - 0x3c]
	call	expand_bkref_cache
	mov	dword ptr [rbp - 0x4c], eax
	cmp	dword ptr [rbp - 0x4c], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2457
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2457:
	jmp	.label_2428
.label_2428:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdi, [rbp - 0x4c]
	lea	rdx, [rbp - 0x98]
	mov	dword ptr [rbp - 0xa4], eax
	mov	rsi, qword ptr [rbp - 0x48]
	mov	ecx, dword ptr [rbp - 0xa4]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	mov	byte ptr [rbp - 0xd3], r8b
	jne	.label_2439
	cmp	dword ptr [rbp - 0x4c], 0
	setne	al
	mov	byte ptr [rbp - 0xd3], al
.label_2439:
	mov	al, byte ptr [rbp - 0xd3]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2443
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x4c]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2425
.label_2443:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2450
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0xe0], rax
	jmp	.label_2421
.label_2450:
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe0], rcx
	jmp	.label_2421
.label_2421:
	mov	rax, qword ptr [rbp - 0xe0]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2426
.label_2440:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rdi + 0xb8]
	cmp	qword ptr [rdi + rax*8], 0
	jne	.label_2431
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0xe8], rcx
	jmp	.label_2436
.label_2431:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0xe8], rax
.label_2436:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xb8], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x48], rax
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2441
	mov	rdi, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2441
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2425
.label_2441:
	mov	dword ptr [rbp - 4], 1
.label_2425:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xf0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41b900

	.globl match_ctx_add_sublast
	.type match_ctx_add_sublast, @function
match_ctx_add_sublast:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	cmp	rdx, qword ptr [rsi + 0x18]
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2458
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x18]
	shl	rax, 1
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2461
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2460
.label_2461:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x28], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x18], rax
.label_2458:
	mov	eax, 1
	mov	edi, eax
	mov	eax, 0x28
	mov	esi, eax
	call	calloc
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2459
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x28]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x20]
	add	rcx, 1
	mov	qword ptr [rax + 0x20], rcx
.label_2459:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 8], rax
.label_2460:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ba30

	.globl match_ctx_add_entry
	.type match_ctx_add_entry, @function
match_ctx_add_entry:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xc8]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 0xd0]
	jl	.label_2465
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd0]
	shl	rcx, 1
	imul	rsi, rcx, 0x28
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2466
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2463
.label_2466:
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0xd8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rcx, qword ptr [rcx + 0xc8], 0x28
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rdx, qword ptr [rcx + 0xd0], 0x28
	mov	rdi, rax
	call	memset
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0xd0]
	shl	rcx, 1
	mov	qword ptr [rax + 0xd0], rcx
.label_2465:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0xc8], 0
	jle	.label_2462
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2462
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xc8]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x28
	add	rax, qword ptr [rcx + 0xd8]
	mov	byte ptr [rax + 0x20], 1
.label_2462:
	xor	eax, eax
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 8], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x10], rdx
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xc8]
	mov	rdi, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdi + 0xd8]
	mov	qword ptr [rsi + 0x18], rdx
	mov	rdx, qword ptr [rbp - 0x28]
	cmp	rdx, qword ptr [rbp - 0x30]
	cmove	eax, ecx
	mov	r8w, ax
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xc8]
	mov	rsi, qword ptr [rbp - 0x10]
	imul	rdx, rdx, 0x28
	add	rdx, qword ptr [rsi + 0xd8]
	mov	word ptr [rdx + 0x22], r8w
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rdx + 0xc8]
	mov	rdi, rsi
	add	rdi, 1
	mov	qword ptr [rdx + 0xc8], rdi
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rsi, rsi, 0x28
	add	rsi, qword ptr [rdx + 0xd8]
	mov	byte ptr [rsi + 0x20], 0
	mov	rdx, qword ptr [rbp - 0x10]
	movsxd	rdx, dword ptr [rdx + 0xe0]
	mov	rsi, qword ptr [rbp - 0x30]
	sub	rsi, qword ptr [rbp - 0x28]
	cmp	rdx, rsi
	jge	.label_2464
	mov	rax, qword ptr [rbp - 0x30]
	sub	rax, qword ptr [rbp - 0x28]
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax + 0xe0], ecx
.label_2464:
	mov	dword ptr [rbp - 4], 0
.label_2463:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41bcb0

	.globl check_arrival_expand_ecl
	.type check_arrival_expand_ecl, @function
check_arrival_expand_ecl:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	lea	rax, [rbp - 0x50]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], ecx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rdx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2472
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2473
.label_2472:
	mov	qword ptr [rbp - 0x30], 0
.label_2470:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2471
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x58], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x24]
	call	find_subexp_node
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], -1
	jne	.label_2474
	lea	rdi, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2475
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2473
.label_2475:
	jmp	.label_2467
.label_2474:
	lea	rsi, [rbp - 0x50]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8d, dword ptr [rbp - 0x24]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x28], eax
	cmp	dword ptr [rbp - 0x28], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2469
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2473
.label_2469:
	jmp	.label_2467
.label_2467:
	jmp	.label_2468
.label_2468:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2470
.label_2471:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x50]
	mov	qword ptr [rax], rdi
	mov	rdi, qword ptr [rbp - 0x48]
	mov	qword ptr [rax + 8], rdi
	mov	rdi, qword ptr [rbp - 0x40]
	mov	qword ptr [rax + 0x10], rdi
	mov	dword ptr [rbp - 4], 0
.label_2473:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41be60

	.globl expand_bkref_cache
	.type expand_bkref_cache, @function
expand_bkref_cache:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x48], rax
	cmp	qword ptr [rbp - 0x48], -1
	jne	.label_2482
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2481
.label_2482:
	jmp	.label_2487
.label_2487:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x48], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
.label_2488:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x50]
	mov	rsi, qword ptr [rax]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2497
	jmp	.label_2484
.label_2497:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	add	rax, qword ptr [rcx + 0x18]
	mov	rcx, qword ptr [rbp - 0x50]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x20]
	jne	.label_2498
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2491
	jmp	.label_2484
.label_2491:
	lea	rdi, [rbp - 0x78]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	ecx, dword ptr [rbp - 0x2c]
	call	check_arrival_expand_ecl
	lea	rsi, [rbp - 0x78]
	mov	dword ptr [rbp - 0x7c], eax
	mov	rdi, qword ptr [rbp - 0x18]
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x80], eax
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rdi, rdx
	call	free
	mov	r8b, 1
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0x9a], r8b
	jne	.label_2480
	mov	al, 1
	cmp	dword ptr [rbp - 0x7c], 0
	mov	byte ptr [rbp - 0x9a], al
	jne	.label_2480
	cmp	dword ptr [rbp - 0x80], 0
	setne	al
	mov	byte ptr [rbp - 0x9a], al
.label_2480:
	mov	al, byte ptr [rbp - 0x9a]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2492
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2496
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xa0], eax
	jmp	.label_2493
.label_2496:
	cmp	dword ptr [rbp - 0x7c], 0
	je	.label_2499
	mov	eax, dword ptr [rbp - 0x7c]
	mov	dword ptr [rbp - 0xa4], eax
	jmp	.label_2477
.label_2499:
	mov	eax, dword ptr [rbp - 0x80]
	mov	dword ptr [rbp - 0xa4], eax
.label_2477:
	mov	eax, dword ptr [rbp - 0xa4]
	mov	dword ptr [rbp - 0xa0], eax
.label_2493:
	mov	eax, dword ptr [rbp - 0xa0]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2481
.label_2492:
	jmp	.label_2487
.label_2498:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2489
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x60]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2479
	jmp	.label_2484
.label_2479:
	lea	rdi, [rbp - 0x98]
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_init_copy
	lea	rdi, [rbp - 0x98]
	mov	dword ptr [rbp - 0x3c], eax
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_insert
	mov	dl, 1
	and	al, 1
	mov	byte ptr [rbp - 0x99], al
	cmp	dword ptr [rbp - 0x3c], 0
	mov	byte ptr [rbp - 0xa5], dl
	jne	.label_2494
	mov	al, byte ptr [rbp - 0x99]
	xor	al, 0xff
	mov	byte ptr [rbp - 0xa5], al
.label_2494:
	mov	al, byte ptr [rbp - 0xa5]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2476
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	cmp	dword ptr [rbp - 0x3c], 0
	je	.label_2490
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2485
.label_2490:
	mov	eax, 0xc
	mov	dword ptr [rbp - 0xac], eax
	jmp	.label_2485
.label_2485:
	mov	eax, dword ptr [rbp - 0xac]
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2481
.label_2476:
	jmp	.label_2483
.label_2489:
	lea	rdi, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x60]
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2500
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2481
.label_2500:
	jmp	.label_2483
.label_2483:
	lea	rdi, [rbp - 0x3c]
	lea	rdx, [rbp - 0x98]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdi, rax
	call	free
	xor	ecx, ecx
	mov	r8b, cl
	mov	rax, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xad], r8b
	jne	.label_2495
	cmp	dword ptr [rbp - 0x3c], 0
	setne	al
	mov	byte ptr [rbp - 0xad], al
.label_2495:
	mov	al, byte ptr [rbp - 0xad]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2478
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2481
.label_2478:
	jmp	.label_2486
.label_2486:
	jmp	.label_2484
.label_2484:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x50], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2488
	mov	dword ptr [rbp - 4], 0
.label_2481:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c270

	.globl check_arrival_add_next_nodes
	.type check_arrival_add_next_nodes, @function
check_arrival_add_next_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	r9d, r8d
	lea	r10, [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x44], 0
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x40], 0
.label_2513:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2502
	mov	dword ptr [rbp - 0x64], 0
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_2506
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], 1
	jle	.label_2503
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x18]
	movsxd	rcx, dword ptr [rbp - 0x64]
	add	rax, rcx
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	qword ptr [rbp - 0x58], 0
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2505
	lea	rdi, [rbp - 0x60]
	mov	rax, qword ptr [rbp - 0x78]
	add	rax, 8
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x44], eax
	cmp	dword ptr [rbp - 0x44], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2508
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2504
.label_2508:
	jmp	.label_2505
.label_2505:
	lea	rdi, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2509
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2504
.label_2509:
	lea	rdi, [rbp - 0x44]
	lea	rdx, [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_acquire_state
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x88]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0x89], r8b
	jne	.label_2510
	cmp	dword ptr [rbp - 0x44], 0
	setne	al
	mov	byte ptr [rbp - 0x89], al
.label_2510:
	mov	al, byte ptr [rbp - 0x89]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2511
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2504
.label_2511:
	jmp	.label_2503
.label_2503:
	jmp	.label_2506
.label_2506:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2507
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x70]
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_2507
	jmp	.label_2501
.label_2507:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rsi, qword ptr [rcx + rax*8]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x31], al
	mov	al, byte ptr [rbp - 0x31]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2514
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2504
.label_2514:
	jmp	.label_2501
.label_2501:
	jmp	.label_2512
.label_2512:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2513
.label_2502:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_2504:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c570

	.globl check_arrival_expand_ecl_sub
	.type check_arrival_expand_ecl_sub, @function
check_arrival_expand_ecl_sub:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	dword ptr [rbp - 0x2c], r8d
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x38], rcx
.label_2518:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_contains
	cmp	rax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_2522
	jmp	.label_2517
.label_2522:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	cmp	edx, dword ptr [rbp - 0x2c]
	jne	.label_2520
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2520
	cmp	dword ptr [rbp - 0x2c], 9
	jne	.label_2525
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2519
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2523
.label_2519:
	jmp	.label_2525
.label_2525:
	jmp	.label_2517
.label_2520:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x38]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x39], al
	mov	al, byte ptr [rbp - 0x39]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2516
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2523
.label_2516:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2524
	jmp	.label_2517
.label_2524:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 2
	jne	.label_2515
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdx, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8d, dword ptr [rbp - 0x2c]
	call	check_arrival_expand_ecl_sub
	mov	dword ptr [rbp - 0x40], eax
	cmp	dword ptr [rbp - 0x40], 0
	setne	r9b
	and	r9b, 1
	movzx	eax, r9b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2521
	mov	eax, dword ptr [rbp - 0x40]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2523
.label_2521:
	jmp	.label_2515
.label_2515:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2518
.label_2517:
	mov	dword ptr [rbp - 4], 0
.label_2523:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c740

	.globl re_acquire_state
	.type re_acquire_state, @function
re_acquire_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rdx + 8], 0
	sete	al
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2526
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2532
.label_2526:
	xor	esi, esi
	mov	rdi, qword ptr [rbp - 0x20]
	call	calc_state_hash
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 0x40]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	and	rdi, qword ptr [rcx + 0x88]
	imul	rcx, rdi, 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x38], rax
	mov	qword ptr [rbp - 0x40], 0
.label_2530:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx]
	jge	.label_2527
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rcx]
	je	.label_2533
	jmp	.label_2528
.label_2533:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	re_node_set_compare
	test	al, 1
	jne	.label_2531
	jmp	.label_2534
.label_2531:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2532
.label_2534:
	jmp	.label_2528
.label_2528:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2530
.label_2527:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x28]
	call	create_ci_newstate
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	sete	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2529
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], 0xc
.label_2529:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_2532:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41c890

	.globl create_ci_newstate
	.type create_ci_newstate, @function
create_ci_newstate:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	eax, 0x70
	mov	ecx, eax
	mov	eax, 1
	mov	r8d, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdi, rcx
	mov	rsi, r8
	call	calloc
	mov	qword ptr [rbp - 0x38], rax
	cmp	qword ptr [rbp - 0x38], 0
	sete	r9b
	and	r9b, 1
	movzx	r10d, r9b
	movsxd	rax, r10d
	cmp	rax, 0
	je	.label_2548
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2542
.label_2548:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2535
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_2542
.label_2535:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x38]
	mov	qword ptr [rcx + 0x50], rax
	mov	qword ptr [rbp - 0x28], 0
.label_2546:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2536
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rdx + rcx*8]
	shl	rcx, 4
	add	rax, rcx
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	esi, dword ptr [rax + 8]
	and	esi, 0xff
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 1
	jne	.label_2540
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	jne	.label_2540
	jmp	.label_2541
.label_2540:
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x14
	and	ecx, 1
	mov	rax, qword ptr [rbp - 0x38]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 5
	and	dl, 1
	movzx	esi, dl
	or	esi, ecx
	mov	dl, sil
	mov	dil, byte ptr [rax + 0x68]
	and	dl, 1
	shl	dl, 5
	and	dil, 0xdf
	or	dil, dl
	mov	byte ptr [rax + 0x68], dil
	cmp	dword ptr [rbp - 0x44], 2
	jne	.label_2547
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xef
	or	cl, 0x10
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2544
.label_2547:
	cmp	dword ptr [rbp - 0x44], 4
	jne	.label_2537
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0xbf
	or	cl, 0x40
	mov	byte ptr [rax + 0x68], cl
	jmp	.label_2539
.label_2537:
	cmp	dword ptr [rbp - 0x44], 0xc
	je	.label_2545
	mov	rax, qword ptr [rbp - 0x40]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2543
.label_2545:
	mov	rax, qword ptr [rbp - 0x38]
	mov	cl, byte ptr [rax + 0x68]
	and	cl, 0x7f
	or	cl, 0x80
	mov	byte ptr [rax + 0x68], cl
.label_2543:
	jmp	.label_2539
.label_2539:
	jmp	.label_2544
.label_2544:
	jmp	.label_2541
.label_2541:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2546
.label_2536:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x20]
	call	register_state
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2538
	mov	rdi, qword ptr [rbp - 0x38]
	call	free_state
	mov	qword ptr [rbp - 0x38], 0
.label_2538:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rbp - 8], rax
.label_2542:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41cae0

	.globl check_node_accept_bytes
	.type check_node_accept_bytes, @function
check_node_accept_bytes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 4
	add	rcx, rdx
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	cmp	eax, 7
	sete	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2599
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x41], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xc2
	setl	dl
	and	dl, 1
	movzx	esi, dl
	movsxd	rax, esi
	cmp	rax, 0
	je	.label_2562
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2562:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 2
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2575
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2575:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax + 1]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x41]
	cmp	esi, 0xe0
	jge	.label_2583
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x42]
	cmp	ecx, 0x80
	mov	byte ptr [rbp - 0x61], al
	jl	.label_2590
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	setg	cl
	mov	byte ptr [rbp - 0x61], cl
.label_2590:
	mov	al, byte ptr [rbp - 0x61]
	mov	ecx, 2
	xor	edx, edx
	test	al, 1
	cmovne	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2552
.label_2583:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	jge	.label_2602
	mov	dword ptr [rbp - 0x34], 3
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xe0
	jne	.label_2553
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xa0
	jge	.label_2553
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2553:
	jmp	.label_2557
.label_2602:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf8
	jge	.label_2563
	mov	dword ptr [rbp - 0x34], 4
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf0
	jne	.label_2567
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x90
	jge	.label_2567
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2567:
	jmp	.label_2555
.label_2563:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfc
	jge	.label_2578
	mov	dword ptr [rbp - 0x34], 5
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xf8
	jne	.label_2569
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x88
	jge	.label_2569
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2569:
	jmp	.label_2554
.label_2578:
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfe
	jge	.label_2593
	mov	dword ptr [rbp - 0x34], 6
	movzx	eax, byte ptr [rbp - 0x41]
	cmp	eax, 0xfc
	jne	.label_2595
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0x84
	jge	.label_2595
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2595:
	jmp	.label_2572
.label_2593:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2572:
	jmp	.label_2554
.label_2554:
	jmp	.label_2555
.label_2555:
	jmp	.label_2557
.label_2557:
	jmp	.label_2558
.label_2558:
	mov	rax, qword ptr [rbp - 0x28]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	rax, qword ptr [rcx + 0x58]
	jle	.label_2560
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2560:
	mov	qword ptr [rbp - 0x40], 1
.label_2589:
	mov	rax, qword ptr [rbp - 0x40]
	movsxd	rcx, dword ptr [rbp - 0x34]
	cmp	rax, rcx
	jge	.label_2570
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	mov	dl, byte ptr [rcx + rax]
	mov	byte ptr [rbp - 0x42], dl
	movzx	esi, byte ptr [rbp - 0x42]
	cmp	esi, 0x80
	jl	.label_2574
	movzx	eax, byte ptr [rbp - 0x42]
	cmp	eax, 0xbf
	jle	.label_2579
.label_2574:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2579:
	jmp	.label_2588
.label_2588:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2589
.label_2570:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2552
.label_2599:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_char_size_at
	mov	dword ptr [rbp - 0x34], eax
	mov	rsi, qword ptr [rbp - 0x30]
	mov	eax, dword ptr [rsi + 8]
	and	eax, 0xff
	cmp	eax, 5
	jne	.label_2597
	cmp	dword ptr [rbp - 0x34], 1
	jg	.label_2600
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2600:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2550
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0xa
	je	.label_2556
.label_2550:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2561
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rcx + 8]
	movzx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	jne	.label_2561
.label_2556:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2561:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2552
.label_2597:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_elem_size_at
	mov	dword ptr [rbp - 0x38], eax
	cmp	dword ptr [rbp - 0x38], 1
	jg	.label_2580
	cmp	dword ptr [rbp - 0x34], 1
	jle	.label_2584
.label_2580:
	cmp	dword ptr [rbp - 0x34], 0
	jne	.label_2587
.label_2584:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2587:
	mov	rax, qword ptr [rbp - 0x30]
	mov	ecx, dword ptr [rax + 8]
	and	ecx, 0xff
	cmp	ecx, 6
	jne	.label_2591
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x50], rax
	mov	dword ptr [rbp - 0x54], 0
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x40], 0
	jne	.label_2594
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_2594
	mov	rax, qword ptr [rbp - 0x50]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2549
.label_2594:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	re_string_wchar_at
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2559
.label_2549:
	xor	eax, eax
	mov	dword ptr [rbp - 0x68], eax
	jmp	.label_2559
.label_2559:
	mov	eax, dword ptr [rbp - 0x68]
	mov	dword ptr [rbp - 0x58], eax
	mov	qword ptr [rbp - 0x40], 0
.label_2576:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x28]
	jge	.label_2564
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx]
	cmp	eax, dword ptr [rdx + rcx*4]
	jne	.label_2568
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2573
.label_2568:
	jmp	.label_2586
.label_2586:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2576
.label_2564:
	mov	qword ptr [rbp - 0x40], 0
.label_2598:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x48]
	jge	.label_2581
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	edi, dword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x60]
	call	iswctype
	cmp	eax, 0
	je	.label_2592
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2573
.label_2592:
	jmp	.label_2596
.label_2596:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2598
.label_2581:
	mov	qword ptr [rbp - 0x40], 0
.label_2566:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rax, qword ptr [rcx + 0x40]
	jge	.label_2601
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rcx + 8]
	mov	edx, dword ptr [rcx + rax*4]
	cmp	edx, dword ptr [rbp - 0x58]
	jg	.label_2551
	mov	eax, dword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	eax, dword ptr [rdx + rcx*4]
	jg	.label_2551
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x54], eax
	jmp	.label_2573
.label_2551:
	jmp	.label_2565
.label_2565:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2566
.label_2601:
	jmp	.label_2573
.label_2573:
	mov	rax, qword ptr [rbp - 0x50]
	mov	cl, byte ptr [rax + 0x20]
	and	cl, 1
	movzx	edx, cl
	cmp	edx, 0
	jne	.label_2571
	mov	eax, dword ptr [rbp - 0x54]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2552
.label_2571:
	cmp	dword ptr [rbp - 0x54], 0
	jle	.label_2577
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2552
.label_2577:
	mov	eax, dword ptr [rbp - 0x38]
	cmp	eax, dword ptr [rbp - 0x34]
	jle	.label_2582
	mov	eax, dword ptr [rbp - 0x38]
	mov	dword ptr [rbp - 0x6c], eax
	jmp	.label_2585
.label_2582:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 0x6c], eax
.label_2585:
	mov	eax, dword ptr [rbp - 0x6c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2552
.label_2591:
	mov	dword ptr [rbp - 4], 0
.label_2552:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d0d0

	.globl check_node_accept
	.type check_node_accept, @function
check_node_accept:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 8]
	mov	al, byte ptr [rsi + rdx]
	mov	byte ptr [rbp - 0x21], al
	mov	rdx, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rdx + 8]
	dec	ecx
	mov	edx, ecx
	sub	ecx, 6
	mov	qword ptr [rbp - 0x30], rdx
	mov	dword ptr [rbp - 0x34], ecx
	ja	.label_2607
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_2609]]
	jmp	rcx
.label_3179:
	mov	rax, qword ptr [rbp - 0x18]
	movzx	ecx, byte ptr [rax]
	movzx	edx, byte ptr [rbp - 0x21]
	cmp	ecx, edx
	je	.label_2612
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2610
.label_2612:
	jmp	.label_2615
.label_3180:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rax]
	movzx	ecx, byte ptr [rbp - 0x21]
	mov	esi, ecx
	call	bitset_contain
	test	al, 1
	jne	.label_2606
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2610
.label_2606:
	jmp	.label_2615
.label_3181:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x80
	jl	.label_2617
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2610
.label_2617:
	jmp	.label_2618
.label_2618:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0xa
	jne	.label_2603
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	je	.label_2611
.label_2603:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0
	jne	.label_2613
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2613
.label_2611:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2610
.label_2613:
	jmp	.label_2615
.label_2607:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2610
.label_2615:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	cmp	ecx, 0
	je	.label_2614
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x28], eax
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2616
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	je	.label_2604
.label_2616:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 8
	cmp	ecx, 0
	je	.label_2608
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2604
.label_2608:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x20
	cmp	ecx, 0
	je	.label_2619
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 2
	cmp	eax, 0
	je	.label_2604
.label_2619:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 8
	and	ecx, 0x3ff
	and	ecx, 0x80
	cmp	ecx, 0
	je	.label_2605
	mov	eax, dword ptr [rbp - 0x28]
	and	eax, 8
	cmp	eax, 0
	jne	.label_2605
.label_2604:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2610
.label_2605:
	jmp	.label_2614
.label_2614:
	mov	byte ptr [rbp - 1], 1
.label_2610:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d300

	.globl re_string_elem_size_at
	.type re_string_elem_size_at, @function
re_string_elem_size_at:
	push	rbp
	mov	rbp, rsp
	mov	eax, 1
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d320

	.globl transit_state_mb
	.type transit_state_mb, @function
transit_state_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x98]
	mov	qword ptr [rbp - 0x20], rsi
	mov	qword ptr [rbp - 0x30], 0
.label_2637:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jge	.label_2622
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	jne	.label_2628
	jmp	.label_2625
.label_2628:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	cmp	edx, 0
	je	.label_2627
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x48]
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xa0]
	call	re_string_context_at
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdi, qword ptr [rbp - 0x20]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	eax, dword ptr [rsi + 8]
	shr	eax, 8
	and	eax, 0x3ff
	and	eax, 4
	cmp	eax, 0
	je	.label_2640
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 1
	cmp	eax, 0
	je	.label_2633
.label_2640:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 8
	cmp	edx, 0
	je	.label_2623
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2633
.label_2623:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x20
	cmp	edx, 0
	je	.label_2621
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2633
.label_2621:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x20]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	and	edx, 0x80
	cmp	edx, 0
	je	.label_2631
	mov	eax, dword ptr [rbp - 0x6c]
	and	eax, 8
	cmp	eax, 0
	jne	.label_2631
.label_2633:
	jmp	.label_2625
.label_2631:
	jmp	.label_2627
.label_2627:
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 0x48]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x5c], eax
	cmp	dword ptr [rbp - 0x5c], 0
	jne	.label_2626
	jmp	.label_2625
.label_2626:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x48]
	movsxd	rcx, dword ptr [rbp - 0x5c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rax + 0xe0]
	cmp	edx, dword ptr [rbp - 0x5c]
	jge	.label_2632
	mov	eax, dword ptr [rbp - 0x5c]
	mov	dword ptr [rbp - 0x7c], eax
	jmp	.label_2624
.label_2632:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0xe0]
	mov	dword ptr [rbp - 0x7c], ecx
.label_2624:
	mov	eax, dword ptr [rbp - 0x7c]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	dword ptr [rcx + 0xe0], eax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	call	clean_state_log_if_needed
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2638
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2630
.label_2638:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x18]
	imul	rcx, qword ptr [rdx + rcx*8], 0x18
	add	rax, rcx
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	cmp	qword ptr [rbp - 0x78], 0
	jne	.label_2634
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rbp - 0x48], rcx
	mov	rcx, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2620
.label_2634:
	lea	rdi, [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x78]
	mov	rsi, qword ptr [rax + 0x50]
	mov	rdx, qword ptr [rbp - 0x50]
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2629
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2630
.label_2629:
	jmp	.label_2620
.label_2620:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x68]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x10]
	mov	edx, dword ptr [rcx + 0xa0]
	mov	rsi, rax
	call	re_string_context_at
	lea	rdi, [rbp - 0x24]
	lea	rdx, [rbp - 0x48]
	mov	dword ptr [rbp - 0x6c], eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	ecx, dword ptr [rbp - 0x6c]
	call	re_acquire_state_context
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_2636
	mov	rax, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	free
.label_2636:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x68]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0xb8]
	cmp	qword ptr [rsi + rdx*8], 0
	mov	byte ptr [rbp - 0x7d], cl
	jne	.label_2639
	cmp	dword ptr [rbp - 0x24], 0
	setne	al
	mov	byte ptr [rbp - 0x7d], al
.label_2639:
	mov	al, byte ptr [rbp - 0x7d]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2635
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2630
.label_2635:
	jmp	.label_2625
.label_2625:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2637
.label_2622:
	mov	dword ptr [rbp - 4], 0
.label_2630:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41d6e0

	.globl build_trtable
	.type build_trtable, @function
build_trtable:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	eax, 0x3800
	mov	ecx, eax
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	byte ptr [rbp - 0x35], 0
	mov	byte ptr [rbp - 0x49], 0
	mov	byte ptr [rbp - 0x4a], 0
	mov	qword ptr [rbp - 0x68], 0
	mov	rdi, rcx
	call	malloc
	mov	qword ptr [rbp - 0xc8], rax
	cmp	qword ptr [rbp - 0xc8], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2648
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2650
.label_2648:
	mov	byte ptr [rbp - 0x49], 1
	mov	rax, qword ptr [rbp - 0xc8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0xc8]
	add	rax, 0x1800
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x58], 0
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rax + 0x60], 0
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0xa0]
	call	group_nodes_into_DFAstates
	mov	qword ptr [rbp - 0x58], rax
	cmp	qword ptr [rbp - 0x58], 0
	setle	r8b
	and	r8b, 1
	movzx	r9d, r8b
	movsxd	rax, r9d
	cmp	rax, 0
	je	.label_2679
	test	byte ptr [rbp - 0x49], 1
	je	.label_2692
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2692:
	cmp	qword ptr [rbp - 0x58], 0
	jne	.label_2701
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x58], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2708
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2650
.label_2708:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2650
.label_2701:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2650
.label_2679:
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	rsi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2665
	jmp	.label_2647
.label_2665:
	movabs	rax, 0xaaaaaaaaaaaa855
	mov	qword ptr [rbp - 0xd0], rax
	mov	rax, qword ptr [rbp - 0xd0]
	cmp	rax, qword ptr [rbp - 0x58]
	setb	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2670
	jmp	.label_2647
.label_2670:
	imul	rax, qword ptr [rbp - 0x58], 3
	shl	rax, 3
	add	rax, 0x3800
	cmp	rax, 0xfc0
	jae	.label_2683
	mov	rax, qword ptr [rbp - 0x58]
	lea	rax, [rax + rax*2]
	lea	rax, [rax*8 + 0xf]
	and	rax, 0xfffffffffffffff0
	mov	rcx, rsp
	sub	rcx, rax
	mov	rsp, rcx
	mov	qword ptr [rbp - 0x68], rcx
	jmp	.label_2693
.label_2683:
	imul	rax, qword ptr [rbp - 0x58], 3
	shl	rax, 3
	mov	rdi, rax
	call	malloc
	mov	qword ptr [rbp - 0x68], rax
	cmp	qword ptr [rbp - 0x68], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2709
	jmp	.label_2647
.label_2647:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_2651
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_2651:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2685:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2662
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2685
.label_2662:
	test	byte ptr [rbp - 0x49], 1
	je	.label_2674
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2674:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2650
.label_2709:
	mov	byte ptr [rbp - 0x4a], 1
.label_2693:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x70], rax
	mov	rax, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x28], 0
.label_2682:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2702
	mov	qword ptr [rbp - 0x88], 0
	mov	qword ptr [rbp - 0x30], 0
.label_2684:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2642
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	imul	rcx, rcx, 0x18
	add	rcx, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd8], rax
	cmp	qword ptr [rbp - 0xd8], -1
	je	.label_2652
	lea	rdi, [rbp - 0x90]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0xd8], 0x18
	add	rax, rcx
	mov	rsi, rax
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2673
	jmp	.label_2647
.label_2673:
	jmp	.label_2652
.label_2652:
	jmp	.label_2681
.label_2681:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2684
.label_2642:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	xor	ecx, ecx
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x68]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xd9], r8b
	jne	.label_2698
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xd9], al
.label_2698:
	mov	al, byte ptr [rbp - 0xd9]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2644
	jmp	.label_2647
.label_2644:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 7
	movzx	esi, dl
	cmp	esi, 0
	je	.label_2668
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 1
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xda], r8b
	jne	.label_2667
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xda], al
.label_2667:
	mov	al, byte ptr [rbp - 0xda]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2677
	jmp	.label_2647
.label_2677:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2687
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2687
	mov	byte ptr [rbp - 0x35], 1
.label_2687:
	lea	rdi, [rbp - 0x1c]
	lea	rdx, [rbp - 0x90]
	mov	ecx, 2
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state_context
	xor	ecx, ecx
	mov	r8b, cl
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x78]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	cmp	qword ptr [rdx + rax*8], 0
	mov	byte ptr [rbp - 0xdb], r8b
	jne	.label_2710
	cmp	dword ptr [rbp - 0x1c], 0
	setne	al
	mov	byte ptr [rbp - 0xdb], al
.label_2710:
	mov	al, byte ptr [rbp - 0xdb]
	and	al, 1
	movzx	ecx, al
	movsxd	rdx, ecx
	cmp	rdx, 0
	je	.label_2695
	jmp	.label_2647
.label_2695:
	jmp	.label_2666
.label_2668:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	qword ptr [rdx + rcx*8], rax
.label_2666:
	lea	rdi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0xa0]
	mov	rsi, rax
	call	bitset_merge
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2682
.label_2702:
	test	byte ptr [rbp - 0x35], 1
	jne	.label_2690
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x100
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x58], rax
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2700
	jmp	.label_2647
.label_2700:
	mov	qword ptr [rbp - 0x28], 0
.label_2696:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_2643
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 1
.label_2697:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2656
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_2660
	mov	qword ptr [rbp - 0x30], 0
.label_2675:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_2707
	jmp	.label_2646
.label_2646:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2675
.label_2707:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	je	.label_2678
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2689
.label_2678:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
.label_2689:
	jmp	.label_2660
.label_2660:
	jmp	.label_2655
.label_2655:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2697
.label_2656:
	jmp	.label_2649
.label_2649:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2696
.label_2643:
	jmp	.label_2654
.label_2690:
	mov	eax, 8
	mov	edi, eax
	mov	eax, 0x200
	mov	esi, eax
	call	calloc
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + 0x60], rax
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	cl
	and	cl, 1
	movzx	edx, cl
	movsxd	rax, edx
	cmp	rax, 0
	je	.label_2663
	jmp	.label_2647
.label_2663:
	mov	qword ptr [rbp - 0x28], 0
.label_2694:
	cmp	qword ptr [rbp - 0x28], 4
	jge	.label_2672
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 6
	mov	ecx, eax
	mov	dword ptr [rbp - 0x34], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp + rax*8 - 0xc0]
	mov	qword ptr [rbp - 0x40], rax
	mov	qword ptr [rbp - 0x48], 1
.label_2664:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2686
	mov	rax, qword ptr [rbp - 0x40]
	and	rax, 1
	cmp	rax, 0
	je	.label_2691
	mov	qword ptr [rbp - 0x30], 0
.label_2706:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rcx + rax*8]
	and	rax, qword ptr [rbp - 0x48]
	cmp	rax, 0
	jne	.label_2699
	jmp	.label_2645
.label_2645:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2706
.label_2699:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x34]
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x70]
	mov	rax, qword ptr [rcx + rax*8]
	mov	esi, dword ptr [rbp - 0x34]
	add	esi, 0x100
	movsxd	rcx, esi
	mov	rdx, qword ptr [rbp - 0x60]
	mov	qword ptr [rdx + rcx*8], rax
.label_2691:
	jmp	.label_2661
.label_2661:
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x40]
	shr	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	ecx, dword ptr [rbp - 0x34]
	add	ecx, 1
	mov	dword ptr [rbp - 0x34], ecx
	jmp	.label_2664
.label_2686:
	jmp	.label_2658
.label_2658:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2694
.label_2672:
	jmp	.label_2654
.label_2654:
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0xc0]
	call	bitset_contain
	test	al, 1
	jne	.label_2680
	jmp	.label_2657
.label_2680:
	mov	qword ptr [rbp - 0x30], 0
.label_2653:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2688
	mov	eax, 0xa
	mov	esi, eax
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 5
	add	rcx, qword ptr [rbp - 0xa0]
	mov	rdi, rcx
	call	bitset_contain
	test	al, 1
	jne	.label_2641
	jmp	.label_2704
.label_2641:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x50], rax
	test	byte ptr [rbp - 0x35], 1
	je	.label_2705
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	qword ptr [rcx + 0x850], rax
.label_2705:
	jmp	.label_2688
.label_2704:
	jmp	.label_2671
.label_2671:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2653
.label_2688:
	jmp	.label_2657
.label_2657:
	test	byte ptr [rbp - 0x4a], 1
	je	.label_2659
	mov	rax, qword ptr [rbp - 0x68]
	mov	rdi, rax
	call	free
.label_2659:
	mov	rax, qword ptr [rbp - 0x80]
	mov	rdi, rax
	call	free
	mov	qword ptr [rbp - 0x28], 0
.label_2676:
	mov	rax, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rbp - 0x58]
	jge	.label_2669
	mov	rax, qword ptr [rbp - 0x98]
	imul	rcx, qword ptr [rbp - 0x28], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_2676
.label_2669:
	test	byte ptr [rbp - 0x49], 1
	je	.label_2703
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rdi, rax
	call	free
.label_2703:
	mov	byte ptr [rbp - 1], 1
.label_2650:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rsp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e0d0

	.globl group_nodes_into_DFAstates
	.type group_nodes_into_DFAstates, @function
group_nodes_into_DFAstates:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rax, [rbp - 0x70]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, 8
	mov	qword ptr [rbp - 0x78], rcx
	mov	rdi, rax
	call	bitset_empty
	mov	qword ptr [rbp - 0x50], 0
	mov	qword ptr [rbp - 0x38], 0
.label_2766:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2715
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	mov	rax, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x80]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 8
	and	edx, 0x3ff
	mov	dword ptr [rbp - 0x88], edx
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2720
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	movzx	ecx, byte ptr [rax]
	mov	esi, ecx
	call	bitset_set
	jmp	.label_2747
.label_2720:
	cmp	dword ptr [rbp - 0x84], 3
	jne	.label_2748
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x80]
	mov	rsi, qword ptr [rax]
	call	bitset_merge
	jmp	.label_2756
.label_2748:
	cmp	dword ptr [rbp - 0x84], 5
	jne	.label_2758
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2761
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rax + 0x78]
	call	bitset_merge
	jmp	.label_2736
.label_2761:
	lea	rdi, [rbp - 0x70]
	call	bitset_set_all
.label_2736:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x40
	cmp	rax, 0
	jne	.label_2768
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_2768:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2717
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_2717:
	jmp	.label_2746
.label_2758:
	cmp	dword ptr [rbp - 0x84], 7
	jne	.label_2733
	mov	esi, 0xff
	mov	eax, 0x10
	mov	edx, eax
	lea	rcx, [rbp - 0x70]
	mov	rdi, rcx
	call	memset
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	and	rcx, 0x40
	cmp	rcx, 0
	jne	.label_2745
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_2745:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	and	rax, 0x80
	cmp	rax, 0
	je	.label_2749
	xor	eax, eax
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_clear
.label_2749:
	jmp	.label_2741
.label_2733:
	jmp	.label_2724
.label_2741:
	jmp	.label_2746
.label_2746:
	jmp	.label_2756
.label_2756:
	jmp	.label_2747
.label_2747:
	cmp	dword ptr [rbp - 0x88], 0
	je	.label_2765
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_2727
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_contain
	lea	rdi, [rbp - 0x70]
	and	al, 1
	mov	byte ptr [rbp - 0x89], al
	call	bitset_empty
	test	byte ptr [rbp - 0x89], 1
	je	.label_2716
	mov	eax, 0xa
	mov	esi, eax
	lea	rdi, [rbp - 0x70]
	call	bitset_set
	jmp	.label_2723
.label_2716:
	jmp	.label_2724
.label_2723:
	jmp	.label_2727
.label_2727:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_2730
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_2724
.label_2730:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 4
	cmp	eax, 0
	je	.label_2740
	mov	qword ptr [rbp - 0x98], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2743
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	jne	.label_2743
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_2724
.label_2743:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2757
	mov	qword ptr [rbp - 0x40], 0
.label_2769:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2763
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	or	rax, rcx
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2769
.label_2763:
	jmp	.label_2722
.label_2757:
	mov	qword ptr [rbp - 0x40], 0
.label_2739:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2725
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0x98]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2739
.label_2725:
	jmp	.label_2722
.label_2722:
	cmp	qword ptr [rbp - 0x98], 0
	jne	.label_2714
	jmp	.label_2724
.label_2714:
	jmp	.label_2740
.label_2740:
	mov	eax, dword ptr [rbp - 0x88]
	and	eax, 8
	cmp	eax, 0
	je	.label_2752
	mov	qword ptr [rbp - 0xa0], 0
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2755
	mov	rax, qword ptr [rbp - 0x80]
	mov	ecx, dword ptr [rax + 8]
	shr	ecx, 0x16
	and	ecx, 1
	cmp	ecx, 0
	je	.label_2755
	lea	rdi, [rbp - 0x70]
	call	bitset_empty
	jmp	.label_2724
.label_2755:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	dword ptr [rax + 0xb4], 1
	jle	.label_2767
	mov	qword ptr [rbp - 0x40], 0
.label_2713:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2711
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x78]
	and	rax, qword ptr [rdx + rcx*8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2713
.label_2711:
	jmp	.label_2735
.label_2767:
	mov	qword ptr [rbp - 0x40], 0
.label_2712:
	cmp	qword ptr [rbp - 0x40], 4
	jge	.label_2759
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8 + 0xb8]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x40]
	and	rax, qword ptr [rbp + rcx*8 - 0x70]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2712
.label_2759:
	jmp	.label_2735
.label_2735:
	cmp	qword ptr [rbp - 0xa0], 0
	jne	.label_2753
	jmp	.label_2724
.label_2753:
	jmp	.label_2752
.label_2752:
	jmp	.label_2765
.label_2765:
	mov	qword ptr [rbp - 0x40], 0
.label_2729:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_2744
	cmp	dword ptr [rbp - 0x84], 1
	jne	.label_2750
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x80]
	movzx	edx, byte ptr [rcx]
	mov	esi, edx
	mov	rdi, rax
	call	bitset_contain
	test	al, 1
	jne	.label_2750
	jmp	.label_2719
.label_2750:
	mov	qword ptr [rbp - 0xe8], 0
	mov	qword ptr [rbp - 0x48], 0
.label_2732:
	cmp	qword ptr [rbp - 0x48], 4
	jge	.label_2726
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0xc0], rax
	or	rax, qword ptr [rbp - 0xe8]
	mov	qword ptr [rbp - 0xe8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2732
.label_2726:
	cmp	qword ptr [rbp - 0xe8], 0
	jne	.label_2734
	jmp	.label_2719
.label_2734:
	mov	qword ptr [rbp - 0xf8], 0
	mov	qword ptr [rbp - 0xf0], 0
	mov	qword ptr [rbp - 0x48], 0
.label_2762:
	cmp	qword ptr [rbp - 0x48], 4
	jge	.label_2760
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	xor	rax, 0xffffffffffffffff
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	and	rax, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0xe0], rax
	or	rax, qword ptr [rbp - 0xf0]
	mov	qword ptr [rbp - 0xf0], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp + rax*8 - 0x70]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x40]
	shl	rdx, 5
	add	rdx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rdx + rcx*8]
	xor	rcx, 0xffffffffffffffff
	and	rax, rcx
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp + rcx*8 - 0x70], rax
	or	rax, qword ptr [rbp - 0xf8]
	mov	qword ptr [rbp - 0xf8], rax
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2762
.label_2760:
	cmp	qword ptr [rbp - 0xf0], 0
	je	.label_2737
	lea	rsi, [rbp - 0xe0]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	lea	rsi, [rbp - 0xc0]
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x40]
	imul	rsi, rsi, 0x18
	add	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2728
	jmp	.label_2731
.label_2728:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
.label_2737:
	mov	rax, qword ptr [rbp - 0x40]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x2d], al
	mov	al, byte ptr [rbp - 0x2d]
	xor	al, 0xff
	and	al, 1
	movzx	r8d, al
	movsxd	rcx, r8d
	cmp	rcx, 0
	je	.label_2718
	jmp	.label_2731
.label_2718:
	cmp	qword ptr [rbp - 0xf8], 0
	jne	.label_2721
	jmp	.label_2744
.label_2721:
	jmp	.label_2719
.label_2719:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2729
.label_2744:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jne	.label_2738
	lea	rsi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	shl	rax, 5
	add	rax, qword ptr [rbp - 0x28]
	mov	rdi, rax
	call	bitset_copy
	mov	rax, qword ptr [rbp - 0x20]
	imul	rsi, qword ptr [rbp - 0x50], 0x18
	add	rax, rsi
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, qword ptr [rbp - 0x78]
	mov	rdi, qword ptr [rdi + 0x10]
	mov	rsi, qword ptr [rdi + rsi*8]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x2c], eax
	cmp	dword ptr [rbp - 0x2c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2751
	jmp	.label_2731
.label_2751:
	lea	rdi, [rbp - 0x70]
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	call	bitset_empty
.label_2738:
	jmp	.label_2724
.label_2724:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_2766
.label_2715:
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2742
.label_2731:
	mov	qword ptr [rbp - 0x40], 0
.label_2764:
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x50]
	jge	.label_2754
	mov	rax, qword ptr [rbp - 0x20]
	imul	rcx, qword ptr [rbp - 0x40], 0x18
	add	rax, rcx
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2764
.label_2754:
	mov	qword ptr [rbp - 8], -1
.label_2742:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x100
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e950

	.globl bitset_empty
	.type bitset_empty, @function
bitset_empty:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	esi, esi
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e980

	.globl bitset_merge
	.type bitset_merge, @function
bitset_merge:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	dword ptr [rbp - 0x14], 0
.label_2771:
	cmp	dword ptr [rbp - 0x14], 4
	jge	.label_2770
	movsxd	rax, dword ptr [rbp - 0x14]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	movsxd	rcx, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 8]
	or	rax, qword ptr [rdx + rcx*8]
	mov	qword ptr [rdx + rcx*8], rax
	mov	eax, dword ptr [rbp - 0x14]
	add	eax, 1
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_2771
.label_2770:
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41e9d0

	.globl bitset_set_all
	.type bitset_set_all, @function
bitset_set_all:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	esi, 0xff
	mov	eax, 0x20
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	call	memset
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ea00

	.globl bitset_clear
	.type bitset_clear, @function
bitset_clear:
	push	rbp
	mov	rbp, rsp
	mov	eax, 0x40
	mov	ecx, eax
	mov	eax, 1
	mov	edx, eax
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rdx
	cqo	
	idiv	rcx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rax, rsi
	mov	qword ptr [rbp - 0x28], rdx
	cqo	
	mov	rsi, qword ptr [rbp - 0x20]
	idiv	rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	r8, qword ptr [rbp - 0x28]
	and	r8, qword ptr [rdi + rax*8]
	mov	qword ptr [rdi + rax*8], r8
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ea60

	.globl bitset_copy
	.type bitset_copy, @function
bitset_copy:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rdi]
	mov	qword ptr [rsi], rax
	mov	rax, qword ptr [rdi + 8]
	mov	qword ptr [rsi + 8], rax
	mov	rax, qword ptr [rdi + 0x10]
	mov	qword ptr [rsi + 0x10], rax
	mov	rax, qword ptr [rdi + 0x18]
	mov	qword ptr [rsi + 0x18], rax
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eaa0

	.globl check_halt_node_context
	.type check_halt_node_context, @function
check_halt_node_context:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x20], edx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rbp - 0x10]
	shl	rsi, 4
	add	rsi, qword ptr [rdi]
	mov	edx, dword ptr [rsi + 8]
	shr	edx, 8
	and	edx, 0x3ff
	mov	dword ptr [rbp - 0x24], edx
	cmp	dword ptr [rbp - 0x20], 2
	je	.label_2772
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2774
.label_2772:
	cmp	dword ptr [rbp - 0x24], 0
	jne	.label_2773
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2774
.label_2773:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 4
	cmp	eax, 0
	je	.label_2777
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	je	.label_2779
.label_2777:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 8
	cmp	eax, 0
	je	.label_2776
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 1
	cmp	eax, 0
	jne	.label_2779
.label_2776:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x20
	cmp	eax, 0
	je	.label_2775
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 2
	cmp	eax, 0
	je	.label_2779
.label_2775:
	mov	eax, dword ptr [rbp - 0x24]
	and	eax, 0x80
	cmp	eax, 0
	je	.label_2778
	mov	eax, dword ptr [rbp - 0x1c]
	and	eax, 8
	cmp	eax, 0
	jne	.label_2778
.label_2779:
	mov	byte ptr [rbp - 1], 0
	jmp	.label_2774
.label_2778:
	mov	byte ptr [rbp - 1], 1
.label_2774:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41eba0

	.globl sift_ctx_init
	.type sift_ctx_init, @function
sift_ctx_init:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	xor	eax, eax
	mov	r9d, 0x18
	mov	r10d, r9d
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 8], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x10], rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 8]
	mov	qword ptr [rdx + 0x18], rcx
	mov	rcx, qword ptr [rbp - 8]
	add	rcx, 0x20
	mov	rdi, rcx
	mov	esi, eax
	mov	rdx, r10
	call	memset
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ec20

	.globl sift_states_backward
	.type sift_states_backward, @function
sift_states_backward:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x20], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, rax
	call	re_node_set_init_1
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rsi, eax
	cmp	rsi, 0
	je	.label_2785
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2789
.label_2785:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2784
	jmp	.label_2788
.label_2784:
	jmp	.label_2786
.label_2786:
	cmp	qword ptr [rbp - 0x28], 0
	jle	.label_2791
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2790
	mov	eax, dword ptr [rbp - 0x20]
	add	eax, 1
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2787
.label_2790:
	xor	eax, eax
	mov	dword ptr [rbp - 0x44], eax
	jmp	.label_2787
.label_2787:
	mov	eax, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x20], eax
	mov	eax, dword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	eax, dword ptr [rcx + 0xe0]
	jle	.label_2783
	xor	esi, esi
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	shl	rcx, 3
	mov	rdi, rax
	mov	rdx, rcx
	call	memset
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2789
.label_2783:
	mov	qword ptr [rbp - 0x38], 0
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2780
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	build_sifted_states
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2782
	jmp	.label_2788
.label_2782:
	jmp	.label_2780
.label_2780:
	lea	rcx, [rbp - 0x40]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x28]
	call	update_cur_sifted_state
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x1c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2781
	jmp	.label_2788
.label_2781:
	jmp	.label_2786
.label_2791:
	mov	dword ptr [rbp - 0x1c], 0
.label_2788:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], ecx
.label_2789:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ee20

	.globl merge_state_array
	.type merge_state_array, @function
merge_state_array:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], 0
.label_2795:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2792
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rcx + rax*8], 0
	jne	.label_2796
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	qword ptr [rdx + rcx*8], rax
	jmp	.label_2794
.label_2796:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x20]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2798
	lea	rdi, [rbp - 0x50]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 8
	mov	rsi, rax
	mov	rdx, rcx
	call	re_node_set_init_union
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2800
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2797
.label_2800:
	lea	rdi, [rbp - 0x34]
	lea	rdx, [rbp - 0x50]
	mov	rsi, qword ptr [rbp - 0x10]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rsi + rdx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	mov	rdi, rax
	call	free
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2799
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2797
.label_2799:
	jmp	.label_2798
.label_2798:
	jmp	.label_2794
.label_2794:
	jmp	.label_2793
.label_2793:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2795
.label_2792:
	mov	dword ptr [rbp - 4], 0
.label_2797:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41ef70

	.globl update_cur_sifted_state
	.type update_cur_sifted_state, @function
update_cur_sifted_state:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	dword ptr [rbp - 0x34], 0
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_2810
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x48], rcx
	jmp	.label_2812
.label_2810:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0x48], rax
.label_2812:
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x28]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2807
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	qword ptr [rcx + rax*8], 0
	jmp	.label_2802
.label_2807:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2803
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	call	add_epsilon_src_nodes
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	eax, cl
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2808
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2809
.label_2808:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2805
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r8, qword ptr [rcx + 0xd8]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rcx, rax
	call	check_subexp_limits
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r10b
	and	r10b, 1
	movzx	eax, r10b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2804
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2809
.label_2804:
	jmp	.label_2805
.label_2805:
	jmp	.label_2803
.label_2803:
	lea	rdi, [rbp - 0x34]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	call	re_acquire_state
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi]
	mov	qword ptr [rsi + rdx*8], rax
	cmp	dword ptr [rbp - 0x34], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2811
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2809
.label_2811:
	jmp	.label_2802
.label_2802:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2801
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	mov	dl, byte ptr [rax + 0x68]
	shr	dl, 6
	and	dl, 1
	movzx	esi, dl
	cmp	esi, 0
	je	.label_2801
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x40]
	call	sift_states_bkref
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2806
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2809
.label_2806:
	jmp	.label_2801
.label_2801:
	mov	dword ptr [rbp - 4], 0
.label_2809:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f1a0

	.globl build_sifted_states
	.type build_sifted_states, @function
build_sifted_states:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x60
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0xb8]
	mov	rcx, qword ptr [rdx + rcx*8]
	add	rcx, 0x20
	mov	qword ptr [rbp - 0x38], rcx
	mov	qword ptr [rbp - 0x40], 0
.label_2819:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2822
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	dword ptr [rbp - 0x4c], 0
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_2824
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rax + 0x18]
	call	sift_states_iter_mb
	mov	dword ptr [rbp - 0x4c], eax
.label_2824:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_2816
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rax, rcx
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_2814
	jmp	.label_2816
.label_2814:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8 + 8], 0
	je	.label_2816
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8 + 8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2816
	mov	dword ptr [rbp - 0x4c], 1
.label_2816:
	cmp	dword ptr [rbp - 0x4c], 0
	jne	.label_2820
	jmp	.label_2818
.label_2820:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 0x28], 0
	je	.label_2823
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x4c]
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rdx, qword ptr [rdx + rcx*8]
	mov	rcx, qword ptr [rbp - 0x58]
	mov	r8, qword ptr [rbp - 0x48]
	mov	r9, qword ptr [rbp - 0x20]
	mov	rsi, rax
	call	check_dst_limits
	test	al, 1
	jne	.label_2813
	jmp	.label_2815
.label_2813:
	jmp	.label_2818
.label_2815:
	jmp	.label_2823
.label_2823:
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x48]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x4d], al
	mov	al, byte ptr [rbp - 0x4d]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2821
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2817
.label_2821:
	jmp	.label_2818
.label_2818:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2819
.label_2822:
	mov	dword ptr [rbp - 4], 0
.label_2817:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x60
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f3c0

	.globl add_epsilon_src_nodes
	.type add_epsilon_src_nodes, @function
add_epsilon_src_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	lea	rax, [rbp - 0x24]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	dword ptr [rbp - 0x24], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	re_acquire_state
	mov	qword ptr [rbp - 0x38], rax
	cmp	dword ptr [rbp - 0x24], 0
	setne	cl
	and	cl, 1
	movzx	r8d, cl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2829
	mov	eax, dword ptr [rbp - 0x24]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2828
.label_2829:
	mov	rax, qword ptr [rbp - 0x38]
	cmp	qword ptr [rax + 0x38], 0
	jne	.label_2826
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rcx + 8]
	mov	rdi, rax
	call	re_node_set_alloc
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2825
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2828
.label_2825:
	mov	qword ptr [rbp - 0x30], 0
.label_2831:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2827
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rsi + 0x10]
	imul	rdx, qword ptr [rsi + rdx*8], 0x18
	add	rcx, rdx
	mov	rdi, rax
	mov	rsi, rcx
	call	re_node_set_merge
	mov	dword ptr [rbp - 0x24], eax
	cmp	dword ptr [rbp - 0x24], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2830
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2828
.label_2830:
	jmp	.label_2832
.label_2832:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2831
.label_2827:
	jmp	.label_2826
.label_2826:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 0x38
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 4], eax
.label_2828:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f520

	.globl check_subexp_limits
	.type check_subexp_limits, @function
check_subexp_limits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xa0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x50], 0
.label_2859:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2851
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rdx + 0x10]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rcx + 0x10]
	jle	.label_2856
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 8]
	cmp	rax, qword ptr [rbp - 0x38]
	jge	.label_2837
.label_2856:
	jmp	.label_2843
.label_2837:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x38]
	jne	.label_2860
	mov	qword ptr [rbp - 0x68], -1
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x48], 0
.label_2840:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2858
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x7c], edx
	cmp	dword ptr [rbp - 0x7c], 8
	jne	.label_2845
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2845
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x68], rax
	jmp	.label_2835
.label_2845:
	cmp	dword ptr [rbp - 0x7c], 9
	jne	.label_2854
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x78]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2854
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
.label_2854:
	jmp	.label_2835
.label_2835:
	jmp	.label_2838
.label_2838:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2840
.label_2858:
	cmp	qword ptr [rbp - 0x68], 0
	jl	.label_2844
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2848
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2847
.label_2848:
	jmp	.label_2844
.label_2844:
	cmp	qword ptr [rbp - 0x70], 0
	jl	.label_2857
	mov	qword ptr [rbp - 0x48], 0
.label_2853:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2833
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x88], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2852
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	imul	rcx, qword ptr [rbp - 0x88], 0x18
	add	rax, rcx
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2852
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x88]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2842
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2847
.label_2842:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, -1
	mov	qword ptr [rbp - 0x48], rax
.label_2852:
	jmp	.label_2834
.label_2834:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2853
.label_2833:
	jmp	.label_2857
.label_2857:
	jmp	.label_2846
.label_2860:
	mov	qword ptr [rbp - 0x48], 0
.label_2850:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2861
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x94], edx
	cmp	dword ptr [rbp - 0x94], 9
	je	.label_2836
	cmp	dword ptr [rbp - 0x94], 8
	jne	.label_2839
.label_2836:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x10]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	je	.label_2855
	jmp	.label_2849
.label_2855:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x20]
	call	sub_epsilon_src_nodes
	mov	dword ptr [rbp - 0x3c], eax
	cmp	dword ptr [rbp - 0x3c], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2841
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_2847
.label_2841:
	jmp	.label_2839
.label_2839:
	jmp	.label_2849
.label_2849:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2850
.label_2861:
	jmp	.label_2846
.label_2846:
	jmp	.label_2843
.label_2843:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_2859
.label_2851:
	mov	dword ptr [rbp - 4], 0
.label_2847:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xa0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41f910

	.globl sift_states_bkref
	.type sift_states_bkref, @function
sift_states_bkref:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xe0
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x20]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x88], rax
	cmp	qword ptr [rbp - 0x88], -1
	jne	.label_2875
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2879
.label_2875:
	mov	qword ptr [rbp - 0x80], 0
	mov	qword ptr [rbp - 0x40], 0
.label_2866:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2877
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x94], edx
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x10]
	jne	.label_2864
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jne	.label_2864
	jmp	.label_2880
.label_2864:
	cmp	dword ptr [rbp - 0x94], 4
	je	.label_2881
	jmp	.label_2880
.label_2881:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x88], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x90], rax
.label_2870:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x48]
	je	.label_2865
	jmp	.label_2874
.label_2865:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rax, qword ptr [rax + 0x18]
	mov	rcx, qword ptr [rbp - 0xa0]
	sub	rax, qword ptr [rcx + 0x10]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 0xb0], rax
	cmp	qword ptr [rbp - 0xa8], 0
	je	.label_2872
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xd0], rax
	jmp	.label_2883
.label_2872:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x30]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xd0], rax
.label_2883:
	mov	rax, qword ptr [rbp - 0xd0]
	mov	qword ptr [rbp - 0xb8], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 0x18]
	jg	.label_2862
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2862
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2862
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xb8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2862
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0xb8]
	mov	r9, qword ptr [rbp - 0xb0]
	mov	rsi, rax
	call	check_dst_limits
	test	al, 1
	jne	.label_2862
	jmp	.label_2882
.label_2862:
	jmp	.label_2874
.label_2882:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2869
	lea	rax, [rbp - 0x80]
	mov	ecx, 0x38
	mov	edx, ecx
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xd8], rax
	call	memcpy
	mov	rax, qword ptr [rbp - 0xd8]
	add	rax, 0x20
	mov	rdx, qword ptr [rbp - 0x18]
	add	rdx, 0x20
	mov	rdi, rax
	mov	rsi, rdx
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rdx, eax
	cmp	rdx, 0
	je	.label_2871
	jmp	.label_2868
.label_2871:
	jmp	.label_2869
.label_2869:
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rcx
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rcx
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0xb9], al
	mov	al, byte ptr [rbp - 0xb9]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2873
	mov	dword ptr [rbp - 0x34], 0xc
	jmp	.label_2868
.label_2873:
	lea	rsi, [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xc8], rax
	mov	rdi, qword ptr [rbp - 0x10]
	call	sift_states_backward
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	dl
	and	dl, 1
	movzx	eax, dl
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2878
	jmp	.label_2868
.label_2878:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_2876
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax + 8]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	rcx, rax
	call	merge_state_array
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2867
	jmp	.label_2868
.label_2867:
	jmp	.label_2876
.label_2876:
	lea	rax, [rbp - 0x80]
	mov	rcx, qword ptr [rbp - 0xc8]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	mov	qword ptr [rsi + rdx*8], rcx
	mov	rcx, rax
	add	rcx, 0x20
	add	rax, 0x20
	mov	rsi, qword ptr [rbp - 0x90]
	mov	rdi, rax
	mov	qword ptr [rbp - 0xe0], rcx
	call	re_node_set_contains
	sub	rax, 1
	mov	rdi, qword ptr [rbp - 0xe0]
	mov	rsi, rax
	call	re_node_set_remove_at
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x90], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0xa0], rax
.label_2874:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0xa0], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2870
	jmp	.label_2880
.label_2880:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2866
.label_2877:
	mov	dword ptr [rbp - 0x34], 0
.label_2868:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2863
	mov	rax, qword ptr [rbp - 0x50]
	mov	rdi, rax
	call	free
.label_2863:
	mov	eax, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], eax
.label_2879:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0xe0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x41fdc0

	.globl re_node_set_add_intersect
	.type re_node_set_add_intersect, @function
re_node_set_add_intersect:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx + 8], 0
	je	.label_2892
	mov	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], 0
	jne	.label_2905
.label_2892:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2894
.label_2905:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx]
	jle	.label_2911
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x58]
	shl	rcx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	realloc
	mov	qword ptr [rbp - 0x60], rax
	cmp	qword ptr [rbp - 0x60], 0
	sete	dl
	and	dl, 1
	movzx	r8d, dl
	movsxd	rax, r8d
	cmp	rax, 0
	je	.label_2902
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_2894
.label_2902:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
.label_2911:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
.label_2908:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jne	.label_3175
	jmp	.label_2886
.label_2886:
	xor	eax, eax
	mov	cl, al
	cmp	qword ptr [rbp - 0x40], 0
	mov	byte ptr [rbp - 0x61], cl
	jl	.label_2887
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	setg	sil
	mov	byte ptr [rbp - 0x61], sil
.label_2887:
	mov	al, byte ptr [rbp - 0x61]
	test	al, 1
	jne	.label_2898
	jmp	.label_2901
.label_2898:
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	jmp	.label_2886
.label_2901:
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2909
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	je	.label_2910
.label_2909:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x50], rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8 - 8], rax
.label_2910:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jl	.label_2897
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jge	.label_2904
.label_2897:
	jmp	.label_2891
.label_2904:
	jmp	.label_2906
.label_3175:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jge	.label_2884
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, -1
	mov	qword ptr [rbp - 0x30], rax
	cmp	rax, 0
	jge	.label_2890
	jmp	.label_2891
.label_2890:
	jmp	.label_2893
.label_2884:
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, -1
	mov	qword ptr [rbp - 0x28], rax
	cmp	rax, 0
	jge	.label_2895
	jmp	.label_2891
.label_2895:
	jmp	.label_2893
.label_2893:
	jmp	.label_2906
.label_2906:
	jmp	.label_2908
.label_2891:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x18]
	add	rax, qword ptr [rcx + 8]
	mov	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx + 8]
	sub	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	mov	rax, qword ptr [rbp - 0x38]
	sub	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	add	rax, qword ptr [rcx + 8]
	mov	qword ptr [rcx + 8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jle	.label_2889
	cmp	qword ptr [rbp - 0x40], 0
	jl	.label_2889
	jmp	.label_2888
.label_2888:
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	cmp	rax, qword ptr [rdx + rcx*8]
	jle	.label_2903
	mov	rax, qword ptr [rbp - 0x38]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rdx, qword ptr [rbp - 0x48]
	mov	rsi, rdx
	add	rsi, -1
	mov	qword ptr [rbp - 0x48], rsi
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	cmp	qword ptr [rbp - 0x48], 0
	jne	.label_2885
	jmp	.label_2896
.label_2885:
	jmp	.label_2899
.label_2903:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rcx, qword ptr [rbp - 0x40]
	add	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	qword ptr [rdx + rcx*8], rax
	mov	rax, qword ptr [rbp - 0x40]
	add	rax, -1
	mov	qword ptr [rbp - 0x40], rax
	cmp	rax, 0
	jge	.label_2900
	jmp	.label_2896
.label_2900:
	jmp	.label_2899
.label_2899:
	jmp	.label_2888
.label_2896:
	jmp	.label_2889
.label_2889:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x50]
	shl	rdx, 3
	add	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x48]
	shl	rdx, 3
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	dword ptr [rbp - 4], 0
.label_2894:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x70
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4201e0

	.globl sub_epsilon_src_nodes
	.type sub_epsilon_src_nodes, @function
sub_epsilon_src_nodes:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	xor	eax, eax
	mov	r8d, 0x18
	mov	r9d, r8d
	lea	r10, [rbp - 0x58]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x38]
	imul	rdx, qword ptr [rbp - 0x18], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, r10
	mov	esi, eax
	mov	rdx, r9
	call	memset
	mov	qword ptr [rbp - 0x30], 0
.label_2922:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2925
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x18]
	jne	.label_2912
	jmp	.label_2920
.label_2912:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	and	edx, 8
	cmp	edx, 0
	je	.label_2916
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	cmp	qword ptr [rax + 8], 1
	jle	.label_2923
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2913
.label_2923:
	mov	rax, -1
	mov	qword ptr [rbp - 0x88], rax
	jmp	.label_2913
.label_2913:
	mov	rax, qword ptr [rbp - 0x88]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2927
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x68]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2915
.label_2927:
	cmp	qword ptr [rbp - 0x70], 0
	jle	.label_2918
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2918
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2918
.label_2915:
	lea	rdi, [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x38]
	imul	rcx, qword ptr [rbp - 0x60], 0x18
	add	rax, rcx
	mov	rdx, rax
	call	re_node_set_add_intersect
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	setne	r8b
	and	r8b, 1
	movzx	eax, r8b
	movsxd	rcx, eax
	cmp	rcx, 0
	je	.label_2919
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	ecx, dword ptr [rbp - 0x34]
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_2926
.label_2919:
	jmp	.label_2918
.label_2918:
	jmp	.label_2916
.label_2916:
	jmp	.label_2920
.label_2920:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2922
.label_2925:
	mov	qword ptr [rbp - 0x30], 0
.label_2921:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2924
	lea	rdi, [rbp - 0x58]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2914
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	sub	rax, 1
	mov	qword ptr [rbp - 0x80], rax
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x80]
	call	re_node_set_remove_at
.label_2914:
	jmp	.label_2917
.label_2917:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_2921
.label_2924:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rdi, rax
	call	free
	mov	dword ptr [rbp - 4], 0
.label_2926:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420490

	.globl check_dst_limits
	.type check_dst_limits, @function
check_dst_limits:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x80
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x40], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x28]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x38]
	call	search_cur_bkref_entry
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x48], 0
.label_2932:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2929
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	imul	rcx, qword ptr [rdx + rcx*8], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x78], rax
	mov	rax, qword ptr [rbp - 0x78]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rsi, qword ptr [rcx + rax*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x20]
	mov	r8, qword ptr [rbp - 0x28]
	mov	r9, qword ptr [rbp - 0x60]
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x58], rcx
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rdx + 0x10]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	r8, qword ptr [rbp - 0x38]
	mov	r9, qword ptr [rbp - 0x68]
	call	check_dst_limits_calc_pos
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x50], rcx
	mov	rcx, qword ptr [rbp - 0x50]
	cmp	rcx, qword ptr [rbp - 0x58]
	jne	.label_2931
	jmp	.label_2928
.label_2931:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_2930
.label_2928:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2932
.label_2929:
	mov	byte ptr [rbp - 1], 0
.label_2930:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x80
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4205e0

	.globl check_dst_limits_calc_pos
	.type check_dst_limits_calc_pos, @function
check_dst_limits_calc_pos:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xd8]
	imul	rdx, qword ptr [rbp - 0x18], 0x28
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x40]
	cmp	rcx, qword ptr [rdx + 0x10]
	jge	.label_2933
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2935
.label_2933:
	mov	rax, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rax + 0x18]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2936
	mov	dword ptr [rbp - 4], 1
	jmp	.label_2935
.label_2936:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x10]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	mov	dword ptr [rbp - 0x44], esi
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 0x18]
	sete	dl
	and	dl, 1
	movzx	esi, dl
	shl	esi, 1
	or	esi, dword ptr [rbp - 0x44]
	mov	dword ptr [rbp - 0x44], esi
	cmp	dword ptr [rbp - 0x44], 0
	jne	.label_2934
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2935
.label_2934:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x44]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	r8, qword ptr [rbp - 0x38]
	call	check_dst_limits_calc_pos_1
	mov	dword ptr [rbp - 4], eax
.label_2935:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4206d0

	.globl check_dst_limits_calc_pos_1
	.type check_dst_limits_calc_pos_1, @function
check_dst_limits_calc_pos_1:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x90
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x38], rcx
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx + 0x30]
	imul	rdx, qword ptr [rbp - 0x28], 0x18
	add	rcx, rdx
	mov	qword ptr [rbp - 0x40], rcx
	mov	qword ptr [rbp - 0x48], 0
.label_2946:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2949
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x40]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x50], rax
	mov	rcx, qword ptr [rbp - 0x38]
	mov	rcx, qword ptr [rcx]
	shl	rax, 4
	movzx	edx, byte ptr [rcx + rax + 8]
	mov	esi, edx
	sub	esi, 4
	mov	dword ptr [rbp - 0x68], edx
	mov	dword ptr [rbp - 0x6c], esi
	je	.label_2938
	jmp	.label_2955
.label_2955:
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 8
	mov	dword ptr [rbp - 0x70], eax
	je	.label_2956
	jmp	.label_2958
.label_2958:
	mov	eax, dword ptr [rbp - 0x68]
	sub	eax, 9
	mov	dword ptr [rbp - 0x74], eax
	je	.label_2959
	jmp	.label_2941
.label_2938:
	cmp	qword ptr [rbp - 0x30], -1
	je	.label_2943
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0xd8]
	imul	rcx, qword ptr [rbp - 0x30], 0x28
	add	rax, rcx
	mov	qword ptr [rbp - 0x58], rax
.label_2952:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x50]
	je	.label_2951
	jmp	.label_2937
.label_2951:
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_2953
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rdx + 0x22]
	mov	edx, eax
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x80], rcx
	mov	rcx, rsi
	mov	rsi, qword ptr [rbp - 0x80]
	shl	rsi, cl
	and	rdx, rsi
	cmp	rdx, 0
	jne	.label_2953
	jmp	.label_2937
.label_2953:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x38]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x28]
	jne	.label_2939
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_2950
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2947
.label_2950:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2947
.label_2939:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	esi, dword ptr [rbp - 0x14]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	r8, qword ptr [rbp - 0x30]
	call	check_dst_limits_calc_pos_1
	mov	dword ptr [rbp - 0x64], eax
	cmp	dword ptr [rbp - 0x64], -1
	jne	.label_2957
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2947
.label_2957:
	cmp	dword ptr [rbp - 0x64], 0
	jne	.label_2940
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	je	.label_2940
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2947
.label_2940:
	cmp	qword ptr [rbp - 0x20], 0x40
	jge	.label_2948
	mov	eax, 1
	mov	ecx, eax
	mov	rdx, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x88], rcx
	mov	rcx, rdx
	mov	rdx, qword ptr [rbp - 0x88]
	shl	rdx, cl
	xor	rdx, 0xffffffffffffffff
	mov	rsi, qword ptr [rbp - 0x58]
	movzx	eax, word ptr [rsi + 0x22]
	mov	edi, eax
	and	rdi, rdx
	mov	r8w, di
	mov	word ptr [rsi + 0x22], r8w
.label_2948:
	jmp	.label_2937
.label_2937:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, rax
	add	rcx, 0x28
	mov	qword ptr [rbp - 0x58], rcx
	cmp	byte ptr [rax + 0x20], 0
	jne	.label_2952
	jmp	.label_2943
.label_2943:
	jmp	.label_2942
.label_2956:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 1
	cmp	eax, 0
	je	.label_2945
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2945
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_2947
.label_2945:
	jmp	.label_2942
.label_2959:
	mov	eax, dword ptr [rbp - 0x14]
	and	eax, 2
	cmp	eax, 0
	je	.label_2954
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x50]
	mov	rdx, qword ptr [rbp - 0x38]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	cmp	rax, qword ptr [rcx]
	jne	.label_2954
	mov	dword ptr [rbp - 4], 0
	jmp	.label_2947
.label_2954:
	jmp	.label_2942
.label_2941:
	jmp	.label_2942
.label_2942:
	jmp	.label_2944
.label_2944:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_2946
.label_2949:
	xor	eax, eax
	mov	ecx, 1
	mov	edx, dword ptr [rbp - 0x14]
	and	edx, 2
	cmp	edx, 0
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_2947:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x90
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4209d0

	.globl sift_states_iter_mb
	.type sift_states_iter_mb, @function
sift_states_iter_mb:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rcx + 0x98]
	mov	qword ptr [rbp - 0x30], rcx
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x20]
	call	check_node_accept_bytes
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 0
	jle	.label_2960
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	cmp	rax, qword ptr [rbp - 0x28]
	jg	.label_2960
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2961
	mov	rax, qword ptr [rbp - 0x20]
	movsxd	rcx, dword ptr [rbp - 0x34]
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rdx + 0x18]
	mov	rsi, qword ptr [rdx + rcx*8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2960
.label_2961:
	mov	dword ptr [rbp - 0x34], 0
.label_2960:
	mov	eax, dword ptr [rbp - 0x34]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420aa0

	.globl free_fail_stack_return
	.type free_fail_stack_return, @function
free_fail_stack_return:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_2962
	mov	qword ptr [rbp - 0x10], 0
.label_2963:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	cmp	rax, qword ptr [rcx]
	jge	.label_2964
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_2963
.label_2964:
	mov	rax, qword ptr [rbp - 8]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
.label_2962:
	xor	eax, eax
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420b40

	.globl update_regs
	.type update_regs, @function
update_regs:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	qword ptr [rbp - 0x30], r9
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rdx, qword ptr [rbp - 8]
	shl	rcx, 4
	add	rcx, qword ptr [rdx]
	mov	eax, dword ptr [rcx + 8]
	and	eax, 0xff
	mov	dword ptr [rbp - 0x34], eax
	cmp	dword ptr [rbp - 0x34], 8
	jne	.label_2965
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x40]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2968
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x40]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x40]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rax + 8], -1
.label_2968:
	jmp	.label_2972
.label_2965:
	cmp	dword ptr [rbp - 0x34], 9
	jne	.label_2970
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x48]
	cmp	rax, qword ptr [rbp - 0x30]
	jge	.label_2967
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	cmp	rax, qword ptr [rbp - 0x28]
	jge	.label_2969
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2971
.label_2969:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 8]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x13
	and	edx, 1
	cmp	edx, 0
	je	.label_2973
	mov	rax, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax], -1
	je	.label_2973
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x30]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	jmp	.label_2966
.label_2973:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 8], rax
.label_2966:
	jmp	.label_2971
.label_2971:
	jmp	.label_2967
.label_2967:
	jmp	.label_2970
.label_2970:
	jmp	.label_2972
.label_2972:
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420ce0

	.globl pop_fail_stack
	.type pop_fail_stack, @function
pop_fail_stack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	qword ptr [rbp - 0x28], r8
	mov	rcx, qword ptr [rbp - 8]
	mov	rdx, qword ptr [rcx]
	add	rdx, -1
	mov	qword ptr [rcx], rdx
	mov	qword ptr [rbp - 0x30], rdx
	cmp	qword ptr [rbp - 0x30], 0
	jl	.label_2974
	jmp	.label_2975
.label_2974:
	movabs	rdi, OFFSET FLAT:.str.26
	movabs	rsi, OFFSET FLAT:.str.22_0
	mov	edx, 0x555
	movabs	rcx, OFFSET FLAT:__PRETTY_FUNCTION__.pop_fail_stack
	call	__assert_fail
.label_2975:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rdi, rax
	call	free
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 8]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	rdx, qword ptr [rcx + 0x18]
	mov	qword ptr [rax], rdx
	mov	rdx, qword ptr [rcx + 0x20]
	mov	qword ptr [rax + 8], rdx
	mov	rcx, qword ptr [rcx + 0x28]
	mov	qword ptr [rax + 0x10], rcx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 8]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x420e00

	.globl proceed_next_node
	.type proceed_next_node, @function
proceed_next_node:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	mov	rax, qword ptr [rbp + 0x10]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	qword ptr [rbp - 0x40], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x98]
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	r10d, dword ptr [rax + 8]
	and	r10d, 0xff
	and	r10d, 8
	cmp	r10d, 0
	je	.label_2976
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	qword ptr [rbp - 0x60], rax
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	movzx	edx, al
	movsxd	rcx, edx
	cmp	rcx, 0
	je	.label_2988
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2981
.label_2988:
	mov	qword ptr [rbp - 0x70], -1
	mov	qword ptr [rbp - 0x50], 0
.label_3007:
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	cmp	rax, qword ptr [rcx + 8]
	jge	.label_2993
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x68]
	mov	rcx, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0x78], rax
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x78]
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_3000
	jmp	.label_2985
.label_3000:
	cmp	qword ptr [rbp - 0x70], -1
	jne	.label_2986
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_2990
.label_2986:
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x70]
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_2979
	mov	rax, qword ptr [rbp - 0x78]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2981
.label_2979:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2977
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rax]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	r8, qword ptr [rbp - 0x20]
	mov	r9, qword ptr [rbp - 0x38]
	call	push_fail_stack
	cmp	eax, 0
	je	.label_2977
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2981
.label_2977:
	jmp	.label_3006
.label_3006:
	jmp	.label_2993
.label_2990:
	jmp	.label_2985
.label_2985:
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, 1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_3007
.label_2993:
	mov	rax, qword ptr [rbp - 0x70]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2981
.label_2976:
	mov	qword ptr [rbp - 0x80], 0
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	and	edx, 0xff
	mov	dword ptr [rbp - 0x84], edx
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	edx, dword ptr [rax + 8]
	shr	edx, 0x14
	and	edx, 1
	cmp	edx, 0
	je	.label_2997
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rsi, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x28]
	mov	rcx, qword ptr [rax]
	call	check_node_accept_bytes
	movsxd	rcx, eax
	mov	qword ptr [rbp - 0x80], rcx
	jmp	.label_2980
.label_2997:
	cmp	dword ptr [rbp - 0x84], 4
	jne	.label_2978
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	shl	rax, 4
	add	rax, qword ptr [rcx]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	sub	rax, qword ptr [rcx]
	mov	qword ptr [rbp - 0x80], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_3002
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax], -1
	je	.label_2983
	mov	rax, qword ptr [rbp - 0x90]
	shl	rax, 4
	add	rax, qword ptr [rbp - 0x20]
	cmp	qword ptr [rax + 8], -1
	jne	.label_2991
.label_2983:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2981
.label_2991:
	cmp	qword ptr [rbp - 0x80], 0
	je	.label_2999
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x98], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x30]
	mov	rcx, qword ptr [rbp - 0x28]
	sub	rax, qword ptr [rcx]
	cmp	rax, qword ptr [rbp - 0x80]
	jl	.label_2987
	mov	rax, qword ptr [rbp - 0x98]
	mov	rcx, qword ptr [rbp - 0x90]
	shl	rcx, 4
	add	rcx, qword ptr [rbp - 0x20]
	add	rax, qword ptr [rcx]
	mov	rcx, qword ptr [rbp - 0x98]
	mov	rdx, qword ptr [rbp - 0x28]
	add	rcx, qword ptr [rdx]
	mov	rdx, qword ptr [rbp - 0x80]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcmp
	cmp	eax, 0
	je	.label_2994
.label_2987:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2981
.label_2994:
	jmp	.label_2999
.label_2999:
	jmp	.label_3001
.label_3001:
	jmp	.label_3002
.label_3002:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_3003
	mov	rdi, qword ptr [rbp - 0x38]
	mov	rsi, qword ptr [rbp - 0x30]
	call	re_node_set_insert
	and	al, 1
	mov	byte ptr [rbp - 0x51], al
	mov	al, byte ptr [rbp - 0x51]
	xor	al, 0xff
	and	al, 1
	movzx	ecx, al
	movsxd	rsi, ecx
	cmp	rsi, 0
	je	.label_2995
	mov	qword ptr [rbp - 8], -2
	jmp	.label_2981
.label_2995:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	imul	rax, rax, 0x18
	add	rax, qword ptr [rcx + 0x28]
	mov	rax, qword ptr [rax + 0x10]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa0]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	je	.label_3004
	mov	rax, qword ptr [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2981
.label_3004:
	jmp	.label_3003
.label_3003:
	jmp	.label_2978
.label_2978:
	jmp	.label_2980
.label_2980:
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2982
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x30]
	shl	rcx, 4
	add	rax, rcx
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rax
	call	check_node_accept
	test	al, 1
	jne	.label_2982
	jmp	.label_2989
.label_2982:
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rcx + 0x18]
	mov	rax, qword ptr [rcx + rax*8]
	mov	qword ptr [rbp - 0xa8], rax
	cmp	qword ptr [rbp - 0x80], 0
	jne	.label_2998
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	add	rax, 1
	mov	qword ptr [rbp - 0xb0], rax
	jmp	.label_3005
.label_2998:
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	add	rax, qword ptr [rbp - 0x80]
	mov	qword ptr [rbp - 0xb0], rax
.label_3005:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	qword ptr [rcx], rax
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_2984
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0xa8]
	jg	.label_2992
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	cmp	qword ptr [rcx + rax*8], 0
	je	.label_2992
	mov	rax, qword ptr [rbp - 0x28]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 0xb8]
	mov	rax, qword ptr [rcx + rax*8]
	add	rax, 8
	mov	rsi, qword ptr [rbp - 0xa8]
	mov	rdi, rax
	call	re_node_set_contains
	cmp	rax, 0
	jne	.label_2984
.label_2992:
	mov	qword ptr [rbp - 8], -1
	jmp	.label_2981
.label_2984:
	mov	rax, qword ptr [rbp - 0x38]
	mov	qword ptr [rax + 8], 0
	mov	rax, qword ptr [rbp - 0xa8]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_2981
.label_2989:
	jmp	.label_2996
.label_2996:
	mov	qword ptr [rbp - 8], -1
.label_2981:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421360

	.globl push_fail_stack
	.type push_fail_stack, @function
push_fail_stack:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x50
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x20], rdx
	mov	qword ptr [rbp - 0x28], rcx
	mov	qword ptr [rbp - 0x30], r8
	mov	qword ptr [rbp - 0x38], r9
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rcx]
	mov	rsi, rdx
	add	rsi, 1
	mov	qword ptr [rcx], rsi
	mov	qword ptr [rbp - 0x48], rdx
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx]
	mov	rdx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rdx + 8]
	jne	.label_3008
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rcx + 8]
	shl	rcx, 1
	imul	rsi, rcx, 0x30
	mov	rdi, rax
	call	realloc
	mov	qword ptr [rbp - 0x50], rax
	cmp	qword ptr [rbp - 0x50], 0
	jne	.label_3011
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3010
.label_3011:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, qword ptr [rax + 8]
	shl	rcx, 1
	mov	qword ptr [rax + 8], rcx
	mov	rax, qword ptr [rbp - 0x50]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	qword ptr [rcx + 0x10], rax
.label_3008:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x28]
	shl	rax, 4
	mov	rdi, rax
	call	malloc
	mov	rcx, qword ptr [rbp - 0x48]
	mov	rdx, qword ptr [rbp - 0x10]
	imul	rcx, rcx, 0x30
	add	rcx, qword ptr [rdx + 0x10]
	mov	qword ptr [rcx + 0x10], rax
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	cmp	qword ptr [rax + 0x10], 0
	jne	.label_3009
	mov	dword ptr [rbp - 4], 0xc
	jmp	.label_3010
.label_3009:
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	mov	rax, qword ptr [rax + 0x10]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	rdx, qword ptr [rbp - 0x28]
	shl	rdx, 4
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 0x48]
	mov	rcx, qword ptr [rbp - 0x10]
	imul	rax, rax, 0x30
	add	rax, qword ptr [rcx + 0x10]
	add	rax, 0x18
	mov	rsi, qword ptr [rbp - 0x38]
	mov	rdi, rax
	call	re_node_set_init_copy
	mov	dword ptr [rbp - 0x3c], eax
	mov	eax, dword ptr [rbp - 0x3c]
	mov	dword ptr [rbp - 4], eax
.label_3010:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4214e0

	.globl c_strcasecmp
	.type c_strcasecmp, @function
c_strcasecmp:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x28], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	cmp	rsi, qword ptr [rbp - 0x28]
	jne	.label_3012
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3016
.label_3012:
	jmp	.label_3013
.label_3013:
	mov	rax, qword ptr [rbp - 0x20]
	movzx	edi, byte ptr [rax]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x29], cl
	mov	rdx, qword ptr [rbp - 0x28]
	movzx	edi, byte ptr [rdx]
	call	c_tolower
	mov	cl, al
	mov	byte ptr [rbp - 0x2a], cl
	movzx	eax, byte ptr [rbp - 0x29]
	cmp	eax, 0
	jne	.label_3015
	jmp	.label_3014
.label_3015:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_3013
.label_3014:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_3016:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4215a0

	.globl close_stream
	.type close_stream, @function
close_stream:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	rdi, qword ptr [rbp - 0x10]
	call	__fpending
	cmp	rax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x11], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	ferror_unlocked
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x12], cl
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fclose
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x13], cl
	test	byte ptr [rbp - 0x12], 1
	jne	.label_3017
	test	byte ptr [rbp - 0x13], 1
	je	.label_3018
	test	byte ptr [rbp - 0x11], 1
	jne	.label_3017
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_3018
.label_3017:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_3020
	call	__errno_location
	mov	dword ptr [rax], 0
.label_3020:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3019
.label_3018:
	mov	dword ptr [rbp - 4], 0
.label_3019:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421650

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	xor	eax, eax
	mov	esi, eax
	mov	dword ptr [rbp - 4], edi
	mov	byte ptr [rbp - 5], 1
	mov	edi, dword ptr [rbp - 4]
	call	setlocale
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_3021
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_8
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_3022
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_6
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_3023
.label_3022:
	mov	byte ptr [rbp - 5], 0
.label_3023:
	jmp	.label_3021
.label_3021:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4216d0

	.globl locale_charset
	.type locale_charset, @function
locale_charset:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	edi, 0xe
	call	rpl_nl_langinfo
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [rbp - 8], 0
	jne	.label_3024
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_3024:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_3025
	movabs	rax, OFFSET FLAT:.str.1_7
	mov	qword ptr [rbp - 8], rax
.label_3025:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421730
	.globl mb_width_aux
	.type mb_width_aux, @function
mb_width_aux:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	mov	edi, dword ptr [rbp - 4]
	call	wcwidth
	mov	dword ptr [rbp - 8], eax
	cmp	dword ptr [rbp - 8], 0
	jl	.label_3027
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_3026
.label_3027:
	mov	edi, dword ptr [rbp - 4]
	call	iswcntrl
	mov	edi, 1
	xor	ecx, ecx
	cmp	eax, 0
	cmovne	edi, ecx
	mov	dword ptr [rbp - 0xc], edi
.label_3026:
	mov	eax, dword ptr [rbp - 0xc]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421780

	.globl mb_copy
	.type mb_copy, @function
mb_copy:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi]
	mov	rdi, qword ptr [rbp - 0x10]
	add	rdi, 0x18
	cmp	rsi, rdi
	jne	.label_3028
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 0x10]
	add	rcx, 0x18
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rdx + 8]
	mov	rdi, rax
	mov	rsi, rcx
	call	memcpy
	mov	rax, qword ptr [rbp - 8]
	add	rax, 0x18
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
	jmp	.label_3029
.label_3028:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx], rax
.label_3029:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 8]
	mov	rcx, qword ptr [rbp - 8]
	mov	qword ptr [rcx + 8], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	dl, byte ptr [rax + 0x10]
	mov	rax, qword ptr [rbp - 8]
	mov	sil, dl
	and	sil, 1
	mov	byte ptr [rax + 0x10], sil
	test	dl, 1
	jne	.label_3031
	jmp	.label_3030
.label_3031:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax + 0x14]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax + 0x14], ecx
.label_3030:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421840

	.globl is_basic
	.type is_basic, @function
is_basic:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	edi, byte ptr [rbp - 1]
	sar	edi, 5
	movsxd	rcx, edi
	mov	edi,  dword ptr [dword ptr [+ (rcx * 4) + is_basic_table]]
	movzx	edx, byte ptr [rbp - 1]
	and	edx, 0x1f
	mov	ecx, edx
	shr	edi, cl
	and	edi, 1
	cmp	edi, 0
	setne	al
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421880

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	dword ptr [rbp - 0x14], 0
	mov	dword ptr [rbp - 0x1c], 0
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	dword ptr [rbp - 0x18], eax
	cmp	dword ptr [rbp - 0x18], 0
	jge	.label_3032
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3035
.label_3032:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_3033
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_3034
.label_3033:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_3034
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_3034:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_3036
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_3036:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_3035:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421950

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_3037
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_3038
.label_3037:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3039
.label_3038:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_3039:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4219b0

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, dword ptr [rdi]
	and	eax, 0x100
	cmp	eax, 0
	je	.label_3040
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_3040:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x4219f0

	.globl rpl_fseeko
	.type rpl_fseeko, @function
rpl_fseeko:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	dword ptr [rbp - 0x1c], edx
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rsi + 0x10]
	mov	rdi, qword ptr [rbp - 0x10]
	cmp	rsi, qword ptr [rdi + 8]
	jne	.label_3041
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_3041
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_3041
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_3043
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_3042
.label_3043:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_3042
.label_3041:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_3042:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421ac0

	.globl rpl_nl_langinfo
	.type rpl_nl_langinfo, @function
rpl_nl_langinfo:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	dword ptr [rbp - 4], edi
	add	edi, 0xffffd828
	sub	edi, 0xb
	mov	dword ptr [rbp - 8], edi
	ja	.label_3044
	jmp	.label_3046
.label_3046:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_3045
.label_3044:
	jmp	.label_3045
.label_3045:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421b10
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
	#Procedure 0x421b80
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
	#Procedure 0x421bd0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_3056
	jmp	.label_3057
.label_3057:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3058
.label_3056:
	mov	byte ptr [rbp - 1], 0
.label_3058:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421c00
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
	#Procedure 0x421c30
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
	#Procedure 0x421c80
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
	#Procedure 0x421cc0
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
	#Procedure 0x421d00
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
	#Procedure 0x421d40
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
	#Procedure 0x421d80
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
	#Procedure 0x421e00
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
	jmp	.label_3085
.label_3085:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_3084
	jmp	.label_3082
.label_3082:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_3083
.label_3084:
	mov	byte ptr [rbp - 1], 0
.label_3083:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	32
	#Procedure 0x421e50
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
	#Procedure 0x421e90
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
	#Procedure 0x421f00

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
	#Procedure 0x421f40
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
