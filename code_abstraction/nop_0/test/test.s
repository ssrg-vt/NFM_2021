	.section	.text
	.align	16
	#Procedure 0x401490
	.globl usage
	.type usage, @function
usage:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
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
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.3
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.4
	mov	dword ptr [rbp - 0x20], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.5
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	mov	dword ptr [rbp - 0x28], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.9
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.10
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.15
	mov	dword ptr [rbp - 0x4c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.17
	mov	dword ptr [rbp - 0x54], eax
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.18
	mov	qword ptr [rbp - 0x60], rax
	call	gettext
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x64], eax
	call	emit_ancillary_info
.label_8:
	mov	edi, dword ptr [rbp - 4]
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401750

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
.label_15:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	je	.label_14
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rax]
	call	strcmp
	cmp	eax, 0
	sete	cl
	xor	cl, 0xff
	mov	byte ptr [rbp - 0x21], cl
.label_14:
	mov	al, byte ptr [rbp - 0x21]
	test	al, 1
	jne	.label_13
	jmp	.label_12
.label_13:
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 0x10
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_15
.label_12:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	qword ptr [rax + 8], 0
	je	.label_10
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	mov	qword ptr [rbp - 0x10], rax
.label_10:
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.33
	movabs	rdx, OFFSET FLAT:.str.34
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
	je	.label_11
	movabs	rsi, OFFSET FLAT:.str.35
	mov	eax, 3
	mov	edx, eax
	mov	rdi, qword ptr [rbp - 0x20]
	call	strncmp
	cmp	eax, 0
	je	.label_11
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	dword ptr [rbp - 0x2c], eax
.label_11:
	movabs	rdi, OFFSET FLAT:.str.37
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.34
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	al, 0
	call	printf
	movabs	rdi, OFFSET FLAT:.str.38
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	movabs	rsi, OFFSET FLAT:.str.39
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
	.align	16
	#Procedure 0x4018f0

	.globl main
	.type main, @function
main:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], 0
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	edi, 6
	movabs	rsi, OFFSET FLAT:.str_0
	call	setlocale
	movabs	rdi, OFFSET FLAT:.str.21
	movabs	rsi, OFFSET FLAT:.str.22
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.21
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	mov	edi, 2
	mov	qword ptr [rbp - 0x30], rax
	call	initialize_exit_failure
	movabs	rdi, OFFSET FLAT:close_stdout
	call	atexit
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [word ptr [argv]],  rsi
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [dword ptr [argc]],  ecx
	mov	dword ptr [dword ptr [pos]],  1
	mov	ecx,  dword ptr [dword ptr [pos]]
	cmp	ecx,  dword ptr [dword ptr [argc]]
	mov	dword ptr [rbp - 0x34], eax
	jl	.label_18
	mov	dword ptr [rbp - 4], 1
	jmp	.label_17
.label_18:
	mov	eax,  dword ptr [dword ptr [argc]]
	sub	eax, 1
	mov	edi, eax
	call	posixtest
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	mov	edi,  dword ptr [dword ptr [pos]]
	cmp	edi,  dword ptr [dword ptr [argc]]
	je	.label_16
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0x40]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
.label_16:
	mov	eax, 1
	xor	ecx, ecx
	mov	dl, byte ptr [rbp - 0x11]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_17:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a40

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
	.align	16
	#Procedure 0x401a60

	.globl posixtest
	.type posixtest, @function
posixtest:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	dec	edi
	mov	eax, edi
	sub	edi, 4
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	ja	.label_23
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_26]]
	jmp	rcx
.label_646:
	call	one_argument
	and	al, 1
	mov	byte ptr [rbp - 5], al
	jmp	.label_21
.label_647:
	call	two_arguments
	and	al, 1
	mov	byte ptr [rbp - 5], al
	jmp	.label_21
.label_648:
	call	three_arguments
	and	al, 1
	mov	byte ptr [rbp - 5], al
	jmp	.label_21
.label_649:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.40
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_22
	mov	edi, 1
	call	advance
	call	three_arguments
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 5], al
	jmp	.label_21
.label_22:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.41
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_20
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.42
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_20
	xor	edi, edi
	call	advance
	call	two_arguments
	xor	edi, edi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	call	advance
	jmp	.label_21
.label_20:
	jmp	.label_24
.label_24:
	jmp	.label_23
.label_23:
	cmp	dword ptr [rbp - 4], 0
	jg	.label_25
	call	abort
.label_25:
	call	expr
	and	al, 1
	mov	byte ptr [rbp - 5], al
.label_21:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bb0

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x180
	test	al, al
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	movaps	xmmword ptr [rbp - 0x100], xmm5
	movaps	xmmword ptr [rbp - 0x110], xmm4
	movaps	xmmword ptr [rbp - 0x120], xmm3
	movaps	xmmword ptr [rbp - 0x130], xmm2
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	qword ptr [rbp - 0x158], rdi
	mov	qword ptr [rbp - 0x160], r9
	mov	qword ptr [rbp - 0x168], r8
	mov	qword ptr [rbp - 0x170], rcx
	mov	qword ptr [rbp - 0x178], rdx
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_27
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	movaps	xmmword ptr [rbp - 0x90], xmm1
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	movaps	xmmword ptr [rbp - 0x70], xmm3
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	movaps	xmmword ptr [rbp - 0x60], xmm4
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm5
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_27:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rdx, qword ptr [rbp - 0x170]
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	xor	r9d, r9d
	lea	r10, [rbp - 0x20]
	mov	qword ptr [rbp - 8], r8
	mov	r8, r10
	lea	r11, [rbp - 0xd0]
	mov	qword ptr [r8 + 0x10], r11
	lea	r11, [rbp + 0x10]
	mov	qword ptr [r8 + 8], r11
	mov	dword ptr [r8 + 4], 0x30
	mov	dword ptr [r8], 8
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, r9d
	mov	esi, r9d
	mov	rcx, r10
	call	verror
	mov	edi, 2
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401d20

	.globl one_argument
	.type one_argument, @function
one_argument:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [pos]]
	mov	ecx, eax
	add	ecx, 1
	mov	dword ptr [dword ptr [pos]],  ecx
	movsxd	rdx, eax
	mov	rsi,  qword ptr [word ptr [argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0
	setne	dil
	and	dil, 1
	movzx	eax, dil
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401d60

	.globl two_arguments
	.type two_arguments, @function
two_arguments:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.40
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_28
	xor	edi, edi
	call	advance
	call	one_argument
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_31
.label_28:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_29
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	je	.label_29
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0
	jne	.label_29
	call	unary_operator
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_30
.label_29:
	call	beyond
.label_30:
	jmp	.label_31
.label_31:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401e40

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	binop
	test	al, 1
	jne	.label_39
	jmp	.label_40
.label_39:
	xor	edi, edi
	call	binary_operator
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_41
.label_40:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.40
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_38
	mov	edi, 1
	call	advance
	call	two_arguments
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_32
.label_38:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.41
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_35
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.42
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_35
	xor	edi, edi
	call	advance
	call	one_argument
	xor	edi, edi
	and	al, 1
	mov	byte ptr [rbp - 1], al
	call	advance
	jmp	.label_33
.label_35:
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.46
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_37
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.47
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_34
.label_37:
	call	expr
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_36
.label_34:
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	mov	ecx,  dword ptr [dword ptr [pos]]
	add	ecx, 1
	movsxd	rdi, ecx
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x10], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
.label_36:
	jmp	.label_33
.label_33:
	jmp	.label_32
.label_32:
	jmp	.label_41
.label_41:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402010

	.globl advance
	.type advance, @function
advance:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	edi,  dword ptr [dword ptr [pos]]
	add	edi, 1
	mov	dword ptr [dword ptr [pos]],  edi
	test	byte ptr [rbp - 1], 1
	je	.label_42
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	jl	.label_42
	call	beyond
.label_42:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402060

	.globl expr
	.type expr, @function
expr:
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	jl	.label_43
	call	beyond
.label_43:
	call	or
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402090

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	add	edx, -0x47
	mov	eax, edx
	sub	edx, 0x33
	mov	qword ptr [rbp - 0xe0], rax
	mov	dword ptr [rbp - 0xe4], edx
	ja	.label_44
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_45]]
	jmp	rcx
.label_44:
	movabs	rdi, OFFSET FLAT:.str.43
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x4029a0

	.globl beyond
	.type beyond, @function
beyond:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.45
	call	gettext
	mov	ecx,  dword ptr [dword ptr [argc]]
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 8], rax
	call	quote
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x4029f0

	.globl unary_advance
	.type unary_advance, @function
unary_advance:
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	call	advance
	mov	edi,  dword ptr [dword ptr [pos]]
	add	edi, 1
	mov	dword ptr [dword ptr [pos]],  edi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402a20

	.globl find_int
	.type find_int, @function
find_int:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rdi
.label_73:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x20], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x20]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	je	.label_70
	jmp	.label_72
.label_72:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_73
.label_70:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2b
	jne	.label_76
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_68
.label_76:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	sete	dl
	and	dl, 1
	movzx	ecx, dl
	mov	rax, qword ptr [rbp - 0x10]
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x10], rax
.label_68:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	sub	edx, 0x30
	cmp	edx, 9
	ja	.label_69
	jmp	.label_66
.label_66:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_74
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_66
.label_74:
	jmp	.label_67
.label_67:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	mov	qword ptr [rbp - 0x28], rcx
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	je	.label_75
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_67
.label_75:
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_71
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x30
	pop	rbp
	ret	
.label_71:
	jmp	.label_69
.label_69:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402bb0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	mov	rbp, rsp
	mov	al, dil
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402bc0

	.globl binop
	.type binop, @function
binop:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	al, 1
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.49
	mov	esi, ecx
	mov	byte ptr [rbp - 9], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 9]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.50
	mov	esi, ecx
	mov	byte ptr [rbp - 0xb], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xb]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.51
	mov	esi, ecx
	mov	byte ptr [rbp - 0xc], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xc]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.52
	mov	esi, ecx
	mov	byte ptr [rbp - 0xd], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xd]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.53
	mov	esi, ecx
	mov	byte ptr [rbp - 0xe], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xe]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.54
	mov	esi, ecx
	mov	byte ptr [rbp - 0xf], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xf]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.55
	mov	esi, ecx
	mov	byte ptr [rbp - 0x10], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.56
	mov	esi, ecx
	mov	byte ptr [rbp - 0x11], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.57
	mov	esi, ecx
	mov	byte ptr [rbp - 0x12], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.58
	mov	esi, ecx
	mov	byte ptr [rbp - 0x13], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x13]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.59
	mov	esi, ecx
	mov	byte ptr [rbp - 0x14], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x14]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.60
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xa], cl
.label_77:
	mov	al, byte ptr [rbp - 0xa]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402d80

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x210
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 2], al
	test	byte ptr [rbp - 2], 1
	je	.label_105
	xor	edi, edi
	call	advance
.label_105:
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	mov	eax, dword ptr [rbp - 8]
	mov	ecx,  dword ptr [dword ptr [argc]]
	sub	ecx, 2
	cmp	eax, ecx
	jge	.label_110
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.61
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_110
	xor	edi, edi
	mov	byte ptr [rbp - 0x129], 1
	call	advance
	jmp	.label_119
.label_110:
	mov	byte ptr [rbp - 0x129], 0
.label_119:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_82
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6c
	je	.label_86
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x67
	jne	.label_92
.label_86:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x65
	je	.label_100
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x74
	je	.label_100
.label_92:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x65
	jne	.label_109
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x71
	je	.label_100
.label_109:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6e
	jne	.label_83
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x65
	jne	.label_83
.label_100:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 3], 0
	jne	.label_83
	test	byte ptr [rbp - 2], 1
	je	.label_88
	lea	rsi, [rbp - 0x140]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x1d0], rsi
	call	strlen
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x1d0]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_101
.label_88:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	find_int
	mov	qword ptr [rbp - 0x1d8], rax
.label_101:
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x168], rax
	test	byte ptr [rbp - 0x129], 1
	je	.label_108
	lea	rsi, [rbp - 0x160]
	mov	eax, dword ptr [rbp - 8]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	qword ptr [rbp - 0x1e0], rsi
	call	strlen
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x1e0]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_117
.label_108:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	find_int
	mov	qword ptr [rbp - 0x1e8], rax
.label_117:
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	qword ptr [rbp - 0x170], rax
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rsi, qword ptr [rbp - 0x170]
	call	strintcmp
	mov	dword ptr [rbp - 0x174], eax
	movsxd	rsi, dword ptr [rbp - 8]
	mov	rdi,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rdi + rsi*8]
	movsx	eax, byte ptr [rsi + 2]
	cmp	eax, 0x65
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x175], cl
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	movsxd	rsi, dword ptr [rbp - 8]
	mov	rdi,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rdi + rsi*8]
	movsx	eax, byte ptr [rsi + 1]
	cmp	eax, 0x6c
	jne	.label_89
	mov	eax, dword ptr [rbp - 0x174]
	mov	cl, byte ptr [rbp - 0x175]
	and	cl, 1
	movzx	edx, cl
	cmp	eax, edx
	setl	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1ec], eax
	jmp	.label_95
.label_89:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x67
	jne	.label_91
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x174]
	mov	dl, byte ptr [rbp - 0x175]
	and	dl, 1
	movzx	esi, dl
	sub	eax, esi
	cmp	ecx, eax
	setg	dl
	and	dl, 1
	movzx	eax, dl
	mov	dword ptr [rbp - 0x1f0], eax
	jmp	.label_115
.label_91:
	cmp	dword ptr [rbp - 0x174], 0
	setne	al
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x175]
	and	al, 1
	movzx	edx, al
	cmp	ecx, edx
	sete	al
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x1f0], ecx
.label_115:
	mov	eax, dword ptr [rbp - 0x1f0]
	mov	dword ptr [rbp - 0x1ec], eax
.label_95:
	mov	eax, dword ptr [rbp - 0x1ec]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_85
.label_83:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	sub	esi, 0x65
	mov	dword ptr [rbp - 0x1f4], edx
	mov	dword ptr [rbp - 0x1f8], esi
	je	.label_94
	jmp	.label_102
.label_102:
	mov	eax, dword ptr [rbp - 0x1f4]
	sub	eax, 0x6e
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_103
	jmp	.label_98
.label_98:
	mov	eax, dword ptr [rbp - 0x1f4]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x200], eax
	je	.label_107
	jmp	.label_111
.label_111:
	jmp	.label_87
.label_103:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x74
	jne	.label_112
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 3], 0
	jne	.label_112
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	test	byte ptr [rbp - 2], 1
	jne	.label_118
	test	byte ptr [rbp - 0x129], 1
	je	.label_80
.label_118:
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, rax
	mov	al, 0
	call	test_syntax_error
.label_80:
	lea	rsi, [rbp - 0x188]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	get_mtime
	lea	rsi, [rbp - 0x198]
	and	al, 1
	mov	byte ptr [rbp - 0x199], al
	mov	r8d, dword ptr [rbp - 8]
	add	r8d, 1
	movsxd	rcx, r8d
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	get_mtime
	xor	r8d, r8d
	mov	r9b, r8b
	and	al, 1
	mov	byte ptr [rbp - 0x19a], al
	test	byte ptr [rbp - 0x199], 1
	mov	byte ptr [rbp - 0x201], r9b
	je	.label_104
	mov	al, 1
	test	byte ptr [rbp - 0x19a], 1
	mov	byte ptr [rbp - 0x202], al
	je	.label_78
	mov	rdi, qword ptr [rbp - 0x188]
	mov	rsi, qword ptr [rbp - 0x180]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rcx, qword ptr [rbp - 0x190]
	call	timespec_cmp
	cmp	eax, 0
	setg	r8b
	mov	byte ptr [rbp - 0x202], r8b
.label_78:
	mov	al, byte ptr [rbp - 0x202]
	mov	byte ptr [rbp - 0x201], al
.label_104:
	mov	al, byte ptr [rbp - 0x201]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_85
.label_112:
	jmp	.label_87
.label_94:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x66
	jne	.label_79
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 3], 0
	jne	.label_79
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	test	byte ptr [rbp - 2], 1
	jne	.label_90
	test	byte ptr [rbp - 0x129], 1
	je	.label_96
.label_90:
	movabs	rdi, OFFSET FLAT:.str.63
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, rax
	mov	al, 0
	call	test_syntax_error
.label_96:
	lea	rsi, [rbp - 0x98]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	stat
	xor	r8d, r8d
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0x203], r9b
	jne	.label_93
	lea	rsi, [rbp - 0x128]
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	stat
	xor	r8d, r8d
	mov	r9b, r8b
	cmp	eax, 0
	mov	byte ptr [rbp - 0x203], r9b
	jne	.label_93
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	cmp	rdx, qword ptr [rbp - 0x128]
	mov	byte ptr [rbp - 0x203], cl
	jne	.label_93
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x120]
	sete	cl
	mov	byte ptr [rbp - 0x203], cl
.label_93:
	mov	al, byte ptr [rbp - 0x203]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_85
.label_79:
	jmp	.label_87
.label_107:
	mov	eax, 0x74
	movsxd	rcx, dword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	esi, byte ptr [rcx + 2]
	cmp	eax, esi
	jne	.label_97
	xor	eax, eax
	movsxd	rcx, dword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	esi, byte ptr [rcx + 3]
	cmp	eax, esi
	jne	.label_97
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	test	byte ptr [rbp - 2], 1
	jne	.label_114
	test	byte ptr [rbp - 0x129], 1
	je	.label_106
.label_114:
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	mov	rdi, rax
	mov	al, 0
	call	test_syntax_error
.label_106:
	lea	rsi, [rbp - 0x1b0]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	get_mtime
	lea	rsi, [rbp - 0x1c0]
	and	al, 1
	mov	byte ptr [rbp - 0x1c1], al
	mov	r8d, dword ptr [rbp - 8]
	add	r8d, 1
	movsxd	rcx, r8d
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	get_mtime
	xor	r8d, r8d
	mov	r9b, r8b
	and	al, 1
	mov	byte ptr [rbp - 0x1c2], al
	test	byte ptr [rbp - 0x1c2], 1
	mov	byte ptr [rbp - 0x204], r9b
	je	.label_81
	mov	al, 1
	test	byte ptr [rbp - 0x1c1], 1
	mov	byte ptr [rbp - 0x205], al
	je	.label_99
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	mov	rcx, qword ptr [rbp - 0x1b8]
	call	timespec_cmp
	cmp	eax, 0
	setl	r8b
	mov	byte ptr [rbp - 0x205], r8b
.label_99:
	mov	al, byte ptr [rbp - 0x205]
	mov	byte ptr [rbp - 0x204], al
.label_81:
	mov	al, byte ptr [rbp - 0x204]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_85
.label_97:
	jmp	.label_87
.label_87:
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	movsxd	rdi, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x210], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0x210]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
.label_82:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x3d
	jne	.label_84
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 1], 0
	je	.label_116
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x3d
	jne	.label_84
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 2], 0
	jne	.label_84
.label_116:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [pos]]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rcx + rax*8]
	call	strcmp
	cmp	eax, 0
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x1c3], r8b
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	mov	r8b, byte ptr [rbp - 0x1c3]
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	jmp	.label_85
.label_84:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.50
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_113
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [pos]]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rcx + rax*8]
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	and	r8b, 1
	mov	byte ptr [rbp - 0x1c4], r8b
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	mov	r8b, byte ptr [rbp - 0x1c4]
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	jmp	.label_85
.label_113:
	call	abort
.label_85:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x210
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403750

	.globl get_mtime
	.type get_mtime, @function
get_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rax, [rbp - 0xa0]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	call	stat
	cmp	eax, 0
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0xa1], cl
	test	byte ptr [rbp - 0xa1], 1
	je	.label_120
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0xc0], rax
	call	get_stat_mtime
	mov	qword ptr [rbp - 0xb8], rax
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rbp - 0xb0]
	mov	qword ptr [rdx + 8], rax
.label_120:
	mov	al, byte ptr [rbp - 0xa1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0xc0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4037f0

	.globl or
	.type or, @function
or:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 1], 0
.label_123:
	call	and
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	ecx,  dword ptr [dword ptr [pos]]
	cmp	ecx,  dword ptr [dword ptr [argc]]
	jge	.label_121
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.47
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	je	.label_122
.label_121:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
.label_122:
	xor	edi, edi
	call	advance
	jmp	.label_123
	.section	.text
	.align	16
	#Procedure 0x403880

	.globl and
	.type and, @function
and:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 1], 1
.label_126:
	call	term
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edx, al
	and	edx, ecx
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	ecx,  dword ptr [dword ptr [pos]]
	cmp	ecx,  dword ptr [dword ptr [argc]]
	jge	.label_124
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.46
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	je	.label_125
.label_124:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
.label_125:
	xor	edi, edi
	call	advance
	jmp	.label_126
	.section	.text
	.align	16
	#Procedure 0x403910

	.globl term
	.type term, @function
term:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	byte ptr [rbp - 2], 0
.label_136:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	mov	byte ptr [rbp - 9], cl
	jge	.label_137
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [pos]]
	mov	rsi,  qword ptr [word ptr [argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x21
	mov	byte ptr [rbp - 9], cl
	jne	.label_137
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 9], sil
.label_137:
	mov	al, byte ptr [rbp - 9]
	test	al, 1
	jne	.label_127
	jmp	.label_131
.label_127:
	mov	edi, 1
	call	advance
	mov	al, byte ptr [rbp - 2]
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 2], al
	jmp	.label_136
.label_131:
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	jl	.label_142
	call	beyond
.label_142:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x28
	jne	.label_145
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	jne	.label_145
	mov	edi, 1
	call	advance
	mov	dword ptr [rbp - 8], 1
.label_138:
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, dword ptr [rbp - 8]
	cmp	eax,  dword ptr [dword ptr [argc]]
	mov	byte ptr [rbp - 0xa], cl
	jge	.label_133
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.42
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	mov	byte ptr [rbp - 0xa], r8b
.label_133:
	mov	al, byte ptr [rbp - 0xa]
	test	al, 1
	jne	.label_149
	jmp	.label_130
.label_149:
	cmp	dword ptr [rbp - 8], 4
	jne	.label_146
	mov	eax,  dword ptr [dword ptr [argc]]
	sub	eax,  dword ptr [dword ptr [pos]]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_130
.label_146:
	jmp	.label_135
.label_135:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	jmp	.label_138
.label_130:
	mov	edi, dword ptr [rbp - 8]
	call	posixtest
	and	al, 1
	mov	byte ptr [rbp - 1], al
	movsxd	rcx,  dword ptr [dword ptr [pos]]
	mov	rdx,  qword ptr [word ptr [argv]]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_144
	movabs	rdi, OFFSET FLAT:.str.66
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x18], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, rax
	mov	al, 0
	call	test_syntax_error
.label_144:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x29
	jne	.label_128
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	je	.label_147
.label_128:
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x20], rax
	call	quote_n
	mov	edi, 1
	movsxd	rsi,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rcx + rsi*8]
	mov	qword ptr [rbp - 0x28], rax
	call	quote_n
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	mov	al, 0
	call	test_syntax_error
.label_147:
	jmp	.label_151
.label_151:
	xor	edi, edi
	call	advance
	jmp	.label_141
.label_145:
	mov	eax, 4
	mov	ecx,  dword ptr [dword ptr [argc]]
	sub	ecx,  dword ptr [dword ptr [pos]]
	cmp	eax, ecx
	jg	.label_134
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.61
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_134
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 2
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	binop
	test	al, 1
	jne	.label_132
	jmp	.label_134
.label_132:
	mov	edi, 1
	call	binary_operator
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_140
.label_134:
	mov	eax, 3
	mov	ecx,  dword ptr [dword ptr [argc]]
	sub	ecx,  dword ptr [dword ptr [pos]]
	cmp	eax, ecx
	jg	.label_143
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	binop
	test	al, 1
	jne	.label_148
	jmp	.label_143
.label_148:
	xor	edi, edi
	call	binary_operator
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_139
.label_143:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x2d
	jne	.label_129
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	je	.label_129
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0
	jne	.label_129
	call	unary_operator
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_150
.label_129:
	xor	edi, edi
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0
	setne	sil
	and	sil, 1
	mov	byte ptr [rbp - 1], sil
	call	advance
.label_150:
	jmp	.label_139
.label_139:
	jmp	.label_140
.label_140:
	jmp	.label_141
.label_141:
	mov	al, byte ptr [rbp - 2]
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edx, al
	xor	ecx, edx
	cmp	ecx, 0
	setne	al
	and	al, 1
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403d60
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
	.align	16
	#Procedure 0x403d80
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
	.align	16
	#Procedure 0x403da0

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rdi,  qword ptr [word ptr [stdout]]
	call	close_stream
	cmp	eax, 0
	je	.label_154
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_156
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	je	.label_154
.label_156:
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_152
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
	jmp	.label_155
.label_152:
	call	__errno_location
	xor	edi, edi
	movabs	rdx, OFFSET FLAT:.str_2
	mov	esi, dword ptr [rax]
	mov	rcx, qword ptr [rbp - 8]
	mov	al, 0
	call	error
.label_155:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_154:
	mov	rdi,  qword ptr [word ptr [stderr]]
	call	close_stream
	cmp	eax, 0
	je	.label_153
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_153:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403e90

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 0x10]
	add	rsi, 0x14
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_157
	jmp	.label_160
.label_160:
	mov	eax, 0x30
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_160
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_159
.label_157:
	jmp	.label_158
.label_158:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	jne	.label_158
	jmp	.label_159
.label_159:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403f90

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_164
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	dword ptr [rbp - 0x1c], eax
	call	abort
.label_164:
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	call	strrchr
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_165
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_161
.label_165:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_161:
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, qword ptr [rbp - 8]
	sub	rax, rcx
	cmp	rax, 7
	jl	.label_162
	movabs	rsi, OFFSET FLAT:.str.1_1
	mov	eax, 7
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	add	rcx, -7
	mov	rdi, rcx
	call	strncmp
	cmp	eax, 0
	jne	.label_162
	movabs	rsi, OFFSET FLAT:.str.2_0
	mov	eax, 3
	mov	edx, eax
	mov	rcx, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 8], rcx
	mov	rdi, qword ptr [rbp - 0x18]
	call	strncmp
	cmp	eax, 0
	jne	.label_163
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	qword ptr [rbp - 8], rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_163:
	jmp	.label_162
.label_162:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [program_name]],  rax
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [word ptr [__progname_full]],  rax
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4040b0
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
	je	.label_166
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_167
.label_166:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_167
.label_167:
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
	.align	16
	#Procedure 0x404130
	.globl get_quoting_style
	.type get_quoting_style, @function
get_quoting_style:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	cmp	qword ptr [rbp - 8], 0
	je	.label_168
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_169
.label_168:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rax]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404170
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
	je	.label_170
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_171
.label_170:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4041c0

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
	je	.label_172
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_173
.label_172:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_173
.label_173:
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
	.align	16
	#Procedure 0x404270
	.globl set_quoting_flags
	.type set_quoting_flags, @function
set_quoting_flags:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	dword ptr [rbp - 0xc], esi
	cmp	qword ptr [rbp - 8], 0
	jne	.label_174
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_174:
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
	.align	16
	#Procedure 0x4042b0

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
	jne	.label_175
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_175:
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_177
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_176
.label_177:
	call	abort
.label_176:
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
	.align	16
	#Procedure 0x404320
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
	je	.label_178
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_179
.label_178:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_179
.label_179:
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
	.align	16
	#Procedure 0x4043f0

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
.label_306:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_211
	mov	rax, qword ptr [rbp - 0xc8]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_218]]
	jmp	rcx
.label_639:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_638:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_225
	jmp	.label_229
.label_229:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_230
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_230:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_225
.label_225:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	byte ptr [rbp - 0x79], 1
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_244
.label_640:
	mov	byte ptr [rbp - 0x79], 1
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_244
.label_641:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_338
	movabs	rdi, OFFSET FLAT:.str.11_0
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	movabs	rdi, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x48], rax
	mov	esi, dword ptr [rbp - 0x34]
	call	gettext_quote
	mov	qword ptr [rbp - 0x50], rax
.label_338:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_260
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_278:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_263
	jmp	.label_267
.label_267:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_269
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_269:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_274
.label_274:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_278
.label_263:
	jmp	.label_260
.label_260:
	mov	byte ptr [rbp - 0x79], 1
	mov	rax, qword ptr [rbp - 0x50]
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x70]
	call	strlen
	mov	qword ptr [rbp - 0x78], rax
	jmp	.label_244
.label_636:
	mov	byte ptr [rbp - 0x79], 1
.label_635:
	mov	byte ptr [rbp - 0x7b], 1
.label_637:
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_290
	mov	byte ptr [rbp - 0x79], 1
.label_290:
	jmp	.label_291
.label_291:
	mov	dword ptr [rbp - 0x34], 2
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_301
	jmp	.label_295
.label_295:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_296
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_296:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_301
.label_301:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_244
.label_634:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_244
.label_211:
	call	abort
.label_244:
	mov	qword ptr [rbp - 0x58], 0
.label_276:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_310
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	sete	sil
	and	sil, 1
	movzx	edx, sil
	mov	dword ptr [rbp - 0xd4], edx
	jmp	.label_314
.label_310:
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	dword ptr [rbp - 0xd4], edx
.label_314:
	mov	eax, dword ptr [rbp - 0xd4]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_327
	jmp	.label_334
.label_327:
	mov	byte ptr [rbp - 0x81], 0
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	je	.label_335
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_335
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_335
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x78]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	jne	.label_347
	mov	eax, 1
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_347
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_362
.label_347:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_362:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	ja	.label_335
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x70]
	mov	rdx, qword ptr [rbp - 0x78]
	mov	rdi, rax
	call	memcmp
	cmp	eax, 0
	jne	.label_335
	test	byte ptr [rbp - 0x7b], 1
	je	.label_365
	jmp	.label_181
.label_365:
	mov	byte ptr [rbp - 0x81], 1
.label_335:
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
	ja	.label_370
	mov	rax, qword ptr [rbp - 0xf0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_373]]
	jmp	rcx
.label_675:
	test	byte ptr [rbp - 0x79], 1
	je	.label_375
	jmp	.label_379
.label_379:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_371
	jmp	.label_181
.label_371:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_185
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_185
	jmp	.label_187
.label_187:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_188
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_188:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_194
.label_194:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_197
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_197:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_202
.label_202:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_208
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_208:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_185:
	jmp	.label_219
.label_219:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_221
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_221:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_228
.label_228:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_232
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_232
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_232
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x39
	jg	.label_232
	jmp	.label_246
.label_246:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_248
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_248:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_254
.label_254:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_257
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_257:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_232
.label_232:
	mov	byte ptr [rbp - 0x7f], 0x30
	jmp	.label_268
.label_375:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 1
	cmp	eax, 0
	je	.label_245
	jmp	.label_265
.label_245:
	jmp	.label_268
.label_268:
	jmp	.label_203
.label_686:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	mov	dword ptr [rbp - 0x100], ecx
	je	.label_275
	jmp	.label_281
.label_281:
	mov	eax, dword ptr [rbp - 0xfc]
	sub	eax, 5
	mov	dword ptr [rbp - 0x104], eax
	je	.label_283
	jmp	.label_346
.label_275:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_294
	jmp	.label_181
.label_294:
	jmp	.label_289
.label_283:
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_292
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_292
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	cmp	edx, 0x3f
	jne	.label_292
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rax + rcx + 2]
	mov	esi, edx
	sub	esi, 0x21
	mov	dword ptr [rbp - 0x108], edx
	mov	dword ptr [rbp - 0x10c], esi
	je	.label_299
	jmp	.label_305
.label_305:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	jb	.label_299
	jmp	.label_308
.label_308:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	je	.label_299
	jmp	.label_315
.label_315:
	mov	eax, dword ptr [rbp - 0x108]
	sub	eax, 0x2f
	mov	dword ptr [rbp - 0x118], eax
	je	.label_299
	jmp	.label_321
.label_321:
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	ja	.label_322
	jmp	.label_299
.label_299:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_330
	jmp	.label_181
.label_330:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rcx, qword ptr [rbp - 0x28]
	mov	dl, byte ptr [rcx + rax + 2]
	mov	byte ptr [rbp - 0x7f], dl
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_333
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_333:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_345
.label_345:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_349
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_349:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_358
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_358:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_360
.label_360:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_341
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x3f
.label_341:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_363
.label_322:
	jmp	.label_363
.label_363:
	jmp	.label_292
.label_292:
	jmp	.label_289
.label_346:
	jmp	.label_289
.label_289:
	jmp	.label_203
.label_676:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_198
.label_677:
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_198
.label_681:
	mov	byte ptr [rbp - 0x80], 0x66
	jmp	.label_198
.label_679:
	mov	byte ptr [rbp - 0x80], 0x6e
	jmp	.label_192
.label_682:
	mov	byte ptr [rbp - 0x80], 0x72
	jmp	.label_192
.label_678:
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_192
.label_680:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_198
.label_687:
	mov	al, byte ptr [rbp - 0x7f]
	mov	byte ptr [rbp - 0x80], al
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_377
	test	byte ptr [rbp - 0x7b], 1
	je	.label_380
	jmp	.label_181
.label_380:
	jmp	.label_182
.label_377:
	test	byte ptr [rbp - 0x79], 1
	je	.label_183
	test	byte ptr [rbp - 0x7b], 1
	je	.label_183
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_183
	jmp	.label_182
.label_183:
	jmp	.label_192
.label_192:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_193
	test	byte ptr [rbp - 0x7b], 1
	je	.label_193
	jmp	.label_181
.label_193:
	jmp	.label_198
.label_198:
	test	byte ptr [rbp - 0x79], 1
	je	.label_199
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_201
.label_199:
	jmp	.label_203
.label_688:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_205
	mov	rax, qword ptr [rbp - 0x28]
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	je	.label_209
	jmp	.label_213
.label_205:
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_209
.label_213:
	jmp	.label_203
.label_209:
	jmp	.label_217
.label_217:
	cmp	qword ptr [rbp - 0x58], 0
	je	.label_220
	jmp	.label_203
.label_220:
	jmp	.label_223
.label_223:
	mov	byte ptr [rbp - 0x83], 1
.label_683:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_227
	test	byte ptr [rbp - 0x7b], 1
	je	.label_227
	jmp	.label_181
.label_227:
	jmp	.label_203
.label_685:
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_233
	test	byte ptr [rbp - 0x7b], 1
	je	.label_238
	jmp	.label_181
.label_238:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_241
	cmp	qword ptr [rbp - 0x68], 0
	jne	.label_241
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_241:
	jmp	.label_250
.label_250:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_252
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_252:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_256
.label_256:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_259
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_259:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_266
.label_266:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_272
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_272:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_233:
	jmp	.label_203
.label_684:
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_203
.label_370:
	test	byte ptr [rbp - 0x7a], 1
	je	.label_282
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
	jmp	.label_288
.label_282:
	xor	esi, esi
	mov	eax, 8
	mov	edx, eax
	lea	rcx, [rbp - 0xa0]
	mov	rdi, rcx
	call	memset
	mov	qword ptr [rbp - 0x90], 0
	mov	byte ptr [rbp - 0x91], 1
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_300
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_300:
	jmp	.label_210
.label_210:
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
	jne	.label_319
	jmp	.label_328
.label_319:
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_326
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_328
.label_326:
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_332
	mov	byte ptr [rbp - 0x91], 0
.label_354:
	xor	eax, eax
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x58]
	add	rdx, qword ptr [rbp - 0x90]
	cmp	rdx, qword ptr [rbp - 0x30]
	mov	byte ptr [rbp - 0x129], cl
	jae	.label_336
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_336:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_351
	jmp	.label_352
.label_351:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_354
.label_352:
	jmp	.label_328
.label_332:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_191
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_191
	mov	qword ptr [rbp - 0xb8], 1
.label_186:
	mov	rax, qword ptr [rbp - 0xb8]
	cmp	rax, qword ptr [rbp - 0xb0]
	jae	.label_361
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
	jb	.label_344
	jmp	.label_369
.label_369:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	mov	dword ptr [rbp - 0x138], eax
	je	.label_344
	jmp	.label_339
.label_339:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	mov	dword ptr [rbp - 0x13c], eax
	je	.label_344
	jmp	.label_376
.label_376:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_378
	jmp	.label_344
.label_344:
	jmp	.label_181
.label_378:
	jmp	.label_189
.label_189:
	jmp	.label_226
.label_226:
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_186
.label_361:
	jmp	.label_191
.label_191:
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_195
	mov	byte ptr [rbp - 0x91], 0
.label_195:
	mov	rax, qword ptr [rbp - 0xb0]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_372
.label_372:
	jmp	.label_312
.label_312:
	jmp	.label_204
.label_204:
	lea	rdi, [rbp - 0xa0]
	call	mbsinit
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	test	cl, 1
	jne	.label_210
.label_328:
	jmp	.label_288
.label_288:
	mov	eax, 1
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	jb	.label_215
	test	byte ptr [rbp - 0x79], 1
	je	.label_214
	test	byte ptr [rbp - 0x91], 1
	jne	.label_214
.label_215:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0xc0], rax
.label_364:
	test	byte ptr [rbp - 0x79], 1
	je	.label_235
	test	byte ptr [rbp - 0x91], 1
	jne	.label_235
	jmp	.label_239
.label_239:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_240
	jmp	.label_181
.label_240:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_243
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_243
	jmp	.label_249
.label_249:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_251
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_251:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_255
.label_255:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_258
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_258:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_264
.label_264:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_270
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_270:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_243:
	jmp	.label_277
.label_277:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_279
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_279:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_284
.label_284:
	jmp	.label_286
.label_286:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_287
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 6
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_287:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_293
.label_293:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_297
	movzx	eax, byte ptr [rbp - 0x7f]
	sar	eax, 3
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x60]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	byte ptr [rsi + rdx], cl
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	movzx	eax, byte ptr [rbp - 0x7f]
	and	eax, 7
	add	eax, 0x30
	mov	cl, al
	mov	byte ptr [rbp - 0x7f], cl
	jmp	.label_303
.label_235:
	test	byte ptr [rbp - 0x81], 1
	je	.label_307
	jmp	.label_309
.label_309:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_311
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_311:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x81], 0
.label_307:
	jmp	.label_303
.label_303:
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	ja	.label_324
	jmp	.label_329
.label_324:
	jmp	.label_331
.label_331:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_234
	test	byte ptr [rbp - 0x82], 1
	jne	.label_234
	jmp	.label_337
.label_337:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_340
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_340:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_343
.label_343:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_348
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_348:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_234:
	jmp	.label_355
.label_355:
	jmp	.label_357
.label_357:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_359
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_359:
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
	jmp	.label_364
.label_329:
	jmp	.label_182
.label_214:
	jmp	.label_203
.label_203:
	test	byte ptr [rbp - 0x79], 1
	je	.label_366
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_367
.label_366:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_368
.label_367:
	cmp	qword ptr [rbp - 0x40], 0
	je	.label_368
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
	jne	.label_317
.label_368:
	test	byte ptr [rbp - 0x81], 1
	jne	.label_317
	jmp	.label_182
.label_317:
	jmp	.label_201
.label_201:
	jmp	.label_316
.label_316:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_180
	jmp	.label_181
.label_180:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_184
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_184
	jmp	.label_190
.label_190:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_356
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_356:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_196
.label_196:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_200
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_200:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_207
.label_207:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_212:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_184:
	jmp	.label_222
.label_222:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_224
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_224:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_231
.label_231:
	jmp	.label_182
.label_182:
	jmp	.label_236
.label_236:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_237
	test	byte ptr [rbp - 0x82], 1
	jne	.label_237
	jmp	.label_298
.label_298:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_242
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_242:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_247
.label_247:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_253
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_253:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_237:
	jmp	.label_261
.label_261:
	jmp	.label_262
.label_262:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_206
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rcx], al
.label_206:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	test	byte ptr [rbp - 0x83], 1
	jne	.label_271
	mov	byte ptr [rbp - 0x7e], 0
.label_271:
	jmp	.label_265
.label_265:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_276
.label_334:
	cmp	qword ptr [rbp - 0x60], 0
	jne	.label_280
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_280
	test	byte ptr [rbp - 0x7b], 1
	je	.label_280
	jmp	.label_181
.label_280:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_285
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_285
	test	byte ptr [rbp - 0x7d], 1
	je	.label_285
	test	byte ptr [rbp - 0x7e], 1
	je	.label_374
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
	jmp	.label_302
.label_374:
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_304
	cmp	qword ptr [rbp - 0x68], 0
	je	.label_304
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_306
.label_304:
	jmp	.label_323
.label_323:
	jmp	.label_285
.label_285:
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_313
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_313
	jmp	.label_318
.label_318:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_320
	jmp	.label_273
.label_273:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_325
	mov	rax, qword ptr [rbp - 0x70]
	mov	cl, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_325:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_216
.label_216:
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_318
.label_320:
	jmp	.label_313
.label_313:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_342
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_302
.label_181:
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_350
	test	byte ptr [rbp - 0x79], 1
	je	.label_350
	mov	dword ptr [rbp - 0x34], 4
.label_350:
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
.label_302:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405790
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
	.align	16
	#Procedure 0x4057d0

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
	je	.label_381
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_382
.label_381:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_382
.label_382:
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
	je	.label_383
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_383:
	mov	rax, qword ptr [rbp - 0x48]
	add	rsp, 0x78
	pop	rbx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405930
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rax,  qword ptr [word ptr [slotvec]]
	mov	qword ptr [rbp - 8], rax
	mov	dword ptr [rbp - 0xc], 1
.label_386:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_385
	movsxd	rax, dword ptr [rbp - 0xc]
	shl	rax, 4
	add	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, 1
	mov	dword ptr [rbp - 0xc], eax
	jmp	.label_386
.label_385:
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	cmp	qword ptr [rcx + 8], rax
	je	.label_388
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	qword ptr [word ptr [label_387]],  rax
.label_388:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_384
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	call	free
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_384:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x405a10

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
	.align	16
	#Procedure 0x405a50

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
	jge	.label_393
	call	abort
.label_393:
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_391
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 0x30], rax
	sete	cl
	and	cl, 1
	mov	byte ptr [rbp - 0x31], cl
	mov	dword ptr [rbp - 0x38], 0x7ffffffe
	mov	edx, dword ptr [rbp - 0x38]
	cmp	edx, dword ptr [rbp - 4]
	jge	.label_396
	call	xalloc_die
.label_396:
	test	byte ptr [rbp - 0x31], 1
	je	.label_390
	xor	eax, eax
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_392
.label_390:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_392:
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
	je	.label_395
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_387]]
	mov	qword ptr [rax + 8], rcx
.label_395:
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
.label_391:
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
	ja	.label_394
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	mov	qword ptr [rbp - 0x40], rcx
	movsxd	rdx, dword ptr [rbp - 4]
	shl	rdx, 4
	add	rdx, qword ptr [rbp - 0x30]
	mov	qword ptr [rdx], rcx
	cmp	qword ptr [rbp - 0x48], rax
	je	.label_389
	mov	rdi, qword ptr [rbp - 0x48]
	call	free
.label_389:
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
.label_394:
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
	.align	16
	#Procedure 0x405cd0

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
	.align	16
	#Procedure 0x405d10
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
	.align	16
	#Procedure 0x405d30
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
	.align	16
	#Procedure 0x405d60

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
	.align	16
	#Procedure 0x405da0

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
	jne	.label_397
	call	abort
.label_397:
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
	.align	16
	#Procedure 0x405e10

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
	.align	16
	#Procedure 0x405e50
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
	.align	16
	#Procedure 0x405e80
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
	.align	16
	#Procedure 0x405eb0

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
	.align	16
	#Procedure 0x405f30

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
	.align	16
	#Procedure 0x405f60

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
	.align	16
	#Procedure 0x405f80
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
	.align	16
	#Procedure 0x405fb0
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
	.align	16
	#Procedure 0x406060

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
	.align	16
	#Procedure 0x4060a0

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
	.align	16
	#Procedure 0x406120
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
	.align	16
	#Procedure 0x406150
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
	.align	16
	#Procedure 0x406190

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
	.align	16
	#Procedure 0x4061d0
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
	.align	16
	#Procedure 0x406200

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
	.align	16
	#Procedure 0x406230

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
	.align	16
	#Procedure 0x406250

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
	je	.label_399
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
	jmp	.label_401
.label_399:
	call	locale_charset
	movabs	rsi, OFFSET FLAT:.str.13_0
	mov	qword ptr [rbp - 0x28], rax
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_398
	movabs	rax, OFFSET FLAT:.str.15_0
	movabs	rcx, OFFSET FLAT:.str.14_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_401
.label_398:
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_400
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rdx, qword ptr [rbp - 0x10]
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	jmp	.label_401
.label_400:
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	cmp	dword ptr [rbp - 0x14], 9
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_401:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406350
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406370
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406390
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rdi + 0x60]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063b0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	mov	rbp, rsp
	xor	eax, eax
	mov	qword ptr [rbp - 8], rdi
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063c0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4063e0
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406400

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x58]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406420
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406450
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406460

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
	.align	16
	#Procedure 0x406490

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
	jne	.label_432
	jmp	.label_461
.label_461:
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
	je	.label_464
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_464:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_461
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_406
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_423
	jmp	.label_414
.label_414:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_414
	jmp	.label_423
.label_423:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_467
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_402
.label_467:
	jmp	.label_434
.label_434:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_436
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_436:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_443
	jmp	.label_446
.label_443:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_434
.label_446:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_458
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_462
	jmp	.label_458
.label_458:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_406:
	jmp	.label_407
.label_407:
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
	je	.label_410
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_410:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_407
	jmp	.label_428
.label_428:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_413
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_413:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_439
	jmp	.label_422
.label_439:
	jmp	.label_445
.label_445:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_445
	jmp	.label_435
.label_435:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_435
	jmp	.label_428
.label_422:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_469
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_472
.label_469:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_403
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_403
.label_472:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_403:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_450:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_426
	jmp	.label_431
.label_431:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_431
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_450
.label_426:
	mov	qword ptr [rbp - 0x38], 0
.label_468:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_449
	jmp	.label_438
.label_438:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_438
	jmp	.label_415
.label_415:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_468
.label_449:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_448
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_448:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_452
	mov	dword ptr [rbp - 4], 0
	jmp	.label_402
.label_452:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_432:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_420
	jmp	.label_424
.label_424:
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
	je	.label_427
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_427:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_424
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_444
	jmp	.label_447
.label_447:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_447
	jmp	.label_444
.label_444:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_463
	mov	dword ptr [rbp - 4], 1
	jmp	.label_402
.label_463:
	jmp	.label_411
.label_411:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_470
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_470:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_430
	jmp	.label_409
.label_430:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_411
.label_409:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_418
	jmp	.label_421
.label_421:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_421
	jmp	.label_418
.label_418:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_420:
	jmp	.label_441
.label_441:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_442
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_442:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_451
	jmp	.label_456
.label_451:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_441
.label_456:
	jmp	.label_419
.label_419:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_466
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_466:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_473
	jmp	.label_404
.label_473:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_419
.label_404:
	jmp	.label_453
.label_453:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_405
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_405:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_425
	jmp	.label_429
.label_425:
	jmp	.label_433
.label_433:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_433
	jmp	.label_440
.label_440:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_440
	jmp	.label_453
.label_429:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_454
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_459
.label_454:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_465
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_465
.label_459:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_465:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_457:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_455
	jmp	.label_417
.label_417:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_417
	jmp	.label_475
.label_475:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_457
.label_455:
	mov	qword ptr [rbp - 0x38], 0
.label_412:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_437
	jmp	.label_408
.label_408:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_408
	jmp	.label_474
.label_474:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_412
.label_437:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_460
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_402
.label_460:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_471
	mov	dword ptr [rbp - 4], 0
	jmp	.label_402
.label_471:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_402:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406c20

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
	jne	.label_478
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_478
	jmp	.label_485
.label_485:
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
	jne	.label_487
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_480
	mov	dword ptr [rbp - 4], 0
	jmp	.label_484
.label_480:
	jmp	.label_485
.label_487:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_476
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_476
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_484
.label_476:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_490
	jmp	.label_479
.label_490:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_486
	jmp	.label_491
.label_486:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_484
.label_478:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_488
	jmp	.label_479
.label_479:
	jmp	.label_481
.label_481:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_483
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_481
.label_483:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_484
.label_488:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_482
	jmp	.label_491
.label_491:
	jmp	.label_489
.label_489:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_492
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_489
.label_492:
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
	jmp	.label_484
.label_482:
	jmp	.label_493
.label_493:
	jmp	.label_477
.label_477:
	mov	dword ptr [rbp - 4], 0
.label_484:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e20
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e50

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x28], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_497
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_495
.label_497:
	mov	rax, qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_498
	mov	dword ptr [rbp - 4], 1
	jmp	.label_495
.label_498:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_494
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_494
	jmp	.label_494
.label_494:
	mov	rax, -1
	cmp	rax, qword ptr [rbp - 0x20]
	jg	.label_496
	cmp	qword ptr [rbp - 0x20], 0x77359400
	jg	.label_496
	jmp	.label_496
.label_496:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	mov	ecx, eax
	mov	dword ptr [rbp - 4], ecx
.label_495:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f00
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_499
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_501
.label_499:
	mov	al, 1
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	jne	.label_500
	cmp	qword ptr [rbp - 8], 0
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_500:
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	mov	dword ptr [rbp - 0x14], ecx
.label_501:
	mov	eax, dword ptr [rbp - 0x14]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f50
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_502]]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	movaps	xmm0, xmm1
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406f80

	.globl verror
	.type verror, @function
verror:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	xor	eax, eax
	mov	r8d, eax
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	qword ptr [rbp - 0x18], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	mov	r9, qword ptr [rbp - 0x18]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x20], rcx
	mov	ecx, eax
	mov	r8, qword ptr [rbp - 0x20]
	call	verror_at_line
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406fd0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xvasprintf
	mov	qword ptr [rbp - 0x30], rax
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_506
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_504
	movabs	r8, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	r9, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error_at_line
	jmp	.label_503
.label_504:
	movabs	rdx, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error
.label_503:
	jmp	.label_505
.label_506:
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	call	gettext
	xor	edi, edi
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	al, 0
	call	error
	call	abort
.label_505:
	mov	rdi, qword ptr [rbp - 0x30]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070a0
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
	jae	.label_507
	call	xalloc_die
.label_507:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4070f0

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
	jne	.label_508
	cmp	qword ptr [rbp - 8], 0
	je	.label_508
	call	xalloc_die
.label_508:
	mov	rax, qword ptr [rbp - 0x10]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407130
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
	jae	.label_509
	call	xalloc_die
.label_509:
	mov	rdi, qword ptr [rbp - 8]
	mov	rax, qword ptr [rbp - 0x10]
	imul	rax, qword ptr [rbp - 0x18]
	mov	rsi, rax
	call	xrealloc
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407180

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	cmp	qword ptr [rbp - 0x18], 0
	jne	.label_510
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_510
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	mov	qword ptr [rbp - 8], 0
	jmp	.label_512
.label_510:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	cmp	qword ptr [rbp - 0x10], 0
	jne	.label_511
	cmp	qword ptr [rbp - 0x18], 0
	je	.label_511
	call	xalloc_die
.label_511:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_512:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407200

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
	jne	.label_513
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_516
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
.label_516:
	movabs	rax, 0x7fffffffffffffff
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_514
	call	xalloc_die
.label_514:
	jmp	.label_515
.label_513:
	movabs	rax, 0x5555555555555554
	xor	ecx, ecx
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_517
	call	xalloc_die
.label_517:
	mov	rax, qword ptr [rbp - 0x20]
	shr	rax, 1
	add	rax, 1
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_515:
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
	.align	16
	#Procedure 0x4072f0

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
	.align	16
	#Procedure 0x407310
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
	.align	16
	#Procedure 0x407340
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
	.align	16
	#Procedure 0x407380
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
	jb	.label_518
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_519
.label_518:
	call	xalloc_die
.label_519:
	mov	rax, qword ptr [rbp - 0x18]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4073e0

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
	.align	16
	#Procedure 0x407420
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
	.align	16
	#Procedure 0x407460

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.1_3
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
	.align	16
	#Procedure 0x4074a0

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_527:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_520
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	jmp	.label_522
.label_520:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x25
	je	.label_523
	jmp	.label_525
.label_523:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_521
	jmp	.label_525
.label_521:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_527
.label_525:
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_524
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_526
	call	xalloc_die
.label_526:
	mov	qword ptr [rbp - 8], 0
	jmp	.label_522
.label_524:
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_522:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407590

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x48], 0
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	movups	xmm0, xmmword ptr [rsi]
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_529:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_538
	lea	rax, [rbp - 0x40]
	mov	ecx, dword ptr [rbp - 0x40]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0x78], rax
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_531
	mov	eax, dword ptr [rbp - 0x7c]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0x88], rcx
	jmp	.label_535
.label_531:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_535:
	mov	rax, qword ptr [rbp - 0x88]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x90], rdi
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	mov	qword ptr [rbp - 0x48], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_529
.label_538:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	mov	qword ptr [rbp - 0x98], rax
	je	.label_536
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_528
.label_536:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	jmp	.label_532
.label_528:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_534:
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_530
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	mov	qword ptr [rbp - 0xa0], rax
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_533
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	qword ptr [rbp - 0xb0], rcx
	jmp	.label_537
.label_533:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_537:
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	qword ptr [rbp - 0x70], rax
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	mov	rdx, qword ptr [rbp - 0x70]
	call	memcpy
	mov	rax, qword ptr [rbp - 0x70]
	add	rax, qword ptr [rbp - 0x58]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_534
.label_530:
	mov	rax, qword ptr [rbp - 0x58]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 8], rax
.label_532:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4077a0

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
	jne	.label_539
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_539:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdx, qword ptr [rbp - 0x20]
	mov	rcx, qword ptr [rbp - 0x28]
	call	mbrtowc
	mov	rcx, -2
	mov	qword ptr [rbp - 0x30], rax
	cmp	rcx, qword ptr [rbp - 0x30]
	ja	.label_540
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_540
	xor	edi, edi
	call	hard_locale
	test	al, 1
	jne	.label_540
	mov	rax, qword ptr [rbp - 0x18]
	mov	cl, byte ptr [rax]
	mov	byte ptr [rbp - 0x35], cl
	movzx	edx, byte ptr [rbp - 0x35]
	mov	rax, qword ptr [rbp - 0x10]
	mov	dword ptr [rax], edx
	mov	qword ptr [rbp - 8], 1
	jmp	.label_541
.label_540:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_541:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407850

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
	jne	.label_542
	mov	dword ptr [rbp - 4], 0
	jmp	.label_546
.label_542:
	jmp	.label_543
.label_543:
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
	jne	.label_545
	jmp	.label_544
.label_545:
	mov	rax, qword ptr [rbp - 0x20]
	add	rax, 1
	mov	qword ptr [rbp - 0x20], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	cmp	eax, ecx
	je	.label_543
.label_544:
	movzx	eax, byte ptr [rbp - 0x29]
	movzx	ecx, byte ptr [rbp - 0x2a]
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_546:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407910

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
	jne	.label_547
	test	byte ptr [rbp - 0x13], 1
	je	.label_548
	test	byte ptr [rbp - 0x11], 1
	jne	.label_547
	call	__errno_location
	cmp	dword ptr [rax], 9
	je	.label_548
.label_547:
	test	byte ptr [rbp - 0x13], 1
	jne	.label_549
	call	__errno_location
	mov	dword ptr [rax], 0
.label_549:
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_550
.label_548:
	mov	dword ptr [rbp - 4], 0
.label_550:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4079c0

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
	je	.label_551
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str_4
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	je	.label_552
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_553
.label_552:
	mov	byte ptr [rbp - 5], 0
.label_553:
	jmp	.label_551
.label_551:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a40

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
	jne	.label_554
	movabs	rax, OFFSET FLAT:.str_0
	mov	qword ptr [rbp - 8], rax
.label_554:
	mov	rax, qword ptr [rbp - 8]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	jne	.label_555
	movabs	rax, OFFSET FLAT:.str.1_5
	mov	qword ptr [rbp - 8], rax
.label_555:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407aa0

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	add	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	jb	.label_556
	mov	rax, qword ptr [rbp - 0x18]
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_557
.label_556:
	mov	rax, -1
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_557
.label_557:
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407af0
	.globl xsum3
	.type xsum3, @function
xsum3:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b30
	.globl xsum4
	.type xsum4, @function
xsum4:

	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	mov	qword ptr [rbp - 0x20], rcx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b80
	.globl xmax
	.type xmax, @function
xmax:

	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	jb	.label_558
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_559
.label_558:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
.label_559:
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bc0

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
	jge	.label_560
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	jmp	.label_563
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	je	.label_561
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	xor	ecx, ecx
	mov	esi, ecx
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_562
.label_561:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	je	.label_562
	call	__errno_location
	mov	ecx, dword ptr [rax]
	mov	dword ptr [rbp - 0x14], ecx
.label_562:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_564
	mov	eax, dword ptr [rbp - 0x14]
	mov	dword ptr [rbp - 0x20], eax
	call	__errno_location
	mov	ecx, dword ptr [rbp - 0x20]
	mov	dword ptr [rax], ecx
	mov	dword ptr [rbp - 0x1c], 0xffffffff
.label_564:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_563:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407c90

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	qword ptr [rbp - 0x10], rdi
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_565
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_566
.label_565:
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	jmp	.label_567
.label_566:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_567:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407cf0

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
	je	.label_568
	xor	eax, eax
	mov	esi, eax
	mov	edx, 1
	mov	rdi, qword ptr [rbp - 8]
	call	rpl_fseeko
	mov	dword ptr [rbp - 0xc], eax
.label_568:
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407d30

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
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x10]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rax, qword ptr [rcx + 0x20]
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x10]
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_569
	mov	rdi, qword ptr [rbp - 0x10]
	call	fileno
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	mov	edi, eax
	call	lseek
	mov	qword ptr [rbp - 0x28], rax
	cmp	qword ptr [rbp - 0x28], -1
	jne	.label_571
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_570
.label_571:
	mov	rax, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rax]
	and	ecx, 0xffffffef
	mov	dword ptr [rax], ecx
	mov	rax, qword ptr [rbp - 0x28]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	qword ptr [rdx + 0x90], rax
	mov	dword ptr [rbp - 4], 0
	jmp	.label_570
.label_569:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	edx, dword ptr [rbp - 0x1c]
	call	fseeko
	mov	dword ptr [rbp - 4], eax
.label_570:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e00

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
	ja	.label_572
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	add	eax, 0x2001a
	mov	dword ptr [rbp - 4], eax
	jmp	.label_573
.label_572:
	jmp	.label_573
.label_573:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407e50
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
	jb	.label_575
	jmp	.label_578
.label_578:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 0x1a
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_575
	jmp	.label_576
.label_576:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_577
	jmp	.label_575
.label_575:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_579
.label_577:
	mov	byte ptr [rbp - 1], 0
.label_579:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ec0
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
	jb	.label_580
	jmp	.label_583
.label_583:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 0x19
	mov	dword ptr [rbp - 0x14], eax
	ja	.label_581
	jmp	.label_580
.label_580:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_582
.label_581:
	mov	byte ptr [rbp - 1], 0
.label_582:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f10
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_584
	jmp	.label_585
.label_585:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_586
.label_584:
	mov	byte ptr [rbp - 1], 0
.label_586:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f40
	.globl c_isblank
	.type c_isblank, @function
c_isblank:

	push	rbp
	mov	rbp, rsp
	mov	al, 1
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 0x20
	mov	byte ptr [rbp - 5], al
	je	.label_587
	cmp	dword ptr [rbp - 4], 9
	sete	al
	mov	byte ptr [rbp - 5], al
.label_587:
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407f70
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
	jb	.label_588
	jmp	.label_590
.label_590:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x7f
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_591
	jmp	.label_588
.label_588:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_589
.label_591:
	mov	byte ptr [rbp - 1], 0
.label_589:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407fc0
	.globl c_isdigit
	.type c_isdigit, @function
c_isdigit:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x30
	sub	edi, 9
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_592
	jmp	.label_594
.label_594:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_593
.label_592:
	mov	byte ptr [rbp - 1], 0
.label_593:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408000
	.globl c_isgraph
	.type c_isgraph, @function
c_isgraph:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x21
	sub	edi, 0x5d
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_595
	jmp	.label_597
.label_597:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_596
.label_595:
	mov	byte ptr [rbp - 1], 0
.label_596:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408040
	.globl c_islower
	.type c_islower, @function
c_islower:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_598
	jmp	.label_600
.label_600:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_599
.label_598:
	mov	byte ptr [rbp - 1], 0
.label_599:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408080
	.globl c_isprint
	.type c_isprint, @function
c_isprint:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x20
	sub	edi, 0x5e
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_601
	jmp	.label_603
.label_603:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_602
.label_601:
	mov	byte ptr [rbp - 1], 0
.label_602:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4080c0
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
	jb	.label_604
	jmp	.label_607
.label_607:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x3a
	sub	eax, 7
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_604
	jmp	.label_608
.label_608:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x5b
	sub	eax, 6
	mov	dword ptr [rbp - 0x18], eax
	jb	.label_604
	jmp	.label_606
.label_606:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x7b
	sub	eax, 3
	mov	dword ptr [rbp - 0x1c], eax
	ja	.label_609
	jmp	.label_604
.label_604:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_605
.label_609:
	mov	byte ptr [rbp - 1], 0
.label_605:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408140
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
	jb	.label_610
	jmp	.label_613
.label_613:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_612
	jmp	.label_610
.label_610:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_611
.label_612:
	mov	byte ptr [rbp - 1], 0
.label_611:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408190
	.globl c_isupper
	.type c_isupper, @function
c_isupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_614
	jmp	.label_616
.label_616:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_615
.label_614:
	mov	byte ptr [rbp - 1], 0
.label_615:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4081d0
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
	jb	.label_617
	jmp	.label_619
.label_619:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x41
	sub	eax, 6
	mov	dword ptr [rbp - 0x14], eax
	jb	.label_617
	jmp	.label_618
.label_618:
	mov	eax, dword ptr [rbp - 0xc]
	add	eax, -0x61
	sub	eax, 5
	mov	dword ptr [rbp - 0x18], eax
	ja	.label_620
	jmp	.label_617
.label_617:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_621
.label_620:
	mov	byte ptr [rbp - 1], 0
.label_621:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408240

	.globl c_tolower
	.type c_tolower, @function
c_tolower:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x41
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_622
	jmp	.label_624
.label_624:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x41
	add	eax, 0x61
	mov	dword ptr [rbp - 4], eax
	jmp	.label_623
.label_622:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_623:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408280
	.globl c_toupper
	.type c_toupper, @function
c_toupper:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	add	edi, -0x61
	sub	edi, 0x19
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_625
	jmp	.label_627
.label_627:
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 0x61
	add	eax, 0x41
	mov	dword ptr [rbp - 4], eax
	jmp	.label_626
.label_625:
	mov	eax, dword ptr [rbp - 8]
	mov	dword ptr [rbp - 4], eax
.label_626:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408370

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
