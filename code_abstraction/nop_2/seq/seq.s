	.section	.text
	hlt	
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	nop	word ptr [rax + rax]
	nop	dword ptr [rax]
	nop	dword ptr [rax]
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x401780

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
	mov	r8, rdx
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.2
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
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
	.align	32
	#Procedure 0x4018d0

	.globl emit_mandatory_arg_note
	.type emit_mandatory_arg_note, @function
emit_mandatory_arg_note:
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
	#Procedure 0x401900

	.globl emit_ancillary_info
	.type emit_ancillary_info, @function
emit_ancillary_info:
	push	r14
	push	rbx
	push	rax
	mov	ebx, OFFSET FLAT:emit_ancillary_info.infomap
	mov	esi, OFFSET FLAT:.str.24
	nop	
.label_10:
	mov	edi, OFFSET FLAT:.str.8
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
	mov	ebx, OFFSET FLAT:.str.8
	cmovne	rbx, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.32
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
	mov	esi, OFFSET FLAT:.str.34
	mov	edx, 3
	mov	rdi, rax
	call	strncmp
	test	eax, eax
	je	.label_8
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.35
	mov	edx, 5
	call	dcgettext
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	rdi, rax
	call	fputs_unlocked
.label_8:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.36
	mov	edx, 5
	call	dcgettext
	mov	rsi, rax
	mov	r14d, OFFSET FLAT:.str.8
	mov	edi, 1
	mov	edx, OFFSET FLAT:.str.18
	mov	ecx, OFFSET FLAT:.str.8
	xor	eax, eax
	call	__printf_chk
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.37
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	cmp	rbx, r14
	mov	eax, OFFSET FLAT:.str.38
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
	#Procedure 0x401a20

	.globl main
	.type main, @function
main:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0xe8
	mov	r15, rsi
	mov	r13d, edi
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_37]]
	movaps	xmmword ptr [rsp + 0xd0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_38]]
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_39]]
	movaps	xmmword ptr [rsp + 0xb0], xmm0
	movaps	xmm0,  xmmword ptr [word ptr [rip + label_40]]
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	xorps	xmm0, xmm0
	movaps	xmmword ptr [rsp + 0x70], xmm0
	mov	rdi, qword ptr [r15]
	call	set_program_name
	mov	edi, 6
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
	test	rax, rax
	setne	byte ptr [byte ptr [rip + locale_ok]]
	mov	edi, OFFSET FLAT:.str.10
	mov	esi, OFFSET FLAT:.str.11
	call	bindtextdomain
	mov	edi, OFFSET FLAT:.str.10
	call	textdomain
	mov	edi, OFFSET FLAT:close_stdout
	call	atexit
	mov	byte ptr [byte ptr [rip + equal_width]],  0
	mov	qword ptr [word ptr [rip + separator]], OFFSET FLAT:.str.12
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	xor	ebx, ebx
	jmp	.label_21
.label_19:
	mov	rax,  qword ptr [word ptr [rip + optarg]]
	mov	qword ptr [word ptr [rip + separator]],  rax
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	nop	
.label_21:
	cmp	eax, r13d
	jge	.label_11
	cdqe	
	mov	rax, qword ptr [r15 + rax*8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x2d
	jne	.label_44
	movsx	eax, byte ptr [rax + 1]
	cmp	eax, 0x2e
	je	.label_11
	add	eax, -0x30
	cmp	eax, 0xa
	jb	.label_11
.label_44:
	mov	edx, OFFSET FLAT:.str.13
	mov	ecx, OFFSET FLAT:long_options
	xor	r8d, r8d
	mov	edi, r13d
	mov	rsi, r15
	call	getopt_long
	cmp	eax, 0x65
	jle	.label_17
	cmp	eax, 0x77
	je	.label_18
	cmp	eax, 0x73
	je	.label_19
	cmp	eax, 0x66
	jne	.label_27
	mov	rbx,  qword ptr [word ptr [rip + optarg]]
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_21
.label_18:
	mov	byte ptr [byte ptr [rip + equal_width]],  1
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	jmp	.label_21
.label_17:
	cmp	eax, -1
	jne	.label_26
.label_11:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	cmp	eax, r13d
	je	.label_15
	mov	ebp, r13d
	sub	ebp, eax
	cmp	ebp, 4
	jae	.label_29
	xor	r12d, r12d
	test	rbx, rbx
	mov	r14d, 0
	je	.label_31
	lea	rsi, [rsp + 0x70]
	mov	rdi, rbx
	call	long_double_format
	xor	r12d, r12d
	test	rax, rax
	mov	r14d, 0
	je	.label_31
	movzx	ecx,  byte ptr [byte ptr [rip + equal_width]]
	and	ecx, 1
	cmp	ecx, 1
	je	.label_16
	mov	r12b, 1
	mov	r14, rax
.label_31:
	movsxd	rbx,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rbx*8]
	call	all_digits_p
	test	al, al
	je	.label_13
	cmp	ebp, 1
	je	.label_22
	mov	rdi, qword ptr [r15 + rbx*8 + 8]
	call	all_digits_p
	test	al, al
	je	.label_13
	cmp	ebp, 3
	jae	.label_45
.label_22:
	mov	al,  byte ptr [byte ptr [rip + equal_width]]
	or	al, r12b
	test	al, 1
	jne	.label_13
	jmp	.label_24
.label_45:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rax, qword ptr [r15 + rax*8 + 8]
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x31
	jne	.label_13
	cmp	byte ptr [rax + 1], 0
	jne	.label_13
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8 + 0x10]
	call	all_digits_p
	mov	cl,  byte ptr [byte ptr [rip + equal_width]]
	or	cl, r12b
	test	cl, 1
	jne	.label_13
	xor	al, 1
	jne	.label_13
.label_24:
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	jne	.label_13
	mov	edi, OFFSET FLAT:.str.19
	cmp	ebp, 1
	je	.label_25
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8]
.label_25:
	mov	eax,  dword ptr [dword ptr [rip + optind]]
	lea	eax, [rbp + rax - 1]
	mov	rsi, qword ptr [r15 + rax*8]
	call	seq_fast
	test	al, al
	jne	.label_20
.label_13:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r15 + rax*8]
	lea	rdi, [rsp + 0x80]
	call	scan_arg
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	jge	.label_35
	movaps	xmm0, xmmword ptr [rsp + 0x80]
	movaps	xmm1, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xd0], xmm1
	movaps	xmmword ptr [rsp + 0xc0], xmm0
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r15 + rax*8]
	lea	rdi, [rsp + 0x80]
	call	scan_arg
	cmp	dword ptr [dword ptr [rip + optind]],  r13d
	jge	.label_35
	movaps	xmm0, xmmword ptr [rsp + 0x80]
	movaps	xmm1, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0xb0], xmm1
	movaps	xmmword ptr [rsp + 0xa0], xmm0
	fld	xword ptr [rsp + 0xa0]
	fldz	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_12
	jp	.label_12
	jmp	.label_42
.label_12:
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	lea	ecx, [rax + 1]
	mov	dword ptr [dword ptr [rip + optind]],  ecx
	mov	rsi, qword ptr [r15 + rax*8]
	lea	rdi, [rsp + 0x80]
	call	scan_arg
.label_35:
	fld	xword ptr [rsp + 0xc0]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	jne	.label_14
	jp	.label_14
	cmp	dword ptr [rsp + 0xd8], 0
	jne	.label_14
	cmp	dword ptr [rsp + 0xb8], 0
	jne	.label_14
	fxch	st(1)
	fucomip	st(1)
	fldz	
	fxch	st(1)
	jb	.label_14
	fstp	st(1)
	mov	eax, dword ptr [rsp + 0x98]
	test	eax, eax
	fldz	
	fxch	st(1)
	jne	.label_14
	fstp	st(1)
	fld	xword ptr [rsp + 0xa0]
	fld1	
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	fldz	
	fxch	st(1)
	jne	.label_14
	jp	.label_14
	fstp	st(1)
	fld	xword ptr [rsp + 0x80]
	fucomip	st(1)
	fstp	st(0)
	fldz	
	fldz	
	jb	.label_14
	fstp	st(1)
	fstp	st(0)
	or	r12b,  byte ptr [byte ptr [rip + equal_width]]
	test	r12b, 1
	fldz	
	fldz	
	jne	.label_14
	fstp	st(1)
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	call	strlen
	cmp	rax, 1
	fldz	
	fldz	
	jne	.label_14
	fstp	st(1)
	fstp	st(0)
	fld	xword ptr [rsp + 0xc0]
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x68]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_32
	fld	xword ptr [rsp + 0x80]
	fldz	
	fld	st(1)
	fmul	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_23
	jnp	.label_28
.label_23:
	fstp	st(0)
	mov	edi, OFFSET FLAT:.str.22
	call	xstrdup
	mov	qword ptr [rsp + 0x60], rax
	jmp	.label_41
.label_28:
	fstp	xword ptr [rsp]
	lea	rdi, [rsp + 0x60]
	mov	esi, 1
	mov	edx, OFFSET FLAT:.str.21
	xor	eax, eax
	call	__asprintf_chk
	test	eax, eax
	js	.label_32
.label_41:
	mov	rdi, qword ptr [rsp + 0x68]
	movzx	eax, byte ptr [rdi]
	cmp	eax, 0x2d
	je	.label_34
	mov	rsi, qword ptr [rsp + 0x60]
	movzx	eax, byte ptr [rsi]
	cmp	eax, 0x2d
	je	.label_34
	call	seq_fast
	test	al, al
	jne	.label_20
.label_34:
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	mov	rdi, qword ptr [rsp + 0x60]
	call	free
	fldz	
	fldz	
.label_14:
	fstp	st(1)
	fstp	st(0)
	test	r14, r14
	jne	.label_43
	movaps	xmm0, xmmword ptr [rsp + 0x80]
	movaps	xmm1, xmmword ptr [rsp + 0x90]
	movaps	xmmword ptr [rsp + 0x50], xmm1
	movaps	xmmword ptr [rsp + 0x40], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0xa0]
	movaps	xmm1, xmmword ptr [rsp + 0xb0]
	movaps	xmmword ptr [rsp + 0x30], xmm1
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movaps	xmm0, xmmword ptr [rsp + 0xc0]
	movaps	xmm1, xmmword ptr [rsp + 0xd0]
	movaps	xmmword ptr [rsp + 0x10], xmm1
	movaps	xmmword ptr [rsp], xmm0
	call	get_default_format
	mov	r14, rax
.label_43:
	fld	xword ptr [rsp + 0xc0]
	fld	xword ptr [rsp + 0xa0]
	fld	xword ptr [rsp + 0x80]
	mov	rsi, qword ptr [rsp + 0x70]
	mov	rdx, qword ptr [rsp + 0x78]
	fstp	xword ptr [rsp + 0x20]
	fstp	xword ptr [rsp + 0x10]
	fstp	xword ptr [rsp]
	mov	rdi, r14
	call	print_numbers
.label_20:
	xor	eax, eax
	add	rsp, 0xe8
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_26:
	cmp	eax, 0xffffff7d
	je	.label_30
	cmp	eax, 0xffffff7e
	jne	.label_27
	xor	edi, edi
	call	usage
.label_15:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.16
	jmp	.label_33
.label_29:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.17_0
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8 + 0x18]
	jmp	.label_36
.label_30:
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	mov	rcx,  qword ptr [word ptr [rip + Version]]
	mov	esi, OFFSET FLAT:.str.8
	mov	edx, OFFSET FLAT:.str.17
	mov	r8d, OFFSET FLAT:.str.15
	xor	r9d, r9d
	xor	eax, eax
	call	version_etc
	xor	edi, edi
	call	exit
.label_27:
	mov	edi, 1
	call	usage
.label_16:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.18_0
.label_33:
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
.label_42:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.20
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	movsxd	rax,  dword ptr [dword ptr [rip + optind]]
	mov	rdi, qword ptr [r15 + rax*8 - 8]
.label_36:
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
	mov	edi, 1
	call	usage
.label_32:
	call	xalloc_die
	nop	
	.section	.text
	.align	32
	#Procedure 0x402070

	.globl long_double_format
	.type long_double_format, @function
long_double_format:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x18
	mov	r13, rsi
	mov	r12, rdi
	xor	ebp, ebp
	xor	ebx, ebx
	jmp	.label_55
	nop	word ptr [rax + rax]
.label_57:
	inc	rbp
	movzx	eax, al
	cmp	eax, 0x25
	sete	al
	movzx	eax, al
	lea	rbx, [rax + rbx + 1]
.label_55:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	eax, 0x25
	jne	.label_53
	movzx	eax, byte ptr [r12 + rbx + 1]
	cmp	eax, 0x25
	jne	.label_54
	mov	al, byte ptr [r12 + rbx]
.label_53:
	test	al, al
	jne	.label_57
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.44
	jmp	.label_46
.label_54:
	lea	rdi, [r12 + rbx + 1]
	inc	rbx
	mov	esi, OFFSET FLAT:.str.45
	call	strspn
	mov	r14, rax
	add	r14, rbx
	lea	rdi, [r12 + r14]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	mov	r15, rax
	add	r15, r14
	movzx	eax, byte ptr [r12 + r15]
	cmp	eax, 0x2e
	jne	.label_56
	lea	rdi, [r12 + r15 + 1]
	mov	esi, OFFSET FLAT:.str.46
	call	strspn
	lea	r15, [rax + r15 + 1]
.label_56:
	movzx	eax, byte ptr [r12 + r15]
	cmp	eax, 0x4c
	sete	al
	movzx	eax, al
	lea	rbx, [rax + r15]
	movsx	esi, byte ptr [r12 + rbx]
	test	esi, esi
	je	.label_49
	mov	qword ptr [rsp + 8], rax
	mov	qword ptr [rsp + 0x10], r13
	mov	edi, OFFSET FLAT:.str.48
	mov	edx, 9
	call	memchr
	test	rax, rax
	je	.label_48
	lea	r13, [r12 + r15]
	inc	rbx
	xor	r14d, r14d
	jmp	.label_50
	nop	word ptr cs:[rax + rax]
.label_52:
	inc	r14
	movzx	eax, al
	cmp	eax, 0x25
	sete	al
	movzx	eax, al
	lea	rbx, [rax + rbx + 1]
.label_50:
	movzx	eax, byte ptr [r12 + rbx]
	cmp	eax, 0x25
	jne	.label_51
	movzx	eax, byte ptr [rbx + r12 + 1]
	cmp	eax, 0x25
	jne	.label_47
	mov	al, byte ptr [r12 + rbx]
.label_51:
	test	al, al
	jne	.label_52
	add	rbx, 2
	mov	rdi, rbx
	call	xmalloc
	mov	rbx, rax
	mov	rdi, rbx
	mov	rsi, r12
	mov	rdx, r15
	call	memcpy
	mov	byte ptr [rbx + r15], 0x4c
	lea	rdi, [rbx + r15 + 1]
	add	r13, qword ptr [rsp + 8]
	mov	rsi, r13
	call	strcpy
	mov	rax, qword ptr [rsp + 0x10]
	mov	qword ptr [rax], rbp
	mov	qword ptr [rax + 8], r14
	mov	rax, rbx
	add	rsp, 0x18
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_47:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.50
.label_46:
	mov	edx, 5
	call	dcgettext
	mov	rbx, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbx
	call	error
.label_49:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.47
	jmp	.label_46
.label_48:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.49
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	movsx	r8d, byte ptr [r12 + rbx]
	mov	edi, 1
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	call	error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402270

	.globl all_digits_p
	.type all_digits_p, @function
all_digits_p:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	movsx	eax, byte ptr [rbx]
	add	eax, -0x30
	cmp	eax, 9
	ja	.label_58
	mov	rdi, rbx
	call	strlen
	mov	r14, rax
	mov	esi, OFFSET FLAT:.str.46
	mov	rdi, rbx
	call	strspn
	cmp	r14, rax
	sete	al
	jmp	.label_59
.label_58:
	xor	eax, eax
.label_59:
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x4022b0

	.globl seq_fast
	.type seq_fast, @function
seq_fast:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x48
	mov	rbx, rsi
	movzx	eax, byte ptr [rbx]
	mov	ebp, 0x69
	sub	ebp, eax
	jne	.label_61
	movzx	eax, byte ptr [rbx + 1]
	mov	ebp, 0x6e
	sub	ebp, eax
	jne	.label_61
	movzx	eax, byte ptr [rbx + 2]
	mov	ebp, 0x66
	sub	ebp, eax
	jne	.label_61
	movzx	ebp, byte ptr [rbx + 3]
	neg	ebp
.label_61:
	mov	dword ptr [rsp + 0xc], ebp
	call	trim_leading_zeros
	mov	r14, rax
	mov	rdi, rbx
	call	trim_leading_zeros
	mov	rbx, rax
	mov	rdi, r14
	call	strlen
	xor	ecx, ecx
	test	ebp, ebp
	mov	qword ptr [rsp + 0x40], rax
	je	.label_60
	mov	rdi, rbx
	call	strlen
	mov	rcx, rax
.label_60:
	mov	qword ptr [rsp + 0x30], rbx
	mov	qword ptr [rsp + 0x10], rcx
	mov	rax, qword ptr [rsp + 0x40]
	inc	rax
	cmp	rax, rcx
	cmovbe	rax, rcx
	cmp	rax, 0x1f
	mov	r12d, 0x1f
	cmova	r12, rax
	lea	r15, [r12 + 1]
	mov	rdi, r15
	call	xmalloc
	mov	r13, rax
	lea	rbp, [r13 + r12]
	mov	rdx, qword ptr [rsp + 0x40]
	sub	rbp, rdx
	inc	rdx
	mov	rdi, rbp
	mov	rsi, r14
	call	memcpy
	xor	ebx, ebx
	cmp	dword ptr [rsp + 0xc], 0
	mov	qword ptr [rsp + 0x38], rbp
	mov	ebp, 0
	je	.label_65
	mov	rdi, r15
	call	xmalloc
	mov	rbp, rax
	mov	rbx, rbp
	add	rbx, r12
	mov	r14, qword ptr [rsp + 0x10]
	sub	rbx, r14
	lea	rdx, [r14 + 1]
	mov	rdi, rbx
	mov	rsi, qword ptr [rsp + 0x30]
	call	memcpy
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, rbx
	mov	rcx, r14
	call	cmp
	test	eax, eax
	jle	.label_65
	xor	ebx, ebx
	jmp	.label_67
.label_65:
	mov	qword ptr [rsp + 0x18], rbx
	mov	qword ptr [rsp], rbp
	mov	qword ptr [rsp + 0x28], r13
	add	r15, r15
	cmp	r15, 0x2000
	mov	ebx, 0x2000
	cmovae	rbx, r15
	mov	qword ptr [rsp + 0x20], rbx
	mov	rdi, rbx
	call	xmalloc
	mov	r13, rax
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rax, [r13 + rbx]
	mov	qword ptr [rsp + 0x30], rax
	mov	rcx, -1
	mov	rdi, r13
	call	__mempcpy_chk
	mov	r15, rax
	mov	ebx, dword ptr [rsp + 0xc]
	mov	r14, qword ptr [rsp + 0x10]
	nop	word ptr cs:[rax + rax]
.label_63:
	test	ebx, ebx
	je	.label_64
	mov	rdi, qword ptr [rsp + 0x38]
	mov	rsi, qword ptr [rsp + 0x40]
	mov	rdx, qword ptr [rsp + 0x18]
	mov	rcx, r14
	call	cmp
	test	eax, eax
	jns	.label_68
.label_64:
	mov	rax,  qword ptr [word ptr [rip + separator]]
	mov	al, byte ptr [rax]
	mov	byte ptr [r15], al
	inc	r15
	lea	rdi, [rsp + 0x38]
	lea	rsi, [rsp + 0x40]
	call	incr
	cmp	qword ptr [rsp + 0x40], r12
	jne	.label_66
	lea	rsi, [r12 + r12 + 1]
	lea	r12, [r12 + r12]
	mov	rdi, qword ptr [rsp + 0x28]
	call	xrealloc
	mov	qword ptr [rsp + 0x28], rax
	mov	rdx, qword ptr [rsp + 0x40]
	lea	rbp, [rax + rdx]
	inc	rdx
	mov	rdi, rbp
	mov	rsi, rax
	call	memmove
	mov	qword ptr [rsp + 0x38], rbp
	lea	r14, [r12 + r12 + 2]
	cmp	qword ptr [rsp + 0x20], r14
	jae	.label_62
	sub	r15, r13
	mov	rdi, r13
	mov	rsi, r14
	call	xrealloc
	mov	r13, rax
	add	r15, r13
	lea	rax, [r13 + r14]
	mov	qword ptr [rsp + 0x30], rax
	mov	qword ptr [rsp + 0x20], r14
.label_62:
	mov	r14, qword ptr [rsp + 0x10]
.label_66:
	mov	rsi, qword ptr [rsp + 0x38]
	mov	rbp, qword ptr [rsp + 0x40]
	mov	rcx, -1
	mov	rdi, r15
	mov	rdx, rbp
	call	__mempcpy_chk
	mov	r15, rax
	not	rbp
	add	rbp, qword ptr [rsp + 0x30]
	cmp	rbp, r15
	jae	.label_63
	sub	r15, r13
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, r15
	call	fwrite_unlocked
	cmp	rax, 1
	mov	r15, r13
	je	.label_63
	call	io_error
.label_68:
	mov	byte ptr [r15], 0xa
	inc	r15
	sub	r15, r13
	mov	rcx,  qword ptr [word ptr [rip + stdout]]
	mov	edx, 1
	mov	rdi, r13
	mov	rsi, r15
	call	fwrite_unlocked
	mov	bl, 1
	cmp	rax, 1
	mov	r13, qword ptr [rsp + 0x28]
	mov	rbp, qword ptr [rsp]
	jne	.label_69
.label_67:
	mov	rdi, r13
	call	free
	mov	rdi, rbp
	call	free
	mov	al, bl
	add	rsp, 0x48
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_69:
	call	io_error
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4025b0

	.globl scan_arg
	.type scan_arg, @function
scan_arg:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x28
	mov	r12, rsi
	mov	r14, rdi
	lea	rdx, [rsp]
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	mov	rdi, r12
	call	xstrtold
	test	al, al
	je	.label_83
	fld	xword ptr [rsp]
	fucomip	st(0)
	jp	.label_85
	call	__ctype_b_loc
	mov	rbx, qword ptr [rax]
	dec	r12
	nop	word ptr cs:[rax + rax]
.label_75:
	movsx	ebp, byte ptr [r12 + 1]
	inc	r12
	mov	edi, ebp
	call	to_uchar
	movzx	eax, al
	movzx	eax, word ptr [rbx + rax*2]
	and	eax, 0x2000
	cmp	ebp, 0x2b
	je	.label_75
	test	ax, ax
	jne	.label_75
	mov	qword ptr [rsp + 0x10], 0
	mov	dword ptr [rsp + 0x18], 0x7fffffff
	mov	esi, 0x2e
	mov	rdi, r12
	call	strchr
	mov	r15, rax
	test	r15, r15
	jne	.label_80
	mov	esi, 0x70
	mov	rdi, r12
	call	strchr
	test	rax, rax
	jne	.label_80
	mov	dword ptr [rsp + 0x18], 0
.label_80:
	mov	esi, 0x78
	mov	edx, 0x58
	mov	rdi, r12
	call	__strcspn_c2
	cmp	byte ptr [rax + r12], 0
	jne	.label_70
	fld	xword ptr [rsp]
	fldz	
	fmul	st(1), st(0)
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_70
	jp	.label_70
	mov	rdi, r12
	call	strlen
	mov	qword ptr [rsp + 0x10], rax
	xor	ebx, ebx
	test	r15, r15
	je	.label_76
	lea	rdi, [r15 + 1]
	mov	esi, 0x65
	mov	edx, 0x45
	call	__strcspn_c2
	mov	rbx, rax
	cmp	rbx, 0x7fffffff
	ja	.label_79
	mov	dword ptr [rsp + 0x18], ebx
	mov	rax, -1
	test	rbx, rbx
	je	.label_82
.label_79:
	mov	al, 1
	cmp	r15, r12
	je	.label_78
	movsx	eax, byte ptr [r15 - 1]
	add	eax, -0x30
	cmp	eax, 9
	seta	al
.label_78:
	movzx	eax, al
.label_82:
	add	qword ptr [rsp + 0x10], rax
.label_76:
	mov	esi, 0x65
	mov	rdi, r12
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	jne	.label_71
	mov	esi, 0x45
	mov	rdi, r12
	call	strchr
	mov	rbp, rax
	test	rbp, rbp
	je	.label_70
.label_71:
	lea	rdi, [rbp + 1]
	xor	esi, esi
	mov	edx, 0xa
	call	strtol
	mov	r13, rax
	test	r13, r13
	js	.label_77
	movsxd	rax, dword ptr [rsp + 0x18]
	cmp	rax, r13
	cmovg	rax, r13
.label_77:
	sub	dword ptr [rsp + 0x18], eax
	mov	rdi, r12
	call	strlen
	mov	rcx, rbp
	sub	rcx, r12
	sub	rcx, rax
	add	rcx, qword ptr [rsp + 0x10]
	mov	qword ptr [rsp + 0x10], rcx
	test	r13, r13
	js	.label_84
	test	r15, r15
	je	.label_81
	test	rbx, rbx
	je	.label_81
	mov	eax, dword ptr [rsp + 0x18]
	test	eax, eax
	jne	.label_81
	dec	rcx
	mov	qword ptr [rsp + 0x10], rcx
.label_81:
	cmp	rbx, r13
	cmovae	rbx, r13
	sub	r13, rbx
	jmp	.label_72
.label_84:
	test	r15, r15
	je	.label_73
	inc	r15
	cmp	rbp, r15
	jne	.label_74
.label_73:
	inc	rcx
	mov	qword ptr [rsp + 0x10], rcx
.label_74:
	neg	r13
.label_72:
	add	qword ptr [rsp + 0x10], r13
.label_70:
	movaps	xmm0, xmmword ptr [rsp]
	movaps	xmm1, xmmword ptr [rsp + 0x10]
	movaps	xmmword ptr [r14 + 0x10], xmm1
	movaps	xmmword ptr [r14], xmm0
	mov	rax, r14
	add	rsp, 0x28
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_83:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.52
	mov	edx, 5
	call	dcgettext
	mov	rbp, rax
	mov	rdi, r12
	call	quote
	mov	rcx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, rbp
	call	error
	mov	edi, 1
	call	usage
.label_85:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.53
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.54
	call	quote_n
	mov	rbp, rax
	mov	edi, 1
	mov	rsi, r12
	call	quote_n
	mov	rbx, rax
	xor	edi, edi
	xor	esi, esi
	xor	eax, eax
	mov	rdx, r14
	mov	rcx, rbp
	mov	r8, rbx
	call	error
	mov	edi, 1
	call	usage
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402870

	.globl get_default_format
	.type get_default_format, @function
get_default_format:
	push	r14
	push	rbx
	push	rax
	mov	eax, dword ptr [rsp + 0x38]
	mov	r9d, dword ptr [rsp + 0x58]
	cmp	eax, r9d
	cmovge	r9d, eax
	mov	ebx, OFFSET FLAT:.str.59
	cmp	r9d, 0x7fffffff
	je	.label_86
	lea	r14, [rsp + 0x60]
	mov	esi, dword ptr [r14 + 0x18]
	mov	ebx, OFFSET FLAT:.str.59
	cmp	esi, 0x7fffffff
	je	.label_86
	movzx	edx,  byte ptr [byte ptr [rip + equal_width]]
	and	edx, 1
	cmp	edx, 1
	jne	.label_87
	lea	r10, [rsp + 0x20]
	mov	edi, r9d
	sub	edi, eax
	movsxd	rdi, edi
	mov	ebx, r9d
	sub	ebx, esi
	movsxd	rbx, ebx
	test	r9d, r9d
	sete	r8b
	setne	r11b
	test	esi, esi
	setne	dl
	sete	cl
	and	dl, r8b
	and	cl, r11b
	movzx	ecx, cl
	movzx	edx, dl
	sub	rbx, rdx
	add	rbx, rcx
	add	rbx, qword ptr [r14 + 0x10]
	test	eax, eax
	sete	al
	and	al, r11b
	movzx	r8d, al
	add	r8, rdi
	add	r8, qword ptr [r10 + 0x10]
	cmp	r8, rbx
	cmovbe	r8, rbx
	mov	ebx, OFFSET FLAT:.str.59
	cmp	r8, 0x7fffffff
	ja	.label_86
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:.str.57
	xor	eax, eax
	call	__sprintf_chk
	jmp	.label_86
.label_87:
	mov	ebx, OFFSET FLAT:get_default_format.format_buf
	mov	edi, OFFSET FLAT:get_default_format.format_buf
	mov	esi, 1
	mov	edx, 0x1c
	mov	ecx, OFFSET FLAT:.str.58
	xor	eax, eax
	mov	r8d, r9d
	call	__sprintf_chk
.label_86:
	mov	rax, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402980

	.globl print_numbers
	.type print_numbers, @function
print_numbers:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 0x88
	mov	r14, rdx
	mov	r15, rsi
	mov	rbx, rdi
	fld	xword ptr [rsp + 0xe0]
	fld	st(0)
	fstp	xword ptr [rsp + 0x3c]
	fld	st(0)
	fstp	xword ptr [rsp + 0x3c]
	fld	xword ptr [rsp + 0xd0]
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fld	st(0)
	fstp	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0xc0]
	fld	st(0)
	fstp	xword ptr [rsp + 0x24]
	fxch	st(2)
	fucomi	st(2)
	seta	al
	fxch	st(2)
	fucomip	st(2)
	fstp	st(1)
	seta	cl
	fldz	
	fucomip	st(1)
	fstp	st(0)
	ja	.label_88
	mov	al, cl
.label_88:
	test	al, al
	jne	.label_97
	fld	xword ptr [rsp + 0x24]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fldz	
	js	.label_100
	fstp	st(0)
	fld1	
	xor	r12d, r12d
	fld	xword ptr [rsp + 0x24]
	fxch	st(1)
	fstp	xword ptr [rsp + 0x48]
.label_94:
	test	r12b, r12b
	jne	.label_89
	fld	xword ptr [rsp + 0x30]
	fld	xword ptr [rsp + 0x48]
	fmul	st(1)
	fld	xword ptr [rsp + 0x24]
	faddp	st(1)
	fld	st(0)
	fstp	xword ptr [rsp + 0x54]
	fld	xword ptr [rsp + 0x3c]
	fucomi	st(1)
	seta	r12b
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	seta	al
	fldz	
	fucomip	st(1)
	fstp	st(0)
	ja	.label_98
	mov	r12b, al
.label_98:
	test	r12b, r12b
	je	.label_93
	fstp	xword ptr [rsp + 0x18]
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_96
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_1
	call	setlocale
.label_96:
	fld	xword ptr [rsp + 0x54]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x68]
	mov	rdx, rbx
	call	__asprintf_chk
	mov	ebp, eax
	cmp	byte ptr [byte ptr [rip + locale_ok]],  0
	je	.label_91
	mov	edi, 1
	mov	esi, OFFSET FLAT:.str_0
	call	setlocale
.label_91:
	test	ebp, ebp
	js	.label_95
	movsxd	rax, ebp
	sub	rax, r14
	mov	rcx, qword ptr [rsp + 0x68]
	mov	byte ptr [rcx + rax], 0
	mov	rdi, qword ptr [rsp + 0x68]
	add	rdi, r15
	xor	r13d, r13d
	xor	esi, esi
	mov	ecx, OFFSET FLAT:cl_strtold
	lea	rdx, [rsp + 0x70]
	call	xstrtold
	fld	xword ptr [rsp + 0x70]
	test	al, al
	je	.label_99
	fld	xword ptr [rsp + 0x3c]
	fxch	st(1)
	fucomip	st(1)
	fstp	st(0)
	jne	.label_92
	jp	.label_92
	mov	qword ptr [rsp + 0x60], 0
	fld	xword ptr [rsp + 0x18]
	fstp	xword ptr [rsp]
	mov	esi, 1
	xor	eax, eax
	lea	rdi, [rsp + 0x60]
	mov	rdx, rbx
	call	__asprintf_chk
	test	eax, eax
	js	.label_95
	mov	rbp, qword ptr [rsp + 0x60]
	mov	rsi, qword ptr [rsp + 0x68]
	mov	rdi, rbp
	call	strcmp
	test	eax, eax
	setne	r13b
	mov	rdi, rbp
	call	free
	jmp	.label_92
.label_99:
	fstp	st(0)
.label_92:
	mov	rdi, qword ptr [rsp + 0x68]
	call	free
	test	r13b, r13b
	fldz	
	je	.label_89
.label_93:
	fstp	st(0)
	mov	rdi,  qword ptr [word ptr [rip + separator]]
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_90
	fld1	
	fld	xword ptr [rsp + 0x48]
	faddp	st(1)
	fstp	xword ptr [rsp + 0x48]
	fld	xword ptr [rsp + 0x54]
	fld	st(0)
	fstp	xword ptr [rsp + 0x54]
	fstp	xword ptr [rsp]
	mov	edi, 1
	xor	eax, eax
	mov	rsi, rbx
	call	__printf_chk
	test	eax, eax
	fld	xword ptr [rsp + 0x54]
	jns	.label_94
.label_100:
	fstp	st(0)
	call	io_error
.label_89:
	fstp	st(0)
	mov	rsi,  qword ptr [word ptr [rip + stdout]]
	mov	edi, OFFSET FLAT:terminator
	call	fputs_unlocked
	cmp	eax, -1
	je	.label_90
.label_97:
	add	rsp, 0x88
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_90:
	call	io_error
.label_95:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402bf0

	.globl trim_leading_zeros
	.type trim_leading_zeros, @function
trim_leading_zeros:
	xor	eax, eax
	jmp	.label_101
	nop	word ptr cs:[rax + rax]
.label_102:
	inc	rax
.label_101:
	movzx	ecx, byte ptr [rdi + rax]
	cmp	ecx, 0x30
	je	.label_102
	test	cl, cl
	jne	.label_103
	lea	rcx, [rdi + rax]
	test	rax, rax
	lea	rax, [rdi + rax - 1]
	cmove	rax, rcx
	ret	
.label_103:
	add	rdi, rax
	mov	rax, rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c30

	.globl cmp
	.type cmp, @function
cmp:
	mov	eax, 0xffffffff
	cmp	rsi, rcx
	jb	.label_104
	mov	eax, 1
	cmp	rcx, rsi
	jae	.label_105
.label_104:
	ret	
.label_105:
	mov	rsi, rdx
	jmp	strcmp
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402c50

	.globl incr
	.type incr, @function
incr:
	mov	r8, qword ptr [rdi]
	mov	rcx, qword ptr [rsi]
	lea	rcx, [r8 + rcx - 1]
	nop	dword ptr [rax + rax]
.label_107:
	movsx	edx, byte ptr [rcx]
	mov	al, dl
	inc	al
	mov	byte ptr [rcx], al
	cmp	edx, 0x39
	jl	.label_106
	mov	byte ptr [rcx], 0x30
	dec	rcx
	cmp	rcx, r8
	jae	.label_107
	mov	rax, qword ptr [rdi]
	lea	rcx, [rax - 1]
	mov	qword ptr [rdi], rcx
	mov	byte ptr [rax - 1], 0x31
	inc	qword ptr [rsi]
.label_106:
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402c90

	.globl io_error
	.type io_error, @function
io_error:
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	clearerr_unlocked
	call	__errno_location
	mov	ebx, dword ptr [rax]
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	rcx, rax
	mov	edi, 1
	xor	eax, eax
	mov	esi, ebx
	mov	rdx, rcx
	call	error
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x402cd0

	.globl to_uchar
	.type to_uchar, @function
to_uchar:
	movzx	eax, dil
	ret	
	nop	dword ptr [rax]
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402ce0

	.globl cl_strtold
	.type cl_strtold, @function
cl_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x28
	mov	r14, rsi
	mov	rbx, rdi
	lea	rsi, [rsp + 0x20]
	call	strtold
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax], 0
	je	.label_108
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	r15, rax
	mov	ebp, dword ptr [r15]
	lea	rsi, [rsp + 0x18]
	mov	rdi, rbx
	call	c_strtold
	mov	rax, qword ptr [rsp + 0x18]
	cmp	qword ptr [rsp + 0x20], rax
	jae	.label_110
	mov	qword ptr [rsp + 0x20], rax
	jmp	.label_108
.label_110:
	fstp	st(0)
	mov	dword ptr [r15], ebp
	fld	xword ptr [rsp + 0xc]
.label_108:
	test	r14, r14
	je	.label_109
	mov	rax, qword ptr [rsp + 0x20]
	mov	qword ptr [r14], rax
.label_109:
	add	rsp, 0x28
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x402d60
	.globl close_stdout_set_file_name
	.type close_stdout_set_file_name, @function
close_stdout_set_file_name:

	mov	qword ptr [word ptr [rip + file_name]],  rdi
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d70
	.globl close_stdout_set_ignore_EPIPE
	.type close_stdout_set_ignore_EPIPE, @function
close_stdout_set_ignore_EPIPE:

	mov	byte ptr [byte ptr [rip + ignore_EPIPE]],  dil
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402d80

	.globl close_stdout
	.type close_stdout, @function
close_stdout:
	push	rbp
	push	r14
	push	rbx
	mov	rdi,  qword ptr [word ptr [rip + stdout]]
	call	close_stream
	test	eax, eax
	je	.label_113
	cmp	byte ptr [byte ptr [rip + ignore_EPIPE]],  0
	je	.label_111
	call	__errno_location
	cmp	dword ptr [rax], 0x20
	jne	.label_111
.label_113:
	mov	rdi,  qword ptr [word ptr [rip + stderr]]
	call	close_stream
	test	eax, eax
	jne	.label_114
	pop	rbx
	pop	r14
	pop	rbp
	ret	
.label_111:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str_2
	mov	edx, 5
	call	dcgettext
	mov	r14, rax
	mov	rbx,  qword ptr [word ptr [rip + file_name]]
	call	__errno_location
	test	rbx, rbx
	mov	ebp, dword ptr [rax]
	jne	.label_112
	xor	edi, edi
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	esi, ebp
	mov	rcx, r14
	call	error
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_114:
	mov	edi,  dword ptr [dword ptr [rip + exit_failure]]
	call	_exit
.label_112:
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
	.align	32
	#Procedure 0x402e40

	.globl set_program_name
	.type set_program_name, @function
set_program_name:
	push	r14
	push	rbx
	push	rax
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_115
	mov	esi, 0x2f
	mov	rdi, rbx
	call	strrchr
	test	rax, rax
	lea	r14, [rax + 1]
	cmove	r14, rbx
	mov	rax, r14
	sub	rax, rbx
	cmp	rax, 7
	jl	.label_116
	lea	rdi, [r14 - 7]
	mov	esi, OFFSET FLAT:.str.1_1
	mov	edx, 7
	call	strncmp
	test	eax, eax
	jne	.label_116
	mov	esi, OFFSET FLAT:.str.2_0
	mov	edx, 3
	mov	rdi, r14
	call	strncmp
	test	eax, eax
	jne	.label_117
	add	r14, 3
	mov	qword ptr [word ptr [rip + program_invocation_short_name]],  r14
.label_117:
	mov	rbx, r14
.label_116:
	mov	qword ptr [word ptr [rip + program_name]],  rbx
	mov	qword ptr [word ptr [rip + __progname_full]],  rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	ret	
.label_115:
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
	#Procedure 0x402ef0
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
	#Procedure 0x402f30
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
	#Procedure 0x402f40
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
	#Procedure 0x402f50

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
	#Procedure 0x402f90
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
	#Procedure 0x402fb0

	.globl set_custom_quoting
	.type set_custom_quoting, @function
set_custom_quoting:
	test	rdi, rdi
	mov	eax, OFFSET FLAT:default_quoting_options
	cmovne	rax, rdi
	mov	dword ptr [rax], 0xa
	test	rsi, rsi
	je	.label_118
	test	rdx, rdx
	je	.label_118
	mov	qword ptr [rax + 0x28], rsi
	mov	qword ptr [rax + 0x30], rdx
	ret	
.label_118:
	push	rax
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x402fe0
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
	#Procedure 0x403060

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
.label_174:
	mov	r10, rbp
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, r13d
	cmp	r13d, 0xa
	ja	.label_191
	mov	r14d, 7
	mov	sil, 1
	xor	edi, edi
	mov	r9, r12
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	qword ptr [word ptr [+ (rcx * 8) + label_196]]
.label_398:
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
.label_399:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	rbp, r9
	mov	byte ptr [rsp + 0x69], r8b
	test	r15b, 1
	mov	eax, 0
	mov	qword ptr [rsp + 0xf0], rax
	mov	rdx, qword ptr [rsp + 0x90]
	jne	.label_133
	mov	al, byte ptr [rdx]
	test	al, al
	mov	ecx, 0
	mov	qword ptr [rsp + 0xf0], rcx
	je	.label_133
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	nop	
.label_237:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_228
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_228:
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx + rcx + 1]
	inc	rcx
	mov	qword ptr [rsp + 0xf0], rcx
	test	al, al
	jne	.label_237
.label_133:
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
	jmp	.label_127
.label_391:
	xor	r14d, r14d
	xor	ecx, ecx
	mov	qword ptr [rsp + 0xf0], rcx
	mov	sil, al
	xor	edi, edi
	jmp	.label_127
.label_394:
	mov	al, 1
.label_392:
	mov	r15b, 1
.label_395:
	test	r15b, 1
	mov	cl, 1
	je	.label_171
	mov	cl, al
.label_171:
	mov	al, cl
.label_393:
	mov	r14d, 2
	test	r15b, 1
	jne	.label_182
	test	r10, r10
	je	.label_218
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx], 0x27
	mov	ecx, 1
	jmp	.label_163
.label_182:
	xor	ecx, ecx
	jmp	.label_163
.label_396:
	mov	r14d, 5
	test	r15b, 1
	jne	.label_165
	test	r10, r10
	je	.label_170
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax], 0x22
	mov	eax, 1
	jmp	.label_172
.label_397:
	mov	sil, 1
	mov	r14d, 5
	xor	eax, eax
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	dil, 1
	jmp	.label_127
.label_218:
	mov	ecx, 1
	nop	word ptr cs:[rax + rax]
.label_163:
	mov	qword ptr [rsp + 0xf0], rcx
	mov	ecx, OFFSET FLAT:.str.12_0
	mov	qword ptr [rsp + 0xa8], rcx
	mov	ecx, 1
	mov	qword ptr [rsp + 0xd0], rcx
	mov	sil, al
	mov	dil, r15b
	jmp	.label_127
.label_165:
	xor	eax, eax
	jmp	.label_172
.label_170:
	mov	eax, 1
.label_172:
	mov	qword ptr [rsp + 0xf0], rax
	mov	eax, OFFSET FLAT:.str.10_0
	mov	qword ptr [rsp + 0xa8], rax
	mov	eax, 1
	mov	qword ptr [rsp + 0xd0], rax
	mov	sil, 1
	mov	dil, r15b
	nop	dword ptr [rax + rax]
.label_127:
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
	jmp	.label_146
	nop	dword ptr [rax + rax]
.label_177:
	inc	qword ptr [rsp + 0xf0]
	shl	r15b, 7
	sar	r15b, 7
	and	r15b, r8b
	mov	r8b, r15b
	inc	rsi
.label_146:
	cmp	rbp, -1
	je	.label_132
	cmp	rsi, rbp
	jne	.label_135
	jmp	.label_138
	nop	dword ptr [rax]
.label_132:
	cmp	byte ptr [r9 + rsi], 0
	je	.label_138
.label_135:
	cmp	byte ptr [rsp + 0xdf], 0
	je	.label_143
	mov	rax, qword ptr [rsp + 0xd0]
	lea	rbx, [rsi + rax]
	cmp	rax, 2
	jb	.label_145
	cmp	rbp, -1
	jne	.label_145
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
.label_145:
	cmp	rbx, rbp
	jbe	.label_168
.label_143:
	mov	rdi, r14
	mov	dword ptr [rsp + 0xec], 0
.label_207:
	movzx	r13d, byte ptr [r9 + rsi]
	cmp	r13, 0x7e
	ja	.label_173
	xor	edx, edx
	mov	r15b, 1
	mov	cl, 0x6e
	mov	bl, 0x61
	xor	eax, eax
	jmp	qword ptr [word ptr [+ (r13 * 8) + label_180]]
.label_409:
	test	rsi, rsi
	jne	.label_121
	jmp	.label_183
	nop	word ptr cs:[rax + rax]
.label_168:
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
	jne	.label_202
	cmp	byte ptr [rsp + 0xcf], 0
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	je	.label_207
	jmp	.label_147
.label_202:
	mov	r10, rbx
	mov	r8b, r15b
	mov	rdi, r13
	mov	r9, rbp
	mov	r11d, r12d
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r12b, byte ptr [rsp + 0xbf]
	mov	rsi, r14
	jmp	.label_207
.label_413:
	xor	eax, eax
	cmp	rbp, -1
	je	.label_223
	test	rsi, rsi
	jne	.label_227
	cmp	rbp, 1
	je	.label_183
	xor	r15d, r15d
	jmp	.label_126
.label_402:
	cmp	byte ptr [rsp + 0xa5], 0
	je	.label_215
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_147
	cmp	edi, 2
	jne	.label_232
	mov	al, r11b
	and	al, 1
	jne	.label_236
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_239
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_239:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_142
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_142:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_134
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_134:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rax, 3
	mov	r11b, 1
	mov	rcx, rax
	jmp	.label_188
.label_403:
	mov	bl, 0x62
	jmp	.label_153
.label_404:
	mov	cl, 0x74
	jmp	.label_155
.label_405:
	mov	bl, 0x76
	jmp	.label_153
.label_406:
	mov	bl, 0x66
	jmp	.label_153
.label_407:
	mov	cl, 0x72
	jmp	.label_155
.label_410:
	mov	al, 1
	mov	qword ptr [rsp + 0x70], rax
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_161
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
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
	jae	.label_167
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_167:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_184
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x5c
.label_184:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_192
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_192:
	add	qword ptr [rsp + 0xf0], 3
	xor	r11d, r11d
	jmp	.label_200
.label_411:
	mov	r14, rdi
	cmp	r14d, 5
	je	.label_206
	cmp	r14d, 2
	jne	.label_209
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
.label_209:
	mov	rdi, r14
	jmp	.label_121
.label_412:
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_214
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
	mov	rdi, r14
	jmp	.label_216
.label_173:
	mov	dword ptr [rsp + 0xb8], r11d
	mov	qword ptr [rsp + 0x38], rdi
	mov	byte ptr [rsp + 0x69], r8b
	mov	qword ptr [rsp + 0x40], r10
	cmp	qword ptr [rsp + 0x60], 1
	jne	.label_219
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
.label_137:
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
	ja	.label_123
	test	dl, dl
	je	.label_123
	mov	rdi, r14
	xor	eax, eax
	jmp	.label_126
.label_223:
	test	rsi, rsi
	jne	.label_129
	mov	cl, byte ptr [r9 + 1]
	test	cl, cl
	jne	.label_129
.label_183:
	mov	dl, 1
.label_408:
	cmp	byte ptr [rsp + 0xa7], 0
	je	.label_147
	xor	eax, eax
	mov	r15b, dl
	jmp	.label_126
.label_215:
	cmp	dword ptr [rsp + 0x5c], 0
	je	.label_121
	mov	r14, rdi
	inc	rsi
	jmp	.label_146
.label_161:
	mov	rdi, r14
.label_200:
	xor	eax, eax
	mov	r15b, 1
	jmp	.label_126
.label_214:
	mov	rdi, r14
	cmp	byte ptr [rsp + 0x6a], 0
	mov	cl, r13b
	je	.label_155
.label_216:
	xor	eax, eax
	xor	r15d, r15d
	jmp	.label_159
.label_155:
	cmp	byte ptr [rsp + 0xa7], 0
	mov	bl, cl
	je	.label_147
.label_153:
	xor	eax, eax
	cmp	byte ptr [rsp + 0xa5], 0
	mov	r15d, 0
	je	.label_126
	jmp	.label_144
.label_219:
	mov	qword ptr [rsp + 0x100], 0
	cmp	rbp, -1
	jne	.label_169
	mov	rdi, r9
	mov	rbx, r9
	mov	rbp, rsi
	call	strlen
	mov	rsi, rbp
	mov	r9, rbx
	mov	rbp, rax
.label_169:
	mov	qword ptr [rsp + 0xc0], rbp
	lea	rax, [r9 + rsi]
	mov	qword ptr [rsp + 0x20], rax
	mov	r15b, 1
	xor	ebx, ebx
	lea	r14, [rsp + 0x100]
.label_231:
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
	je	.label_195
	mov	qword ptr [rsp + 0x50], rbx
	cmp	rbp, -1
	mov	r10, qword ptr [rsp + 0x40]
	movabs	rsi, 0x20000002b
	mov	r14, qword ptr [rsp + 0x38]
	mov	r8b, byte ptr [rsp + 0xa6]
	je	.label_201
	cmp	rbp, -2
	je	.label_210
	cmp	rbp, 1
	seta	al
	and	al, byte ptr [rsp + 0x7f]
	movzx	eax, al
	cmp	eax, 1
	jne	.label_213
	mov	rax, qword ptr [rsp + 0x50]
	mov	rcx, qword ptr [rsp + 0x20]
	lea	rax, [rcx + rax]
	mov	ecx, 1
	nop	dword ptr [rax]
.label_225:
	movsx	edx, byte ptr [rax + rcx]
	add	edx, -0x5b
	cmp	edx, 0x21
	ja	.label_220
	bt	rsi, rdx
	jb	.label_222
.label_220:
	inc	rcx
	cmp	rcx, rbp
	jb	.label_225
.label_213:
	mov	edi, dword ptr [rsp + 0xfc]
	call	iswprint
	test	eax, eax
	jne	.label_149
	xor	r15d, r15d
.label_149:
	lea	rdi, [rsp + 0x100]
	mov	rbx, qword ptr [rsp + 0x50]
	add	rbx, rbp
	mov	r14, rdi
	call	mbsinit
	test	eax, eax
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	rsi, qword ptr [rsp + 0x30]
	je	.label_231
	jmp	.label_137
.label_129:
	mov	rbp, -1
	xor	r15d, r15d
	jmp	.label_126
.label_206:
	mov	rdi, r14
	cmp	dword ptr [rsp + 0x58], 0
	je	.label_121
	lea	rcx, [rsi + 2]
	cmp	rcx, rbp
	jae	.label_121
	movzx	eax, byte ptr [rsi + r9 + 1]
	cmp	eax, 0x3f
	jne	.label_121
	movsx	edx, byte ptr [r9 + rcx]
	xor	eax, eax
	cmp	edx, 0x3e
	ja	.label_136
	mov	rbx, rsi
	movabs	rsi, 0x7000a38200000000
	bt	rsi, rdx
	jae	.label_211
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_147
	mov	r13b, byte ptr [r9 + rcx]
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_154
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x3f
.label_154:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_189
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_189:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_166
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x22
.label_166:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 3]
	cmp	rax, r10
	jae	.label_158
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x3f
.label_158:
	add	qword ptr [rsp + 0xf0], 4
	xor	eax, eax
	mov	rsi, rcx
	xor	r15d, r15d
	jmp	.label_126
.label_121:
	xor	eax, eax
	xor	r15d, r15d
	nop	word ptr cs:[rax + rax]
.label_126:
	test	r12b, r12b
	je	.label_119
	cmp	qword ptr [rsp + 0x140], 0
	jne	.label_190
	jmp	.label_152
	nop	word ptr cs:[rax + rax]
.label_119:
	cmp	byte ptr [rsp + 0xb7], 0
	je	.label_152
.label_190:
	mov	r14, rsi
	mov	cl, r13b
	shr	cl, 5
	movzx	edx, cl
	mov	esi, 1
	mov	cl, r13b
	shl	esi, cl
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	jne	.label_197
	mov	rcx, qword ptr [rsp + 0x140]
	and	esi, dword ptr [rcx + rdx*4]
	mov	bl, r13b
	mov	rsi, r14
	je	.label_159
	jmp	.label_144
	nop	word ptr cs:[rax + rax]
.label_152:
	mov	ecx, dword ptr [rsp + 0xec]
	test	cl, cl
	mov	bl, r13b
	jne	.label_144
	jmp	.label_159
.label_197:
	mov	bl, r13b
	mov	rsi, r14
.label_144:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_147
	mov	r14, rdi
	cmp	r14d, 2
	jne	.label_221
	mov	al, r11b
	and	al, 1
	jne	.label_221
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_226
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_226:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_204
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x24
.label_204:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_233
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_233:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_221:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_122
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x5c
.label_122:
	inc	qword ptr [rsp + 0xf0]
	jmp	.label_131
.label_227:
	xor	r15d, r15d
	jmp	.label_126
.label_123:
	add	rcx, rsi
	xor	eax, eax
	jmp	.label_140
	nop	word ptr cs:[rax + rax]
.label_141:
	inc	qword ptr [rsp + 0xf0]
	mov	r13b, byte ptr [r9 + rsi + 1]
	mov	rsi, rdx
	mov	dl, byte ptr [rsp + 0xc0]
.label_140:
	test	dl, dl
	je	.label_240
	mov	edx, dword ptr [rsp + 0xec]
	mov	rdi, r14
	test	dl, 1
	je	.label_156
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_185
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x5c
	mov	rsi, rbx
.label_185:
	inc	qword ptr [rsp + 0xf0]
	mov	dword ptr [rsp + 0xec], 0
	jmp	.label_156
	nop	word ptr [rax + rax]
.label_240:
	cmp	byte ptr [rsp + 0xcf], 0
	jne	.label_160
	cmp	r14d, 2
	jne	.label_176
	mov	al, r11b
	and	al, 1
	jne	.label_176
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_178
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x27
.label_178:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_187
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x24
.label_187:
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_193
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdx + rax], 0x27
.label_193:
	add	qword ptr [rsp + 0xf0], 3
	mov	r11b, 1
.label_176:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_124
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rdx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rdx], 0x5c
.label_124:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	jae	.label_175
	mov	dl, r13b
	shr	dl, 6
	or	dl, 0x30
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rdi
.label_175:
	mov	rdi, r14
	mov	rax, qword ptr [rsp + 0xf0]
	lea	rax, [rax + 2]
	cmp	rax, r10
	jae	.label_217
	mov	dl, r13b
	shr	dl, 3
	and	dl, 7
	or	dl, 0x30
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rax], dl
	mov	rsi, rbx
.label_217:
	add	qword ptr [rsp + 0xf0], 3
	and	r13b, 7
	or	r13b, 0x30
	mov	al, 1
.label_156:
	lea	rdx, [rsi + 1]
	cmp	rcx, rdx
	jbe	.label_159
	test	r11b, 1
	je	.label_230
	mov	bl, al
	and	bl, 1
	mov	r14, rdi
	jne	.label_130
	mov	rbx, rsi
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_235
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rdi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rdi], 0x27
.label_235:
	mov	rsi, qword ptr [rsp + 0xf0]
	inc	rsi
	cmp	rsi, r10
	jae	.label_181
	mov	rdi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rdi + rsi], 0x27
.label_181:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	rsi, rbx
	jmp	.label_130
	nop	word ptr cs:[rax + rax]
.label_230:
	mov	r14, rdi
.label_130:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_141
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	rbx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rsi + rbx], r13b
	mov	rsi, rdi
	jmp	.label_141
.label_159:
	test	r11b, 1
	je	.label_157
	and	al, 1
	jne	.label_157
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_179
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0x27
.label_179:
	mov	rax, qword ptr [rsp + 0xf0]
	inc	rax
	cmp	rax, r10
	mov	r14, rdi
	jae	.label_164
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	byte ptr [rcx + rax], 0x27
.label_164:
	add	qword ptr [rsp + 0xf0], 2
	xor	r11d, r11d
	mov	bl, r13b
	jmp	.label_131
	nop	dword ptr [rax + rax]
.label_157:
	mov	bl, r13b
	mov	r14, rdi
.label_131:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_177
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], bl
	jmp	.label_177
.label_232:
	mov	rcx, qword ptr [rsp + 0xf0]
	jmp	.label_188
.label_236:
	mov	rcx, qword ptr [rsp + 0xf0]
.label_188:
	cmp	rcx, r10
	jae	.label_224
	mov	rax, qword ptr [rsp + 0xe0]
	mov	byte ptr [rax + rcx], 0x5c
.label_224:
	lea	rax, [rcx + 1]
	mov	qword ptr [rsp + 0xf0], rax
	mov	al, 1
	mov	r13b, 0x30
	cmp	edi, 2
	je	.label_194
	lea	rdx, [rsi + 1]
	cmp	rdx, rbp
	jae	.label_203
	mov	dl, byte ptr [r9 + rdx]
	add	dl, 0xd0
	movzx	edx, dl
	cmp	edx, 9
	ja	.label_150
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_199
	mov	rdx, qword ptr [rsp + 0xe0]
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rdx + rsi], 0x30
	mov	rsi, rbx
.label_199:
	lea	rdx, [rcx + 2]
	cmp	rdx, r10
	jae	.label_205
	mov	rbx, rsi
	mov	rsi, qword ptr [rsp + 0xe0]
	mov	byte ptr [rsi + rdx], 0x30
	mov	rsi, rbx
.label_205:
	add	rcx, 3
	xor	r15d, r15d
	mov	qword ptr [rsp + 0xf0], rcx
	jmp	.label_126
.label_194:
	xor	r15d, r15d
	jmp	.label_126
.label_203:
	xor	r15d, r15d
	jmp	.label_126
.label_150:
	xor	r15d, r15d
	jmp	.label_126
.label_195:
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	rsi, qword ptr [rsp + 0x30]
	jmp	.label_128
.label_201:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_229
.label_210:
	mov	rbp, qword ptr [rsp + 0xc0]
	cmp	qword ptr [rsp + 0x28], rbp
	jae	.label_234
	mov	r9, qword ptr [rsp + 0x48]
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_148:
	mov	rax, qword ptr [rsp + 0x20]
	cmp	byte ptr [rax + rbx], 0
	je	.label_120
	lea	rax, [rsi + rbx + 1]
	inc	rbx
	cmp	rax, rbp
	jb	.label_148
	xor	r15d, r15d
	jmp	.label_128
.label_234:
	xor	r15d, r15d
	mov	r9, qword ptr [rsp + 0x48]
.label_229:
	mov	rsi, qword ptr [rsp + 0x30]
	mov	rbx, qword ptr [rsp + 0x50]
.label_128:
	mov	byte ptr [rsp + 0xa6], r8b
	jmp	.label_137
.label_120:
	xor	r15d, r15d
	jmp	.label_128
.label_136:
	xor	r15d, r15d
	jmp	.label_126
.label_211:
	xor	r15d, r15d
	mov	rsi, rbx
	jmp	.label_126
	nop	dword ptr [rax + rax]
.label_138:
	cmp	qword ptr [rsp + 0xf0], 0
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rcx, qword ptr [rsp + 0x98]
	and	cl, 1
	je	.label_151
	or	dl, al
	je	.label_160
.label_151:
	mov	qword ptr [rsp + 0xc0], rbp
	mov	r12, r9
	test	cl, cl
	setne	al
	cmp	r14d, 2
	setne	dl
	mov	rsi, qword ptr [rsp + 0x70]
	test	sil, 1
	je	.label_162
	or	dl, al
	jne	.label_162
	test	r8b, 1
	jne	.label_139
	cmp	qword ptr [rsp + 0x80], 0
	je	.label_162
	test	r10, r10
	mov	r13d, r14d
	mov	al, byte ptr [rsp + 0xa6]
	mov	rdx, qword ptr [rsp + 0x98]
	mov	r15b, dl
	mov	rbp, qword ptr [rsp + 0x80]
	je	.label_174
.label_162:
	mov	rdx, qword ptr [rsp + 0xa8]
	test	rdx, rdx
	je	.label_186
	test	cl, cl
	jne	.label_186
	mov	al, byte ptr [rdx]
	test	al, al
	je	.label_186
	inc	rdx
	nop	word ptr cs:[rax + rax]
.label_198:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_238
	mov	rcx, qword ptr [rsp + 0xe0]
	mov	rsi, qword ptr [rsp + 0xf0]
	mov	byte ptr [rcx + rsi], al
.label_238:
	inc	qword ptr [rsp + 0xf0]
	mov	al, byte ptr [rdx]
	inc	rdx
	test	al, al
	jne	.label_198
.label_186:
	cmp	qword ptr [rsp + 0xf0], r10
	jae	.label_208
	mov	rax, qword ptr [rsp + 0xe0]
	mov	rcx, qword ptr [rsp + 0xf0]
	mov	byte ptr [rax + rcx], 0
	jmp	.label_208
.label_147:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	mov	r14, rdi
.label_212:
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
.label_125:
	call	quotearg_buffer_restyled
	mov	qword ptr [rsp + 0xf0], rax
.label_208:
	mov	rax, qword ptr [rsp + 0xf0]
	add	rsp, 0x108
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_222:
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	rdx, qword ptr [rsp + 0x48]
	mov	rbp, qword ptr [rsp + 0xc0]
	jmp	.label_212
.label_160:
	mov	rdx, r9
	mov	r9d, dword ptr [rsp + 0x6c]
	mov	r8b, byte ptr [rsp + 0xa6]
	jmp	.label_212
.label_139:
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
	jmp	.label_125
.label_191:
	call	abort
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404270
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
	#Procedure 0x404280

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
	je	.label_241
	mov	qword ptr [rax], rbx
.label_241:
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
	#Procedure 0x404380
	.globl quotearg_free
	.type quotearg_free, @function
quotearg_free:

	push	r15
	push	r14
	push	rbx
	mov	r14,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  2
	jl	.label_242
	lea	r15, [r14 + 0x18]
	mov	ebx, 1
	nop	
.label_244:
	mov	rdi, qword ptr [r15]
	call	free
	inc	rbx
	movsxd	rax,  dword ptr [dword ptr [rip + nslots]]
	add	r15, 0x10
	cmp	rbx, rax
	jl	.label_244
.label_242:
	mov	rdi, qword ptr [r14 + 8]
	mov	eax, OFFSET FLAT:slot0
	cmp	rdi, rax
	je	.label_246
	call	free
	mov	qword ptr [word ptr [rip + slotvec0]],  0x100
	mov	qword ptr [word ptr [rip + label_245]], OFFSET FLAT:slot0
.label_246:
	mov	eax, OFFSET FLAT:slotvec0
	cmp	r14, rax
	je	.label_243
	mov	rdi, r14
	call	free
	mov	qword ptr [word ptr [rip + slotvec]], OFFSET FLAT:slotvec0
.label_243:
	mov	dword ptr [dword ptr [rip + nslots]],  1
	pop	rbx
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404420

	.globl quotearg_n
	.type quotearg_n, @function
quotearg_n:
	mov	rdx, -1
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	
	.section	.text
	.align	32
	#Procedure 0x404430

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
	js	.label_247
	mov	ecx, dword ptr [rax]
	mov	rbp,  qword ptr [word ptr [rip + slotvec]]
	cmp	dword ptr [dword ptr [rip + nslots]],  ebx
	jle	.label_252
	mov	dword ptr [rsp + 0x2c], ecx
	mov	qword ptr [rsp + 0x30], rax
	jmp	.label_249
.label_252:
	mov	qword ptr [rsp + 0x38], r14
	cmp	ebx, 0x7fffffff
	je	.label_251
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
	jne	.label_250
	movups	xmm0,  xmmword ptr [word ptr [rip + slotvec0]]
	movups	xmmword ptr [r14], xmm0
.label_250:
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
.label_249:
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
	ja	.label_253
	lea	rax, [rbp + r13]
	lea	rbp, [rbp + r13 + 8]
	inc	r14
	mov	qword ptr [rax], r14
	mov	eax, OFFSET FLAT:slot0
	cmp	rbx, rax
	je	.label_248
	mov	rdi, rbx
	call	free
.label_248:
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
.label_253:
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
.label_247:
	call	abort
.label_251:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404600

	.globl quotearg_n_mem
	.type quotearg_n_mem, @function
quotearg_n_mem:
	mov	ecx, OFFSET FLAT:default_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404610
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
	#Procedure 0x404620
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
	#Procedure 0x404630

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
	#Procedure 0x404670

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
	je	.label_254
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
.label_254:
	call	abort
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4046d0

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
	#Procedure 0x404710
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
	#Procedure 0x404730
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
	#Procedure 0x404750

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
	mov	rcx,  qword ptr [word ptr [rip + label_255]]
	mov	qword ptr [rsp + 0x30], rcx
	movups	xmm0,  xmmword ptr [word ptr [rip + label_256]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_257]]
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
	#Procedure 0x4047c0

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
	#Procedure 0x4047d0

	.globl quotearg_colon
	.type quotearg_colon, @function
quotearg_colon:
	mov	esi, 0x3a
	jmp	quotearg_char
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047e0
	.globl quotearg_colon_mem
	.type quotearg_colon_mem, @function
quotearg_colon_mem:

	mov	edx, 0x3a
	jmp	quotearg_char_mem
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4047f0
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
	#Procedure 0x404840

	.globl quotearg_n_custom
	.type quotearg_n_custom, @function
quotearg_n_custom:
	mov	r8, -1
	jmp	quotearg_n_custom_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404850

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
	mov	rax,  qword ptr [word ptr [rip + label_255]]
	mov	qword ptr [rsp + 0x30], rax
	movups	xmm0,  xmmword ptr [word ptr [rip + label_256]]
	movaps	xmmword ptr [rsp + 0x20], xmm0
	movups	xmm0,  xmmword ptr [word ptr [rip + label_257]]
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
	#Procedure 0x4048c0
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
	#Procedure 0x4048e0
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
	#Procedure 0x404900

	.globl quote_n_mem
	.type quote_n_mem, @function
quote_n_mem:
	mov	ecx, OFFSET FLAT:quote_quoting_options
	jmp	quotearg_n_options
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404910
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
	#Procedure 0x404920

	.globl quote_n
	.type quote_n, @function
quote_n:
	mov	rdx, -1
	jmp	quote_n_mem
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404930

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
	#Procedure 0x404940

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
	jne	.label_259
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
	je	.label_258
	mov	eax, OFFSET FLAT:.str.14
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_259
	mov	eax, OFFSET FLAT:.str.15_0
	jmp	.label_259
.label_258:
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
	je	.label_260
	mov	eax, OFFSET FLAT:.str.17_1
	movzx	ecx, byte ptr [rbx]
	cmp	ecx, 0x60
	je	.label_259
	mov	eax, OFFSET FLAT:.str.18_1
	jmp	.label_259
.label_260:
	cmp	r14d, 9
	mov	ecx, OFFSET FLAT:.str.10_0
	mov	eax, OFFSET FLAT:.str.12_0
	cmove	rax, rcx
.label_259:
	add	rsp, 0x10
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404a20

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
	je	.label_262
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_263
	jmp	.label_261
.label_262:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_261
.label_263:
	mov	eax, 1
	test	bpl, bpl
	je	.label_261
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
.label_261:
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
	#Procedure 0x404ab0

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
	je	.label_266
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_264
	jmp	.label_265
.label_266:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_265
.label_264:
	mov	eax, 1
	test	bpl, bpl
	je	.label_265
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
.label_265:
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
	#Procedure 0x404b40

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
	je	.label_267
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_269
	jmp	.label_268
.label_267:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_268
.label_269:
	mov	eax, 1
	test	bpl, bpl
	je	.label_268
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
.label_268:
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
	#Procedure 0x404bc0

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
	je	.label_272
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_271
	jmp	.label_270
.label_272:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_270
.label_271:
	mov	eax, 1
	test	bpl, bpl
	je	.label_270
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
.label_270:
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x404c30

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
	je	.label_275
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_273
	jmp	.label_274
.label_275:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_274
.label_273:
	mov	eax, 1
	test	bpl, bpl
	je	.label_274
	movsx	esi, r15b
	movsx	edx, r14b
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	jmp	strcaseeq5
.label_274:
	add	rsp, 8
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404ca0

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
	je	.label_277
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_278
	jmp	.label_276
.label_277:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_276
.label_278:
	mov	eax, 1
	test	bpl, bpl
	je	.label_276
	movsx	esi, r14b
	mov	rdi, rbx
	pop	rbx
	pop	r14
	pop	rbp
	jmp	strcaseeq6
.label_276:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404cf0

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
	je	.label_281
	and	ecx, 0xffffffdf
	xor	eax, eax
	cmp	ecx, ebp
	je	.label_280
	jmp	.label_279
.label_281:
	xor	eax, eax
	movzx	edx, bpl
	movzx	ecx, cl
	cmp	ecx, edx
	jne	.label_279
.label_280:
	mov	eax, 1
	test	bpl, bpl
	je	.label_279
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	strcaseeq7
.label_279:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x404d40

	.globl strcaseeq7
	.type strcaseeq7, @function
strcaseeq7:
	push	rbx
	mov	rbx, rdi
	xor	edi, edi
	call	c_isupper
	movsx	ecx, byte ptr [rbx + 7]
	test	al, al
	je	.label_284
	mov	eax, 1
	test	ecx, 0xffffffdf
	jne	.label_283
	jmp	.label_282
.label_284:
	mov	eax, 1
	test	cl, cl
	je	.label_282
.label_283:
	xor	eax, eax
.label_282:
	pop	rbx
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x404d70

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
	je	.label_291
	mov	edx, OFFSET FLAT:.str_5
	xor	eax, eax
	mov	rdi, r14
	mov	r8, rbx
	call	__fprintf_chk
	jmp	.label_290
.label_291:
	mov	edx, OFFSET FLAT:.str.1_2
	xor	eax, eax
	mov	rdi, r14
	mov	rcx, rbx
	mov	r8, r9
	call	__fprintf_chk
.label_290:
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
	ja	.label_286
	jmp	qword ptr [word ptr [+ (r12 * 8) + label_287]]
.label_366:
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
.label_286:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.13_0
	jmp	.label_285
.label_367:
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
.label_368:
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
.label_369:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.7_0
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	jmp	.label_292
.label_370:
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
	jmp	.label_294
.label_371:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.9
	mov	edx, 5
	call	dcgettext
	mov	rdx, rax
	mov	rcx, qword ptr [r15]
	mov	r8, qword ptr [r15 + 8]
	mov	r9, qword ptr [r15 + 0x10]
	mov	rax, qword ptr [r15 + 0x18]
	mov	rsi, qword ptr [r15 + 0x20]
	mov	rdi, qword ptr [r15 + 0x28]
	jmp	.label_289
.label_372:
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
.label_289:
	mov	qword ptr [rsp + 0x10], rdi
.label_294:
	mov	qword ptr [rsp + 8], rsi
.label_292:
	mov	qword ptr [rsp], rax
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	jmp	.label_293
.label_374:
	xor	edi, edi
	mov	esi, OFFSET FLAT:.str.12_1
.label_285:
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
	jmp	.label_288
.label_373:
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
.label_288:
	mov	esi, 1
	xor	eax, eax
	mov	rdi, r14
	mov	rdx, r10
.label_293:
	call	__fprintf_chk
.label_365:
	add	rsp, 0x38
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405060
	.globl version_etc_ar
	.type version_etc_ar, @function
version_etc_ar:

	mov	r9, -1
	nop	word ptr [rax + rax]
.label_295:
	cmp	qword ptr [r8 + r9*8 + 8], 0
	lea	r9, [r9 + 1]
	jne	.label_295
	jmp	version_etc_arn
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405090

	.globl version_etc_va
	.type version_etc_va, @function
version_etc_va:
	sub	rsp, 0x58
	xor	r9d, r9d
	nop	word ptr [rax + rax]
.label_298:
	movsxd	r10, dword ptr [r8]
	cmp	r10, 0x28
	ja	.label_296
	mov	r11, r10
	add	r11, qword ptr [r8 + 0x10]
	lea	eax, [r10 + 8]
	mov	dword ptr [r8], eax
	jmp	.label_297
	nop	dword ptr [rax]
.label_296:
	mov	r11, qword ptr [r8 + 8]
	lea	rax, [r11 + 8]
	mov	qword ptr [r8 + 8], rax
.label_297:
	mov	rax, qword ptr [r11]
	mov	qword ptr [rsp + r9*8], rax
	test	rax, rax
	je	.label_299
	inc	r9
	cmp	r9, 0xa
	jb	.label_298
.label_299:
	lea	r8, [rsp]
	call	version_etc_arn
	add	rsp, 0x58
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4050f0

	.globl version_etc
	.type version_etc, @function
version_etc:
	sub	rsp, 0xc8
	test	al, al
	je	.label_300
	movaps	xmmword ptr [rsp + 0x30], xmm0
	movaps	xmmword ptr [rsp + 0x40], xmm1
	movaps	xmmword ptr [rsp + 0x50], xmm2
	movaps	xmmword ptr [rsp + 0x60], xmm3
	movaps	xmmword ptr [rsp + 0x70], xmm4
	movaps	xmmword ptr [rsp + 0x80], xmm5
	movaps	xmmword ptr [rsp + 0x90], xmm6
	movaps	xmmword ptr [rsp + 0xa0], xmm7
.label_300:
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
	#Procedure 0x405180
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
	#Procedure 0x405200
	.globl xnmalloc
	.type xnmalloc, @function
xnmalloc:

	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_301
	imul	rsi, rdi
	mov	rdi, rsi
	jmp	xmalloc
.label_301:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405230

	.globl xmalloc
	.type xmalloc, @function
xmalloc:
	push	rbx
	mov	rbx, rdi
	call	malloc
	test	rbx, rbx
	je	.label_302
	test	rax, rax
	je	.label_303
.label_302:
	pop	rbx
	ret	
.label_303:
	call	xalloc_die
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405250
	.globl xnrealloc
	.type xnrealloc, @function
xnrealloc:

	mov	rcx, rdx
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rcx
	cmp	rax, rsi
	jb	.label_304
	imul	rcx, rsi
	mov	rsi, rcx
	jmp	xrealloc
.label_304:
	push	rax
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405280

	.globl xrealloc
	.type xrealloc, @function
xrealloc:
	push	rbx
	mov	rbx, rsi
	test	rdi, rdi
	je	.label_305
	test	rbx, rbx
	jne	.label_305
	call	free
	xor	eax, eax
	pop	rbx
	ret	
.label_305:
	mov	rsi, rbx
	call	realloc
	test	rbx, rbx
	je	.label_307
	test	rax, rax
	je	.label_306
.label_307:
	pop	rbx
	ret	
.label_306:
	call	xalloc_die
	.section	.text
	.align	32
	#Procedure 0x4052b0

	.globl x2nrealloc
	.type x2nrealloc, @function
x2nrealloc:
	push	rax
	mov	r8, rdx
	mov	rcx, qword ptr [rsi]
	test	rdi, rdi
	je	.label_308
	movabs	rax, 0x5555555555555554
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jbe	.label_311
	mov	rax, rcx
	shr	rax, 1
	lea	rcx, [rcx + rax + 1]
	jmp	.label_309
.label_308:
	test	rcx, rcx
	jne	.label_312
	mov	eax, 0x80
	xor	edx, edx
	div	r8
	mov	rcx, rax
	cmp	rcx, 1
	adc	rcx, 0
.label_312:
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	r8
	cmp	rax, rcx
	jb	.label_310
.label_309:
	mov	qword ptr [rsi], rcx
	imul	r8, rcx
	mov	rsi, r8
	pop	rax
	jmp	xrealloc
.label_311:
	call	xalloc_die
.label_310:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405330

	.globl xcharalloc
	.type xcharalloc, @function
xcharalloc:
	jmp	xmalloc
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405340
	.globl x2realloc
	.type x2realloc, @function
x2realloc:

	mov	edx, 1
	jmp	x2nrealloc
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405350
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
	#Procedure 0x405380
	.globl xcalloc
	.type xcalloc, @function
xcalloc:

	push	rax
	movabs	rax, 0x7fffffffffffffff
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	jb	.label_313
	call	rpl_calloc
	test	rax, rax
	je	.label_313
	pop	rcx
	ret	
.label_313:
	call	xalloc_die
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4053b0

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
	#Procedure 0x4053e0

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
	#Procedure 0x405400

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
	mov	edx, OFFSET FLAT:.str_3
	xor	eax, eax
	mov	edi, ebx
	call	error
	call	abort
	.section	.text
	.align	32
	#Procedure 0x405430

	.globl xstrtold
	.type xstrtold, @function
xstrtold:
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
	je	.label_314
	test	r15, r15
	jne	.label_316
	cmp	byte ptr [rax], 0
	je	.label_316
	xor	eax, eax
	jmp	.label_317
.label_316:
	mov	al, 1
	fldz	
	fxch	st(1)
	fucomi	st(1)
	fstp	st(1)
	jne	.label_318
	jnp	.label_315
.label_318:
	cmp	dword ptr [r12], 0x22
	setne	al
	jmp	.label_315
.label_314:
	xor	eax, eax
.label_315:
	test	r15, r15
	je	.label_317
	mov	rcx, qword ptr [rsp + 8]
	mov	qword ptr [r15], rcx
.label_317:
	fstp	xword ptr [r14]
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
	#Procedure 0x4054c0

	.globl rpl_calloc
	.type rpl_calloc, @function
rpl_calloc:
	test	rdi, rdi
	mov	eax, 1
	je	.label_319
	test	rsi, rsi
	mov	ecx, 1
	je	.label_320
	mov	rax, rsi
	imul	rax, rdi
	xor	edx, edx
	div	rsi
	cmp	rax, rdi
	mov	rax, rsi
	mov	rcx, rdi
	je	.label_320
	push	rax
	call	__errno_location
	mov	dword ptr [rax], 0xc
	xor	eax, eax
	pop	rcx
	ret	
.label_319:
	mov	ecx, 1
.label_320:
	mov	rdi, rcx
	mov	rsi, rax
	jmp	calloc
	nop	dword ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405510

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
	je	.label_321
	cmp	r15, -2
	jb	.label_321
	xor	edi, edi
	call	hard_locale
	test	al, al
	jne	.label_321
	movzx	eax, byte ptr [r14]
	mov	dword ptr [rbx], eax
	mov	r15d, 1
.label_321:
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
	#Procedure 0x405570
	.globl c_isalnum
	.type c_isalnum, @function
c_isalnum:

	mov	al, 1
	lea	ecx, [rdi - 0x41]
	cmp	ecx, 0x39
	ja	.label_322
	movabs	rdx, 0x3ffffff03ffffff
	bt	rdx, rcx
	jae	.label_322
.label_323:
	ret	
.label_322:
	add	edi, -0x30
	cmp	edi, 0xa
	jb	.label_323
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055a0
	.globl c_isalpha
	.type c_isalpha, @function
c_isalpha:

	add	edi, -0x41
	cmp	edi, 0x39
	ja	.label_324
	movabs	rax, 0x3ffffff03ffffff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_324:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4055c0
	.globl c_isascii
	.type c_isascii, @function
c_isascii:

	cmp	edi, 0x80
	setb	al
	ret	
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4055d0
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
	#Procedure 0x4055e0
	.globl c_iscntrl
	.type c_iscntrl, @function
c_iscntrl:

	mov	al, 1
	cmp	edi, 0x20
	jae	.label_325
.label_326:
	ret	
.label_325:
	cmp	edi, 0x7f
	je	.label_326
	xor	eax, eax
	jmp	.label_326
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405600
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
	#Procedure 0x405610
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
	#Procedure 0x405620
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
	#Procedure 0x405630
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
	#Procedure 0x405640
	.globl c_ispunct
	.type c_ispunct, @function
c_ispunct:

	mov	al, 1
	lea	ecx, [rdi - 0x21]
	cmp	ecx, 0x3f
	ja	.label_327
	movabs	rdx, 0xfc000000fe007fff
	bt	rdx, rcx
	jae	.label_327
.label_328:
	ret	
.label_327:
	add	edi, -0x7b
	cmp	edi, 4
	jb	.label_328
	xor	eax, eax
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405670
	.globl c_isspace
	.type c_isspace, @function
c_isspace:

	add	edi, -9
	cmp	edi, 0x17
	ja	.label_329
	mov	eax, 0x80001f
	mov	cl, dil
	shr	eax, cl
	and	eax, 1
	ret	
.label_329:
	xor	eax, eax
	ret	
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405690

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
	#Procedure 0x4056a0
	.globl c_isxdigit
	.type c_isxdigit, @function
c_isxdigit:

	add	edi, -0x30
	cmp	edi, 0x36
	ja	.label_330
	movabs	rax, 0x7e0000007e03ff
	mov	cl, dil
	shr	rax, cl
	and	eax, 1
	ret	
.label_330:
	xor	eax, eax
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x4056c0
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
	#Procedure 0x4056d0
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
	#Procedure 0x4056e0

	.globl c_strtold
	.type c_strtold, @function
c_strtold:
	push	rbp
	push	r15
	push	r14
	push	rbx
	sub	rsp, 0x18
	mov	rbx, rsi
	mov	r14, rdi
	call	c_locale
	test	rax, rax
	je	.label_334
	mov	rdi, rax
	call	uselocale
	mov	r15, rax
	test	r15, r15
	je	.label_331
	mov	rdi, r14
	mov	rsi, rbx
	call	strtold
	fstp	xword ptr [rsp + 0xc]
	call	__errno_location
	mov	rbx, rax
	mov	ebp, dword ptr [rbx]
	mov	rdi, r15
	call	uselocale
	test	rax, rax
	je	.label_332
	mov	dword ptr [rbx], ebp
	fld	xword ptr [rsp + 0xc]
	jmp	.label_333
.label_334:
	fldz	
	test	rbx, rbx
	je	.label_333
	mov	qword ptr [rbx], r14
	jmp	.label_333
.label_331:
	fldz	
	test	rbx, rbx
	je	.label_333
	mov	qword ptr [rbx], r14
.label_333:
	add	rsp, 0x18
	pop	rbx
	pop	r14
	pop	r15
	pop	rbp
	ret	
.label_332:
	call	abort
	nop	
	.section	.text
	.align	32
	#Procedure 0x405760

	.globl c_locale
	.type c_locale, @function
c_locale:
	cmp	qword ptr [word ptr [rip + c_locale_cache]],  0
	jne	.label_335
	push	rax
	mov	edi, 0x1fbf
	mov	esi, OFFSET FLAT:.str_1
	xor	edx, edx
	call	newlocale
	mov	qword ptr [word ptr [rip + c_locale_cache]],  rax
	add	rsp, 8
.label_335:
	mov	rax,  qword ptr [word ptr [rip + c_locale_cache]]
	ret	
	nop	
	.section	.text
	.align	32
	#Procedure 0x405790

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
	je	.label_337
	mov	ebx, 0xffffffff
	test	eax, eax
	jne	.label_336
	call	__errno_location
	mov	dword ptr [rax], 0
	jmp	.label_336
.label_337:
	test	eax, eax
	sete	cl
	neg	eax
	sbb	ebx, ebx
	test	r14, r14
	jne	.label_336
	test	cl, cl
	jne	.label_336
	call	__errno_location
	xor	ecx, ecx
	cmp	dword ptr [rax], 9
	mov	ebx, 0xffffffff
	cmove	ebx, ecx
.label_336:
	mov	eax, ebx
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405800

	.globl hard_locale
	.type hard_locale, @function
hard_locale:
	push	rbx
	xor	esi, esi
	call	setlocale
	mov	bl, 1
	test	rax, rax
	je	.label_339
	movzx	ecx, byte ptr [rax]
	cmp	ecx, 0x43
	jne	.label_340
	cmp	byte ptr [rax + 1], 0
	je	.label_338
.label_340:
	mov	esi, OFFSET FLAT:.str.1_4
	mov	rdi, rax
	call	strcmp
	test	eax, eax
	jne	.label_339
.label_338:
	xor	ebx, ebx
.label_339:
	mov	al, bl
	pop	rbx
	ret	
	nop	word ptr cs:[rax + rax]
	nop	
	.section	.text
	.align	32
	#Procedure 0x405840

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
	je	.label_341
	mov	rax, rcx
.label_341:
	pop	rcx
	ret	
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405870

	.globl rpl_fclose
	.type rpl_fclose, @function
rpl_fclose:
	push	rbp
	push	rbx
	push	rax
	mov	rbx, rdi
	call	fileno
	test	eax, eax
	js	.label_342
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_344
	mov	rdi, rbx
	call	fileno
	xor	esi, esi
	mov	edx, 1
	mov	edi, eax
	call	lseek
	cmp	rax, -1
	je	.label_342
.label_344:
	mov	rdi, rbx
	call	rpl_fflush
	test	eax, eax
	je	.label_342
	call	__errno_location
	mov	ebp, dword ptr [rax]
	mov	rdi, rbx
	call	fclose
	test	ebp, ebp
	je	.label_343
	call	__errno_location
	mov	dword ptr [rax], ebp
	mov	eax, 0xffffffff
.label_343:
	add	rsp, 8
	pop	rbx
	pop	rbp
	ret	
.label_342:
	mov	rdi, rbx
	add	rsp, 8
	pop	rbx
	pop	rbp
	jmp	fclose
	nop	word ptr [rax + rax]
	.section	.text
	.align	32
	#Procedure 0x4058f0

	.globl rpl_fflush
	.type rpl_fflush, @function
rpl_fflush:
	push	rbx
	mov	rbx, rdi
	test	rbx, rbx
	je	.label_345
	mov	rdi, rbx
	call	__freading
	test	eax, eax
	je	.label_345
	mov	rdi, rbx
	call	clear_ungetc_buffer_preserving_position
.label_345:
	mov	rdi, rbx
	pop	rbx
	jmp	fflush
	nop	word ptr cs:[rax + rax]
	.section	.text
	.align	32
	#Procedure 0x405920

	.globl clear_ungetc_buffer_preserving_position
	.type clear_ungetc_buffer_preserving_position, @function
clear_ungetc_buffer_preserving_position:
	test	byte ptr [rdi + 1], 1
	jne	.label_346
	ret	
.label_346:
	xor	esi, esi
	mov	edx, 1
	jmp	rpl_fseeko
	nop	word ptr cs:[rax + rax]
	nop	dword ptr [rax]
	.section	.text
	.align	32
	#Procedure 0x405940

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
	jne	.label_347
	mov	rax, qword ptr [rbx + 0x28]
	cmp	rax, qword ptr [rbx + 0x20]
	jne	.label_347
	cmp	qword ptr [rbx + 0x48], 0
	je	.label_348
.label_347:
	mov	rdi, rbx
	mov	rsi, rbp
	mov	edx, r14d
	pop	rbx
	pop	r14
	pop	rbp
	jmp	fseeko
.label_348:
	mov	rdi, rbx
	call	fileno
	mov	edi, eax
	mov	rsi, rbp
	mov	edx, r14d
	call	lseek
	mov	rcx, rax
	mov	eax, 0xffffffff
	cmp	rcx, -1
	je	.label_349
	and	byte ptr [rbx], 0xef
	mov	qword ptr [rbx + 0x90], rcx
	xor	eax, eax
.label_349:
	pop	rbx
	pop	r14
	pop	rbp
	ret	
	nop	
	.section .text
	.align	32
	#Procedure 0x4059b0

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