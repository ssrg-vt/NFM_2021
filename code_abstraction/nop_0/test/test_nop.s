	.section	.text
	.align	16
	#Procedure 0x401490
	.globl usage
	.type usage, @function
usage:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x70
	mov	dword ptr [rbp - 4], edi
	mov	rsp, rsp
	cmp	dword ptr [rbp - 4], 0
	mov	rsp, rsp
	je	.label_7
	jmp	.label_8
.label_8:
	movabs	rdi, OFFSET FLAT:.str
	mov	rax,  qword ptr [word ptr [stderr]]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rax
	mov	rsp, rsp
	call	gettext
	nop	
	mov	rdx,  qword ptr [word ptr [program_name]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	call	fprintf
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_9
.label_7:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.1
	lea	rdi, [rdi]
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.2
	mov	dword ptr [rbp - 0x18], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rbp, rbp
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.3
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	call	gettext
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.4
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x20], eax
	mov	rsp, rsp
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x24], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rsp, rsp
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.6
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x28], eax
	lea	rsi, [rsi]
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	mov	rbp, rbp
	call	fputs_unlocked
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str.7
	mov	dword ptr [rbp - 0x2c], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.8
	mov	dword ptr [rbp - 0x30], eax
	mov	rsp, rsp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	lea	rsi, [rsi]
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.9
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x34], eax
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.10
	nop	
	mov	dword ptr [rbp - 0x38], eax
	call	gettext
	mov	rsp, rsp
	mov	rsi,  qword ptr [word ptr [stdout]]
	nop	
	mov	rdi, rax
	call	fputs_unlocked
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.11
	mov	dword ptr [rbp - 0x3c], eax
	mov	rbp, rbp
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rsp, rsp
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.12
	mov	dword ptr [rbp - 0x40], eax
	mov	rbp, rbp
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.13
	mov	dword ptr [rbp - 0x44], eax
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.14
	nop	
	mov	dword ptr [rbp - 0x48], eax
	call	gettext
	lea	rsi, [rsi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	nop	
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.15
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x4c], eax
	nop	
	call	gettext
	lea	rdi, [rdi]
	mov	rsi,  qword ptr [word ptr [stdout]]
	lea	rsi, [rsi]
	mov	rdi, rax
	lea	rdi, [rdi]
	call	fputs_unlocked
	movabs	rdi, OFFSET FLAT:.str.16
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x50], eax
	call	gettext
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.17
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x54], eax
	nop	
	call	gettext
	movabs	rdi, OFFSET FLAT:.str.18
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	call	gettext
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x60]
	mov	rsi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.19
	mov	dword ptr [rbp - 0x64], eax
	nop	
	call	emit_ancillary_info
.label_9:
	mov	edi, dword ptr [rbp - 4]
	nop	
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401810

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	lea	rdi, [rdi]
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:emit_ancillary_info.infomap
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 0x18], rax
.label_13:
	mov	rsp, rsp
	xor	eax, eax
	nop	
	mov	cl, al
	nop	
	mov	rdx, qword ptr [rbp - 0x18]
	cmp	qword ptr [rdx], 0
	mov	byte ptr [rbp - 0x21], cl
	lea	rdi, [rdi]
	je	.label_10
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, qword ptr [rax]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	cl
	mov	rbp, rbp
	xor	cl, 0xff
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x21], cl
.label_10:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x21]
	nop	
	test	al, 1
	jne	.label_11
	lea	rdi, [rdi]
	jmp	.label_12
.label_11:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rax, 0x10
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_13
.label_12:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	cmp	qword ptr [rax + 8], 0
	mov	rsp, rsp
	je	.label_15
	mov	rax, qword ptr [rbp - 0x18]
	mov	rax, qword ptr [rax + 8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x10], rax
.label_15:
	movabs	rdi, OFFSET FLAT:.str.32
	call	gettext
	nop	
	movabs	rsi, OFFSET FLAT:.str.33
	lea	rsi, [rsi]
	movabs	rdx, OFFSET FLAT:.str.34
	mov	rsp, rsp
	mov	rdi, rax
	mov	al, 0
	mov	rsp, rsp
	call	printf
	mov	rsp, rsp
	mov	edi, 5
	nop	
	xor	ecx, ecx
	mov	esi, ecx
	mov	dword ptr [rbp - 0x28], eax
	call	setlocale
	mov	qword ptr [rbp - 0x20], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x20], 0
	mov	rbp, rbp
	je	.label_14
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.35
	mov	eax, 3
	mov	edx, eax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	call	strncmp
	mov	rbp, rbp
	cmp	eax, 0
	je	.label_14
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.36
	call	gettext
	nop	
	mov	rsi,  qword ptr [word ptr [stdout]]
	mov	rdi, rax
	call	fputs_unlocked
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x2c], eax
.label_14:
	nop	
	movabs	rdi, OFFSET FLAT:.str.37
	mov	rsp, rsp
	call	gettext
	movabs	rsi, OFFSET FLAT:.str.34
	mov	rdx, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rbp, rbp
	mov	al, 0
	nop	
	call	printf
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.38
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x30], eax
	call	gettext
	movabs	rdx, OFFSET FLAT:.str_0
	lea	rdi, [rdi]
	movabs	rsi, OFFSET FLAT:.str.39
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x10]
	cmp	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmove	rdx, rsi
	mov	qword ptr [rbp - 0x38], rdi
	nop	
	mov	rdi, rax
	mov	rsi, qword ptr [rbp - 0x38]
	mov	al, 0
	call	printf
	mov	dword ptr [rbp - 0x3c], eax
	add	rsp, 0x40
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x401a30

	.globl main
	.type main, @function
main:
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], 0
	nop	
	mov	dword ptr [rbp - 8], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rsi]
	call	set_program_name
	mov	rsp, rsp
	mov	edi, 6
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str_0
	mov	rsp, rsp
	call	setlocale
	nop	
	movabs	rdi, OFFSET FLAT:.str.21
	movabs	rsi, OFFSET FLAT:.str.22
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	call	bindtextdomain
	movabs	rdi, OFFSET FLAT:.str.21
	mov	qword ptr [rbp - 0x28], rax
	call	textdomain
	lea	rdi, [rdi]
	mov	edi, 2
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x30], rax
	nop	
	call	initialize_exit_failure
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:close_stdout
	nop	
	call	atexit
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	qword ptr [word ptr [argv]],  rsi
	mov	ecx, dword ptr [rbp - 8]
	mov	dword ptr [dword ptr [argc]],  ecx
	mov	dword ptr [dword ptr [pos]],  1
	nop	
	mov	ecx,  dword ptr [dword ptr [pos]]
	lea	rdi, [rdi]
	cmp	ecx,  dword ptr [dword ptr [argc]]
	mov	dword ptr [rbp - 0x34], eax
	jl	.label_16
	mov	dword ptr [rbp - 4], 1
	jmp	.label_17
.label_16:
	mov	eax,  dword ptr [dword ptr [argc]]
	sub	eax, 1
	mov	rsp, rsp
	mov	edi, eax
	lea	rdi, [rdi]
	call	posixtest
	nop	
	and	al, 1
	mov	byte ptr [rbp - 0x11], al
	nop	
	mov	edi,  dword ptr [dword ptr [pos]]
	cmp	edi,  dword ptr [dword ptr [argc]]
	je	.label_18
	movabs	rdi, OFFSET FLAT:.str.23
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [pos]]
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rdi*8]
	mov	qword ptr [rbp - 0x40], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0x40]
	lea	rsi, [rsi]
	mov	rsi, rax
	mov	al, 0
	lea	rdi, [rdi]
	call	test_syntax_error
.label_18:
	lea	rsi, [rsi]
	mov	eax, 1
	xor	ecx, ecx
	lea	rdi, [rdi]
	mov	dl, byte ptr [rbp - 0x11]
	test	dl, 1
	cmovne	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_17:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x40
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bc0

	.globl initialize_exit_failure
	.type initialize_exit_failure, @function
initialize_exit_failure:
	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 4], edi
	cmp	dword ptr [rbp - 4], 1
	je	.label_19
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	dword ptr [dword ptr [exit_failure]],  eax
.label_19:
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401bf0

	.globl posixtest
	.type posixtest, @function
posixtest:
	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	dword ptr [rbp - 4], edi
	nop	
	dec	edi
	mov	eax, edi
	sub	edi, 4
	nop	
	mov	qword ptr [rbp - 0x10], rax
	mov	dword ptr [rbp - 0x14], edi
	mov	rbp, rbp
	ja	.label_24
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_23]]
	mov	rbp, rbp
	jmp	rcx
.label_631:
	call	one_argument
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 5], al
	nop	
	jmp	.label_20
.label_632:
	lea	rsi, [rsi]
	call	two_arguments
	nop	
	and	al, 1
	mov	byte ptr [rbp - 5], al
	jmp	.label_20
.label_633:
	lea	rsi, [rsi]
	call	three_arguments
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 5], al
	jmp	.label_20
.label_634:
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.40
	mov	rbp, rbp
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	jne	.label_22
	mov	edi, 1
	nop	
	call	advance
	call	three_arguments
	xor	al, 0xff
	and	al, 1
	mov	byte ptr [rbp - 5], al
	nop	
	jmp	.label_20
.label_22:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.41
	mov	esi, edx
	lea	rsi, [rsi]
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	jne	.label_25
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [pos]]
	mov	rsp, rsp
	add	eax, 3
	nop	
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.42
	lea	rdi, [rdi]
	mov	esi, eax
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	jne	.label_25
	nop	
	xor	edi, edi
	call	advance
	nop	
	call	two_arguments
	nop	
	xor	edi, edi
	and	al, 1
	mov	byte ptr [rbp - 5], al
	lea	rdi, [rdi]
	call	advance
	lea	rsi, [rsi]
	jmp	.label_20
.label_25:
	nop	
	jmp	.label_21
.label_21:
	lea	rdi, [rdi]
	jmp	.label_24
.label_24:
	cmp	dword ptr [rbp - 4], 0
	lea	rdi, [rdi]
	jg	.label_26
	call	abort
.label_26:
	lea	rdi, [rdi]
	call	expr
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 5], al
.label_20:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 5]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x20
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401db0

	.globl test_syntax_error
	.type test_syntax_error, @function
test_syntax_error:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x180
	test	al, al
	movaps	xmmword ptr [rbp - 0xe0], xmm7
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0xf0], xmm6
	nop	
	movaps	xmmword ptr [rbp - 0x100], xmm5
	movaps	xmmword ptr [rbp - 0x110], xmm4
	movaps	xmmword ptr [rbp - 0x120], xmm3
	nop	
	movaps	xmmword ptr [rbp - 0x130], xmm2
	movaps	xmmword ptr [rbp - 0x140], xmm1
	movaps	xmmword ptr [rbp - 0x150], xmm0
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x158], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x160], r9
	mov	qword ptr [rbp - 0x168], r8
	mov	qword ptr [rbp - 0x170], rcx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x178], rdx
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x180], rsi
	je	.label_27
	lea	rdi, [rdi]
	movaps	xmm0, xmmword ptr [rbp - 0x150]
	movaps	xmmword ptr [rbp - 0xa0], xmm0
	mov	rbp, rbp
	movaps	xmm1, xmmword ptr [rbp - 0x140]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x90], xmm1
	mov	rbp, rbp
	movaps	xmm2, xmmword ptr [rbp - 0x130]
	movaps	xmmword ptr [rbp - 0x80], xmm2
	movaps	xmm3, xmmword ptr [rbp - 0x120]
	nop	
	movaps	xmmword ptr [rbp - 0x70], xmm3
	lea	rdi, [rdi]
	movaps	xmm4, xmmword ptr [rbp - 0x110]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x60], xmm4
	mov	rbp, rbp
	movaps	xmm5, xmmword ptr [rbp - 0x100]
	movaps	xmmword ptr [rbp - 0x50], xmm5
	nop	
	movaps	xmm6, xmmword ptr [rbp - 0xf0]
	movaps	xmmword ptr [rbp - 0x40], xmm6
	movaps	xmm7, xmmword ptr [rbp - 0xe0]
	lea	rsi, [rsi]
	movaps	xmmword ptr [rbp - 0x30], xmm7
.label_27:
	mov	rax, qword ptr [rbp - 0x160]
	mov	qword ptr [rbp - 0xa8], rax
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x168]
	mov	qword ptr [rbp - 0xb0], rcx
	mov	rdx, qword ptr [rbp - 0x170]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb8], rdx
	mov	rsi, qword ptr [rbp - 0x178]
	mov	qword ptr [rbp - 0xc0], rsi
	mov	rdi, qword ptr [rbp - 0x180]
	nop	
	mov	qword ptr [rbp - 0xc8], rdi
	mov	r8, qword ptr [rbp - 0x158]
	lea	rdi, [rdi]
	xor	r9d, r9d
	lea	r10, [rbp - 0x20]
	mov	qword ptr [rbp - 8], r8
	mov	rsp, rsp
	mov	r8, r10
	mov	rsp, rsp
	lea	r11, [rbp - 0xd0]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 0x10], r11
	nop	
	lea	r11, [rbp + 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [r8 + 8], r11
	mov	rbp, rbp
	mov	dword ptr [r8 + 4], 0x30
	mov	rsp, rsp
	mov	dword ptr [r8], 8
	mov	rdx, qword ptr [rbp - 8]
	mov	edi, r9d
	mov	esi, r9d
	mov	rcx, r10
	mov	rsp, rsp
	call	verror
	mov	edi, 2
	call	exit
	.section	.text
	.align	16
	#Procedure 0x401f70

	.globl one_argument
	.type one_argument, @function
one_argument:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [pos]]
	lea	rsi, [rsi]
	mov	ecx, eax
	nop	
	add	ecx, 1
	mov	rbp, rbp
	mov	dword ptr [dword ptr [pos]],  ecx
	mov	rbp, rbp
	movsxd	rdx, eax
	nop	
	mov	rsi,  qword ptr [word ptr [argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	movsx	eax, byte ptr [rdx]
	lea	rdi, [rdi]
	cmp	eax, 0
	lea	rdi, [rdi]
	setne	dil
	nop	
	and	dil, 1
	nop	
	movzx	eax, dil
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x401fd0

	.globl two_arguments
	.type two_arguments, @function
two_arguments:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	nop	
	mov	edx, OFFSET FLAT:.str.40
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	jne	.label_31
	xor	edi, edi
	mov	rsp, rsp
	call	advance
	call	one_argument
	mov	rsp, rsp
	xor	al, 0xff
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_30
.label_31:
	nop	
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	edx, 0x2d
	jne	.label_29
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	edx, 0
	nop	
	je	.label_29
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	nop	
	cmp	edx, 0
	jne	.label_29
	mov	rsp, rsp
	call	unary_operator
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_28
.label_29:
	call	beyond
.label_28:
	jmp	.label_30
.label_30:
	lea	rsi, [rsi]
	mov	al, byte ptr [rbp - 1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4020e0

	.globl three_arguments
	.type three_arguments, @function
three_arguments:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [argv]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	call	binop
	lea	rsi, [rsi]
	test	al, 1
	nop	
	jne	.label_35
	mov	rsp, rsp
	jmp	.label_38
.label_35:
	xor	edi, edi
	call	binary_operator
	nop	
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 1], al
	jmp	.label_34
.label_38:
	nop	
	movsxd	rax,  dword ptr [dword ptr [pos]]
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.40
	lea	rsi, [rsi]
	mov	esi, edx
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	jne	.label_41
	mov	rbp, rbp
	mov	edi, 1
	lea	rsi, [rsi]
	call	advance
	call	two_arguments
	mov	rsp, rsp
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	jmp	.label_33
.label_41:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	mov	edx, OFFSET FLAT:.str.41
	mov	esi, edx
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_32
	mov	eax,  dword ptr [dword ptr [pos]]
	nop	
	add	eax, 2
	movsxd	rcx, eax
	nop	
	mov	rdx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.42
	mov	esi, eax
	lea	rdi, [rdi]
	call	strcmp
	nop	
	cmp	eax, 0
	jne	.label_32
	xor	edi, edi
	mov	rbp, rbp
	call	advance
	call	one_argument
	xor	edi, edi
	nop	
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	call	advance
	jmp	.label_37
.label_32:
	mov	eax,  dword ptr [dword ptr [pos]]
	nop	
	add	eax, 1
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.46
	mov	esi, eax
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_36
	nop	
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	nop	
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	eax, OFFSET FLAT:.str.47
	lea	rdi, [rdi]
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_40
.label_36:
	nop	
	call	expr
	nop	
	and	al, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_39
.label_40:
	movabs	rdi, OFFSET FLAT:.str.48
	call	gettext
	mov	rbp, rbp
	mov	ecx,  dword ptr [dword ptr [pos]]
	mov	rsp, rsp
	add	ecx, 1
	mov	rbp, rbp
	movsxd	rdi, ecx
	mov	rbp, rbp
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	call	quote
	mov	rdi, qword ptr [rbp - 0x10]
	nop	
	mov	rsi, rax
	mov	al, 0
	nop	
	call	test_syntax_error
.label_39:
	jmp	.label_37
.label_37:
	lea	rdi, [rdi]
	jmp	.label_33
.label_33:
	nop	
	jmp	.label_34
.label_34:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402330

	.globl advance
	.type advance, @function
advance:
	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	sub	rsp, 0x10
	nop	
	mov	al, dil
	mov	rbp, rbp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	edi,  dword ptr [dword ptr [pos]]
	add	edi, 1
	mov	dword ptr [dword ptr [pos]],  edi
	lea	rsi, [rsi]
	test	byte ptr [rbp - 1], 1
	je	.label_42
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [pos]]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [argc]]
	jl	.label_42
	call	beyond
.label_42:
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x402390

	.globl expr
	.type expr, @function
expr:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	nop	
	jl	.label_43
	call	beyond
.label_43:
	call	or
	nop	
	and	al, 1
	movzx	eax, al
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4023d0

	.globl unary_operator
	.type unary_operator, @function
unary_operator:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x100
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [rip + pos]]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	nop	
	add	edx, -0x47
	mov	rsp, rsp
	mov	eax, edx
	mov	rbp, rbp
	sub	edx, 0x33
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0xe4], edx
	ja	.label_44
	mov	rax, qword ptr [rbp - 0xe0]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_45]]
	mov	rbp, rbp
	jmp	rcx
.label_44:
	nop	
	movabs	rdi, OFFSET FLAT:.str.43
	lea	rsi, [rsi]
	call	gettext
	movsxd	rdi,  dword ptr [dword ptr [pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0xf0], rax
	call	quote
	mov	rdi, qword ptr [rbp - 0xf0]
	mov	rbp, rbp
	mov	rsi, rax
	mov	al, 0
	mov	rbp, rbp
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402f80

	.globl beyond
	.type beyond, @function
beyond:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x10
	movabs	rdi, OFFSET FLAT:.str.45
	lea	rdi, [rdi]
	call	gettext
	mov	ecx,  dword ptr [dword ptr [argc]]
	mov	rbp, rbp
	sub	ecx, 1
	movsxd	rdi, ecx
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rdi*8]
	mov	qword ptr [rbp - 8], rax
	call	quote
	mov	rdi, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rsi, rax
	nop	
	mov	al, 0
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x402fe0

	.globl unary_advance
	.type unary_advance, @function
unary_advance:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	edi, 1
	lea	rdi, [rdi]
	call	advance
	mov	edi,  dword ptr [dword ptr [pos]]
	add	edi, 1
	mov	dword ptr [dword ptr [pos]],  edi
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403010

	.globl find_int
	.type find_int, @function
find_int:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0x30
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rdi
.label_75:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	mov	rsp, rsp
	movzx	edi, al
	movsxd	rcx, edi
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rsp, rsp
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	mov	rbp, rbp
	cmp	edi, 0
	je	.label_69
	jmp	.label_74
.label_74:
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_75
.label_69:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2b
	mov	rsp, rsp
	jne	.label_68
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x18], rax
	mov	rbp, rbp
	jmp	.label_72
.label_68:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	cmp	ecx, 0x2d
	sete	dl
	mov	rbp, rbp
	and	dl, 1
	movzx	ecx, dl
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	movsxd	rsi, ecx
	add	rax, rsi
	mov	qword ptr [rbp - 0x10], rax
.label_72:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	lea	rsi, [rsi]
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	sub	edx, 0x30
	nop	
	cmp	edx, 9
	lea	rsi, [rsi]
	ja	.label_70
	mov	rsp, rsp
	jmp	.label_67
.label_67:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	ecx, byte ptr [rax]
	mov	rsp, rsp
	sub	ecx, 0x30
	cmp	ecx, 9
	lea	rdi, [rdi]
	ja	.label_73
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_67
.label_73:
	jmp	.label_71
.label_71:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	edi, byte ptr [rax]
	call	to_uchar
	movzx	edi, al
	movsxd	rcx, edi
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x28], rcx
	lea	rsi, [rsi]
	call	__ctype_b_loc
	mov	rax, qword ptr [rax]
	mov	rcx, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	movzx	edi, word ptr [rax + rcx*2]
	and	edi, 1
	cmp	edi, 0
	mov	rsp, rsp
	je	.label_66
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	lea	rdi, [rdi]
	jmp	.label_71
.label_66:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	cmp	byte ptr [rax], 0
	jne	.label_76
	mov	rax, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	add	rsp, 0x30
	pop	rbp
	ret	
.label_76:
	lea	rsi, [rsi]
	jmp	.label_70
.label_70:
	movabs	rdi, OFFSET FLAT:.str.44
	call	gettext
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	call	quote
	nop	
	mov	rdi, qword ptr [rbp - 0x30]
	mov	rsp, rsp
	mov	rsi, rax
	nop	
	mov	al, 0
	mov	rbp, rbp
	call	test_syntax_error
	.section	.text
	.align	16
	#Procedure 0x403220

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	al, dil
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	movzx	eax, byte ptr [rbp - 1]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x403240

	.globl binop
	.type binop, @function
binop:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x20
	mov	al, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.49
	lea	rdi, [rdi]
	mov	esi, ecx
	mov	byte ptr [rbp - 9], al
	call	strcmp
	cmp	eax, 0
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 9]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], dl
	mov	rsp, rsp
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.50
	mov	rbp, rbp
	mov	esi, ecx
	mov	byte ptr [rbp - 0xb], al
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	nop	
	mov	dl, byte ptr [rbp - 0xb]
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	rbp, rbp
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rbp, rbp
	mov	ecx, OFFSET FLAT:.str.51
	mov	esi, ecx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0xc], al
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xc]
	nop	
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.52
	mov	rbp, rbp
	mov	esi, ecx
	mov	byte ptr [rbp - 0xd], al
	mov	rsp, rsp
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0xd]
	mov	byte ptr [rbp - 0xa], dl
	nop	
	je	.label_77
	mov	al, 1
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.53
	mov	esi, ecx
	mov	byte ptr [rbp - 0xe], al
	mov	rsp, rsp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0xe]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	ecx, OFFSET FLAT:.str.54
	mov	rsp, rsp
	mov	esi, ecx
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xf], al
	nop	
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	mov	dl, byte ptr [rbp - 0xf]
	mov	byte ptr [rbp - 0xa], dl
	mov	rbp, rbp
	je	.label_77
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.55
	mov	rbp, rbp
	mov	esi, ecx
	nop	
	mov	byte ptr [rbp - 0x10], al
	mov	rbp, rbp
	call	strcmp
	lea	rsi, [rsi]
	cmp	eax, 0
	nop	
	mov	dl, byte ptr [rbp - 0x10]
	mov	byte ptr [rbp - 0xa], dl
	mov	rbp, rbp
	je	.label_77
	mov	rbp, rbp
	mov	al, 1
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.56
	mov	esi, ecx
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x11], al
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	mov	dl, byte ptr [rbp - 0x11]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	rsp, rsp
	mov	al, 1
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.57
	mov	esi, ecx
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x12], al
	lea	rsi, [rsi]
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x12]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	lea	rsi, [rsi]
	mov	al, 1
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 8]
	mov	ecx, OFFSET FLAT:.str.58
	mov	esi, ecx
	mov	byte ptr [rbp - 0x13], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x13]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	mov	al, 1
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	ecx, OFFSET FLAT:.str.59
	lea	rdi, [rdi]
	mov	esi, ecx
	nop	
	mov	byte ptr [rbp - 0x14], al
	call	strcmp
	cmp	eax, 0
	mov	dl, byte ptr [rbp - 0x14]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0xa], dl
	je	.label_77
	nop	
	mov	rdi, qword ptr [rbp - 8]
	mov	eax, OFFSET FLAT:.str.60
	mov	esi, eax
	call	strcmp
	nop	
	cmp	eax, 0
	sete	cl
	mov	byte ptr [rbp - 0xa], cl
.label_77:
	mov	al, byte ptr [rbp - 0xa]
	mov	rsp, rsp
	and	al, 1
	mov	rbp, rbp
	movzx	eax, al
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4034a0

	.globl binary_operator
	.type binary_operator, @function
binary_operator:
	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x210
	nop	
	mov	al, dil
	and	al, 1
	mov	byte ptr [rbp - 2], al
	test	byte ptr [rbp - 2], 1
	lea	rdi, [rdi]
	je	.label_105
	xor	edi, edi
	call	advance
.label_105:
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 1
	mov	dword ptr [rbp - 8], eax
	nop	
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	ecx,  dword ptr [dword ptr [argc]]
	sub	ecx, 2
	cmp	eax, ecx
	nop	
	jge	.label_85
	nop	
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str.61
	mov	esi, eax
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	jne	.label_85
	lea	rdi, [rdi]
	xor	edi, edi
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x129], 1
	call	advance
	jmp	.label_89
.label_85:
	mov	byte ptr [rbp - 0x129], 0
.label_89:
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2d
	jne	.label_94
	nop	
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x6c
	je	.label_97
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x67
	jne	.label_104
.label_97:
	nop	
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x65
	je	.label_86
	mov	rsp, rsp
	movsxd	rax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x74
	je	.label_86
.label_104:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rax + 1]
	nop	
	cmp	edx, 0x65
	lea	rsi, [rsi]
	jne	.label_117
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x71
	je	.label_86
.label_117:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x6e
	jne	.label_91
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 2]
	nop	
	cmp	edx, 0x65
	lea	rsi, [rsi]
	jne	.label_91
.label_86:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [argv]]
	nop	
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 3], 0
	lea	rdi, [rdi]
	jne	.label_91
	mov	rbp, rbp
	test	byte ptr [rbp - 2], 1
	lea	rsi, [rsi]
	je	.label_109
	lea	rsi, [rbp - 0x140]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1d0], rsi
	call	strlen
	lea	rsi, [rsi]
	mov	rdi, rax
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x1d0]
	mov	rsp, rsp
	call	umaxtostr
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
	jmp	.label_81
.label_109:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	nop	
	sub	eax, 1
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [argv]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	find_int
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x1d8], rax
.label_81:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x1d8]
	mov	qword ptr [rbp - 0x168], rax
	test	byte ptr [rbp - 0x129], 1
	lea	rdi, [rdi]
	je	.label_92
	lea	rsi, [rbp - 0x160]
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	eax, 2
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdx + rcx*8]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x1e0], rsi
	nop	
	call	strlen
	lea	rdi, [rdi]
	mov	rdi, rax
	nop	
	mov	rsi, qword ptr [rbp - 0x1e0]
	call	umaxtostr
	mov	qword ptr [rbp - 0x1e8], rax
	jmp	.label_108
.label_92:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	mov	rsp, rsp
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	find_int
	nop	
	mov	qword ptr [rbp - 0x1e8], rax
.label_108:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x1e8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x170], rax
	mov	rdi, qword ptr [rbp - 0x168]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x170]
	call	strintcmp
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x174], eax
	movsxd	rsi, dword ptr [rbp - 8]
	mov	rdi,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rdi + rsi*8]
	lea	rdi, [rdi]
	movsx	eax, byte ptr [rsi + 2]
	cmp	eax, 0x65
	sete	cl
	lea	rdi, [rdi]
	and	cl, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x175], cl
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [pos]]
	mov	rbp, rbp
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	movsxd	rsi, dword ptr [rbp - 8]
	nop	
	mov	rdi,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rsi, qword ptr [rdi + rsi*8]
	lea	rsi, [rsi]
	movsx	eax, byte ptr [rsi + 1]
	lea	rsi, [rsi]
	cmp	eax, 0x6c
	mov	rsp, rsp
	jne	.label_83
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x174]
	mov	rsp, rsp
	mov	cl, byte ptr [rbp - 0x175]
	nop	
	and	cl, 1
	nop	
	movzx	edx, cl
	cmp	eax, edx
	mov	rbp, rbp
	setl	cl
	lea	rsi, [rsi]
	and	cl, 1
	mov	rsp, rsp
	movzx	eax, cl
	mov	dword ptr [rbp - 0x1ec], eax
	mov	rbp, rbp
	jmp	.label_101
.label_83:
	movsxd	rax, dword ptr [rbp - 8]
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rax + 1]
	lea	rdi, [rdi]
	cmp	edx, 0x67
	jne	.label_111
	xor	eax, eax
	mov	ecx, dword ptr [rbp - 0x174]
	lea	rsi, [rsi]
	mov	dl, byte ptr [rbp - 0x175]
	and	dl, 1
	movzx	esi, dl
	lea	rdi, [rdi]
	sub	eax, esi
	lea	rsi, [rsi]
	cmp	ecx, eax
	mov	rsp, rsp
	setg	dl
	mov	rbp, rbp
	and	dl, 1
	mov	rsp, rsp
	movzx	eax, dl
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1f0], eax
	jmp	.label_116
.label_111:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x174], 0
	mov	rbp, rbp
	setne	al
	mov	rbp, rbp
	and	al, 1
	movzx	ecx, al
	mov	al, byte ptr [rbp - 0x175]
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	mov	rbp, rbp
	cmp	ecx, edx
	lea	rsi, [rsi]
	sete	al
	nop	
	and	al, 1
	movzx	ecx, al
	nop	
	mov	dword ptr [rbp - 0x1f0], ecx
.label_116:
	nop	
	mov	eax, dword ptr [rbp - 0x1f0]
	nop	
	mov	dword ptr [rbp - 0x1ec], eax
.label_101:
	mov	eax, dword ptr [rbp - 0x1ec]
	cmp	eax, 0
	setne	cl
	and	cl, 1
	mov	byte ptr [rbp - 1], cl
	jmp	.label_80
.label_91:
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [rip + argv]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax + 1]
	mov	esi, edx
	lea	rsi, [rsi]
	sub	esi, 0x65
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x1f4], edx
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1f8], esi
	je	.label_103
	jmp	.label_112
.label_112:
	mov	eax, dword ptr [rbp - 0x1f4]
	lea	rdi, [rdi]
	sub	eax, 0x6e
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 0x1fc], eax
	je	.label_113
	jmp	.label_114
.label_114:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x1f4]
	sub	eax, 0x6f
	mov	dword ptr [rbp - 0x200], eax
	je	.label_115
	mov	rbp, rbp
	jmp	.label_119
.label_119:
	jmp	.label_78
.label_113:
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	cmp	edx, 0x74
	jne	.label_82
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	cmp	byte ptr [rax + 3], 0
	mov	rsp, rsp
	jne	.label_82
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	nop	
	test	byte ptr [rbp - 2], 1
	jne	.label_93
	mov	rbp, rbp
	test	byte ptr [rbp - 0x129], 1
	je	.label_96
.label_93:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.62
	call	gettext
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	esi, ecx
	mov	rdi, rax
	mov	al, 0
	lea	rsi, [rsi]
	call	test_syntax_error
.label_96:
	nop	
	lea	rsi, [rbp - 0x188]
	nop	
	mov	eax, dword ptr [rbp - 8]
	mov	rsp, rsp
	sub	eax, 1
	lea	rsi, [rsi]
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdx + rcx*8]
	call	get_mtime
	lea	rsi, [rsi]
	lea	rsi, [rbp - 0x198]
	mov	rsp, rsp
	and	al, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x199], al
	mov	r8d, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	add	r8d, 1
	movsxd	rcx, r8d
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdx + rcx*8]
	nop	
	call	get_mtime
	nop	
	xor	r8d, r8d
	mov	rsp, rsp
	mov	r9b, r8b
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 0x19a], al
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x199], 1
	mov	byte ptr [rbp - 0x201], r9b
	lea	rdi, [rdi]
	je	.label_79
	lea	rdi, [rdi]
	mov	al, 1
	test	byte ptr [rbp - 0x19a], 1
	nop	
	mov	byte ptr [rbp - 0x202], al
	nop	
	je	.label_88
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x188]
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x180]
	lea	rdi, [rdi]
	mov	rdx, qword ptr [rbp - 0x198]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x190]
	mov	rsp, rsp
	call	timespec_cmp
	lea	rdi, [rdi]
	cmp	eax, 0
	setg	r8b
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x202], r8b
.label_88:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x202]
	mov	byte ptr [rbp - 0x201], al
.label_79:
	mov	al, byte ptr [rbp - 0x201]
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_80
.label_82:
	jmp	.label_78
.label_103:
	movsxd	rax, dword ptr [rbp - 8]
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 2]
	mov	rbp, rbp
	cmp	edx, 0x66
	jne	.label_110
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 3], 0
	nop	
	jne	.label_110
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	dword ptr [dword ptr [pos]],  eax
	test	byte ptr [rbp - 2], 1
	nop	
	jne	.label_118
	test	byte ptr [rbp - 0x129], 1
	mov	rsp, rsp
	je	.label_84
.label_118:
	lea	rdi, [rdi]
	movabs	rdi, OFFSET FLAT:.str.63
	mov	rsp, rsp
	call	gettext
	xor	ecx, ecx
	mov	esi, ecx
	nop	
	mov	rdi, rax
	mov	al, 0
	mov	rbp, rbp
	call	test_syntax_error
.label_84:
	lea	rdi, [rdi]
	lea	rsi, [rbp - 0x98]
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	movsxd	rcx, eax
	nop	
	mov	rdx,  qword ptr [word ptr [argv]]
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	call	stat
	xor	r8d, r8d
	lea	rdi, [rdi]
	mov	r9b, r8b
	mov	rbp, rbp
	cmp	eax, 0
	mov	byte ptr [rbp - 0x203], r9b
	jne	.label_98
	lea	rsi, [rbp - 0x128]
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	nop	
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rsi, [rsi]
	call	stat
	lea	rdi, [rdi]
	xor	r8d, r8d
	nop	
	mov	r9b, r8b
	cmp	eax, 0
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x203], r9b
	lea	rdi, [rdi]
	jne	.label_98
	nop	
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	rdx, qword ptr [rbp - 0x98]
	cmp	rdx, qword ptr [rbp - 0x128]
	mov	byte ptr [rbp - 0x203], cl
	jne	.label_98
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x90]
	cmp	rax, qword ptr [rbp - 0x120]
	sete	cl
	mov	byte ptr [rbp - 0x203], cl
.label_98:
	mov	al, byte ptr [rbp - 0x203]
	and	al, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], al
	lea	rdi, [rdi]
	jmp	.label_80
.label_110:
	lea	rsi, [rsi]
	jmp	.label_78
.label_115:
	nop	
	mov	eax, 0x74
	mov	rsp, rsp
	movsxd	rcx, dword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	mov	rsp, rsp
	movsx	esi, byte ptr [rcx + 2]
	cmp	eax, esi
	jne	.label_87
	lea	rdi, [rdi]
	xor	eax, eax
	nop	
	movsxd	rcx, dword ptr [rbp - 8]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rcx, qword ptr [rdx + rcx*8]
	movsx	esi, byte ptr [rcx + 3]
	lea	rdi, [rdi]
	cmp	eax, esi
	lea	rdi, [rdi]
	jne	.label_87
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	lea	rdi, [rdi]
	mov	dword ptr [dword ptr [pos]],  eax
	nop	
	test	byte ptr [rbp - 2], 1
	jne	.label_102
	nop	
	test	byte ptr [rbp - 0x129], 1
	nop	
	je	.label_106
.label_102:
	movabs	rdi, OFFSET FLAT:.str.64
	call	gettext
	nop	
	xor	ecx, ecx
	mov	rbp, rbp
	mov	esi, ecx
	mov	rdi, rax
	nop	
	mov	al, 0
	nop	
	call	test_syntax_error
.label_106:
	lea	rsi, [rbp - 0x1b0]
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 8]
	sub	eax, 1
	nop	
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	get_mtime
	nop	
	lea	rsi, [rbp - 0x1c0]
	mov	rbp, rbp
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x1c1], al
	lea	rdi, [rdi]
	mov	r8d, dword ptr [rbp - 8]
	mov	rsp, rsp
	add	r8d, 1
	movsxd	rcx, r8d
	mov	rsp, rsp
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rsp, rsp
	mov	rdi, qword ptr [rdx + rcx*8]
	nop	
	call	get_mtime
	xor	r8d, r8d
	mov	r9b, r8b
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 0x1c2], al
	nop	
	test	byte ptr [rbp - 0x1c2], 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x204], r9b
	je	.label_90
	mov	al, 1
	test	byte ptr [rbp - 0x1c1], 1
	nop	
	mov	byte ptr [rbp - 0x205], al
	lea	rdi, [rdi]
	je	.label_107
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x1b0]
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x1a8]
	mov	rdx, qword ptr [rbp - 0x1c0]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x1b8]
	call	timespec_cmp
	cmp	eax, 0
	lea	rdi, [rdi]
	setl	r8b
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x205], r8b
.label_107:
	mov	al, byte ptr [rbp - 0x205]
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x204], al
.label_90:
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x204]
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_80
.label_87:
	lea	rdi, [rdi]
	jmp	.label_78
.label_78:
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.65
	call	gettext
	mov	rsp, rsp
	movsxd	rdi, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	nop	
	mov	rdi, qword ptr [rcx + rdi*8]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x210], rax
	mov	rsp, rsp
	call	quote
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x210]
	mov	rsi, rax
	mov	rsp, rsp
	mov	al, 0
	mov	rsp, rsp
	call	test_syntax_error
.label_94:
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rbp, rbp
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x3d
	jne	.label_100
	nop	
	movsxd	rax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rdi, [rdi]
	mov	rax, qword ptr [rcx + rax*8]
	cmp	byte ptr [rax + 1], 0
	mov	rsp, rsp
	je	.label_95
	mov	rbp, rbp
	movsxd	rax, dword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0x3d
	jne	.label_100
	movsxd	rax, dword ptr [rbp - 8]
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	cmp	byte ptr [rax + 2], 0
	lea	rdi, [rdi]
	jne	.label_100
.label_95:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	mov	edx,  dword ptr [dword ptr [pos]]
	add	edx, 2
	movsxd	rax, edx
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rcx + rax*8]
	call	strcmp
	cmp	eax, 0
	mov	rbp, rbp
	sete	r8b
	and	r8b, 1
	mov	byte ptr [rbp - 0x1c3], r8b
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [pos]]
	nop	
	add	eax, 3
	mov	rbp, rbp
	mov	dword ptr [dword ptr [pos]],  eax
	lea	rsi, [rsi]
	mov	r8b, byte ptr [rbp - 0x1c3]
	mov	rbp, rbp
	and	r8b, 1
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], r8b
	nop	
	jmp	.label_80
.label_100:
	lea	rdi, [rdi]
	movsxd	rax, dword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	mov	edx, OFFSET FLAT:.str.50
	mov	rsp, rsp
	mov	esi, edx
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rsi, [rsi]
	jne	.label_99
	lea	rsi, [rsi]
	movsxd	rax,  dword ptr [dword ptr [pos]]
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx,  dword ptr [dword ptr [pos]]
	mov	rbp, rbp
	add	edx, 2
	movsxd	rax, edx
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	sete	r8b
	xor	r8b, 0xff
	mov	rsp, rsp
	and	r8b, 1
	mov	byte ptr [rbp - 0x1c4], r8b
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 3
	mov	rsp, rsp
	mov	dword ptr [dword ptr [pos]],  eax
	nop	
	mov	r8b, byte ptr [rbp - 0x1c4]
	nop	
	and	r8b, 1
	mov	byte ptr [rbp - 1], r8b
	mov	rsp, rsp
	jmp	.label_80
.label_99:
	lea	rsi, [rsi]
	call	abort
.label_80:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x210
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404130

	.globl get_mtime
	.type get_mtime, @function
get_mtime:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0xc0
	lea	rax, [rbp - 0xa0]
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, rax
	lea	rsi, [rsi]
	call	stat
	cmp	eax, 0
	nop	
	sete	cl
	mov	rbp, rbp
	and	cl, 1
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0xa1], cl
	test	byte ptr [rbp - 0xa1], 1
	je	.label_120
	lea	rdi, [rbp - 0xa0]
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0xc0], rax
	call	get_stat_mtime
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb8], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xb0], rdx
	mov	rax, qword ptr [rbp - 0xb8]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0xc0]
	mov	qword ptr [rdx], rax
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb0]
	nop	
	mov	qword ptr [rdx + 8], rax
.label_120:
	mov	al, byte ptr [rbp - 0xa1]
	lea	rdi, [rdi]
	and	al, 1
	movzx	eax, al
	mov	rsp, rsp
	add	rsp, 0xc0
	lea	rsi, [rsi]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404200

	.globl or
	.type or, @function
or:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	rsp, rsp
	mov	byte ptr [rbp - 1], 0
.label_121:
	call	and
	lea	rdi, [rdi]
	and	al, 1
	mov	rsp, rsp
	movzx	ecx, al
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	edx, al
	or	edx, ecx
	cmp	edx, 0
	setne	al
	mov	rsp, rsp
	and	al, 1
	nop	
	mov	byte ptr [rbp - 1], al
	mov	ecx,  dword ptr [dword ptr [pos]]
	nop	
	cmp	ecx,  dword ptr [dword ptr [argc]]
	nop	
	jge	.label_122
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.47
	mov	esi, edx
	mov	rbp, rbp
	call	strcmp
	cmp	eax, 0
	mov	rsp, rsp
	je	.label_123
.label_122:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	add	rsp, 0x10
	pop	rbp
	mov	rbp, rbp
	ret	
.label_123:
	nop	
	xor	edi, edi
	lea	rdi, [rdi]
	call	advance
	jmp	.label_121
	.section	.text
	.align	16
	#Procedure 0x4042b0

	.globl and
	.type and, @function
and:
	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x10
	mov	byte ptr [rbp - 1], 1
.label_125:
	nop	
	call	term
	and	al, 1
	lea	rsi, [rsi]
	movzx	ecx, al
	mov	al, byte ptr [rbp - 1]
	nop	
	and	al, 1
	mov	rbp, rbp
	movzx	edx, al
	nop	
	and	edx, ecx
	mov	rsp, rsp
	cmp	edx, 0
	setne	al
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	ecx,  dword ptr [dword ptr [pos]]
	cmp	ecx,  dword ptr [dword ptr [argc]]
	nop	
	jge	.label_124
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	mov	edx, OFFSET FLAT:.str.46
	mov	esi, edx
	nop	
	call	strcmp
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_126
.label_124:
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	eax, al
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	ret	
.label_126:
	xor	edi, edi
	lea	rsi, [rsi]
	call	advance
	jmp	.label_125
	.section	.text
	.align	16
	#Procedure 0x404360

	.globl term
	.type term, @function
term:
	push	rbp
	nop	
	mov	rbp, rsp
	lea	rdi, [rdi]
	sub	rsp, 0x30
	mov	byte ptr [rbp - 2], 0
.label_127:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 9], cl
	jge	.label_131
	lea	rsi, [rsi]
	xor	eax, eax
	mov	cl, al
	movsxd	rdx,  dword ptr [dword ptr [pos]]
	mov	rsi,  qword ptr [word ptr [argv]]
	mov	rdx, qword ptr [rsi + rdx*8]
	mov	rsp, rsp
	movsx	eax, byte ptr [rdx]
	cmp	eax, 0x21
	nop	
	mov	byte ptr [rbp - 9], cl
	jne	.label_131
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	sete	sil
	mov	byte ptr [rbp - 9], sil
.label_131:
	mov	al, byte ptr [rbp - 9]
	mov	rsp, rsp
	test	al, 1
	jne	.label_147
	jmp	.label_149
.label_147:
	mov	edi, 1
	nop	
	call	advance
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 2]
	xor	al, 0xff
	lea	rsi, [rsi]
	and	al, 1
	mov	rbp, rbp
	mov	byte ptr [rbp - 2], al
	jmp	.label_127
.label_149:
	lea	rsi, [rsi]
	mov	eax,  dword ptr [dword ptr [pos]]
	cmp	eax,  dword ptr [dword ptr [argc]]
	jl	.label_136
	mov	rbp, rbp
	call	beyond
.label_136:
	mov	rsp, rsp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax]
	cmp	edx, 0x28
	lea	rdi, [rdi]
	jne	.label_142
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	movsx	edx, byte ptr [rax + 1]
	nop	
	cmp	edx, 0
	jne	.label_142
	mov	edi, 1
	lea	rsi, [rsi]
	call	advance
	nop	
	mov	dword ptr [rbp - 8], 1
.label_146:
	lea	rsi, [rsi]
	xor	eax, eax
	mov	rbp, rbp
	mov	cl, al
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	cmp	eax,  dword ptr [dword ptr [argc]]
	mov	byte ptr [rbp - 0xa], cl
	mov	rbp, rbp
	jge	.label_135
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, dword ptr [rbp - 8]
	movsxd	rcx, eax
	mov	rdx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	mov	eax, OFFSET FLAT:.str.42
	mov	esi, eax
	call	strcmp
	mov	rbp, rbp
	cmp	eax, 0
	mov	rsp, rsp
	sete	r8b
	nop	
	xor	r8b, 0xff
	mov	rsp, rsp
	mov	byte ptr [rbp - 0xa], r8b
.label_135:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0xa]
	mov	rbp, rbp
	test	al, 1
	lea	rdi, [rdi]
	jne	.label_128
	jmp	.label_134
.label_128:
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 8], 4
	lea	rdi, [rdi]
	jne	.label_137
	lea	rdi, [rdi]
	mov	eax,  dword ptr [dword ptr [argc]]
	mov	rsp, rsp
	sub	eax,  dword ptr [dword ptr [pos]]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_134
.label_137:
	jmp	.label_143
.label_143:
	mov	eax, dword ptr [rbp - 8]
	add	eax, 1
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 8], eax
	jmp	.label_146
.label_134:
	lea	rdi, [rdi]
	mov	edi, dword ptr [rbp - 8]
	call	posixtest
	nop	
	and	al, 1
	mov	byte ptr [rbp - 1], al
	movsxd	rcx,  dword ptr [dword ptr [pos]]
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [argv]]
	cmp	qword ptr [rdx + rcx*8], 0
	jne	.label_148
	nop	
	movabs	rdi, OFFSET FLAT:.str.66
	mov	rsp, rsp
	call	gettext
	nop	
	movabs	rdi, OFFSET FLAT:.str.42
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	call	quote
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	rsi, rax
	lea	rsi, [rsi]
	mov	al, 0
	lea	rdi, [rdi]
	call	test_syntax_error
.label_148:
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rsi, [rsi]
	movsx	edx, byte ptr [rax]
	mov	rbp, rbp
	cmp	edx, 0x29
	lea	rdi, [rdi]
	jne	.label_145
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rbp, rbp
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rbp, rbp
	movsx	edx, byte ptr [rax + 1]
	nop	
	cmp	edx, 0
	je	.label_150
.label_145:
	lea	rsi, [rsi]
	movabs	rdi, OFFSET FLAT:.str.67
	call	gettext
	xor	edi, edi
	movabs	rsi, OFFSET FLAT:.str.42
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	mov	rsp, rsp
	call	quote_n
	mov	edi, 1
	movsxd	rsi,  dword ptr [dword ptr [pos]]
	nop	
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rsi, qword ptr [rcx + rsi*8]
	mov	qword ptr [rbp - 0x28], rax
	lea	rsi, [rsi]
	call	quote_n
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x28]
	mov	rdx, rax
	lea	rsi, [rsi]
	mov	al, 0
	mov	rbp, rbp
	call	test_syntax_error
.label_150:
	nop	
	jmp	.label_151
.label_151:
	xor	edi, edi
	lea	rdi, [rdi]
	call	advance
	jmp	.label_132
.label_142:
	mov	eax, 4
	nop	
	mov	ecx,  dword ptr [dword ptr [argc]]
	sub	ecx,  dword ptr [dword ptr [pos]]
	mov	rsp, rsp
	cmp	eax, ecx
	nop	
	jg	.label_141
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rdi, qword ptr [rcx + rax*8]
	mov	edx, OFFSET FLAT:.str.61
	lea	rsi, [rsi]
	mov	esi, edx
	call	strcmp
	nop	
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_141
	mov	eax,  dword ptr [dword ptr [pos]]
	add	eax, 2
	mov	rsp, rsp
	movsxd	rcx, eax
	lea	rsi, [rsi]
	mov	rdx,  qword ptr [word ptr [argv]]
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rdx + rcx*8]
	call	binop
	nop	
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_139
	mov	rbp, rbp
	jmp	.label_141
.label_139:
	mov	edi, 1
	call	binary_operator
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rbp, rbp
	jmp	.label_130
.label_141:
	mov	eax, 3
	mov	ecx,  dword ptr [dword ptr [argc]]
	mov	rsp, rsp
	sub	ecx,  dword ptr [dword ptr [pos]]
	lea	rdi, [rdi]
	cmp	eax, ecx
	jg	.label_140
	mov	rsp, rsp
	mov	eax,  dword ptr [dword ptr [pos]]
	mov	rbp, rbp
	add	eax, 1
	movsxd	rcx, eax
	lea	rdi, [rdi]
	mov	rdx,  qword ptr [word ptr [argv]]
	nop	
	mov	rdi, qword ptr [rdx + rcx*8]
	lea	rdi, [rdi]
	call	binop
	lea	rsi, [rsi]
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_138
	jmp	.label_140
.label_138:
	lea	rdi, [rdi]
	xor	edi, edi
	call	binary_operator
	mov	rsp, rsp
	and	al, 1
	mov	byte ptr [rbp - 1], al
	jmp	.label_129
.label_140:
	mov	rbp, rbp
	movsxd	rax,  dword ptr [dword ptr [pos]]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsx	edx, byte ptr [rax]
	nop	
	cmp	edx, 0x2d
	jne	.label_133
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	mov	rsp, rsp
	movsx	edx, byte ptr [rax + 1]
	cmp	edx, 0
	lea	rdi, [rdi]
	je	.label_133
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	lea	rdi, [rdi]
	movsx	edx, byte ptr [rax + 2]
	mov	rsp, rsp
	cmp	edx, 0
	jne	.label_133
	call	unary_operator
	lea	rsi, [rsi]
	and	al, 1
	mov	byte ptr [rbp - 1], al
	mov	rsp, rsp
	jmp	.label_144
.label_133:
	mov	rsp, rsp
	xor	edi, edi
	movsxd	rax,  dword ptr [dword ptr [pos]]
	mov	rcx,  qword ptr [word ptr [argv]]
	mov	rax, qword ptr [rcx + rax*8]
	nop	
	movsx	edx, byte ptr [rax]
	lea	rdi, [rdi]
	cmp	edx, 0
	setne	sil
	nop	
	and	sil, 1
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 1], sil
	nop	
	call	advance
.label_144:
	jmp	.label_129
.label_129:
	jmp	.label_130
.label_130:
	nop	
	jmp	.label_132
.label_132:
	mov	al, byte ptr [rbp - 2]
	lea	rsi, [rsi]
	and	al, 1
	lea	rdi, [rdi]
	movzx	ecx, al
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 1]
	mov	rsp, rsp
	and	al, 1
	lea	rdi, [rdi]
	movzx	edx, al
	xor	ecx, edx
	cmp	ecx, 0
	lea	rdi, [rdi]
	setne	al
	and	al, 1
	mov	rsp, rsp
	movzx	eax, al
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4048e0
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
	.align	16
	#Procedure 0x404910
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
	.align	16
	#Procedure 0x404940

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
	je	.label_152
	test	byte ptr [byte ptr [ignore_EPIPE]],  1
	je	.label_154
	mov	rbp, rbp
	call	__errno_location
	mov	rsp, rsp
	cmp	dword ptr [rax], 0x20
	je	.label_152
.label_154:
	mov	rsp, rsp
	movabs	rdi, OFFSET FLAT:.str_1
	call	gettext
	mov	qword ptr [rbp - 8], rax
	cmp	qword ptr [word ptr [file_name]],  0
	je	.label_156
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
	jmp	.label_153
.label_156:
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
.label_153:
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	mov	rsp, rsp
	call	_exit
.label_152:
	mov	rdi,  qword ptr [word ptr [stderr]]
	mov	rbp, rbp
	call	close_stream
	nop	
	cmp	eax, 0
	je	.label_155
	lea	rdi, [rdi]
	mov	edi,  dword ptr [dword ptr [exit_failure]]
	call	_exit
.label_155:
	lea	rdi, [rdi]
	add	rsp, 0x10
	nop	
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x404a70

	.globl umaxtostr
	.type umaxtostr, @function
umaxtostr:
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	add	rsi, 0x14
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rsi], 0
	cmp	qword ptr [rbp - 8], 0
	jae	.label_157
	jmp	.label_160
.label_160:
	lea	rsi, [rsi]
	mov	eax, 0x30
	mov	rbp, rbp
	mov	ecx, eax
	mov	eax, 0xa
	mov	edx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	esi, esi
	mov	qword ptr [rbp - 0x20], rdx
	mov	edx, esi
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x20]
	div	rdi
	lea	rdi, [rdi]
	sub	rcx, rdx
	mov	r8b, cl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	rbp, rbp
	mov	byte ptr [rcx - 1], r8b
	mov	eax, 0xa
	nop	
	mov	ecx, eax
	nop	
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	nop	
	div	rcx
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	cmp	rax, 0
	lea	rdi, [rdi]
	jne	.label_160
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	mov	rbp, rbp
	add	rcx, -1
	mov	qword ptr [rbp - 0x18], rcx
	nop	
	mov	byte ptr [rax - 1], 0x2d
	jmp	.label_159
.label_157:
	jmp	.label_158
.label_158:
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	mov	rsp, rsp
	div	rcx
	add	rdx, 0x30
	mov	sil, dl
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rdx, rcx
	lea	rsi, [rsi]
	add	rdx, -1
	mov	qword ptr [rbp - 0x18], rdx
	mov	byte ptr [rcx - 1], sil
	mov	eax, 0xa
	mov	ecx, eax
	mov	rax, qword ptr [rbp - 8]
	xor	edx, edx
	div	rcx
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	cmp	rax, 0
	nop	
	jne	.label_158
	jmp	.label_159
.label_159:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404bb0

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
	jne	.label_163
	movabs	rdi, OFFSET FLAT:.str_3
	mov	rbp, rbp
	mov	rsi,  qword ptr [word ptr [stderr]]
	call	fputs
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x1c], eax
	lea	rsi, [rsi]
	call	abort
.label_163:
	lea	rdi, [rdi]
	mov	esi, 0x2f
	mov	rdi, qword ptr [rbp - 8]
	nop	
	call	strrchr
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rax
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	je	.label_161
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_165
.label_161:
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x28], rax
.label_165:
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
	jl	.label_164
	lea	rsi, [rsi]
	movabs	rsi, OFFSET FLAT:.str.1_1
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
	jne	.label_164
	mov	rbp, rbp
	movabs	rsi, OFFSET FLAT:.str.2_0
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
	jne	.label_162
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 3
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	mov	qword ptr [word ptr [program_invocation_short_name]],  rax
.label_162:
	jmp	.label_164
.label_164:
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
	.align	16
	#Procedure 0x404d30
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
	je	.label_166
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_167
.label_166:
	movabs	rax, OFFSET FLAT:default_quoting_options
	nop	
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	jmp	.label_167
.label_167:
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
	.align	16
	#Procedure 0x404de0
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
	je	.label_168
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x10], rax
	nop	
	jmp	.label_169
.label_168:
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_169
.label_169:
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	eax, dword ptr [rax]
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404e40
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
	je	.label_170
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_171
.label_170:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x18], rax
	lea	rdi, [rdi]
	jmp	.label_171
.label_171:
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rbp - 0x10]
	mov	dword ptr [rax], ecx
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x404ea0

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
	je	.label_172
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	jmp	.label_173
.label_172:
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x30], rax
	lea	rsi, [rsi]
	jmp	.label_173
.label_173:
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
	.align	16
	#Procedure 0x404fa0
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
	jne	.label_174
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_174:
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
	.align	16
	#Procedure 0x405000

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
	jne	.label_175
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 8], rax
.label_175:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	mov	dword ptr [rax], 0xa
	nop	
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_177
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x18], 0
	lea	rsi, [rsi]
	jne	.label_176
.label_177:
	call	abort
.label_176:
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
	.align	16
	#Procedure 0x4050a0
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
	je	.label_178
	mov	rax, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x48], rax
	jmp	.label_179
.label_178:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x48], rax
	mov	rbp, rbp
	jmp	.label_179
.label_179:
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
	.align	16
	#Procedure 0x4051a0

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
.label_260:
	mov	eax, dword ptr [rbp - 0x34]
	mov	rbp, rbp
	mov	ecx, eax
	lea	rsi, [rsi]
	mov	rdx, rcx
	sub	rdx, 0xa
	mov	qword ptr [rbp - 0xc8], rcx
	mov	qword ptr [rbp - 0xd0], rdx
	ja	.label_318
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc8]
	lea	rdi, [rdi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_321]]
	jmp	rcx
.label_644:
	mov	dword ptr [rbp - 0x34], 5
	mov	byte ptr [rbp - 0x7b], 1
.label_643:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_327
	jmp	.label_331
.label_331:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_334
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x22
.label_334:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	rsp, rsp
	jmp	.label_327
.label_327:
	movabs	rax, OFFSET FLAT:.str.10_0
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	jmp	.label_184
.label_645:
	nop	
	mov	byte ptr [rbp - 0x79], 1
	nop	
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_184
.label_646:
	cmp	dword ptr [rbp - 0x34], 0xa
	je	.label_349
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
.label_349:
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	jne	.label_360
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x48]
	mov	qword ptr [rbp - 0x70], rax
.label_375:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	cmp	byte ptr [rax], 0
	mov	rsp, rsp
	je	.label_365
	jmp	.label_367
.label_367:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_369
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	mov	cl, byte ptr [rax]
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rdx, qword ptr [rbp - 0x18]
	mov	byte ptr [rdx + rax], cl
.label_369:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_329
.label_329:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_375
.label_365:
	mov	rbp, rbp
	jmp	.label_360
.label_360:
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
	jmp	.label_184
.label_641:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x79], 1
.label_640:
	mov	byte ptr [rbp - 0x7b], 1
.label_642:
	nop	
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_190
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x79], 1
.label_190:
	jmp	.label_197
.label_197:
	mov	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_199
	jmp	.label_205
.label_205:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_316
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_316:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_199
.label_199:
	movabs	rax, OFFSET FLAT:.str.12_0
	mov	qword ptr [rbp - 0x70], rax
	mov	qword ptr [rbp - 0x78], 1
	mov	rsp, rsp
	jmp	.label_184
.label_639:
	mov	byte ptr [rbp - 0x7b], 0
	jmp	.label_184
.label_318:
	call	abort
.label_184:
	mov	qword ptr [rbp - 0x58], 0
.label_195:
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_232
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
	jmp	.label_236
.label_232:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x58]
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	sete	cl
	and	cl, 1
	movzx	edx, cl
	mov	rbp, rbp
	mov	dword ptr [rbp - 0xd4], edx
.label_236:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0xd4]
	lea	rdi, [rdi]
	cmp	eax, 0
	setne	cl
	xor	cl, 0xff
	mov	rbp, rbp
	test	cl, 1
	jne	.label_254
	mov	rbp, rbp
	jmp	.label_265
.label_254:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x81], 0
	nop	
	mov	byte ptr [rbp - 0x82], 0
	mov	byte ptr [rbp - 0x83], 0
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_268
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	je	.label_268
	cmp	qword ptr [rbp - 0x78], 0
	je	.label_268
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	add	rax, qword ptr [rbp - 0x78]
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x30], -1
	mov	qword ptr [rbp - 0xe0], rax
	lea	rsi, [rsi]
	jne	.label_281
	mov	rsp, rsp
	mov	eax, 1
	mov	rbp, rbp
	mov	ecx, eax
	cmp	rcx, qword ptr [rbp - 0x78]
	jae	.label_281
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
	mov	qword ptr [rbp - 0xe8], rax
	jmp	.label_296
.label_281:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0xe8], rax
.label_296:
	mov	rax, qword ptr [rbp - 0xe8]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0xe0]
	cmp	rcx, rax
	mov	rsp, rsp
	ja	.label_268
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
	jne	.label_268
	nop	
	test	byte ptr [rbp - 0x7b], 1
	mov	rsp, rsp
	je	.label_310
	jmp	.label_196
.label_310:
	nop	
	mov	byte ptr [rbp - 0x81], 1
.label_268:
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
	ja	.label_312
	mov	rax, qword ptr [rbp - 0xf0]
	lea	rsi, [rsi]
	mov	rcx,  qword ptr [word ptr [+ (rax * 8) + label_322]]
	nop	
	jmp	rcx
.label_671:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	je	.label_325
	mov	rsp, rsp
	jmp	.label_330
.label_330:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_209
	jmp	.label_196
.label_209:
	mov	rsp, rsp
	mov	byte ptr [rbp - 0x82], 1
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_230
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7c], 1
	mov	rbp, rbp
	jne	.label_230
	nop	
	jmp	.label_289
.label_289:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_342
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_342:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_348
.label_348:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_352
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x24
.label_352:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_358
.label_358:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_364
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_364:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_230:
	lea	rsi, [rsi]
	jmp	.label_202
.label_202:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_370
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x5c
.label_370:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_373
.label_373:
	cmp	dword ptr [rbp - 0x34], 2
	je	.label_186
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	cmp	rax, qword ptr [rbp - 0x30]
	jae	.label_186
	mov	eax, 0x30
	mov	rcx, qword ptr [rbp - 0x58]
	mov	rdx, qword ptr [rbp - 0x28]
	nop	
	movsx	esi, byte ptr [rdx + rcx + 1]
	cmp	eax, esi
	jg	.label_186
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x28]
	mov	rbp, rbp
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x39
	nop	
	jg	.label_186
	nop	
	jmp	.label_283
.label_283:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_198
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x30
.label_198:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_206
.label_206:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_212
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x30
.label_212:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_186
.label_186:
	mov	byte ptr [rbp - 0x7f], 0x30
	nop	
	jmp	.label_225
.label_325:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 0x38]
	nop	
	and	eax, 1
	mov	rsp, rsp
	cmp	eax, 0
	je	.label_228
	mov	rbp, rbp
	jmp	.label_233
.label_228:
	jmp	.label_225
.label_225:
	jmp	.label_208
.label_682:
	mov	eax, dword ptr [rbp - 0x34]
	mov	ecx, eax
	sub	ecx, 2
	mov	dword ptr [rbp - 0xfc], eax
	nop	
	mov	dword ptr [rbp - 0x100], ecx
	mov	rsp, rsp
	je	.label_239
	mov	rbp, rbp
	jmp	.label_246
.label_246:
	mov	eax, dword ptr [rbp - 0xfc]
	mov	rbp, rbp
	sub	eax, 5
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x104], eax
	lea	rsi, [rsi]
	je	.label_249
	jmp	.label_256
.label_239:
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_258
	jmp	.label_196
.label_258:
	jmp	.label_213
.label_249:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x38]
	and	eax, 4
	cmp	eax, 0
	je	.label_266
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 2
	cmp	rax, qword ptr [rbp - 0x30]
	nop	
	jae	.label_266
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x58]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax + 1]
	mov	rbp, rbp
	cmp	edx, 0x3f
	lea	rdi, [rdi]
	jne	.label_266
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
	je	.label_275
	nop	
	jmp	.label_290
.label_290:
	nop	
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x27
	sub	eax, 3
	mov	dword ptr [rbp - 0x110], eax
	mov	rsp, rsp
	jb	.label_275
	jmp	.label_298
.label_298:
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x108]
	mov	rbp, rbp
	sub	eax, 0x2d
	mov	dword ptr [rbp - 0x114], eax
	mov	rsp, rsp
	je	.label_275
	jmp	.label_301
.label_301:
	mov	eax, dword ptr [rbp - 0x108]
	lea	rsi, [rsi]
	sub	eax, 0x2f
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x118], eax
	je	.label_275
	jmp	.label_340
.label_340:
	lea	rdi, [rdi]
	mov	eax, dword ptr [rbp - 0x108]
	add	eax, -0x3c
	sub	eax, 2
	mov	dword ptr [rbp - 0x11c], eax
	lea	rdi, [rdi]
	ja	.label_307
	jmp	.label_275
.label_275:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_292
	jmp	.label_196
.label_292:
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
	jae	.label_315
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	byte ptr [rcx + rax], 0x3f
.label_315:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_326
.label_326:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_333
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_333:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_338
.label_338:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_341
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x22
.label_341:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_347
.label_347:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_343
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x3f
.label_343:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_355
.label_307:
	jmp	.label_355
.label_355:
	jmp	.label_266
.label_266:
	jmp	.label_213
.label_256:
	jmp	.label_213
.label_213:
	jmp	.label_208
.label_672:
	mov	byte ptr [rbp - 0x80], 0x61
	jmp	.label_192
.label_673:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x80], 0x62
	jmp	.label_192
.label_677:
	mov	byte ptr [rbp - 0x80], 0x66
	lea	rdi, [rdi]
	jmp	.label_192
.label_675:
	mov	byte ptr [rbp - 0x80], 0x6e
	mov	rbp, rbp
	jmp	.label_188
.label_678:
	mov	byte ptr [rbp - 0x80], 0x72
	mov	rbp, rbp
	jmp	.label_188
.label_674:
	lea	rsi, [rsi]
	mov	byte ptr [rbp - 0x80], 0x74
	jmp	.label_188
.label_676:
	mov	byte ptr [rbp - 0x80], 0x76
	jmp	.label_192
.label_683:
	mov	al, byte ptr [rbp - 0x7f]
	nop	
	mov	byte ptr [rbp - 0x80], al
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_372
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_374
	nop	
	jmp	.label_196
.label_374:
	lea	rsi, [rsi]
	jmp	.label_187
.label_372:
	test	byte ptr [rbp - 0x79], 1
	je	.label_181
	mov	rsp, rsp
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_181
	nop	
	cmp	qword ptr [rbp - 0x78], 0
	mov	rbp, rbp
	je	.label_181
	jmp	.label_187
.label_181:
	jmp	.label_188
.label_188:
	mov	rsp, rsp
	cmp	dword ptr [rbp - 0x34], 2
	lea	rsi, [rsi]
	jne	.label_189
	test	byte ptr [rbp - 0x7b], 1
	je	.label_189
	jmp	.label_196
.label_189:
	mov	rsp, rsp
	jmp	.label_192
.label_192:
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_201
	mov	rsp, rsp
	mov	al, byte ptr [rbp - 0x80]
	mov	byte ptr [rbp - 0x7f], al
	jmp	.label_204
.label_201:
	jmp	.label_208
.label_684:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], -1
	jne	.label_210
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	nop	
	movsx	ecx, byte ptr [rax + 1]
	cmp	ecx, 0
	lea	rsi, [rsi]
	je	.label_220
	jmp	.label_218
.label_210:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x30], 1
	je	.label_220
.label_218:
	nop	
	jmp	.label_208
.label_220:
	jmp	.label_224
.label_224:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x58], 0
	mov	rbp, rbp
	je	.label_194
	lea	rsi, [rsi]
	jmp	.label_208
.label_194:
	nop	
	jmp	.label_231
.label_231:
	mov	byte ptr [rbp - 0x83], 1
.label_679:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_235
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_235
	jmp	.label_196
.label_235:
	lea	rsi, [rsi]
	jmp	.label_208
.label_681:
	mov	rbp, rbp
	mov	byte ptr [rbp - 0x7d], 1
	mov	byte ptr [rbp - 0x83], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_244
	test	byte ptr [rbp - 0x7b], 1
	nop	
	je	.label_252
	jmp	.label_196
.label_252:
	cmp	qword ptr [rbp - 0x20], 0
	je	.label_261
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x68], 0
	lea	rdi, [rdi]
	jne	.label_261
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x68], rax
	mov	qword ptr [rbp - 0x20], 0
.label_261:
	jmp	.label_271
.label_271:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_273
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rcx + rax], 0x27
.label_273:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_280
.label_280:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	jae	.label_291
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_291:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_294
.label_294:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_297
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_297:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_244:
	lea	rsi, [rsi]
	jmp	.label_208
.label_680:
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x83], 1
	jmp	.label_208
.label_312:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7a], 1
	je	.label_308
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
	jmp	.label_285
.label_308:
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
	jne	.label_328
	lea	rsi, [rsi]
	mov	rdi, qword ptr [rbp - 0x28]
	call	strlen
	mov	qword ptr [rbp - 0x30], rax
.label_328:
	jmp	.label_241
.label_241:
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
	jne	.label_350
	jmp	.label_354
.label_350:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0xb0], -1
	jne	.label_357
	mov	byte ptr [rbp - 0x91], 0
	jmp	.label_354
.label_357:
	nop	
	cmp	qword ptr [rbp - 0xb0], -2
	jne	.label_361
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_377:
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
	jae	.label_366
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, qword ptr [rbp - 0x90]
	mov	rcx, qword ptr [rbp - 0x28]
	movsx	edx, byte ptr [rcx + rax]
	mov	rbp, rbp
	cmp	edx, 0
	setne	sil
	mov	byte ptr [rbp - 0x129], sil
.label_366:
	mov	al, byte ptr [rbp - 0x129]
	test	al, 1
	jne	.label_339
	jmp	.label_376
.label_339:
	mov	rax, qword ptr [rbp - 0x90]
	add	rax, 1
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_377
.label_376:
	jmp	.label_354
.label_361:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_180
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_180
	mov	qword ptr [rbp - 0xb8], 1
.label_242:
	mov	rax, qword ptr [rbp - 0xb8]
	nop	
	cmp	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	jae	.label_237
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
	jb	.label_193
	jmp	.label_214
.label_214:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x5e
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x138], eax
	je	.label_193
	jmp	.label_221
.label_221:
	mov	eax, dword ptr [rbp - 0x130]
	sub	eax, 0x60
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x13c], eax
	mov	rsp, rsp
	je	.label_193
	jmp	.label_229
.label_229:
	mov	eax, dword ptr [rbp - 0x130]
	lea	rdi, [rdi]
	sub	eax, 0x7c
	mov	dword ptr [rbp - 0x140], eax
	jne	.label_226
	mov	rsp, rsp
	jmp	.label_193
.label_193:
	mov	rsp, rsp
	jmp	.label_196
.label_226:
	jmp	.label_240
.label_240:
	mov	rsp, rsp
	jmp	.label_293
.label_293:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0xb8]
	add	rax, 1
	mov	qword ptr [rbp - 0xb8], rax
	jmp	.label_242
.label_237:
	mov	rbp, rbp
	jmp	.label_180
.label_180:
	mov	rbp, rbp
	mov	edi, dword ptr [rbp - 0xa4]
	call	iswprint
	cmp	eax, 0
	jne	.label_257
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x91], 0
.label_257:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x90]
	mov	qword ptr [rbp - 0x90], rax
	jmp	.label_263
.label_263:
	lea	rsi, [rsi]
	jmp	.label_272
.label_272:
	jmp	.label_274
.label_274:
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
	jne	.label_241
.label_354:
	jmp	.label_285
.label_285:
	mov	rsp, rsp
	mov	eax, 1
	mov	rsp, rsp
	mov	ecx, eax
	mov	dl, byte ptr [rbp - 0x91]
	and	dl, 1
	mov	byte ptr [rbp - 0x83], dl
	cmp	rcx, qword ptr [rbp - 0x90]
	nop	
	jb	.label_286
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x79], 1
	lea	rdi, [rdi]
	je	.label_295
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	mov	rsp, rsp
	jne	.label_295
.label_286:
	mov	rax, qword ptr [rbp - 0x58]
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x90]
	nop	
	mov	qword ptr [rbp - 0xc0], rax
.label_264:
	mov	rbp, rbp
	test	byte ptr [rbp - 0x79], 1
	nop	
	je	.label_185
	mov	rsp, rsp
	test	byte ptr [rbp - 0x91], 1
	jne	.label_185
	jmp	.label_304
.label_304:
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	je	.label_306
	jmp	.label_196
.label_306:
	mov	byte ptr [rbp - 0x82], 1
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_309
	test	byte ptr [rbp - 0x7c], 1
	jne	.label_309
	lea	rdi, [rdi]
	jmp	.label_313
.label_313:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_317
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_317:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_320
.label_320:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_323
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x24
.label_323:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	nop	
	jmp	.label_335
.label_335:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_238
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_238:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_309:
	jmp	.label_344
.label_344:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rdi, [rdi]
	jae	.label_346
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x5c
.label_346:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_262
.label_262:
	jmp	.label_353
.label_353:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_371
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
.label_371:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_234
.label_234:
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_278
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
.label_278:
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
	jmp	.label_288
.label_185:
	test	byte ptr [rbp - 0x81], 1
	lea	rsi, [rsi]
	je	.label_380
	lea	rdi, [rdi]
	jmp	.label_182
.label_182:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_183
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x5c
.label_183:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	mov	byte ptr [rbp - 0x81], 0
.label_380:
	nop	
	jmp	.label_288
.label_288:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0xc0]
	mov	rcx, qword ptr [rbp - 0x58]
	add	rcx, 1
	cmp	rax, rcx
	mov	rsp, rsp
	ja	.label_200
	jmp	.label_207
.label_200:
	lea	rsi, [rsi]
	jmp	.label_324
.label_324:
	test	byte ptr [rbp - 0x7c], 1
	je	.label_211
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x82], 1
	jne	.label_211
	lea	rsi, [rsi]
	jmp	.label_217
.label_217:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_219
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_219:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	jmp	.label_227
.label_227:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	jae	.label_245
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_245:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_211:
	nop	
	jmp	.label_248
.label_248:
	mov	rsp, rsp
	jmp	.label_250
.label_250:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_251
	lea	rdi, [rdi]
	mov	al, byte ptr [rbp - 0x7f]
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rcx], al
.label_251:
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
	jmp	.label_264
.label_207:
	mov	rsp, rsp
	jmp	.label_187
.label_295:
	lea	rsi, [rsi]
	jmp	.label_208
.label_208:
	test	byte ptr [rbp - 0x79], 1
	mov	rbp, rbp
	je	.label_269
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_284
.label_269:
	test	byte ptr [rbp - 0x7b], 1
	je	.label_287
.label_284:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x40], 0
	nop	
	je	.label_287
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
	jne	.label_300
.label_287:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x81], 1
	lea	rdi, [rdi]
	jne	.label_300
	mov	rsp, rsp
	jmp	.label_187
.label_300:
	nop	
	jmp	.label_204
.label_204:
	jmp	.label_222
.label_222:
	test	byte ptr [rbp - 0x7b], 1
	mov	rbp, rbp
	je	.label_303
	jmp	.label_196
.label_303:
	mov	byte ptr [rbp - 0x82], 1
	cmp	dword ptr [rbp - 0x34], 2
	lea	rdi, [rdi]
	jne	.label_259
	test	byte ptr [rbp - 0x7c], 1
	lea	rdi, [rdi]
	jne	.label_259
	lea	rdi, [rdi]
	jmp	.label_311
.label_311:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_314
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x27
.label_314:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_319
.label_319:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_255
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x24
.label_255:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_332
.label_332:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	nop	
	jae	.label_337
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	byte ptr [rcx + rax], 0x27
.label_337:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 1
.label_259:
	jmp	.label_345
.label_345:
	nop	
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_336
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	mov	rcx, qword ptr [rbp - 0x18]
	nop	
	mov	byte ptr [rcx + rax], 0x5c
.label_336:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_351
.label_351:
	nop	
	jmp	.label_187
.label_187:
	jmp	.label_356
.label_356:
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7c], 1
	je	.label_191
	test	byte ptr [rbp - 0x82], 1
	jne	.label_191
	lea	rdi, [rdi]
	jmp	.label_362
.label_362:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_363
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0x27
.label_363:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	add	rax, 1
	nop	
	mov	qword ptr [rbp - 0x60], rax
	jmp	.label_368
.label_368:
	mov	rax, qword ptr [rbp - 0x60]
	nop	
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_302
	mov	rax, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rcx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rcx + rax], 0x27
.label_302:
	mov	rax, qword ptr [rbp - 0x60]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	mov	byte ptr [rbp - 0x7c], 0
.label_191:
	jmp	.label_359
.label_359:
	nop	
	jmp	.label_378
.label_378:
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_379
	mov	al, byte ptr [rbp - 0x7f]
	mov	rsp, rsp
	mov	rcx, qword ptr [rbp - 0x60]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	lea	rdi, [rdi]
	mov	byte ptr [rdx + rcx], al
.label_379:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x83], 1
	jne	.label_216
	mov	byte ptr [rbp - 0x7e], 0
.label_216:
	mov	rbp, rbp
	jmp	.label_233
.label_233:
	mov	rax, qword ptr [rbp - 0x58]
	add	rax, 1
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x58], rax
	jmp	.label_195
.label_265:
	cmp	qword ptr [rbp - 0x60], 0
	mov	rbp, rbp
	jne	.label_203
	cmp	dword ptr [rbp - 0x34], 2
	nop	
	jne	.label_203
	mov	rbp, rbp
	test	byte ptr [rbp - 0x7b], 1
	lea	rdi, [rdi]
	je	.label_203
	nop	
	jmp	.label_196
.label_203:
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x34], 2
	jne	.label_215
	lea	rdi, [rdi]
	test	byte ptr [rbp - 0x7b], 1
	lea	rsi, [rsi]
	jne	.label_215
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7d], 1
	je	.label_215
	test	byte ptr [rbp - 0x7e], 1
	je	.label_223
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
	jmp	.label_247
.label_223:
	lea	rdi, [rdi]
	cmp	qword ptr [rbp - 0x20], 0
	lea	rsi, [rsi]
	jne	.label_253
	cmp	qword ptr [rbp - 0x68], 0
	lea	rsi, [rsi]
	je	.label_253
	nop	
	mov	rax, qword ptr [rbp - 0x68]
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x60], 0
	jmp	.label_260
.label_253:
	jmp	.label_267
.label_267:
	mov	rbp, rbp
	jmp	.label_215
.label_215:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x70], 0
	je	.label_270
	lea	rsi, [rsi]
	test	byte ptr [rbp - 0x7b], 1
	jne	.label_270
	mov	rbp, rbp
	jmp	.label_276
.label_276:
	mov	rax, qword ptr [rbp - 0x70]
	cmp	byte ptr [rax], 0
	je	.label_277
	lea	rdi, [rdi]
	jmp	.label_279
.label_279:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jae	.label_282
	mov	rax, qword ptr [rbp - 0x70]
	lea	rsi, [rsi]
	mov	cl, byte ptr [rax]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	byte ptr [rdx + rax], cl
.label_282:
	mov	rax, qword ptr [rbp - 0x60]
	add	rax, 1
	mov	qword ptr [rbp - 0x60], rax
	lea	rdi, [rdi]
	jmp	.label_243
.label_243:
	mov	rax, qword ptr [rbp - 0x70]
	lea	rdi, [rdi]
	add	rax, 1
	mov	qword ptr [rbp - 0x70], rax
	jmp	.label_276
.label_277:
	jmp	.label_270
.label_270:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	jae	.label_299
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	rcx, qword ptr [rbp - 0x18]
	mov	byte ptr [rcx + rax], 0
.label_299:
	mov	rax, qword ptr [rbp - 0x60]
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_247
.label_196:
	nop	
	cmp	dword ptr [rbp - 0x34], 2
	mov	rsp, rsp
	jne	.label_305
	mov	rsp, rsp
	test	byte ptr [rbp - 0x79], 1
	mov	rsp, rsp
	je	.label_305
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x34], 4
.label_305:
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
.label_247:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	add	rsp, 0x158
	pop	rbx
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x406ac0
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
	.align	16
	#Procedure 0x406b30

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
	je	.label_381
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x28]
	mov	qword ptr [rbp - 0x50], rax
	mov	rsp, rsp
	jmp	.label_382
.label_381:
	movabs	rax, OFFSET FLAT:default_quoting_options
	mov	qword ptr [rbp - 0x50], rax
	lea	rsi, [rsi]
	jmp	.label_382
.label_382:
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
	je	.label_383
	mov	rax, qword ptr [rbp - 0x40]
	sub	rax, 1
	nop	
	mov	rcx, qword ptr [rbp - 0x20]
	mov	qword ptr [rcx], rax
.label_383:
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
	.align	16
	#Procedure 0x406d00
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
.label_388:
	mov	eax, dword ptr [rbp - 0xc]
	cmp	eax,  dword ptr [dword ptr [nslots]]
	jge	.label_387
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
	jmp	.label_388
.label_387:
	lea	rdi, [rdi]
	movabs	rax, OFFSET FLAT:slot0
	mov	rcx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	cmp	qword ptr [rcx + 8], rax
	mov	rsp, rsp
	je	.label_386
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, qword ptr [rax + 8]
	call	free
	movabs	rax, OFFSET FLAT:slot0
	mov	qword ptr [word ptr [slotvec0]],  0x100
	mov	rbp, rbp
	mov	qword ptr [word ptr [label_384]],  rax
.label_386:
	movabs	rax, OFFSET FLAT:slotvec0
	cmp	qword ptr [rbp - 8], rax
	je	.label_385
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rdi, rax
	mov	rsp, rsp
	call	free
	mov	rbp, rbp
	movabs	rax, OFFSET FLAT:slotvec0
	mov	qword ptr [word ptr [slotvec]],  rax
.label_385:
	mov	dword ptr [dword ptr [nslots]],  1
	add	rsp, 0x10
	mov	rbp, rbp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x406e10

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
	.align	16
	#Procedure 0x406e60

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
	jge	.label_390
	call	abort
.label_390:
	mov	rbp, rbp
	mov	eax,  dword ptr [dword ptr [nslots]]
	cmp	eax, dword ptr [rbp - 4]
	jg	.label_393
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
	jge	.label_394
	call	xalloc_die
.label_394:
	test	byte ptr [rbp - 0x31], 1
	je	.label_395
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	ecx, eax
	mov	qword ptr [rbp - 0x60], rcx
	jmp	.label_391
.label_395:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 0x60], rax
.label_391:
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
	je	.label_389
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x30]
	mov	rcx,  qword ptr [word ptr [slotvec0]]
	mov	qword ptr [rax], rcx
	mov	rcx,  qword ptr [word ptr [label_384]]
	mov	rbp, rbp
	mov	qword ptr [rax + 8], rcx
.label_389:
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
.label_393:
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
	ja	.label_396
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
	je	.label_392
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	call	free
.label_392:
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
.label_396:
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
	.align	16
	#Procedure 0x407190

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
	.align	16
	#Procedure 0x4071d0
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
	.align	16
	#Procedure 0x407200
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
	.align	16
	#Procedure 0x407240

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
	.align	16
	#Procedure 0x4072a0

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
	jne	.label_397
	call	abort
.label_397:
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
	.align	16
	#Procedure 0x407340

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
	.align	16
	#Procedure 0x4073b0
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
	.align	16
	#Procedure 0x4073f0
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
	.align	16
	#Procedure 0x407430

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
	.align	16
	#Procedure 0x4074e0

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
	.align	16
	#Procedure 0x407520

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
	.align	16
	#Procedure 0x407550
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
	.align	16
	#Procedure 0x407590
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
	.align	16
	#Procedure 0x407680

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
	.align	16
	#Procedure 0x4076d0

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
	.align	16
	#Procedure 0x407770
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
	.align	16
	#Procedure 0x4077c0
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
	.align	16
	#Procedure 0x407820

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
	.align	16
	#Procedure 0x407860
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
	.align	16
	#Procedure 0x4078a0

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
	.align	16
	#Procedure 0x4078e0

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
	.align	16
	#Procedure 0x407920

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
	je	.label_401
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x20]
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rax
	jmp	.label_399
.label_401:
	call	locale_charset
	mov	rsp, rsp
	movabs	rsi, OFFSET FLAT:.str.13_0
	nop	
	mov	qword ptr [rbp - 0x28], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsp, rsp
	call	c_strcasecmp
	cmp	eax, 0
	jne	.label_400
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
	jmp	.label_399
.label_400:
	nop	
	movabs	rsi, OFFSET FLAT:.str.16_0
	mov	rdi, qword ptr [rbp - 0x28]
	lea	rdi, [rdi]
	call	c_strcasecmp
	cmp	eax, 0
	lea	rdi, [rdi]
	jne	.label_398
	nop	
	movabs	rax, OFFSET FLAT:.str.18_0
	movabs	rcx, OFFSET FLAT:.str.17_0
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	movsx	esi, byte ptr [rdx]
	cmp	esi, 0x60
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
	mov	rbp, rbp
	jmp	.label_399
.label_398:
	nop	
	movabs	rax, OFFSET FLAT:.str.12_0
	movabs	rcx, OFFSET FLAT:.str.10_0
	lea	rsi, [rsi]
	cmp	dword ptr [rbp - 0x14], 9
	lea	rdi, [rdi]
	cmove	rax, rcx
	mov	qword ptr [rbp - 8], rax
.label_399:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x30
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a60
	.globl get_stat_atime_ns
	.type get_stat_atime_ns, @function
get_stat_atime_ns:

	mov	rsp, rsp
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	nop	
	mov	rax, qword ptr [rdi + 0x50]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407a80
	.globl get_stat_ctime_ns
	.type get_stat_ctime_ns, @function
get_stat_ctime_ns:

	lea	rsi, [rsi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x70]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407aa0
	.globl get_stat_mtime_ns
	.type get_stat_mtime_ns, @function
get_stat_mtime_ns:

	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 8]
	mov	rsp, rsp
	mov	rax, qword ptr [rdi + 0x60]
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ac0
	.globl get_stat_birthtime_ns
	.type get_stat_birthtime_ns, @function
get_stat_birthtime_ns:

	push	rbp
	lea	rsi, [rsi]
	mov	rbp, rsp
	xor	eax, eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rdi
	mov	rbp, rbp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407ae0

	.globl get_stat_atime
	.type get_stat_atime, @function
get_stat_atime:
	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x48]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	rdx, qword ptr [rbp - 8]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b10
	.globl get_stat_ctime
	.type get_stat_ctime, @function
get_stat_ctime:

	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	movups	xmm0, xmmword ptr [rdi + 0x68]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b40

	.globl get_stat_mtime
	.type get_stat_mtime, @function
get_stat_mtime:
	push	rbp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rdi + 0x58]
	mov	rbp, rbp
	movaps	xmmword ptr [rbp - 0x10], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407b70
	.globl get_stat_birthtime
	.type get_stat_birthtime, @function
get_stat_birthtime:

	lea	rdi, [rdi]
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	nop	
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x28], -1
	mov	qword ptr [rbp - 0x20], -1
	movups	xmm0, xmmword ptr [rbp - 0x28]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	nop	
	mov	rax, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 8]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bb0
	.globl stat_time_normalize
	.type stat_time_normalize, @function
stat_time_normalize:

	mov	rbp, rbp
	push	rbp
	mov	rsp, rsp
	mov	rbp, rsp
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], edi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x407bd0

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
	#Procedure 0x407c00

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
	jne	.label_402
	jmp	.label_423
.label_423:
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
	je	.label_426
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x39], cl
.label_426:
	mov	al, byte ptr [rbp - 0x39]
	test	al, 1
	jne	.label_423
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	je	.label_408
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_447
	jmp	.label_449
.label_449:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_449
	jmp	.label_447
.label_447:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_458
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_427
.label_458:
	jmp	.label_406
.label_406:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3a], al
	je	.label_469
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3a], cl
.label_469:
	mov	al, byte ptr [rbp - 0x3a]
	test	al, 1
	jne	.label_475
	jmp	.label_404
.label_475:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_406
.label_404:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_417
	jmp	.label_424
.label_424:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_424
	jmp	.label_417
.label_417:
	xor	eax, eax
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_408:
	jmp	.label_444
.label_444:
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
	je	.label_414
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3b], cl
.label_414:
	mov	al, byte ptr [rbp - 0x3b]
	test	al, 1
	jne	.label_444
	jmp	.label_432
.label_432:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x3c], cl
	jne	.label_463
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x3c], cl
.label_463:
	mov	al, byte ptr [rbp - 0x3c]
	test	al, 1
	jne	.label_472
	jmp	.label_471
.label_472:
	jmp	.label_403
.label_403:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_403
	jmp	.label_416
.label_416:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_416
	jmp	.label_432
.label_471:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_434
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_438
.label_434:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_440
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_440
.label_438:
	mov	rdi, qword ptr [rbp - 0x18]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_440:
	movzx	eax, byte ptr [rbp - 0x22]
	movzx	ecx, byte ptr [rbp - 0x21]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_454:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_459
	jmp	.label_465
.label_465:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_465
	jmp	.label_464
.label_464:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_454
.label_459:
	mov	qword ptr [rbp - 0x38], 0
.label_433:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_407
	jmp	.label_468
.label_468:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_468
	jmp	.label_462
.label_462:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_433
.label_407:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_431
	mov	eax, 0xffffffff
	mov	ecx, 1
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_431:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_448
	mov	dword ptr [rbp - 4], 0
	jmp	.label_427
.label_448:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_402:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x2d
	jne	.label_446
	jmp	.label_455
.label_455:
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
	je	.label_460
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3d], cl
.label_460:
	mov	al, byte ptr [rbp - 0x3d]
	test	al, 1
	jne	.label_455
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_422
	jmp	.label_405
.label_405:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, 0x30
	je	.label_405
	jmp	.label_422
.label_422:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_425
	mov	dword ptr [rbp - 4], 1
	jmp	.label_427
.label_425:
	jmp	.label_435
.label_435:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3e], al
	je	.label_436
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3e], cl
.label_436:
	mov	al, byte ptr [rbp - 0x3e]
	test	al, 1
	jne	.label_442
	jmp	.label_445
.label_442:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_435
.label_445:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_452
	jmp	.label_453
.label_453:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, 0x30
	je	.label_453
	jmp	.label_452
.label_452:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	and	cl, 1
	movzx	eax, cl
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_446:
	jmp	.label_419
.label_419:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x21]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x3f], al
	je	.label_474
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x3f], cl
.label_474:
	mov	al, byte ptr [rbp - 0x3f]
	test	al, 1
	jne	.label_410
	jmp	.label_415
.label_410:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	jmp	.label_419
.label_415:
	jmp	.label_428
.label_428:
	mov	al, 1
	movzx	ecx, byte ptr [rbp - 0x22]
	cmp	ecx, 0x30
	mov	byte ptr [rbp - 0x40], al
	je	.label_429
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	sete	cl
	mov	byte ptr [rbp - 0x40], cl
.label_429:
	mov	al, byte ptr [rbp - 0x40]
	test	al, 1
	jne	.label_439
	jmp	.label_441
.label_439:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	jmp	.label_428
.label_441:
	jmp	.label_411
.label_411:
	xor	eax, eax
	mov	cl, al
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	edx, byte ptr [rbp - 0x22]
	cmp	eax, edx
	mov	byte ptr [rbp - 0x41], cl
	jne	.label_450
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	setbe	cl
	mov	byte ptr [rbp - 0x41], cl
.label_450:
	mov	al, byte ptr [rbp - 0x41]
	test	al, 1
	jne	.label_443
	jmp	.label_456
.label_443:
	jmp	.label_467
.label_467:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_467
	jmp	.label_473
.label_473:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_473
	jmp	.label_411
.label_456:
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_413
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_420
.label_413:
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x1c]
	jne	.label_430
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	jbe	.label_430
.label_420:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	eax, dword ptr [rbp - 0x1c]
	mov	cl, al
	movsx	edx, cl
	call	fraccompare
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_430:
	movzx	eax, byte ptr [rbp - 0x21]
	movzx	ecx, byte ptr [rbp - 0x22]
	sub	eax, ecx
	mov	dword ptr [rbp - 0x28], eax
	mov	qword ptr [rbp - 0x30], 0
.label_461:
	movzx	eax, byte ptr [rbp - 0x21]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_457
	jmp	.label_418
.label_418:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x21], dl
	movzx	eax, byte ptr [rbp - 0x21]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_418
	jmp	.label_451
.label_451:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	jmp	.label_461
.label_457:
	mov	qword ptr [rbp - 0x38], 0
.label_412:
	movzx	eax, byte ptr [rbp - 0x22]
	sub	eax, 0x30
	cmp	eax, 9
	ja	.label_470
	jmp	.label_466
.label_466:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	mov	dl, byte ptr [rax + 1]
	mov	byte ptr [rbp - 0x22], dl
	movzx	eax, byte ptr [rbp - 0x22]
	cmp	eax, dword ptr [rbp - 0x20]
	je	.label_466
	jmp	.label_409
.label_409:
	mov	rax, qword ptr [rbp - 0x38]
	add	rax, 1
	mov	qword ptr [rbp - 0x38], rax
	jmp	.label_412
.label_470:
	mov	rax, qword ptr [rbp - 0x30]
	cmp	rax, qword ptr [rbp - 0x38]
	je	.label_421
	mov	eax, 1
	mov	ecx, 0xffffffff
	mov	rdx, qword ptr [rbp - 0x30]
	cmp	rdx, qword ptr [rbp - 0x38]
	cmovb	eax, ecx
	mov	dword ptr [rbp - 4], eax
	jmp	.label_427
.label_421:
	cmp	qword ptr [rbp - 0x30], 0
	jne	.label_437
	mov	dword ptr [rbp - 4], 0
	jmp	.label_427
.label_437:
	mov	eax, dword ptr [rbp - 0x28]
	mov	dword ptr [rbp - 4], eax
.label_427:
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x50
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408390

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
	jne	.label_481
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	movsx	edx, byte ptr [rbp - 0x19]
	cmp	ecx, edx
	jne	.label_481
	jmp	.label_478
.label_478:
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
	jne	.label_480
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	jbe	.label_491
	mov	dword ptr [rbp - 4], 0
	jmp	.label_477
.label_491:
	jmp	.label_478
.label_480:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_485
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_485
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	mov	rax, qword ptr [rbp - 0x18]
	movsx	edx, byte ptr [rax]
	sub	ecx, edx
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_477
.label_485:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_483
	jmp	.label_488
.label_483:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	ja	.label_490
	jmp	.label_484
.label_490:
	mov	dword ptr [rbp - 4], 0
	jmp	.label_477
.label_481:
	mov	rax, qword ptr [rbp - 0x10]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x10], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_482
	jmp	.label_488
.label_488:
	jmp	.label_492
.label_492:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_476
	mov	rax, qword ptr [rbp - 0x10]
	add	rax, 1
	mov	qword ptr [rbp - 0x10], rax
	jmp	.label_492
.label_476:
	mov	rax, qword ptr [rbp - 0x10]
	movsx	ecx, byte ptr [rax]
	sub	ecx, 0x30
	cmp	ecx, 9
	setbe	dl
	and	dl, 1
	movzx	ecx, dl
	mov	dword ptr [rbp - 4], ecx
	jmp	.label_477
.label_482:
	mov	rax, qword ptr [rbp - 0x18]
	mov	rcx, rax
	add	rcx, 1
	mov	qword ptr [rbp - 0x18], rcx
	movsx	edx, byte ptr [rax]
	movsx	esi, byte ptr [rbp - 0x19]
	cmp	edx, esi
	jne	.label_493
	jmp	.label_484
.label_484:
	jmp	.label_479
.label_479:
	mov	rax, qword ptr [rbp - 0x18]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x30
	jne	.label_486
	mov	rax, qword ptr [rbp - 0x18]
	add	rax, 1
	mov	qword ptr [rbp - 0x18], rax
	jmp	.label_479
.label_486:
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
	jmp	.label_477
.label_493:
	jmp	.label_487
.label_487:
	jmp	.label_489
.label_489:
	mov	dword ptr [rbp - 4], 0
.label_477:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408590
	.globl make_timespec
	.type make_timespec, @function
make_timespec:

	push	rbp
	mov	rbp, rsp
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rdi
	mov	qword ptr [rbp - 0x20], rsi
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	mov	qword ptr [rbp - 0x30], rsi
	mov	rsi, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x28], rsi
	movups	xmm0, xmmword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	movaps	xmmword ptr [rbp - 0x10], xmm0
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 8]
	lea	rdi, [rdi]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4085e0

	.globl timespec_cmp
	.type timespec_cmp, @function
timespec_cmp:
	lea	rdi, [rdi]
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x18], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x28], rdx
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rcx
	mov	rcx, qword ptr [rbp - 0x18]
	cmp	rcx, qword ptr [rbp - 0x28]
	jge	.label_494
	nop	
	mov	dword ptr [rbp - 4], 0xffffffff
	mov	rsp, rsp
	jmp	.label_496
.label_494:
	nop	
	mov	rax, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x28]
	jle	.label_498
	nop	
	mov	dword ptr [rbp - 4], 1
	jmp	.label_496
.label_498:
	mov	rax, -1
	mov	rbp, rbp
	cmp	rax, qword ptr [rbp - 0x10]
	jg	.label_497
	cmp	qword ptr [rbp - 0x10], 0x77359400
	jg	.label_497
	mov	rbp, rbp
	jmp	.label_497
.label_497:
	mov	rax, -1
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	jg	.label_495
	cmp	qword ptr [rbp - 0x20], 0x77359400
	lea	rsi, [rsi]
	jg	.label_495
	lea	rdi, [rdi]
	jmp	.label_495
.label_495:
	mov	rax, qword ptr [rbp - 0x10]
	sub	rax, qword ptr [rbp - 0x20]
	nop	
	mov	ecx, eax
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], ecx
.label_496:
	mov	eax, dword ptr [rbp - 4]
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4086b0
	.globl timespec_sign
	.type timespec_sign, @function
timespec_sign:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	mov	qword ptr [rbp - 0x10], rdi
	mov	qword ptr [rbp - 8], rsi
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	jge	.label_499
	mov	eax, 0xffffffff
	mov	dword ptr [rbp - 0x14], eax
	jmp	.label_501
.label_499:
	lea	rdi, [rdi]
	mov	al, 1
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x10], 0
	mov	byte ptr [rbp - 0x15], al
	mov	rsp, rsp
	jne	.label_500
	cmp	qword ptr [rbp - 8], 0
	nop	
	setne	al
	mov	byte ptr [rbp - 0x15], al
.label_500:
	mov	rbp, rbp
	mov	al, byte ptr [rbp - 0x15]
	and	al, 1
	movzx	ecx, al
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_501:
	mov	eax, dword ptr [rbp - 0x14]
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408720
	.globl timespectod
	.type timespectod, @function
timespectod:

	push	rbp
	mov	rbp, rsp
	movsd	xmm0,  qword ptr [word ptr [label_502]]
	nop	
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 8], rsi
	cvtsi2sd	xmm1, qword ptr [rbp - 0x10]
	cvtsi2sd	xmm2, qword ptr [rbp - 8]
	divsd	xmm2, xmm0
	addsd	xmm1, xmm2
	mov	rsp, rsp
	movaps	xmm0, xmm1
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408760

	.globl verror
	.type verror, @function
verror:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x20
	mov	rsp, rsp
	xor	eax, eax
	mov	rbp, rbp
	mov	r8d, eax
	xor	eax, eax
	mov	dword ptr [rbp - 4], edi
	mov	rbp, rbp
	mov	dword ptr [rbp - 8], esi
	mov	qword ptr [rbp - 0x10], rdx
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rcx
	mov	edi, dword ptr [rbp - 4]
	mov	rsp, rsp
	mov	esi, dword ptr [rbp - 8]
	mov	rcx, qword ptr [rbp - 0x10]
	nop	
	mov	r9, qword ptr [rbp - 0x18]
	mov	rdx, r8
	mov	qword ptr [rbp - 0x20], rcx
	mov	ecx, eax
	mov	r8, qword ptr [rbp - 0x20]
	nop	
	call	verror_at_line
	add	rsp, 0x20
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4087c0

	.globl verror_at_line
	.type verror_at_line, @function
verror_at_line:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 0x40
	mov	dword ptr [rbp - 4], edi
	mov	dword ptr [rbp - 8], esi
	nop	
	mov	qword ptr [rbp - 0x10], rdx
	mov	rsp, rsp
	mov	dword ptr [rbp - 0x14], ecx
	mov	qword ptr [rbp - 0x20], r8
	mov	qword ptr [rbp - 0x28], r9
	mov	rdi, qword ptr [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x28]
	call	xvasprintf
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x30], 0
	je	.label_505
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	je	.label_503
	lea	rsi, [rsi]
	movabs	r8, OFFSET FLAT:.str_2
	mov	edi, dword ptr [rbp - 4]
	mov	esi, dword ptr [rbp - 8]
	lea	rsi, [rsi]
	mov	rdx, qword ptr [rbp - 0x10]
	mov	ecx, dword ptr [rbp - 0x14]
	mov	rsp, rsp
	mov	r9, qword ptr [rbp - 0x30]
	mov	al, 0
	call	error_at_line
	jmp	.label_506
.label_503:
	mov	rsp, rsp
	movabs	rdx, OFFSET FLAT:.str_2
	nop	
	mov	edi, dword ptr [rbp - 4]
	lea	rsi, [rsi]
	mov	esi, dword ptr [rbp - 8]
	nop	
	mov	rcx, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	mov	al, 0
	lea	rdi, [rdi]
	call	error
.label_506:
	jmp	.label_504
.label_505:
	nop	
	call	__errno_location
	movabs	rdi, OFFSET FLAT:.str.1_2
	mov	esi, dword ptr [rax]
	mov	dword ptr [rbp - 0x34], esi
	lea	rsi, [rsi]
	call	gettext
	xor	edi, edi
	nop	
	mov	esi, dword ptr [rbp - 0x34]
	mov	rdx, rax
	mov	rsp, rsp
	mov	al, 0
	nop	
	call	error
	lea	rsi, [rsi]
	call	abort
.label_504:
	mov	rdi, qword ptr [rbp - 0x30]
	lea	rdi, [rdi]
	call	free
	add	rsp, 0x40
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4088c0
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
	jae	.label_507
	mov	rbp, rbp
	call	xalloc_die
.label_507:
	mov	rax, qword ptr [rbp - 8]
	imul	rax, qword ptr [rbp - 0x10]
	nop	
	mov	rdi, rax
	call	xmalloc
	add	rsp, 0x10
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408920

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
	jne	.label_508
	cmp	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	je	.label_508
	lea	rdi, [rdi]
	call	xalloc_die
.label_508:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	add	rsp, 0x10
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408980
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
	jae	.label_509
	mov	rsp, rsp
	call	xalloc_die
.label_509:
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
	.align	16
	#Procedure 0x408a00

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
	jne	.label_510
	lea	rsi, [rsi]
	cmp	qword ptr [rbp - 0x10], 0
	lea	rsi, [rsi]
	je	.label_510
	mov	rdi, qword ptr [rbp - 0x10]
	call	free
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], 0
	jmp	.label_512
.label_510:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	nop	
	call	realloc
	mov	qword ptr [rbp - 0x10], rax
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x10], 0
	mov	rsp, rsp
	jne	.label_511
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x18], 0
	lea	rdi, [rdi]
	je	.label_511
	lea	rsi, [rsi]
	call	xalloc_die
.label_511:
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 8], rax
.label_512:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x408ab0

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
	jne	.label_513
	cmp	qword ptr [rbp - 0x20], 0
	jne	.label_515
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
.label_515:
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
	jae	.label_517
	call	xalloc_die
.label_517:
	lea	rsi, [rsi]
	jmp	.label_516
.label_513:
	nop	
	movabs	rax, 0x5555555555555554
	lea	rsi, [rsi]
	xor	ecx, ecx
	lea	rsi, [rsi]
	mov	edx, ecx
	div	qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rbp - 0x20]
	ja	.label_514
	call	xalloc_die
.label_514:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	shr	rax, 1
	mov	rbp, rbp
	add	rax, 1
	mov	rbp, rbp
	add	rax, qword ptr [rbp - 0x20]
	mov	qword ptr [rbp - 0x20], rax
.label_516:
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
	.align	16
	#Procedure 0x408be0

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
	.align	16
	#Procedure 0x408c10
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
	.align	16
	#Procedure 0x408c50
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
	.align	16
	#Procedure 0x408ca0
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
	jb	.label_518
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	calloc
	mov	qword ptr [rbp - 0x18], rax
	cmp	rax, 0
	jne	.label_519
.label_518:
	lea	rsi, [rsi]
	call	xalloc_die
.label_519:
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	nop	
	add	rsp, 0x20
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408d10

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
	.align	16
	#Procedure 0x408d60
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
	.align	16
	#Procedure 0x408dc0

	.globl xalloc_die
	.type xalloc_die, @function
xalloc_die:
	mov	rbp, rbp
	push	rbp
	mov	rbp, rsp
	nop	
	sub	rsp, 0x10
	mov	rbp, rbp
	movabs	rdi, OFFSET FLAT:.str.1_3
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
	.align	16
	#Procedure 0x408e20

	.globl xvasprintf
	.type xvasprintf, @function
xvasprintf:
	nop	
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x30
	mov	qword ptr [rbp - 0x10], rdi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rsi
	mov	qword ptr [rbp - 0x28], 0
	mov	rsi, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x30], rsi
.label_527:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0
	lea	rdi, [rdi]
	jne	.label_521
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x28]
	mov	rsi, qword ptr [rbp - 0x18]
	call	xstrcat
	mov	qword ptr [rbp - 8], rax
	nop	
	jmp	.label_520
.label_521:
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	mov	rbp, rbp
	cmp	ecx, 0x25
	lea	rdi, [rdi]
	je	.label_525
	mov	rbp, rbp
	jmp	.label_523
.label_525:
	mov	rax, qword ptr [rbp - 0x30]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	movsx	ecx, byte ptr [rax]
	cmp	ecx, 0x73
	je	.label_524
	mov	rsp, rsp
	jmp	.label_523
.label_524:
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x30]
	lea	rsi, [rsi]
	add	rax, 1
	mov	qword ptr [rbp - 0x30], rax
	mov	rax, qword ptr [rbp - 0x28]
	add	rax, 1
	mov	qword ptr [rbp - 0x28], rax
	jmp	.label_527
.label_523:
	mov	rsp, rsp
	lea	rdi, [rbp - 0x20]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	mov	rdx, qword ptr [rbp - 0x18]
	call	vasprintf
	cmp	eax, 0
	jge	.label_522
	lea	rdi, [rdi]
	call	__errno_location
	cmp	dword ptr [rax], 0xc
	jne	.label_526
	lea	rdi, [rdi]
	call	xalloc_die
.label_526:
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_520
.label_522:
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rax
.label_520:
	nop	
	mov	rax, qword ptr [rbp - 8]
	mov	rsp, rsp
	add	rsp, 0x30
	lea	rdi, [rdi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x408f50

	.globl xstrcat
	.type xstrcat, @function
xstrcat:
	push	rbp
	mov	rbp, rbp
	mov	rbp, rsp
	sub	rsp, 0xb0
	lea	rdi, [rdi]
	lea	rax, [rbp - 0x40]
	mov	qword ptr [rbp - 0x10], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x48], 0
	lea	rdi, [rdi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, qword ptr [rsi + 0x10]
	mov	qword ptr [rax + 0x10], rdi
	lea	rdi, [rdi]
	movups	xmm0, xmmword ptr [rsi]
	nop	
	movups	xmmword ptr [rax], xmm0
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_532:
	mov	rbp, rbp
	cmp	qword ptr [rbp - 0x50], 0
	jbe	.label_531
	lea	rax, [rbp - 0x40]
	mov	rbp, rbp
	mov	ecx, dword ptr [rbp - 0x40]
	mov	rsp, rsp
	cmp	ecx, 0x28
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x78], rax
	mov	rbp, rbp
	mov	dword ptr [rbp - 0x7c], ecx
	ja	.label_534
	lea	rsi, [rsi]
	mov	eax, dword ptr [rbp - 0x7c]
	lea	rdi, [rdi]
	movsxd	rcx, eax
	mov	rsp, rsp
	mov	rdx, qword ptr [rbp - 0x78]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rdi, [rdi]
	add	eax, 8
	mov	rsp, rsp
	mov	dword ptr [rdx], eax
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x88], rcx
	lea	rsi, [rsi]
	jmp	.label_529
.label_534:
	mov	rax, qword ptr [rbp - 0x78]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	add	rcx, 8
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0x88], rdx
.label_529:
	nop	
	mov	rax, qword ptr [rbp - 0x88]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax]
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x60], rax
	mov	rdi, qword ptr [rbp - 0x48]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x60]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x90], rdi
	lea	rsi, [rsi]
	mov	rdi, rax
	call	strlen
	mov	rdi, qword ptr [rbp - 0x90]
	mov	rsi, rax
	call	xsum
	nop	
	mov	qword ptr [rbp - 0x48], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x50]
	lea	rdi, [rdi]
	add	rax, -1
	mov	qword ptr [rbp - 0x50], rax
	nop	
	jmp	.label_532
.label_531:
	lea	rax, [rbp - 0x40]
	cmp	qword ptr [rbp - 0x48], -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x98], rax
	lea	rsi, [rsi]
	je	.label_538
	nop	
	cmp	qword ptr [rbp - 0x48], 0x7fffffff
	jbe	.label_530
.label_538:
	call	__errno_location
	mov	dword ptr [rax], 0x4b
	mov	qword ptr [rbp - 8], 0
	lea	rdi, [rdi]
	jmp	.label_535
.label_530:
	mov	rax, qword ptr [rbp - 0x48]
	add	rax, 1
	mov	rdi, rax
	call	xmalloc
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x58], rax
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 0x10]
	mov	qword ptr [rbp - 0x50], rax
.label_536:
	mov	rsp, rsp
	cmp	qword ptr [rbp - 0x50], 0
	lea	rdi, [rdi]
	jbe	.label_537
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x18]
	mov	ecx, dword ptr [rax]
	cmp	ecx, 0x28
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0xa0], rax
	mov	rsp, rsp
	mov	dword ptr [rbp - 0xa4], ecx
	ja	.label_528
	mov	eax, dword ptr [rbp - 0xa4]
	movsxd	rcx, eax
	mov	rdx, qword ptr [rbp - 0xa0]
	add	rcx, qword ptr [rdx + 0x10]
	lea	rsi, [rsi]
	add	eax, 8
	mov	dword ptr [rdx], eax
	mov	rbp, rbp
	mov	qword ptr [rbp - 0xb0], rcx
	nop	
	jmp	.label_533
.label_528:
	mov	rax, qword ptr [rbp - 0xa0]
	mov	rcx, qword ptr [rax + 8]
	mov	rdx, rcx
	mov	rsp, rsp
	add	rcx, 8
	lea	rsi, [rsi]
	mov	qword ptr [rax + 8], rcx
	mov	qword ptr [rbp - 0xb0], rdx
.label_533:
	nop	
	mov	rax, qword ptr [rbp - 0xb0]
	mov	rax, qword ptr [rax]
	mov	qword ptr [rbp - 0x68], rax
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 0x68]
	call	strlen
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x70], rax
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x58]
	mov	rsi, qword ptr [rbp - 0x68]
	nop	
	mov	rdx, qword ptr [rbp - 0x70]
	mov	rbp, rbp
	call	memcpy
	lea	rdi, [rdi]
	mov	rax, qword ptr [rbp - 0x70]
	mov	rsp, rsp
	add	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x58], rax
	mov	rax, qword ptr [rbp - 0x50]
	add	rax, -1
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x50], rax
	jmp	.label_536
.label_537:
	mov	rax, qword ptr [rbp - 0x58]
	lea	rdi, [rdi]
	mov	byte ptr [rax], 0
	mov	rax, qword ptr [rbp - 0x20]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rax
.label_535:
	mov	rax, qword ptr [rbp - 8]
	add	rsp, 0xb0
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409200

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
	jne	.label_539
	lea	rax, [rbp - 0x34]
	mov	qword ptr [rbp - 0x10], rax
.label_539:
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
	ja	.label_540
	nop	
	cmp	qword ptr [rbp - 0x20], 0
	lea	rdi, [rdi]
	je	.label_540
	xor	edi, edi
	lea	rdi, [rdi]
	call	hard_locale
	mov	rbp, rbp
	test	al, 1
	lea	rsi, [rsi]
	jne	.label_540
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
	jmp	.label_541
.label_540:
	mov	rax, qword ptr [rbp - 0x30]
	mov	qword ptr [rbp - 8], rax
.label_541:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsp, 0x40
	lea	rsi, [rsi]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4092f0

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
	jne	.label_542
	mov	dword ptr [rbp - 4], 0
	lea	rsi, [rsi]
	jmp	.label_544
.label_542:
	mov	rbp, rbp
	jmp	.label_543
.label_543:
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
	jne	.label_546
	jmp	.label_545
.label_546:
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
	je	.label_543
.label_545:
	movzx	eax, byte ptr [rbp - 0x29]
	mov	rsp, rsp
	movzx	ecx, byte ptr [rbp - 0x2a]
	mov	rsp, rsp
	sub	eax, ecx
	mov	dword ptr [rbp - 4], eax
.label_544:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4093e0

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
	jne	.label_549
	test	byte ptr [rbp - 0x13], 1
	je	.label_548
	test	byte ptr [rbp - 0x11], 1
	lea	rsi, [rsi]
	jne	.label_549
	mov	rbp, rbp
	call	__errno_location
	lea	rdi, [rdi]
	cmp	dword ptr [rax], 9
	je	.label_548
.label_549:
	nop	
	test	byte ptr [rbp - 0x13], 1
	mov	rsp, rsp
	jne	.label_547
	call	__errno_location
	mov	dword ptr [rax], 0
.label_547:
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_550
.label_548:
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], 0
.label_550:
	nop	
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x20
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4094c0

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
	je	.label_552
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	eax, OFFSET FLAT:.str_4
	mov	rsp, rsp
	mov	esi, eax
	call	strcmp
	lea	rdi, [rdi]
	cmp	eax, 0
	je	.label_553
	lea	rdi, [rdi]
	mov	rdi, qword ptr [rbp - 0x10]
	mov	eax, OFFSET FLAT:.str.1_4
	lea	rsi, [rsi]
	mov	esi, eax
	call	strcmp
	cmp	eax, 0
	jne	.label_551
.label_553:
	mov	byte ptr [rbp - 5], 0
.label_551:
	jmp	.label_552
.label_552:
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
	.align	16
	#Procedure 0x409560

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
	jne	.label_555
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str_0
	nop	
	mov	qword ptr [rbp - 8], rax
.label_555:
	mov	rax, qword ptr [rbp - 8]
	lea	rsi, [rsi]
	movsx	ecx, byte ptr [rax]
	nop	
	cmp	ecx, 0
	mov	rsp, rsp
	jne	.label_554
	lea	rsi, [rsi]
	movabs	rax, OFFSET FLAT:.str.1_5
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 8], rax
.label_554:
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 8]
	nop	
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x4095e0

	.globl xsum
	.type xsum, @function
xsum:
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	mov	rbp, rbp
	add	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x18], rsi
	mov	rsp, rsp
	mov	rsi, qword ptr [rbp - 0x18]
	cmp	rsi, qword ptr [rbp - 8]
	mov	rsp, rsp
	jb	.label_556
	mov	rbp, rbp
	mov	rax, qword ptr [rbp - 0x18]
	lea	rsi, [rsi]
	mov	qword ptr [rbp - 0x20], rax
	lea	rdi, [rdi]
	jmp	.label_557
.label_556:
	mov	rax, -1
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x20], rax
	jmp	.label_557
.label_557:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x20]
	pop	rbp
	mov	rbp, rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409650
	.globl xsum3
	.type xsum3, @function
xsum3:

	nop
	push	rbp
	nop	
	mov	rbp, rsp
	mov	rbp, rbp
	sub	rsp, 0x20
	nop	
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rbp, rbp
	mov	qword ptr [rbp - 0x18], rdx
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	xsum
	lea	rsi, [rsi]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rdi, rax
	mov	rbp, rbp
	call	xsum
	add	rsp, 0x20
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x4096a0
	.globl xsum4
	.type xsum4, @function
xsum4:

	mov	rsp, rsp
	push	rbp
	mov	rbp, rsp
	lea	rsi, [rsi]
	sub	rsp, 0x20
	mov	rbp, rbp
	mov	qword ptr [rbp - 8], rdi
	mov	rsp, rsp
	mov	qword ptr [rbp - 0x10], rsi
	mov	qword ptr [rbp - 0x18], rdx
	nop	
	mov	qword ptr [rbp - 0x20], rcx
	mov	rbp, rbp
	mov	rdi, qword ptr [rbp - 8]
	mov	rsi, qword ptr [rbp - 0x10]
	call	xsum
	mov	rbp, rbp
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rbp, rbp
	mov	rdi, rax
	call	xsum
	mov	rsi, qword ptr [rbp - 0x20]
	mov	rdi, rax
	call	xsum
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409700
	.globl xmax
	.type xmax, @function
xmax:

	lea	rsi, [rsi]
	push	rbp
	lea	rdi, [rdi]
	mov	rbp, rsp
	mov	qword ptr [rbp - 8], rdi
	mov	qword ptr [rbp - 0x10], rsi
	mov	rsi, qword ptr [rbp - 8]
	cmp	rsi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	jb	.label_559
	mov	rsp, rsp
	mov	rax, qword ptr [rbp - 8]
	mov	qword ptr [rbp - 0x18], rax
	lea	rsi, [rsi]
	jmp	.label_558
.label_559:
	mov	rax, qword ptr [rbp - 0x10]
	lea	rdi, [rdi]
	mov	qword ptr [rbp - 0x18], rax
.label_558:
	lea	rsi, [rsi]
	mov	rax, qword ptr [rbp - 0x18]
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409750

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
	jge	.label_564
	mov	rdi, qword ptr [rbp - 0x10]
	call	fclose
	mov	dword ptr [rbp - 4], eax
	lea	rsi, [rsi]
	jmp	.label_562
.label_564:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsp, rsp
	call	__freading
	lea	rsi, [rsi]
	cmp	eax, 0
	je	.label_561
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
	je	.label_560
.label_561:
	mov	rdi, qword ptr [rbp - 0x10]
	call	rpl_fflush
	cmp	eax, 0
	lea	rsi, [rsi]
	je	.label_560
	call	__errno_location
	nop	
	mov	ecx, dword ptr [rax]
	lea	rsi, [rsi]
	mov	dword ptr [rbp - 0x14], ecx
.label_560:
	mov	rdi, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	call	fclose
	mov	dword ptr [rbp - 0x1c], eax
	lea	rdi, [rdi]
	cmp	dword ptr [rbp - 0x14], 0
	je	.label_563
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
.label_563:
	mov	eax, dword ptr [rbp - 0x1c]
	mov	dword ptr [rbp - 4], eax
.label_562:
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x20
	mov	rsp, rsp
	pop	rbp
	mov	rsp, rsp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409870

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
	je	.label_565
	mov	rdi, qword ptr [rbp - 0x10]
	call	__freading
	cmp	eax, 0
	jne	.label_566
.label_565:
	mov	rsp, rsp
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
	nop	
	jmp	.label_567
.label_566:
	mov	rdi, qword ptr [rbp - 0x10]
	call	clear_ungetc_buffer_preserving_position
	mov	rdi, qword ptr [rbp - 0x10]
	call	fflush
	mov	dword ptr [rbp - 4], eax
.label_567:
	mov	rsp, rsp
	mov	eax, dword ptr [rbp - 4]
	add	rsp, 0x10
	pop	rbp
	nop	
	ret	
	.section	.text
	.align	16
	#Procedure 0x4098e0

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
	je	.label_568
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
.label_568:
	mov	rsp, rsp
	add	rsp, 0x10
	mov	rsp, rsp
	pop	rbp
	lea	rsi, [rsi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409940

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
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	mov	rax, qword ptr [rax + 0x28]
	mov	rcx, qword ptr [rbp - 0x10]
	lea	rsi, [rsi]
	cmp	rax, qword ptr [rcx + 0x20]
	mov	rbp, rbp
	jne	.label_569
	mov	rax, qword ptr [rbp - 0x10]
	mov	rbp, rbp
	cmp	qword ptr [rax + 0x48], 0
	jne	.label_569
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
	jne	.label_570
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], 0xffffffff
	jmp	.label_571
.label_570:
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
	jmp	.label_571
.label_569:
	mov	rdi, qword ptr [rbp - 0x10]
	mov	rsi, qword ptr [rbp - 0x18]
	mov	rsp, rsp
	mov	edx, dword ptr [rbp - 0x1c]
	lea	rdi, [rdi]
	call	fseeko
	lea	rdi, [rdi]
	mov	dword ptr [rbp - 4], eax
.label_571:
	mov	rbp, rbp
	mov	eax, dword ptr [rbp - 4]
	nop	
	add	rsp, 0x30
	pop	rbp
	lea	rdi, [rdi]
	ret	
	.section	.text
	.align	16
	#Procedure 0x409a50

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
	ja	.label_572
	jmp	.label_574
.label_574:
	mov	eax, dword ptr [rbp - 4]
	sub	eax, 0x27d8
	mov	rbp, rbp
	add	eax, 0x2001a
	mov	rsp, rsp
	mov	dword ptr [rbp - 4], eax
	jmp	.label_573
.label_572:
	lea	rsi, [rsi]
	jmp	.label_573
.label_573:
	mov	edi, dword ptr [rbp - 4]
	call	nl_langinfo
	add	rsp, 0x10
	nop	
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ab0
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
	#Procedure 0x409b20
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
	#Procedure 0x409b70
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	push	rbp
	mov	rbp, rsp
	mov	dword ptr [rbp - 8], edi
	sub	edi, 0x7f
	mov	dword ptr [rbp - 0xc], edi
	ja	.label_584
	jmp	.label_586
.label_586:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_585
.label_584:
	mov	byte ptr [rbp - 1], 0
.label_585:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ba0
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
	#Procedure 0x409bd0
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
	#Procedure 0x409c20
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
	#Procedure 0x409c60
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
	#Procedure 0x409ca0
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
	#Procedure 0x409ce0
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
	#Procedure 0x409d20
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
	#Procedure 0x409da0
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
	jmp	.label_612
.label_612:
	mov	eax, dword ptr [rbp - 0xc]
	sub	eax, 0x20
	mov	dword ptr [rbp - 0x14], eax
	jne	.label_613
	jmp	.label_610
.label_610:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_611
.label_613:
	mov	byte ptr [rbp - 1], 0
.label_611:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409df0
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
	#Procedure 0x409e30
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
	jmp	.label_620
.label_620:
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
	ja	.label_619
	jmp	.label_617
.label_617:
	mov	byte ptr [rbp - 1], 1
	jmp	.label_621
.label_619:
	mov	byte ptr [rbp - 1], 0
.label_621:
	mov	al, byte ptr [rbp - 1]
	and	al, 1
	movzx	eax, al
	pop	rbp
	ret	
	.section	.text
	.align	16
	#Procedure 0x409ea0

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
	#Procedure 0x409ee0
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
	#Procedure 0x409fd0

	.globl stat
	.type stat, @function
stat:
	mov	rdx, rsi
	mov	rsi, rdi
	mov	edi, 1
	jmp	__xstat
